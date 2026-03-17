# IT 학습 튜터 AI 에이전트 Implementation Plan

> **For agentic workers:** REQUIRED: Use superpowers:subagent-driven-development (if subagents available) or superpowers:executing-plans to implement this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Neo4j 지식그래프 기반 IT 학습 튜터 Streamlit 웹 앱 구축 (개념학습 + 기출풀이 + 문제출제 + 서술형답안)

**Architecture:** Thin Agent 패턴. Streamlit 단일 페이지(st.tabs 4개)에서 사용자 입력을 받아, 기존 graphrag/searcher.py로 Neo4j 검색 후, Gemini API로 답변을 생성한다.

**Tech Stack:** Python 3.11+, Streamlit, google-genai (Gemini SDK), Neo4j Bolt driver, Pydantic

**Spec:** `docs/superpowers/specs/2026-03-16-it-tutor-agent-design.md`

---

## Chunk 1: 기반 설정 + Gemini 클라이언트

### Task 1: 의존성 추가

**Files:**
- Modify: `tools/pyproject.toml`

- [ ] **Step 1: pyproject.toml에 신규 의존성 추가**

`tools/pyproject.toml`의 `dependencies` 리스트에 추가:

```toml
dependencies = [
    "python-docx>=1.1.0",
    "neo4j>=5.20.0",
    "click>=8.1.0",
    "rich>=13.0.0",
    "pydantic>=2.0.0",
    "mammoth>=1.12.0",
    "fastmcp>=2.0.0",
    "streamlit>=1.40.0",
    "google-genai>=1.0.0",
]
```

- [ ] **Step 2: 의존성 설치**

Run (PowerShell, `tools/` 디렉토리):
```powershell
cd tools
uv sync
```
Expected: 성공적으로 설치 완료

- [ ] **Step 3: Commit**

```bash
git add tools/pyproject.toml tools/uv.lock
git commit -m "deps: add streamlit and google-genai for tutor agent"
```

---

### Task 2: config.py에 Gemini 설정 추가

**Files:**
- Modify: `tools/config.py`

- [ ] **Step 1: config.py에 Gemini 관련 설정 추가**

`config.py` 끝에 추가:

```python
import os

# Gemini API 설정
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY", "")
GEMINI_MODEL = "gemini-2.5-flash"
```

- [ ] **Step 2: Commit**

```bash
git add tools/config.py
git commit -m "config: add Gemini API settings"
```

---

### Task 3: Gemini 클라이언트 모듈 구현

**Files:**
- Create: `tools/agent/__init__.py`
- Create: `tools/agent/llm.py`

- [ ] **Step 1: agent 디렉토리 및 __init__.py 생성**

```python
# tools/agent/__init__.py
```

빈 파일 생성.

- [ ] **Step 2: agent/llm.py 구현**

