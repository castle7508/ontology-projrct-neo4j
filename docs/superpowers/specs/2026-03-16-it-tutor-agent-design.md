# IT 학습 튜터 AI 에이전트 설계서

## 개요

Neo4j 지식그래프(13,840노드, 27,140관계, 13개 도메인)를 활용한 IT 학습 튜터 AI 에이전트.
Streamlit 웹 UI + Gemini API + Neo4j 직접 쿼리(Thin Agent 패턴)로 구현.

| 항목 | 결정 |
|------|------|
| **에이전트 유형** | Thin Agent (정해진 워크플로우, 자율 에이전트 불필요) |
| **LLM** | Gemini (2.5 Flash 기본, Pro 선택 가능) |
| **UI** | Streamlit 웹 앱 (단일 페이지, `st.tabs()` 4개 탭) |
| **사용자** | 본인 학습용 (로컬, 인증 없음) |
| **데이터** | Neo4j 13,840노드 + 기출 9,291건 (정답 없음, LLM 생성) |
| **배포** | localhost 전용 |

## 4가지 핵심 기능

### 기능 1: 개념 학습 튜터

사용자가 키워드를 입력하면 Neo4j에서 개념 정보를 검색하고, Gemini가 구조화된 설명을 생성한다.

**데이터 흐름:**
1. `find_seeds(driver, query, limit)` → 개념 정보 (정의, 도메인, 속성)
2. `expand_node(driver, seed_id, depth)` → 선수학습 경로 + 관련 개념 1~2홉
3. `format_context(results)` → 컨텍스트 문자열
4. `gemini.generate_stream(TUTOR_SYSTEM, context, query)` → 스트리밍 답변

**출력:** 개념 설명 + 선수학습 추천 + 관련 개념 연결

### 기능 2: 기출문제 풀이

기출문제 9,291건에서 검색/랜덤 선택 후, Gemini가 정답과 해설을 생성한다.
(기출문제에 정답이 저장되어 있지 않으므로 LLM이 생성)

**데이터 흐름:**
1. `query_questions(driver, keyword, domain)` → Question 노드 목록 (신규 함수, tutor.py에 구현)
2. 선택된 문제의 관련 Concept 검색 (MENTIONED_IN 역방향)
3. `gemini.generate_stream(SOLVER_SYSTEM, context, question.text)` → 정답 + 해설

**Question 노드 속성:** `text` (문제 텍스트), `domain` (도메인 코드), `exam_session` (회차)

**출력:** 정답 + 해설 + 관련 개념 설명 + 오답 분석

### 기능 3: 새 문제 출제

도메인/난이도/유형을 선택하면 지식그래프 기반으로 새 문제를 생성하고, 사용자 답변을 채점한다.

**데이터 흐름:**
1. `query_domain_concepts(driver, domain)` → 도메인 핵심 개념 목록 (신규 함수, tutor.py에 구현)
2. 랜덤 개념 선택 + `expand_node(driver, concept_id, depth=1)` → 관계 정보
3. `gemini.generate_structured(GENERATOR_SYSTEM, context, params)` → 문제 + 모범답안 (JSON)
4. 사용자 답변 입력 후 → `gemini.generate(GRADER_SYSTEM, answer, user_answer)` → 채점 + 피드백

**출력:** 문제 + 선택지(객관식) + 모범답안 + 해설

### 기능 4: 서술형 답안 작성

서술형 문제를 입력하면 지식그래프에서 관련 개념을 검색하여 서론-본론-결론 구조의 답안을 작성한다.

**데이터 흐름:**
1. 문제 텍스트에서 핵심 키워드 추출 (Gemini 1차 호출)
   - 실패 시 폴백: 문제 텍스트 전체를 검색 쿼리로 사용
2. 키워드별 `find_seeds(driver, keyword, limit)` + `expand_node()` → multi-seed 검색
3. `gemini.generate_stream(ESSAY_SYSTEM, context, question)` → 구조화된 답안

**출력:** 서론-본론-결론 구조 답안 + 채점 포인트 표시

## 아키텍처

```
┌─────────────────────────────────────────────┐
│         Streamlit Web UI (단일 페이지)        │
│         st.tabs() 4개 탭                     │
│  ┌─────────┬──────────┬─────────┬────────┐  │
│  │ 개념    │ 기출     │ 출제    │ 서술   │  │
│  │ 학습    │ 풀이     │ 연습    │ 답안   │  │
│  └────┬────┴────┬─────┴────┬────┴───┬────┘  │
│       └─────────┴──────────┴────────┘       │
│                     │                        │
│              ┌──────▼──────┐                 │
│              │  Agent Core │                 │
│              │  (tutor.py) │                 │
│              └──┬───────┬──┘                 │
│                 │       │                    │
│        ┌────────▼─┐  ┌──▼──────────┐        │
│        │ Neo4j    │  │ Gemini API  │        │
│        │ searcher │  │ (생성)      │        │
│        └──────────┘  └─────────────┘        │
└─────────────────────────────────────────────┘
```

## 디렉토리 구조

