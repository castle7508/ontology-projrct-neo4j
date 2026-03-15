# Ch.07 — STEP 3: 스키마 설계 - Cypher 구현

> **"설계도가 아무리 훌륭해도, Cypher로 구현하지 못하면 소용없다."**

이 챕터는 스키마 설계 3부작의 마지막으로, **"설계를 어떻게 Cypher 코드로 변환하는가"**에 집중합니다.
Ch.05에서 "왜" 이렇게 설계하는지, Ch.06에서 "무엇을" 설계하는지 다루었다면,
이 챕터에서는 **설계서의 각 요소를 Neo4j에 실제로 구현하는 방법**을 다룹니다.

우리 프로젝트의 `00_schema.cypher` 230줄을 라인 단위로 해설하면서,
각 구문의 문법, 설계 근거, 대안, 주의사항을 상세히 설명합니다.

---

## 7.1 설계 → Cypher 변환 체계

스키마 설계서의 각 요소는 Cypher 구문으로 1:1 매핑됩니다:

```
┌──────────────────────┬──────────────────────────────────────────────┐
│ 설계서 요소           │ Cypher 구현                                  │
├──────────────────────┼──────────────────────────────────────────────┤
│ 노드 타입 11개       │ CREATE CONSTRAINT ... IS UNIQUE (11개)       │
│ 검색 속성            │ CREATE INDEX ... (12개)                      │
│ 키워드 검색          │ CREATE FULLTEXT INDEX ... (2개)              │
│ 도메인 분류          │ MERGE (:Domain {id:...}) SET ... (13개)     │
│ 시드 노드            │ MERGE (:Concept {id:...}) SET ... (50개)    │
│ 시드→도메인 연결     │ MATCH+MERGE 일괄 연결 (1개)                  │
│ 검증 쿼리            │ SHOW CONSTRAINTS; SHOW INDEXES; (주석)       │
└──────────────────────┴──────────────────────────────────────────────┘
```

이 요소들의 **실행 순서**가 중요합니다:

```
1단계: 제약조건 → 인덱스 → 전문검색 인덱스  (구조 먼저)
2단계: 도메인 노드 생성                       (분류 체계)
3단계: 시드 노드 생성                         (뼈대)
4단계: 시드→도메인 관계                       (연결)
5단계: 검증                                   (확인)
```

> 📌 **[설계 원칙] "구조(제약조건/인덱스)를 먼저 만들고, 데이터(노드/관계)를 나중에 넣어라."**
>
> 왜? 제약조건이 있어야 MERGE가 중복을 올바르게 방지합니다.
> 제약조건 없이 MERGE하면, 매칭 키가 인덱스를 타지 않아 성능도 떨어집니다.

---

## 7.2 제약조건 (Constraints) 상세

### 7.2.1 왜 제약조건이 필요한가

제약조건은 **데이터 무결성의 첫 번째 방어선**입니다.

온톨로지에서 제약조건이 특히 중요한 이유:
1. **MERGE의 정확성 보장**: MERGE는 id로 매칭하는데, id에 UNIQUE 제약이 없으면 느리고 불안정
2. **중복 노드 차단**: 같은 id의 노드가 2개 생기는 것을 DB 레벨에서 원천 차단
3. **자동 인덱스 생성**: UNIQUE 제약조건은 자동으로 Range 인덱스를 생성 → MERGE 성능 향상

### 7.2.2 UNIQUE 제약조건 — 핵심 중의 핵심

**문법:**
```cypher
CREATE CONSTRAINT constraint_name IF NOT EXISTS
FOR (n:Label)
REQUIRE n.property IS UNIQUE;
```

**우리 프로젝트의 11개 제약조건:**

```cypher
// ── 핵심 노드 (7개) ──
CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT technology_id IF NOT EXISTS
FOR (n:Technology) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT method_id IF NOT EXISTS
FOR (n:Method) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT standard_id IF NOT EXISTS
FOR (n:Standard) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT law_id IF NOT EXISTS
FOR (n:Law) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT threat_id IF NOT EXISTS
FOR (n:Threat) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT metric_id IF NOT EXISTS
FOR (n:Metric) REQUIRE n.id IS UNIQUE;

// ── 구조/추적 노드 (4개) ──
CREATE CONSTRAINT domain_id IF NOT EXISTS
FOR (n:Domain) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT question_id IF NOT EXISTS
FOR (n:Question) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT document_id IF NOT EXISTS
FOR (n:Document) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT exam_session_id IF NOT EXISTS
FOR (n:ExamSession) REQUIRE n.id IS UNIQUE;
```

**각 구문 해설:**

| 구문 요소 | 의미 | 왜 이렇게? |
|----------|------|-----------|
| `CREATE CONSTRAINT` | 제약조건 생성 | |
| `concept_id` | 제약조건 이름 | `{라벨}_{속성}` 패턴으로 의미 명확 |
| `IF NOT EXISTS` | 이미 있으면 무시 | **멱등성(Idempotency)** 확보 — 여러 번 실행해도 안전 |
| `FOR (n:Concept)` | 대상 라벨 지정 | Concept 라벨의 모든 노드에 적용 |
| `REQUIRE n.id IS UNIQUE` | id 속성 고유성 강제 | 동일 라벨 내에서 id 중복 불가 |

