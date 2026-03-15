# Ontology Pipeline Tools — 계획서

## 개요

IT 도메인 학습 문서(DOC/DOCX) 2,393개를 Neo4j 지식그래프로 변환하는 전체 파이프라인 자동화 도구.
기존 Claude Code 세션에서 수행한 모든 분석/정제/변환 작업을 체계적 Python 프로젝트로 통합.

### 프로젝트 정보

| 항목 | 내용 |
|------|------|
| 위치 | `ontology-project-neo4j/tools/` |
| 언어 | Python 3.11+ |
| 패키지 관리 | uv (권장) 또는 pip |
| 대상 데이터 | `documents/` 13개 도메인 2,393개 DOC/DOCX + `문제.txt` 22,518줄 |
| 출력 | `cypher/` Cypher 스크립트 + Neo4j 직접 적재 |

## 기존 수행 작업 (통합 대상)

### 1. 기출문제 정량 분석 (`analyze_questions.py`)
- 문제.txt 22,518줄 전수 분석
- 150개 키워드 사전 × 빈도 카운트
- 9개 도메인 그룹별 출제 비중 산출
- 도메인 간 교차 출제 패턴 분석
- 문제 유형 8개 분류 (단답설명형 57.4% 등)
- 출력: `system-docs/STEP3_정량분석결과.json`

### 2. 스키마 설계 생성 (`cypher/00_schema.cypher`)
- 11개 노드 타입, 19개 관계 타입
- 제약조건 11개, 인덱스 14개
- 13개 도메인 노드 + Top 50 Concept 시드 노드
- 정량 분석 반영 (exam_frequency, exam_weight)

### 3. 문서 읽기/분석 (Claude Code 세션 내)
- DOC/DOCX 파일 읽기 → 구조 파악
- 개념 추출 → 노드/관계 매핑
- Cypher MERGE 문 생성

## 아키텍처

```
tools/
├── pyproject.toml              ← 프로젝트 설정, 의존성
├── config.py                   ← 설정 (경로, Neo4j 접속 등)
├── .gitignore                  ← .venv/, data/, __pycache__/ 제외
│
├── parse/                      ← STEP 1: 문서 파싱         ✅ Phase 1 완료
│   ├── __init__.py
│   ├── docx_parser.py          ← DOCX 파싱 (python-docx) — 테이블 셀 본문 포함
│   ├── doc_parser.py           ← DOC 파싱 (pywin32 COM)
│   └── text_parser.py          ← TXT 파싱 (문제.txt 인용문/단일행 구분)
│
├── clean/                      ← STEP 2: 텍스트 정제
│   ├── __init__.py
│   ├── normalizer.py           ← 유니코드 정규화, 공백 처리
│   ├── structure_extractor.py  ← 제목/정의/항목 구조 추출
│   └── metadata_extractor.py   ← 파일명→도메인/번호 메타데이터 추출
│
├── analyze/                    ← STEP 3: 분석
│   ├── __init__.py
│   ├── keyword_analyzer.py     ← 키워드 빈도 분석 (기존 로직 통합)
│   ├── domain_classifier.py    ← 도메인 자동 분류
│   ├── cross_domain.py         ← 교차 출제 패턴 분석
│   └── question_analyzer.py    ← 문제 유형 분류
│
├── extract/                    ← STEP 4: 온톨로지 추출
│   ├── __init__.py
│   ├── concept_extractor.py    ← Concept 노드 추출
│   ├── relation_extractor.py   ← 관계 추출 (규칙 기반)
│   ├── entity_classifier.py    ← 노드 타입 분류 (Concept/Technology/Method/...)
│   └── keyword_dict.py         ← 키워드 사전 (기존 KEYWORDS 통합)
│
├── generate/                   ← STEP 5: Cypher 생성
│   ├── __init__.py
│   ├── cypher_builder.py       ← MERGE 문 생성기
│   ├── schema_generator.py     ← 스키마 Cypher 생성
│   └── templates.py            ← Cypher 템플릿
│
├── load/                       ← STEP 6: Neo4j 적재
│   ├── __init__.py
│   ├── neo4j_client.py         ← Neo4j Bolt 드라이버 래퍼
│   ├── loader.py               ← Cypher 실행 + 검증
│   └── validator.py            ← 적재 후 검증 쿼리
│
├── cli.py                      ← CLI 진입점 (stats, parse + 추후 확장)
│
└── data/                       ← 중간 산출물 (.gitignore)
    ├── parsed/                 ← 파싱 결과 (JSON)
    ├── cleaned/                ← 정제 결과
    ├── analyzed/               ← 분석 결과
    └── extracted/              ← 추출된 온톨로지 (JSON)
```