```
tools/
├── agent/                    ← 신규: 에이전트 코어
│   ├── __init__.py
│   ├── llm.py               ← Gemini API 클라이언트
│   ├── prompts.py           ← 5가지 프롬프트 템플릿
│   └── tutor.py             ← 튜터 로직 (검색 → 컨텍스트 → LLM)
│
├── app/                      ← 신규: Streamlit UI
│   ├── app.py               ← 단일 엔트리포인트 (st.tabs 4개)
│   └── components/
│       └── sidebar.py       ← 도메인 선택, 설정, 상태 표시
│
├── graphrag/searcher.py      ← 기존 재사용 (함수 기반)
├── config.py                 ← 기존 + Gemini 설정 추가
└── pyproject.toml            ← streamlit, google-genai 추가
```

**변경 사항 (기존 pages/ 멀티페이지 → 단일 페이지 st.tabs):**
4개 기능이 동일한 사이드바(도메인, API 키, 모델)를 공유하므로,
`st.tabs()`로 단일 페이지에 4개 탭을 구성한다. 상태 공유가 자연스럽고 구조가 단순하다.

## 모듈 설계

### agent/llm.py — Gemini 클라이언트

```python
class GeminiClient:
    def __init__(self, api_key: str, model: str = "gemini-2.5-flash")
    def generate(self, system_prompt: str, context: str, user_query: str) -> str
    def generate_stream(self, system_prompt: str, context: str, user_query: str) -> Iterator[str]
        # google-genai의 GenerateContentResponse 청크에서 text를 추출하여 str 청크로 yield
        # Streamlit에서는 st.write_stream(generate_stream(...))으로 사용
    def generate_structured(self, system_prompt: str, context: str, user_query: str, response_schema: type) -> dict
        # google-genai의 response_schema 파라미터 사용 (Pydantic 모델 전달)
        # JSON 파싱 실패 시 1회 재시도, 그래도 실패 시 빈 dict + 에러 로깅
```

- 재시도 로직 (429 rate limit, 최대 3회 지수 백오프)
- 스트리밍 중 에러 발생 시 부분 결과 반환 + `st.warning()` 표시
- 토큰 사용량 추적: 요청별 input/output 토큰 기록, `st.session_state.token_usage`에 누적

### agent/prompts.py — 프롬프트 템플릿

5가지 시스템 프롬프트 + 컨텍스트 포맷터.
프롬프트는 구현 후 실제 출력 품질을 보면서 반복 튜닝한다.

```python
TUTOR_SYSTEM: str      # 개념 학습 튜터
SOLVER_SYSTEM: str     # 기출문제 해설가
GENERATOR_SYSTEM: str  # 문제 출제자
GRADER_SYSTEM: str     # 채점 + 피드백 (기능 3에서 사용)
ESSAY_SYSTEM: str      # 서술형 답안 작성자

def format_context(search_results: dict) -> str
    # Neo4j 검색 결과를 LLM 컨텍스트 문자열로 변환
    # 시드 개념 정의 + 관계 + 확장 개념 포함
```

### 문제 출제 JSON 스키마 (기능 3)

```python
from pydantic import BaseModel

class GeneratedQuestion(BaseModel):
    question: str           # 문제 텍스트
    choices: list[str]      # 객관식 선택지 (4개, 객관식인 경우)
    answer: str             # 정답
    explanation: str        # 해설
    related_concepts: list[str]  # 관련 개념 이름
```

`generate_structured()`에 `response_schema=GeneratedQuestion`으로 전달하여
Gemini가 구조화된 JSON을 반환하도록 한다.

### agent/tutor.py — 튜터 코어 로직

```python
class Tutor:
    def __init__(self, driver: neo4j.Driver, gemini: GeminiClient)
        # driver를 저장하고, graphrag.searcher의 함수 호출 시 전달

    # 기능 1: 개념 학습
    def explain_concept(self, query: str, domain: str = None) -> Iterator[str]

    # 기능 2: 기출문제 풀이
    def solve_question(self, question_text: str, related_concepts: list = None) -> Iterator[str]

    # 기능 3: 새 문제 출제
    def generate_question(self, domain: str, difficulty: str, q_type: str) -> GeneratedQuestion

    # 기능 4: 서술형 답안
    def write_essay(self, question_text: str) -> Iterator[str]
```

**Neo4j 드라이버 관리:**
- `config.py`에 `get_driver()` 함수 추가 (lazy singleton 패턴)
- `Tutor.__init__`에서 driver를 받아 저장
- `graphrag/searcher.py`의 함수 호출 시 `self.driver`를 첫 인자로 전달
- Streamlit `st.session_state`에 driver 캐싱 (`@st.cache_resource`)

**기존 searcher.py와의 연결:**
- `find_seeds(driver, query, limit)` — 기존 함수 그대로 사용
- `expand_node(driver, seed_id, depth)` — 기존 함수 그대로 사용
- `query_questions(driver, keyword, domain)` — tutor.py에 신규 Cypher 쿼리 구현
- `query_domain_concepts(driver, domain)` — tutor.py에 신규 Cypher 쿼리 구현

