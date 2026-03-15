# Ch.11 — STEP 5: 스키마 검증 - 실전 케이스 스터디

> **"이론은 알겠는데, 실제로는 어떻게 했는가?"**

이 챕터는 스키마 검증 3부작의 마지막으로, **우리 프로젝트의 STEP 5 전 과정을 재현**합니다.
Ch.09(진단 프레임워크)와 Ch.10(수정 패턴)에서 배운 이론을 실제로 적용한 과정을
**검증 전 상태 → 진단 실행 → 이슈 발견 → 수정 → 재검증 → Before/After 비교**
순서로 상세히 기록합니다.

이 챕터를 읽으면 "나도 내 그래프에서 같은 과정을 수행할 수 있다"는 자신감을 얻게 됩니다.

---

## 11.1 검증 전 상태 스냅샷

### 검증 시점의 그래프 현황

STEP 4(표본 적재) 완료 직후, STEP 5(검증) 시작 전의 상태:

```
적재 범위: 5개 도메인 (AI, SW, SE, NW, DB) + CA 1개
적재 문서: 46개 (AI:5, SW:10, SE:10, NW:10, DB:10, CA:1)
```

```cypher
// 검증 직전 실행한 통계 쿼리
CALL apoc.meta.stats() YIELD labels, relTypesCount
RETURN labels, relTypesCount;
```

**결과:**

| 노드 타입 | 수량 | 관계 타입 | 수량 |
|----------|------|----------|------|
| Concept | 231 | SUBCLASS_OF | 27 |
| Technology | 55 | HAS_TYPE | 61 |
| Method | 54 | IMPLEMENTS | 66 |
| Standard | 12 | HAS_COMPONENT | 31 |
| Metric | 14 | HAS_PHASE | 22 |
| Threat | 9 | COMPARED_WITH | 22 |
| Document | 46 | DEPENDS_ON | 19 |
| Domain | 13 | MENTIONED_IN | 166 |
| _GraphConfig | 1 | BELONGS_TO | 381 |
| | | 기타 (USES, DEFINED_BY 등) | 81 |
| **총 노드** | **435** | **총 관계** | **875** |

> 💡 **"435노드, 875관계 — 겉보기에는 문제없어 보입니다."**
>
> 그래프를 Neo4j Browser에서 시각화하면 예쁜 네트워크가 보입니다.
> 노드 수도 적당하고, 관계도 풍부합니다.
> 하지만 그 안에 **5건의 이슈**가 숨어 있었습니다.

---

## 11.2 전수 진단 실행 기록

Ch.09의 5계층 프레임워크를 순서대로 실행했습니다.

### L1: 구조 검증 — 결과: 정상

```cypher
SHOW CONSTRAINTS;
// → 11개 UNIQUE 제약조건 확인 ✅

SHOW INDEXES;
// → 25개 인덱스, 모두 ONLINE ✅

CALL apoc.meta.stats() YIELD labels
RETURN labels;
// → 노드 수 분포 확인 ✅ (위 표와 일치)
```

**L1 판정: 이상 없음.** 구조적 뼈대는 건강합니다.

---

### L2: 데이터 검증 — 결과: 정상

```cypher
// L2-Q1: 필수 속성 NULL
MATCH (c:Concept)
WHERE c.id IS NULL OR c.name IS NULL OR c.domain IS NULL
RETURN count(c);
// → 0건 ✅

// L2-Q2: 속성 완전성
MATCH (c:Concept)
WITH count(*) AS total,
     sum(CASE WHEN c.definition IS NULL THEN 1 ELSE 0 END) AS no_def
RETURN total, no_def, round(100.0 * no_def / total, 1) AS pct;
// → total: 231, no_def: 44 (19.0%) — 시드 노드가 대부분 ✅ 허용 범위

// L2-Q3: id 네이밍 규칙
MATCH (c:Concept) WHERE NOT c.id =~ '[a-z0-9][a-z0-9_]*'
RETURN c.id;
// → 0건 ✅

// L2-Q4: 도메인 코드 유효성
MATCH (c:Concept) WHERE NOT c.domain IN ['PM','MG','SW','SV','ST','AI','DS','AL','SE','DB','NW','CA','OS']
RETURN c.id, c.domain;
// → 0건 ✅
```

