# Neo4j 온톨로지 구축 프로젝트

## 프로젝트 개요

IT 도메인 학습 문서(DOC/DOCX) 2,392개를 Neo4j 지식그래프로 변환하여 온톨로지 기반 지식 관리 시스템을 구축하는 프로젝트.
최종 목표는 GraphRAG 활용까지 확장하는 것.

### 응답 규칙
- **모든 답변은 ultra thinking(--ultrathink)으로 수행** — 깊이 있는 분석, 팩트 검증, 자기 비판을 거친 후 응답

### 핵심 원칙
- **"좋은 스키마(온톨로지) 설계가 전부다"** — 도구는 수단, 스키마 설계 능력이 핵심
- **Question-Driven Modeling** — 질문 먼저 정의 → 패턴 도출 → 노드/관계 확정
- **첫 스키마는 틀린다** — 빠르게 반복 개선 (Neo4j 스키마리스 활용)
- **MERGE 기반 성장** — 중복 방지, 도메인 간 공유 노드로 자동 연결
- **Claude Code 활용** — 구독 범위 내 추가 비용 없이 JSON→온톨로지 추출→Cypher 생성

## 인프라 환경

### Neo4j Docker 구성
- **이미지**: neo4j:2025.02.0-enterprise
- **컨테이너명**: neo4j-ontology
- **접속**: http://localhost:7474 (Browser), bolt://localhost:7687 (Bolt)
- **인증**: neo4j / ontology2025!
- **플러그인**: APOC 2025.02.0 + GDS 2.15.0 + n10s 5.26.0

### 주요 명령어

**PowerShell (호스트):**
```bash
docker-compose up -d              # 시작
docker-compose down               # 중지 (데이터 유지)
docker-compose down -v            # 중지 (데이터 삭제)
docker-compose ps                 # 상태 확인
```

**Cypher 적재 (cypher-shell):**
```bash
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_010.cypher
```

**Neo4j Browser:** http://localhost:7474 에서 Cypher 쿼리 직접 실행

### n10s 특이사항
n10s는 Labs 플러그인으로 NEO4J_PLUGINS 자동 설치 불가. docker exec로 JAR 수동 설치 후 restart 필요.
graphconfig.init()은 Neo4j Browser에서 실행 (PowerShell 아님).

## 프로젝트 구조

```
ontology-project-neo4j/
├── CLAUDE.md                ← 이 파일 (프로젝트 뇌)
├── docker-compose.yml       ← Neo4j Docker 구성
│
├── documents/               ← 원본 문서 (2,392개 DOC/DOCX)
│   ├── 01.PM/ ~ 13.OS/      ← 13개 도메인 폴더
│   └── 문제.txt              ← 기출문제 22,518줄
│
├── tools/                   ← Python 파이프라인 도구
│   ├── .venv/               ← Python 3.14 + uv 가상환경
│   ├── pyproject.toml       ← 의존성 (python-docx, neo4j, click, rich, pydantic)
│   ├── config.py            ← 경로, Neo4j 접속, 13개 도메인 코드
│   ├── cli.py               ← CLI (stats, parse, extract, generate, load, pipeline)
│   ├── parse/               ← 파싱 모듈 (docx_parser, doc_parser, text_parser)
│   ├── extract/             ← 온톨로지 추출 (v2: ID통합 + 관계다양화)
│   ├── generate/            ← Cypher MERGE 생성기
│   ├── load/                ← Neo4j 적재기 (cypher-shell 자동화)
│   ├── graphrag/            ← GraphRAG 검색기 (그래프 탐색 → 컨텍스트 생성)
│   ├── PLAN.md              ← 파이프라인 계획서
│   ├── data/parsed/         ← 파싱 결과 JSON (2,381개, 43MB)
│   └── data/extracted/      ← 추출 결과 JSON (중간 산출물)
│
├── cypher/                  ← Cypher 스크립트
│   ├── 00_schema.cypher     ← 스키마 (제약조건+인덱스+도메인+Top50 시드)
│   ├── ai_001_010.cypher    ← AI 도메인 표본
│   ├── sw_001_010.cypher    ← SW 도메인 표본
│   ├── se_001_010.cypher    ← SE 도메인 표본
│   ├── nw_001_010.cypher    ← NW 도메인 표본
│   ├── db_001_010.cypher    ← DB 도메인 표본
│   └── ca_001.cypher        ← CA 표본 1개
│
├── system-docs/             ← 프로젝트 문서 (카테고리별 정리)
│   ├── README.md            ← 문서 목차
│   ├── 01_인프라/           ← Docker, 설치, 환경 구성
│   ├── 02_분석설계/         ← 스키마 설계서, 정량분석 결과
│   ├── 03_파이프라인/       ← 작업 기록 (기록.txt, history.txt)
│   └── 04_보고서/           ← 완료 보고서
│
└── import/                  ← Neo4j 컨테이너 마운트 (OWL, CSV용, 현재 비어있음)
```

## 워크플로우 (8단계, 반복 진화형)

