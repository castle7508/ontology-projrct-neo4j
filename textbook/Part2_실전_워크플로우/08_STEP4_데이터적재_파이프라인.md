# Ch.08 — STEP 4: 데이터 적재 파이프라인

> **"2,392개 문서를 Neo4j로 옮기는 것은 '복사'가 아니라 '번역'이다."**

이 챕터에서는 JSON으로 파싱된 원본 데이터를 **온톨로지 Cypher로 변환하고 Neo4j에 적재하는 전 과정**을 다룹니다.
단순한 데이터 이동이 아니라, 비정형 텍스트에서 노드/관계/속성을 **추출(Extract)**하고
스키마에 맞게 **구조화(Structure)**하는 지적 작업입니다.

---

## 8.1 적재 파이프라인 전체 구조

우리 프로젝트의 데이터 흐름:

```
DOC/DOCX 문서 → [Python parse] → JSON → [Claude Code 추출] → Cypher → [cypher-shell] → Neo4j
   2,392개         자동            2,381개      반자동              7개         자동         435노드
```

각 단계의 역할:

| 단계 | 입력 | 처리 | 출력 | 자동화 |
|------|------|------|------|--------|
| ① 파싱 | DOC/DOCX 파일 | python-docx로 구조 추출 | JSON (sections, tables) | ✅ 완전자동 |
| ② 온톨로지 추출 | JSON 텍스트 | 개념/관계/속성 식별 + Cypher 생성 | .cypher 파일 | 🔄 반자동 (Claude Code) |
| ③ 적재 | .cypher 파일 | cypher-shell로 Neo4j에 실행 | 그래프 데이터 | ✅ 완전자동 |
| ④ 검증 | Neo4j 그래프 | 진단 쿼리 실행 | 검증 결과 | 🔄 반자동 |

> 💡 **왜 "반자동"인가?**
>
> ②번 온톨로지 추출은 현재 Claude Code를 활용합니다.
> "이 텍스트에서 Concept, Technology, Method를 식별하고 관계를 도출하라"는 작업은
> 단순 규칙으로 자동화하기 어렵고, LLM의 이해력이 필요합니다.
>
> 이것은 한계가 아니라 **전략적 선택**입니다:
> - 구독 범위 내 추가 비용 없음
> - 표본(10~50개)에서 패턴 확인 후, 대량 적재 시 자동화 검토
> - LLM 추출의 품질을 검증(STEP 5)으로 담보

---

## 8.2 JSON → Cypher 변환 전략

### 8.2.1 JSON 구조 이해

Python 파서가 생성하는 JSON의 구조:

```json
{
  "file_id": "AI_001",
  "filename": "AI_001_인공지능.docx",
  "domain": "AI",
  "format": "docx",
  "sections": [
    {
      "heading": "I. 인공지능, 머신러닝, 딥러닝의 개념 및 관계",
      "level": 1,
      "content": "가. 인공지능, 머신러닝, 딥러닝의 개념\n나. ...",
      "items": ["가. 인공지능, 머신러닝, 딥러닝의 개념", "나. ..."]
    }
  ],
  "tables": [...]
}
```

**변환 시 주목할 포인트:**

| JSON 요소 | 온톨로지 변환 대상 | 방법 |
|----------|-------------------|------|
| `file_id` | Document 노드의 id | 직접 매핑 |
| `domain` | Document/Concept의 domain 속성 | 직접 매핑 |
| `heading` | 주제 → Concept 후보 | 의미 분석 |
| `content` | 정의, 관계 추출 | 자연어 이해 |
| `items` | 구성요소 → HAS_COMPONENT / HAS_PHASE 후보 | 패턴 매칭 |
| `tables` | 비교 → COMPARED_WITH, 분류 → HAS_TYPE | 구조 분석 |

### 8.2.2 변환 원칙

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  원칙 1: 하나의 JSON 문서 = 하나의 Cypher 섹션              │
│          문서별로 주석 구분, 독립적으로 실행 가능             │
│                                                              │
│  원칙 2: 노드 먼저, 관계 나중에                              │
│          Concept/Technology/Method MERGE → 관계 MERGE        │
│                                                              │
│  원칙 3: 모든 노드에 MERGE, 절대 CREATE 금지                 │
│          중복 방지 + 도메인 간 자동 연결                     │
│                                                              │
│  원칙 4: 시드 id 참조 필수                                   │
│          Top 50 시드와 동일 개념은 시드 id를 사용            │
│                                                              │
│  원칙 5: 적재 후 반드시 검증                                 │
│          MENTIONED_IN 연결, 고립 노드, 교차 라벨 확인        │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### 8.2.3 노드 추출 규칙

