# Ch.06 — STEP 3: 스키마 설계 - 노드, 관계, 속성

> **"스키마 설계의 80%는 '이것을 노드로 만들까, 속성으로 만들까?'라는 결정의 연속이다."**

이 챕터는 스키마 설계 3부작의 두 번째로, **"무엇을 어떻게 설계하는가"**에 집중합니다.
Ch.05에서 다룬 QDM 방법론으로 "왜"를 이해했다면,
이 챕터에서는 노드 타입, 관계 타입, 속성의 **구체적 설계 기법과 판단 기준**을 다룹니다.

---

## 6.1 노드 타입 설계 기법

### 6.1.1 라벨 설계 원칙

Neo4j에서 노드의 유형을 구분하는 것이 **라벨(Label)**입니다.
라벨은 곧 "이 노드는 어떤 종류의 것인가"를 선언하는 것이며,
제약조건, 인덱스, 쿼리 최적화의 기반이 됩니다.

Neo4j 공식 문서가 권장하는 라벨 네이밍 규칙:

```
라벨: PascalCase (대문자 시작, 단어 구분도 대문자)
  ✅ :Concept, :Technology, :ExamSession
  ❌ :concept, :CONCEPT, :exam_session, :examSession
```

이 규칙 위에, 온톨로지 설계에 특화된 추가 원칙이 있습니다:

| 원칙 | 설명 | 좋은 예 | 나쁜 예 |
|------|------|---------|---------|
| **명사 사용** | 라벨은 "무엇인가"를 나타내므로 명사 | Concept, Threat | Threatening, Compare |
| **단수형** | 라벨은 개별 노드의 유형 | Concept | Concepts |
| **도메인 독립적** | 라벨에 특정 도메인을 넣지 않음 | Technology | AITechnology |
| **의미 명확** | 용도가 모호하지 않은 이름 | Method | Item, Thing |
| **라벨 = 집합** | "이 라벨의 노드 전체"가 의미 있는 집합인가 | Domain (13개) | Size (무의미) |

> 💡 **왜 도메인 독립적이어야 하는가?**
>
> `AITechnology`, `SETechnology`, `DBTechnology`처럼 도메인별 라벨을 만들면,
> 도메인이 13개이므로 라벨도 13배로 늘어납니다.
> 대신 `Technology` 하나에 `domain` 속성으로 구분하면,
> 새 도메인이 추가되어도 라벨은 변하지 않습니다.
>
> ```cypher
> // 안티패턴: 도메인별 라벨
> MATCH (t:AITechnology) RETURN t  // AI만 검색 가능
> MATCH (t:SETechnology) RETURN t  // SE만 검색 가능
> // 전체 검색하려면? 13개 라벨을 다 나열해야!
>
> // 올바른 패턴: 하나의 라벨 + 속성 필터
> MATCH (t:Technology {domain: 'AI'}) RETURN t  // AI만
> MATCH (t:Technology) RETURN t                  // 전체
> ```

### 6.1.2 "노드로 분리" vs "속성으로 처리" 결정 기준

스키마 설계에서 가장 자주 부딪히는 질문입니다:

```
"이것을 별도 노드로 만들까, 아니면 기존 노드의 속성으로 처리할까?"
```

이 결정을 위한 **4가지 판단 기준**:

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  Q1. 이것이 자체적인 관계를 가지는가?                     │
│      YES → 노드  (예: "도메인"은 여러 개념이 소속됨)     │
│      NO  → 속성  (예: "정의"는 다른 것과 관계 없음)      │
│                                                          │
│  Q2. 이것이 다른 엔티티에서도 참조되는가?                 │
│      YES → 노드  (예: "ISO 27001"은 여러 개념이 참조)    │
│      NO  → 속성  (예: "aliases"는 해당 노드만 사용)      │
│                                                          │
│  Q3. 이것으로 검색/필터링/집계하는 경우가 있는가?         │
│      YES → 노드  (예: "도메인"별 통계가 필요)            │
│      NO  → 속성  (예: "카테고리"는 단순 분류)            │
│                                                          │
│  Q4. 이것에 자체 속성(메타데이터)이 있는가?               │
│      YES → 노드  (예: "도메인"에 doc_count, exam_weight)  │
│      NO  → 속성  (예: "중요도"는 high/medium/low 값만)   │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**실전 적용 예시:**

| 대상 | Q1(관계) | Q2(참조) | Q3(검색) | Q4(메타) | 판정 |
|------|----------|----------|----------|----------|------|
| 도메인(AI, SE...) | ✅ BELONGS_TO | ✅ 여러 노드에서 | ✅ 도메인별 통계 | ✅ doc_count, exam_weight | **노드** (Domain) |
| 정의(definition) | ❌ | ❌ | △ 전문검색 | ❌ | **속성** |
| 중요도(high/mid/low) | ❌ | ❌ | △ 필터링 | ❌ | **속성** (importance) |
| ISO 27001 | ✅ DEFINED_BY | ✅ 여러 개념에서 | ✅ 표준별 조회 | ✅ organization, year | **노드** (Standard) |
| 동의어 목록 | ❌ | ❌ | △ 전문검색 | ❌ | **속성** (aliases 배열) |
| 시험 회차 | ✅ PART_OF_SESSION | ✅ 여러 문제에서 | ✅ 회차별 분석 | ✅ year, date | **노드** (ExamSession) |

> 📌 **[설계 원칙] 애매하면 일단 속성으로 시작하고, 관계가 필요해지면 그때 노드로 승격하라.**
>
> Neo4j의 스키마리스 특성 덕분에, 속성을 노드로 바꾸는 것은 쉽습니다.
> 반대로 불필요한 노드를 만들면 복잡성만 증가합니다.
>
> ```cypher
> // 속성 → 노드 승격 예시: category 속성을 Category 노드로 변환
> MATCH (m:Method)
> WHERE m.category IS NOT NULL
> MERGE (cat:Category {id: m.category})
> MERGE (m)-[:HAS_CATEGORY]->(cat)
> ```

### 6.1.3 노드 분리 심화 — 우리 프로젝트 11개 타입

우리 프로젝트의 11개 노드 타입은 어떤 근거로 분리되었는지 하나씩 살펴봅시다.

#### 핵심 3자 구분: Concept vs Technology vs Method

이 세 라벨의 구분이 가장 어렵습니다. 결정 트리로 정리합니다:

```
                        이것은 무엇인가?
                            │
              ┌─────────────┼─────────────┐
              ▼             ▼             ▼
        추상적 개념/     구현체/도구/    방법론/알고리즘/
        이론/분야?       플랫폼/제품?    절차/기법?
              │             │             │
              ▼             ▼             ▼
          Concept      Technology       Method
              │             │             │
          예시:          예시:          예시:
        · 딥러닝        · CNN          · K-means
        · 교착상태      · Docker       · 애자일
        · 정규화        · AES          · 블랙박스테스트
        · 가상메모리    · TCP          · Scrum
        · 암호화        · TensorFlow   · COCOMO
```

**핵심 차이:**
- **Concept**: "~란 무엇인가?"로 정의되는 추상적 개체. 실체가 없음
- **Technology**: 실제로 설치/사용/실행할 수 있는 구현체. 실체가 있음
- **Method**: 절차가 있고, 따라 할 수 있는 방법론/기법. 순서/단계가 있음

**경계 사례와 판단:**

| 경계 사례 | 판단 | 근거 |
|----------|------|------|
| "머신러닝"은 Concept? Method? | **Concept** | "머신러닝이란 무엇인가"로 정의되는 학문 분야 |
| "K-means"는 Concept? Method? | **Method** | 1단계: 초기 중심 설정 → 2단계: 할당 → 3단계: 갱신 — 절차가 있음 |
| "CNN"은 Concept? Technology? | **Technology** | TensorFlow에서 `tf.keras.layers.Conv2D`로 구현 가능한 실체 |
| "블록체인"은 Concept? Technology? | **Concept** | 분산 원장이라는 추상 개념. Ethereum/Bitcoin은 Technology |
| "SVM"은 Method? Technology? | **Method** | 알고리즘 절차가 있음 (커널 선택 → 마진 최대화 → 분류) |

> ⚠️ **확실하지 않다면 Concept으로 분류하세요.**
>
> Concept은 가장 범용적인 라벨입니다.
> 나중에 데이터가 쌓이면서 "이건 Method가 더 적합하다"고 판단되면 그때 변경할 수 있습니다.
> ```cypher
> // 라벨 변경 (Concept → Method)
> MATCH (n:Concept {id: 'k_means'})
> SET n:Method
> REMOVE n:Concept;
> ```

#### 나머지 노드 분리 근거

| 노드 | 분리 근거 | 정량적 근거 |
|------|----------|------------|
| **Standard** | "ISO 27001에 의해 정의된 ~" 같은 표현이 빈번. 발행기관, 제정년도 등 자체 속성 필요 | ISMS 116회, 표준 단독 출제 빈번 |
| **Law** | Standard와 비슷하지만 강제성/관할권이 다름. jurisdiction, effective_date 자체 속성 | 개인정보보호 553회 (5위), 법률 문제 급증 추세 |
| **Threat** | 보안 도메인(18.7%)의 핵심 엔티티. "~를 위협", "~로 대응"이라는 독자적 관계 패턴 | 취약점 223회, AI+SE 교차 34건 |
| **Metric** | "~로 측정된다", "~의 지표는"이라는 독자적 관계. 단위(unit) 자체 속성 | 품질 698회, SLA 111회 |
| **Domain** | 13개 도메인 분류. doc_count, exam_weight 등 집계 속성. BELONGS_TO 허브 역할 | 9개 도메인 그룹 정량 확인 |
| **Document** | 원본 추적(데이터 리니지). filename, format, path 자체 속성 | 2,392개 파일 |
| **Question** | 기출문제 9,291건. session, type, text 등 풍부한 자체 속성 | STEP 6~7에서 적재 예정 |
| **ExamSession** | 시험 회차별 트렌드 분석 가능. year, date 자체 속성 | 시대별 출제 트렌드 |

### 6.1.4 경계 사례 판단표 — Concept vs Technology vs Method

실제 적재 시 가장 고민되는 것은 **"이것은 Concept인가, Technology인가, Method인가?"**입니다.
여러 사람이 동시에 적재할 때 일관성을 유지하려면 **명문화된 판단 기준**이 필요합니다.

#### 판단 결정 트리

```
이 엔티티가...

① "~의 한 분야", "~의 영역"으로 설명되는가?
   ├─ YES → Concept (분야/영역)
   └─ NO → ②로

② 구체적 도구/프레임워크/제품/프로토콜인가?
   ├─ YES → Technology (구현체)
   └─ NO → ③으로

③ 절차/순서/단계가 있는 알고리즘이나 방법론인가?
   ├─ YES → Method (절차/알고리즘)
   └─ NO → Concept (기본값)
```

#### 경계 사례 판단표

| 개체 | 판단 | 분류 | 근거 |
|------|------|------|------|
| 딥러닝 | "머신러닝의 한 **분야**" | **Concept** | 분야/영역 |
| CNN | "딥러닝을 **구현한** 신경망 구조" | **Technology** | 구체적 아키텍처(구현체) |
| K-Means | "군집화를 수행하는 **알고리즘** (반복 절차)" | **Method** | 입력→처리→출력의 절차 |
| SVM | "분류 경계를 찾는 **알고리즘**" | **Method** | 최적화 절차 |
| Docker | "컨테이너화 **도구**" | **Technology** | 구체적 소프트웨어 제품 |
| 애자일 | "소프트웨어 개발 **방법론**" | **Method** | 프로세스/절차 |
| 암호화 | "정보보호의 한 **분야**" | **Concept** | 분야/영역 |
| AES | "암호화 **알고리즘** (블록 암호)" | **Technology** | 구체적 구현 표준 |
| 정규화 | "DB 설계 **기법** (단계적 절차)" | **Method** | 1NF→2NF→3NF 절차 |
| 블록체인 | "분산원장 **기술 분야**" | **Concept** | 분야/영역 |
| 이더리움 | "블록체인 **플랫폼**" | **Technology** | 구체적 구현체 |

#### 모호할 때의 기본값 규칙

> [설계 원칙] **"판단이 모호하면 Concept으로 분류하라"**
>
> Concept은 가장 범용적인 라벨입니다.
> 데이터가 축적되면서 "이건 Method가 더 적합하다"고 판단되면
> 라벨을 변경할 수 있습니다 (Neo4j 스키마리스의 장점).
>
> **단, 같은 id로 다른 라벨에 노드를 만들면 안 됩니다** (교차 라벨 중복).
> Ch.11에서 `function_point`가 Concept + Method에 동시 존재한 이슈를 기억하세요.

#### 팀 적재 시 일관성 확보 방법

1. **판단표를 Wiki에 게시**하고 적재 전 참조
2. **경계 사례를 발견하면 즉시 공유** (Slack 채널 등)
3. **주 1회 교차 라벨 중복 검증 쿼리 실행** (부록 B L4-Q1)
4. 최종 판단이 어려우면 **스키마 오너에게 에스컬레이션**

### 6.1.5 [안티패턴] 노드 설계의 흔한 실수