신규 Cypher 쿼리는 `neo4j_mcp/server.py`의 기존 쿼리 패턴을 참고하되,
MCP 도구의 마크다운 포맷 대신 Python dict/list로 반환한다.

## 기술 스택

### 신규 의존성

| 패키지 | 버전 | 용도 |
|--------|------|------|
| `streamlit` | `>=1.40.0` | 웹 UI 프레임워크 |
| `google-genai` | `>=1.0.0` | Gemini API 공식 SDK |

### 기존 재사용

| 패키지 | 용도 |
|--------|------|
| `neo4j` | Neo4j Bolt 드라이버 |
| `pydantic` | 데이터 모델 (GeneratedQuestion 스키마) |

### 설정

- Gemini API 키: 환경변수 `GEMINI_API_KEY` 또는 Streamlit 사이드바 입력
  - 사이드바 입력 시 `st.session_state.gemini_api_key`에 저장 (세션 유지)
  - `.env` 파일은 사용하지 않음 (로컬 전용이므로 환경변수로 충분)
- 기본 모델: `gemini-2.5-flash` (사이드바에서 변경 가능)

## Streamlit UI 구조

단일 페이지 + `st.tabs()` 방식. 4개 탭이 동일한 사이드바를 공유한다.

```
┌──────────────────────────────────────────────────┐
│  IT 학습 튜터                       [모델: Flash] │
├──────────┬───────────────────────────────────────┤
│ 사이드바  │  메인 영역                              │
│          │  ┌─────┬──────┬──────┬──────┐        │
│ 도메인    │  │학습 │풀이  │출제  │답안  │        │
│ [AI    ▼]│  └─────┴──────┴──────┴──────┘        │
│          │                                       │
│ 설정     │  (선택된 탭의 콘텐츠)                    │
│ API Key  │                                       │
│ 모델선택  │                                       │
│ 검색깊이  │                                       │
│          │                                       │
│ 연결상태  │                                       │
│ Neo4j: ✅│                                       │
│ Gemini:✅│                                       │
│          │                                       │
│ 토큰사용량│                                       │
│ In: 1.2K │                                       │
│ Out: 3.5K│                                       │
└──────────┴───────────────────────────────────────┘
```

### 탭별 UI 요소

| 탭 | 입력 | 출력 |
|----|------|------|
| 개념 학습 | 검색창 + 도메인 필터 | 개념 설명 + 선수학습 경로 + 관련 개념 |
| 기출 풀이 | 키워드 검색 / 랜덤 버튼 | 문제 카드 + 해설 토글 (스트리밍) |
| 문제 출제 | 난이도 + 유형 선택 | 문제 → 답변 입력 → 채점 + 피드백 |
| 서술형 답안 | 문제 텍스트 입력 | 서론-본론-결론 답안 (스트리밍) |

### 상태 관리 (`st.session_state`)

| 키 | 타입 | 용도 |
|----|------|------|
| `gemini_api_key` | `str` | API 키 (사이드바 입력 시) |
| `gemini_client` | `GeminiClient` | 클라이언트 인스턴스 |
| `tutor` | `Tutor` | 튜터 인스턴스 |
| `token_usage` | `dict` | `{"input": int, "output": int}` 누적 |
| `current_question` | `dict` | 기출풀이/출제 탭의 현재 문제 |

## 에러 처리

| 상황 | 처리 |
|------|------|
| Neo4j 미실행 | 사이드바에 "❌ Neo4j 연결 실패" + "docker-compose up -d 실행하세요" 안내 |
| API 키 미설정 | 사이드바에서 입력 유도, Neo4j 검색만 동작 (LLM 기능 비활성) |
| Gemini 429 | 자동 재시도 (최대 3회, 지수 백오프) |
| 스트리밍 중 에러 | 부분 결과 표시 + `st.warning()` |
| 검색 결과 없음 | "관련 개념을 찾지 못했습니다" 안내 |
| JSON 파싱 실패 (기능 3) | 1회 재시도, 실패 시 비구조화 텍스트로 폴백 |
| 키워드 추출 실패 (기능 4) | 문제 텍스트 전체를 검색 쿼리로 폴백 |
| 네트워크 오류 | `st.error()` 표시, 앱 중단 없음 |

## 제약사항 (범위 외)

- 인증/로그인 없음 (로컬 전용)
- 대화 저장 없음 (세션 내에서만 유지)
- 동시 사용자 1명
- 프롬프트 관리 UI 없음 (코드에서 직접 수정)
- 그래프 시각화 없음 (추후 확장 가능)

## 실행 방법

```powershell
# 1. Neo4j 실행
docker-compose up -d

# 2. 의존성 설치
cd tools
uv add streamlit google-genai

# 3. Gemini API 키 설정 (PowerShell 세션)
$env:GEMINI_API_KEY = "your-api-key"

# 4. Streamlit 실행
.venv\Scripts\streamlit run app/app.py
```

참고: API 키는 Streamlit 사이드바에서도 입력 가능 (환경변수 없이도 동작)