JSON 텍스트에서 온톨로지 노드를 추출하는 기준:

**Concept 추출:**
- 문서 제목의 핵심 주제 → Concept
- "~란 무엇인가", "~의 정의" 패턴 → Concept + definition
- 추상적 개념, 학문 분야, 이론 → Concept

**Technology 추출:**
- 구체적 도구/플랫폼/프로토콜 이름 → Technology
- 설치/실행/구현할 수 있는 것 → Technology
- 약어가 기술 이름인 경우 (CNN, TCP, AES) → Technology

**Method 추출:**
- "~방법론", "~기법", "~알고리즘" → Method
- 절차/단계가 있는 것 → Method
- "1단계: ~ 2단계: ~" 패턴 → Method + HAS_PHASE

**실전 예시 — AI_001.json에서 추출:**

```
JSON content:
"인간의 지적 능력을 컴퓨터를 통해 구현하는 기술"
  → Concept: artificial_intelligence
     definition = '인간의 지적 능력을 컴퓨터를 통해 구현하는 기술'

"합성곱 신경망(CNN)"
  → Technology: cnn
     name_kr = '합성곱 신경망'
     aliases = ['Convolutional Neural Network']

"의사결정트리" (분류 알고리즘)
  → Method: decision_tree
     category = 'algorithm'
```

> 📌 **노드 타입 판단이 애매할 때**: Ch.06의 Concept vs Technology vs Method 결정 트리를 참조하세요.
>
> - "~란 무엇인가?"로 정의되는 추상 개체 → **Concept**
> - 실제로 설치/실행/구현 가능한 것 → **Technology**
> - 절차/단계가 있는 방법론/알고리즘 → **Method**
> - 확실하지 않으면 → **일단 Concept** (나중에 라벨 변경 가능)

### 8.2.4 관계 추출 규칙

텍스트에서 관계를 추출하는 언어적 패턴:

| 텍스트 패턴 | 추출 관계 | 예시 |
|------------|----------|------|
| "A는 B의 한 분야이다" | A -[:SUBCLASS_OF]-> B | "딥러닝은 머신러닝의 한 분야" |
| "A의 유형에는 B, C가 있다" | B -[:HAS_TYPE]-> A, C -[:HAS_TYPE]-> A | "머신러닝의 유형에는 지도학습, 비지도학습" |
| "A는 B, C로 구성된다" | A -[:HAS_COMPONENT]-> B, C | "CIA는 기밀성, 무결성, 가용성" |
| "A의 절차: 1단계 B, 2단계 C" | A -[:HAS_PHASE]-> B, C | "SDLC: 요구분석, 설계, 구현" |
| "A와 B를 비교하면" | A -[:COMPARED_WITH]-> B | "AES와 DES를 비교" |
| "A를 위협하는 B" | B(Threat) -[:THREATENS]-> A | "DDoS가 가용성을 위협" |
| "A에 의존하는 B" | B -[:DEPENDS_ON]-> A | "딥러닝은 GPU에 의존" |
| "A를 구현한 B" | B -[:IMPLEMENTS]-> A | "SVM은 지도학습을 구현" |

### 8.2.5 Claude Code 활용 패턴 — 프롬프트 템플릿

실제로 사용하는 프롬프트:

```
"data/parsed/AI_006.json을 읽어서 온톨로지 Cypher를 만들어줘.

스키마 규칙:
- 노드: Concept, Technology, Method, Standard, Threat, Metric
- 관계: SUBCLASS_OF, HAS_COMPONENT, HAS_TYPE, COMPARED_WITH,
        DEPENDS_ON, IMPLEMENTS, USES, BELONGS_TO, MENTIONED_IN
- 반드시 MERGE 사용 (CREATE 금지)
- id: 영문 소문자 + 언더스코어 (예: deep_learning)
- 시드 참조: Top 50과 동일 개념은 시드 id 사용
- Domain.name은 SET하지 않을 것
- 섹션별 주석으로 구분

참고할 시드 id 목록: testing, cloud_computing, artificial_intelligence,
machine_learning, deep_learning, encryption, ...

cypher/ai_006_010.cypher에 저장해."
```

**핵심 포인트:**
- 스키마 규칙을 명시적으로 전달 → 일관성 확보
- 시드 id 목록을 함께 제공 → id 불일치 방지
- Domain.name SET 금지 명시 → 덮어쓰기 방지

---

## 8.3 Cypher 파일 구조 — 실전 해설

### 8.3.1 파일 구조 템플릿

모든 도메인별 Cypher 파일은 동일한 구조를 따릅니다:

```cypher
// ================================================================
// {도메인} 도메인 ({file_id 범위}) — 온톨로지 Cypher
// 도메인: {도메인코드} ({도메인명})
// 포함관계: {핵심 계층 구조 요약}
// ================================================================

// ──────────────────────────────────────
// {file_id}: {문서 제목}
// ──────────────────────────────────────

// --- Concept 노드 ---
MERGE (c:Concept {id: '...'})
SET c.name = '...', c.name_kr = '...', c.domain = '...', c.definition = '...';

// --- Technology 노드 ---
MERGE (t:Technology {id: '...'})
SET t.name = '...', t.name_kr = '...', t.category = '...', t.domain = '...';

// --- Method 노드 ---
MERGE (m:Method {id: '...'})
SET m.name = '...', m.name_kr = '...', m.category = '...', m.domain = '...';

// ──────────────────────────────────────
// 관계
// ──────────────────────────────────────
MERGE (a:Concept {id: '...'})
MERGE (b:Concept {id: '...'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// --- Domain 연결 ---
MATCH (n) WHERE n.domain = '{도메인코드}' AND (n:Concept OR n:Technology OR n:Method)
MERGE (d:Domain {id: '{도메인코드}'})
MERGE (n)-[:BELONGS_TO]->(d);

// --- Document 추적 ---
MERGE (doc:Document {id: '{file_id}'})
SET doc.filename = '...', doc.domain = '...', doc.format = '...';

// --- MENTIONED_IN ---
MERGE (c:Concept {id: '...'}) MERGE (doc:Document {id: '...'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// ================================================================
// {도메인} 도메인 표본 완료
// 노드: Concept X개, Technology Y개, Method Z개, Document N개
// 관계: {사용된 관계 타입 목록}
// ================================================================
```

### 8.3.2 실전 해설 — ai_001_010.cypher 구조 분석

우리 프로젝트의 AI 도메인 파일(389줄)을 분석합니다:

**섹션 1: 노드 생성 (Line 13~168)**
```cypher
// Concept 14개 — 핵심 개념
MERGE (c:Concept {id: 'artificial_intelligence'})
SET c.name = 'Artificial Intelligence',
    c.name_kr = '인공지능',
    c.domain = 'AI',
    c.definition = '인간의 지적 능력을 컴퓨터를 통해 구현하는 기술...',
    c.aliases = ['AI', '인공지능'],
    c.exam_frequency = 727,
    c.importance = 'high';
```

**관찰 포인트:**
- 시드 노드(`artificial_intelligence`)는 이미 00_schema.cypher에서 생성됨
- MERGE이므로 **중복 생성 없이** 속성만 보강됨 (definition, aliases 추가)
- `exam_frequency`와 `importance`는 시드에서 이미 설정된 값 → SET으로 동일 값 다시 설정 (무해하지만 불필요)

> 💡 **개선 포인트**: ON MATCH SET을 쓰면 시드 속성을 덮어쓰지 않도록 보호 가능:
> ```cypher
> MERGE (c:Concept {id: 'artificial_intelligence'})
> ON CREATE SET c.exam_frequency = 727, c.importance = 'high'
> ON MATCH SET c.definition = '인간의 지적 능력을...'
> SET c.name = 'Artificial Intelligence', c.name_kr = '인공지능';
> ```

**섹션 2: 관계 생성 (Line 210~337)**
```cypher
// 포함관계: 딥러닝 ⊂ 머신러닝 ⊂ 인공지능
MERGE (a:Concept {id: 'machine_learning'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:SUBCLASS_OF]->(b);
```

**관찰 포인트:**
- 관계 MERGE 시 양쪽 노드를 각각 MERGE로 참조
- 노드가 이미 존재하므로 새로 생성되지 않음 (id 기반 매칭)
- 관계도 MERGE이므로 동일 관계 중복 생성 방지

**섹션 3: Domain 연결 (Line 341~343)**
```cypher
MATCH (n) WHERE n.domain = 'AI' AND (n:Concept OR n:Technology OR n:Method)
MERGE (d:Domain {id: 'AI'})
MERGE (n)-[:BELONGS_TO]->(d);
```

**섹션 4: Document 추적 + MENTIONED_IN (Line 347~381)**
```cypher
MERGE (doc:Document {id: 'AI_001'})
SET doc.filename = 'AI_001_인공지능.docx', doc.domain = 'AI', doc.format = 'docx';

MERGE (c:Concept {id: 'artificial_intelligence'})
MERGE (doc:Document {id: 'AI_001'})
MERGE (c)-[:MENTIONED_IN]->(doc);
```

---

## 8.4 MERGE 패턴 심화

### 8.4.1 기본 MERGE — 노드

