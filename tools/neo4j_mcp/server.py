"""Neo4j 온톨로지 MCP Server — IT 학습 AI 에이전트 도구

13,840노드 / 27,140관계 / 13개 IT 도메인 지식그래프를 탐색하는 7개 도구 제공.
Claude Code가 이 도구들을 사용하여 자연어 질문에 대한 답변을 생성합니다.
"""
import sys
from pathlib import Path

# tools/ 디렉토리를 import 경로에 추가
sys.path.insert(0, str(Path(__file__).parent.parent))

from fastmcp import FastMCP
from neo4j import GraphDatabase

import config

mcp = FastMCP(
    "Neo4j Ontology Agent",
    instructions=(
        "IT 도메인 지식그래프(13,840노드, 27,140관계, 13개 도메인)를 탐색하는 도구입니다. "
        "사용 흐름: search_concepts로 개념 검색 → concept_id 확인 → 다른 도구로 상세 탐색. "
        "도메인 코드: PM(프로젝트관리), MG(IT경영), SW(소프트웨어공학), SV(서비스/클라우드), "
        "ST(통계학), AI(인공지능), DS(자료구조), AL(알고리즘), SE(보안), DB(데이터베이스), "
        "NW(네트워크), CA(컴퓨터구조), OS(운영체제)"
    ),
)

VALID_DOMAINS = list(config.DOMAINS.keys())

DOMAIN_NAMES = {code: info["name"] for code, info in config.DOMAINS.items()}


# ────────────────────────────────────────
# 공통 헬퍼 (Lazy Connection — Neo4j 미실행 시에도 MCP 서버 시작 가능)
# ────────────────────────────────────────

_driver = None


def _get_driver():
    """Neo4j 드라이버 lazy 생성 (싱글턴). 도구 호출 시점에만 연결 시도."""
    global _driver
    if _driver is None:
        _driver = GraphDatabase.driver(
            config.NEO4J_URI,
            auth=(config.NEO4J_USER, config.NEO4J_PASSWORD),
        )
    return _driver


def _run_query(cypher: str, params: dict | None = None) -> list[dict]:
    """Neo4j 쿼리 실행 + 에러 처리"""
    try:
        driver = _get_driver()
        with driver.session() as session:
            result = [dict(record) for record in session.run(cypher, params or {})]
        return result
    except Exception as e:
        err = str(e)
        if "Connection refused" in err or "ServiceUnavailable" in err or "connection" in err.lower():
            # 연결 실패 시 드라이버 캐시 초기화 (다음 호출에서 재시도)
            global _driver
            _driver = None
            raise ConnectionError(
                "Neo4j에 연결할 수 없습니다. `docker-compose up -d`로 Neo4j를 시작한 후 다시 시도하세요."
            ) from e
        raise


def _validate_domain(code: str) -> str | None:
    """도메인 코드 유효성 검사. 유효하면 None, 아니면 에러 메시지 반환."""
    code = code.upper().strip()
    if code not in VALID_DOMAINS:
        return (
            f"유효하지 않은 도메인 코드: '{code}'. "
            f"사용 가능한 코드: {', '.join(f'{c}({DOMAIN_NAMES[c]})' for c in VALID_DOMAINS)}"
        )
    return None


# ────────────────────────────────────────
# Tool 1: search_concepts
# ────────────────────────────────────────