> ⚠️ **제약조건은 "라벨 내" 고유성입니다**
>
> `(:Concept {id: 'encryption'})` 과 `(:Technology {id: 'encryption'})` 은
> **서로 다른 제약조건**에 의해 관리되므로 **둘 다 존재할 수 있습니다!**
>
> 이것이 Ch.06에서 다룬 "교차 라벨 중복" 문제의 근본 원인입니다.
> 제약조건만으로는 교차 라벨 중복을 막을 수 없으며,
> 별도의 검증 쿼리(Ch.09)가 필요합니다.

### 7.2.3 Enterprise 전용 제약조건

Neo4j Enterprise 에디션에서만 사용 가능한 추가 제약조건:

**EXISTS 제약조건 — 필수 속성 강제:**
```cypher
// 모든 Concept에 id가 반드시 존재해야 함
CREATE CONSTRAINT concept_id_exists IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS NOT NULL;

// 모든 Concept에 name이 반드시 존재해야 함
CREATE CONSTRAINT concept_name_exists IF NOT EXISTS
FOR (n:Concept) REQUIRE n.name IS NOT NULL;
```

**NODE KEY 제약조건 — 복합 키 유니크 + 존재 강제:**
```cypher
// Question은 (session + period + number) 조합이 유니크하면서 모두 존재해야 함
CREATE CONSTRAINT question_key IF NOT EXISTS
FOR (n:Question)
REQUIRE (n.session, n.period, n.number) IS NODE KEY;
```

**Property Type 제약조건 (Neo4j 25) — 타입 강제:**
```cypher
// exam_frequency는 반드시 정수여야 함
CREATE CONSTRAINT concept_freq_type IF NOT EXISTS
FOR (n:Concept) REQUIRE n.exam_frequency IS :: INTEGER;

// name은 반드시 문자열이어야 함
CREATE CONSTRAINT concept_name_type IF NOT EXISTS
FOR (n:Concept) REQUIRE n.name IS :: STRING;
```

> 💡 **우리 프로젝트는 Enterprise 에디션을 사용하지만, 현재는 UNIQUE만 적용했습니다.**
>
> 이유: Phase 1에서는 최소한의 제약으로 유연성을 확보하고,
> 데이터가 안정화된 Phase 2에서 EXISTS/TYPE 제약을 추가하는 전략입니다.
> "첫 스키마는 틀린다" 원칙 — 너무 엄격한 제약은 초기 탐색을 방해합니다.

### 7.2.4 제약조건과 인덱스의 관계

Neo4j에서 UNIQUE/NODE KEY 제약조건을 만들면 **자동으로 Range 인덱스가 생성**됩니다:

```cypher
// 이 제약조건은...
CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;

// ...자동으로 이 인덱스를 생성합니다:
// (별도로 만들 필요 없음!)
// INDEX ON :Concept(id) — RANGE type, owned by constraint
```

따라서:
- `id` 속성에 대한 별도 인덱스는 **불필요** (제약조건이 인덱스를 포함)
- PART 2의 추가 인덱스는 **id 이외의 속성**에만 생성

```cypher
// 확인 방법
SHOW INDEXES;
// → owningConstraint 컬럼에 제약조건 이름이 표시됨
```

---

## 7.3 인덱스 전략

### 7.3.1 왜 인덱스가 필요한가

인덱스 없이 검색하면:
```cypher
// 인덱스 없는 경우
MATCH (c:Concept {name_kr: '딥러닝'}) RETURN c
// → Concept 라벨의 모든 노드를 순차 스캔 (NodeByLabelScan)
// → 노드 230개면 괜찮지만, 10,000개면 느림
```

인덱스가 있으면:
```cypher
// 인덱스 있는 경우
MATCH (c:Concept {name_kr: '딥러닝'}) RETURN c
// → 인덱스로 직접 접근 (NodeIndexSeek)
// → 노드 수에 상관없이 빠름
```

### 7.3.2 인덱스 유형 비교

Neo4j 25에서 지원하는 인덱스 유형:

| 유형 | 용도 | 장점 | 단점 | 우리 프로젝트 |
|------|------|------|------|-------------|
| **Range** (기본) | 등호, 범위, 접두어 검색 | 범용적, 정렬 지원 | 전문검색 불가 | 12개 사용 |
| **Text** | 문자열 특화 (CONTAINS, ENDS WITH) | 부분 문자열 검색 | 숫자 불가 | 미사용 (fulltext로 대체) |
| **Fulltext** | 자연어 검색, 유사도 스코어링 | 여러 속성 통합 검색 | 정확한 매칭 부적합 | 2개 사용 |
| **Point** | 공간 데이터 | 거리 검색 | 비공간 데이터 불가 | 미사용 |
| **Vector** | 벡터 유사도 (임베딩) | KNN 검색 | 새 기능, 실험적 | GraphRAG에서 사용 예정 |
| **Lookup** | 라벨/타입 기반 | 자동 생성 | 속성 검색 불가 | 자동 |

### 7.3.3 우리 프로젝트의 12개 Range 인덱스

```cypher
// ── 이름 검색용 (5개) ──
// "딥러닝이라는 Concept을 찾아라" → name/name_kr 인덱스
CREATE INDEX concept_name IF NOT EXISTS
FOR (n:Concept) ON (n.name);

CREATE INDEX concept_name_kr IF NOT EXISTS
FOR (n:Concept) ON (n.name_kr);

CREATE INDEX technology_name IF NOT EXISTS
FOR (n:Technology) ON (n.name);

CREATE INDEX method_name IF NOT EXISTS
FOR (n:Method) ON (n.name);

CREATE INDEX threat_name IF NOT EXISTS
FOR (n:Threat) ON (n.name);
```