```cypher
// 패턴: id로만 매칭, 나머지는 SET
MERGE (c:Concept {id: 'deep_learning'})
SET c.name = 'Deep Learning',
    c.name_kr = '딥러닝',
    c.domain = 'AI',
    c.definition = '깊은 인공신경망 알고리즘을 활용하는 머신러닝 기술.';
```

> ⚠️ **MERGE의 매칭 키는 최소화하라**
>
> ```cypher
> // ❌ 속성 과다 MERGE — 위험!
> MERGE (c:Concept {id: 'deep_learning', name: 'Deep Learning', domain: 'AI'})
> // → name이나 domain이 조금이라도 다르면 새 노드 생성!
> //   예: 시드에서 name='Deep Learning', 문서에서 name='DeepLearning'
> //   → 2개 노드 발생!
>
> // ✅ id로만 매칭
> MERGE (c:Concept {id: 'deep_learning'})
> SET c.name = 'Deep Learning', c.domain = 'AI'
> ```

### 8.4.2 관계 MERGE — 안전한 패턴

```cypher
// ✅ 안전: 양쪽 노드를 개별 MERGE 후, 관계만 MERGE
MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);
```

**왜 노드를 MATCH가 아닌 MERGE로 참조하는가?**

```cypher
// MATCH 사용 시 — 노드가 없으면 관계도 생성 안 됨
MATCH (a:Concept {id: 'deep_learning'})
MATCH (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);
// → 둘 중 하나라도 없으면? 전체 쿼리가 0건 반환 (silent failure!)

// MERGE 사용 시 — 노드가 없으면 자동 생성
MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);
// → 노드가 없어도 생성됨 → 관계도 반드시 생성됨
```

우리 프로젝트에서는 **노드 MERGE 후 관계 MERGE** 패턴을 사용합니다:
- 노드가 이미 있으면 → 재사용 (대부분의 경우)
- 노드가 아직 없으면 → id만으로 생성 (나중에 속성 보강)

### 8.4.3 문자열 이스케이프

Cypher에서 문자열 내 특수문자 처리:

**아포스트로피 (작은따옴표):**
```cypher
// ❌ 에러 발생
SET c.definition = 'Metcalfe's Law states that...'
//                         ^ 여기서 문자열이 닫힘!

// ✅ 큰따옴표로 감싸기
SET c.definition = "Metcalfe's Law states that..."

// ✅ 또는 이스케이프
SET c.definition = 'Metcalfe\'s Law states that...'
```

**줄바꿈:**
```cypher
// definition에 줄바꿈이 포함된 경우
SET c.definition = '첫 번째 줄.\n두 번째 줄.'
// → Neo4j에서 \n이 실제 줄바꿈으로 저장됨
```

**한글 + 영문 혼합:**
```cypher
// 특별한 처리 불필요 — Neo4j는 UTF-8 지원
SET c.definition = '인공지능(Artificial Intelligence)이란...'
```

---

## 8.5 적재 순서와 의존성 관리

### 8.5.1 적재 순서

```
1단계: 스키마              cypher/00_schema.cypher     (최초 1회)
        ↓
2단계: 도메인별 데이터     cypher/ai_001_010.cypher    (순서 무관)
       (병렬 가능)         cypher/se_001_010.cypher
                           cypher/sw_001_010.cypher
                           cypher/nw_001_010.cypher
                           cypher/db_001_010.cypher
                           cypher/ca_001.cypher
```

**왜 도메인 간 순서가 무관한가?**

MERGE 덕분입니다:
- AI 도메인에서 `encryption` 노드를 참조하면 → 아직 없으므로 id만으로 생성
- 나중에 SE 도메인에서 `encryption` 노드를 적재하면 → MERGE가 기존 노드에 속성 보강
- 결과: 어떤 순서로 적재해도 최종 그래프는 동일

### 8.5.2 적재 명령어

```bash
# PowerShell에서 실행

# 1단계: 스키마 (최초 1회)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher

# 2단계: 도메인별 데이터
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_010.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/se_001_010.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/sw_001_010.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/nw_001_010.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/db_001_010.cypher
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ca_001.cypher
```

> ⚠️ **명령어 환경 구분 (중요!):**
>
> | 명령어 | 실행 환경 | 예시 |
> |--------|----------|------|
> | `docker exec -i ... < file.cypher` | **PowerShell/터미널** | 파일 적재 |
> | `MATCH (n) RETURN n` | **Neo4j Browser** | 쿼리 실행 |
> | `SHOW CONSTRAINTS;` | **Neo4j Browser** | 관리 명령 |
>
> cypher-shell은 Cypher 파일을 일괄 실행하는 도구입니다.
> Neo4j Browser는 대화형으로 쿼리를 실행하는 도구입니다.
> 이 둘을 혼동하지 마세요.

### 8.5.3 적재 결과 확인