```python
# tools/agent/llm.py
"""Gemini API 클라이언트 래퍼"""
import time
import logging
from collections.abc import Iterator

from google import genai
from google.genai import types
from pydantic import BaseModel

logger = logging.getLogger(__name__)


class GeminiClient:
    """Gemini API 클라이언트. 텍스트 생성, 스트리밍, 구조화 출력 지원."""

    def __init__(self, api_key: str, model: str = "gemini-2.5-flash"):
        self.client = genai.Client(api_key=api_key)
        self.model = model
        self.total_input_tokens = 0
        self.total_output_tokens = 0

    def _build_contents(self, context: str, user_query: str) -> str:
        """컨텍스트와 사용자 질문을 결합"""
        if context:
            return f"[지식그래프 컨텍스트]\n{context}\n\n[질문]\n{user_query}"
        return user_query

    def generate(self, system_prompt: str, context: str, user_query: str) -> str:
        """텍스트 생성 (동기)"""
        contents = self._build_contents(context, user_query)
        for attempt in range(3):
            try:
                response = self.client.models.generate_content(
                    model=self.model,
                    contents=contents,
                    config=types.GenerateContentConfig(
                        system_instruction=system_prompt,
                    ),
                )
                if response.usage_metadata:
                    self.total_input_tokens += response.usage_metadata.prompt_token_count or 0
                    self.total_output_tokens += response.usage_metadata.candidates_token_count or 0
                return response.text or ""
            except Exception as e:
                if "429" in str(e) and attempt < 2:
                    time.sleep(2 ** attempt)
                    continue
                raise
        return ""

    def generate_stream(self, system_prompt: str, context: str, user_query: str) -> Iterator[str]:
        """스트리밍 텍스트 생성. 각 청크에서 text를 추출하여 yield."""
        contents = self._build_contents(context, user_query)
        try:
            response = self.client.models.generate_content_stream(
                model=self.model,
                contents=contents,
                config=types.GenerateContentConfig(
                    system_instruction=system_prompt,
                ),
            )
            for chunk in response:
                if chunk.text:
                    yield chunk.text
        except Exception as e:
            logger.warning(f"스트리밍 중 에러: {e}")
            yield f"\n\n⚠️ 생성 중 오류 발생: {e}"

    def generate_structured(
        self, system_prompt: str, context: str, user_query: str, response_schema: type[BaseModel]
    ) -> dict:
        """구조화된 JSON 출력. Pydantic 모델을 스키마로 사용."""
        contents = self._build_contents(context, user_query)
        for attempt in range(2):
            try:
                response = self.client.models.generate_content(
                    model=self.model,
                    contents=contents,
                    config=types.GenerateContentConfig(
                        system_instruction=system_prompt,
                        response_mime_type="application/json",
                        response_schema=response_schema,
                    ),
                )
                if response.usage_metadata:
                    self.total_input_tokens += response.usage_metadata.prompt_token_count or 0
                    self.total_output_tokens += response.usage_metadata.candidates_token_count or 0
                import json
                return json.loads(response.text)
            except Exception as e:
                if attempt == 0:
                    logger.warning(f"구조화 출력 실패, 재시도: {e}")
                    continue
                logger.error(f"구조화 출력 최종 실패: {e}")
                return {}
        return {}

    @property
    def token_usage(self) -> dict:
        """누적 토큰 사용량"""
        return {"input": self.total_input_tokens, "output": self.total_output_tokens}
```

- [ ] **Step 3: import 확인**

Run (PowerShell):
```powershell
cd tools
.venv\Scripts\python -c "from agent.llm import GeminiClient; print('OK')"
```
Expected: `OK`

- [ ] **Step 4: Commit**

```bash
git add tools/agent/__init__.py tools/agent/llm.py
git commit -m "feat: add Gemini API client wrapper (agent/llm.py)"
```

---

## Chunk 2: 프롬프트 + 튜터 코어

### Task 4: 프롬프트 템플릿 모듈

**Files:**
- Create: `tools/agent/prompts.py`

- [ ] **Step 1: agent/prompts.py 구현**

