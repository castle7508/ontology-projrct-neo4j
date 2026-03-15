"""Cypher MERGE 문 생성기: ExtractionResult → Cypher 파일"""
import re
from pathlib import Path
from extract.extractor import ExtractionResult, Node, Relationship


# ────────────────────────────────────────
# Cypher 안전 문자열
# ────────────────────────────────────────

def escape_cypher(text: str) -> str:
    """Cypher 문자열 이스케이프.
    작은따옴표 내 아포스트로피는 큰따옴표 감싸기 규칙 적용.
    """
    if not text:
        return ""
    # 역슬래시 먼저
    text = text.replace("\\", "\\\\")
    # 작은따옴표 → 이스케이프
    text = text.replace("'", "\\'")
    # 줄바꿈 제거
    text = text.replace("\n", " ").replace("\r", "")
    # 연속 공백 정리
    text = re.sub(r'\s+', ' ', text).strip()
    return text


def format_aliases(aliases: list[str]) -> str:
    """aliases 리스트를 Cypher 배열 문자열로"""
    if not aliases:
        return ""
    items = [f"'{escape_cypher(a)}'" for a in aliases if a]
    return f"[{', '.join(items)}]"


# ────────────────────────────────────────
# 노드 → Cypher
# ────────────────────────────────────────

def node_to_cypher(node: Node, var: str = "n") -> str:
    """Node → MERGE Cypher 문"""
    lines = [f"MERGE ({var}:{node.label} {{id: '{escape_cypher(node.id)}'}})"]
    sets = [
        f"    {var}.name = '{escape_cypher(node.name)}'",
        f"    {var}.name_kr = '{escape_cypher(node.name_kr)}'",
        f"    {var}.domain = '{escape_cypher(node.domain)}'",
    ]
    if node.definition:
        sets.append(f"    {var}.definition = '{escape_cypher(node.definition)}'")
    if node.aliases:
        sets.append(f"    {var}.aliases = {format_aliases(node.aliases)}")

    lines.append("SET " + ",\n".join(sets) + ";")
    return "\n".join(lines)


# ────────────────────────────────────────
# 관계 → Cypher
# ────────────────────────────────────────

def relationship_to_cypher(rel: Relationship) -> str:
    """Relationship → MERGE Cypher 문"""
    lines = [
        f"MERGE (a:{rel.source_label} {{id: '{escape_cypher(rel.source_id)}'}})",
        f"MERGE (b:{rel.target_label} {{id: '{escape_cypher(rel.target_id)}'}})",
        f"MERGE (a)-[:{rel.rel_type}]->(b);",
    ]
    return "\n".join(lines)


# ────────────────────────────────────────
# 전체 생성
# ────────────────────────────────────────

def generate_cypher(result: ExtractionResult) -> str:
    """단일 문서의 ExtractionResult → Cypher 문자열"""
    sections = []

    # 문서 헤더
    sections.append(f"// ──────────────────────────────────────")
    sections.append(f"// {result.file_id}: {result.topic_name}")
    sections.append(f"// ──────────────────────────────────────")
    sections.append("")

    # Document 노드
    sections.append(f"MERGE (doc:Document {{id: '{result.file_id}'}})")
    sections.append(f"SET doc.domain = '{result.domain}';")
    sections.append("")

    # 노드 (BELONGS_TO, MENTIONED_IN 제외한 실 노드만)
    if result.nodes:
        sections.append("// --- 노드 ---")
        sections.append("")
        for node in result.nodes:
            sections.append(node_to_cypher(node))
            sections.append("")

    # 관계
    rels = result.relationships
    if rels:
        sections.append("// --- 관계 ---")
        sections.append("")
        for rel in rels:
            sections.append(relationship_to_cypher(rel))
            sections.append("")

    return "\n".join(sections)


def generate_batch_cypher(results: list[ExtractionResult], domain: str,
                          start: int, end: int) -> str:
    """여러 문서의 Cypher를 하나의 파일로 결합"""
    header = [
        f"// ================================================================",
        f"// {domain} 도메인 ({domain}_{start:03d} ~ {domain}_{end:03d}) — 자동 생성",
        f"// ================================================================",
        "",
    ]

    body = []
    for r in results:
        body.append(generate_cypher(r))

    footer = [
        f"// ================================================================",
        f"// {domain} 도메인 자동 생성 완료",
        f"// 노드: {sum(len(r.nodes) for r in results)}개",
        f"// 관계: {sum(len(r.relationships) for r in results)}개",
        f"// ================================================================",
    ]

    return "\n".join(header + body + footer)


def save_cypher(cypher_text: str, output_path: Path):
    """Cypher 파일 저장"""
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(cypher_text, encoding="utf-8")