#### 안티패턴 1: God Node — 모든 것을 담는 만능 노드

```cypher
// ❌ 모든 것이 Entity
CREATE (:Entity {type: 'concept', name: '딥러닝'})
CREATE (:Entity {type: 'technology', name: 'Docker'})
CREATE (:Entity {type: 'threat', name: 'DDoS'})
CREATE (:Entity {type: 'metric', name: 'F1-Score'})
```

**왜 나쁜가:**
- UNIQUE 제약조건을 type별로 걸 수 없음 (Entity 전체에서 id 유니크)
- `MATCH (e:Entity {type: 'concept'})` → 매번 전체 스캔 후 필터링
- 노드 수가 수천 개 이상이면 성능 급락
- "Threat에만 severity 속성이 있다"는 규칙을 표현할 수 없음

**해결:** 라벨로 분리. `(:Concept)`, `(:Technology)`, `(:Threat)`, `(:Metric)`

#### 안티패턴 2: 라벨 폭발 — 과도한 세분화

```cypher
// ❌ 도메인×타입 조합마다 라벨
CREATE (:AIConcept {name: '딥러닝'})
CREATE (:SEConcept {name: '암호화'})
CREATE (:AIMethod {name: 'K-means'})
CREATE (:SEMethod {name: '침투테스트'})
// → 13 도메인 × 7 핵심 타입 = 91개 라벨!
```

**왜 나쁜가:**
- 새 도메인 추가 시 7개 라벨을 새로 만들어야 함
- "모든 Concept을 검색"하려면 13개 라벨을 UNION
- 도메인 간 교차 출제 분석이 불가능

**해결:** 하나의 라벨 + `domain` 속성으로 구분

#### 안티패턴 3: 과도한 세분화 — 속성 1개짜리 노드

```cypher
// ❌ 단위를 별도 노드로
CREATE (:Unit {name: 'Mbps'})
CREATE (:Unit {name: '%'})
CREATE (:Unit {name: 'ms'})
```

**왜 나쁜가:**
- 단위는 다른 것과 관계를 맺지 않음 (Q1 실패)
- 다른 엔티티에서 참조되지 않음 (Q2 실패)
- 자체 속성이 name 하나뿐 (Q4 실패)
- 노드 수만 불필요하게 증가

**해결:** Metric 노드의 `unit` 속성으로 처리

#### 안티패턴 4: 라벨 혼동 — 같은 개념이 2개 라벨에 존재

```cypher
// ❌ 기능점수가 Concept에도, Method에도 존재
MERGE (c:Concept {id: 'function_point'})    // 시드에서 생성
MERGE (m:Method {id: 'function_point'})     // 문서 적재 시 생성
// → 같은 id인데 2개 노드! 제약조건은 라벨별이라 잡지 못함
```

**왜 나쁜가:**
- 관계가 두 노드에 분산됨
- 검색 시 어디를 봐야 하는지 혼란
- STEP 5(검증)에서 발견하기 어려운 은밀한 버그

**해결:** Cypher 생성 시 시드 노드의 라벨을 반드시 참조. 교차 라벨 검증 쿼리 필수 실행:
```cypher
// 같은 id를 가진 다른 라벨의 노드 검출
MATCH (a), (b)
WHERE a.id = b.id AND elementId(a) < elementId(b)
RETURN a.id, labels(a), labels(b);
```

> 💡 **이것은 실제로 우리 프로젝트에서 발생한 이슈입니다.**
> function_point가 Concept(시드)과 Method(문서 데이터)로 동시 존재했고,
> STEP 5 검증에서 발견하여 병합했습니다. (상세는 Ch.11 참조)

---

## 6.2 관계 타입 설계 기법

### 6.2.1 관계 이름 규칙

Neo4j 공식 권장:

```
관계 타입: SCREAMING_SNAKE_CASE (모두 대문자, 언더스코어 구분)
  ✅ :SUBCLASS_OF, :COMPARED_WITH, :DEPENDS_ON
  ❌ :subclassOf, :SubClassOf, :subclass-of
```

온톨로지에서의 추가 규칙:

| 규칙 | 설명 | 좋은 예 | 나쁜 예 |
|------|------|---------|---------|
| **동사/과거분사 기반** | 관계는 "행위"를 나타냄 | THREATENS, DEFINED_BY | THREAT, DEFINITION |
| **방향이 이름에 내포** | 이름만으로 방향 유추 가능 | SUBCLASS_OF (A→B: A는 B의 하위) | RELATED |
| **과거분사로 역방향 표현** | "~에 의해 ~된" | DEFINED_BY (A→B: A는 B에 의해 정의) | DEFINES |
| **단순 현재형으로 직접 행위** | 주어가 행위를 수행 | THREATENS (A→B: A가 B를 위협) | IS_THREATENED_BY |

**네이밍 패턴 카탈로그:**

```
[능동 행위]     A -[:THREATENS]-> B        "A가 B를 위협한다"
[수동 결과]     A -[:DEFINED_BY]-> B       "A가 B에 의해 정의된다"
[소유/구성]     A -[:HAS_COMPONENT]-> B    "A가 B를 구성요소로 가진다"
[분류/소속]     A -[:BELONGS_TO]-> B       "A가 B에 소속된다"
[계층/유형]     A -[:SUBCLASS_OF]-> B      "A는 B의 하위 분류이다"
[비교/대비]     A -[:COMPARED_WITH]-> B    "A와 B가 비교된다"
[의존/사용]     A -[:DEPENDS_ON]-> B       "A가 B에 의존한다"
[추적/출처]     A -[:MENTIONED_IN]-> B     "A가 B에서 언급된다"
```

### 6.2.2 방향성 결정 기준

Neo4j에서 모든 관계는 반드시 방향을 가집니다.
그러나 **쿼리 시에는 방향을 무시할 수 있습니다**.

```cypher
// 방향 있는 쿼리 (정방향만)
MATCH (a)-[:SUBCLASS_OF]->(b) RETURN a, b

// 방향 무시 쿼리 (양방향)
MATCH (a)-[:COMPARED_WITH]-(b) RETURN a, b
// → 화살표 없이 - 만 사용하면 양방향 탐색
```

**방향 결정 원칙:**