```
STEP 1: 인프라 구성          ✅ 완료 (Docker + 플러그인)
STEP 2: 데이터 수집          ✅ 완료 (13개 도메인 2,392개 문서)
STEP 3: 스키마 설계          ✅ 완료 (v2: 11노드, 19관계, 정량분석 반영)
STEP 4: 표본 적재           ✅ 완료 (5개 도메인 46개 문서 → 435노드, 875관계)
STEP 5: 스키마 검증 + 수정    ✅ 완료 (Top50 시드 연결 확인)
STEP 6: 100개 적재           ✅ 완료 (STEP 7에서 전체 적재로 통합)
STEP 7: 전체 적재 + 자동화    ✅ 완료 (2,386문서 → 13,840노드, 27,140관계, 17/17 관계타입)
STEP 8: GraphRAG 확장        ✅ 완료 (그래프 검색 CLI, Claude Code가 LLM 역할)
```

## 현재 스키마 (v2 — 정량분석 반영)

### 노드 타입 (11개)
| 노드 | 역할 | 예시 |
|------|------|------|
| Concept | IT 핵심 개념 | 딥러닝, 교착상태, 정규화 |
| Technology | 구현 기술/도구 | CNN, AES, Docker |
| Method | 방법론/알고리즘 | SVM, K-Means, 애자일 |
| Standard | 표준/규격 | ISO 27001, IEEE 802.11 |
| Law | 법률/제도 | 개인정보보호법, GDPR |
| Threat | 보안위협 | DDoS, 랜섬웨어, SQL Injection |
| Metric | 지표/평가기준 | F1-Score, 가용성 99.99% |
| Domain | 13개 도메인 분류 | AI, SW, SE, NW, DB 등 |
| Question | 기출문제 | 9,291건 (STEP 6~7에서 적재) |
| Document | 원본 문서 추적 | AI_001, SW_003 |
| ExamSession | 시험 회차 | 132회, 133회 |

### 관계 타입 (17개 — 현재 적재됨)
| 관계 | 방향 | 의미 |
|------|------|------|
| SUBCLASS_OF | A → B | 상위개념 (딥러닝→머신러닝) |
| HAS_TYPE | A → B | 유형 (지도학습→머신러닝) |
| INSTANCE_OF | A → B | 구현체 (CNN→딥러닝) |
| IMPLEMENTS | A → B | 구현 (SVM→지도학습) |
| HAS_COMPONENT | A → B | 구성요소 (정보보호→기밀성) |
| HAS_PHASE | A → B | 절차/단계 (SDLC→요구분석) |
| COMPARED_WITH | A ↔ B | 비교 (AES↔DES) |
| DEPENDS_ON | A → B | 의존 (딥러닝→GPU) |
| USES | A → B | 사용 (객체지향→UML) |
| THREATENS | A → B | 위협 (DDoS→가용성) |
| COUNTERED_BY | A → B | 대응 (DDoS→방화벽) |
| EXPLOITS | A → B | 악용 (브루트포스→DES) |
| DEFINED_BY | A → B | 정의 (AES→NIST) |
| MEASURED_BY | A → B | 측정 (SW공학→정확성) |
| EVOLVED_FROM | A → B | 발전 (초AI→강AI) |
| BELONGS_TO | A → D | 도메인 소속 |
| MENTIONED_IN | A → Doc | 문서 추적 |

### 노드 속성 규칙
- id: 영문 소문자, 언더스코어 (예: "deep_learning")
- name: 대표 영문명
- name_kr: 한글명
- domain: 주 도메인 코드 (PM,MG,SW,SV,ST,AI,DS,AL,SE,DB,NW,CA,OS)
- definition: 1~2문장 핵심 정의

## 파이프라인 워크플로우

```
DOC/DOCX 문서 → [Python parse] → JSON → [Python extract+generate] → Cypher → [cypher-shell] → Neo4j
   2,392개         자동            2,381개      규칙기반 v2          53개        자동        13,840노드
```

### Python 도구 사용법
```powershell
cd ontology-project-neo4j\tools

# 기본 명령
.venv\Scripts\python cli.py stats                    # 도메인별 문서 통계
.venv\Scripts\python cli.py parse --domain AI        # AI 도메인 파싱

# 자동화 파이프라인 (추출 → Cypher 생성 → Neo4j 적재)
.venv\Scripts\python cli.py pipeline --domain AI              # AI 전체 파이프라인
.venv\Scripts\python cli.py pipeline --domain SW --dry-run    # Cypher 생성만 (적재 안함)
.venv\Scripts\python cli.py pipeline --domain SE --limit 10   # 10개만 테스트

# 단계별 실행
.venv\Scripts\python cli.py extract --domain AI        # 추출만
.venv\Scripts\python cli.py extract --file AI_001      # 단일 파일 추출
.venv\Scripts\python cli.py generate --domain AI       # Cypher 생성만
.venv\Scripts\python cli.py load --domain AI           # Neo4j 적재만
```

### Cypher 적재 패턴 (수동)
```bash
# 스키마 먼저 (최초 1회)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher

# 데이터 (도메인별)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_050.cypher
```