@mcp.tool
def search_concepts(keyword: str, top_k: int = 5) -> str:
    """키워드로 IT 개념을 검색합니다.

    fulltext 검색과 정확한 ID/이름 매칭을 모두 수행합니다.
    검색 결과에서 concept_id를 확인한 후 다른 도구(get_prerequisites, get_related 등)에서 활용하세요.

    Args:
        keyword: 검색어 (한글 또는 영문). 예: "딥러닝", "deep_learning", "AES"
        top_k: 반환할 최대 결과 수 (기본: 5)

    Returns:
        검색된 개념 목록 (id, name, name_kr, definition, domain, label)
    """
    results = []
    seen_ids = set()

    # 정확 매칭
    exact = _run_query(
        """
        MATCH (n)
        WHERE n.id = $term OR n.name_kr = $term OR n.name = $term
        RETURN n.id AS id, n.name AS name, n.name_kr AS name_kr,
               n.definition AS definition, n.domain AS domain,
               labels(n)[0] AS label, 100.0 AS score
        LIMIT 5
        """,
        {"term": keyword},
    )
    for r in exact:
        if r["id"] not in seen_ids:
            seen_ids.add(r["id"])
            results.append(r)

    # fulltext 검색 보충
    if len(results) < top_k:
        try:
            fulltext = _run_query(
                """
                CALL db.index.fulltext.queryNodes('concept_fulltext', $term)
                YIELD node, score
                WHERE score > 3.0
                WITH node, score, labels(node)[0] AS label
                ORDER BY score DESC
                LIMIT $top_k
                RETURN node.id AS id, node.name AS name, node.name_kr AS name_kr,
                       node.definition AS definition, node.domain AS domain,
                       label, score
                """,
                {"term": keyword, "top_k": top_k},
            )
            for r in fulltext:
                if r["id"] not in seen_ids:
                    seen_ids.add(r["id"])
                    results.append(r)
        except Exception:
            pass  # fulltext 인덱스 없으면 정확 매칭만 사용

    results = results[:top_k]

    if not results:
        return f"'{keyword}'에 대한 검색 결과가 없습니다. 다른 키워드로 시도하세요."

    lines = [f"# 개념 검색 결과: \"{keyword}\"", ""]
    lines.append("| # | ID | 한글명 | 영문명 | 타입 | 도메인 | 정의 |")
    lines.append("|---|-----|--------|--------|------|--------|------|")
    for i, r in enumerate(results, 1):
        defn = (r.get("definition") or "")[:60]
        lines.append(
            f"| {i} | {r['id']} | {r.get('name_kr', '')} | {r.get('name', '')} "
            f"| {r.get('label', '')} | {r.get('domain', '')} | {defn} |"
        )
    lines.append(f"\n검색 통계: {len(results)}개 매칭")
    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 2: get_prerequisites
# ────────────────────────────────────────

@mcp.tool
def get_prerequisites(concept_id: str, max_depth: int = 3) -> str:
    """특정 개념의 선수학습 경로를 탐색합니다.

    SUBCLASS_OF, DEPENDS_ON 관계를 역방향으로 추적하여
    해당 개념을 이해하기 위해 먼저 알아야 할 선행 개념을 깊이별로 반환합니다.

    Args:
        concept_id: 개념 ID (예: "deep_learning", "aes"). search_concepts로 먼저 확인하세요.
        max_depth: 탐색 깊이 (기본: 3, 최대: 5)

    Returns:
        선수학습 트리 (깊이별 선행 개념 목록)
    """
    max_depth = min(max_depth, 5)

    # 개념 존재 확인
    node = _run_query("MATCH (n {id: $id}) RETURN n.name_kr AS name_kr, labels(n)[0] AS label", {"id": concept_id})
    if not node:
        return f"'{concept_id}' 개념을 찾을 수 없습니다. `search_concepts`로 먼저 검색하세요."

    concept_name = node[0].get("name_kr", concept_id)

    # 가변 깊이 Cypher — depth 1~max_depth까지 각각 실행
    all_prereqs = {}
    for depth in range(1, max_depth + 1):
        cypher = f"""
        MATCH path = (c {{id: $concept_id}})-[:SUBCLASS_OF|DEPENDS_ON*{depth}]->(prereq)
        WHERE NOT prereq:Domain AND NOT prereq:Document
        WITH DISTINCT prereq, {depth} AS depth,
             [rel IN relationships(path) | type(rel)] AS rel_chain
        RETURN prereq.id AS id, prereq.name_kr AS name_kr, prereq.name AS name,
               prereq.definition AS definition, labels(prereq)[0] AS label,
               depth, rel_chain
        """
        rows = _run_query(cypher, {"concept_id": concept_id})
        for r in rows:
            rid = r["id"]
            if rid not in all_prereqs or r["depth"] < all_prereqs[rid]["depth"]:
                all_prereqs[rid] = r

    if not all_prereqs:
        return f"'{concept_name}' ({concept_id})의 선행 개념이 없습니다 (최상위 개념이거나 연결이 없음)."

    # 깊이별 그룹핑
    by_depth: dict[int, list] = {}
    for r in all_prereqs.values():
        d = r["depth"]
        by_depth.setdefault(d, []).append(r)

    lines = [f"# 선수학습 경로: \"{concept_id}\" ({concept_name})", ""]
    for depth in sorted(by_depth.keys()):
        label = "직접 선행" if depth == 1 else ""
        lines.append(f"## Depth {depth} {f'({label})' if label else ''}")
        for r in sorted(by_depth[depth], key=lambda x: x.get("name_kr") or ""):
            name = r.get("name_kr") or r["id"]
            chain = " → ".join(r.get("rel_chain") or [])
            lines.append(f"- [{r.get('label', 'Concept')}] {name} ({r['id']}) — {chain}")
        lines.append("")

    # 학습 순서 제안 (역순)
    ordered = sorted(all_prereqs.values(), key=lambda x: -x["depth"])
    suggestion = " → ".join(r.get("name_kr") or r["id"] for r in ordered)
    lines.append(f"---\n학습 순서 제안: {suggestion} → **{concept_name}**")
    lines.append(f"총 선행 개념: {len(all_prereqs)}개 ({max(by_depth.keys())}단계)")
    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 3: get_related
