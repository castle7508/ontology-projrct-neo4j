"""IT 학습 튜터 코어 로직. Neo4j 검색 + Gemini 생성을 조합한다."""
import random
import logging
from collections.abc import Iterator

from neo4j import Driver
from pydantic import BaseModel

from agent.llm import GeminiClient
from agent.prompts import (
    TUTOR_SYSTEM,
    SOLVER_SYSTEM,
    GENERATOR_SYSTEM,
    GRADER_SYSTEM,
    ESSAY_SYSTEM,
    KEYWORD_EXTRACT_SYSTEM,
    format_llm_context,
)

# graphrag/searcher.py 함수 재사용
from graphrag.searcher import find_seeds, expand_node

logger = logging.getLogger(__name__)


class GeneratedQuestion(BaseModel):
    """문제 출제 시 Gemini가 반환할 JSON 스키마"""
    question: str
    choices: list[str]
    answer: str
    explanation: str
    related_concepts: list[str]


class Tutor:
    """4가지 학습 기능을 통합하는 메인 튜터 클래스"""

    def __init__(self, driver: Driver, gemini: GeminiClient):
        self.driver = driver
        self.gemini = gemini

    # ── 공통 헬퍼 ──

    def _search_context(self, query: str, limit: int = 5, depth: int = 1) -> tuple[list[dict], str]:
        """키워드 검색 → 컨텍스트 문자열 반환. (seeds, context_str) 튜플."""
        seeds = find_seeds(self.driver, query, limit=limit)
        expansions = {}
        for seed in seeds:
            expansions[seed["id"]] = expand_node(self.driver, seed["id"], depth=depth)
        ctx = format_llm_context(seeds, expansions)
        return seeds, ctx

    def _query_questions(self, keyword: str, domain: str = "", limit: int = 10) -> list[dict]:
        """기출문제 검색. neo4j_mcp/server.py의 find_questions 쿼리 로직 재사용."""
        with self.driver.session() as session:
            concepts = [
                dict(r)
                for r in session.run(
                    "MATCH (n) WHERE n.id = $kw OR n.name_kr CONTAINS $kw OR n.name CONTAINS $kw "
                    "RETURN n.id AS id LIMIT 5",
                    kw=keyword,
                )
            ]
            if not concepts:
                return []

            concept_ids = [c["id"] for c in concepts]
            domain_filter = "AND q.domain = $domain" if domain else ""

            questions = [
                dict(r)
                for r in session.run(
                    f"MATCH (c)-[]->(q:Question) "
                    f"WHERE c.id IN $concept_ids {domain_filter} "
                    f"WITH DISTINCT q, c.name_kr AS related_concept "
                    f"OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession) "
                    f"RETURN q.id AS qid, q.text AS text, q.domain AS domain, "
                    f"es.name AS exam_session, related_concept "
                    f"ORDER BY es.name DESC LIMIT $limit",
                    concept_ids=concept_ids,
                    domain=domain,
                    limit=limit,
                )
            ]

            if not questions:
                questions = [
                    dict(r)
                    for r in session.run(
                        f"MATCH (q:Question) WHERE q.text CONTAINS $kw {domain_filter} "
                        f"OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession) "
                        f"RETURN q.id AS qid, q.text AS text, q.domain AS domain, "
                        f"es.name AS exam_session, '' AS related_concept "
                        f"ORDER BY es.name DESC LIMIT $limit",
                        kw=keyword,
                        domain=domain,
                        limit=limit,
                    )
                ]

            return questions

    def _query_domain_concepts(self, domain: str, limit: int = 20) -> list[dict]:
        """도메인의 핵심 개념 목록 (연결 수 기준 정렬)"""
        with self.driver.session() as session:
            return [
                dict(r)
                for r in session.run(
                    "MATCH (n {domain: $domain})-[r]-() "
                    "WHERE NOT n:Domain AND NOT n:Document AND NOT n:Question "
                    "WITH n, count(r) AS degree "
                    "ORDER BY degree DESC LIMIT $limit "
                    "RETURN n.id AS id, n.name_kr AS name_kr, n.name AS name, "
                    "n.definition AS definition, labels(n)[0] AS label, degree",
                    domain=domain.upper(),
                    limit=limit,
                )
            ]

    def _query_random_questions(self, domain: str = "", limit: int = 5) -> list[dict]:
        """랜덤 기출문제 반환"""
        domain_filter = "WHERE q.domain = $domain" if domain else ""
        with self.driver.session() as session:
            count_result = list(session.run(
                f"MATCH (q:Question) {domain_filter} RETURN count(q) AS cnt",
                domain=domain.upper() if domain else "",
            ))
            total = count_result[0]["cnt"] if count_result else 0
            if total == 0:
                return []
            skip = random.randint(0, max(0, total - limit))
            return [
                dict(r)
                for r in session.run(
                    f"MATCH (q:Question) {domain_filter} "
                    f"OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession) "
                    f"RETURN q.id AS qid, q.text AS text, q.domain AS domain, "
                    f"es.name AS exam_session "
                    f"SKIP $skip LIMIT $limit",
                    domain=domain.upper() if domain else "",
                    skip=skip,
                    limit=limit,
                )
            ]

    # ── 기능 1: 개념 학습 ──

    def explain_concept(self, query: str, domain: str = "") -> Iterator[str]:
        """키워드로 개념을 검색하고 구조화된 설명을 스트리밍 생성"""
        seeds, ctx = self._search_context(query, limit=5, depth=2)
        if not ctx:
            yield f"'{query}'에 대한 관련 개념을 찾지 못했습니다. 다른 키워드로 시도하세요."
            return
        yield from self.gemini.generate_stream(TUTOR_SYSTEM, ctx, query)

    # ── 기능 2: 기출문제 풀이 ──

    def get_questions(self, keyword: str = "", domain: str = "", limit: int = 10) -> list[dict]:
        """기출문제 목록 반환 (검색 또는 랜덤)"""
        if keyword:
            return self._query_questions(keyword, domain=domain, limit=limit)
        return self._query_random_questions(domain=domain, limit=limit)

    def solve_question(self, question_text: str) -> Iterator[str]:
        """기출문제 해설 스트리밍 생성"""
        _, ctx = self._search_context(question_text[:100], limit=3, depth=1)
        yield from self.gemini.generate_stream(SOLVER_SYSTEM, ctx, question_text)

    # ── 기능 3: 문제 출제 ──

    def generate_question(self, domain: str, difficulty: str = "중", q_type: str = "객관식") -> dict:
        """지식그래프 기반 새 문제 생성. 반환: GeneratedQuestion 필드를 가진 dict (또는 에러 시 {"error": ...})"""
        concepts = self._query_domain_concepts(domain, limit=20)
        if not concepts:
            return {"error": f"'{domain}' 도메인에 개념이 없습니다."}

        selected = random.sample(concepts, min(3, len(concepts)))

        expansions = {}
        for c in selected:
            expansions[c["id"]] = expand_node(self.driver, c["id"], depth=1)

        ctx = format_llm_context(selected, expansions)
        prompt = f"난이도: {difficulty}, 유형: {q_type}, 도메인: {domain}\n선택된 개념: {', '.join(c.get('name_kr', c['id']) for c in selected)}"

        result = self.gemini.generate_structured(GENERATOR_SYSTEM, ctx, prompt, GeneratedQuestion)
        return result

    # ── 기능 3-2: 채점 ──

    def grade_answer(self, question: str, correct_answer: str, user_answer: str) -> Iterator[str]:
        """사용자 답안 채점 스트리밍"""
        ctx = f"문제: {question}\n모범답안: {correct_answer}"
        yield from self.gemini.generate_stream(GRADER_SYSTEM, ctx, f"사용자 답안: {user_answer}")

    # ── 기능 4: 서술형 답안 ──

    def write_essay(self, question_text: str) -> Iterator[str]:
        """서술형 답안 작성 스트리밍"""
        try:
            keywords_str = self.gemini.generate(KEYWORD_EXTRACT_SYSTEM, "", question_text)
            keywords = [kw.strip() for kw in keywords_str.split(",") if kw.strip()]
        except Exception:
            keywords = [question_text[:50]]

        all_seeds = []
        all_expansions = {}
        seen_ids = set()
        for kw in keywords[:5]:
            seeds, _ = self._search_context(kw, limit=3, depth=1)
            for seed in seeds:
                if seed["id"] not in seen_ids:
                    seen_ids.add(seed["id"])
                    all_seeds.append(seed)
                    all_expansions[seed["id"]] = expand_node(self.driver, seed["id"], depth=1)

        ctx = format_llm_context(all_seeds, all_expansions)
        if not ctx:
            ctx = "(관련 개념을 찾지 못했습니다. 일반 지식으로 답변합니다.)"

        yield from self.gemini.generate_stream(ESSAY_SYSTEM, ctx, question_text)
