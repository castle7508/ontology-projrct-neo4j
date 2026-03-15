# Neo4j Ontology Project

**IT 도메인 학습 문서 2,392개 -> Neo4j 지식그래프 -> GraphRAG 검색**

문서 속에 흩어진 IT 개념들의 관계를 지식그래프로 구축하고,
자연어로 검색하는 GraphRAG 시스템까지 완성한 프로젝트입니다.

## 결과 요약

| 항목 | 수치 |
|------|------|
| 원본 문서 | 2,392개 (13개 IT 도메인) |
| Neo4j 노드 | **13,840개** (Concept, Technology, Threat 등 9개 타입) |
| Neo4j 관계 | **27,140개** (SUBCLASS_OF, COMPARED_WITH 등 17개 타입) |
| 문서 커버리지 | 99.7% (2,386/2,392) |
| 추가 비용 | **0원** (Python + Claude Code 구독 범위 내) |

## 아키텍처

```
DOC/DOCX 문서 --> [Python Parse] --> JSON --> [Python Extract+Generate] --> Cypher --> Neo4j
  2,392개            자동          2,381개      규칙 기반 v2             53개       13,840노드
                                                                                      |
                                                                              [GraphRAG CLI]
                                                                                      |
                                                                              구조화된 컨텍스트
                                                                                      |
                                                                              [Claude Code] --> 답변
```

## 빠른 시작

### 1. Neo4j 시작

```bash
# Windows: setup.bat 더블클릭 (Docker 필요)
# 또는 수동:
docker-compose up -d

# 접속: http://localhost:7474
# ID: neo4j / PW: ontology2025!
```

### 2. 스키마 + 데이터 적재

```bash
# 스키마 (최초 1회)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher

# 데이터 (도메인별)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_050.cypher
```

### 3. 파이프라인 (원본 문서가 있을 경우)

```bash
cd tools
pip install -e .   # 또는 uv sync

# 문서 파싱
python cli.py parse --domain AI

# 전체 파이프라인 (추출 -> Cypher 생성 -> 적재)
python cli.py pipeline --domain AI
```

### 4. GraphRAG 검색

```bash
cd tools

# 지식그래프 검색
python cli.py search "딥러닝"
python cli.py search "SQL Injection" --depth 2
python cli.py search "TCP" -k 10
```

검색 결과를 Claude Code에 붙여넣으면 지식그래프 기반 답변을 생성합니다.

## 프로젝트 구조

```
ontology-project-neo4j/
|-- docker-compose.yml       # Neo4j Docker 구성
|-- setup.bat                # Windows 원클릭 설치
|-- CLAUDE.md                # 프로젝트 설정 (Claude Code용)
|
|-- tools/                   # Python 파이프라인
|   |-- cli.py               # CLI (parse/extract/generate/load/pipeline/search)
|   |-- config.py            # 설정 (Neo4j 접속, 13개 도메인 코드)
|   |-- parse/               # DOC/DOCX -> JSON 파싱
|   |-- extract/             # 온톨로지 추출 (규칙 기반 v2)
|   |-- generate/            # Cypher MERGE 자동 생성
|   |-- load/                # Neo4j 적재 (cypher-shell)
|   +-- graphrag/            # GraphRAG 검색기
|
|-- cypher/                  # Cypher 스크립트
|   |-- 00_schema.cypher     # 스키마 (제약조건 + 인덱스 + Top50 시드)
|   |-- verify.cypher        # 플러그인 설치 확인
|   +-- {domain}_*.cypher    # 도메인별 데이터 (53개)
|
+-- system-docs/             # 프로젝트 문서
    +-- 04_보고서/
        +-- 프로젝트_완료_보고서.md  # 전체 보고서 (1,415줄)
```

## 스키마

### 노드 타입 (9개)

| 노드 | 수량 | 역할 | 예시 |
|------|------|------|------|
| Concept | 10,576 | IT 핵심 개념 | 딥러닝, 교착상태, 정규화 |
| Document | 2,386 | 원본 문서 추적 | AI_001, SW_003 |
| Technology | 351 | 구현 기술/도구 | CNN, Docker, AES |
| Metric | 168 | 지표/평가기준 | F1-Score, 가용성 |
| Threat | 118 | 보안 위협 | DDoS, 랜섬웨어 |
| Standard | 101 | 표준/규격 | ISO 27001, CMMI |
| Method | 100 | 방법론/알고리즘 | Agile, SVM, K-Means |
| Law | 26 | 법률/제도 | 개인정보보호법, GDPR |
| Domain | 13 | 도메인 분류 | AI, SW, SE, NW, DB 등 |

### 관계 타입 (17개)

SUBCLASS_OF, HAS_TYPE, INSTANCE_OF, IMPLEMENTS, HAS_COMPONENT, HAS_PHASE,
COMPARED_WITH, DEPENDS_ON, USES, THREATENS, COUNTERED_BY, EXPLOITS,
DEFINED_BY, MEASURED_BY, EVOLVED_FROM, BELONGS_TO, MENTIONED_IN

## 13개 도메인

| 코드 | 이름 | 문서 수 | 코드 | 이름 | 문서 수 |
|------|------|---------|------|------|---------|
| PM | 프로젝트관리 | 96 | SE | 보안 | 373 |
| MG | IT경영/관리 | 202 | DB | 데이터베이스 | 179 |
| SW | 소프트웨어공학 | 289 | NW | 네트워크 | 286 |
| SV | 서비스/클라우드 | 475 | CA | 컴퓨터구조 | 178 |
| ST | 통계학 | 47 | OS | 운영체제 | 67 |
| AI | 인공지능 | 134 | | | |
| DS | 자료구조 | 22 | | | |
| AL | 알고리즘 | 44 | **합계** | | **2,392** |

## 기술 스택

- **Neo4j** 2025.02.0 Enterprise (Docker) + APOC + GDS + n10s
- **Python** 3.14 (python-docx, neo4j, click, rich, pydantic)
- **Claude Code** (온톨로지 추출 + GraphRAG LLM)

## 상세 문서

- [프로젝트 완료 보고서](system-docs/04_보고서/프로젝트_완료_보고서.md) (1,415줄) - STEP 1~8 전 과정, 스키마 명세, 파이프라인 상세, 용어 사전 포함

## 참고 자료

- [Going Meta (Jess Barrasa)](https://neo4j.com/blog/developer/20-episodes-of-going-meta-a-recap/) - Neo4j 온톨로지 구축 방법론
- [neo4j-graphrag-python](https://github.com/neo4j/neo4j-graphrag-python) - Neo4j GraphRAG 라이브러리
- [What is GraphRAG? (Neo4j)](https://neo4j.com/blog/genai/what-is-graphrag/)

## License

MIT