```cypher
// Neo4j Browser에서 실행

// 전체 통계
CALL apoc.meta.stats() YIELD labels, relTypesCount
RETURN labels, relTypesCount;

// 도메인별 노드 수
MATCH (c)-[:BELONGS_TO]->(d:Domain)
RETURN d.id AS domain, d.name AS name, count(c) AS node_count
ORDER BY node_count DESC;

// 문서별 추출 개념 수
MATCH (concept)-[:MENTIONED_IN]->(doc:Document)
RETURN doc.id, doc.domain, count(concept) AS concepts
ORDER BY doc.domain, doc.id;
```

---

## 8.6 오류 처리와 디버깅

### 8.6.1 흔한 오류와 해결

**오류 1: 문자열 내 따옴표**
```
Error: Invalid input ''': expected...
```
→ 해결: 아포스트로피가 포함된 문자열은 큰따옴표로 감싸기

**오류 2: 제약조건 위반**
```
Error: Node(123) already exists with label `Concept` and property `id` = 'deep_learning'
```
→ 원인: CREATE를 사용한 경우. MERGE로 교체

**오류 3: 관계 생성 시 노드 미존재**
```
(결과 없음 — 에러는 아니지만 관계 미생성)
```
→ 원인: MATCH로 노드를 찾았는데 노드가 없는 경우. MERGE로 교체하거나 적재 순서 확인

**오류 4: 인코딩 문제**
```
Error: Invalid character encoding...
```
→ 해결: Cypher 파일을 UTF-8로 저장. BOM 없이.

### 8.6.2 추출 오류 — LLM이 잘못 추출한 경우

Claude Code(또는 다른 LLM)를 활용한 온톨로지 추출은 완벽하지 않습니다.
실제로 발생한 추출 오류 유형과 대응 방법:

| 오류 유형 | 예시 | 발견 방법 | 대응 |
|----------|------|----------|------|
| **잘못된 라벨** | function_point를 Method로 추출 (시드는 Concept) | Ch.09 교차 라벨 검증 쿼리 | 라벨 변경 또는 노드 병합 |
| **id 불일치** | 시드 `agile` vs 추출 `agile_methodology` | Ch.09 유사 이름 검출 쿼리 | 노드 병합 (Ch.10) |
| **관계 방향 역전** | (AI)-[:SUBCLASS_OF]->(머신러닝) — 상위→하위 방향 | Ch.09 방향 일관성 검증 쿼리 | 관계 삭제→재생성 |
| **Domain.name 덮어쓰기** | SET d.name = 'Database' | Ch.09 Domain.name 검증 쿼리 | SET으로 복구 |
| **과잉 추출** | 문서에 잠깐 언급된 용어를 노드로 생성 | 고립 노드 검출 쿼리 | 불필요 노드 삭제 |

> 📌 **이것이 "적재 후 반드시 검증" 원칙의 이유입니다.**
>
> LLM 추출은 80~90% 정확하지만, 나머지 10~20%를 STEP 5(검증)에서 잡아야 합니다.
> 검증 없이 대량 적재하면 오류가 누적되어 수정 불가능 수준이 됩니다.
> 검증의 구체적 방법은 Ch.09~11에서 상세히 다룹니다.

### 8.6.3 부분 적재 확인

적재 중 오류가 발생하면, 어디까지 적재되었는지 확인:

```cypher
// 적재된 노드 수 확인
MATCH (n) WHERE NOT n:_GraphConfig
RETURN labels(n)[0] AS label, count(*) AS count
ORDER BY count DESC;

// 최근 생성된 노드 확인 (내부 ID 기준)
MATCH (n:Concept)
RETURN n.id, n.name_kr
ORDER BY elementId(n) DESC
LIMIT 10;
```

---

## 8.7 배치 적재 — 대규모 데이터

### 8.7.1 CALL IN TRANSACTIONS

2,392개 전체 적재 시에는 배치 처리가 필요합니다:

```cypher
// LOAD CSV + CALL IN TRANSACTIONS 패턴
LOAD CSV WITH HEADERS FROM 'file:///concepts.csv' AS row
CALL (row) {
  MERGE (c:Concept {id: row.id})
  SET c.name = row.name,
      c.name_kr = row.name_kr,
      c.domain = row.domain,
      c.definition = row.definition
} IN TRANSACTIONS OF 500 ROWS;
```

**왜 배치 처리가 필요한가?**
- 단일 트랜잭션으로 수만 개 노드를 생성하면 메모리 부족 가능
- `IN TRANSACTIONS OF 500 ROWS`: 500개마다 커밋 → 메모리 해제
- 중간에 오류 발생 시 이미 커밋된 데이터는 유지