```
┌──────────────────────────────────────────────────────────┐
│                                                          │
│  원칙 1: 의미적 방향을 따른다 (최우선)                    │
│          "딥러닝 IS-A 머신러닝" → 딥러닝→머신러닝         │
│                                                          │
│  원칙 2: "구체→추상" 또는 "하위→상위" 방향                │
│          SUBCLASS_OF: 하위→상위                           │
│          BELONGS_TO: 개체→분류                            │
│          MENTIONED_IN: 개념→문서                          │
│                                                          │
│  원칙 3: "행위자→대상" 방향                               │
│          THREATENS: 위협(주체)→대상                        │
│          IMPLEMENTS: 기술(구현체)→개념(추상)               │
│                                                          │
│  원칙 4: 대칭 관계는 한쪽만 저장                          │
│          COMPARED_WITH: 한 방향만 저장, 쿼리 시 양방향     │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**대칭 관계(COMPARED_WITH) 처리:**

```cypher
// 저장: 노드를 먼저 MATCH, 관계만 MERGE
MATCH (a:Technology {id: 'aes'}), (b:Technology {id: 'des'})
MERGE (a)-[:COMPARED_WITH]->(b);

// 쿼리: 방향 무시 (- 사용)
MATCH (a:Technology {id: 'aes'})-[r:COMPARED_WITH]-(b)
RETURN b.name_kr, r.perspectives
// → AES에서 출발하든 DES에서 출발하든 같은 결과
```

> ⚠️ **관계 MERGE의 함정: 전체 패턴 MERGE 금지**
>
> ```cypher
> // ❌ 위험: 전체 패턴을 MERGE하면 노드까지 새로 생성될 수 있음
> MERGE (a:Technology {id: 'aes'})-[:COMPARED_WITH]->(b:Technology {id: 'des'})
> // → AES는 있지만 DES가 없으면? AES 노드가 중복 생성됨!
> // → MERGE는 "전체 패턴이 존재하는가"를 판단하기 때문
>
> // ✅ 안전: 노드를 먼저 확보(MATCH 또는 개별 MERGE) 후, 관계만 MERGE
> MATCH (a:Technology {id: 'aes'}), (b:Technology {id: 'des'})
> MERGE (a)-[:COMPARED_WITH]->(b);
> ```
>
> 이것은 Neo4j 공식 문서에서도 강조하는 핵심 주의사항입니다.
> **"MERGE는 항상 가능한 한 작은 패턴에 사용하라."**

> ⚠️ **양방향 중복 저장은 하지 마세요**
> ```cypher
> // ❌ 양방향 중복
> MERGE (aes)-[:COMPARED_WITH]->(des)
> MERGE (des)-[:COMPARED_WITH]->(aes)
> // → 2개 관계 생성 → 쿼리 결과 중복 → 관리 비용 2배
> ```

### 6.2.3 관계 패턴 카탈로그

우리 프로젝트의 17개 관계를 6개 카테고리로 분류하고, 각각의 설계 근거와 사용 패턴을 상세히 정리합니다.

---

#### 카테고리 1: 계층 패턴 (Taxonomy)

> **"이것은 저것의 한 종류이다"를 표현**

| 관계 | 방향 | 의미 | 예시 |
|------|------|------|------|
| **SUBCLASS_OF** | 하위 → 상위 | IS-A 계층 | 딥러닝 → 머신러닝 → AI |
| **HAS_TYPE** | 유형 → 상위 | 유형/종류 분류 | 지도학습 → 머신러닝 |
| **INSTANCE_OF** | 구현체 → 개념 | 구체적 인스턴스 | CNN → 딥러닝 |

**SUBCLASS_OF vs HAS_TYPE — 언제 어떤 것을 쓰는가?**

| 기준 | SUBCLASS_OF | HAS_TYPE |
|------|-------------|----------|
| 의미 | "A는 B의 하위 **분야/개념**이다" | "A는 B의 한 **유형/종류**이다" |
| 핵심 질문 | "A는 B인가?" (IS-A) | "A는 B에 속하는 유형인가?" |
| 계층 깊이 | 다단계 체인 가능 (3~4 hop) | 보통 1단계 |
| 예시 | 딥러닝→머신러닝→AI (3단계) | 지도학습→머신러닝 (분류) |
| 추이성 | 있음 (A→B→C이면 A→C 유추 가능) | 약함 |

**실전 판단 가이드 — "이 상황에서는 어떤 것을 쓸까?"**

```
"딥러닝은 머신러닝이다" (IS-A 성립)
  → SUBCLASS_OF ✅
  → 딥러닝 자체가 하나의 학문 분야/연구 영역

"지도학습은 머신러닝이다" (IS-A 어색)
  → "지도학습은 머신러닝의 한 유형이다" (더 자연스러움)
  → HAS_TYPE ✅
  → 지도학습은 머신러닝을 분류한 결과

"CNN은 딥러닝이다" (IS-A 부적절)
  → CNN은 딥러닝의 구현체 → INSTANCE_OF 또는 IMPLEMENTS
  → CNN은 "설치/실행 가능"하므로 분야가 아님
```

**판단 힌트:**
- "A는 B **분야**이다"가 자연스러우면 → SUBCLASS_OF
- "A는 B의 **종류** 중 하나이다"가 자연스러우면 → HAS_TYPE
- "A는 B를 **구현한** 것이다"가 자연스러우면 → INSTANCE_OF / IMPLEMENTS

```cypher
// SUBCLASS_OF 체인 탐색 (3-hop까지)
MATCH path = (leaf)-[:SUBCLASS_OF*1..3]->(root:Concept {id: 'artificial_intelligence'})
RETURN [n IN nodes(path) | n.name_kr] AS hierarchy

// 결과: ["딥러닝", "머신러닝", "인공지능"]
```

> 💡 **계층 깊이 권장: 3~4단계**
>
> 너무 깊으면 (5단계 이상) 관리가 어렵고, 쿼리 성능이 저하됩니다.
> 너무 얕으면 (1단계) 택소노미의 가치가 없습니다.

---

#### 카테고리 2: 구성 패턴 (Composition)

> **"이것은 저것으로 구성되어 있다"를 표현**

| 관계 | 방향 | 의미 | 대응하는 문제 패턴 |
|------|------|------|-------------------|
| **HAS_COMPONENT** | 전체 → 부분 | 구성요소 | "나. 구성요소를 설명하시오" |
| **HAS_PHASE** | 전체 → 단계 | 절차/단계 | "나. 절차를 설명하시오" |

```cypher
// "정보보안의 3대 요소"
MATCH (sec:Concept {id: 'information_security'})-[:HAS_COMPONENT]->(comp)
RETURN comp.name_kr
// → 기밀성, 무결성, 가용성