**왜 Concept에만 name_kr 인덱스를 걸었는가?**
- Concept이 가장 많은 노드 (230개, 전체의 53%)
- Technology/Method/Threat는 노드 수가 적어 (50~55개) 인덱스 없이도 빠름
- 노드 수가 늘어나면 추가 검토

```cypher
// ── 도메인 필터링용 (2개) ──
// "AI 도메인의 모든 Concept" → domain 인덱스
CREATE INDEX concept_domain IF NOT EXISTS
FOR (n:Concept) ON (n.domain);

CREATE INDEX document_domain IF NOT EXISTS
FOR (n:Document) ON (n.domain);
```

```cypher
// ── 문제 검색용 (4개) ──
// 9,291건의 Question에서 회차별/유형별/년도별 검색
CREATE INDEX question_session IF NOT EXISTS
FOR (n:Question) ON (n.session);

CREATE INDEX question_type IF NOT EXISTS
FOR (n:Question) ON (n.type);

CREATE INDEX question_year IF NOT EXISTS
FOR (n:Question) ON (n.year);

CREATE INDEX question_source IF NOT EXISTS
FOR (n:Question) ON (n.source);
```

```cypher
// ── 회차 검색용 (1개) ──
CREATE INDEX exam_session_year IF NOT EXISTS
FOR (n:ExamSession) ON (n.year);
```

> 📌 **[설계 원칙] "자주 WHERE에 쓰이는 속성에만 인덱스를 건다."**
>
> 인덱스는 공짜가 아닙니다:
> - 디스크 공간 사용
> - 쓰기 시 인덱스 업데이트 비용
> - 너무 많은 인덱스는 오히려 성능 저하
>
> 기준: "이 속성으로 MATCH/WHERE하는 쿼리가 자주 실행되는가?"

### 7.3.4 전문검색 인덱스 (Fulltext Index)

일반 Range 인덱스로는 부분 문자열 검색이나 유사도 검색이 어렵습니다:

```cypher
// Range 인덱스로는 불가능한 검색
// "딥러닝 또는 심층학습 또는 deep learning" 통합 검색
// "definition에 '신경망'이 포함된 개념 검색"
```

전문검색 인덱스가 이를 해결합니다:

```cypher
// 여러 속성을 하나의 인덱스로 통합
CREATE FULLTEXT INDEX concept_fulltext IF NOT EXISTS
FOR (n:Concept) ON EACH [n.name, n.name_kr, n.definition];

// 문제 텍스트 전문검색
CREATE FULLTEXT INDEX question_fulltext IF NOT EXISTS
FOR (n:Question) ON EACH [n.text];
```

**사용법:**
```cypher
// 전문검색 쿼리 (일반 MATCH가 아닌 전용 프로시저 사용)
CALL db.index.fulltext.queryNodes('concept_fulltext', '딥러닝 신경망')
YIELD node, score
RETURN node.id, node.name_kr, score
ORDER BY score DESC
LIMIT 10;
```

**전문검색 vs Range 인덱스:**

| 특성 | Range 인덱스 | Fulltext 인덱스 |
|------|-------------|----------------|
| 검색 방식 | 정확한 매칭, 범위 | 자연어, 유사도 |
| 사용법 | `MATCH ... WHERE` | `CALL db.index.fulltext.queryNodes()` |
| 점수 | 없음 | 유사도 score 반환 |
| 여러 속성 통합 | 불가 (복합 인덱스는 AND) | 가능 (OR 방식) |
| 한국어 지원 | 제한적 | 토크나이저 활용 가능 |

> 💡 **GraphRAG 확장 시**: Vector 인덱스와 Fulltext 인덱스를 조합하면
> "의미 기반 검색 + 키워드 검색" 하이브리드 검색이 가능합니다.

### 7.3.5 인덱스 성능 검증 — PROFILE

인덱스가 실제로 사용되는지 확인하는 방법:

```cypher
// PROFILE: 쿼리를 실행하고 실행 계획을 보여줌
PROFILE
MATCH (c:Concept {domain: 'AI'})
RETURN c.name_kr;
```

**결과 읽는 법:**
```
// 인덱스 사용 시 (좋음)
NodeIndexSeek@concept_domain  →  Rows: 134  →  DB Hits: 135

// 인덱스 미사용 시 (나쁨)
NodeByLabelScan@Concept  →  Rows: 230  →  Filter  →  Rows: 134  →  DB Hits: 231
```

- `NodeIndexSeek`: 인덱스 직접 접근 → 빠름
- `NodeByLabelScan` + `Filter`: 전체 스캔 후 필터 → 느림
- `DB Hits`: 낮을수록 좋음

---

## 7.4 시드 노드 전략

### 7.4.1 시드 노드란 무엇인가

시드 노드(Seed Node)는 그래프의 **뼈대**입니다.

```
스키마가 "설계도"라면, 시드 노드는 "기초 공사"입니다.
집(그래프)을 짓기 전에 기둥(시드)을 먼저 세우는 것과 같습니다.
```

