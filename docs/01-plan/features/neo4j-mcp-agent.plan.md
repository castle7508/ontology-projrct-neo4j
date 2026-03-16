# Neo4j MCP Agent Planning Document

> **Summary**: Neo4j 온톨로지 지식그래프를 MCP Server로 노출하여 Claude Code가 IT 학습 에이전트로 동작하게 만드는 기능
>
> **Project**: ontology-project-neo4j
> **Version**: 0.1.0
> **Author**: castl
> **Date**: 2025-07-18
> **Status**: Draft

---

## Executive Summary

| Perspective | Content |
|-------------|---------|
| **Problem** | 13,840노드/27,140관계의 지식그래프가 구축되었으나, 활용이 CLI 수동 검색에 한정되어 있어 그래프의 구조적 탐색 능력이 충분히 발휘되지 못함 |
| **Solution** | Python FastMCP 서버로 7개 그래프 탐색 도구를 노출하여 Claude Code가 자연어 질의 → 그래프 탐색 → 추론 답변을 자동 수행하는 AI 에이전트로 동작 |
| **Function/UX Effect** | 사용자가 "딥러닝 선수지식 알려줘"처럼 자연어로 질문하면 Claude Code가 MCP 도구로 그래프를 탐색하고, LLM 추론으로 구조화된 학습 가이드를 생성 |
| **Core Value** | 추가 API 비용 zero로 기존 Claude Code 구독만으로 13개 IT 도메인의 지식그래프 기반 AI 튜터 에이전트 구현 |

---

## 1. Overview

### 1.1 Purpose

기존 `tools/graphrag/searcher.py`의 그래프 검색 능력을 MCP(Model Context Protocol) Server로 확장하여, Claude Code가 직접 Neo4j 그래프를 탐색하고 LLM 추론을 결합한 답변을 생성하는 AI 에이전트를 구축한다.

### 1.2 Background

- **현재 상태**: GraphRAG CLI(`python cli.py search "딥러닝"`)로 그래프 검색 가능하나, 결과 해석은 사용자 몫
- **문제점**: CLI 출력을 복사해서 Claude에게 다시 붙여넣어야 하는 수동 워크플로우
- **목표 상태**: Claude Code가 MCP 도구로 직접 그래프를 탐색하고, 탐색 결과를 기반으로 추론/답변 생성을 자동 수행

### 1.3 Related Documents

- 기존 코드: `tools/graphrag/searcher.py` (검색 로직 재활용)
- 스키마 설계: `CLAUDE.md` (11노드, 17관계 타입 정의)
- Neo4j 인프라: `docker-compose.yml`

---

## 2. Scope

### 2.1 In Scope

- [x] Python FastMCP 서버 구현 (7개 도구)
- [x] 기존 `searcher.py` 로직 재활용 및 확장
- [x] Claude Code MCP 설정 연동 (`.claude/mcp.json`)
- [x] 도구별 입력 검증 및 에러 처리
- [x] 사용 가이드 문서 (CLAUDE.md 업데이트)

### 2.2 Out of Scope

- 웹 UI (Streamlit/Gradio) — 후속 Phase
- 벡터 임베딩 하이브리드 검색 — 후속 Phase
- Claude API 직접 호출 — Claude Code 구독 내에서 해결
- 인증/권한 관리 — 로컬 전용

---

## 3. Requirements

### 3.1 Functional Requirements

| ID | Requirement | Priority | Status |
|----|-------------|----------|--------|
| FR-01 | `search_concepts`: 키워드로 개념 검색 (fulltext + exact match) | High | Pending |
| FR-02 | `get_prerequisites`: 선수학습 경로 탐색 (SUBCLASS_OF, DEPENDS_ON 역추적) | High | Pending |
| FR-03 | `get_related`: 특정 개념의 N-hop 관련 개념 탐색 | High | Pending |
| FR-04 | `compare_concepts`: 두 개념 비교 분석 (COMPARED_WITH + 공통/차이 속성) | Medium | Pending |
| FR-05 | `find_questions`: 개념 관련 기출문제 검색 (Question 노드 탐색) | High | Pending |
| FR-06 | `domain_overview`: 도메인별 핵심 개념 + 통계 요약 | Medium | Pending |
| FR-07 | `cross_domain_links`: 도메인 간 연결 탐색 (교차 개념 발견) | Medium | Pending |

