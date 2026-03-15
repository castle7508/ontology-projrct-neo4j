# Ch.09 — STEP 5: 스키마 검증 - 진단 프레임워크

> **"적재하면 끝이 아니다. 적재한 후에 진짜 시작이다."**

이 챕터는 스키마 검증 3부작의 첫 번째로, **"무엇을 어떻게 검증하는가"**에 집중합니다.
5계층 검증 프레임워크를 소개하고, 각 계층에서 사용하는 **30개 이상의 진단 쿼리**를
목적, 문법, 기대 결과, 이상 징후 판단 기준과 함께 카탈로그 형태로 제공합니다.

이 챕터의 모든 쿼리는 **복사-붙여넣기로 즉시 실행 가능**합니다.

---

## 9.1 왜 검증이 필수인가

### 9.1.1 "적재하면 끝" 이 아닌 이유

그래프 데이터베이스의 유연함은 양날의 검입니다.
Neo4j는 스키마를 강제하지 않으므로, **잘못된 데이터도 아무 에러 없이 들어갑니다.**

```
RDB: 외래키 위반 → 즉시 에러 → 잘못된 데이터 차단
Neo4j: 관계 방향 오류 → 에러 없음 → 조용히 쌓임 → 나중에 쿼리 결과 왜곡
```

이것이 **"그래프는 구조적 오류가 조용히 쌓인다"**는 말의 의미입니다.

### 9.1.2 검증 없는 그래프의 위험 — 실제 사례

우리 프로젝트에서 STEP 5 검증을 통해 발견한 실제 이슈들:

| 이슈 | 증상 | 검증 없이 방치했다면? |
|------|------|---------------------|
| Domain.name 영문 덮어쓰기 (3건) | `DB` → "Database" | 한글 기반 검색/표시 실패 |
| 교차 라벨 중복 (1건) | function_point가 Concept + Method | 관계 분산, 검색 누락 |
| 중복 노드 (1건) | agile vs agile_methodology | 관계 분산, 시드 미연결 |
| Top 50 시드 미연결 (45/50) | 시드와 문서 데이터 단절 | 시드 노드가 고립 → 무용지물 |
| BELONGS_TO 누락 (3건) | 도메인별 통계 부정확 | 도메인 필터링 시 누락 |

> 📌 **5개 도메인, 46개 문서, 435개 노드에서 이미 5건의 이슈가 발생했습니다.**
>
> 이 비율로 전체 2,392개 문서를 적재하면?
> 단순 추산: **~250건 이상의 이슈** — 수동 수정이 사실상 불가능한 수준.
> **검증은 선택이 아니라 생존입니다.**

### 9.1.3 검증의 투자 대비 수익 (ROI)

```
적재 시간:   10분 (Cypher 실행)
검증 시간:   30분 (진단 쿼리 실행 + 결과 분석)
수정 시간:   10분 (발견된 이슈 수정)
───────────────────────────
검증 포함 총 시간: 50분

vs

검증 없이 1,000개 적재 후 문제 발견:
수정 시간: 3일+ (중복 노드 추적, 관계 재매핑, 데이터 재적재)
```

> 💡 **10개에서 발견할 수 있는 문제를 1,000개 적재 후 발견하면,
> 수정 비용은 10배가 아니라 100배입니다.**
> 오류는 선형이 아니라 기하급수적으로 복잡해집니다.

---

## 9.2 5계층 검증 프레임워크

스키마 검증을 체계적으로 수행하기 위한 5계층 모델:

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  L5: 성능 검증       "빠른가?"                               │
│      쿼리 성능, 인덱스 효과, 실행 계획                       │
│                                                              │
│  L4: 의미 검증       "맞는가?"                               │
│      도메인 규칙 준수, 교차 라벨 중복, 시드 연결률            │
│                                                              │
│  L3: 관계 검증       "연결이 올바른가?"                      │
│      고립 노드, BELONGS_TO 누락, 방향 일관성, 순환 참조      │
│                                                              │
│  L2: 데이터 검증     "속성이 완전한가?"                      │
│      필수 속성 NULL, id 네이밍, 도메인 코드, 중복 이름       │
│                                                              │
│  L1: 구조 검증       "뼈대가 있는가?"                        │
│      제약조건, 인덱스, 노드/관계 수 분포                     │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

**핵심 원칙: 아래에서 위로 순서대로 검증합니다.**

왜? 하위 계층이 깨지면 상위 계층의 검증은 의미가 없습니다.
제약조건(L1)이 없으면 중복 노드(L4)를 막을 수 없고,
속성(L2)이 불완전하면 관계(L3) 검증 결과를 신뢰할 수 없습니다.

각 계층에서 실행하는 **진단 쿼리**를 상세히 살펴봅시다.

---

## 9.3 L1: 구조 검증 — "뼈대가 있는가?"

가장 기본적인 검증입니다. 제약조건, 인덱스, 노드/관계의 수 분포를 확인합니다.

### L1-Q1: 제약조건 전수 확인

```cypher
// Neo4j Browser에서 실행
SHOW CONSTRAINTS;
```

**기대 결과:** 11개 UNIQUE 제약조건 (노드 타입당 1개)

**이상 징후:**
- 11개 미만 → 특정 노드 타입의 제약조건 누락 → MERGE 시 중복 위험
- `FAILED` 상태 → 이미 중복 데이터 존재 → 중복 해소 후 재생성 필요

**왜 중요한가:**
제약조건이 없는 노드 타입에 MERGE하면, Neo4j가 id를 빠르게 찾지 못해
성능이 떨어지고, 동시 적재 시 중복이 발생할 수 있습니다.