// "SDLC의 단계"
MATCH (sdlc:Concept {id: 'sdlc'})-[:HAS_PHASE]->(phase)
RETURN phase.name_kr
// → 요구분석, 설계, 구현, 테스트, 유지보수
```

**HAS_COMPONENT vs HAS_PHASE — 구분 기준:**

| 기준 | HAS_COMPONENT | HAS_PHASE |
|------|---------------|-----------|
| 순서 | 순서 없음 (기밀성, 무결성, 가용성은 순서 무관) | 순서 있음 (요구분석→설계→구현 순서 중요) |
| 성격 | 부분-전체 관계 (part-of) | 절차-과정 관계 (step-of) |
| 예시 | 보안 3요소, OSI 7계층의 각 계층 | SDLC 단계, RUP 4단계 |

---

#### 카테고리 3: 비교 패턴 (Comparison)

> **"이것과 저것은 대비/진화 관계이다"를 표현**

| 관계 | 방향 | 의미 | 대응하는 문제 패턴 |
|------|------|------|-------------------|
| **COMPARED_WITH** | 양방향 (한쪽만 저장) | 비교 대상 | "A와 B를 비교하시오" (11.3%, 771건) |
| **EVOLVED_FROM** | 신기술 → 구기술 | 진화/발전 | "Web 2.0→3.0", "4G→5G" |

COMPARED_WITH는 관계 속성이 특히 중요합니다:

```cypher
// COMPARED_WITH + 관계 속성
MERGE (aes)-[r:COMPARED_WITH]->(des)
SET r.perspectives = ['키 길이', '블록 크기', '구조', '보안성'],
    r.summary = 'AES는 SPN 구조로 DES의 Feistel 구조 대비 보안성 우수'
```

**왜 관계 속성인가? 중간 노드가 아닌 이유:**

비교 정보는:
- 두 노드 사이의 메타데이터 (관계 속성에 적합)
- 다른 것과 관계를 맺지 않음 (노드로 만들 필요 없음)
- 간단한 배열/문자열 (복잡한 구조가 아님)

만약 비교 관점마다 상세 설명이 필요하다면 (예: 각 관점별 점수, 출처), 그때는 중간 노드(Comparison)를 고려할 수 있습니다.

---

#### 카테고리 4: 의존/구현 패턴 (Dependency)

> **"이것은 저것에 의존/사용/구현한다"를 표현**

| 관계 | 방향 | 의미 | 예시 |
|------|------|------|------|
| **DEPENDS_ON** | 의존자 → 피의존 | 기술적 의존 | 딥러닝 → GPU |
| **IMPLEMENTS** | 구현체 → 개념 | 구현/적용 | SVM → 지도학습 |
| **USES** | 사용자 → 도구 | 사용/활용 | 객체지향 → UML |

```cypher
// "블록체인이 의존하는 기술"
MATCH (bc:Concept {id: 'blockchain'})-[:DEPENDS_ON]->(dep)
RETURN dep.name_kr

// "지도학습을 구현하는 알고리즘"
MATCH (impl)-[:IMPLEMENTS]->(sl:Concept {id: 'supervised_learning'})
RETURN impl.name_kr
```

**DEPENDS_ON vs USES — 구분 기준:**

| 기준 | DEPENDS_ON | USES |
|------|------------|------|
| 강도 | 필수 의존 (없으면 불가) | 선택적 사용 |
| 예시 | 딥러닝→GPU (GPU 없으면 학습 불가) | SW공학→UML (UML 없이도 가능) |
| 방향 | 의존하는 쪽 → 의존 대상 | 사용하는 쪽 → 도구/기술 |

---

#### 카테고리 5: 보안 패턴 (Security)

> **"위협 → 대상 → 대응" 트라이앵글을 표현**

| 관계 | 방향 | 의미 | 정량 근거 |
|------|------|------|----------|
| **THREATENS** | 위협 → 대상 | 위협한다 | AI+SE 교차 34건, NW+SE 33건 |
| **COUNTERED_BY** | 위협 → 대응 | 대응된다 | SE+SV 교차 34건 |
| **EXPLOITS** | 위협 → 취약점 | 악용한다 | 취약점 223회 |

```cypher
// "DDoS의 전체 위협-대응 구조"
MATCH (t:Threat {id: 'ddos'})-[:THREATENS]->(target)
MATCH (t)-[:COUNTERED_BY]->(counter)
RETURN target.name_kr AS 위협대상, collect(counter.name_kr) AS 대응기술
```

**왜 보안 관계를 별도 카테고리로 분리했는가?**

보안 도메인이 전체 출제의 **18.7%** (2,831건)를 차지하며,
"위협→대상→대응"이라는 **독자적 패턴**이 존재합니다.
DEPENDS_ON이나 USES로는 이 패턴을 정확히 표현할 수 없습니다.
"DDoS가 가용성을 위협한다"는 DEPENDS_ON이 아니라 THREATENS입니다.

---

#### 카테고리 6: 추적 패턴 (Provenance)

> **"이 데이터가 어디에서 왔는가"를 표현**

| 관계 | 방향 | 의미 |
|------|------|------|
| **BELONGS_TO** | 개체 → Domain | 도메인 분류 |
| **MENTIONED_IN** | 개체 → Document | 문서 출처 |
| **DEFINED_BY** | 개체 → Standard/Law | 표준/법률 정의 |
| **MEASURED_BY** | 개체 → Metric | 지표로 측정 |
| **ASKS_ABOUT** | Question → 개체 | 문제가 묻는 개념 |

```cypher
// 데이터 리니지: "이 개념은 어떤 문서에서 왔는가?"
MATCH (c:Concept {id: 'encryption'})-[:MENTIONED_IN]->(doc:Document)
RETURN doc.id, doc.domain