시드 노드의 역할:
1. **MERGE 앵커**: 문서 적재 시 같은 id로 MERGE하면 시드와 자동 연결
2. **우선순위 표시**: `exam_frequency`, `importance` 속성으로 중요도 기록
3. **도메인 분포 확보**: 13개 도메인에 골고루 시드를 배치하여 그래프 골격 형성
4. **검증 기준점**: "이 시드가 문서 데이터와 연결되었는가?"로 적재 품질 모니터링

### 7.4.2 시드 선정 기준

우리 프로젝트에서 Top 50 시드를 선정한 기준:

```
1차 기준: 정량 분석 키워드 빈도 Top 50
   → 테스트(922), 클라우드(734), AI(727) ...

2차 기준: 도메인 분포 확인
   → 13개 도메인에 최소 1개 이상 시드가 배치되었는가?
   → PM(1), MG(4), SW(7), SV(5), AI(4), SE(8), DB(5), NW(7), CA(6), OS(3) ✅
   → ST(0), DS(0), AL(0) ❌ → 출제 비중이 낮아 Phase 1에서는 시드 미배치

3차 기준: 교차 출제 대표성
   → 교차 출제 빈번 개념이 시드에 포함되었는가?
   → 암호화(SE+NW), 프로세스(OS+SW), 품질(SW+DB) ✅
```

### 7.4.3 시드 노드 Cypher 패턴

```cypher
MERGE (c:Concept {id: 'testing'})
SET c.name = 'Testing',
    c.name_kr = '테스트',
    c.domain = 'SW',
    c.exam_frequency = 922,
    c.importance = 'high';
```

**각 라인 해설:**

| 구문 | 역할 | 왜 이렇게? |
|------|------|-----------|
| `MERGE (c:Concept {id: 'testing'})` | id로 매칭하여 있으면 재사용, 없으면 생성 | UNIQUE 제약조건이 있으므로 빠르고 정확한 매칭 |
| `SET c.name = 'Testing'` | 대표 영문명 설정 | 매번 SET하므로 최신 값으로 갱신됨 |
| `SET c.name_kr = '테스트'` | 한글명 설정 | |
| `SET c.domain = 'SW'` | 주 도메인 코드 | 검색 성능을 위한 비정규화 |
| `SET c.exam_frequency = 922` | 출제 빈도 (정수) | 정량 분석 결과. Top 50 정렬 기준 |
| `SET c.importance = 'high'` | 중요도 표시 | Top 50 시드 식별 마커 |

> ⚠️ **SET의 부작용: 덮어쓰기**
>
> `SET c.name = 'Testing'`은 **항상** name을 'Testing'으로 설정합니다.
> 나중에 문서 적재에서 `SET c.name = 'Software Testing'`으로 바뀌면,
> 시드에서 설정한 'Testing'이 사라집니다.
>
> 이것이 Domain.name 영문 덮어쓰기 이슈의 원인입니다:
> ```cypher
> // 시드 (00_schema.cypher)
> MERGE (d:Domain {id: 'DB'}) SET d.name = '데이터베이스'  // 한글 ✅
>
> // 문서 적재 (db_001_010.cypher)에서 에이전트가 실수로:
> MERGE (d:Domain {id: 'DB'}) SET d.name = 'Database'       // 영문 ❌ 덮어씀!
> ```
>
> **대응책:**
> - 문서 적재 Cypher에서 Domain.name은 SET하지 않는 규칙 수립
> - 또는 `ON CREATE SET`으로 최초 생성 시에만 설정

### 7.4.4 ON CREATE SET vs ON MATCH SET

MERGE와 함께 사용하는 조건부 SET:

```cypher
// ON CREATE SET: 노드가 새로 생성될 때만 속성 설정
MERGE (c:Concept {id: 'deep_learning'})
ON CREATE SET c.name = 'Deep Learning',
              c.name_kr = '딥러닝',
              c.created_at = datetime()
ON MATCH SET  c.updated_at = datetime();
```

| 구문 | 실행 조건 | 용도 |
|------|----------|------|
| `SET` (무조건) | 항상 실행 | 항상 최신 값으로 갱신하고 싶을 때 |
| `ON CREATE SET` | 노드가 **새로 생성**될 때만 | 최초 값을 보호하고 싶을 때 |
| `ON MATCH SET` | 노드가 **이미 존재**할 때만 | 업데이트 시점을 기록하고 싶을 때 |

**우리 프로젝트에서의 활용:**

```cypher
// 시드 노드: 무조건 SET (시드가 최초이므로 ON CREATE와 결과 동일)
MERGE (c:Concept {id: 'testing'})
SET c.name = 'Testing', c.exam_frequency = 922;

// 문서 적재 시: definition은 문서에서만 설정, 시드 속성은 건드리지 않음
MERGE (c:Concept {id: 'testing'})
ON CREATE SET c.name = 'Testing', c.name_kr = '테스트'
ON MATCH SET  c.definition = '소프트웨어의 결함을 발견하기 위한 활동';
// → 시드의 name/name_kr은 유지, definition만 추가
```

> 💡 **Phase 2에서는 ON CREATE/ON MATCH 패턴을 적극 활용하는 것을 권장합니다.**
> 시드 속성(exam_frequency, importance)을 보호하면서 문서 속성(definition)만 추가하는 안전한 패턴입니다.

### 7.4.5 시드 → Domain 일괄 연결

```cypher
// Top 50 시드와 Domain을 domain 속성 기준으로 일괄 연결
MATCH (c:Concept), (d:Domain)
WHERE c.domain = d.id
MERGE (c)-[:BELONGS_TO]->(d);
```