> ⚠️ **주의: `USING PERIODIC COMMIT`은 Deprecated**
>
> Neo4j 5+ 에서는 `CALL { } IN TRANSACTIONS` 문법을 사용하세요.
> ```cypher
> // ❌ 구 문법 (deprecated)
> USING PERIODIC COMMIT 500
> LOAD CSV FROM '...' AS row
> CREATE (...)
>
> // ✅ 신 문법
> LOAD CSV FROM '...' AS row
> CALL (row) {
>   CREATE (...)
> } IN TRANSACTIONS OF 500 ROWS
> ```

### 8.7.2 LOAD CSV 활용

CSV 파일을 Neo4j import 디렉토리에 두고 직접 적재:

```cypher
// 1. CSV 파일 준비 (import/ 디렉토리에 배치)
// concepts.csv:
// id,name,name_kr,domain,definition
// deep_learning,Deep Learning,딥러닝,AI,깊은 인공신경망...

// 2. LOAD CSV로 적재
LOAD CSV WITH HEADERS FROM 'file:///concepts.csv' AS row
CALL (row) {
  MERGE (c:Concept {id: row.id})
  SET c.name = row.name,
      c.name_kr = row.name_kr,
      c.domain = row.domain,
      c.definition = row.definition
} IN TRANSACTIONS OF 500 ROWS;

// 3. 관계도 CSV로
// relations.csv:
// from_id,from_label,rel_type,to_id,to_label
// deep_learning,Concept,SUBCLASS_OF,machine_learning,Concept

LOAD CSV WITH HEADERS FROM 'file:///relations.csv' AS row
CALL (row) {
  // ⚠️ 라벨 없는 MATCH는 전체 노드 스캔 — 반드시 라벨 지정!
  // 동적 라벨이 필요하면 APOC의 apoc.merge.node 활용
  MATCH (a:Concept {id: row.from_id})
  MATCH (b:Concept {id: row.to_id})
  CALL apoc.merge.relationship(a, row.rel_type, {}, {}, b) YIELD rel
  RETURN rel
} IN TRANSACTIONS OF 500 ROWS;
```

> ⚠️ **라벨 없는 MATCH 금지**
>
> ```cypher
> // ❌ 라벨 없이 MATCH — 전체 노드 스캔 (성능 최악)
> MATCH (a {id: row.from_id})
>
> // ✅ 라벨 명시 — 인덱스 활용 (빠름)
> MATCH (a:Concept {id: row.from_id})
> ```
>
> 라벨이 동적인 경우 (CSV에 라벨이 컬럼으로 있는 경우):
> ```cypher
> // APOC의 apoc.merge.node으로 동적 라벨 처리
> CALL apoc.merge.node([row.from_label], {id: row.from_id}) YIELD node AS a
> CALL apoc.merge.node([row.to_label], {id: row.to_id}) YIELD node AS b
> CALL apoc.merge.relationship(a, row.rel_type, {}, {}, b) YIELD rel
> RETURN rel
> ```
```

### 8.7.3 Neo4j Python Driver 활용

프로그래밍 방식 적재 (STEP 7 자동화에서 사용 예정):

```python
from neo4j import GraphDatabase
import json

driver = GraphDatabase.driver("bolt://localhost:7687", auth=("neo4j", "ontology2025!"))

def load_concept(tx, concept):
    tx.run("""
        MERGE (c:Concept {id: $id})
        SET c.name = $name,
            c.name_kr = $name_kr,
            c.domain = $domain,
            c.definition = $definition
    """, **concept)

with driver.session() as session:
    with open('data/parsed/AI_001.json') as f:
        data = json.load(f)

    # 추출된 개념 목록을 적재
    for concept in extracted_concepts:
        session.execute_write(load_concept, concept)

driver.close()
```

---

## 8.8 [기업 박스] 기업 환경의 ETL 파이프라인

> **기업에서의 데이터 적재는 우리 프로젝트보다 규모가 크고 지속적입니다.**
>
> **일회성 벌크 적재:**
> - LOAD CSV: 정형 데이터 (RDB 익스포트, 엑셀)
> - `neo4j-admin database import`: 초대규모 초기 적재 (오프라인)
> - APOC `apoc.load.json`: JSON API 응답 직접 적재
>
> **실시간 스트리밍:**
> - Kafka + Neo4j Connector: 이벤트 스트림 → 그래프 실시간 반영
> - Change Data Capture (CDC): RDB 변경 → 그래프 동기화
>
> **ETL 오케스트레이션:**
> - Apache Airflow: 워크플로우 스케줄링 + 에러 핸들링 + 재시도
> - dbt + Neo4j: 데이터 변환 파이프라인
>
> **공통 원칙:**
> - MERGE 기반 (멱등성 필수)
> - 배치 크기 조절 (메모리 관리)
> - 적재 후 검증 자동화 (CI/CD)
> - 데이터 리니지 추적 (MENTIONED_IN 패턴)

---

## [실습] AI 도메인 5개 문서 적재 + 검증

### 과제

AI_001 ~ AI_005 문서를 Neo4j에 적재하고 결과를 검증하세요.

### 진행 방법

**STEP 1: 스키마 적재 (이미 완료되었다면 건너뛰기)**
```bash
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher
```

**STEP 2: AI 도메인 적재**
```bash
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_010.cypher
```

**STEP 3: 적재 결과 확인**
```cypher
// Neo4j Browser에서 실행