## 모듈 상세 설계

### 01_parse: 문서 파싱

**목적**: DOC/DOCX/TXT → 구조화된 텍스트 (JSON)

| 파일 | 핵심 기능 | 의존성 |
|------|----------|--------|
| `docx_parser.py` | DOCX Heading/Paragraph/Table 추출 | python-docx |
| `doc_parser.py` | DOC → 텍스트 변환 | antiword (CLI) 또는 textract |
| `text_parser.py` | 문제.txt 파싱 (번호/교시/회차 구조) | 정규식 |

**출력 스키마** (파싱 결과 JSON):
```json
{
  "file_id": "CA_001",
  "filename": "CA_001_멧칼프 법칙.docx",
  "domain": "CA",
  "format": "docx",
  "sections": [
    {
      "heading": "1. 개요",
      "level": 1,
      "content": "멧칼프 법칙이란...",
      "items": ["가. 정의", "나. 특징"]
    }
  ],
  "tables": [...],
  "raw_text": "전체 텍스트"
}
```

**DOC 파일 처리 전략**:
- 2,393개 중 DOC 비율 확인 필요
- Windows 환경: `win32com` (COM 자동화) 또는 LibreOffice headless 변환
- 대안: DOC → DOCX 일괄 변환 후 python-docx 통일 처리

### 02_clean: 텍스트 정제

**목적**: 원본 텍스트의 노이즈 제거, 구조화

| 기능 | 상세 |
|------|------|
| 유니코드 정규화 | NFC 정규화, 전각→반각, 특수문자 통일 |
| 공백/줄바꿈 정리 | 연속 공백, 빈 줄 정리, 들여쓰기 정규화 |
| 구조 추출 | Heading → 섹션, 가/나/다/라 → 하위항목 |
| 메타데이터 추출 | 파일명 패턴 `{도메인}_{번호}_{제목}` → 구조화 |

### 03_analyze: 분석

**목적**: 기존 `analyze_questions.py` 로직을 모듈화 + 확장

| 모듈 | 기존 로직 | 확장 |
|------|----------|------|
| `keyword_analyzer.py` | 150개 키워드 빈도 | 문서별 키워드 빈도, TF-IDF |
| `domain_classifier.py` | 폴더 기반 분류 | 내용 기반 자동 분류 |
| `cross_domain.py` | 도메인 쌍 교차 | 교차 강도 점수화 |
| `question_analyzer.py` | 8개 유형 분류 | 세부 패턴 추출 |

### extract + generate: 온톨로지 추출 + Cypher 생성 (Claude Code 활용)

**핵심**: Python 코드가 아니라 **Claude Code(구독 내)가 직접 수행** — 추가 비용 0원

**워크플로우**:
```
┌──────────────────────────────────────────────────┐
│  Python 도구 (자동)          Claude Code (대화)     │
│                                                    │
│  DOC/DOCX → JSON(파싱)  →  JSON 읽고 추출/생성     │
│                             → Cypher 파일 저장      │
│  Cypher → Neo4j(적재)  ←   또는 MCP로 직접 실행     │
└──────────────────────────────────────────────────┘
```

**Claude Code에 지시하는 방식**:
```
data/parsed/CA_001.json을 읽어서 온톨로지 Cypher를 만들어줘.

노드 타입: Concept, Technology, Method, Standard, Law, Threat, Metric
관계 타입: SUBCLASS_OF, HAS_COMPONENT, HAS_TYPE, COMPARED_WITH,
          DEPENDS_ON, IMPLEMENTS, USES, THREATENS, COUNTERED_BY,
          DEFINED_BY, MEASURED_BY, BELONGS_TO

MERGE 문으로 cypher/ca_001.cypher에 저장해.
```

**장점**:
- 구독 범위 내 추가 비용 0원
- LLM 수준의 비정형 텍스트 이해력 (규칙 기반보다 정확)
- 중간 JSON 저장으로 검토/수정 가능
- 도메인 스키마 1회 정의 → 같은 도메인 문서 N개 동일 패턴 처리

**배치 처리 팁**:
- 도메인별 표본 10개로 먼저 검증
- 검증 후 같은 패턴으로 나머지 처리
- cypher/ 폴더에 저장 → python cli.py load로 일괄 적재

### load: Neo4j 적재

