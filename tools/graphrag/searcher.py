"""GraphRAG 검색기: 질문 → Neo4j 그래프 탐색 → 구조화된 컨텍스트 생성"""
from neo4j import GraphDatabase

import config


def get_driver():
    return GraphDatabase.driver(
        config.NEO4J_URI,
        auth=(config.NEO4J_USER, config.NEO4J_PASSWORD),
    )


# ────────────────────────────────────────
# 1단계: 키워드 기반 시드 노드 검색
# ────────────────────────────────────────

SEED_QUERY = """
// 풀텍스트 검색 (name, name_kr, definition)
CALL db.index.fulltext.queryNodes('concept_fulltext', $term)
YIELD node, score
WHERE score > 3.0
WITH node, score, labels(node)[0] AS label
ORDER BY score DESC
LIMIT $top_k
RETURN node.id AS id, node.name AS name, node.name_kr AS name_kr,
       node.definition AS definition, node.domain AS domain,
       label, score
"""

EXACT_QUERY = """
// 정확한 ID 또는 이름 매칭
MATCH (n)
WHERE n.id = $term
   OR n.name_kr = $term
   OR n.name = $term
   OR $term IN n.aliases
RETURN n.id AS id, n.name AS name, n.name_kr AS name_kr,
       n.definition AS definition, n.domain AS domain,
       labels(n)[0] AS label, 100.0 AS score
LIMIT 5
"""


def find_seeds(driver, query: str, limit: int = 10) -> list[dict]:
    """키워드로 시드 노드 검색 (정확 매칭 + 풀텍스트)"""
    results = []
    seen_ids = set()

    with driver.session() as session:
        # 정확 매칭 우선
        for record in session.run(EXACT_QUERY, term=query):
            d = dict(record)
            if d["id"] not in seen_ids:
                seen_ids.add(d["id"])
                results.append(d)

        # 풀텍스트 검색 보충
        if len(results) < limit:
            for record in session.run(SEED_QUERY, term=query, top_k=limit):
                d = dict(record)
                if d["id"] not in seen_ids:
                    seen_ids.add(d["id"])
                    results.append(d)

    return results[:limit]


# ────────────────────────────────────────
# 2단계: 그래프 탐색 (1~2홉)
# ────────────────────────────────────────

EXPAND_QUERY = """
// 시드 노드에서 1홉 탐색 (Domain, Document 제외)
MATCH (seed)-[r]-(neighbor)
WHERE seed.id = $seed_id
  AND NOT neighbor:Domain
  AND NOT neighbor:Document
WITH seed, r, neighbor, labels(neighbor)[0] AS neighbor_label
RETURN seed.id AS from_id,
       seed.name_kr AS from_name,
       type(r) AS rel_type,
       CASE WHEN startNode(r) = seed THEN '->' ELSE '<-' END AS direction,
       neighbor.id AS to_id,
       neighbor.name_kr AS to_name,
       neighbor.definition AS to_def,
       neighbor_label AS to_label
ORDER BY
  CASE type(r)
    WHEN 'SUBCLASS_OF' THEN 1
    WHEN 'HAS_TYPE' THEN 2
    WHEN 'INSTANCE_OF' THEN 3
    WHEN 'IMPLEMENTS' THEN 4
    WHEN 'HAS_COMPONENT' THEN 5
    WHEN 'COMPARED_WITH' THEN 6
    WHEN 'DEPENDS_ON' THEN 7
    WHEN 'USES' THEN 8
    WHEN 'THREATENS' THEN 9
    WHEN 'COUNTERED_BY' THEN 10
    ELSE 11
  END
LIMIT 30
"""

EXPAND_2HOP_QUERY = """
// 시드에서 2홉 탐색 (핵심 관계만)
MATCH (seed)-[r1]-(hop1)-[r2]-(hop2)
WHERE seed.id = $seed_id
  AND NOT hop1:Domain AND NOT hop1:Document
  AND NOT hop2:Domain AND NOT hop2:Document
  AND hop2.id <> seed.id
  AND type(r1) IN ['SUBCLASS_OF','HAS_TYPE','INSTANCE_OF','IMPLEMENTS','COMPARED_WITH']
  AND type(r2) IN ['SUBCLASS_OF','HAS_TYPE','INSTANCE_OF','IMPLEMENTS','COMPARED_WITH']
WITH DISTINCT hop2, type(r1) AS rel1, hop1.name_kr AS via, type(r2) AS rel2
RETURN hop2.id AS id, hop2.name_kr AS name_kr, hop2.definition AS definition,
       labels(hop2)[0] AS label, rel1, via, rel2
LIMIT 15
"""