// AI 도메인 노드 수
MATCH (n)-[:BELONGS_TO]->(d:Domain {id: 'AI'})
RETURN labels(n)[0] AS label, count(*) AS count;

// AI 계층 구조 시각화
MATCH path = (leaf)-[:SUBCLASS_OF*1..3]->(root:Concept {id: 'artificial_intelligence'})
RETURN path;

// 문서 연결 확인
MATCH (c)-[:MENTIONED_IN]->(doc:Document {domain: 'AI'})
RETURN doc.id, collect(c.name_kr) AS concepts;
```

**STEP 4: 검증**
```cypher
// 고립 노드 확인
MATCH (n)
WHERE n.domain = 'AI' AND NOT (n)--()
RETURN labels(n)[0], n.id, n.name_kr;

// 시드 연결 확인
MATCH (seed:Concept)
WHERE seed.exam_frequency IS NOT NULL AND seed.domain = 'AI'
OPTIONAL MATCH (seed)-[:MENTIONED_IN]->(doc:Document)
RETURN seed.id, seed.name_kr, count(doc) AS doc_links;
```

### 검증 체크리스트

- [ ] Concept 14개, Technology 4개, Method 12개, Document 5개 생성 확인
- [ ] SUBCLASS_OF 체인: 딥러닝→머신러닝→AI 확인
- [ ] HAS_TYPE: 지도학습/비지도학습/강화학습 → 머신러닝 확인
- [ ] COMPARED_WITH: 지도학습 ↔ 비지도학습 (perspectives 속성 포함) 확인
- [ ] MENTIONED_IN: 5개 Document 모두 개념과 연결 확인
- [ ] 고립 노드 0개 확인

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 적재는 "복사"가 아니라 "번역"                            │
│     JSON 텍스트에서 노드/관계/속성을 추출하는 지적 작업      │
│                                                              │
│  2. MERGE가 모든 것을 가능하게 한다                          │
│     중복 방지, 도메인 간 자동 연결, 멱등성                   │
│     매칭 키는 id 하나만. 나머지는 SET                        │
│                                                              │
│  3. Cypher 파일 구조 = 노드 → 관계 → Domain → Document      │
│     문서별 주석 구분, 섹션별 실행 가능                        │
│                                                              │
│  4. 적재 순서: 스키마 먼저, 도메인 데이터는 순서 무관         │
│     MERGE 덕분에 어떤 순서로 적재해도 결과 동일              │
│                                                              │
│  5. 대규모 적재: CALL IN TRANSACTIONS + LOAD CSV              │
│     500~1000 ROW 단위 커밋으로 메모리 관리                   │
│                                                              │
│  6. 실패 복구: 부분 적재 후 이어하기 + 롤백 전략             │
│     MERGE 멱등성이 복구의 핵심 — 재실행해도 중복 없음        │
│                                                              │
│  다음 챕터: 스키마 검증 - 진단 프레임워크 (Ch.09)            │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 8.7 적재 실패 복구 전략

대량 적재에서 **실패는 예외가 아니라 정상**입니다.
네트워크 끊김, 메모리 초과, Cypher 문법 오류, 특수문자 이스케이프 실패 등
다양한 원인으로 적재가 중단될 수 있습니다.

### 8.7.1 실패 유형과 대응

| 실패 유형 | 증상 | 대응 | 위험도 |
|----------|------|------|--------|
| **Cypher 문법 오류** | 특정 파일에서 에러 메시지 | 해당 파일만 수정 후 재실행 | 낮음 |
| **특수문자 이스케이프** | `'` 포함 텍스트에서 중단 | 큰따옴표로 감싸기 (규칙 7.x) | 낮음 |
| **메모리 초과 (OOM)** | Neo4j 프로세스 종료 | 배치 크기 축소 + 메모리 확장 | 중간 |
| **네트워크/Docker 중단** | 연결 끊김 | Docker 재시작 후 재실행 | 중간 |
| **중간 커밋 실패** | CALL IN TRANSACTIONS 중 일부만 적재 | 진단 → 이어하기 | 높음 |