---

### L1-Q2: 인덱스 전수 확인

```cypher
SHOW INDEXES;
```

**기대 결과:** 25개 인덱스
- 제약조건 인덱스 11개 (UNIQUE 제약의 자동 생성)
- 추가 Range 인덱스 12개
- Fulltext 인덱스 2개

**확인할 컬럼:**
- `state`: 모두 `ONLINE` 이어야 함
- `owningConstraint`: 제약조건 소유 인덱스인지 확인
- `type`: RANGE, FULLTEXT 등 올바른 타입인지

**이상 징후:**
- `state = 'FAILED'` → 인덱스 손상, 재생성 필요
- `state = 'POPULATING'` → 아직 구축 중, 잠시 대기

---

### L1-Q3: 라벨별 노드 수 분포

```cypher
CALL apoc.meta.stats() YIELD labels
RETURN labels;
```

**기대 결과 (우리 프로젝트, STEP 5 완료 후):**
```
{Concept: 230, Technology: 55, Method: 53, Standard: 12,
 Metric: 14, Threat: 9, Document: 46, Domain: 13}
```

**이상 징후:**
- 특정 라벨이 0 → 해당 도메인 적재 누락
- 예상보다 많음 → 중복 노드 가능성
- `_GraphConfig: 1` → n10s 설정 노드 (정상)

**왜 중요한가:**
노드 수 분포는 "전체 그래프의 건강 지표"입니다.
예상 수와 실제 수를 비교하여 적재 누락이나 중복을 조기에 발견할 수 있습니다.

---

### L1-Q4: 관계 타입별 수 분포

```cypher
CALL apoc.meta.stats() YIELD relTypesCount
RETURN relTypesCount;
```

**기대 결과:**
```
{SUBCLASS_OF: 27, HAS_TYPE: 61, IMPLEMENTS: 65, MENTIONED_IN: 185,
 BELONGS_TO: 382, HAS_COMPONENT: 31, COMPARED_WITH: 22, ...}
```

**이상 징후:**
- 예상하지 않은 관계 타입 존재 → 오타 또는 규칙 위반
- MENTIONED_IN이 Document 수보다 적음 → 문서 추적 누락
- BELONGS_TO가 총 노드 수보다 적음 → 도메인 연결 누락

---

### L1-Q5: 메타 그래프 시각화

```cypher
CALL apoc.meta.graph();
```

**용도:** 전체 스키마를 시각적으로 확인합니다.
Neo4j Browser에서 실행하면 노드 타입과 관계 타입이 그래프로 표시됩니다.

**확인 포인트:**
- 모든 노드 타입이 보이는가?
- 예상 관계가 올바른 방향으로 연결되어 있는가?
- 예상하지 않은 관계가 있는가?

---

## 9.4 L2: 데이터 검증 — "속성이 완전한가?"

노드와 관계의 속성이 올바르게 채워져 있는지 확인합니다.

### L2-Q1: 필수 속성 NULL 검사

```cypher
// Concept 노드: id, name, domain은 필수
MATCH (c:Concept)
WHERE c.id IS NULL OR c.name IS NULL OR c.domain IS NULL
RETURN c LIMIT 10;
```

**기대 결과:** 0건 (필수 속성 누락 없음)

**이상 징후:**
- id가 NULL → MERGE 매칭 불가, 사실상 고립 노드
- name이 NULL → 표시/검색 불가
- domain이 NULL → 도메인 필터링/BELONGS_TO 연결 불가

> 💡 **다른 노드 타입에도 동일 패턴을 적용하세요:**
> ```cypher
> // Technology, Method, Threat 등도 검사
> MATCH (t:Technology) WHERE t.id IS NULL OR t.name IS NULL RETURN t LIMIT 5;
> MATCH (m:Method) WHERE m.id IS NULL OR m.name IS NULL RETURN m LIMIT 5;
> MATCH (s:Standard) WHERE s.id IS NULL OR s.name IS NULL RETURN s LIMIT 5;
> ```
> 모든 노드 타입에서 id와 name은 필수입니다.

---

### L2-Q2: 속성 완전성 통계

```cypher
MATCH (c:Concept)
WITH count(*) AS total,
     sum(CASE WHEN c.definition IS NULL THEN 1 ELSE 0 END) AS no_def,
     sum(CASE WHEN c.name_kr IS NULL THEN 1 ELSE 0 END) AS no_kr
RETURN total,
       no_def, round(100.0 * no_def / total, 1) AS def_null_pct,
       no_kr,  round(100.0 * no_kr / total, 1) AS kr_null_pct;
```

**기대 결과 (Phase 1):**
```
total: 230, no_def: 44 (19.1%), no_kr: 0 (0%)
```

**판단 기준:**
- definition NULL 20% 이하 → 허용 (시드 노드는 definition 없이 생성)
- definition NULL 50% 이상 → 적재 품질 문제
- name_kr NULL → 즉시 수정 필요 (한글 표시 불가)

---

### L2-Q3: id 네이밍 규칙 위반 검출

```cypher
// 규칙: 영문 소문자 + 언더스코어 + 숫자만 허용
MATCH (c:Concept)
WHERE NOT c.id =~ '[a-z][a-z0-9_]*'
RETURN c.id, c.name_kr;
```

**기대 결과:** 0건

**잡히는 위반 사례:**
- 대문자 포함: `DeepLearning`
- 하이픈 포함: `deep-learning`
- 공백 포함: `deep learning`
- 한글 포함: `딥러닝`
- 숫자로 시작: `5g` ← 우리 프로젝트에 실제 존재! (허용 예외)