// 역방향: "이 문서에서 어떤 개념이 추출되었는가?"
MATCH (c)-[:MENTIONED_IN]->(doc:Document {id: 'SE_002'})
RETURN c.name_kr
```

### 6.2.4 "관계 속성" vs "중간 노드" 결정 기준

관계에 메타데이터를 붙여야 할 때, 두 가지 선택지가 있습니다:

**선택 1: 관계 속성 (Relationship Property)**
```cypher
(aes)-[:COMPARED_WITH {perspectives: ['키 길이', '구조'], summary: '...'}]->(des)
```

**선택 2: 중간 노드 (Intermediate Node)**
```cypher
(aes)-[:COMPARED_IN]->(comp:Comparison {perspectives: [...]})-[:COMPARED_IN]->(des)
```

**결정 기준:**

| 기준 | 관계 속성 | 중간 노드 |
|------|----------|----------|
| 메타데이터가 단순한가? (문자열, 배열) | ✅ 적합 | 과잉 |
| 메타데이터가 다른 것과 관계를 맺는가? | ❌ 불가 | ✅ 가능 |
| 같은 두 노드 사이에 동일 관계가 여러 개인가? | ❌ 어려움 | ✅ 각각 노드로 |
| 메타데이터로 검색/필터링하는가? | △ 가능하지만 느림 | ✅ 인덱스 활용 |
| 간결함이 중요한가? | ✅ 단순 | 복잡성 증가 |

우리 프로젝트에서:
- COMPARED_WITH의 perspectives, summary → **관계 속성** (단순 배열/문자열)
- 만약 비교 관점마다 "AES 값: 128bit, DES 값: 56bit"를 저장해야 한다면 → **중간 노드** 고려

### 6.2.5 [안티패턴] 관계 설계의 흔한 실수

#### 안티패턴 1: Generic RELATED_TO 남발

```cypher
// ❌ 모든 관계가 RELATED_TO
(딥러닝)-[:RELATED_TO]->(머신러닝)     // 상위? 하위? 의존? 사용?
(DDoS)-[:RELATED_TO]->(가용성)          // 위협? 보호? 관련?
(AES)-[:RELATED_TO]->(DES)              // 비교? 대체? 진화?
```

**왜 나쁜가:** 관계에 의미가 없으면 그래프 탐색의 가치가 없습니다.
"딥러닝과 RELATED_TO인 것"은 "딥러닝의 하위 기술"보다 훨씬 쓸모없는 정보입니다.

**예외:** Phase 1 탐색용으로 RELATED_TO를 임시 사용하고, 점진적으로 구체적 관계로 교체하는 전략은 유효합니다.

#### 안티패턴 2: 관계 타입 폭발

```cypher
// ❌ 지나치게 세분화
SUBCLASS_OF_IN_AI
SUBCLASS_OF_IN_SE
SUBCLASS_OF_IN_NW
COMPARED_FOR_SECURITY
COMPARED_FOR_PERFORMANCE
```

**해결:** 하나의 관계 타입 + 속성 또는 대상 노드로 구분

#### 안티패턴 3: 방향 불일치

```cypher
// ❌ 같은 SUBCLASS_OF인데 방향이 반대
(딥러닝)-[:SUBCLASS_OF]->(머신러닝)     // 하위→상위 ✅
(AI)-[:SUBCLASS_OF]->(머신러닝)          // 상위→하위 ❌ 방향 반대!
```

**해결:** 관계 타입별 방향 규칙을 문서화하고, 검증 쿼리로 확인

---

## 6.3 속성 설계 기법

### 6.3.1 id 속성 — 모든 노드의 핵심

id는 MERGE의 매칭 키이자, 그래프 전체의 참조 기준입니다.
**id 설계를 잘못하면 중복 노드, 미연결, 데이터 손실이 발생합니다.**

**네이밍 컨벤션:**

```
규칙: 영문 소문자 + 언더스코어
  ✅ deep_learning, iso_27001, function_point
  ❌ DeepLearning, deep-learning, 딥러닝, Deep Learning
```

| 규칙 | 설명 | 예시 |
|------|------|------|
| 소문자 통일 | 대소문자 혼재 방지 | `deep_learning` (O), `Deep_Learning` (X) |
| 공백→언더스코어 | 공백 포함 시 Cypher 따옴표 필요 | `sql_injection` (O), `sql injection` (X) |
| 약어 유지 | 잘 알려진 약어는 그대로 | `tcp`, `dma`, `iot`, `cnn` |
| 특수문자 제거 | Cypher 파싱 문제 방지 | `iso_27001` (O), `iso/27001` (X) |
| 의미 명확 | id만 보고 무엇인지 유추 가능 | `supervised_learning` (O), `sl` (X) |

> ⚠️ **우리 프로젝트의 실패 사례: id 불일치**
>
> 시드 노드: `id: 'agile'` (00_schema.cypher에서 생성)
> 문서 데이터: `id: 'agile_methodology'` (sw_001_010.cypher에서 생성)
>
> 결과: 같은 "애자일"이 2개 노드로 존재 → 관계 분산 → 검색 누락
>
> **교훈:** id 네이밍 가이드를 문서화하고, Cypher 생성 시 시드 목록을 참조 자료로 제공해야 합니다.
> 이것이 "id 네이밍의 일관성 = 그래프 품질의 80%"라고 말하는 이유입니다.

### 6.3.2 이름 속성 — name, name_kr, aliases

다국어 환경에서 이름은 여러 속성으로 분리합니다:

| 속성 | 역할 | 예시 |
|------|------|------|
| `name` | 대표 영문명 (국제 호환, 검색) | "Deep Learning" |
| `name_kr` | 한글명 (표시, 한국어 검색) | "딥러닝" |
| `aliases` | 동의어/약어 배열 (전문검색) | ["DL", "심층학습"] |

```cypher
// 전문검색 인덱스 활용
CREATE FULLTEXT INDEX concept_fulltext IF NOT EXISTS
FOR (n:Concept) ON EACH [n.name, n.name_kr, n.definition];

// "딥러닝" 또는 "Deep Learning" 또는 "DL"로 검색
CALL db.index.fulltext.queryNodes('concept_fulltext', '딥러닝')
YIELD node, score
RETURN node.id, node.name_kr, score
ORDER BY score DESC
```

> 💡 **aliases가 속성인 이유**: 동의어는 해당 노드의 "다른 이름"일 뿐, 다른 것과 관계를 맺지 않습니다.
> 6.1.2의 4가지 판단 기준 중 Q1~Q4 모두 NO → 속성이 적합.

### 6.3.3 분류 속성 — domain, category, importance

| 속성 | 노드 타입 | 값 | 인덱스 | 용도 |
|------|----------|-----|--------|------|
| `domain` | Concept, Technology, Method 등 | 'AI', 'SE', 'DB' 등 13종 | ✅ | 도메인별 필터링 |
| `category` | Technology | 'tool', 'platform', 'protocol', 'language', 'hardware' | ❌ | 하위 분류 |
| `category` | Method | 'methodology', 'algorithm', 'technique', 'pattern', 'test_method' | ❌ | 하위 분류 |
| `importance` | Concept | 'high', 'medium', 'low' | ❌ | 우선순위 표시 |

**"domain을 속성으로 두고, 동시에 Domain 노드와 BELONGS_TO 관계도 있는 건 중복 아닌가?"**

좋은 질문입니다. 의도적 중복(denormalization)입니다:

```cypher
// 속성 활용: 빠른 필터링 (인덱스 사용)
MATCH (c:Concept {domain: 'AI'}) RETURN c.name_kr