| 기능 | 상세 |
|------|------|
| 접속 | bolt://localhost:7687, neo4j/ontology2025! |
| 적재 | Cypher 파일 일괄 실행 또는 MCP 직접 |
| 검증 | 노드/관계 수, 고아 노드, 중복 체크 |
| 롤백 | 배치 단위 트랜잭션 |

## CLI 설계

```bash
# 파싱 (Python 자동)
python cli.py parse --domain CA              # DOC/DOCX → JSON
python cli.py parse --domain CA --limit 10   # 표본 10개만

# 적재 (Python 자동)
python cli.py load --domain CA               # cypher/ → Neo4j 실행
python cli.py load --file cypher/ca_001.cypher  # 단일 파일 실행

# 유틸리티
python cli.py stats                           # 문서 통계
python cli.py validate                        # Neo4j 데이터 검증
python cli.py export --format json            # 그래프 내보내기
```

## 의존성

```toml
[project]
name = "ontology-tools"
version = "0.1.0"
requires-python = ">=3.11"

dependencies = [
    "python-docx>=1.1.0",       # DOCX 파싱
    "neo4j>=5.20.0",            # Neo4j Bolt 드라이버
    "click>=8.1.0",             # CLI 프레임워크
    "rich>=13.0.0",             # 터미널 출력 (진행률, 테이블)
    "pydantic>=2.0.0",          # 데이터 모델 검증
]

[project.optional-dependencies]
dev = [
    "pytest>=8.0.0",
    "ruff>=0.4.0",
]
doc-legacy = [
    "pywin32>=306",             # DOC 파싱 (Windows COM)
]
```

## 구현 순서 (우선순위)

### Phase 1: 기반 + 파싱 ✅ 완료
1. ✅ `pyproject.toml` + `config.py` — 프로젝트 구조, uv venv, 의존성 설치
2. ✅ `parse/docx_parser.py` — DOCX 파싱 (Paragraph + Table 셀 본문 + 메타데이터)
3. ✅ `parse/doc_parser.py` — DOC 파싱 (pywin32 COM 자동화)
4. ✅ `parse/text_parser.py` — 문제.txt 파싱 (인용문/단일행 구분, 8,617문제)
5. ✅ `cli.py stats + parse` — CLI 통계/파싱 명령, rich 진행률 바
6. ✅ 전체 2,392개 파일 파싱 검증

### Phase 2: 정제 + 기존 분석 통합
6. `clean/` — 텍스트 정제 모듈
7. `analyze/keyword_analyzer.py` — 기존 analyze_questions.py 리팩토링
8. `analyze/` 나머지 — 분석 모듈 완성
9. `extract/keyword_dict.py` — 키워드 사전 통합

### Phase 3: 온톨로지 추출 + Cypher 생성
10. `extract/concept_extractor.py` — 규칙 기반 개념 추출
11. `extract/relation_extractor.py` — 관계 추출
12. `extract/entity_classifier.py` — 노드 타입 분류
13. `generate/cypher_builder.py` — MERGE 문 생성기
14. `generate/templates.py` — Cypher 템플릿

### Phase 4: Neo4j 적재 + 검증
15. `load/neo4j_client.py` — Bolt 드라이버 래퍼
16. `load/loader.py` — 배치 적재
17. `load/validator.py` — 적재 후 검증
18. `cli.py` 나머지 명령 완성

## 설계 원칙

1. **단계별 독립 실행** — 각 단계는 JSON 중간 파일로 연결, 단독 실행 가능
2. **멱등성** — MERGE 기반, 같은 문서 재처리해도 중복 없음
3. **도메인 단위 처리** — `--domain CA`로 특정 도메인만 처리 가능
4. **진행률 표시** — 2,393개 파일 처리 시 rich 진행률 바
5. **에러 격리** — 개별 파일 실패 시 로그 남기고 계속 진행
6. **기존 코드 보존** — `analyze_questions.py`는 원본 유지, 로직만 모듈화

## 제약사항 / 위험요소

| 항목 | 내용 | 대응 |
|------|------|------|
| DOC 파일 파싱 | python-docx는 DOC 미지원 | ✅ pywin32 COM 자동화로 해결 |
| 대량 파일 처리 | 2,393개 파일 순차 처리 시간 | 도메인 단위 병렬, 진행률 표시 |
| 온톨로지 추출 정확도 | 규칙 기반 한계 | 반복 개선, 수동 검증 병행 |
| 한글 처리 | 형태소 분석 필요 가능성 | Phase 1은 규칙 기반, 필요 시 konlpy 추가 |
| 인코딩 | DOC 파일 인코딩 다양 | 자동 감지 (chardet) |