**이 쿼리의 동작:**
1. 모든 Concept과 모든 Domain을 카르테시안 곱으로 조합 (Concept × Domain)
2. `WHERE c.domain = d.id`로 일치하는 쌍만 필터
3. BELONGS_TO 관계가 없으면 생성, 있으면 재사용 (MERGE)

> ⚠️ **주의: 이 쿼리는 모든 Concept에 적용됩니다**
>
> 시드 50개뿐 아니라, 이후에 적재된 모든 Concept에도 적용됩니다.
> 따라서 문서 적재 후 이 쿼리를 다시 실행하면 새 노드도 Domain과 연결됩니다.
>
> 그러나 이 방식은 성능상 비효율적일 수 있습니다.
> 노드가 많아지면 문서 적재 Cypher에서 개별적으로 BELONGS_TO를 생성하는 것이 낫습니다:
> ```cypher
> // 도메인별 Cypher 파일에서 개별 연결
> MATCH (c:Concept {id: 'deep_learning'}), (d:Domain {id: 'AI'})
> MERGE (c)-[:BELONGS_TO]->(d);
> ```

### 7.4.6 시드 전략의 함정과 교훈

우리 프로젝트에서 실제로 발생한 시드 관련 이슈:

**함정 1: 시드 id와 문서 데이터 id 불일치**
```
시드: id = 'agile'          (00_schema.cypher)
문서: id = 'agile_methodology'  (sw_001_010.cypher)
→ 2개 노드 생성! 관계 분산!
```

**함정 2: 시드 라벨과 문서 데이터 라벨 불일치**
```
시드: (:Concept {id: 'function_point'})     (00_schema.cypher)
문서: (:Method {id: 'function_point'})      (sw_001_010.cypher)
→ 같은 id인데 2개 노드! 제약조건은 라벨별이라 미탐지!
```

**함정 3: Domain.name 덮어쓰기**
```
시드: Domain.name = '데이터베이스'
문서: 에이전트가 SET name = 'Database'
→ 한글명 소실!
```

**교훈 → Cypher 생성 규칙:**

```
┌──────────────────────────────────────────────────────────────┐
│ 규칙 1: 시드 id 목록을 Cypher 생성 시 참조 자료로 제공      │
│ 규칙 2: 시드와 동일 개념은 반드시 시드 id와 라벨을 사용      │
│ 규칙 3: Domain 노드의 name은 문서 Cypher에서 SET 금지        │
│ 규칙 4: 적재 후 교차 라벨 검증 쿼리 필수 실행                │
│ 규칙 5: 적재 후 시드-문서 연결률 모니터링                    │
└──────────────────────────────────────────────────────────────┘
```

---

## 7.5 00_schema.cypher 전체 해설

우리 프로젝트의 스키마 파일 230줄을 PART별로 해설합니다.

### PART 1: 제약조건 (Line 15~46)

```cypher
CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;
// (11개 반복)
```

- **11개 노드 타입 × 1개 UNIQUE 제약** = 11개 제약조건
- 각 노드의 `id` 속성에 고유성 강제
- 부수 효과: id에 Range 인덱스 자동 생성 → MERGE 성능 확보
- `IF NOT EXISTS`로 멱등성 보장 — 스크립트 재실행 안전

### PART 2: 추가 인덱스 (Line 53~90)

```cypher
CREATE INDEX concept_name IF NOT EXISTS
FOR (n:Concept) ON (n.name);
// (12개 반복)
```

- **이름 검색 5개**: Concept(name, name_kr), Technology(name), Method(name), Threat(name)
- **도메인 필터 2개**: Concept(domain), Document(domain)
- **문제 검색 4개**: Question(session, type, year, source)
- **회차 검색 1개**: ExamSession(year)
- 총 12개 — 모두 `WHERE`절에서 자주 사용되는 속성

**왜 이 속성들인가?**

| 인덱스 | 사용 쿼리 패턴 | 예상 빈도 |
|--------|--------------|----------|
| concept_name_kr | `WHERE c.name_kr = '딥러닝'` | 매우 높음 |
| concept_domain | `WHERE c.domain = 'AI'` | 매우 높음 |
| question_session | `WHERE q.session = '132회'` | 높음 (STEP 6~7) |
| question_type | `WHERE q.type = '비교형'` | 높음 (STEP 6~7) |

### PART 3: 전문검색 인덱스 (Line 97~101)

```cypher
CREATE FULLTEXT INDEX concept_fulltext IF NOT EXISTS
FOR (n:Concept) ON EACH [n.name, n.name_kr, n.definition];

CREATE FULLTEXT INDEX question_fulltext IF NOT EXISTS
FOR (n:Question) ON EACH [n.text];
```

- **concept_fulltext**: name + name_kr + definition 통합 검색
  - "딥러닝"으로 검색 → name_kr 매칭 + definition에 "딥러닝" 포함 노드도 반환
- **question_fulltext**: 문제 원문 텍스트 검색
  - "블록체인 암호화"로 검색 → 관련 기출문제 검색

### PART 4: 도메인 노드 (Line 108~145)

```cypher
MERGE (d:Domain {id: 'SW'})
SET d.name = '소프트웨어공학', d.code = '03.SW', d.doc_count = 289, d.exam_weight = 0.192;
```