# ────────────────────────────────────────

@mcp.tool
def get_related(concept_id: str, hops: int = 1, limit: int = 20) -> str:
    """특정 개념과 관련된 노드를 N-hop으로 탐색합니다.

    해당 개념에서 출발하여 모든 방향의 관계를 따라 연결된 노드를 반환합니다.
    Domain, Document 노드는 제외됩니다.

    Args:
        concept_id: 개념 ID (예: "deep_learning"). search_concepts로 먼저 확인하세요.
        hops: 탐색 깊이 (1 또는 2, 기본: 1)
        limit: 반환할 최대 관계 수 (기본: 20)

    Returns:
        관련 노드 목록 (관계 타입, 방향, 노드 정보 포함)
    """
    hops = min(max(hops, 1), 2)

    node = _run_query("MATCH (n {id: $id}) RETURN n.name_kr AS name_kr", {"id": concept_id})
    if not node:
        return f"'{concept_id}' 개념을 찾을 수 없습니다. `search_concepts`로 먼저 검색하세요."

    concept_name = node[0].get("name_kr", concept_id)

    # 1홉 탐색
    rels = _run_query(
        """
        MATCH (seed {id: $seed_id})-[r]-(neighbor)
        WHERE NOT neighbor:Domain AND NOT neighbor:Document
        WITH seed, r, neighbor, labels(neighbor)[0] AS neighbor_label
        RETURN seed.id AS from_id, seed.name_kr AS from_name,
               type(r) AS rel_type,
               CASE WHEN startNode(r) = seed THEN '->' ELSE '<-' END AS direction,
               neighbor.id AS to_id, neighbor.name_kr AS to_name,
               neighbor.definition AS to_def, neighbor_label AS to_label
        ORDER BY
          CASE type(r)
            WHEN 'SUBCLASS_OF' THEN 1 WHEN 'HAS_TYPE' THEN 2
            WHEN 'INSTANCE_OF' THEN 3 WHEN 'IMPLEMENTS' THEN 4
            WHEN 'HAS_COMPONENT' THEN 5 WHEN 'COMPARED_WITH' THEN 6
            WHEN 'DEPENDS_ON' THEN 7 WHEN 'USES' THEN 8
            WHEN 'THREATENS' THEN 9 WHEN 'COUNTERED_BY' THEN 10
            ELSE 11
          END
        LIMIT $limit
        """,
        {"seed_id": concept_id, "limit": limit},
    )

    lines = [f"# 관련 개념: \"{concept_id}\" ({concept_name})", ""]

    if not rels:
        lines.append("연결된 관계가 없습니다.")
        return "\n".join(lines)

    lines.append("## 1-hop 관계")
    lines.append("| 관계 | 방향 | 연결 노드 | 타입 | 정의 |")
    lines.append("|------|------|-----------|------|------|")
    for r in rels:
        to_name = r.get("to_name") or r["to_id"]
        defn = (r.get("to_def") or "")[:50]
        arrow = r["direction"]
        lines.append(f"| {r['rel_type']} | {arrow} | {to_name} | {r['to_label']} | {defn} |")

    # 2홉 탐색
    if hops >= 2:
        hop2 = _run_query(
            """
            MATCH (seed {id: $seed_id})-[r1]-(hop1)-[r2]-(hop2)
            WHERE NOT hop1:Domain AND NOT hop1:Document
              AND NOT hop2:Domain AND NOT hop2:Document
              AND hop2.id <> seed.id
              AND type(r1) IN ['SUBCLASS_OF','HAS_TYPE','INSTANCE_OF','IMPLEMENTS','COMPARED_WITH']
              AND type(r2) IN ['SUBCLASS_OF','HAS_TYPE','INSTANCE_OF','IMPLEMENTS','COMPARED_WITH']
            WITH DISTINCT hop2, type(r1) AS rel1, hop1.name_kr AS via, type(r2) AS rel2
            RETURN hop2.id AS id, hop2.name_kr AS name_kr, hop2.definition AS definition,
                   labels(hop2)[0] AS label, rel1, via, rel2
            LIMIT 15
            """,
            {"seed_id": concept_id},
        )
        if hop2:
            lines.append("")
            lines.append("## 2-hop 확장")
            for h in hop2:
                name = h.get("name_kr") or h["id"]
                lines.append(f"- [{h['label']}] {name} (경유: {h['via']}, {h['rel1']}→{h['rel2']})")

    lines.append(f"\n---\n관계 통계: 1-hop {len(rels)}개")
    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 4: compare_concepts