**L2 판정: 이상 없음.** 속성은 규칙대로 채워져 있습니다.

---

### L3: 관계 검증 — 결과: ⚠️ 이슈 2건 발견

```cypher
// L3-Q1: 고립 노드
MATCH (n) WHERE NOT (n)--() AND NOT n:_GraphConfig
RETURN labels(n)[0] AS label, n.id;
```

**결과:**
```
label    | id
─────────┼────
Domain   | AL
Domain   | DS
Domain   | ST
```

**판정:** AL, DS, ST는 아직 문서가 적재되지 않은 도메인.
Domain 노드가 고립된 것은 **정상** (해당 도메인 문서 미적재).

```cypher
// L3-Q2: BELONGS_TO 누락
MATCH (n)
WHERE n.domain IS NOT NULL AND NOT (n)-[:BELONGS_TO]->(:Domain)
  AND NOT n:Domain AND NOT n:Document AND NOT n:_GraphConfig
RETURN labels(n)[0] AS label, n.id, n.domain;
```

**결과:**
```
label    | id                      | domain
─────────┼─────────────────────────┼────────
Concept  | critical_mass           | CA
Concept  | knowledge_based_society | MG
Metric   | network_value_formula   | CA
```

> 🚨 **이슈 #5 발견: BELONGS_TO 누락 3건**
>
> 3개 노드가 domain 속성은 있지만 Domain 노드와 BELONGS_TO 관계가 없습니다.
> 원인: 문서 적재 Cypher에서 BELONGS_TO 생성이 누락됨.

```cypher
// L3-Q3: 시드-문서 연결률
MATCH (seed:Concept) WHERE seed.exam_frequency IS NOT NULL
OPTIONAL MATCH (seed)-[:MENTIONED_IN]->(doc:Document)
WITH seed, count(doc) AS doc_links
RETURN sum(CASE WHEN doc_links > 0 THEN 1 ELSE 0 END) AS connected,
       sum(CASE WHEN doc_links = 0 THEN 1 ELSE 0 END) AS unconnected;
```

**결과:** `connected: 5, unconnected: 45`

> 🚨 **이슈 #4 발견: Top 50 시드 중 45개가 문서와 미연결**
>
> 50개 시드 중 5개만 MENTIONED_IN으로 Document에 연결됨.
> 적재된 5개 도메인의 시드조차 대부분 미연결 상태.

```cypher
// L3-Q5: 순환 참조
MATCH path = (n)-[:SUBCLASS_OF*2..5]->(n) RETURN count(path);
// → 0건 ✅

// L3-Q6: 중복 관계
MATCH (a)-[r1]->(b), (a)-[r2]->(b)
WHERE elementId(r1) < elementId(r2) AND type(r1) = type(r2)
RETURN count(*);
// → 0건 ✅
```

---

### L4: 의미 검증 — 결과: ⚠️ 이슈 3건 발견

```cypher
// L4-Q1: 교차 라벨 중복
MATCH (a), (b)
WHERE a.id = b.id AND elementId(a) < elementId(b)
RETURN a.id, labels(a), labels(b);
```

**결과:**
```
shared_id       | label_a    | label_b
────────────────┼────────────┼─────────
function_point  | [Concept]  | [Method]
```

> 🚨 **이슈 #2 발견: 교차 라벨 중복 1건**
>
> `function_point`가 Concept(시드, exam_freq=79)과 Method(문서 데이터)로 동시 존재.
> UNIQUE 제약조건은 라벨별이므로 이 중복을 탐지하지 못함.

```cypher
// L4-Q3: Domain.name 보호 검증
MATCH (d:Domain)
WHERE NOT d.name =~ '.*[가-힣].*'
RETURN d.id, d.name;
```

**결과:**
```
id  | name
────┼──────────────────────
DB  | Database
SE  | Security
SW  | Software Engineering
```