> 💡 `5g`처럼 숫자로 시작하는 id는 컨벤션 위반이지만,
> 의미 명확성이 높아 예외로 허용했습니다.
> 정규식을 `[a-z0-9][a-z0-9_]*`로 완화하여 대응할 수 있습니다.

---

### L2-Q4: 도메인 코드 유효성

```cypher
// 허용된 13개 도메인 코드만 사용되었는지 확인
MATCH (c:Concept)
WHERE NOT c.domain IN ['PM','MG','SW','SV','ST','AI','DS','AL','SE','DB','NW','CA','OS']
RETURN c.id, c.domain;
```

**기대 결과:** 0건

**이상 징후:**
- 오타: `'Ai'` (대소문자 혼재), `'ai'` (소문자)
- 미등록 도메인: `'ETC'`, `'MISC'`

---

### L2-Q5: 중복 이름 검출

```cypher
// 같은 name_kr을 가진 서로 다른 id의 Concept
MATCH (a:Concept), (b:Concept)
WHERE a.name_kr = b.name_kr AND a.id < b.id
RETURN a.id, b.id, a.name_kr;
```

**기대 결과:** 0건 또는 의도적 동명이 개념만

**이상 징후:**
- 같은 한글명인데 다른 id → 중복 노드 가능성 높음
- 예: id `agile`(name_kr: 애자일) vs id `agile_methodology`(name_kr: 애자일 방법론)
  → 같은 개념의 다른 표현일 수 있음 → 검토 필요

---

## 9.5 L3: 관계 검증 — "연결이 올바른가?"

노드 간 관계의 존재, 방향, 중복, 순환을 검증합니다.

### L3-Q1: 고립 노드 전수 검색

```cypher
// 관계가 하나도 없는 노드 (Domain, _GraphConfig 제외)
MATCH (n)
WHERE NOT (n)--() AND NOT n:Domain AND NOT n:_GraphConfig
RETURN labels(n)[0] AS label, n.id AS id, n.name_kr AS name_kr;
```

**기대 결과:** 0건 (적재된 도메인의 노드)

**판단 기준:**
- Document가 없는 도메인(ST, DS, AL)의 Domain 노드는 고립 허용
- 그 외 고립 노드 → 관계 생성 누락 → 즉시 수정

**왜 중요한가:**
고립 노드는 그래프 탐색에서 **도달 불가능**합니다.
"딥러닝과 연결된 모든 것"을 검색해도 고립 노드는 나타나지 않습니다.

---

### L3-Q2: BELONGS_TO 누락 검출

```cypher
// domain 속성은 있는데 Domain 노드와 연결되지 않은 노드
MATCH (n)
WHERE n.domain IS NOT NULL
  AND NOT (n)-[:BELONGS_TO]->(:Domain)
  AND NOT n:Domain AND NOT n:Document AND NOT n:_GraphConfig
RETURN labels(n)[0] AS label, n.id AS id, n.domain AS domain;
```

**기대 결과:** 0건

**이상 징후:**
- 노드가 존재하지만 BELONGS_TO 없음 → 도메인별 통계에서 누락
- 수정: `MATCH (n), (d:Domain {id: n.domain}) MERGE (n)-[:BELONGS_TO]->(d)`

---

### L3-Q3: MENTIONED_IN 누락 검출 (시드-문서 연결률)

```cypher
// 시드 노드 중 Document와 연결되지 않은 것
MATCH (seed:Concept)
WHERE seed.exam_frequency IS NOT NULL
OPTIONAL MATCH (seed)-[:MENTIONED_IN]->(doc:Document)
WITH seed, count(doc) AS doc_links
RETURN
  count(seed) AS total_seeds,
  sum(CASE WHEN doc_links > 0 THEN 1 ELSE 0 END) AS connected,
  sum(CASE WHEN doc_links = 0 THEN 1 ELSE 0 END) AS unconnected;
```

**기대 결과 (STEP 5 완료 후):**
```
total_seeds: 50, connected: 12, unconnected: 38
```

**판단 기준:**
- 적재된 도메인의 시드가 미연결 → 즉시 조사
- 미적재 도메인의 시드가 미연결 → 정상 (STEP 6~7에서 해결)

---

### L3-Q4: 관계 방향 일관성

```cypher
// SUBCLASS_OF의 방향 검증: 하위→상위 방향이 맞는가?
// 빈도가 높은 개념이 하위에 있으면 방향 의심
MATCH (child)-[:SUBCLASS_OF]->(parent)
WHERE child.exam_frequency IS NOT NULL
  AND parent.exam_frequency IS NOT NULL
  AND child.exam_frequency > parent.exam_frequency * 2
RETURN child.id AS child, child.exam_frequency AS child_freq,
       parent.id AS parent, parent.exam_frequency AS parent_freq;
```

**기대 결과:** 0건 또는 정당한 예외만

**판단 기준:**
- 하위 개념이 상위보다 출제 빈도가 2배 이상 높으면 방향 의심
- 예: "테스트(922회)→소프트웨어공학" — 이 방향은 맞지만 빈도가 높으므로 주의 확인

> ⚠️ 이 쿼리는 **경험적 판단 도구**입니다.
> 빈도가 높다고 반드시 방향이 틀린 것은 아닙니다.
> 결과가 나오면 사람이 의미적으로 확인해야 합니다.

---

### L3-Q5: 순환 참조 검출