```python
# tools/agent/prompts.py
"""4가지 학습 기능 + 채점용 시스템 프롬프트 + 컨텍스트 포맷터"""


TUTOR_SYSTEM = """당신은 IT 자격시험 학습 튜터입니다.

역할:
- 주어진 지식그래프 컨텍스트를 기반으로 IT 개념을 정확하고 이해하기 쉽게 설명합니다.
- 선수학습이 필요한 개념이 있으면 학습 순서를 안내합니다.
- 관련 개념 간의 관계를 설명하여 전체적인 이해를 돕습니다.

규칙:
- 컨텍스트에 있는 정보를 우선 활용하되, 필요하면 일반 지식으로 보충합니다.
- 한글로 답변하며, 기술 용어는 첫 등장 시 한글(영문) 형태로 병기합니다.
- 핵심 정의 → 상세 설명 → 관련 개념 순으로 구조화합니다.
"""

SOLVER_SYSTEM = """당신은 IT 자격시험 해설 전문가입니다.

역할:
- 주어진 기출문제의 정답을 제시하고 상세한 해설을 작성합니다.
- 각 선택지가 왜 맞거나 틀린지 분석합니다 (객관식인 경우).
- 지식그래프 컨텍스트의 개념 정의와 관계를 활용하여 근거를 제시합니다.

규칙:
- 정답을 먼저 명시한 후, 해설을 작성합니다.
- 관련 개념의 정의를 인용하여 근거를 뒷받침합니다.
- 출제 의도와 핵심 포인트를 요약합니다.
"""

GENERATOR_SYSTEM = """당신은 IT 자격시험 문제 출제 전문가입니다.

역할:
- 주어진 개념과 관계 정보를 바탕으로 시험 문제를 출제합니다.
- 지정된 난이도(상/중/하)와 유형(객관식/단답형/서술형)에 맞게 문제를 생성합니다.

규칙:
- 문제는 컨텍스트에 있는 개념의 정의, 관계, 비교를 기반으로 합니다.
- 객관식: 4개 선택지, 정답 1개. 오답도 합리적이어야 합니다.
- 모범답안과 해설을 반드시 포함합니다.
- JSON 형식으로 응답합니다.
"""

GRADER_SYSTEM = """당신은 IT 자격시험 채점 전문가입니다.

역할:
- 사용자의 답안을 모범답안과 비교하여 채점합니다.
- 맞은 부분과 틀린 부분을 구체적으로 지적합니다.
- 부족한 부분에 대한 보충 설명을 제공합니다.

규칙:
- 점수 (0~100)와 등급 (우수/양호/보통/미흡)을 제시합니다.
- 핵심 키워드 포함 여부를 체크합니다.
- 개선 방향을 구체적으로 안내합니다.
"""

ESSAY_SYSTEM = """당신은 IT 자격시험 서술형 답안 작성 전문가입니다.

역할:
- 주어진 서술형 문제에 대해 구조화된 모범 답안을 작성합니다.
- 지식그래프 컨텍스트의 개념과 관계를 활용하여 정확한 답안을 구성합니다.

규칙:
- 서론 → 본론 → 결론 구조로 작성합니다.
- 서론: 문제의 핵심 주제 정의 (1~2문장)
- 본론: 핵심 개념 설명, 비교/분석, 구체적 예시 (주요 내용)
- 결론: 요약 및 시사점 (1~2문장)
- **핵심 키워드**를 볼드체로 표시합니다.
- 채점 포인트를 별도로 정리합니다.
"""

KEYWORD_EXTRACT_SYSTEM = """주어진 IT 시험 문제에서 핵심 기술 키워드를 추출하세요.

규칙:
- 3~7개의 핵심 IT 용어만 추출합니다.
- 일반적인 단어(설명하시오, 비교, 등)는 제외합니다.
- 쉼표로 구분하여 한 줄로 출력합니다.

예시 입력: "TCP와 UDP의 차이점을 설명하고, 각각의 활용 사례를 서술하시오."
예시 출력: TCP, UDP, 전송계층, 프로토콜
"""


def format_llm_context(seeds: list[dict], expansions: dict[str, dict]) -> str:
    """Neo4j 검색 결과를 LLM 컨텍스트 문자열로 변환.

    graphrag/searcher.py의 format_context와 다른 함수:
    - searcher.format_context: Claude Code MCP용 (query 파라미터 포함, 상세 포맷)
    - 이 함수: Gemini LLM 프롬프트용 (간결한 포맷)
    """
    if not seeds:
        return ""

    lines = []
    for seed in seeds:
        name_kr = seed.get("name_kr", "")
        name = seed.get("name", "")
        definition = seed.get("definition", "")
        domain = seed.get("domain", "")
        label = seed.get("label", "Concept")
        display = f"{name_kr} ({name})" if name and name != name_kr else name_kr

        lines.append(f"## [{label}] {display}")
        if domain:
            lines.append(f"- 도메인: {domain}")
        if definition:
            lines.append(f"- 정의: {definition}")

        expansion = expansions.get(seed["id"], {})
        rels = expansion.get("relationships", [])
        if rels:
            lines.append("- 관계:")
            for r in rels:
                to_name = r.get("to_name") or r.get("to_id", "?")
                lines.append(f"  - [{r['rel_type']}] {r['direction']} {to_name}")

        lines.append("")

    return "\n".join(lines)
```

- [ ] **Step 2: import 확인**

Run:
```powershell
cd tools
.venv\Scripts\python -c "from agent.prompts import TUTOR_SYSTEM, format_context; print('OK')"
```
Expected: `OK`