// 관계 활용: 도메인의 메타데이터와 함께 조회
MATCH (c:Concept)-[:BELONGS_TO]->(d:Domain {id: 'AI'})
RETURN c.name_kr, d.exam_weight, d.doc_count
```

- `domain` 속성: 단순 필터링에 최적 (인덱스 활용)
- `BELONGS_TO` 관계: Domain 노드의 풍부한 메타데이터와 연결
- RDB에서는 비정규화가 위험하지만, 그래프에서는 관계와 속성의 역할이 다르므로 유효한 전략

### 6.3.4 메타데이터 속성 — definition, exam_frequency

| 속성 | 역할 | 예시 | 비고 |
|------|------|------|------|
| `definition` | 1~2문장 핵심 정의 | "컴퓨터가 데이터를 통해 스스로 학습..." | 단답설명형 57% 대응 |
| `exam_frequency` | 출제 횟수 | 922 (테스트), 727 (AI) | 정량 분석 기반 |
| `importance` | 중요도 | 'high' (Top 50) | 시드 노드 표시용 |

```cypher
// definition이 있는 노드만 조회 (Neo4j에서는 속성이 없으면 NULL이 아니라 "존재하지 않음")
MATCH (c:Concept)
WHERE c.definition IS NOT NULL
RETURN c.name_kr, c.definition
```

> 💡 **Neo4j의 NULL 특성**: RDB와 달리 Neo4j에서는 속성이 없으면 NULL이 아니라 "존재하지 않음"입니다.
> 저장 공간을 절약하고, "이 노드에는 정의가 아직 없다"를 자연스럽게 표현합니다.
> 불필요한 빈 문자열(`definition: ''`)을 저장하지 마세요.

### 6.3.5 배열 속성 활용

Neo4j는 배열(List) 타입 속성을 지원합니다:

| 속성 | 타입 | 예시 | 용도 |
|------|------|------|------|
| `aliases` | string[] | ["DL", "심층학습"] | 동의어 검색 |
| `perspectives` | string[] | ["키 길이", "구조", "보안성"] | 비교 관점 (관계 속성) |
| `cross_domains` | string[] | ["AI", "NW"] | 교차 도메인 (Threat) |
| `sub_items` | string[] | ["가. 개념", "나. 구성요소"] | 문제 하위항목 |

```cypher
// 배열 속성 활용 예시
MATCH (t:Threat)
WHERE 'AI' IN t.cross_domains
RETURN t.name_kr, t.cross_domains
// → AI 도메인과 교차 출제되는 위협 목록
```

**배열 속성의 한계:**
- 배열 안의 개별 요소에 인덱스를 걸 수 없음 (전문검색 인덱스 제외)
- 배열의 각 요소에 메타데이터를 붙일 수 없음
- 배열이 너무 길면 (50개+) 성능 저하 가능

→ 요소가 자체 속성/관계를 가져야 한다면, 노드로 승격을 고려하세요.

### 6.3.6 [안티패턴] 속성 설계의 흔한 실수

#### 안티패턴 1: 속성 과다

```cypher
// ❌ 20개 이상의 속성
MERGE (c:Concept {id: 'deep_learning'})
SET c.name = '...', c.name_kr = '...', c.name_en = '...',
    c.name_ja = '...', c.name_zh = '...',
    c.definition = '...', c.definition_short = '...', c.definition_long = '...',
    c.example1 = '...', c.example2 = '...', c.example3 = '...',
    c.related_topic1 = '...', c.related_topic2 = '...',
    c.created_at = '...', c.updated_at = '...', c.created_by = '...',
    c.version = '...', c.status = '...', c.tags = '...',
    c.source = '...', c.notes = '...'
```

**문제:**
- 어떤 속성이 필수이고 어떤 것이 선택인지 불명확
- 대부분의 노드에서 속성의 절반이 NULL
- related_topic1, related_topic2는 관계로 표현해야 할 내용

**해결:** 핵심 속성만 남기고, 관계성 있는 데이터는 관계로, 부가 정보는 별도 노드로

#### 안티패턴 2: JSON 문자열 남용

```cypher
// ❌ JSON을 문자열로 저장
SET c.metadata = '{"source": "AI_001", "page": 3, "confidence": 0.95}'
```

**문제:**
- Cypher에서 JSON 파싱 불가 (APOC 없이)
- 인덱스/검색 불가
- 타입 안전성 없음

**해결:** 개별 속성으로 분리 (`c.source`, `c.page`, `c.confidence`)

#### 안티패턴 3: 타입 혼재

```cypher
// ❌ 같은 속성인데 타입이 다름
MERGE (c1:Concept {id: 'testing'}) SET c1.exam_frequency = 922      // 정수
MERGE (c2:Concept {id: 'agile'}) SET c2.exam_frequency = '158'     // 문자열!
```

**문제:**
- `ORDER BY exam_frequency` 시 정렬 오류 (문자열 '158'은 '922'보다 앞)
- 비교 연산 불가 (`WHERE c.exam_frequency > 100` 실패)

**해결:** 타입 일관성 유지. Neo4j 25에서는 Property Type Constraint로 강제 가능:
```cypher
CREATE CONSTRAINT concept_exam_freq_type IF NOT EXISTS
FOR (n:Concept)
REQUIRE n.exam_frequency IS :: INTEGER
```

---

## 6.4 스키마 패턴 카탈로그 심화

### 6.4.1 계층 패턴 — SUBCLASS_OF 체인

**깊이 제어:**
```cypher
// 최대 3단계까지 탐색
MATCH path = (leaf)-[:SUBCLASS_OF*1..3]->(root)
WHERE root.id = 'artificial_intelligence'
RETURN path
```

**다중 상속 (Multiple Inheritance):**

하나의 노드가 여러 상위 노드를 가질 수 있습니다:
```cypher
// "적대적 공격"은 AI 개념이면서 보안 위협
(adversarial_attack)-[:SUBCLASS_OF]->(machine_learning)
(adversarial_attack)-[:SUBCLASS_OF]->(cyber_attack)
```

Neo4j의 그래프 모델은 다중 상속을 자연스럽게 지원합니다 (트리가 아닌 DAG).

⚠️ **주의: 순환 참조 금지**
```cypher
// ❌ A→B→C→A 순환
(a)-[:SUBCLASS_OF]->(b)-[:SUBCLASS_OF]->(c)-[:SUBCLASS_OF]->(a)

// 검증 쿼리
MATCH path = (n)-[:SUBCLASS_OF*2..5]->(n)
RETURN [node IN nodes(path) | node.id] AS cycle
```

### 6.4.2 분류 패턴 — Domain BELONGS_TO

```cypher
// 모든 노드 → Domain 연결 (일괄)
MATCH (c:Concept), (d:Domain) WHERE c.domain = d.id
MERGE (c)-[:BELONGS_TO]->(d);

MATCH (t:Technology), (d:Domain) WHERE t.domain = d.id
MERGE (t)-[:BELONGS_TO]->(d);