```cypher
// SUBCLASS_OF 체인에서 순환 발생 여부
MATCH path = (n)-[:SUBCLASS_OF*2..5]->(n)
RETURN [node IN nodes(path) | node.id] AS cycle
LIMIT 5;
```

**기대 결과:** 0건 (순환 없음)

**이상 징후:**
- 순환 발견 → 계층 구조 파괴 → 즉시 수정
- 예: A→B→C→A 순환 → 관계 하나를 삭제하여 해소

**왜 위험한가:**
순환이 있으면 `MATCH (n)-[:SUBCLASS_OF*]->(root)` 쿼리가
무한 루프에 빠지거나 메모리를 과도하게 사용합니다.

---

### L3-Q6: 중복 관계 검출

```cypher
// 같은 노드 쌍 사이에 같은 타입의 관계가 2개 이상
MATCH (a)-[r1]->(b), (a)-[r2]->(b)
WHERE elementId(r1) < elementId(r2) AND type(r1) = type(r2)
RETURN a.id AS from, type(r1) AS rel_type, b.id AS to
LIMIT 10;
```

**기대 결과:** 0건

**이상 징후:**
- 중복 관계 → MERGE 대신 CREATE를 사용했거나, 같은 Cypher를 2번 실행
- 수정: 중복 중 하나 삭제

---

## 9.6 L4: 의미 검증 — "맞는가?"

가장 미묘하고 중요한 검증입니다.
도메인 규칙 준수, 교차 라벨 중복, 시드 연결 등 **의미적 정확성**을 확인합니다.

### L4-Q1: 교차 라벨 중복 검출 (같은 id, 다른 라벨)

```cypher
// 가장 위험한 유형의 중복: 제약조건이 잡지 못하는 중복
MATCH (a), (b)
WHERE a.id = b.id AND elementId(a) < elementId(b)
RETURN a.id AS shared_id,
       labels(a) AS label_a,
       labels(b) AS label_b;
```

**기대 결과:** 0건

**이상 징후:**
- Concept과 Method가 같은 id → Ch.10의 노드 병합으로 해결
- Concept과 Technology가 같은 id → 라벨 판단 오류 → 검토 후 하나 삭제

**왜 위험한가:**
UNIQUE 제약조건은 **라벨 내** 고유성만 보장합니다.
`(:Concept {id: 'x'})` + `(:Method {id: 'x'})`는 제약조건에 걸리지 않습니다.
이 쿼리 없이는 **절대 발견할 수 없는** 은밀한 버그입니다.

> ⚠️ **대규모 그래프에서의 성능 주의:**
>
> 이 쿼리는 `MATCH (a), (b)` 카르테시안 프로덕트를 사용합니다.
> 435노드에서는 ~189,000 조합으로 즉시 실행되지만,
> 10,000노드에서는 ~1억 조합 → 매우 느립니다.
>
> **대규모 대안:**
> ```cypher
> // 라벨별로 분리하여 검사 (효율적)
> MATCH (a:Concept), (b:Method) WHERE a.id = b.id
> RETURN a.id, labels(a), labels(b)
> UNION
> MATCH (a:Concept), (b:Technology) WHERE a.id = b.id
> RETURN a.id, labels(a), labels(b);
> // → 라벨 쌍별로 검사하면 각각 인덱스 활용 가능
> ```

> 💡 **우리 프로젝트의 실제 사례:**
> `function_point`가 Concept(시드)과 Method(문서 데이터)로 동시 존재했습니다.
> 이 쿼리로 발견 → Method의 관계를 Concept으로 이전 → Method 삭제.

---

### L4-Q2: 의미적 중복 검출 (다른 id, 유사한 개념)

```cypher
// 같은 name_kr이지만 다른 id (동일 개념의 중복 가능성)
MATCH (a:Concept), (b:Concept)
WHERE a.name_kr = b.name_kr AND a.id < b.id
RETURN a.id, b.id, a.name_kr;
```

```cypher
// name이 부분적으로 겹치는 경우 (유사 개념)
MATCH (a:Concept), (b:Concept)
WHERE a.id <> b.id
  AND (a.name CONTAINS b.name OR b.name CONTAINS a.name)
  AND size(a.name) > 3 AND size(b.name) > 3
RETURN a.id, a.name, b.id, b.name
LIMIT 20;
```

**기대 결과:** 의도적 유사 개념만 (예: `strong_ai` ⊃ `ai`)

**이상 징후:**
- `agile` vs `agile_methodology` → 같은 개념의 중복 → 병합 필요
- `encryption` vs `symmetric_key_encryption` → 상위-하위 관계 → 정상 (SUBCLASS_OF로 연결)

---

### L4-Q3: Domain.name 보호 검증

```cypher
// Domain.name이 영문으로 바뀌었는지 확인
MATCH (d:Domain)
WHERE NOT d.name =~ '.*[가-힣].*'
RETURN d.id, d.name;
```

**기대 결과:** 0건 (모든 Domain.name이 한글)

**이상 징후:**
- DB → "Database", SE → "Security" 등
- 원인: 문서 적재 Cypher에서 Domain.name을 SET으로 덮어씀
- 수정: `MATCH (d:Domain {id: 'DB'}) SET d.name = '데이터베이스'`

---

### L4-Q4: 시드-문서 연결 상세

```cypher
// 적재된 도메인의 시드 중 미연결 목록
MATCH (seed:Concept)
WHERE seed.exam_frequency IS NOT NULL
OPTIONAL MATCH (seed)-[:MENTIONED_IN]->(doc:Document)
WITH seed, count(doc) AS doc_links
WHERE doc_links = 0
RETURN seed.id, seed.name_kr, seed.domain
ORDER BY seed.domain, seed.id;
```