- [ ] **Step 3: Commit**

```bash
git add tools/agent/prompts.py
git commit -m "feat: add 6 prompt templates for tutor functions"
```

---

### Task 5: 튜터 코어 로직

**Files:**
- Create: `tools/agent/tutor.py`

이 모듈은 기존 `graphrag/searcher.py`의 `find_seeds()`, `expand_node()` 함수를 직접 호출하고,
`neo4j_mcp/server.py`에만 있는 기출문제/도메인 쿼리는 자체 Cypher로 구현한다.

- [ ] **Step 1: agent/tutor.py 구현**

```python
# tools/agent/tutor.py
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
            # 키워드로 관련 개념 찾기
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

            # 없으면 text 직접 검색
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
            # 전체 문제 수 확인 후 랜덤 skip
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
        # 문제에서 관련 개념 검색
        _, ctx = self._search_context(question_text[:100], limit=3, depth=1)
        yield from self.gemini.generate_stream(SOLVER_SYSTEM, ctx, question_text)

    # ── 기능 3: 문제 출제 ──

    def generate_question(self, domain: str, difficulty: str = "중", q_type: str = "객관식") -> dict:
        """지식그래프 기반 새 문제 생성. 반환: GeneratedQuestion 필드를 가진 dict (또는 에러 시 {"error": ...})"""
        """지식그래프 기반 새 문제 생성"""
        concepts = self._query_domain_concepts(domain, limit=20)
        if not concepts:
            return {"error": f"'{domain}' 도메인에 개념이 없습니다."}

        # 랜덤으로 2~3개 개념 선택
        selected = random.sample(concepts, min(3, len(concepts)))
        selected_ids = [c["id"] for c in selected]

        # 선택된 개념의 관계 탐색
        expansions = {}
        for c in selected:
            expansions[c["id"]] = expand_node(self.driver, c["id"], depth=1)

        ctx = format_context(selected, expansions)
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
        # 1) 키워드 추출 (Gemini 1차 호출)
        try:
            keywords_str = self.gemini.generate(KEYWORD_EXTRACT_SYSTEM, "", question_text)
            keywords = [kw.strip() for kw in keywords_str.split(",") if kw.strip()]
        except Exception:
            # 폴백: 문제 텍스트 전체를 검색 쿼리로 사용
            keywords = [question_text[:50]]

        # 2) 키워드별 검색 + 컨텍스트 통합
        all_seeds = []
        all_expansions = {}
        seen_ids = set()
        for kw in keywords[:5]:  # 최대 5개 키워드
            seeds, _ = self._search_context(kw, limit=3, depth=1)
            for seed in seeds:
                if seed["id"] not in seen_ids:
                    seen_ids.add(seed["id"])
                    all_seeds.append(seed)
                    all_expansions[seed["id"]] = expand_node(self.driver, seed["id"], depth=1)

        ctx = format_context(all_seeds, all_expansions)
        if not ctx:
            ctx = "(관련 개념을 찾지 못했습니다. 일반 지식으로 답변합니다.)"

        # 3) 서술형 답안 생성
        yield from self.gemini.generate_stream(ESSAY_SYSTEM, ctx, question_text)
```

- [ ] **Step 2: import 확인**

Run:
```powershell
cd tools
.venv\Scripts\python -c "from agent.tutor import Tutor, GeneratedQuestion; print('OK')"
```
Expected: `OK`

- [ ] **Step 3: Commit**

```bash
git add tools/agent/tutor.py
git commit -m "feat: add tutor core logic with 4 learning functions"
```

---

## Chunk 3: Streamlit UI

### Task 6: 사이드바 컴포넌트

**Files:**
- Create: `tools/app/__init__.py`
- Create: `tools/app/components/__init__.py`
- Create: `tools/app/components/sidebar.py`

- [ ] **Step 1: 디렉토리 구조 생성**

빈 `__init__.py` 2개 생성:
- `tools/app/__init__.py`
- `tools/app/components/__init__.py`

- [ ] **Step 2: sidebar.py 구현**