> 🚨 **이슈 #1 발견: Domain.name 영문 덮어쓰기 3건**
>
> DB, SE, SW 세 도메인의 name이 한글에서 영문으로 바뀌어 있음.
> 원인: 문서 적재 Cypher에서 에이전트가 `SET d.name = 'Database'`로 덮어씀.

```cypher
// L4-Q2: 의미적 중복 (이름 유사)
MATCH (a:Concept), (b:Concept)
WHERE a.id <> b.id
  AND (a.name_kr CONTAINS b.name_kr OR b.name_kr CONTAINS a.name_kr)
  AND size(a.name_kr) > 2 AND size(b.name_kr) > 2
RETURN a.id, a.name_kr, b.id, b.name_kr
LIMIT 10;
```

**결과에서 주목할 항목:**
```
a.id                 | a.name_kr    | b.id              | b.name_kr
─────────────────────┼──────────────┼───────────────────┼──────────────
agile                | 애자일       | agile_methodology | 애자일 방법론
```

> 🚨 **이슈 #3 발견: 중복 노드 1건**
>
> `agile`(시드)과 `agile_methodology`(문서 데이터)가 같은 개념의 다른 id로 존재.
> 관계가 분산되어 있음.

---

## 11.3 이슈 #1: Domain.name 영문 덮어쓰기 (3건)

### 발견

L4-Q3 Domain.name 보호 검증 쿼리로 발견.

### 원인 분석

```cypher
// 문서 적재 Cypher(예: db_001_010.cypher)에서:
MATCH (n) WHERE n.domain = 'DB' AND (n:Concept OR n:Technology)
MERGE (d:Domain {id: 'DB'})
// ↑ 여기까지는 정상 — MERGE로 기존 Domain 재사용

SET d.name = 'Database'   // ← 이것이 범인!
// 시드에서 설정한 '데이터베이스'가 'Database'로 덮어씌워짐
```

**근본 원인:** `MERGE + SET`은 노드를 재사용하면서 속성을 **무조건** 갱신합니다.
문서 적재 Cypher를 생성한 Claude Code가 Domain.name을 영문으로 SET한 것이 직접 원인.

### 수정

```cypher
// 3건 일괄 복구 (10초)
MATCH (d:Domain {id: 'DB'}) SET d.name = '데이터베이스';
MATCH (d:Domain {id: 'SE'}) SET d.name = '보안';
MATCH (d:Domain {id: 'SW'}) SET d.name = '소프트웨어공학';
```

### 재검증

```cypher
MATCH (d:Domain) WHERE NOT d.name =~ '.*[가-힣].*' RETURN d.id, d.name;
// → 0건 ✅ 해결 확인
```

### 재발 방지

Cypher 생성 규칙에 추가: **"Domain 노드의 name은 문서 Cypher에서 SET하지 않는다."**

### 교훈

> 📌 **MERGE + SET의 부작용을 이해하라.**
>
> MERGE는 "있으면 재사용"하지만, SET은 "무조건 덮어쓴다."
> 보호해야 할 속성이 있다면 SET 대신 ON CREATE SET을 사용하거나,
> 아예 해당 속성을 SET 목록에서 제외해야 합니다.

---

## 11.4 이슈 #2: 교차 라벨 중복 — function_point (1건)

### 발견

L4-Q1 교차 라벨 중복 쿼리로 발견.

### 원인 분석

```
시드 (00_schema.cypher):  MERGE (c:Concept {id: 'function_point'})
문서 (sw_001_010.cypher): MERGE (m:Method {id: 'function_point'})
```

같은 id `function_point`이지만 **라벨이 다릅니다** (Concept vs Method).
UNIQUE 제약조건은 라벨별이므로:
- `concept_id` 제약: Concept 라벨 내에서 function_point 유니크 ✅
- `method_id` 제약: Method 라벨 내에서 function_point 유니크 ✅
- 결과: **두 노드가 공존** — 제약조건은 정상이지만 의미적으로 중복

### 영향 분석

```cypher
// Method 노드의 관계 확인
MATCH (m:Method {id: 'function_point'})-[r]-(n)
RETURN type(r) AS rel, n.id AS connected;
// → MENTIONED_IN → SW_001.1 (1건)
// → BELONGS_TO → SW (1건)
```