## Cypher 생성 규칙
- 반드시 MERGE 사용 (CREATE 금지)
- 노드에 id 속성 필수 (영문 소문자, 언더스코어)
- domain 속성으로 도메인 구분
- 섹션별 주석으로 구분 (Neo4j Browser 부분 실행 가능)
- 작은따옴표 내 아포스트로피는 큰따옴표로 감싸기: "Metcalfe's Law"
- Domain 노드의 name은 한글 유지 (영문 덮어쓰기 금지)
- Top 50 시드 Concept과 동일 id 사용하여 MERGE로 자동 연결

## 알려진 이슈
- 한글 ID 44.3% 잔존 (영문 매핑 없는 순수 한글 용어)
- Concept 비율 76% (Technology/Method 분류 패턴 확장 가능)
- clean/analyze 모듈은 미구현 (현재 불필요, parsed JSON 품질 충분)

## 명령어 환경 구분
- **PowerShell**: docker, docker-compose, python 등
- **Neo4j Browser**: Cypher 쿼리 (CALL, MATCH, MERGE 등)
- **cypher-shell**: Cypher 파일 적재 (docker exec 경유)
- 세 환경을 반드시 명시적으로 구분하여 안내

## 교재 작성 지침 (textbook/)

### 품질 기준 — 120% 능력 발휘 필수
- **Ultra Re-Searching**: Context7, WebSearch 등 MCP를 활용하여 Neo4j 공식문서, 최신 베스트 프랙티스, 학술적 근거를 반드시 조사한 후 작성. 추측이나 기억에 의존하지 않는다
- **Ultra Thinking**: 작성 전 구조/논리/흐름을 깊이 사고. 각 섹션이 "왜 여기에 있는지", "이전 섹션과 어떻게 연결되는지" 명확해야 한다
- **Ultra Dive**: 피상적 설명 금지. 모든 개념은 "왜?"까지 파고들고, 실제 Cypher 예시와 프로젝트 데이터로 뒷받침한다

### 자기평가/검증 체크리스트 (매 챕터 작성 후 수행)
작성 완료 후 아래 8개 항목을 자기 검증하고, 미달 항목은 즉시 보완한다:
1. **정확성**: 기술적 사실 오류가 없는가? (Neo4j 공식문서와 대조)
2. **깊이**: "왜?"에 대한 답이 있는가? 표면적 설명에 그치지 않았는가?
3. **예시 충분성**: 모든 개념에 실제 Cypher 코드 또는 프로젝트 데이터 예시가 있는가?
4. **초급자 접근성**: 그래프DB를 모르는 사람이 읽어도 따라갈 수 있는가?
5. **기업 적용성**: 기업 데이터로 동일 워크플로우를 적용할 수 있도록 안내했는가?
6. **논리적 흐름**: 섹션 간 연결이 자연스러운가? 갑자기 맥락이 바뀌지 않는가?
7. **실습 포함**: 독자가 직접 해볼 수 있는 과제가 포함되어 있는가?
8. **안티패턴/함정**: "하지 말아야 할 것"도 다루었는가?

### 톤앤매너
- **하이브리드**: 이론 섹션은 교과서 스타일(정제된 문체), 실전 섹션은 튜토리얼 스타일(대화체)
- 기술 용어는 첫 등장 시 한글+영문 병기, 이후는 한글 사용
- 표기 규칙: [실습], [기업 박스], [안티패턴], [설계 원칙], 💡 팁, ⚠️ 주의, 📌 핵심

### 파일 구조
- 교재 위치: `textbook/` 디렉토리
- 목차: `textbook/00_목차.md` (v3 하이브리드 확정)
- 총 21개 파일, 핵심 챕터(STEP3 3부작 + STEP5 3부작)가 전체의 54%

## 참고 리소스
- Going Meta 시리즈 (Jesús Barrasa): https://youtu.be/FeAowtZB80w
- GitHub: github.com/jbarrasa/goingmeta
- neo4j-graphrag-python: github.com/neo4j/neo4j-graphrag-python
- 기록.txt: system-docs/03_파이프라인/기록.txt (Claude.ai 대화 전체 기록)

## 13개 도메인 코드
| 코드 | 폴더 | 이름 | 문서 수 | 출제비중 |
|------|------|------|---------|----------|
| PM | 01.PM | 프로젝트관리 | 96 | 5.9% |
| MG | 02.MG | IT경영/관리 | 202 | 5.9% |
| SW | 03.SW | 소프트웨어공학 | 289 | 19.2% |
| SV | 04.SV | 서비스/웹/클라우드 | 475 | 9.4% |
| ST | 05.ST | 통계학 | 47 | 1.0% |
| AI | 06.AI | 인공지능 | 134 | 11.7% |
| DS | 07.DS | 자료구조 | 22 | 2.0% |
| AL | 08.AL | 알고리즘 | 44 | 2.0% |
| SE | 09.SE | 보안 | 373 | 18.7% |
| DB | 10.DB | 데이터베이스 | 179 | 9.4% |
| NW | 11.NW | 네트워크 | 286 | 10.5% |
| CA | 12.CA | 컴퓨터구조 | 178 | 8.2% |
| OS | 13.OS | 운영체제 | 67 | 8.2% |