# ────────────────────────────────────────

@mcp.tool
def compare_concepts(concept_a: str, concept_b: str) -> str:
    """두 IT 개념을 비교 분석합니다.

    COMPARED_WITH 직접 관계가 있으면 표시하고,
    두 개념의 공통 상위 개념, 공통 하위 개념, 각각의 고유 관계를 분석합니다.

    Args:
        concept_a: 첫 번째 개념 ID (예: "aes")
        concept_b: 두 번째 개념 ID (예: "des")

    Returns:
        비교 분석 결과 (공통점, 차이점, 관계 분석)
    """
    # 두 개념 정보 조회
    info_a = _run_query(
        "MATCH (n {id: $id}) RETURN n.name_kr AS name_kr, n.name AS name, n.definition AS definition, "
        "n.domain AS domain, labels(n)[0] AS label",
        {"id": concept_a},
    )
    info_b = _run_query(
        "MATCH (n {id: $id}) RETURN n.name_kr AS name_kr, n.name AS name, n.definition AS definition, "
        "n.domain AS domain, labels(n)[0] AS label",
        {"id": concept_b},
    )

    if not info_a:
        return f"'{concept_a}' 개념을 찾을 수 없습니다. `search_concepts`로 먼저 검색하세요."
    if not info_b:
        return f"'{concept_b}' 개념을 찾을 수 없습니다. `search_concepts`로 먼저 검색하세요."

    a = info_a[0]
    b = info_b[0]
    name_a = a.get("name_kr") or concept_a
    name_b = b.get("name_kr") or concept_b

    lines = [f"# 개념 비교: {name_a} vs {name_b}", ""]

    # 기본 정보 비교
    lines.append("## 기본 정보")
    lines.append("| 항목 | " + name_a + " | " + name_b + " |")
    lines.append("|------|---|---|")
    lines.append(f"| ID | {concept_a} | {concept_b} |")
    lines.append(f"| 영문명 | {a.get('name', '')} | {b.get('name', '')} |")
    lines.append(f"| 타입 | {a.get('label', '')} | {b.get('label', '')} |")
    lines.append(f"| 도메인 | {a.get('domain', '')} | {b.get('domain', '')} |")
    lines.append(f"| 정의 | {a.get('definition', '') or '-'} | {b.get('definition', '') or '-'} |")

    # 직접 비교 관계
    compared = _run_query(
        "MATCH (a {id: $a})-[r:COMPARED_WITH]-(b {id: $b}) RETURN type(r) AS rel",
        {"a": concept_a, "b": concept_b},
    )
    lines.append("")
    if compared:
        lines.append("## 직접 비교 관계: COMPARED_WITH ✅")
    else:
        lines.append("## 직접 비교 관계: 없음")

    # 공통 상위 개념
    common_parents = _run_query(
        """
        MATCH (a {id: $a})-[:SUBCLASS_OF|HAS_TYPE]->(common)<-[:SUBCLASS_OF|HAS_TYPE]-(b {id: $b})
        WHERE NOT common:Domain
        RETURN DISTINCT common.id AS id, common.name_kr AS name_kr, labels(common)[0] AS label
        """,
        {"a": concept_a, "b": concept_b},
    )
    lines.append("")
    lines.append("## 공통 상위 개념")
    if common_parents:
        for cp in common_parents:
            lines.append(f"- [{cp['label']}] {cp.get('name_kr') or cp['id']} ({cp['id']})")
    else:
        lines.append("- 공통 상위 개념 없음")

    # 각 개념의 고유 관계 (1홉)
    for side, cid, cname in [("A", concept_a, name_a), ("B", concept_b, name_b)]:
        side_rels = _run_query(
            """
            MATCH (n {id: $id})-[r]-(m)
            WHERE NOT m:Domain AND NOT m:Document
            RETURN type(r) AS rel_type, m.name_kr AS name, labels(m)[0] AS label
            LIMIT 10
            """,
            {"id": cid},
        )
        lines.append("")
        lines.append(f"## {cname}의 관계 ({side})")
        if side_rels:
            for sr in side_rels:
                lines.append(f"- {sr['rel_type']} → [{sr['label']}] {sr.get('name') or '?'}")
        else:
            lines.append("- 관계 없음")

    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 5: find_questions