```python
# tools/app/components/sidebar.py
"""Streamlit 사이드바: 설정, 연결 상태, 토큰 사용량"""
import streamlit as st
from neo4j import GraphDatabase

import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent.parent.parent))
import config


DOMAIN_OPTIONS = {f"{code} ({info['name']})": code for code, info in config.DOMAINS.items()}


def render_sidebar():
    """사이드바 렌더링. Tutor 인스턴스를 반환 (또는 None)."""
    from agent.llm import GeminiClient
    from agent.tutor import Tutor

    st.sidebar.title("⚙️ 설정")

    # ── API 키 ──
    api_key = st.sidebar.text_input(
        "Gemini API Key",
        value=st.session_state.get("gemini_api_key", config.GEMINI_API_KEY),
        type="password",
        help="Google AI Studio에서 발급: https://aistudio.google.com/apikey",
    )
    if api_key:
        st.session_state.gemini_api_key = api_key

    # ── 모델 선택 ──
    model = st.sidebar.selectbox(
        "모델",
        ["gemini-2.5-flash", "gemini-2.5-pro"],
        index=0,
    )

    # ── 도메인 필터 ──
    domain_display = st.sidebar.selectbox(
        "도메인 필터",
        ["전체"] + list(DOMAIN_OPTIONS.keys()),
        index=0,
    )
    domain_code = DOMAIN_OPTIONS.get(domain_display, "")
    st.session_state.selected_domain = domain_code

    # ── 검색 깊이 ──
    search_depth = st.sidebar.slider("검색 깊이 (hop)", 1, 2, 1)
    st.session_state.search_depth = search_depth

    # ── 연결 상태 ──
    st.sidebar.divider()
    st.sidebar.subheader("📡 연결 상태")

    # Neo4j
    neo4j_ok = _check_neo4j()
    if neo4j_ok:
        st.sidebar.success("Neo4j: 연결됨")
    else:
        st.sidebar.error("Neo4j: 연결 실패")
        st.sidebar.caption("`docker-compose up -d` 실행하세요")

    # Gemini
    gemini_ok = bool(api_key)
    if gemini_ok:
        st.sidebar.success("Gemini: API 키 설정됨")
    else:
        st.sidebar.warning("Gemini: API 키 필요")

    # ── Tutor 인스턴스 생성 ──
    tutor = None
    if neo4j_ok and gemini_ok:
        tutor = _get_tutor(api_key, model)

    # ── 토큰 사용량 ──
    if tutor and hasattr(tutor.gemini, "token_usage"):
        usage = tutor.gemini.token_usage
        st.sidebar.divider()
        st.sidebar.subheader("📊 토큰 사용량")
        col1, col2 = st.sidebar.columns(2)
        col1.metric("Input", f"{usage['input']:,}")
        col2.metric("Output", f"{usage['output']:,}")

    return tutor


@st.cache_resource
def _get_neo4j_driver():
    """Neo4j 드라이버 싱글턴"""
    return GraphDatabase.driver(
        config.NEO4J_URI,
        auth=(config.NEO4J_USER, config.NEO4J_PASSWORD),
    )


def _check_neo4j() -> bool:
    """Neo4j 연결 상태 확인"""
    try:
        driver = _get_neo4j_driver()
        driver.verify_connectivity()
        return True
    except Exception:
        return False


def _get_tutor(api_key: str, model: str) -> "Tutor":
    """Tutor 인스턴스 생성/캐싱"""
    from agent.llm import GeminiClient
    from agent.tutor import Tutor

    # 키 또는 모델이 바뀌면 새 클라이언트 생성
    cache_key = f"{api_key[:8]}_{model}"
    if st.session_state.get("_tutor_cache_key") != cache_key:
        gemini = GeminiClient(api_key=api_key, model=model)
        driver = _get_neo4j_driver()
        st.session_state._tutor_instance = Tutor(driver=driver, gemini=gemini)
        st.session_state._tutor_cache_key = cache_key

    return st.session_state._tutor_instance
```

- [ ] **Step 3: Commit**

```bash
git add tools/app/__init__.py tools/app/components/__init__.py tools/app/components/sidebar.py
git commit -m "feat: add Streamlit sidebar component"
```