**용도:** 어떤 시드가 아직 문서와 연결되지 않았는지 구체적으로 파악

---

### L4-Q5: 관계 타입별 노드 타입 조합 검증

```cypher
// 각 관계 타입이 어떤 노드 타입 쌍 사이에 존재하는지
MATCH (a)-[r]->(b)
WITH type(r) AS rel_type,
     labels(a)[0] AS from_label,
     labels(b)[0] AS to_label,
     count(*) AS cnt
RETURN rel_type, from_label, to_label, cnt
ORDER BY rel_type, cnt DESC;
```

**용도:** 예상하지 않은 노드 타입 조합 발견

**이상 징후:**
- `SUBCLASS_OF` 관계가 `Concept → Technology` 사이에 존재 → 의미적 오류
  (SUBCLASS_OF는 같은 타입 간 계층이어야 함)
- `IMPLEMENTS` 관계가 `Concept → Concept` 사이에 존재 → 라벨 오류 가능

---

## 9.7 L5: 성능 검증 — "빠른가?"

현재 규모(435노드)에서는 성능 문제가 없지만,
1,000개+ 적재 전에 쿼리 효율을 확인해두어야 합니다.

### L5-Q1: PROFILE로 실행 계획 확인

```cypher
// 핵심 쿼리의 실행 계획 확인
PROFILE
MATCH (c:Concept {domain: 'AI'})-[:SUBCLASS_OF*1..3]->(root)
RETURN c.name_kr, root.name_kr;
```

**결과 읽는 법:**

```
// 좋은 실행 계획: NodeIndexSeek 사용
+--------------------+------------------------------------------+------+--------+
| Operator           | Details                                  | Rows | DB Hits|
+--------------------+------------------------------------------+------+--------+
| +ProduceResults    | c.name_kr, root.name_kr                  |   15 |     30 |
| +VarLengthExpand   | (c)-[:SUBCLASS_OF*1..3]->(root)          |   15 |     45 |
| +NodeIndexSeek     | RANGE INDEX c:Concept(domain) = 'AI'     |   30 |     31 |
+--------------------+------------------------------------------+------+--------+
Total database accesses: 106

// 나쁜 실행 계획: NodeByLabelScan + Filter 사용
+--------------------+------------------------------------------+------+--------+
| Operator           | Details                                  | Rows | DB Hits|
+--------------------+------------------------------------------+------+--------+
| +Filter            | c.domain = 'AI'                          |   30 |    230 |
| +NodeByLabelScan   | Concept                                  |  230 |    231 |
+--------------------+------------------------------------------+------+--------+
Total database accesses: 461
```

**핵심 지표:**
- `NodeIndexSeek` → 인덱스 활용 (좋음)
- `NodeByLabelScan` + `Filter` → 전체 스캔 (나쁨)
- `DB Hits` → 낮을수록 좋음 (데이터 접근 횟수)

---

### L5-Q2: 느린 쿼리 패턴 식별

```cypher
// [위험] 가변 길이 경로에 상한 없음
MATCH (a)-[:SUBCLASS_OF*]->(b)  // ❌ 무한 탐색 가능
RETURN a, b;

// [안전] 상한 설정
MATCH (a)-[:SUBCLASS_OF*1..5]->(b)  // ✅ 최대 5-hop
RETURN a, b;
```

```cypher
// [위험] 카르테시안 프로덕트 (WHERE 없는 다중 MATCH)
MATCH (a:Concept), (b:Concept)  // ❌ 230 × 230 = 52,900 조합!
RETURN a, b;

// [안전] 관계 기반 또는 WHERE 조건 추가
MATCH (a:Concept)-[:SUBCLASS_OF]->(b:Concept)  // ✅ 관계 있는 쌍만
RETURN a, b;
```

```cypher
// [위험] 라벨 없는 전체 스캔
MATCH (n)  // ❌ 모든 노드 스캔
WHERE n.id = 'deep_learning'
RETURN n;

// [안전] 라벨 명시
MATCH (n:Concept {id: 'deep_learning'})  // ✅ 인덱스 활용
RETURN n;
```

---

### L5-Q3: 인덱스 활용률 확인

```cypher
// EXPLAIN으로 실행하지 않고 계획만 확인
EXPLAIN
MATCH (c:Concept {name_kr: '딥러닝'})
RETURN c;
// → NodeIndexSeek이 보이면 인덱스 활용 ✅
// → NodeByLabelScan이 보이면 인덱스 미활용 ❌
```

> 📌 **PROFILE vs EXPLAIN:**
>
> | | PROFILE | EXPLAIN |
> |---|---------|---------|
> | 쿼리 실행 | ✅ 실행함 | ❌ 실행 안 함 |
> | 실제 Rows/DB Hits | ✅ 표시 | ❌ 추정값만 |
> | 데이터 변경 쿼리 | ⚠️ 실제 변경됨! | ✅ 안전 (계획만) |
> | 용도 | 성능 측정 | 실행 계획 확인 |
>
> **DELETE/SET 쿼리에는 EXPLAIN을, SELECT 쿼리에는 PROFILE을 사용하세요.**

---

## 9.8 검증 실행 체크리스트

모든 검증 쿼리를 순서대로 실행하기 위한 체크리스트:

### L1: 구조 검증
- [ ] L1-Q1: 제약조건 11개 확인 (`SHOW CONSTRAINTS`)
- [ ] L1-Q2: 인덱스 25개, 모두 ONLINE (`SHOW INDEXES`)
- [ ] L1-Q3: 라벨별 노드 수가 예상과 일치 (`apoc.meta.stats`)
- [ ] L1-Q4: 관계 타입별 수가 예상과 일치
- [ ] L1-Q5: 메타 그래프가 설계와 일치 (`apoc.meta.graph`)

### L2: 데이터 검증
- [ ] L2-Q1: 필수 속성 NULL 0건
- [ ] L2-Q2: definition NULL 비율 20% 이하
- [ ] L2-Q3: id 네이밍 규칙 위반 0건
- [ ] L2-Q4: 도메인 코드 유효성 위반 0건
- [ ] L2-Q5: 의도하지 않은 중복 이름 0건

### L3: 관계 검증
- [ ] L3-Q1: 고립 노드 0건 (미적재 도메인 제외)
- [ ] L3-Q2: BELONGS_TO 누락 0건
- [ ] L3-Q3: 시드 연결률 확인 (적재 도메인 시드 100%)
- [ ] L3-Q4: SUBCLASS_OF 방향 이상 0건
- [ ] L3-Q5: 순환 참조 0건
- [ ] L3-Q6: 중복 관계 0건

### L4: 의미 검증
- [ ] L4-Q1: 교차 라벨 중복 0건
- [ ] L4-Q2: 의미적 중복 검토 완료
- [ ] L4-Q3: Domain.name 모두 한글
- [ ] L4-Q4: 시드-문서 미연결 사유 확인
- [ ] L4-Q5: 관계-노드 타입 조합 정상

### L5: 성능 검증
- [ ] L5-Q1: 핵심 쿼리 PROFILE 확인 (NodeIndexSeek 사용)
- [ ] L5-Q2: 느린 쿼리 패턴 없음
- [ ] L5-Q3: 주요 쿼리 인덱스 활용 확인

---

## [기업 박스] 지속적 검증 체계

> **기업 환경에서는 검증을 일회성이 아닌 지속적으로 수행해야 합니다.**
>
> **CI/CD 파이프라인 통합:**
> ```bash
> # 적재 스크립트 실행 후 자동 검증
> cypher-shell < data/load_batch_042.cypher
>
> # L1~L4 검증 쿼리 실행
> cypher-shell < validation/check_all.cypher > results.txt
>
> # 결과에 "FAIL" 포함 시 알림
> if grep -q "FAIL" results.txt; then
>   echo "VALIDATION FAILED" | notify-team
> fi
> ```
>
> **모니터링 대시보드 (Grafana + Neo4j Metrics):**
> - 노드/관계 수 추이 그래프
> - 고립 노드 비율 실시간 표시
> - 쿼리 응답 시간 모니터링
> - 인덱스 활용률 추적
>
> **검증 자동화 스크립트:**
> ```python
> # Python으로 검증 자동화
> from neo4j import GraphDatabase
>
> def validate_graph(session):
>     # L1: 구조 검증
>     constraints = session.run("SHOW CONSTRAINTS").data()
>     assert len(constraints) >= 11, f"FAIL: 제약조건 {len(constraints)}개 (기대: 11)"
>
>     # L3: 고립 노드
>     orphans = session.run("""
>         MATCH (n) WHERE NOT (n)--() AND NOT n:Domain AND NOT n:_GraphConfig
>         RETURN count(n) AS cnt
>     """).single()["cnt"]
>     assert orphans == 0, f"FAIL: 고립 노드 {orphans}개"
>
>     # L4: 교차 라벨 중복
>     cross = session.run("""
>         MATCH (a), (b) WHERE a.id = b.id AND elementId(a) < elementId(b)
>         RETURN count(*) AS cnt
>     """).single()["cnt"]
>     assert cross == 0, f"FAIL: 교차 라벨 중복 {cross}건"
>
>     print("ALL VALIDATIONS PASSED ✅")
> ```
>
> **100만 노드 그래프에서의 전략:**
> - 전수 검사 대신 **샘플링**: 도메인별 100개씩 랜덤 추출하여 검증
> - **증분 검증**: 새로 적재된 노드만 검증 (created_at 기준)
> - **통계 기반**: 비율/분포의 이상 변동을 탐지

---

## 9.8 온톨로지 품질 자가 진단

L1~L5 검증은 **"데이터가 올바른가?"**를 확인합니다.
하지만 **"온톨로지 모델 자체가 좋은가?"**는 별도의 질문입니다.
다음 4가지 기준으로 온톨로지 모델의 품질을 자가 진단하세요.

### 진단 기준 4가지

| 기준 | 질문 | 검증 방법 |
|------|------|-----------|
| **완전성** (Completeness) | 도메인의 핵심 개념이 **모두** 포함되었는가? | 도메인 전문가에게 "빠진 개념이 있나요?" 질문 |
| **일관성** (Consistency) | 관계 방향과 의미가 **모순 없는가**? | A→B SUBCLASS_OF이면 B→A SUBCLASS_OF가 없어야 함 |
| **간결성** (Conciseness) | 불필요한 **중복 노드/관계**가 없는가? | 교차 라벨 중복, 의미적 중복 검증 (L4) |
| **확장성** (Extensibility) | 새 도메인 추가 시 기존 스키마가 **깨지지 않는가**? | 가상의 새 도메인으로 MERGE 시뮬레이션 |

### 자가 진단 쿼리