- 13개 도메인 × 5개 속성 (id, name, code, doc_count, exam_weight)
- `doc_count`: 해당 도메인의 원본 문서 수 (데이터 규모 파악)
- `exam_weight`: 정량 분석 기반 출제 비중 (0.192 = 19.2%)
- 이 속성들이 Domain을 "단순 라벨"이 아닌 "풍부한 메타데이터를 가진 노드"로 만듦

### PART 5: 검증 쿼리 (Line 152~158)

```cypher
// SHOW CONSTRAINTS;
// SHOW INDEXES;
// MATCH (d:Domain) RETURN d.id, d.name, d.doc_count ORDER BY d.code;
```

- 주석 처리된 검증 쿼리 — Neo4j Browser에서 개별 실행
- 스키마 적재 후 즉시 확인하기 위한 편의 쿼리
- cypher-shell에서는 주석이 실행되지 않으므로 안전

### PART 6: Top 50 시드 + Domain 연결 (Line 166~219)

```cypher
// 50개 시드
MERGE (c:Concept {id: 'testing'}) SET c.name = 'Testing', c.name_kr = '테스트', ...;
// ...

// 일괄 Domain 연결
MATCH (c:Concept), (d:Domain) WHERE c.domain = d.id
MERGE (c)-[:BELONGS_TO]->(d);
```

- Top 50 시드가 정량 분석 빈도 내림차순으로 배치
- 마지막에 일괄 BELONGS_TO 연결
- 스키마 파일 실행 후 결과: **13개 Domain + 50개 Concept + 50개 BELONGS_TO = 113개 요소**

---

## 7.6 스키마 진화 전략

### 7.6.1 Phase 1 → Phase 2 확장 계획

현재 스키마(v2)는 Phase 1 목적에 최적화되어 있습니다.
Phase 2에서 추가할 후보:

| 추가 대상 | 정량 근거 | 추가할 노드/속성 | 우선순위 |
|----------|----------|----------------|----------|
| 코드 패턴 | 코드형 301건 (4.4%) | `CodePattern` 노드 + `HAS_CODE` 관계 | 중간 |
| 수식/공식 | 계산형 205건 (3.0%) | `Formula` 노드 + `CALCULATED_BY` 관계 | 중간 |
| 다이어그램 | 다이어그램형 152건 (2.2%) | `Diagram` 노드 + `ILLUSTRATED_BY` 관계 | 낮음 |
| EXISTS 제약조건 | 데이터 안정화 후 | `REQUIRE n.id IS NOT NULL` 등 | 높음 |
| 시간 기반 관계 | ExamSession 활용 | `FIRST_APPEARED_IN` 관계 | 중간 |

### 7.6.2 RELATED_TO → 구체적 관계 교체 패턴

Phase 1에서 탐색용으로 RELATED_TO를 사용했다면, Phase 2에서 교체합니다:

```cypher
// 1. 현재 RELATED_TO 관계 확인
MATCH (a)-[r:RELATED_TO]->(b)
RETURN a.id, b.id, r.note
ORDER BY a.id;

// 2. 의미 분석 후 적절한 관계로 교체
// 예: "딥러닝 RELATED_TO GPU" → "딥러닝 DEPENDS_ON GPU"
MATCH (a:Concept {id: 'deep_learning'})-[r:RELATED_TO]->(b {id: 'gpu'})
CREATE (a)-[:DEPENDS_ON]->(b)
DELETE r;

// 3. 교체 후 RELATED_TO 잔여 확인
MATCH ()-[r:RELATED_TO]->()
RETURN count(r) AS remaining;
// → 0이면 모든 RELATED_TO 교체 완료
```

### 7.6.3 라벨 추가/변경

```cypher
// 라벨 추가 (기존 라벨 유지하면서 추가)
MATCH (n:Concept {id: 'k_means'})
SET n:Method;
// → 이제 (:Concept:Method {id: 'k_means'}) — 두 라벨 모두 가짐

// 라벨 교체 (기존 라벨 제거 + 새 라벨)
MATCH (n:Concept {id: 'k_means'})
SET n:Method
REMOVE n:Concept;
// → (:Method {id: 'k_means'}) — Concept에서 Method로 이동
```

> ⚠️ **라벨 변경 시 주의사항:**
> - UNIQUE 제약조건은 라벨별 — 라벨을 바꾸면 다른 제약조건에 의해 관리됨
> - 기존 라벨 기반 인덱스를 타던 쿼리가 영향받을 수 있음
> - 라벨 변경 전 영향 범위를 확인하고, 변경 후 검증 쿼리 실행

### 7.6.4 속성 마이그레이션

```cypher
// 속성명 변경 (APOC)
CALL apoc.refactor.rename.nodeProperty('name_ko', 'name_kr');
// → 모든 노드의 name_ko를 name_kr로 일괄 변경

// 속성 타입 변환
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL AND NOT c.exam_frequency IS :: INTEGER
SET c.exam_frequency = toInteger(c.exam_frequency);

// 속성 삭제
MATCH (c:Concept)
REMOVE c.obsolete_property;
```

### 7.6.5 마이그레이션 스크립트 작성 패턴