Method에 2개 관계, Concept(시드)에 0개 관계 → 시드가 고립 상태

### 수정

```cypher
// Method의 MENTIONED_IN을 Concept으로 이전
MATCH (method:Method {id: 'function_point'})-[:MENTIONED_IN]->(doc:Document)
MATCH (seed:Concept {id: 'function_point'})
MERGE (seed)-[:MENTIONED_IN]->(doc);

// Method의 모든 관계 삭제 + Method 노드 삭제
MATCH (method:Method {id: 'function_point'})-[r]-()
DELETE r;
MATCH (method:Method {id: 'function_point'})
DELETE method;
```

### 재검증

```cypher
MATCH (a), (b) WHERE a.id = b.id AND elementId(a) < elementId(b)
RETURN a.id, labels(a), labels(b);
// → 0건 ✅ 해결 확인

// Concept에 관계가 이전되었는지 확인
MATCH (c:Concept {id: 'function_point'})-[:MENTIONED_IN]->(doc)
RETURN doc.id;
// → SW_001.1 ✅
```

### 교훈

> 📌 **제약조건은 라벨 내 유니크만 보장한다.**
>
> **교차 라벨 중복은 제약조건이 잡지 못합니다.**
> L4-Q1 쿼리를 **매 적재 후 반드시 실행**해야 합니다.
> 이 쿼리가 없으면 교차 라벨 중복은 **영원히 발견되지 않습니다.**

---

## 11.5 이슈 #3: 중복 노드 — agile vs agile_methodology (1건)

### 발견

L4-Q2 의미적 중복 검출 쿼리로 발견.

### 원인 분석

```
시드 id:   'agile'               (00_schema.cypher, exam_freq=158)
문서 id:   'agile_methodology'    (sw_001_010.cypher)
```

같은 "애자일"인데 id 네이밍이 달라서 MERGE가 다른 노드로 인식.

### 영향 분석

```cypher
MATCH (old:Concept {id: 'agile_methodology'})-[r]-(n)
RETURN type(r), startNode(r).id, endNode(r).id;
```

**결과:** agile_methodology에 5개 관계가 연결됨
- BELONGS_TO → SW
- HAS_TYPE → sw_development_methodology
- COMPARED_WITH ← waterfall_model
- COMPARED_WITH ← cbd_methodology
- MENTIONED_IN → SW_007

반면 시드 `agile`에는 **BELONGS_TO 1개만** 연결 → 사실상 고립

### 수정

```cypher
// HAS_TYPE 이전
MATCH (old:Concept {id: 'agile_methodology'})-[:HAS_TYPE]->(target)
MATCH (seed:Concept {id: 'agile'})
MERGE (seed)-[:HAS_TYPE]->(target);

// COMPARED_WITH 이전 (역방향)
MATCH (other)-[:COMPARED_WITH]->(old:Concept {id: 'agile_methodology'})
MATCH (seed:Concept {id: 'agile'})
MERGE (other)-[:COMPARED_WITH]->(seed);

// MENTIONED_IN 이전
MATCH (old:Concept {id: 'agile_methodology'})-[:MENTIONED_IN]->(doc)
MATCH (seed:Concept {id: 'agile'})
MERGE (seed)-[:MENTIONED_IN]->(doc);

// 관계 삭제 + 노드 삭제
MATCH (old:Concept {id: 'agile_methodology'})-[r]-() DELETE r;
MATCH (old:Concept {id: 'agile_methodology'}) DELETE old;
```

### 재검증

```cypher
MATCH (n:Concept {id: 'agile_methodology'}) RETURN count(n);
// → 0 ✅ old 노드 삭제 확인

MATCH (seed:Concept {id: 'agile'})-[r]-(n)
RETURN type(r), n.id;
// → 6개 관계 확인 (기존 1개 + 이전 5개) ✅
```

### 교훈