DOCUMENT_QUERY = """
// 관련 문서 검색
MATCH (seed)-[:MENTIONED_IN]->(doc:Document)
WHERE seed.id = $seed_id
RETURN doc.id AS doc_id, doc.domain AS domain
ORDER BY doc.id
LIMIT 10
"""


def expand_node(driver, seed_id: str, depth: int = 1) -> dict:
    """시드 노드에서 관계 탐색"""
    result = {"relationships": [], "hop2": [], "documents": []}

    with driver.session() as session:
        # 1홉
        for record in session.run(EXPAND_QUERY, seed_id=seed_id):
            result["relationships"].append(dict(record))

        # 2홉 (depth=2일 때만)
        if depth >= 2:
            for record in session.run(EXPAND_2HOP_QUERY, seed_id=seed_id):
                result["hop2"].append(dict(record))

        # 관련 문서
        for record in session.run(DOCUMENT_QUERY, seed_id=seed_id):
            result["documents"].append(dict(record))

    return result


# ────────────────────────────────────────
# 3단계: 컨텍스트 포맷팅
# ────────────────────────────────────────

def format_context(query: str, seeds: list[dict], expansions: dict[str, dict]) -> str:
    """검색 결과를 Claude Code용 구조화된 컨텍스트로 변환"""
    lines = []
    lines.append(f"# GraphRAG 검색 결과: \"{query}\"")
    lines.append("")

    if not seeds:
        lines.append("검색 결과 없음. 다른 키워드로 시도하세요.")
        return "\n".join(lines)

    # 시드 노드 정보
    lines.append("## 핵심 개념")
    lines.append("")
    for seed in seeds:
        label = seed.get("label", "Concept")
        name_kr = seed.get("name_kr", "")
        name = seed.get("name", "")
        definition = seed.get("definition", "")
        domain = seed.get("domain", "")
        display_name = f"{name_kr} ({name})" if name != name_kr else name_kr

        lines.append(f"### [{label}] {display_name}")
        if domain:
            lines.append(f"- 도메인: {domain}")
        if definition:
            lines.append(f"- 정의: {definition}")

        # 관계 정보
        expansion = expansions.get(seed["id"], {})
        rels = expansion.get("relationships", [])
        if rels:
            lines.append(f"- 관계:")
            for r in rels:
                direction = r["direction"]
                rel_type = r["rel_type"]
                to_name = r["to_name"] or r["to_id"]
                to_label = r["to_label"]
                to_def = r.get("to_def", "")

                if direction == "->":
                    rel_str = f"  - {name_kr} --[{rel_type}]--> [{to_label}] {to_name}"
                else:
                    rel_str = f"  - [{to_label}] {to_name} --[{rel_type}]--> {name_kr}"

                if to_def:
                    rel_str += f" : {to_def[:80]}"
                lines.append(rel_str)

        # 2홉 관련 개념
        hop2 = expansion.get("hop2", [])
        if hop2:
            lines.append(f"- 확장 관계 (2홉):")
            for h in hop2:
                h_name = h["name_kr"] or h["id"]
                lines.append(f"  - [{h['label']}] {h_name} (경유: {h['via']}, {h['rel1']}+{h['rel2']})")

        # 관련 문서
        docs = expansion.get("documents", [])
        if docs:
            doc_ids = ", ".join(d["doc_id"] for d in docs[:5])
            lines.append(f"- 관련 문서: {doc_ids}")

        lines.append("")

    # 요약 통계
    total_rels = sum(len(exp.get("relationships", [])) for exp in expansions.values())
    total_docs = sum(len(exp.get("documents", [])) for exp in expansions.values())
    lines.append("---")
    lines.append(f"검색 통계: 시드 {len(seeds)}개, 관계 {total_rels}개, 문서 {total_docs}개")

    return "\n".join(lines)


# ────────────────────────────────────────
# 통합 검색 함수
# ────────────────────────────────────────

def search(query: str, top_k: int = 5, depth: int = 1) -> str:
    """질문 → 그래프 검색 → 구조화된 컨텍스트 반환"""
    driver = get_driver()
    try:
        # 1) 시드 노드 검색
        seeds = find_seeds(driver, query, limit=top_k)

        # 2) 각 시드에서 그래프 탐색
        expansions = {}
        for seed in seeds:
            expansions[seed["id"]] = expand_node(driver, seed["id"], depth=depth)

        # 3) 컨텍스트 포맷팅
        context = format_context(query, seeds, expansions)
        return context

    finally:
        driver.close()