---

### Task 7: 메인 앱 + 4개 탭

**Files:**
- Create: `tools/app/app.py`

- [ ] **Step 1: app.py 구현 — 전체 단일 페이지**

```python
# tools/app/app.py
"""IT 학습 튜터 AI 에이전트 — Streamlit 메인 앱"""
import sys
from pathlib import Path

# tools/ 디렉토리를 import 경로에 추가
sys.path.insert(0, str(Path(__file__).parent.parent))

import streamlit as st
import config

st.set_page_config(page_title="IT 학습 튜터", page_icon="🧠", layout="wide")

from app.components.sidebar import render_sidebar


def main():
    st.title("🧠 IT 학습 튜터")

    tutor = render_sidebar()

    if tutor is None:
        st.info("👈 사이드바에서 Neo4j 연결 확인 및 Gemini API Key를 설정하세요.")
        return

    # 4개 탭
    tab1, tab2, tab3, tab4 = st.tabs(["📚 개념 학습", "📝 기출 풀이", "🎯 문제 출제", "✍️ 서술형 답안"])

    with tab1:
        _tab_concept(tutor)

    with tab2:
        _tab_exam(tutor)

    with tab3:
        _tab_generate(tutor)

    with tab4:
        _tab_essay(tutor)


def _tab_concept(tutor):
    """탭 1: 개념 학습"""
    st.subheader("개념 검색 및 학습")
    query = st.text_input("학습할 개념을 입력하세요", placeholder="예: 딥러닝, TCP/IP, 정규화", key="concept_query")

    if st.button("검색", key="concept_btn") and query:
        with st.spinner("지식그래프 검색 + 답변 생성 중..."):
            st.write_stream(tutor.explain_concept(query, domain=st.session_state.get("selected_domain", "")))


def _tab_exam(tutor):
    """탭 2: 기출문제 풀이"""
    st.subheader("기출문제 검색 및 해설")

    col1, col2 = st.columns([3, 1])
    with col1:
        keyword = st.text_input("키워드 검색", placeholder="예: SQL Injection, 정규화", key="exam_keyword")
    with col2:
        st.write("")  # 정렬용
        st.write("")
        random_btn = st.button("🎲 랜덤 출제", key="exam_random")

    domain = st.session_state.get("selected_domain", "")

    # 문제 검색/랜덤
    if keyword or random_btn:
        questions = tutor.get_questions(keyword=keyword, domain=domain, limit=5)
        if not questions:
            st.warning("관련 문제를 찾지 못했습니다.")
        else:
            st.session_state.exam_questions = questions

    # 문제 목록 표시
    questions = st.session_state.get("exam_questions", [])
    if questions:
        for i, q in enumerate(questions):
            text = q.get("text", "")[:300]
            session_name = q.get("exam_session", "?")
            with st.expander(f"문제 {i+1} [{session_name}] {q.get('domain', '')}", expanded=(i == 0)):
                st.markdown(text)
                if st.button(f"해설 보기", key=f"solve_{i}"):
                    st.write_stream(tutor.solve_question(text))


def _tab_generate(tutor):
    """탭 3: 문제 출제"""
    st.subheader("새 문제 출제")

    col1, col2, col3 = st.columns(3)
    with col1:
        domain = st.selectbox("도메인", list(config.DOMAINS.keys()), key="gen_domain")
    with col2:
        difficulty = st.selectbox("난이도", ["하", "중", "상"], index=1, key="gen_diff")
    with col3:
        q_type = st.selectbox("유형", ["객관식", "단답형", "서술형"], key="gen_type")

    if st.button("출제", key="gen_btn"):
        with st.spinner("문제 생성 중..."):
            result = tutor.generate_question(domain=domain, difficulty=difficulty, q_type=q_type)

        if "error" in result:
            st.error(result["error"])
        elif result:
            st.session_state.generated_q = result
            st.markdown(f"### 문제\n{result.get('question', '')}")

            choices = result.get("choices", [])
            if choices:
                for j, choice in enumerate(choices):
                    st.markdown(f"{j+1}. {choice}")

            # 사용자 답변
            user_answer = st.text_area("답변을 입력하세요", key="gen_user_answer")
            if st.button("채점", key="gen_grade") and user_answer:
                correct = result.get("answer", "")
                st.write_stream(tutor.grade_answer(
                    question=result.get("question", ""),
                    correct_answer=correct,
                    user_answer=user_answer,
                ))

            with st.expander("모범답안 보기"):
                st.markdown(f"**정답:** {result.get('answer', '')}")
                st.markdown(f"**해설:** {result.get('explanation', '')}")
        else:
            st.error("문제 생성에 실패했습니다. 다시 시도하세요.")


def _tab_essay(tutor):
    """탭 4: 서술형 답안 작성"""
    st.subheader("서술형 답안 작성")

    question_text = st.text_area(
        "서술형 문제를 입력하세요",
        placeholder="예: TCP와 UDP의 차이점을 설명하고, 각각의 활용 사례를 서술하시오.",
        height=120,
        key="essay_question",
    )

    if st.button("답안 작성", key="essay_btn") and question_text:
        with st.spinner("키워드 추출 + 지식그래프 검색 + 답안 생성 중..."):
            st.write_stream(tutor.write_essay(question_text))


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Streamlit 실행 테스트**

Run (PowerShell):
```powershell
cd tools
.venv\Scripts\streamlit run app/app.py --server.headless true
```
Expected: 브라우저에서 `http://localhost:8501` 접속 가능. 사이드바에 설정 표시.

