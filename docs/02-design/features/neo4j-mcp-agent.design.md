# Neo4j MCP Agent Design Document

> **Summary**: Neo4j 온톨로지 지식그래프를 FastMCP 서버로 노출하여 Claude Code가 IT 학습 AI 에이전트로 동작
>
> **Project**: ontology-project-neo4j
> **Version**: 0.1.0
> **Author**: castl
> **Date**: 2025-07-18
> **Status**: Draft
> **Planning Doc**: [neo4j-mcp-agent.plan.md](../../01-plan/features/neo4j-mcp-agent.plan.md)

---

## 1. Overview

### 1.1 Design Goals

1. **기존 코드 최대 재활용**: `searcher.py`의 Cypher 쿼리와 Neo4j 연결 패턴을 그대로 사용
2. **단일 파일 구현**: `tools/neo4j_mcp/server.py` 하나로 전체 MCP 서버 완성
3. **도구 description 품질**: Claude Code가 자연어 질문에서 적절한 도구를 자동 선택할 수 있도록 상세한 docstring 작성
4. **Graceful 에러 처리**: Neo4j 미실행, 검색 결과 없음 등 모든 실패 상황에서 유용한 메시지 반환

### 1.2 Design Principles

- **KISS**: 단일 파일, 최소 의존성, 데코레이터 패턴으로 간결하게
- **재활용 우선**: 새 Cypher 쿼리는 최소화, 기존 `searcher.py` 함수 import
- **도구 독립성**: 각 도구는 독립적으로 동작, 도구 간 의존성 없음

---

## 2. Architecture

### 2.1 Component Diagram

```
┌──────────────┐     ┌─────────────────────┐     ┌──────────────────┐
│  Claude Code │────▶│  FastMCP Server     │────▶│  Neo4j (Docker)  │
│  (LLM Agent) │     │  tools/neo4j_mcp/server.py│     │  13,840 nodes    │
│              │◀────│  7 tools            │◀────│  27,140 rels     │
└──────────────┘     └─────────────────────┘     └──────────────────┘
     stdio              Python 3.11+              bolt://localhost:7687
```

### 2.2 Data Flow

```
사용자 자연어 질문
    ↓
Claude Code (LLM이 도구 선택)
    ↓ MCP stdio 프로토콜
FastMCP Server
    ↓ tool 함수 실행
Neo4j Cypher 쿼리
    ↓ 결과 반환
Markdown 포맷 문자열
    ↓ MCP 응답
Claude Code (LLM이 결과 해석 → 답변 생성)
    ↓
사용자에게 구조화된 답변
```

### 2.3 Dependencies

| Component | Depends On | Purpose |
|-----------|-----------|---------|
| `tools/neo4j_mcp/server.py` | `fastmcp` | MCP 서버 프레임워크 |
| `tools/neo4j_mcp/server.py` | `neo4j` (Python driver) | Neo4j Bolt 연결 |
| `tools/neo4j_mcp/server.py` | `tools/config.py` | NEO4J_URI, USER, PASSWORD |
| `tools/neo4j_mcp/server.py` | `tools/graphrag/searcher.py` | find_seeds, expand_node, format_context 재활용 |
| Claude Code | `tools/neo4j_mcp/server.py` | `claude mcp add` 로 등록 |
| Neo4j | Docker (`docker-compose.yml`) | 그래프 DB |

---

## 3. Data Model

### 3.1 기존 Neo4j 스키마 (재활용)

이 프로젝트는 새로운 데이터 모델을 만들지 않음. 기존 Neo4j 그래프를 **읽기 전용**으로 탐색.

**노드 11종**: Concept, Technology, Method, Standard, Law, Threat, Metric, Domain, Question, Document, ExamSession

**관계 17종**: SUBCLASS_OF, HAS_TYPE, INSTANCE_OF, IMPLEMENTS, HAS_COMPONENT, HAS_PHASE, COMPARED_WITH, DEPENDS_ON, USES, THREATENS, COUNTERED_BY, EXPLOITS, DEFINED_BY, MEASURED_BY, EVOLVED_FROM, BELONGS_TO, MENTIONED_IN

### 3.2 도구 반환 형식

모든 도구는 **Markdown 형식 문자열**을 반환. Claude Code가 이를 해석하여 답변 생성.

```
# {도구명} 결과: "{입력 파라미터}"

## 핵심 정보
- 노드/관계 데이터

## 상세 정보
- 확장 데이터

---
검색 통계: 노드 N개, 관계 N개
```

---

## 4. MCP 도구 상세 설계 (7개)