```cypher
// ================================================================
// 마이그레이션: v2 → v3 (검증 후 수정)
// 날짜: 2026-03-15
// 변경 내용:
//   1. Domain.name 한글 복구 (3건)
//   2. function_point Method→Concept 병합
//   3. agile_methodology→agile 병합
//   4. MENTIONED_IN 추가 (19건)
//   5. BELONGS_TO 누락 복구 (3건)
// 주의: 멱등성 보장 — 여러 번 실행 가능
// ================================================================

// 1. Domain.name 복구 (이미 한글이면 변화 없음)
MATCH (d:Domain {id: 'DB'}) SET d.name = '데이터베이스';
MATCH (d:Domain {id: 'SE'}) SET d.name = '보안';
MATCH (d:Domain {id: 'SW'}) SET d.name = '소프트웨어공학';

// 2. function_point Method→Concept 병합
// (Method가 없으면 아무 일도 안 함 — 멱등성)
MATCH (method:Method {id: 'function_point'})-[r:MENTIONED_IN]->(doc:Document)
MATCH (seed:Concept {id: 'function_point'})
MERGE (seed)-[:MENTIONED_IN]->(doc)
WITH method
MATCH (method)-[r]-() DELETE r
WITH method DELETE method;

// ... (계속)
```

---

## [기업 박스] 스키마 Cypher 관리 실무

> **기업 환경에서의 스키마 관리:**
>
> **Git 버전 관리:**
> ```
> cypher/
> ├── schema/
> │   ├── v1_initial.cypher
> │   ├── v2_quantitative.cypher
> │   └── v3_validation_fix.cypher
> ├── migrations/
> │   ├── v1_to_v2.cypher
> │   └── v2_to_v3.cypher
> └── data/
>     ├── ai_001_010.cypher
>     └── se_001_010.cypher
> ```
>
> **CI/CD 파이프라인 통합:**
> ```bash
> # 1. 스키마 적용
> cypher-shell < schema/v3_validation_fix.cypher
>
> # 2. 마이그레이션 적용
> cypher-shell < migrations/v2_to_v3.cypher
>
> # 3. 검증 쿼리 실행
> cypher-shell < validation/check_constraints.cypher
> cypher-shell < validation/check_orphans.cypher
>
> # 4. 검증 실패 시 롤백
> if [ $? -ne 0 ]; then
>   cypher-shell < rollback/v3_to_v2.cypher
> fi
> ```
>
> **스키마 변경 프로세스 (RFC):**
> 1. 변경 요청서 작성 (무엇을, 왜, 영향 범위)
> 2. 팀 리뷰 (설계/보안/성능)
> 3. 마이그레이션 스크립트 작성 (멱등성 필수)
> 4. 스테이징 환경에서 테스트
> 5. 프로덕션 적용 + 검증

---

## [실습] 00_schema.cypher 적재 및 검증

### 과제

00_schema.cypher를 Neo4j에 적재하고, 결과를 검증하세요.

### 진행 방법

**STEP 1: 스키마 적재**
```bash
# PowerShell에서 실행
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher
```

**STEP 2: 제약조건 확인**
```cypher
// Neo4j Browser에서 실행
SHOW CONSTRAINTS;
// → 11개 제약조건이 보이는가?
```

**STEP 3: 인덱스 확인**
```cypher
SHOW INDEXES;
// → 제약조건 인덱스 11개 + 추가 인덱스 12개 + 전문검색 2개 = 25개
```

**STEP 4: 도메인 노드 확인**
```cypher
MATCH (d:Domain) RETURN d.id, d.name, d.doc_count, d.exam_weight
ORDER BY d.code;
// → 13개 도메인이 보이는가?
// → 모든 name이 한글인가?
```

**STEP 5: 시드 노드 확인**
```cypher
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.id, c.name_kr, c.exam_frequency
ORDER BY c.exam_frequency DESC
LIMIT 10;
// → Top 10이 [테스트, 클라우드, AI, 프로세스, 품질, ...] 인가?
```

**STEP 6: BELONGS_TO 연결 확인**
```cypher
MATCH (c:Concept)-[:BELONGS_TO]->(d:Domain)
WHERE c.exam_frequency IS NOT NULL
RETURN d.id AS domain, count(c) AS seed_count
ORDER BY seed_count DESC;
// → 각 도메인에 시드가 배치되었는가?
```

### 검증 체크리스트

- [ ] 제약조건 11개 생성 확인
- [ ] 인덱스 25개 생성 확인
- [ ] 도메인 13개, 모두 한글 name
- [ ] 시드 50개, exam_frequency 내림차순 정확
- [ ] BELONGS_TO 연결 완료 (ST, DS, AL 제외)

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 실행 순서 = "구조 먼저, 데이터 나중"                     │
│     제약조건 → 인덱스 → 도메인 → 시드 → 관계 → 검증         │
│                                                              │
│  2. 제약조건 = "데이터 무결성의 첫 번째 방어선"              │
│     UNIQUE가 핵심, IF NOT EXISTS로 멱등성 확보                │
│     교차 라벨 중복은 제약조건이 못 잡음 → 별도 검증 필요     │
│                                                              │
│  3. 인덱스 = "WHERE에 자주 쓰이는 속성에만"                  │
│     Range(기본) + Fulltext(키워드 검색) 조합                 │
│     PROFILE로 인덱스 활용 여부 반드시 확인                    │
│                                                              │
│  4. 시드 = "그래프의 뼈대 + MERGE 앵커"                      │
│     id 일관성이 생명 — 불일치 = 중복 노드 = 최대 위험        │
│     ON CREATE SET / ON MATCH SET으로 속성 보호               │
│                                                              │
│  5. 스키마 진화 = "마이그레이션 스크립트 + 멱등성"            │
│     v1→v2→v3 버전 관리, Git으로 이력 추적                    │
│     매 변경마다 검증 쿼리 실행                                │
│                                                              │
│  6. Property Type Constraints = "속성 타입 방어선"            │
│     id는 STRING, exam_frequency는 INTEGER 등 타입 강제       │
│     Neo4j 5.9+ Enterprise에서 사용 가능                      │
│                                                              │
│  다음 챕터: 데이터 적재 파이프라인 (Ch.08)                    │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 7.7 Property Type Constraints — 속성 타입의 방어선 (Neo4j 5.9+)