Neo4j가 실행 중이 아니면 "Neo4j: 연결 실패" 표시.
API 키 없으면 "Gemini: API 키 필요" 표시.

- [ ] **Step 3: Commit**

```bash
git add tools/app/app.py
git commit -m "feat: add Streamlit main app with 4 learning tabs"
```

---

## Chunk 4: 통합 테스트 및 마무리

### Task 8: 통합 동작 확인

- [ ] **Step 1: Neo4j 실행 확인**

Run (PowerShell, 프로젝트 루트):
```powershell
docker-compose up -d
docker-compose ps
```
Expected: neo4j-ontology 컨테이너 running

- [ ] **Step 2: Gemini API 키 발급 안내**

Google AI Studio에서 무료 API 키 발급: https://aistudio.google.com/apikey

발급 후 환경변수 설정:
```powershell
$env:GEMINI_API_KEY = "발급받은-키"
```

또는 Streamlit 앱의 사이드바에서 직접 입력 가능.

- [ ] **Step 3: Streamlit 앱 실행 및 4개 기능 테스트**

Run:
```powershell
cd tools
.venv\Scripts\streamlit run app/app.py
```

테스트 시나리오:
1. **개념 학습**: "딥러닝" 검색 → 구조화된 설명 + 선수학습 경로 표시 확인
2. **기출 풀이**: "SQL" 검색 또는 랜덤 → 문제 카드 + 해설 생성 확인
3. **문제 출제**: AI 도메인 / 중 / 객관식 → 문제 + 선택지 표시 확인
4. **서술형 답안**: "TCP와 UDP의 차이점을 설명하시오" → 서론-본론-결론 답안 확인

- [ ] **Step 4: 프롬프트 품질 확인 및 조정**

실제 출력 결과를 보면서 `agent/prompts.py`의 시스템 프롬프트를 필요에 따라 수정.

- [ ] **Step 5: 최종 Commit**

```bash
git add -A
git commit -m "feat: complete IT tutor agent with Streamlit UI + Gemini integration"
```

---

## Summary

| Task | 내용 | 파일 |
|------|------|------|
| 1 | 의존성 추가 | `pyproject.toml` |
| 2 | Gemini 설정 | `config.py` |
| 3 | Gemini 클라이언트 | `agent/llm.py` |
| 4 | 프롬프트 템플릿 | `agent/prompts.py` |
| 5 | 튜터 코어 | `agent/tutor.py` |
| 6 | 사이드바 컴포넌트 | `app/components/sidebar.py` |
| 7 | 메인 앱 (4탭) | `app/app.py` |
| 8 | 통합 테스트 | (기존 파일) |

신규 파일 6개, 수정 파일 2개. 의존성 2개 추가.