> 📌 **"id 네이밍의 일관성 = 그래프 품질의 80%"**
>
> 시드 id: `agile` / 문서 id: `agile_methodology`
> 이 불일치 하나가 노드 중복 → 관계 분산 → 시드 고립을 야기했습니다.
>
> **해결책:** Cypher 생성 시 시드 id 목록을 반드시 참조 자료로 제공.
> "이 목록에 있는 개념과 동일하면 시드 id를 그대로 사용하세요."

---

## 11.6 이슈 #4: Top 50 시드 미연결 (45/50 → 41/50)

### 발견

L3-Q3 시드-문서 연결률 쿼리로 발견. 50개 시드 중 45개가 Document와 MENTIONED_IN 관계 없음.

### 분석 — 간접 연결 탐색

직접 연결은 없지만, **관계 경로를 통한 간접 연결**이 있는지 확인:

```cypher
// 문서에 연결된 개념 → 그 개념의 상위(SUBCLASS_OF 등)가 시드인지
MATCH (concept)-[:MENTIONED_IN]->(doc:Document)
MATCH (concept)-[:SUBCLASS_OF|HAS_TYPE|IMPLEMENTS|DEPENDS_ON*1..2]->(seed:Concept)
WHERE seed.exam_frequency IS NOT NULL
  AND NOT (seed)-[:MENTIONED_IN]->(doc)
RETURN seed.id, seed.name_kr, doc.id, collect(DISTINCT concept.id) AS via
ORDER BY seed.id, doc.id;
```

**결과 (주요):**
- `artificial_intelligence` → AI_002~005 (하위 개념들 통해 간접 연결)
- `encryption` → SE_003~010 (하위 암호화 기술들 통해 간접 연결)
- `machine_learning` → AI_002, AI_004, AI_005

### 분석 — 텍스트 검색

정의문(definition)에 시드 이름이 포함되는 경우도 확인:

```cypher
MATCH (c)-[:MENTIONED_IN]->(doc:Document)
WHERE c.definition IS NOT NULL
WITH doc, c
MATCH (seed:Concept)
WHERE seed.exam_frequency IS NOT NULL
  AND NOT (seed)-[:MENTIONED_IN]->(doc)
  AND c.definition CONTAINS seed.name_kr
  AND size(seed.name_kr) > 2
RETURN DISTINCT seed.id, seed.name_kr, doc.id;
```

### 수정 — 19개 MENTIONED_IN 추가

분석 결과를 바탕으로 고신뢰 연결 19건을 추가:

```cypher
// AI 도메인
MATCH (seed:Concept {id: 'artificial_intelligence'}), (doc:Document)
WHERE doc.id IN ['AI_002', 'AI_003', 'AI_004', 'AI_005']
MERGE (seed)-[:MENTIONED_IN]->(doc);

MATCH (seed:Concept {id: 'machine_learning'}), (doc:Document)
WHERE doc.id IN ['AI_002', 'AI_004', 'AI_005']
MERGE (seed)-[:MENTIONED_IN]->(doc);

// SE 도메인
MATCH (seed:Concept {id: 'encryption'}), (doc:Document)
WHERE doc.id IN ['SE_003','SE_004','SE_005','SE_006','SE_007','SE_008','SE_009','SE_010']
MERGE (seed)-[:MENTIONED_IN]->(doc);

// DB 도메인
MATCH (seed:Concept {id: 'transaction'}), (doc:Document)
WHERE doc.id IN ['DB_006', 'DB_007']
MERGE (seed)-[:MENTIONED_IN]->(doc);

// SW 도메인
MATCH (seed:Concept {id: 'testing'}), (doc:Document {id: 'SW_006.2'})
MERGE (seed)-[:MENTIONED_IN]->(doc);

MATCH (seed:Concept {id: 'quality'}), (doc:Document {id: 'SW_001.1'})
MERGE (seed)-[:MENTIONED_IN]->(doc);
```

### 결과

연결된 시드: 5/50 → **12/50** (+7)
미연결 시드: 45 → **38** (적재된 도메인의 시드 중 대부분 해결)
나머지 38개: 아직 문서가 적재되지 않은 도메인(PM, MG, SV, OS, CA 등)의 시드 → STEP 6~7에서 해결