```cypher
// 완전성: 도메인별 Concept 수가 문서 수의 최소 10% 이상인가?
MATCH (d:Domain)
OPTIONAL MATCH (c:Concept)-[:BELONGS_TO]->(d)
WITH d, count(c) AS concept_count
RETURN d.id AS 도메인,
       d.doc_count AS 문서수,
       concept_count AS 추출된개념수,
       round(100.0 * concept_count / d.doc_count, 1) AS '추출률(%)',
       CASE WHEN concept_count < d.doc_count * 0.1
            THEN '⚠️ 추출 부족' ELSE '✅ 정상' END AS 판정
ORDER BY concept_count * 1.0 / d.doc_count ASC

// 일관성: 양방향 SUBCLASS_OF 모순 검출
MATCH (a)-[:SUBCLASS_OF]->(b)-[:SUBCLASS_OF]->(a)
RETURN a.id, b.id, '⚠️ 양방향 계층 모순' AS 이슈

// 확장성: 새 도메인 'TEST'를 추가해도 기존 쿼리가 깨지지 않는지 확인
// (실제 노드를 만들지 않고 EXPLAIN으로 계획만 확인)
EXPLAIN
MATCH (c:Concept {domain: 'TEST'})-[:BELONGS_TO]->(d:Domain {id: 'TEST'})
RETURN c
```

> 💡 **언제 이 진단을 수행하는가?**
>
> - **STEP 5 검증 완료 후**: L1~L5가 모두 통과한 뒤 모델 자체를 점검
> - **새 도메인 추가 시**: 기존 스키마와의 호환성 확인
> - **STEP 8(GraphRAG) 진입 전**: 활용 단계에 들어가기 전 최종 품질 확인

---

## [실습] 자신의 그래프에서 5계층 검증 전수 실행

### 과제

위 체크리스트의 모든 쿼리를 Neo4j Browser에서 실행하고 결과를 기록하세요.

### 진행 방법

**STEP 1: L1 구조 검증**
```cypher
SHOW CONSTRAINTS;
SHOW INDEXES;
CALL apoc.meta.stats() YIELD labels, relTypesCount RETURN labels, relTypesCount;
```

**STEP 2: L2 데이터 검증**
```cypher
// 필수 속성 NULL + 완전성 통계 + id 규칙 + 도메인 코드
// (위 L2-Q1~Q5 쿼리를 순서대로 실행)
```

**STEP 3: L3 관계 검증**
```cypher
// 고립 노드 + BELONGS_TO + 시드 연결률 + 방향 + 순환 + 중복
// (위 L3-Q1~Q6 쿼리를 순서대로 실행)
```

**STEP 4: L4 의미 검증**
```cypher
// 교차 라벨 + 의미적 중복 + Domain.name + 시드 상세 + 타입 조합
// (위 L4-Q1~Q5 쿼리를 순서대로 실행)
```

**STEP 5: L5 성능 검증**
```cypher
// PROFILE 핵심 쿼리 + 느린 패턴 확인
// (위 L5-Q1~Q3 쿼리를 실행)
```

### 기록 템플릿

```
검증 일시: _______________
검증 대상: ___개 노드, ___개 관계

L1: 제약조건 ___개/11, 인덱스 ___개/25, 상태: ___
L2: 필수속성 NULL ___건, def NULL ___%, id 위반 ___건
L3: 고립 ___건, BELONGS_TO 누락 ___건, 순환 ___건
L4: 교차라벨 ___건, Domain.name 이상 ___건
L5: 주요 쿼리 인덱스 활용: ___

발견된 이슈:
1. _______________
2. _______________

조치 계획:
1. _______________
2. _______________
```

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 5계층 프레임워크: L1(구조) → L2(데이터) → L3(관계)      │
│     → L4(의미) → L5(성능), 아래에서 위로 순서대로            │
│                                                              │
│  2. 핵심 진단 쿼리: 20+ 쿼리, 모두 복사-붙여넣기 실행 가능  │
│     각 쿼리에 기대 결과 + 이상 징후 + 판단 기준 포함        │
│                                                              │
│  3. 가장 위험한 이슈 = 교차 라벨 중복 (L4-Q1)               │
│     제약조건이 잡지 못함, 이 쿼리 없이는 발견 불가           │
│                                                              │
│  4. 검증은 선택이 아니라 생존                                │
│     435노드에서 5건 이슈 → 2,392 문서 적재 시 ~250건 예상   │
│     10개에서 잡는 비용 vs 1,000개 후 잡는 비용 = 1:100      │
│                                                              │
│  다음 챕터: 발견된 이슈를 수정하는 패턴 (Ch.10)              │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 9.8 OntoQA 지표 — 검증의 정량적 척도

5계층 검증 프레임워크는 **"이슈를 발견"**하는 도구입니다.
하지만 "이 그래프의 전체적인 품질이 얼마나 좋은가?"를 **수치로 표현**하려면
별도의 지표가 필요합니다.

**OntoQA**(Tartir, Arpinar & Sheth, 2005)는 온톨로지의 구조적 품질을
정량적으로 측정하는 프레임워크입니다. 원래 RDF/OWL 온톨로지를 위해 설계되었지만,
Property Graph에도 적용할 수 있습니다.

### 9.8.1 Schema Metrics — 스키마 자체의 품질

**① Relationship Richness (관계 풍부도)**

> 전체 관계 중 "계층(SUBCLASS_OF) 이외의 관계"가 차지하는 비율.
> 높을수록 스키마가 다양한 의미를 표현합니다.