### 4.1 `search_concepts` — 개념 검색

**용도**: 키워드로 IT 개념을 검색. 다른 도구 호출 전 concept_id를 확인하는 진입점.

```python
@mcp.tool
def search_concepts(keyword: str, top_k: int = 5) -> str:
    """키워드로 IT 개념을 검색합니다.

    fulltext 검색과 정확한 ID/이름 매칭을 모두 수행합니다.
    검색 결과로 concept_id를 확인한 후 다른 도구에서 활용하세요.

    Args:
        keyword: 검색어 (한글 또는 영문). 예: "딥러닝", "deep_learning", "AES"
        top_k: 반환할 최대 결과 수 (기본: 5)

    Returns:
        검색된 개념 목록 (id, name, name_kr, definition, domain, label)
    """
```

**Cypher**: 기존 `searcher.py`의 `EXACT_QUERY` + `SEED_QUERY` 재활용

**반환 예시**:
```
# 개념 검색 결과: "딥러닝"

| # | ID | 한글명 | 영문명 | 타입 | 도메인 | 정의 |
|---|-----|--------|--------|------|--------|------|
| 1 | deep_learning | 딥러닝 | Deep Learning | Concept | AI | 여러 층의 신경망을 사용하는 머신러닝 기법 |
| 2 | cnn | CNN | Convolutional Neural Network | Technology | AI | 합성곱 연산 기반 딥러닝 모델 |

검색 통계: 2개 매칭
```

---

### 4.2 `get_prerequisites` — 선수학습 경로

**용도**: 특정 개념을 이해하기 위해 먼저 알아야 할 선행 개념 트리 탐색.

```python
@mcp.tool
def get_prerequisites(concept_id: str, max_depth: int = 3) -> str:
    """특정 개념의 선수학습 경로를 탐색합니다.

    SUBCLASS_OF, DEPENDS_ON 관계를 역방향으로 추적하여
    해당 개념을 이해하기 위해 먼저 알아야 할 선행 개념을 트리 형태로 반환합니다.

    Args:
        concept_id: 개념 ID (예: "deep_learning", "aes"). search_concepts로 먼저 확인하세요.
        max_depth: 탐색 깊이 (기본: 3, 최대: 5)

    Returns:
        선수학습 트리 (깊이별 선행 개념 목록)
    """
```

**Cypher (신규)**:
```cypher
// 선수학습 경로 탐색: SUBCLASS_OF, DEPENDS_ON 역방향
MATCH path = (c {id: $concept_id})-[:SUBCLASS_OF|DEPENDS_ON*1..{max_depth}]->(prereq)
WHERE NOT prereq:Domain AND NOT prereq:Document
WITH prereq, length(path) AS depth,
     [rel IN relationships(path) | type(rel)] AS rel_chain
RETURN DISTINCT prereq.id AS id,
       prereq.name_kr AS name_kr,
       prereq.name AS name,
       prereq.definition AS definition,
       labels(prereq)[0] AS label,
       min(depth) AS min_depth,
       collect(DISTINCT rel_chain)[0] AS path_types
ORDER BY min_depth, prereq.name_kr
```

**반환 예시**:
```
# 선수학습 경로: "deep_learning" (딥러닝)

## Depth 1 (직접 선행)
- [Concept] 머신러닝 (machine_learning) — SUBCLASS_OF
- [Technology] GPU (gpu) — DEPENDS_ON

## Depth 2
- [Concept] 인공지능 (artificial_intelligence) — SUBCLASS_OF → SUBCLASS_OF
- [Concept] 지도학습 (supervised_learning) — SUBCLASS_OF → HAS_TYPE

## Depth 3
- [Concept] 통계학 (statistics) — SUBCLASS_OF → DEPENDS_ON → SUBCLASS_OF

---
학습 순서 제안: 통계학 → 인공지능 → 머신러닝 → 딥러닝
총 선행 개념: 5개 (3단계)
```

---

### 4.3 `get_related` — 관련 개념 탐색

**용도**: 특정 개념 주변의 관련 노드를 N-hop으로 탐색. 개념 간 관계 파악용.

```python
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
```

**Cypher**: 기존 `searcher.py`의 `EXPAND_QUERY` + `EXPAND_2HOP_QUERY` 재활용

---

### 4.4 `compare_concepts` — 개념 비교

**용도**: 두 개념을 비교 분석. COMPARED_WITH 직접 관계 + 공통 상위/하위 개념 분석.

```python
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
```