### 3.2 Non-Functional Requirements

| Category | Criteria | Measurement Method |
|----------|----------|-------------------|
| Performance | 각 도구 응답 < 3초 | MCP 호출 로그 |
| Reliability | Neo4j 연결 실패 시 명확한 에러 메시지 반환 | 수동 테스트 |
| Usability | Claude Code에서 자연어 질문으로 도구 자동 선택 | 실사용 테스트 |
| Compatibility | Python 3.11+, Neo4j 5.x, FastMCP 최신 | 의존성 확인 |

---

## 4. Success Criteria

### 4.1 Definition of Done

- [x] 7개 MCP 도구 모두 구현 및 동작 확인
- [x] Claude Code에서 `claude mcp add` 로 서버 등록 성공
- [x] 자연어 질문 5개 시나리오 테스트 통과
- [x] CLAUDE.md에 MCP 에이전트 사용법 추가

### 4.2 Quality Criteria

- [x] Neo4j 미실행 시 graceful error 반환
- [x] 검색 결과 없을 때 빈 결과가 아닌 안내 메시지 반환
- [x] 각 도구의 입력 파라미터에 description 포함 (Claude가 도구 선택 시 참고)

### 4.3 테스트 시나리오

| # | 자연어 질문 | 기대 동작 |
|---|------------|-----------|
| 1 | "딥러닝 공부하려면 뭘 먼저 알아야 해?" | `get_prerequisites` → 선수학습 트리 반환 |
| 2 | "AES와 DES 비교해줘" | `compare_concepts` → 비교 분석 반환 |
| 3 | "네트워크 보안 기출문제 뽑아줘" | `find_questions` → 관련 기출 반환 |
| 4 | "AI 도메인 핵심 개념 요약" | `domain_overview` → AI 도메인 통계+핵심 개념 |
| 5 | "데이터베이스와 AI는 어떻게 연결돼?" | `cross_domain_links` → 교차 개념 반환 |

---

## 5. Risks and Mitigation

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| Neo4j 컨테이너 미실행 시 MCP 서버 장애 | High | Medium | 연결 실패 시 명확한 에러 메시지 + 재연결 가이드 반환 |
| FastMCP 라이브러리 호환성 이슈 | Medium | Low | 공식 문서 기반 구현, 최소 의존성 |
| Cypher 쿼리 성능 (대용량 그래프) | Medium | Low | LIMIT 적용, 인덱스 활용 (이미 설정됨) |
| Claude Code가 도구를 잘못 선택 | Low | Medium | 도구 description을 상세히 작성, 파라미터 명시 |

---

## 6. Architecture Considerations

### 6.1 Project Level Selection

| Level | Characteristics | Recommended For | Selected |
|-------|-----------------|-----------------|:--------:|
| **Starter** | 단일 Python 파일, 최소 구조 | MCP 서버 1개 | ☑ |
| **Dynamic** | 모듈화, BaaS 연동 | 웹 UI 포함 시 | ☐ |
| **Enterprise** | 마이크로서비스 | 불필요 | ☐ |

→ **Starter 수준**: MCP 서버 단일 파일 + 기존 `searcher.py` 재활용

### 6.2 Key Architectural Decisions

