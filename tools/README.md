# ontology-tools

IT 도메인 학습 문서(DOC/DOCX)를 Neo4j 지식그래프로 변환하는 Python 파이프라인 도구.

## 설치

```bash
# Python 3.11+ 필요
cd tools

# uv (권장)
uv venv && uv sync

# 또는 pip
python -m venv .venv
.venv/Scripts/activate   # Windows
pip install -e .

# DOC 파일 파싱이 필요한 경우 (Windows 전용)
pip install -e ".[win]"
```

## CLI 명령어

### 기본

```bash
python cli.py stats                          # 도메인별 문서 통계
```

### 파싱 (DOC/DOCX -> JSON)

```bash
python cli.py parse                          # 전체 2,392개
python cli.py parse --domain AI              # AI 도메인만
python cli.py parse --domain OS --limit 5    # OS 5개만
```

### 온톨로지 추출 (JSON -> 노드/관계)

```bash
python cli.py extract --domain AI            # AI 도메인 전체
python cli.py extract --file AI_001          # 단일 파일
```

### Cypher 생성 (노드/관계 -> MERGE 문)

```bash
python cli.py generate --domain AI           # AI 도메인 Cypher 생성
python cli.py generate --domain SW --batch 100  # 100개씩 묶어서
```

### Neo4j 적재 (Cypher -> Neo4j)

```bash
python cli.py load --domain AI               # AI 도메인 적재
python cli.py load --file ai_001_050.cypher  # 단일 파일 적재
python cli.py load --domain SE --dry-run     # 명령어만 출력 (실행 안함)
```

### 전체 파이프라인 (추출 -> 생성 -> 적재)

```bash
python cli.py pipeline --domain AI           # AI 전체 파이프라인
python cli.py pipeline --domain SW --dry-run # Cypher 생성만 (적재 안함)
python cli.py pipeline --domain SE --limit 10 # 10개만 테스트
```

### GraphRAG 검색

```bash
python cli.py search "딥러닝"                  # 기본 검색
python cli.py search "SQL Injection" --depth 2 # 2홉 확장
python cli.py search "암호화" -k 10            # 시드 10개
python cli.py search "TCP" --raw              # 포맷 없이 출력
```

## 모듈 구조

```
tools/
|-- cli.py               # CLI 진입점 (click 기반)
|-- config.py            # 설정 (경로, Neo4j 접속, 13개 도메인 코드)
|
|-- parse/               # STEP 1: 문서 파싱
|   |-- docx_parser.py   #   DOCX -> JSON (python-docx)
|   |-- doc_parser.py    #   DOC -> JSON (pywin32 COM, Windows 전용)
|   +-- text_parser.py   #   TXT -> JSON (기출문제용)
|
|-- extract/             # STEP 2: 온톨로지 추출 (규칙 기반 v2)
|   +-- extractor.py     #   term_map ID통합 + 노드타입분류 + 관계추론
|
|-- generate/            # STEP 3: Cypher 생성
|   +-- cypher_generator.py  # Node/Relationship -> MERGE 문 변환
|
|-- load/                # STEP 4: Neo4j 적재
|   +-- loader.py        #   cypher-shell 배치 실행
|
|-- graphrag/            # STEP 5: GraphRAG 검색
|   +-- searcher.py      #   풀텍스트 + 정확매칭 + 1~2홉 탐색
|
+-- data/                # 중간 산출물 (.gitignore)
    |-- parsed/          #   파싱 결과 JSON (2,381개, 43MB)
    +-- extracted/       #   추출 결과 JSON
```

## 파이프라인 흐름

```
DOC/DOCX ──[parse]──> JSON ──[extract]──> 노드/관계 ──[generate]──> Cypher ──[load]──> Neo4j
                                                                                        |
                                                                              [graphrag/search]
                                                                                        |
                                                                              구조화된 컨텍스트
```

## 추출기 v2 핵심 기술

### term_map (한글/영문 ID 통합)

문서에서 `한글명(English)` 패턴을 자동 수집하여 ID를 영문으로 통일:

```
"인공지능(Artificial Intelligence)" -> {"인공지능": "artificial_intelligence"}
"합성곱 신경망(CNN)"                -> {"합성곱 신경망": "cnn"}
```

### 노드 타입 자동 분류

정규식 패턴으로 9개 타입 분류:

| 타입 | 패턴 예시 |
|------|----------|
| Technology | CNN, RNN, Docker, TCP, AES, OSPF |
| Method | SVM, K-Means, Agile, Scrum, DFS |
| Threat | DDoS, 랜섬웨어, SQL Injection, XSS |
| Standard | ISO 27001, CMMI, COBIT, PMBOK |
| Metric | F1-Score, 가용성, MTTF, LOC |
| Law | 개인정보보호법, GDPR, CCPA |
| Concept | 위 패턴에 해당하지 않는 모든 IT 개념 |

### 헤딩 기반 관계 추론

섹션 제목에서 관계 유형을 자동 판별:

| 키워드 | 관계 |
|--------|------|
| 비교, 차이점 | COMPARED_WITH |
| 구성요소, 아키텍처 | HAS_COMPONENT |
| 단계, 절차 | HAS_PHASE |
| 대응, 방어 | COUNTERED_BY |
| 활용, 사용 | USES |
| 발전, 진화 | EVOLVED_FROM |

## 의존성

| 패키지 | 용도 |
|--------|------|
| python-docx | DOCX 파일 파싱 |
| neo4j | Neo4j Bolt 드라이버 |
| click | CLI 프레임워크 |
| rich | 진행률 바, 컬러 출력 |
| pydantic | 데이터 모델 검증 |
| mammoth | HTML/DOCX 변환 (보조) |
| pywin32 | DOC 파싱 (Windows 전용, 선택) |

## 설정 (config.py)

```python
NEO4J_URI = "bolt://localhost:7687"
NEO4J_USER = "neo4j"
NEO4J_PASSWORD = "ontology2025!"

DOMAINS = {
    "PM": {"code": "01.PM", "name": "프로젝트관리"},
    "MG": {"code": "02.MG", "name": "IT경영/관리"},
    "SW": {"code": "03.SW", "name": "소프트웨어공학"},
    # ... 13개 도메인
}
```

## Neo4j 사전 조건

```bash
# Docker로 Neo4j 실행 (프로젝트 루트에서)
docker-compose up -d

# 접속 확인
# http://localhost:7474 (neo4j / ontology2025!)
```