**Cypher (신규)**:
```cypher
// 1) 직접 비교 관계 확인
MATCH (a {id: $concept_a})-[r:COMPARED_WITH]-(b {id: $concept_b})
RETURN type(r) AS rel, a.name_kr AS a_name, b.name_kr AS b_name

// 2) 공통 상위 개념
MATCH (a {id: $concept_a})-[:SUBCLASS_OF|HAS_TYPE]->(common)<-[:SUBCLASS_OF|HAS_TYPE]-(b {id: $concept_b})
RETURN common.id AS id, common.name_kr AS name_kr, labels(common)[0] AS label

// 3) 각 개념의 고유 관계 (1홉)
MATCH (a {id: $concept_a})-[r]-(n)
WHERE NOT n:Domain AND NOT n:Document
RETURN 'A' AS side, type(r) AS rel_type, n.name_kr AS name, labels(n)[0] AS label
LIMIT 10
UNION ALL
MATCH (b {id: $concept_b})-[r]-(n)
WHERE NOT n:Domain AND NOT n:Document
RETURN 'B' AS side, type(r) AS rel_type, n.name_kr AS name, labels(n)[0] AS label
LIMIT 10
```

---

### 4.5 `find_questions` — 기출문제 검색

**용도**: 특정 개념이나 도메인과 관련된 기출문제 검색.

```python
@mcp.tool
def find_questions(keyword: str, domain: str = "", limit: int = 10) -> str:
    """IT 자격시험 기출문제를 검색합니다.

    키워드로 관련 개념을 찾고, 해당 개념과 연결된 Question 노드를 반환합니다.
    도메인 필터로 특정 분야의 문제만 검색할 수 있습니다.

    Args:
        keyword: 검색어 (예: "SQL Injection", "정규화", "TCP")
        domain: 도메인 필터 (선택). 13개 도메인 코드 중 하나:
                PM(프로젝트관리), MG(IT경영), SW(소프트웨어공학), SV(서비스/클라우드),
                ST(통계학), AI(인공지능), DS(자료구조), AL(알고리즘),
                SE(보안), DB(데이터베이스), NW(네트워크), CA(컴퓨터구조), OS(운영체제)
        limit: 반환할 최대 문제 수 (기본: 10)

    Returns:
        관련 기출문제 목록 (문제 텍스트, 회차, 관련 개념)
    """
```

**Cypher (신규)**:
```cypher
// 키워드로 개념 찾기 → 연결된 Question 탐색
MATCH (c)-[:MENTIONED_IN|BELONGS_TO]->(:Document)<-[:MENTIONED_IN]-(q:Question)
WHERE c.id = $concept_id OR c.name_kr CONTAINS $keyword
WITH q, c
OPTIONAL MATCH (q)-[:BELONGS_TO]->(es:ExamSession)
RETURN q.id AS qid, q.text AS text, q.domain AS domain,
       es.name AS exam_session, c.name_kr AS related_concept
ORDER BY es.name DESC
LIMIT $limit
```

---

### 4.6 `domain_overview` — 도메인 개요

**용도**: 특정 도메인의 핵심 개념, 노드/관계 통계 요약.

```python
@mcp.tool
def domain_overview(domain_code: str) -> str:
    """특정 IT 도메인의 핵심 개념과 통계를 요약합니다.

    해당 도메인에 속한 노드 수, 관계 수, 핵심 개념 Top 10,
    가장 많이 연결된 개념 등을 반환합니다.

    Args:
        domain_code: 13개 도메인 코드 중 하나:
                     PM(프로젝트관리), MG(IT경영), SW(소프트웨어공학), SV(서비스/클라우드),
                     ST(통계학), AI(인공지능), DS(자료구조), AL(알고리즘),
                     SE(보안), DB(데이터베이스), NW(네트워크), CA(컴퓨터구조), OS(운영체제)

    Returns:
        도메인 개요 (통계, 핵심 개념 Top 10, 연결 허브 개념)
    """
```

**Cypher (신규)**:
```cypher
// 1) 도메인 통계
MATCH (n {domain: $domain_code})
WHERE NOT n:Domain
WITH labels(n)[0] AS label, count(n) AS cnt
RETURN label, cnt ORDER BY cnt DESC

// 2) 핵심 개념 (연결 수 기준 Top 10)
MATCH (n {domain: $domain_code})-[r]-()
WHERE NOT n:Domain AND NOT n:Document
WITH n, count(r) AS degree
ORDER BY degree DESC
LIMIT 10
RETURN n.id AS id, n.name_kr AS name_kr, labels(n)[0] AS label, degree
```

---