# ────────────────────────────────────────

@mcp.tool
def find_questions(keyword: str, domain: str = "", limit: int = 10) -> str:
    """IT 자격시험 기출문제를 검색합니다.

    키워드로 관련 개념을 찾고, 해당 개념과 연결된 Question 노드를 반환합니다.
    도메인 필터로 특정 분야의 문제만 검색할 수 있습니다.

    Args:
        keyword: 검색어 (예: "SQL Injection", "정규화", "TCP")
        domain: 도메인 필터 (선택, 빈 문자열이면 전체). 13개 도메인 코드:
                PM(프로젝트관리), MG(IT경영), SW(소프트웨어공학), SV(서비스/클라우드),
                ST(통계학), AI(인공지능), DS(자료구조), AL(알고리즘),
                SE(보안), DB(데이터베이스), NW(네트워크), CA(컴퓨터구조), OS(운영체제)
        limit: 반환할 최대 문제 수 (기본: 10)

    Returns:
        관련 기출문제 목록 (문제 텍스트, 회차, 관련 개념)
    """
    if domain:
        domain = domain.upper().strip()
        err = _validate_domain(domain)
        if err:
            return err

    # 키워드로 개념 찾기
    concepts = _run_query(
        """
        MATCH (n)
        WHERE n.id = $kw OR n.name_kr CONTAINS $kw OR n.name CONTAINS $kw
        RETURN n.id AS id, n.name_kr AS name_kr
        LIMIT 5
        """,
        {"kw": keyword},
    )

    if not concepts:
        return f"'{keyword}'와 관련된 개념을 찾을 수 없습니다. 다른 키워드로 시도하세요."

    concept_ids = [c["id"] for c in concepts]

    # Question 노드 탐색
    domain_filter = "AND q.domain = $domain" if domain else ""
    questions = _run_query(
        f"""
        MATCH (c)-[]->(q:Question)
        WHERE c.id IN $concept_ids {domain_filter}
        WITH DISTINCT q, c.name_kr AS related_concept
        OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession)
        RETURN q.id AS qid, q.text AS text, q.domain AS domain,
               es.name AS exam_session, related_concept
        ORDER BY es.name DESC
        LIMIT $limit
        """,
        {"concept_ids": concept_ids, "domain": domain, "limit": limit},
    )

    # Question이 없으면 직접 text 검색 시도
    if not questions:
        questions = _run_query(
            f"""
            MATCH (q:Question)
            WHERE q.text CONTAINS $kw {domain_filter}
            OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession)
            RETURN q.id AS qid, q.text AS text, q.domain AS domain,
                   es.name AS exam_session, '' AS related_concept
            ORDER BY es.name DESC
            LIMIT $limit
            """,
            {"kw": keyword, "domain": domain, "limit": limit},
        )

    if not questions:
        return f"'{keyword}'와 관련된 기출문제를 찾을 수 없습니다."

    lines = [f"# 기출문제 검색: \"{keyword}\"" + (f" (도메인: {domain})" if domain else ""), ""]
    for i, q in enumerate(questions, 1):
        text = (q.get("text") or "")[:200]
        session = q.get("exam_session") or "?"
        related = q.get("related_concept") or ""
        lines.append(f"### 문제 {i} [{session}] {q.get('domain', '')}")
        lines.append(f"{text}")
        if related:
            lines.append(f"- 관련 개념: {related}")
        lines.append("")

    lines.append(f"---\n검색 결과: {len(questions)}개 문제")
    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 6: domain_overview