---

## 11.7 이슈 #5: BELONGS_TO 누락 (3건)

### 수정

```cypher
MATCH (c:Concept {id: 'critical_mass'}), (d:Domain {id: 'CA'})
MERGE (c)-[:BELONGS_TO]->(d);

MATCH (c:Concept {id: 'knowledge_based_society'}), (d:Domain {id: 'MG'})
MERGE (c)-[:BELONGS_TO]->(d);

MATCH (m:Metric {id: 'network_value_formula'}), (d:Domain {id: 'CA'})
MERGE (m)-[:BELONGS_TO]->(d);
```

### 재검증

```cypher
MATCH (n) WHERE n.domain IS NOT NULL AND NOT (n)-[:BELONGS_TO]->(:Domain)
  AND NOT n:Domain AND NOT n:Document AND NOT n:_GraphConfig
RETURN count(n);
// → 0 ✅
```

---

## 11.8 Before/After 정량 비교

### 수치 변화

| 항목 | Before | After | 변화 | 비고 |
|------|--------|-------|------|------|
| **Concept** | 231 | 230 | -1 | agile_methodology 병합 |
| **Method** | 54 | 53 | -1 | function_point 교차라벨 병합 |
| **MENTIONED_IN** | 166 | 185 | +19 | 시드-문서 연결 보강 |
| **BELONGS_TO** | 381 | 382 | +1 | 누락 3건 복구 (+ 이전 관계 조정) |
| **시드 연결** | 5/50 (10%) | 12/50 (24%) | +7 | |
| **Domain.name 오류** | 3건 | 0건 | 해결 | |
| **교차 라벨 중복** | 1건 | 0건 | 해결 | |
| **노드 중복** | 1건 | 0건 | 해결 | |
| **BELONGS_TO 누락** | 3건 | 0건 | 해결 | |

### 소요 시간

| 작업 | 시간 |
|------|------|
| L1~L5 전수 진단 | ~15분 |
| 이슈 분석 (원인 파악, 영향 범위) | ~20분 |
| 수정 Cypher 작성 + 실행 | ~10분 |
| 재검증 | ~5분 |
| **총 검증 시간** | **~50분** |

---

## 11.9 "검증 없이 넘어갔다면?"

검증을 건너뛰고 STEP 6(100개 적재)로 바로 진행했다면 어떻게 되었을까?

### 시나리오: 100개 적재 시 예상 문제

| 이슈 유형 | 46개에서 발생 건수 | 100개 추산 | 2,392개 추산 |
|----------|-------------------|-----------|-------------|
| Domain.name 덮어쓰기 | 3 | ~7 | ~150+ |
| 교차 라벨 중복 | 1 | ~3 | ~50+ |
| id 불일치 중복 | 1 | ~5 | ~100+ |
| BELONGS_TO 누락 | 3 | ~7 | ~150+ |
| **합계** | **8** | **~22** | **~450+** |

### 450건의 이슈를 나중에 수정한다면?

- 각 중복 노드의 관계를 하나씩 분석하여 이전해야 함
- 어떤 노드가 "원본"이고 어떤 것이 "복제"인지 판단해야 함
- 이미 연결된 관계가 복잡하게 얽혀 있어 단순 삭제 불가
- **추정 수정 시간: 3~5일 (vs 검증 50분)**

> 📌 **검증 비용 50분 vs 수정 비용 3일 = ROI 100배**
>
> 이것이 "10개에서 발견할 수 있는 문제를 1,000개 후에 발견하면
> 수정 비용이 100배"라는 말의 구체적 의미입니다.

---

## 11.10 [기업 박스] 대규모 그래프 검증 실무