### 4.7 `cross_domain_links` — 도메인 간 연결

**용도**: 두 도메인을 잇는 교차 개념 발견.

```python
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
```

**Cypher (신규)**:
```cypher
MATCH (a)-[r]-(b)
WHERE a.domain = $domain_a AND b.domain = $domain_b
  AND NOT a:Domain AND NOT b:Domain
  AND NOT a:Document AND NOT b:Document
WITH a, type(r) AS rel_type, b
RETURN a.id AS a_id, a.name_kr AS a_name, labels(a)[0] AS a_label,
       rel_type,
       b.id AS b_id, b.name_kr AS b_name, labels(b)[0] AS b_label
ORDER BY rel_type, a.name_kr
LIMIT $limit
```

---

## 5. Error Handling

### 5.1 에러 시나리오별 처리

| 시나리오 | 처리 | 반환 메시지 |
|----------|------|------------|
| Neo4j 컨테이너 미실행 | ConnectionError catch | "Neo4j에 연결할 수 없습니다. `docker-compose up -d` 실행 후 다시 시도하세요." |
| concept_id 존재하지 않음 | 빈 결과 확인 | "'{concept_id}' 개념을 찾을 수 없습니다. `search_concepts`로 먼저 검색하세요." |
| 검색 결과 0건 | 빈 리스트 확인 | "'{keyword}'에 대한 검색 결과가 없습니다. 다른 키워드로 시도하세요." |
| 잘못된 domain_code | 유효성 검사 | "유효하지 않은 도메인 코드입니다. 가능한 코드: PM, MG, SW, ..." |
| Cypher 쿼리 오류 | CypherSyntaxError catch | "쿼리 오류가 발생했습니다: {error_message}" |

### 5.2 공통 에러 처리 패턴

```python
def _run_query(cypher: str, params: dict) -> list[dict]:
    """Neo4j 쿼리 실행 + 에러 처리 공통 함수"""
    try:
        driver = GraphDatabase.driver(
            config.NEO4J_URI,
            auth=(config.NEO4J_USER, config.NEO4J_PASSWORD)
        )
        with driver.session() as session:
            result = [dict(record) for record in session.run(cypher, params)]
        driver.close()
        return result
    except Exception as e:
        if "Connection refused" in str(e) or "ServiceUnavailable" in str(e):
            raise ConnectionError(
                "Neo4j에 연결할 수 없습니다. "
                "`docker-compose up -d`로 Neo4j를 시작하세요."
            )
        raise
```

---

## 6. Security Considerations

- [x] **읽기 전용**: 모든 도구는 MATCH 쿼리만 사용, 그래프 수정 없음
- [x] **Cypher Injection 방지**: 파라미터 바인딩(`$param`) 사용, 문자열 연결 금지
- [x] **로컬 전용**: MCP stdio 통신, 네트워크 노출 없음
- [x] **인증 정보**: `config.py` 하드코딩 (로컬 Docker 전용이므로 허용)

---

## 7. Test Plan

### 7.1 Test Scope

| Type | Target | Tool |
|------|--------|------|
| 수동 테스트 | 7개 MCP 도구 | Claude Code에서 자연어 질문 |
| 연결 테스트 | Neo4j 연결/해제 | docker-compose up/down |
| 에러 테스트 | 에러 시나리오 5개 | 잘못된 입력, Neo4j 미실행 |

### 7.2 Test Cases

- [x] Happy path: `search_concepts("딥러닝")` → 결과 반환
- [x] Happy path: `get_prerequisites("deep_learning")` → 선수학습 트리 반환
- [x] Happy path: `compare_concepts("aes", "des")` → 비교 분석 반환
- [x] Happy path: `find_questions("SQL Injection")` → 기출문제 반환
- [x] Happy path: `cross_domain_links("AI", "DB")` → 교차 개념 반환
- [x] Error: 존재하지 않는 concept_id → 안내 메시지
- [x] Error: Neo4j 미실행 → 연결 안내 메시지
- [x] Error: 잘못된 domain_code → 유효한 코드 목록 안내

---

## 8. Implementation Guide

### 8.1 File Structure

```
tools/
├── mcp/
│   ├── __init__.py          ← 빈 파일
│   └── server.py            ← FastMCP 서버 (7개 도구 + 헬퍼)
├── graphrag/
│   └── searcher.py          ← 기존 (find_seeds, expand_node 재활용)
├── config.py                ← 기존 (NEO4J_URI, DOMAINS 등)
└── pyproject.toml           ← fastmcp 의존성 추가
```

### 8.2 Implementation Order