# ────────────────────────────────────────

@mcp.tool
def domain_overview(domain_code: str) -> str:
    """특정 IT 도메인의 핵심 개념과 통계를 요약합니다.

    해당 도메인에 속한 노드 수, 관계 수, 핵심 개념 Top 10 (연결 수 기준),
    노드 타입별 분포를 반환합니다.

    Args:
        domain_code: 13개 도메인 코드 중 하나:
                     PM(프로젝트관리), MG(IT경영), SW(소프트웨어공학), SV(서비스/클라우드),
                     ST(통계학), AI(인공지능), DS(자료구조), AL(알고리즘),
                     SE(보안), DB(데이터베이스), NW(네트워크), CA(컴퓨터구조), OS(운영체제)

    Returns:
        도메인 개요 (통계, 핵심 개념 Top 10, 노드 타입별 분포)
    """
    domain_code = domain_code.upper().strip()
    err = _validate_domain(domain_code)
    if err:
        return err

    domain_name = DOMAIN_NAMES[domain_code]

    # 노드 타입별 통계
    type_stats = _run_query(
        """
        MATCH (n {domain: $domain})
        WHERE NOT n:Domain
        WITH labels(n)[0] AS label, count(n) AS cnt
        RETURN label, cnt ORDER BY cnt DESC
        """,
        {"domain": domain_code},
    )

    total_nodes = sum(r["cnt"] for r in type_stats) if type_stats else 0

    # 핵심 개념 Top 10 (연결 수 기준)
    top_concepts = _run_query(
        """
        MATCH (n {domain: $domain})-[r]-()
        WHERE NOT n:Domain AND NOT n:Document AND NOT n:Question
        WITH n, count(r) AS degree
        ORDER BY degree DESC
        LIMIT 10
        RETURN n.id AS id, n.name_kr AS name_kr, n.name AS name,
               labels(n)[0] AS label, degree
        """,
        {"domain": domain_code},
    )

    lines = [f"# 도메인 개요: {domain_code} ({domain_name})", ""]

    # 통계
    lines.append("## 노드 통계")
    lines.append(f"- 총 노드 수: {total_nodes}개")
    lines.append("- 타입별 분포:")
    for r in type_stats:
        lines.append(f"  - {r['label']}: {r['cnt']}개")

    # 핵심 개념
    lines.append("")
    lines.append("## 핵심 개념 Top 10 (연결 수 기준)")
    lines.append("| # | ID | 한글명 | 타입 | 연결 수 |")
    lines.append("|---|-----|--------|------|---------|")
    for i, c in enumerate(top_concepts, 1):
        name = c.get("name_kr") or c.get("name") or c["id"]
        lines.append(f"| {i} | {c['id']} | {name} | {c['label']} | {c['degree']} |")

    lines.append(f"\n---\n도메인: {domain_code} ({domain_name}), 총 {total_nodes}개 노드")
    return "\n".join(lines)