| Decision | Options | Selected | Rationale |
|----------|---------|----------|-----------|
| MCP 프레임워크 | FastMCP / mcp-sdk | **FastMCP** | Python 네이티브, 데코레이터 기반 간결한 API |
| 서버 위치 | tools/ 내부 / 별도 디렉토리 | **tools/mcp/** | 기존 config.py, searcher.py 재활용 용이 |
| Neo4j 연결 | 매 호출 연결 / 커넥션 풀 | **매 호출 연결** | MCP 서버 특성상 간헐적 호출, 풀 불필요 |
| 등록 방식 | claude mcp add / .mcp.json | **claude mcp add** | 프로젝트 독립적, 사용자별 설정 |

### 6.3 파일 구조 (예상)

```
tools/
├── mcp/                    ← 신규
│   ├── __init__.py
│   └── server.py           ← FastMCP 서버 (7개 도구)
├── graphrag/
│   └── searcher.py         ← 기존 (재활용)
├── config.py               ← 기존 (재활용)
└── pyproject.toml           ← fastmcp 의존성 추가
```

### 6.4 도구 설계 상세

```python
# 도구 시그니처 초안
@mcp.tool()
def search_concepts(keyword: str, top_k: int = 5) -> str:
    """키워드로 IT 개념을 검색합니다. fulltext + exact match."""

@mcp.tool()
def get_prerequisites(concept_id: str, max_depth: int = 3) -> str:
    """특정 개념의 선수학습 경로를 탐색합니다. SUBCLASS_OF, DEPENDS_ON 관계 역추적."""

@mcp.tool()
def get_related(concept_id: str, hops: int = 1, limit: int = 20) -> str:
    """특정 개념과 관련된 노드를 N-hop으로 탐색합니다."""

@mcp.tool()
def compare_concepts(concept_a: str, concept_b: str) -> str:
    """두 개념을 비교 분석합니다. COMPARED_WITH 관계 + 공통 상위/하위 개념."""

@mcp.tool()
def find_questions(keyword: str, domain: str = None, limit: int = 10) -> str:
    """관련 기출문제를 검색합니다. keyword로 개념 매칭 후 Question 노드 탐색."""

@mcp.tool()
def domain_overview(domain_code: str) -> str:
    """도메인별 핵심 개념, 노드/관계 통계, 출제비중을 요약합니다."""

@mcp.tool()
def cross_domain_links(domain_a: str, domain_b: str, limit: int = 10) -> str:
    """두 도메인 간 연결된 개념을 탐색합니다."""
```

---

## 7. Convention Prerequisites

### 7.1 Existing Project Conventions

- [x] `CLAUDE.md` has coding conventions section
- [x] Python 코딩 규칙: ruff, line-length=120, py311
- [x] Neo4j 연결 패턴: `config.py` (URI, USER, PASSWORD)
- [x] Cypher 쿼리 패턴: 대문자 상수, 파라미터 바인딩

### 7.2 Conventions to Define/Verify

| Category | Current State | To Define | Priority |
|----------|---------------|-----------|:--------:|
| **MCP 도구 명명** | 없음 | snake_case, 동사_목적어 | High |
| **반환 형식** | searcher.py 포맷 존재 | Markdown 구조화 텍스트 | High |
| **에러 처리** | 기본 예외 | 사용자 친화적 메시지 | Medium |

### 7.3 Environment Variables Needed

| Variable | Purpose | Scope | To Be Created |
|----------|---------|-------|:-------------:|
| `NEO4J_URI` | Neo4j Bolt 주소 | Server | ☐ (config.py에 하드코딩, 필요시 env 전환) |
| `NEO4J_USER` | Neo4j 사용자 | Server | ☐ |
| `NEO4J_PASSWORD` | Neo4j 비밀번호 | Server | ☐ |

---

## 8. Implementation Plan

### Phase 1: MCP 서버 기본 구조 (핵심)

1. `fastmcp` 의존성 추가 (`pyproject.toml`)
2. `tools/mcp/server.py` 생성 — FastMCP 서버 뼈대
3. `search_concepts` 도구 구현 (기존 `searcher.py` 재활용)
4. Claude Code에 MCP 서버 등록 및 동작 확인

### Phase 2: 핵심 도구 구현

5. `get_prerequisites` 도구 (Cypher 신규 작성)
6. `get_related` 도구 (기존 `expand_node` 확장)
7. `find_questions` 도구 (Question 노드 탐색)
8. `compare_concepts` 도구 (COMPARED_WITH + 공통분석)

### Phase 3: 보조 도구 + 마무리

9. `domain_overview` 도구 (통계 Cypher)
10. `cross_domain_links` 도구 (도메인 간 교차)
11. CLAUDE.md 업데이트 (MCP 에이전트 사용법)
12. 테스트 시나리오 5개 검증

---

## 9. Next Steps

1. [ ] Design 문서 작성 (`neo4j-mcp-agent.design.md`)
2. [ ] 팀 리뷰 및 승인
3. [ ] 구현 시작

---

## Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 0.1 | 2025-07-18 | Initial draft | castl |