```cypher
// Relationship Richness = (Non-hierarchy Rels) / (Total Rels)
MATCH ()-[r]->()
WITH count(r) AS total_rels
MATCH ()-[r]->()
WHERE type(r) <> 'SUBCLASS_OF'
WITH count(r) AS non_hier_rels, total_rels
RETURN round(1.0 * non_hier_rels / total_rels, 3) AS relationship_richness;
// 우리 프로젝트 기대값: ~0.97 (27 SUBCLASS_OF / 875 total → 매우 풍부)
// 해석: 0.5 미만 → 택소노미 수준, 0.7 이상 → 풍부한 온톨로지
```

**② Attribute Richness (속성 풍부도)**

> 노드 타입당 평균 속성 수. 높을수록 개체를 상세하게 기술합니다.

```cypher
// Attribute Richness = Avg(속성 수 per 노드 타입)
MATCH (n)
WHERE NOT n:_GraphConfig  // 시스템 노드 제외
WITH labels(n)[0] AS label, avg(size(keys(n))) AS avg_props
RETURN label, round(avg_props, 1) AS avg_properties
ORDER BY avg_properties DESC;
// 해석: 3 미만 → 빈약 (id만 있는 노드?), 5~8 → 적정, 10+ → 과다 (속성 비대)
```

**③ Inheritance Richness (계층 풍부도)**

> 평균 하위 클래스 수. 온톨로지의 일반화/특수화 정도를 나타냅니다.

```cypher
// Inheritance Richness = Avg(자식 수 per 부모 노드)
MATCH (child)-[:SUBCLASS_OF]->(parent)
WITH parent, count(child) AS children
RETURN round(avg(children), 2) AS inheritance_richness,
       max(children) AS max_children,
       min(children) AS min_children;
// 해석: 1.0 → 선형 (각 노드에 자식 1개), 3+ → 넓은 계층
```

### 9.8.2 Instance Metrics — 적재된 데이터의 품질

**④ Class Utilization (노드 타입 활용률)**

> 인스턴스(노드)가 존재하는 노드 타입의 비율. 설계만 하고 데이터를 안 넣은 타입이 있으면 낮아집니다.

```cypher
// 제약조건이 있는 라벨 vs 실제 노드가 있는 라벨
SHOW CONSTRAINTS
YIELD labelsOrTypes
WITH collect(DISTINCT labelsOrTypes[0]) AS designed_labels
MATCH (n)
WITH designed_labels, collect(DISTINCT labels(n)[0]) AS populated_labels
RETURN size(populated_labels) AS 사용됨,
       size(designed_labels) AS 설계됨,
       round(1.0 * size(populated_labels) / size(designed_labels), 2) AS utilization;
// 현재: 9/11 (Question, ExamSession 미적재) = 0.82
// STEP 6~7 후: 11/11 = 1.0 목표
```

**⑤ Relationship Utilization (관계 타입 활용률)**

> 실제 사용되는 관계 타입의 비율.

```cypher
// 설계된 관계 타입 목록과 실제 비교
WITH ['SUBCLASS_OF','HAS_TYPE','INSTANCE_OF','IMPLEMENTS','HAS_COMPONENT',
      'HAS_PHASE','COMPARED_WITH','DEPENDS_ON','USES','THREATENS',
      'COUNTERED_BY','EXPLOITS','DEFINED_BY','MEASURED_BY','EVOLVED_FROM',
      'BELONGS_TO','MENTIONED_IN'] AS designed
MATCH ()-[r]->()
WITH designed, collect(DISTINCT type(r)) AS used
RETURN size(used) AS 사용됨,
       size(designed) AS 설계됨,
       round(1.0 * size(used) / size(designed), 2) AS utilization,
       [x IN designed WHERE NOT x IN used] AS 미사용;
```

### 9.8.3 OntoQA 종합 대시보드

검증 시 아래 쿼리를 실행하면 한눈에 그래프 품질을 파악할 수 있습니다:

```cypher
// OntoQA 종합 대시보드
MATCH ()-[r]->()
WITH count(r) AS total_rels
MATCH ()-[r]->() WHERE type(r) <> 'SUBCLASS_OF'
WITH count(r) AS non_hier, total_rels
MATCH (n) WHERE NOT n:_GraphConfig
WITH non_hier, total_rels,
     count(n) AS total_nodes, avg(size(keys(n))) AS avg_props
RETURN
  round(1.0 * non_hier / total_rels, 3)   AS 관계_풍부도,
  round(avg_props, 1)                      AS 속성_풍부도,
  total_nodes                              AS 총_노드,
  total_rels                               AS 총_관계,
  round(1.0 * total_rels / total_nodes, 1) AS 관계_노드_비율;
```

**판단 기준 (가이드라인):**

| 지표 | 빈약 | 적정 | 풍부 |
|------|------|------|------|
| 관계 풍부도 | <0.5 | 0.5~0.8 | >0.8 |
| 속성 풍부도 | <3 | 3~8 | >8 |
| 관계:노드 비율 | <1.0 | 1.0~3.0 | >3.0 |
| 타입 활용률 | <0.7 | 0.7~0.9 | >0.9 |

> 💡 **"지표는 나침반이지 목적지가 아니다"**
>
> OntoQA 지표가 높다고 온톨로지가 완벽한 것은 아닙니다.
> 지표는 **경향**을 보여줄 뿐, 최종 판단은 "질문에 답할 수 있는가?"(QDM)입니다.
> 관계 풍부도가 0.99인데 핵심 질문에 답 못 하면 쓸모없고,
> 0.6인데 모든 질문에 답할 수 있으면 충분합니다.