// 다중 도메인 소속 가능 (교차 출제 개념)
// "암호화"는 SE 주 도메인이지만 NW, AI에서도 출제
MATCH (c:Concept {id: 'encryption'}), (d:Domain {id: 'NW'})
MERGE (c)-[:BELONGS_TO]->(d);
```

### 6.4.3 추적 패턴 — 데이터 리니지

```cypher
// "이 개념이 어느 문서에서 추출되었는가?"
MATCH (c:Concept {id: 'deep_learning'})-[:MENTIONED_IN]->(doc:Document)
RETURN doc.id, doc.domain

// "이 문서에서 몇 개 개념이 추출되었는가?"
MATCH (concept)-[:MENTIONED_IN]->(doc:Document)
WITH doc, count(concept) AS concept_count
RETURN doc.id, concept_count
ORDER BY concept_count DESC
```

데이터 리니지는 기업 환경에서 특히 중요합니다:
- 규제 준수: "이 데이터의 출처는?"
- 품질 관리: "이 개념이 단일 문서에만 기반한 건 아닌지?"
- 영향 분석: "이 문서가 삭제되면 영향받는 개념은?"

### 6.4.4 [기업 박스] 기업 공통 스키마 패턴

> **기업에서 자주 사용되는 그래프 스키마 패턴:**
>
> **조직도 패턴:**
> ```cypher
> (:Employee)-[:REPORTS_TO]->(:Employee)
> (:Employee)-[:BELONGS_TO]->(:Department)
> (:Department)-[:PART_OF]->(:Division)
> ```
>
> **제품 카탈로그 패턴:**
> ```cypher
> (:Product)-[:BELONGS_TO]->(:Category)
> (:Product)-[:USES_PART]->(:Component)
> (:Product)-[:SUPPLIED_BY]->(:Supplier)
> (:Product)-[:SIMILAR_TO]->(:Product)
> ```
>
> **IT 인프라(CMDB) 패턴:**
> ```cypher
> (:Application)-[:RUNS_ON]->(:Server)
> (:Application)-[:CONNECTS_TO]->(:Database)
> (:Service)-[:DEPENDS_ON]->(:Application)
> (:Server)-[:LOCATED_IN]->(:DataCenter)
> ```
>
> **고객 여정 패턴:**
> ```cypher
> (:Customer)-[:PERFORMED]->(:Action)
> (:Action)-[:ON]->(:Product)
> (:Customer)-[:BELONGS_TO]->(:Segment)
> (:Action)-[:FOLLOWED_BY]->(:Action)
> ```
>
> 이 패턴들은 우리 프로젝트의 패턴과 구조적으로 동일합니다:
> - BELONGS_TO = 분류 패턴
> - DEPENDS_ON = 의존 패턴
> - USES_PART = 구성 패턴
> - SIMILAR_TO = 비교 패턴
>
> **QDM은 도메인이 달라도 동일하게 적용됩니다.**

---

## [실습] 미니 스키마 설계 — 노드 5개 + 관계 8개

### 과제

우리 프로젝트의 **AI 도메인 서브그래프**를 설계하세요.

**주어진 원본 텍스트:**
```
인공지능(AI)은 인간의 지적 능력을 컴퓨터로 구현하는 기술이다.
머신러닝은 AI의 하위 분야이며, 딥러닝은 머신러닝의 하위이다.
머신러닝의 유형에는 지도학습, 비지도학습, 강화학습이 있다.
CNN은 딥러닝을 구현한 기술로, GPU에 의존한다.
```

### 설계 결과 (정답)

**노드:**
```
(:Concept {id: 'artificial_intelligence', name_kr: '인공지능', domain: 'AI'})
(:Concept {id: 'machine_learning', name_kr: '머신러닝', domain: 'AI'})
(:Concept {id: 'deep_learning', name_kr: '딥러닝', domain: 'AI'})
(:Concept {id: 'supervised_learning', name_kr: '지도학습', domain: 'AI'})
(:Technology {id: 'cnn', name_kr: 'CNN', domain: 'AI'})
```

**관계:**
```
(machine_learning)-[:SUBCLASS_OF]->(artificial_intelligence)
(deep_learning)-[:SUBCLASS_OF]->(machine_learning)
(supervised_learning)-[:HAS_TYPE]->(machine_learning)
(cnn)-[:IMPLEMENTS]->(deep_learning)
(cnn)-[:DEPENDS_ON]->(gpu)
```

**Cypher로 구현:**
```cypher
MERGE (ai:Concept {id: 'artificial_intelligence'})
SET ai.name_kr = '인공지능', ai.domain = 'AI';

MERGE (ml:Concept {id: 'machine_learning'})
SET ml.name_kr = '머신러닝', ml.domain = 'AI';

MERGE (dl:Concept {id: 'deep_learning'})
SET dl.name_kr = '딥러닝', dl.domain = 'AI';

MERGE (sl:Concept {id: 'supervised_learning'})
SET sl.name_kr = '지도학습', sl.domain = 'AI';

MERGE (cnn:Technology {id: 'cnn'})
SET cnn.name_kr = 'CNN', cnn.domain = 'AI';

MERGE (ml)-[:SUBCLASS_OF]->(ai);
MERGE (dl)-[:SUBCLASS_OF]->(ml);
MERGE (sl)-[:HAS_TYPE]->(ml);
MERGE (cnn)-[:IMPLEMENTS]->(dl);
```

### 검증 체크리스트

- [ ] 모든 MERGE는 id로만 매칭하고 나머지는 SET인가?
- [ ] 라벨이 PascalCase인가?
- [ ] 관계가 SCREAMING_SNAKE_CASE인가?
- [ ] 관계 방향이 의미적으로 맞는가? (하위→상위, 구현체→개념)
- [ ] 고립 노드가 없는가?

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 노드 설계 = "4가지 질문으로 노드 vs 속성 판단"           │
│     관계를 가지는가? 참조되는가? 검색하는가? 메타가 있는가?  │
│                                                              │
│  2. 관계 설계 = "6개 카테고리 패턴 카탈로그"                 │
│     계층, 구성, 비교, 의존, 보안, 추적                       │
│     방향: 의미적 방향 우선, 대칭 관계는 한쪽만 저장          │
│                                                              │
│  3. 속성 설계 = "id가 핵심, 일관성이 생명"                   │
│     id 네이밍 불일치 = 중복 노드 = 최대 위험                 │
│     타입 일관성, 불필요한 NULL 방지, 배열 활용               │
│                                                              │
│  4. 안티패턴 회피                                            │
│     God Node, 라벨 폭발, 교차 라벨 중복                     │
│     Generic RELATED_TO, 양방향 중복, JSON 남용               │
│                                                              │
│  다음 챕터: Cypher로 스키마를 구현하는 방법 (Ch.07)          │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```