1. [ ] `pyproject.toml`에 `fastmcp` 의존성 추가 + `uv sync`
2. [ ] `tools/neo4j_mcp/__init__.py` 생성 (빈 파일)
3. [ ] `tools/neo4j_mcp/server.py` — FastMCP 서버 뼈대 + `_run_query` 헬퍼 + `search_concepts`
4. [ ] Claude Code에 MCP 서버 등록 (`claude mcp add`) + 동작 확인
5. [ ] `get_prerequisites` 구현 (신규 Cypher)
6. [ ] `get_related` 구현 (기존 searcher.py 재활용)
7. [ ] `find_questions` 구현 (신규 Cypher)
8. [ ] `compare_concepts` 구현 (신규 Cypher)
9. [ ] `domain_overview` 구현 (신규 Cypher)
10. [ ] `cross_domain_links` 구현 (신규 Cypher)
11. [ ] 테스트 시나리오 5개 검증
12. [ ] CLAUDE.md 업데이트 (MCP 에이전트 사용법)

### 8.3 MCP 서버 등록 명령어

```powershell
# Claude Code에 MCP 서버 등록 (프로젝트 스코프)
claude mcp add neo4j-ontology -s project -- C:/Users/castl/00.RootFolder/00.\ Code/03.study/ontology-project-neo4j/tools/.venv/Scripts/python.exe -m mcp.server
```

또는 `.mcp.json` 직접 작성:
```json
{
  "mcpServers": {
    "neo4j-ontology": {
      "command": "C:/Users/castl/00.RootFolder/00. Code/03.study/ontology-project-neo4j/tools/.venv/Scripts/python.exe",
      "args": ["-m", "mcp.server"],
      "cwd": "C:/Users/castl/00.RootFolder/00. Code/03.study/ontology-project-neo4j/tools"
    }
  }
}
```

### 8.4 server.py 뼈대 구조

```python
"""Neo4j 온톨로지 MCP Server — IT 학습 AI 에이전트 도구"""
import sys
from pathlib import Path

# tools/ 디렉토리를 import 경로에 추가
sys.path.insert(0, str(Path(__file__).parent.parent))

from fastmcp import FastMCP
from neo4j import GraphDatabase
import config

mcp = FastMCP(
    "Neo4j Ontology Agent",
    instructions="""IT 도메인 지식그래프(13,840노드, 27,140관계, 13개 도메인)를 탐색하는 도구입니다.
    사용 흐름: search_concepts로 개념 검색 → concept_id 확인 → 다른 도구로 상세 탐색.
    도메인 코드: PM, MG, SW, SV, ST, AI, DS, AL, SE, DB, NW, CA, OS"""
)

VALID_DOMAINS = list(config.DOMAINS.keys())

def _run_query(cypher: str, params: dict) -> list[dict]:
    """Neo4j 쿼리 실행 공통 함수 (에러 처리 포함)"""
    ...

def _validate_domain(code: str) -> str | None:
    """도메인 코드 유효성 검사"""
    ...

@mcp.tool
def search_concepts(keyword: str, top_k: int = 5) -> str: ...

@mcp.tool
def get_prerequisites(concept_id: str, max_depth: int = 3) -> str: ...

@mcp.tool
def get_related(concept_id: str, hops: int = 1, limit: int = 20) -> str: ...

@mcp.tool
def compare_concepts(concept_a: str, concept_b: str) -> str: ...

@mcp.tool
def find_questions(keyword: str, domain: str = "", limit: int = 10) -> str: ...

@mcp.tool
def domain_overview(domain_code: str) -> str: ...

@mcp.tool
def cross_domain_links(domain_a: str, domain_b: str, limit: int = 10) -> str: ...

if __name__ == "__main__":
    mcp.run()
```

---

## 9. Coding Convention

### 9.1 This Feature's Conventions

| Item | Convention |
|------|-----------|
| 파일 명명 | snake_case (`server.py`) |
| 함수 명명 | snake_case, 동사_목적어 (`search_concepts`, `get_prerequisites`) |
| Cypher 쿼리 | 대문자 상수 (`PREREQ_QUERY`), 파라미터 바인딩 (`$param`) |
| 반환 형식 | Markdown 구조화 텍스트 (표, 목록, 헤더) |
| 에러 메시지 | 한글, 해결 방법 포함 |
| line-length | 120 (프로젝트 ruff 설정) |
| docstring | 모든 도구 함수에 Args/Returns 포함 (Claude Code 도구 선택에 활용) |

---

## Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 0.1 | 2025-07-18 | Initial draft | castl |