UNIQUE 제약조건이 "중복 방지"라면, **Property Type Constraint**는 **"잘못된 타입 방지"**입니다.
Neo4j의 스키마리스 특성은 유연하지만, `exam_frequency`에 문자열 `"높음"`이 들어가면
정렬, 비교, 집계 쿼리가 모두 깨집니다. 이것을 **구조적으로 차단**합니다.

### 7.7.1 왜 필요한가 — 조용한 타입 오염

```cypher
// 이런 일이 실제로 발생합니다:
MERGE (c:Concept {id: 'testing'})
SET c.exam_frequency = '922'    // ← 숫자가 아닌 문자열 '922'!

// 이후 정렬 쿼리가 틀린 결과를 반환:
MATCH (c:Concept)
RETURN c.name_kr, c.exam_frequency
ORDER BY c.exam_frequency DESC
// → '922'(문자열)는 '99'보다 앞에 옴 (사전순 정렬!)
// → 이 버그는 데이터가 많아질수록 발견이 어려움
```

타입 제약조건이 있으면 SET 시점에 **즉시 에러**가 발생합니다:

```
Node(XX) with label `Concept` must have the property `exam_frequency`
of type `INTEGER`, but got `STRING`.
```

### 7.7.2 우리 프로젝트에 적용할 타입 제약조건

```cypher
// ── Property Type Constraints (Neo4j 5.9+ Enterprise) ──

// 핵심 식별 속성: 반드시 문자열
CREATE CONSTRAINT concept_id_type IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS :: STRING;

CREATE CONSTRAINT technology_id_type IF NOT EXISTS
FOR (n:Technology) REQUIRE n.id IS :: STRING;

CREATE CONSTRAINT method_id_type IF NOT EXISTS
FOR (n:Method) REQUIRE n.id IS :: STRING;

CREATE CONSTRAINT domain_id_type IF NOT EXISTS
FOR (n:Domain) REQUIRE n.id IS :: STRING;

CREATE CONSTRAINT document_id_type IF NOT EXISTS
FOR (n:Document) REQUIRE n.id IS :: STRING;

// 숫자 속성: 반드시 정수
CREATE CONSTRAINT concept_freq_type IF NOT EXISTS
FOR (n:Concept) REQUIRE n.exam_frequency IS :: INTEGER;

// 이름 속성: 반드시 문자열
CREATE CONSTRAINT concept_name_kr_type IF NOT EXISTS
FOR (n:Concept) REQUIRE n.name_kr IS :: STRING;

CREATE CONSTRAINT domain_name_type IF NOT EXISTS
FOR (n:Domain) REQUIRE n.name IS :: STRING;
```

### 7.7.3 관계 속성에도 적용 가능

```cypher
// COMPARED_WITH의 perspectives는 반드시 문자열 리스트
CREATE CONSTRAINT compared_perspectives_type IF NOT EXISTS
FOR ()-[r:COMPARED_WITH]-() REQUIRE r.perspectives IS :: LIST<STRING>;
```

> 💡 **"타입 제약조건 = 두 번째 방어선"**
>
> ```
> 방어선 1: UNIQUE 제약조건 → 중복 노드 방지
> 방어선 2: Property Type Constraint → 타입 오염 방지
> 방어선 3: 검증 쿼리 (Ch.09) → 의미적 오류 탐지
> ```
>
> 방어선 1과 2는 **Neo4j가 자동으로 차단**합니다.
> 방어선 3은 **사람이 수동으로 실행**해야 합니다.
> 자동 방어선이 많을수록 수동 검증의 부담이 줄어듭니다.

### 7.7.4 확인 및 관리

```cypher
// 전체 제약조건 확인 (UNIQUE + Type 모두 표시)
SHOW CONSTRAINTS;

// Type Constraint만 필터링
SHOW CONSTRAINTS
WHERE type = 'NODE_PROPERTY_TYPE';

// 제거 (필요 시)
DROP CONSTRAINT concept_freq_type IF EXISTS;
```

> ⚠️ **주의사항**
>
> - Property Type Constraint는 **Neo4j 5.9+ Enterprise**에서만 사용 가능합니다.
>   Community Edition에서는 에러가 발생합니다.
> - 기존 데이터에 타입 위반이 있으면 제약조건 생성 자체가 실패합니다.
>   먼저 `WHERE c.exam_frequency IS NOT NULL AND NOT c.exam_frequency IS :: INTEGER`로
>   위반 데이터를 찾아 수정한 후 제약조건을 생성하세요.
> - NULL 값은 타입 제약조건을 위반하지 **않습니다**. NULL은 "값이 없음"이지
>   "잘못된 타입"이 아닙니다. 필수 속성 강제는 EXISTS 제약조건을 사용하세요.
