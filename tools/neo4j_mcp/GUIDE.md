# Neo4j Ontology MCP Agent — 사용 가이드

> Neo4j 지식그래프(13,840노드, 27,140관계, 13개 IT 도메인)를 Claude Code에서 자연어로 탐색하는 AI 에이전트

---

## 목차

1. [개요](#1-개요)
2. [사전 준비](#2-사전-준비)
3. [MCP 서버 설정](#3-mcp-서버-설정)
4. [7개 도구 상세 가이드](#4-7개-도구-상세-가이드)
5. [실전 사용 시나리오](#5-실전-사용-시나리오)
6. [도메인 코드 레퍼런스](#6-도메인-코드-레퍼런스)
7. [트러블슈팅](#7-트러블슈팅)
8. [아키텍처 이해](#8-아키텍처-이해)
9. [확장 가이드](#9-확장-가이드)

---

## 1. 개요

### 이 MCP 서버는 무엇인가?

이 MCP(Model Context Protocol) 서버는 Neo4j에 저장된 IT 도메인 지식그래프를 Claude Code가 **직접 탐색**할 수 있게 해주는 다리 역할을 합니다.

**기존 워크플로우 (수동)**:
```
사용자 → CLI로 검색 실행 → 결과를 복사 → Claude에 붙여넣기 → 답변 받기
```

**MCP 에이전트 워크플로우 (자동)**:
```
사용자: "딥러닝 공부하려면 뭘 먼저 알아야 해?"
   → Claude Code가 자동으로 get_prerequisites 호출
   → Neo4j에서 선수학습 경로 탐색
   → 결과를 해석하여 구조화된 학습 가이드 생성
```

### 핵심 장점

- **자연어 질문**: 키워드나 명령어 대신 자연어로 질문
- **자동 도구 선택**: Claude Code가 질문의 의도를 파악하여 적절한 도구를 자동 선택
- **추가 비용 zero**: Claude Code 구독만으로 동작, 별도 API 키 불필요
- **13개 도메인 통합**: PM, SW, AI, SE, DB, NW 등 13개 IT 도메인을 하나의 인터페이스로

---

## 2. 사전 준비

### 2.1 Neo4j Docker 실행

MCP 서버가 동작하려면 Neo4j가 실행 중이어야 합니다.

```powershell
# 프로젝트 루트에서 실행
cd ontology-project-neo4j
docker-compose up -d
```

**상태 확인**:
```powershell
docker-compose ps
```

정상 상태: `neo4j-ontology` 컨테이너가 `Up` 상태

**Neo4j Browser 접속** (선택):
- URL: http://localhost:7474
- ID/PW: `neo4j` / `ontology2025`

### 2.2 Python 가상환경 확인

```powershell
cd tools
.venv\Scripts\python.exe --version    # Python 3.11 이상
.venv\Scripts\python.exe -c "import fastmcp; print(fastmcp.__version__)"
```

만약 fastmcp가 없다면:
```powershell
cd tools
uv sync    # pyproject.toml 기반 의존성 설치
```

### 2.3 MCP 서버 동작 테스트

```powershell
cd tools
.venv\Scripts\python.exe -m neo4j_mcp.server --help
```

FastMCP 배너가 표시되면 정상:
```
╔═══════════════════════════╗
║       FastMCP 3.1.1       ║
║  Server: Neo4j Ontology   ║
╚═══════════════════════════╝
```

---

## 3. MCP 서버 설정

### 3.1 `.mcp.json` (이미 설정됨)

프로젝트 루트의 `.mcp.json` 파일이 Claude Code에 MCP 서버를 등록합니다.

```json
{
  "mcpServers": {
    "neo4j-ontology": {
      "command": "C:/Users/castl/00.RootFolder/00. Code/03.study/ontology-project-neo4j/tools/.venv/Scripts/python.exe",
      "args": ["-m", "neo4j_mcp.server"],
      "cwd": "C:/Users/castl/00.RootFolder/00. Code/03.study/ontology-project-neo4j/tools"
    }
  }
}
```

### 3.2 Claude Code에서 확인

Claude Code를 이 프로젝트 디렉토리에서 시작하면 `.mcp.json`이 자동 로드됩니다.

**확인 방법**: Claude Code 시작 시 로그에 다음이 표시됩니다:
```
MCP server neo4j-ontology connected
```

또는 Claude Code에서 `/mcp` 명령으로 MCP 서버 상태를 확인할 수 있습니다.

### 3.3 수동 등록 (대안)

`.mcp.json` 대신 CLI로도 등록 가능합니다:
```powershell
claude mcp add neo4j-ontology -s project -- C:/Users/castl/00.RootFolder/00.\ Code/03.study/ontology-project-neo4j/tools/.venv/Scripts/python.exe -m neo4j_mcp.server
```

---

## 4. 7개 도구 상세 가이드

### 4.1 `search_concepts` — 개념 검색 (진입점)

**용도**: 키워드로 IT 개념을 검색합니다. **다른 도구를 사용하기 전에 이 도구로 concept_id를 먼저 확인**하는 것을 권장합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `keyword` | string | (필수) | 검색어. 한글("딥러닝") 또는 영문("deep_learning", "AES") |
| `top_k` | int | 5 | 반환할 최대 결과 수 |

**자연어 질문 예시**:
- "딥러닝 검색해줘"
- "AES 개념 찾아줘"
- "정규화가 뭐야?" (Claude Code가 먼저 search_concepts를 호출)

**반환 형식**:
```markdown
# 개념 검색 결과: "딥러닝"

| # | ID | 한글명 | 영문명 | 타입 | 도메인 | 정의 |
|---|-----|--------|--------|------|--------|------|
| 1 | deep_learning | 딥러닝 | 딥러닝 | Concept | AI | 깊은 인공신경망... |

검색 통계: 5개 매칭
```

**활용 팁**:
- 검색 결과의 `ID` 컬럼이 다른 도구에서 사용할 `concept_id`입니다
- 한글과 영문 모두 검색 가능
- fulltext 검색도 지원하므로 부분 키워드도 동작합니다

---

### 4.2 `get_prerequisites` — 선수학습 경로

**용도**: 특정 개념을 이해하려면 먼저 알아야 할 선행 개념들을 깊이별로 탐색합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `concept_id` | string | (필수) | 개념 ID (예: "deep_learning"). `search_concepts`로 확인 |
| `max_depth` | int | 3 | 탐색 깊이 (1~5) |

**자연어 질문 예시**:
- "딥러닝 공부하려면 뭘 먼저 알아야 해?"
- "AES 암호화의 선수지식 알려줘"
- "객체지향 프로그래밍을 이해하려면?"

**반환 형식**:
```markdown
# 선수학습 경로: "deep_learning" (딥러닝)

## Depth 1 (직접 선행)
- [Concept] 머신러닝 (machine_learning) — SUBCLASS_OF

## Depth 2
- [Concept] 인공지능 (artificial_intelligence) — SUBCLASS_OF → SUBCLASS_OF

## Depth 3
- [Concept] 알고리즘 (알고리즘) — SUBCLASS_OF → SUBCLASS_OF → SUBCLASS_OF

---
학습 순서 제안: 알고리즘 → 인공지능 → 머신러닝 → **딥러닝**
총 선행 개념: 3개 (3단계)
```

**활용 팁**:
- 학습 순서 제안이 자동 생성됩니다 (깊은 개념 → 얕은 개념 순)
- `max_depth=1`로 직접 선행 개념만 볼 수도 있습니다
- SUBCLASS_OF, DEPENDS_ON 관계를 따라 탐색합니다

---

### 4.3 `get_related` — 관련 개념 탐색

**용도**: 특정 개념 주변의 모든 관련 노드를 탐색합니다. 개념의 전체적인 관계 맵을 파악할 때 유용합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `concept_id` | string | (필수) | 개념 ID |
| `hops` | int | 1 | 탐색 깊이 (1 또는 2) |
| `limit` | int | 20 | 반환할 최대 관계 수 |

**자연어 질문 예시**:
- "딥러닝과 연결된 개념들 보여줘"
- "TCP 프로토콜의 관련 개념은?"
- "정규화 주변에 뭐가 있어?"

**반환 형식**:
```markdown
# 관련 개념: "deep_learning" (딥러닝)

## 1-hop 관계
| 관계 | 방향 | 연결 노드 | 타입 | 정의 |
|------|------|-----------|------|------|
| SUBCLASS_OF | -> | 머신러닝 | Concept | ... |
| INSTANCE_OF | <- | CNN | Technology | ... |

## 2-hop 확장 (hops=2일 때)
- [Concept] 인공지능 (경유: 머신러닝, SUBCLASS_OF→SUBCLASS_OF)
```

**활용 팁**:
- `hops=1`은 직접 연결, `hops=2`는 2단계 확장
- 관계 타입 우선순위: SUBCLASS_OF > HAS_TYPE > INSTANCE_OF > ... 순으로 정렬
- Domain, Document 노드는 자동 제외됩니다

---

### 4.4 `compare_concepts` — 개념 비교

**용도**: 두 개념을 나란히 비교합니다. COMPARED_WITH 관계, 공통 상위 개념, 각각의 고유 관계를 분석합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `concept_a` | string | (필수) | 첫 번째 개념 ID (예: "aes") |
| `concept_b` | string | (필수) | 두 번째 개념 ID (예: "des") |

**자연어 질문 예시**:
- "AES와 DES 비교해줘"
- "TCP와 UDP 차이점 알려줘"
- "정규화와 반정규화 비교"

**반환 형식**:
```markdown
# 개념 비교: AES vs DES

## 기본 정보
| 항목 | AES | DES |
|------|-----|-----|
| 타입 | Technology | Technology |
| 도메인 | SE | SE |
| 정의 | 128비트 고정... | 56bit 키... |

## 직접 비교 관계: COMPARED_WITH ✅

## 공통 상위 개념
- [Concept] 암호화 (암호화)

## AES의 관계 (A)
- IMPLEMENTS → [Concept] SPN 구조
- HAS_PHASE → [Method] SubBytes
...

## DES의 관계 (B)
- IMPLEMENTS → [Concept] Feistel 구조
- EXPLOITS → [Threat] 무차별 대입 공격
```

**활용 팁**:
- COMPARED_WITH 관계가 그래프에 존재하면 "✅"로 표시됩니다
- 공통 상위 개념은 두 개념의 공통점을 보여줍니다
- 각각의 고유 관계에서 차이점을 파악할 수 있습니다

---

### 4.5 `find_questions` — 기출문제 검색

**용도**: IT 자격시험 기출문제를 검색합니다. 키워드와 관련된 개념을 찾고, 해당 개념과 연결된 Question 노드를 반환합니다.

> **참고**: 현재 Question 노드가 Neo4j에 적재되지 않은 상태입니다. 향후 적재 시 자동 동작합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `keyword` | string | (필수) | 검색어 (예: "SQL Injection") |
| `domain` | string | "" | 도메인 필터 (선택, 빈 문자열이면 전체) |
| `limit` | int | 10 | 반환할 최대 문제 수 |

**자연어 질문 예시**:
- "SQL Injection 관련 기출문제 보여줘"
- "네트워크 보안 기출문제 뽑아줘"
- "AI 도메인에서 딥러닝 관련 문제 찾아줘"

---

### 4.6 `domain_overview` — 도메인 개요

**용도**: 특정 IT 도메인의 전체 현황을 요약합니다. 노드 통계, 타입별 분포, 연결 수 기준 핵심 개념 Top 10을 제공합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `domain_code` | string | (필수) | 13개 도메인 코드 중 하나 (아래 표 참조) |

**자연어 질문 예시**:
- "AI 도메인 핵심 개념 요약해줘"
- "보안(SE) 도메인에 어떤 개념들이 있어?"
- "데이터베이스 분야 개요 보여줘"

**반환 형식**:
```markdown
# 도메인 개요: AI (인공지능)

## 노드 통계
- 총 노드 수: 598개
- 타입별 분포:
  - Concept: 400개
  - Document: 134개
  - Technology: 23개
  ...

## 핵심 개념 Top 10 (연결 수 기준)
| # | ID | 한글명 | 타입 | 연결 수 |
|---|-----|--------|------|---------|
| 1 | ai_as_a_service | AIaaS | Concept | 35 |
...
```

**활용 팁**:
- 연결 수가 많은 개념이 해당 도메인의 "허브" 개념입니다
- 타입별 분포에서 Concept/Technology/Method 비율을 확인할 수 있습니다

---

### 4.7 `cross_domain_links` — 도메인 간 연결

**용도**: 두 도메인을 잇는 교차 개념을 발견합니다. "AI와 DB는 어떻게 연결되는가?" 같은 도메인 간 융합 질문에 답합니다.

**파라미터**:
| 이름 | 타입 | 기본값 | 설명 |
|------|------|--------|------|
| `domain_a` | string | (필수) | 첫 번째 도메인 코드 |
| `domain_b` | string | (필수) | 두 번째 도메인 코드 |
| `limit` | int | 10 | 반환할 최대 연결 수 |

**자연어 질문 예시**:
- "AI와 데이터베이스는 어떻게 연결돼?"
- "보안과 네트워크의 교차 개념 보여줘"
- "소프트웨어공학과 프로젝트관리의 관계는?"

**반환 형식**:
```markdown
# 도메인 간 연결: AI(인공지능) ↔ SE(보안)

| # | 도메인A 개념 | 타입 | 관계 | 도메인B 개념 | 타입 |
|---|-------------|------|------|-------------|------|
| 1 | 인공지능 윤리 | Concept | HAS_COMPONENT | 사용자 | Concept |
...

연결 통계: 9개 교차 관계
```

---

## 5. 실전 사용 시나리오

### 시나리오 1: 학습 계획 수립

```
사용자: "인공지능 분야를 공부하려고 해. 어디서 시작해야 할지 알려줘."

Claude Code 동작:
1. domain_overview("AI") 호출 → AI 도메인 핵심 개념 파악
2. get_prerequisites("artificial_intelligence") 호출 → 선수학습 확인
3. 결과 종합하여 학습 로드맵 생성
```

### 시나리오 2: 개념 심층 분석

```
사용자: "DDoS 공격에 대해 자세히 알려줘. 관련 개념이랑 대응 방안도."

Claude Code 동작:
1. search_concepts("DDoS") → concept_id 확인
2. get_related("ddos", hops=2) → 관련 개념 + 대응 기술 탐색
3. cross_domain_links("SE", "NW") → 보안-네트워크 교차점 확인
4. 결과 종합하여 DDoS 종합 분석 제공
```

### 시나리오 3: 비교 학습

```
사용자: "대칭키 암호화 알고리즘들 비교해줘."

Claude Code 동작:
1. search_concepts("대칭키") → 관련 ID 확인
2. compare_concepts("aes", "des") → AES vs DES
3. compare_concepts("aes", "seed") → AES vs SEED (한국 표준)
4. 비교표 생성하여 제공
```

### 시나리오 4: 시험 준비

```
사용자: "네트워크 분야에서 가장 중요한 개념 10개와 관련 기출문제 보여줘."

Claude Code 동작:
1. domain_overview("NW") → Top 10 핵심 개념
2. find_questions("TCP", domain="NW") → TCP 관련 기출
3. find_questions("라우팅", domain="NW") → 라우팅 관련 기출
4. 핵심 개념별 기출문제 정리하여 제공
```

### 시나리오 5: 도메인 간 융합 학습

```
사용자: "AI 엔지니어가 데이터베이스에서 알아야 할 것은?"

Claude Code 동작:
1. cross_domain_links("AI", "DB") → AI-DB 교차 개념
2. 각 교차 개념에 대해 get_related() → 상세 정보
3. AI 관점에서의 DB 학습 포인트 정리
```

---

## 6. 도메인 코드 레퍼런스

| 코드 | 이름 | 노드 수 (약) | 주요 키워드 |
|------|------|-------------|------------|
| `PM` | 프로젝트관리 | 400+ | PMBOK, 일정관리, WBS, 리스크 |
| `MG` | IT경영/관리 | 800+ | ITIL, BPR, ERP, 전략경영 |
| `SW` | 소프트웨어공학 | 1,200+ | UML, 테스팅, 요구분석, 디자인패턴 |
| `SV` | 서비스/웹/클라우드 | 1,800+ | SaaS, 마이크로서비스, REST, DevOps |
| `ST` | 통계학 | 200+ | 회귀분석, 확률분포, 표본추출 |
| `AI` | 인공지능 | 600+ | 딥러닝, 머신러닝, NLP, CNN |
| `DS` | 자료구조 | 100+ | 트리, 그래프, 해시, 스택 |
| `AL` | 알고리즘 | 200+ | 정렬, 탐색, 동적프로그래밍 |
| `SE` | 보안 | 1,500+ | 암호화, DDoS, 방화벽, OWASP |
| `DB` | 데이터베이스 | 800+ | 정규화, SQL, 트랜잭션, 인덱스 |
| `NW` | 네트워크 | 1,200+ | TCP/IP, OSI, 라우팅, VLAN |
| `CA` | 컴퓨터구조 | 700+ | CPU, 캐시, 파이프라인, 메모리 |
| `OS` | 운영체제 | 300+ | 프로세스, 스케줄링, 교착상태, 가상메모리 |

---

## 7. 트러블슈팅

### "Neo4j에 연결할 수 없습니다" 에러

**원인**: Neo4j Docker 컨테이너가 실행되지 않음

**해결**:
```powershell
# 컨테이너 상태 확인
docker-compose ps

# 실행
docker-compose up -d

# 로그 확인 (문제 지속 시)
docker-compose logs -f neo4j
```

### MCP 서버가 Claude Code에서 인식되지 않음

**원인**: `.mcp.json` 파일이 프로젝트 루트에 없거나 Claude Code 재시작 필요

**해결**:
1. `.mcp.json` 파일이 프로젝트 루트(`ontology-project-neo4j/`)에 있는지 확인
2. Claude Code를 종료하고 다시 시작
3. `/mcp` 명령으로 서버 상태 확인

### "개념을 찾을 수 없습니다" 에러

**원인**: concept_id가 정확하지 않음

**해결**:
1. 먼저 `search_concepts`로 정확한 ID를 확인
2. 한글명이 아닌 **영문 ID** (예: `deep_learning`, `aes`)를 사용
3. 한글 ID도 존재하지만 (예: `딥러닝`), 영문 ID가 더 안정적

### "유효하지 않은 도메인 코드" 에러

**원인**: 잘못된 도메인 코드 입력

**해결**: 위의 [도메인 코드 레퍼런스](#6-도메인-코드-레퍼런스) 표에서 정확한 코드 확인. 대소문자 무관 (자동 대문자 변환).

### Python 모듈 import 에러

**원인**: 가상환경 또는 의존성 문제

**해결**:
```powershell
cd tools
uv sync                          # 의존성 재설치
.venv\Scripts\python.exe -c "import fastmcp; print('OK')"   # 확인
.venv\Scripts\python.exe -c "import neo4j; print('OK')"     # 확인
```

---

## 8. 아키텍처 이해

### 전체 구조

```
┌─────────────────────────────────────────────────────────┐
│                    Claude Code (LLM)                     │
│                                                          │
│  사용자 질문 → 의도 파악 → 도구 선택 → 결과 해석 → 답변  │
└────────────────────┬────────────────────────────────────┘
                     │ MCP stdio 프로토콜
                     ▼
┌─────────────────────────────────────────────────────────┐
│            FastMCP Server (server.py)                     │
│                                                          │
│  ┌─────────────┐ ┌─────────────┐ ┌──────────────────┐   │
│  │search_      │ │get_         │ │compare_          │   │
│  │concepts     │ │prerequisites│ │concepts          │   │
│  └──────┬──────┘ └──────┬──────┘ └────────┬─────────┘   │
│         │               │                  │             │
│  ┌──────┴──────┐ ┌──────┴──────┐ ┌────────┴─────────┐   │
│  │get_related  │ │find_        │ │domain_overview   │   │
│  │             │ │questions    │ │                  │   │
│  └──────┬──────┘ └──────┬──────┘ └────────┬─────────┘   │
│         │               │                  │             │
│         └───────┐       │       ┌──────────┘             │
│                 ▼       ▼       ▼                        │
│         ┌─────────────────────────────┐                  │
│         │ cross_domain_links          │                  │
│         └─────────────┬───────────────┘                  │
│                       │                                  │
│              _run_query() ← 공통 Cypher 실행 헬퍼        │
│              _validate_domain() ← 도메인 유효성 검사     │
│              _get_driver() ← Neo4j 연결                  │
└───────────────────────┬─────────────────────────────────┘
                        │ Bolt 프로토콜 (bolt://localhost:7687)
                        ▼
┌─────────────────────────────────────────────────────────┐
│                Neo4j Graph Database                       │
│                                                          │
│  13,840 Nodes │ 27,140 Relationships │ 17 Rel Types     │
│  11 Node Labels │ 13 Domains                             │
└─────────────────────────────────────────────────────────┘
```

### 파일 구조

```
tools/
├── neo4j_mcp/
│   ├── __init__.py          ← 패키지 초기화 (빈 파일)
│   ├── server.py            ← FastMCP 서버 (7개 도구, 663줄)
│   └── GUIDE.md             ← 이 문서
├── graphrag/
│   └── searcher.py          ← 기존 GraphRAG CLI 검색기 (참고용)
├── config.py                ← Neo4j 접속 정보, 도메인 코드
└── pyproject.toml           ← Python 의존성 (fastmcp 포함)
```

### 데이터 흐름 상세

1. **사용자** → Claude Code에 자연어 질문
2. **Claude Code** (LLM) → 질문의 의도를 파악하여 7개 도구 중 적절한 것을 선택
3. **MCP 프로토콜** → stdio를 통해 FastMCP 서버에 도구 호출 전달
4. **server.py** → 해당 도구 함수 실행, `_run_query()`로 Cypher 쿼리 전송
5. **Neo4j** → Cypher 실행, 그래프 탐색 결과 반환
6. **server.py** → 결과를 Markdown 포맷 문자열로 변환
7. **MCP 프로토콜** → Markdown 결과를 Claude Code에 반환
8. **Claude Code** (LLM) → Markdown 결과를 해석하여 사용자에게 구조화된 답변 생성

---

## 9. 확장 가이드

### 새 도구 추가하기

`server.py`에 새 함수를 추가하고 `@mcp.tool` 데코레이터를 붙이면 됩니다:

```python
@mcp.tool
def my_new_tool(param1: str, param2: int = 10) -> str:
    """이 도구의 설명 (Claude Code가 도구 선택 시 참고).

    Args:
        param1: 첫 번째 파라미터 설명
        param2: 두 번째 파라미터 설명 (기본: 10)

    Returns:
        결과 설명
    """
    results = _run_query("MATCH ... RETURN ...", {"p1": param1})
    # Markdown 형식으로 반환
    return "# 결과\n..."
```

**도구 추가 체크리스트**:
- [ ] 함수 시그니처에 타입 힌트 필수
- [ ] docstring에 용도, Args, Returns 상세 작성 (Claude Code 도구 선택 품질에 직결)
- [ ] `_run_query()`로 Cypher 실행 (에러 처리 자동)
- [ ] 파라미터 바인딩(`$param`) 사용 (Cypher Injection 방지)
- [ ] Markdown 형식 문자열 반환
- [ ] 빈 결과 시 안내 메시지 반환

### Neo4j 접속 정보 변경

`tools/config.py` 수정:
```python
NEO4J_URI = "bolt://localhost:7687"     # 주소
NEO4J_USER = "neo4j"                     # 사용자
NEO4J_PASSWORD = "ontology2025"          # 비밀번호
```

### 후속 확장 방향

| 방향 | 설명 | 난이도 |
|------|------|--------|
| Question 노드 적재 | 기출문제 9,291건 Neo4j 적재 → `find_questions` 활성화 | 중 |
| 웹 UI (Streamlit) | 브라우저에서 질의 가능한 인터페이스 | 중 |
| 벡터 임베딩 | 의미 검색(semantic search) + 그래프 탐색 하이브리드 | 상 |
| 자동 확장 | 새 문서 → 자동 추출 → MERGE로 그래프 성장 | 상 |