### 8.7.2 MERGE 덕분에 가능한 "재실행 복구"

MERGE의 멱등성이 복구 전략의 핵심입니다:

```cypher
// 이 파일을 3번 실행해도 결과는 같습니다:
MERGE (c:Concept {id: 'deep_learning'})
SET c.name_kr = '딥러닝', c.domain = 'AI';
// → 첫 실행: 노드 생성
// → 두 번째: 기존 노드 찾아서 SET만 실행
// → 세 번째: 동일
```

따라서 **적재가 중간에 실패하면, 전체 파일을 처음부터 다시 실행**하면 됩니다.
이미 적재된 부분은 MERGE가 기존 노드를 찾아 무시(또는 SET으로 갱신)합니다.

> 📌 **이것이 CREATE 대신 MERGE를 쓰는 결정적 이유입니다.**
> CREATE로 적재했다면, 실패 후 재실행 시 이미 적재된 노드가 **중복 생성**됩니다.
> 수동으로 "어디까지 적재되었는지" 파악하고 이어 적재해야 하는 악몽이 됩니다.

### 8.7.3 부분 실패 진단 — 어디까지 적재되었는가?

적재가 중단된 후 현재 상태를 파악하는 쿼리:

```cypher
// 1. 전체 현황 스냅샷
CALL apoc.meta.stats() YIELD labels, relTypesCount
RETURN labels, relTypesCount;

// 2. 문서별 적재 여부 확인
MATCH (d:Document)
WHERE d.domain = 'AI'
RETURN d.id, d.title
ORDER BY d.id;
// → 적재 예정 목록과 비교하여 누락 문서 식별

// 3. 특정 문서의 연결 상태 확인
MATCH (d:Document {id: 'AI_003'})<-[:MENTIONED_IN]-(n)
RETURN labels(n)[0] AS type, count(n) AS count;
// → 0건이면 해당 문서 적재 실패
```

### 8.7.4 배치 적재 시 진행 상황 추적

대량 적재 시 어디까지 완료되었는지 추적하는 패턴:

```cypher
// 적재 완료 마커 기록 (각 도메인 적재 후)
MERGE (log:LoadLog {batch_id: 'ai_001_010'})
SET log.status = 'completed',
    log.loaded_at = datetime(),
    log.node_count = 35,
    log.rel_count = 78;

// 적재 현황 조회
MATCH (log:LoadLog)
RETURN log.batch_id, log.status, log.loaded_at, log.node_count
ORDER BY log.loaded_at;
```

### 8.7.5 CALL IN TRANSACTIONS 실패 복구

배치 트랜잭션에서 중간 실패가 발생하면, **이미 커밋된 트랜잭션은 롤백되지 않습니다.**
이것은 장점이자 주의사항입니다:

```cypher
// 500건씩 배치 처리 — 중간 실패 시 이미 커밋된 부분은 유지됨
CALL {
    LOAD CSV WITH HEADERS FROM 'file:///concepts.csv' AS row
    MERGE (c:Concept {id: row.id})
    SET c.name_kr = row.name_kr, c.domain = row.domain
} IN TRANSACTIONS OF 500 ROWS
ON ERROR CONTINUE;   // ← Neo4j 5.18+: 에러 발생 행을 건너뛰고 계속 진행
```

> 💡 **ON ERROR 옵션 (Neo4j 5.18+)**
>
> | 옵션 | 동작 | 용도 |
> |------|------|------|
> | `ON ERROR FAIL` | 에러 시 전체 중단 (기본값) | 데이터 정확성 최우선 |
> | `ON ERROR CONTINUE` | 에러 행 건너뛰고 계속 | 대량 적재, 일부 실패 허용 |
> | `ON ERROR BREAK` | 현재 배치까지 커밋 후 중단 | 중간 복구점 확보 |
>
> 우리 프로젝트에서는 `ON ERROR FAIL`(기본값)을 권장합니다.
> MERGE 기반이므로 오류 수정 후 전체 재실행이 안전합니다.

### 8.7.6 복구 절차 체크리스트

```
적재 실패 시 복구 순서:
1. ✅ 에러 메시지 확인 (cypher-shell 출력)
2. ✅ 현재 상태 스냅샷 (apoc.meta.stats)
3. ✅ 실패 원인 파악 (문법? 메모리? 네트워크?)
4. ✅ 원인 수정 (Cypher 파일 수정 또는 Docker 재시작)
5. ✅ 전체 파일 재실행 (MERGE 멱등성으로 안전)
6. ✅ 재실행 후 상태 스냅샷 비교 (Before/After)
7. ✅ L1~L2 진단 쿼리로 무결성 확인
```