> **기업의 100만+ 노드 그래프에서는 전수 검사가 불가능할 수 있습니다.**
>
> **샘플링 전략:**
> ```cypher
> // 도메인별 100개씩 랜덤 추출하여 검증
> MATCH (c:Concept)-[:BELONGS_TO]->(d:Domain)
> WITH d.id AS domain, collect(c) AS concepts
> UNWIND concepts[0..100] AS sample
> // ... 검증 쿼리 적용
> ```
>
> **증분 검증:**
> ```cypher
> // 최근 적재된 노드만 검증 (created_at 기반)
> MATCH (c:Concept)
> WHERE c.created_at > datetime() - duration('P1D')  // 최근 24시간
> // ... 검증 쿼리 적용
> ```
>
> **자동 알림:**
> - 교차 라벨 중복 발생 시 → Slack 알림
> - BELONGS_TO 누락률 5% 초과 시 → 적재 중단
> - 고립 노드 비율 10% 초과 시 → 리뷰 요청
>
> **검증 보고서 템플릿:**
> ```
> ═══════════════════════════════════════
> 스키마 검증 보고서
> 날짜: 2026-03-15
> 대상: v3 스키마, 46개 문서, 435 노드
> ═══════════════════════════════════════
>
> [L1 구조]  ✅ 제약 11/11, 인덱스 25/25
> [L2 데이터] ✅ NULL 0건, def 19.0%
> [L3 관계]  ⚠️ BELONGS_TO 누락 3건, 시드 연결 10%
> [L4 의미]  ⚠️ 교차라벨 1건, Domain.name 3건, 중복 1건
> [L5 성능]  ✅ 주요 쿼리 IndexSeek 확인
>
> 발견 이슈: 5건
> 수정 완료: 5건
> 잔여 이슈: 0건
>
> Before: 231 Concept, 166 MENTIONED_IN
> After:  230 Concept, 185 MENTIONED_IN
> ═══════════════════════════════════════
> ```

---

## [실습] 이 챕터의 5개 이슈를 자신의 그래프에서 재현

### 과제

이 챕터에서 다룬 5개 이슈를 의도적으로 재현하고, 진단 → 수정 → 재검증을 수행하세요.

### 재현 방법

```cypher
// 이슈 1 재현: Domain.name 덮어쓰기
MATCH (d:Domain {id: 'AI'}) SET d.name = 'Artificial Intelligence';

// 이슈 2 재현: 교차 라벨 중복
MERGE (:Method {id: 'testing', name_kr: '테스트 기법'});

// 이슈 3 재현: id 불일치 중복
MERGE (:Concept {id: 'machine_learning_v2', name_kr: '머신러닝', domain: 'AI'});

// 이슈 4 재현: (시드 미연결은 기본 상태에서 확인)

// 이슈 5 재현: BELONGS_TO 누락
MERGE (:Concept {id: 'test_orphan', name_kr: '테스트 고아', domain: 'AI'});
```

### 검증 → 수정 → 재검증

Ch.09의 진단 쿼리로 발견 → Ch.10의 수정 패턴으로 해결 → 같은 쿼리로 재검증

### 정리

```cypher
// 테스트 데이터 정리
MATCH (n) WHERE n.id IN ['machine_learning_v2', 'test_orphan']
DETACH DELETE n;
MATCH (m:Method {id: 'testing'}) DETACH DELETE m;
MATCH (d:Domain {id: 'AI'}) SET d.name = '인공지능';
```

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 실제 5건의 이슈를 발견 → 수정 → 재검증한 전 과정 재현    │
│                                                              │
│  2. 가장 위험한 이슈 = 교차 라벨 중복 (L4-Q1)               │
│     제약조건이 잡지 못함, 관계 분산, 검색 누락 야기          │
│                                                              │
│  3. 가장 흔한 이슈 = id 불일치 + Domain.name 덮어쓰기       │
│     근본 원인: Cypher 생성 시 규칙 미준수                    │
│     → 시드 참조 가이드 + Domain.name SET 금지로 예방         │
│                                                              │
│  4. 검증 ROI = 50분 vs 3일 (100배)                           │
│     "10개에서 잡는 비용 vs 1,000개 후 잡는 비용"             │
│                                                              │
│  5. Before/After 정량 비교로 검증 효과 증명                  │
│     Concept 231→230, MENTIONED_IN 166→185, 이슈 5→0         │
│                                                              │
│  다음 챕터: 반복순환 — 설계→적재→검증 사이클 (Ch.12)         │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```