# ────────────────────────────────────────
# Tool 7: cross_domain_links
# ────────────────────────────────────────

@mcp.tool
def cross_domain_links(domain_a: str, domain_b: str, limit: int = 10) -> str:
    """두 IT 도메인 간 연결된 개념을 탐색합니다.

    도메인 A의 개념과 도메인 B의 개념이 직접 관계로 연결된 경우를 찾습니다.
    도메인 간 지식 연결고리를 발견하는 데 유용합니다.

    Args:
        domain_a: 첫 번째 도메인 코드 (예: "AI")
        domain_b: 두 번째 도메인 코드 (예: "DB")
        limit: 반환할 최대 연결 수 (기본: 10)

    Returns:
        도메인 간 연결 개념 목록 (관계 타입, 양쪽 개념 정보)
    """
    domain_a = domain_a.upper().strip()
    domain_b = domain_b.upper().strip()

    for code in [domain_a, domain_b]:
        err = _validate_domain(code)
        if err:
            return err

    name_a = DOMAIN_NAMES[domain_a]
    name_b = DOMAIN_NAMES[domain_b]

    links = _run_query(
        """
        MATCH (a)-[r]-(b)
        WHERE a.domain = $domain_a AND b.domain = $domain_b
          AND NOT a:Domain AND NOT b:Domain
          AND NOT a:Document AND NOT b:Document
          AND NOT a:Question AND NOT b:Question
        WITH a, type(r) AS rel_type, b
        RETURN DISTINCT a.id AS a_id, a.name_kr AS a_name, labels(a)[0] AS a_label,
               rel_type,
               b.id AS b_id, b.name_kr AS b_name, labels(b)[0] AS b_label
        ORDER BY rel_type, a.name_kr
        LIMIT $limit
        """,
        {"domain_a": domain_a, "domain_b": domain_b, "limit": limit},
    )

    lines = [f"# 도메인 간 연결: {domain_a}({name_a}) ↔ {domain_b}({name_b})", ""]

    if not links:
        lines.append("두 도메인 간 직접 연결된 개념이 없습니다.")
        return "\n".join(lines)

    lines.append("| # | 도메인A 개념 | 타입 | 관계 | 도메인B 개념 | 타입 |")
    lines.append("|---|-------------|------|------|-------------|------|")
    for i, link in enumerate(links, 1):
        a_name = link.get("a_name") or link["a_id"]
        b_name = link.get("b_name") or link["b_id"]
        lines.append(
            f"| {i} | {a_name} | {link['a_label']} | {link['rel_type']} "
            f"| {b_name} | {link['b_label']} |"
        )

    lines.append(f"\n---\n연결 통계: {len(links)}개 교차 관계")
    return "\n".join(lines)


# ────────────────────────────────────────
# 서버 실행
# ────────────────────────────────────────

if __name__ == "__main__":
    mcp.run(transport="stdio")
