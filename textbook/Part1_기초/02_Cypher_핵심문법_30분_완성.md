# Ch.02 — Cypher 핵심문법 30분 완성

> **"Cypher를 모르면 Neo4j를 쓸 수 없다. 하지만 30분이면 시작할 수 있다."**

이 챕터의 목표는 명확합니다:
Part 2(실전 워크플로우)를 따라가기 위한 **"최소한의 Cypher"**를 익히는 것.
깊이 있는 문법은 Part 3(Ch.13~15)에서 다루므로,
여기서는 **"읽을 수 있고, 기본 쿼리를 쓸 수 있는"** 수준을 목표로 합니다.

---

## 2.1 Cypher란 무엇인가

Cypher는 Neo4j의 선언적(declarative) 쿼리 언어입니다.
SQL이 "테이블에서 데이터를 꺼내는 언어"라면,
Cypher는 **"그래프에서 패턴을 찾는 언어"**입니다.

가장 큰 특징은 **ASCII Art 문법**입니다:

```
SQL:    SELECT * FROM users WHERE name = 'Alice'
Cypher: MATCH (u:User {name: 'Alice'}) RETURN u
```

```
노드:    (n)          ← 괄호 = 원(노드)
관계:    -[r]->       ← 화살표 = 방향 있는 관계
라벨:    (n:Concept)  ← 콜론 뒤 = 라벨(유형)
속성:    {id: 'ai'}   ← 중괄호 = 속성(키-값)
```

이 패턴을 읽는 법:

```cypher
(a:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(b:Concept)
```

→ "id가 `deep_learning`인 Concept 노드 `a`가,
   SUBCLASS_OF 관계로, 또 다른 Concept 노드 `b`를 가리킨다"

> 💡 **SQL을 안다면 Cypher는 쉽습니다**
>
> | SQL | Cypher | 의미 |
> |-----|--------|------|
> | `SELECT` | `RETURN` | 결과 반환 |
> | `FROM + WHERE` | `MATCH + WHERE` | 데이터 탐색 |
> | `INSERT` | `CREATE` | 새 데이터 생성 |
> | `UPDATE` | `SET` | 속성 변경 |
> | `DELETE` | `DELETE` / `DETACH DELETE` | 삭제 |
> | `JOIN` | 패턴 매칭 (`()-[]->()`) | 관계 탐색 |

---

## 2.2 읽기 — MATCH + RETURN

### 2.2.1 기본 패턴 — 노드 찾기

```cypher
// 모든 Concept 노드 조회
MATCH (c:Concept)
RETURN c
```

- `MATCH`: "이 패턴에 맞는 데이터를 찾아라"
- `(c:Concept)`: Concept 라벨을 가진 노드를 `c`라는 변수에 바인딩
- `RETURN c`: 찾은 노드를 반환

```cypher
// 특정 속성으로 필터링
MATCH (c:Concept {id: 'deep_learning'})
RETURN c.name_kr AS 이름, c.domain AS 도메인, c.definition AS 정의
```

- `{id: 'deep_learning'}`: 인라인 필터 (WHERE와 동일 효과)
- `c.name_kr AS 이름`: 속성 접근 + 별칭

### 2.2.2 관계 패턴 — 연결된 노드 찾기

```cypher
// 딥러닝의 상위 개념 찾기
MATCH (dl:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(parent)
RETURN parent.name_kr AS 상위개념
```

```cypher
// 방향 무시 — 딥러닝과 연결된 모든 노드
MATCH (dl:Concept {id: 'deep_learning'})-[r]-(connected)
RETURN type(r) AS 관계, connected.name_kr AS 연결노드
```

- `type(r)`: 관계의 타입을 문자열로 반환
- `-[r]-`: 방향 없는 탐색 (화살표 생략)

```cypher
// 여러 관계 타입 동시 탐색
MATCH (c:Concept {id: 'deep_learning'})-[r:SUBCLASS_OF|DEPENDS_ON]->(target)
RETURN type(r) AS 관계, target.name_kr AS 대상
```

- `SUBCLASS_OF|DEPENDS_ON`: OR 조건 (둘 중 하나)

### 2.2.3 WHERE로 필터링

```cypher
// 출제 빈도 500 이상인 Concept
MATCH (c:Concept)
WHERE c.exam_frequency >= 500
RETURN c.name_kr AS 개념, c.exam_frequency AS 빈도
ORDER BY c.exam_frequency DESC
```

**WHERE 연산자:**

| 연산자 | 의미 | 예시 |
|--------|------|------|
| `=` | 같다 | `WHERE c.domain = 'AI'` |
| `<>` | 다르다 | `WHERE c.domain <> 'ST'` |
| `>`, `>=`, `<`, `<=` | 비교 | `WHERE c.exam_frequency > 100` |
| `AND`, `OR`, `NOT` | 논리 | `WHERE c.domain = 'AI' AND c.exam_frequency > 100` |
| `IN` | 목록 포함 | `WHERE c.domain IN ['AI', 'SE', 'SW']` |
| `STARTS WITH` | 접두사 | `WHERE c.name STARTS WITH 'Deep'` |
| `CONTAINS` | 포함 | `WHERE c.definition CONTAINS '신경망'` |
| `IS NULL` / `IS NOT NULL` | NULL 체크 | `WHERE c.definition IS NOT NULL` |

### 2.2.4 정렬, 제한, 별칭

```cypher
// Top 10 출제 빈도 개념
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr AS 개념,
       c.domain AS 도메인,
       c.exam_frequency AS 빈도
ORDER BY 빈도 DESC
LIMIT 10
```

- `ORDER BY`: 정렬 (DESC = 내림차순, 기본은 ASC 오름차순)
- `LIMIT`: 결과 수 제한
- `AS`: 별칭 (한글 사용 가능)
- `DISTINCT`: 중복 제거 — `RETURN DISTINCT c.domain`은 고유한 도메인만 반환

```cypher
// DISTINCT 예시 — 어떤 도메인들이 있는지 중복 없이 조회
MATCH (c:Concept)
RETURN DISTINCT c.domain AS 도메인
ORDER BY 도메인
```

### 2.2.5 집계 — count, collect

```cypher
// 도메인별 Concept 수
MATCH (c:Concept)
RETURN c.domain AS 도메인, count(c) AS 개수
ORDER BY 개수 DESC
```

```cypher
// 도메인별 Concept 이름 목록
MATCH (c:Concept)
RETURN c.domain AS 도메인,
       count(c) AS 개수,
       collect(c.name_kr)[..5] AS 상위5개
ORDER BY 개수 DESC
```

- `count()`: 개수 집계
- `collect()`: 결과를 리스트로 수집
- `[..5]`: 리스트 슬라이싱 (앞에서 5개만)

---

## 2.3 쓰기 — CREATE vs MERGE

### 2.3.1 CREATE — 무조건 생성

```cypher
// 새 노드 생성
CREATE (c:Concept {id: 'blockchain', name_kr: '블록체인', domain: 'SV'})
RETURN c
```

**CREATE는 항상 새 노드를 만듭니다.** 같은 쿼리를 두 번 실행하면?
→ **동일한 속성을 가진 노드가 2개** 생깁니다!

```cypher
// ❌ 위험! 두 번 실행하면 중복 노드 발생
CREATE (c:Concept {id: 'blockchain', name_kr: '블록체인'})
```

### 2.3.2 MERGE — 있으면 재사용, 없으면 생성

```cypher
// 있으면 기존 노드 반환, 없으면 새로 생성
MERGE (c:Concept {id: 'blockchain'})
SET c.name_kr = '블록체인', c.domain = 'SV'
RETURN c
```

**MERGE는 "매칭 키"로 기존 노드를 찾습니다.**
- 찾으면 → 기존 노드 반환 (생성하지 않음)
- 못 찾으면 → 새 노드 생성

몇 번을 실행해도 결과가 같습니다 — 이것을 **멱등성(idempotency)**이라 합니다.

> [설계 원칙] **"온톨로지에서는 항상 MERGE"**
>
> 온톨로지 구축에서 CREATE는 거의 사용하지 않습니다.
> 이유:
> - 여러 문서에서 같은 개념이 등장 → MERGE로 자동 연결
> - 실수로 두 번 실행해도 중복 없음
> - 도메인 A의 "딥러닝"과 도메인 B의 "딥러닝"이 자동으로 같은 노드
>
> **이 교재 전체에서 CREATE는 테스트/실습 용도로만 사용합니다.
> 실제 데이터 적재는 반드시 MERGE를 사용합니다.**

### 2.3.3 ON CREATE SET / ON MATCH SET

MERGE가 노드를 **새로 만들었을 때**와 **기존 노드를 찾았을 때**를
구분하여 다른 작업을 수행할 수 있습니다:

```cypher
MERGE (c:Concept {id: 'deep_learning'})
ON CREATE SET
    c.name_kr = '딥러닝',
    c.created_at = datetime()
ON MATCH SET
    c.last_seen = datetime()
SET
    c.domain = 'AI'    // CREATE/MATCH 모두 실행
RETURN c
```

| 절 | 언제 실행 | 용도 |
|----|----------|------|
| `ON CREATE SET` | 노드가 새로 생성될 때만 | 초기값 설정 (생성일시 등) |
| `ON MATCH SET` | 기존 노드를 찾았을 때만 | 갱신 (최근 접근 시각 등) |
| `SET` | 항상 (CREATE/MATCH 무관) | 공통 속성 설정 |

> 💡 **실전 활용**: 시드 노드의 속성을 보호할 때 유용합니다.
>
> ```cypher
> // 시드에서 이미 설정한 exam_frequency를 문서 적재 시 덮어쓰지 않음
> MERGE (c:Concept {id: 'testing'})
> ON CREATE SET c.exam_frequency = 922, c.importance = 'high'
> ON MATCH SET c.definition = '소프트웨어 결함 발견 활동'
> ```

### 2.3.4 관계 MERGE

```cypher
// 안전한 관계 생성 패턴
MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)
```

**왜 양쪽 노드도 MERGE인가?**

```cypher
// ❌ MATCH 사용 시 — 노드가 없으면 관계도 안 만들어짐 (silent failure!)
MATCH (a:Concept {id: 'deep_learning'})
MATCH (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)
// → a 또는 b가 없으면? 아무 에러 없이 0건 반환. 발견하기 어려운 버그!
```

> ⚠️ **[안티패턴] MERGE에 속성을 과다하게 넣지 마라**
>
> ```cypher
> // ❌ 위험! name이나 domain이 조금이라도 다르면 새 노드 생성
> MERGE (c:Concept {id: 'deep_learning', name: 'Deep Learning', domain: 'AI'})
>
> // ✅ 안전! id로만 매칭하고, 나머지는 SET
> MERGE (c:Concept {id: 'deep_learning'})
> SET c.name = 'Deep Learning', c.domain = 'AI'
> ```
>
> **규칙**: MERGE의 `{}`에는 **id만** 넣는다. 나머지 속성은 SET으로 분리.

---

## 2.4 수정과 삭제

### 2.4.1 속성 수정 — SET

```cypher
// 단일 속성 수정
MATCH (c:Concept {id: 'deep_learning'})
SET c.definition = '다층 인공신경망을 사용하는 머신러닝 기법'
RETURN c
```

```cypher
// 여러 속성 동시 수정
MATCH (c:Concept {id: 'deep_learning'})
SET c.definition = '다층 인공신경망을 사용하는 머신러닝 기법',
    c.importance = 'high',
    c.aliases = ['DL', '심층학습', 'Deep Learning']
RETURN c
```

### 2.4.2 속성 제거 — REMOVE

```cypher
// 속성 제거 (속성 자체를 삭제)
MATCH (c:Concept {id: 'deep_learning'})
REMOVE c.aliases
RETURN c
```

`SET c.aliases = null`과 동일한 효과입니다.

### 2.4.3 라벨 추가/제거

```cypher
// 라벨 추가
MATCH (c:Concept {id: 'deep_learning'})
SET c:CoreConcept
RETURN labels(c)
// → ['Concept', 'CoreConcept']

// 라벨 제거
MATCH (c:Concept {id: 'deep_learning'})
REMOVE c:CoreConcept
RETURN labels(c)
// → ['Concept']
```

> ⚠️ **[안티패턴] 라벨 없는 MATCH**
>
> ```cypher
> // ❌ 라벨 없음 → 전체 노드를 스캔하므로 느림
> MATCH (c {id: 'deep_learning'}) RETURN c
>
> // ✅ 라벨 지정 → 해당 라벨의 인덱스를 활용하여 빠름
> MATCH (c:Concept {id: 'deep_learning'}) RETURN c
> ```
>
> 라벨을 지정하면 Neo4j가 인덱스를 활용합니다.
> 라벨 없이 `(c {id: ...})`만 쓰면 **모든 노드를 순회**해야 하므로
> 데이터가 많을수록 성능이 급격히 떨어집니다. 항상 라벨을 명시하세요.

### 2.4.4 삭제 — DELETE vs DETACH DELETE

```cypher
// 관계가 없는 노드 삭제
MATCH (n:Test {name: 'temp'})
DELETE n
```

```cypher
// 관계가 있는 노드 삭제 — DELETE만 쓰면 에러!
MATCH (n:Concept {id: 'temp_concept'})
DELETE n
// → 에러: Cannot delete node with relationships

// 관계까지 함께 삭제
MATCH (n:Concept {id: 'temp_concept'})
DETACH DELETE n
```

> ⚠️ **DETACH DELETE는 강력하지만 위험합니다**
>
> 노드와 연결된 **모든 관계**가 함께 삭제됩니다.
> 중요한 노드를 실수로 DETACH DELETE하면, 그 노드와 연결된
> 수십 개의 관계가 사라집니다. 복구할 수 없습니다.
>
> **규칙**: DETACH DELETE 전에 항상 먼저 확인하세요:
> ```cypher
> // 삭제 전 확인 — 연결된 관계가 몇 개인지 확인
> MATCH (n:Concept {id: 'temp_concept'})-[r]-()
> RETURN type(r), count(r)
> ```

---

## 2.5 제약조건과 인덱스 (맛보기)

### 2.5.1 UNIQUE 제약조건 — 중복 방지의 핵심

```cypher
// Concept 노드의 id는 고유해야 한다
CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;
```

이 제약조건이 설정되면:
- 같은 id를 가진 Concept 노드를 두 개 만들 수 없음
- MERGE가 id로 기존 노드를 정확히 찾을 수 있음 (성능 보장)
- **UNIQUE 제약조건은 인덱스를 자동 생성합니다** — 별도 인덱스 불필요

```cypher
// 확인
SHOW CONSTRAINTS;
```

### 2.5.2 기본 인덱스 — 검색 성능 향상

```cypher
// 이름 검색을 빠르게
CREATE INDEX concept_name IF NOT EXISTS
FOR (n:Concept) ON (n.name);

CREATE INDEX concept_name_kr IF NOT EXISTS
FOR (n:Concept) ON (n.name_kr);
```

```cypher
// 확인
SHOW INDEXES;
```

> 💡 **제약조건과 인덱스는 Ch.07에서 상세히 다룹니다.**
> 여기서는 "이런 것이 있다"는 것만 알면 됩니다.
> 우리 프로젝트의 11개 제약조건 + 14개 인덱스는 `cypher/00_schema.cypher`에
> 정의되어 있으며, Ch.07에서 라인별로 해설합니다.

---

## 2.6 WITH 절 — 쿼리 체이닝

`WITH`는 Cypher에서 **파이프라인**처럼 동작합니다.
앞 단계의 결과를 다음 단계로 전달합니다.

```cypher
// 도메인별 Concept 수를 구한 뒤, 20개 이상인 도메인만 필터
MATCH (c:Concept)
WITH c.domain AS 도메인, count(c) AS 개수
WHERE 개수 >= 20
RETURN 도메인, 개수
ORDER BY 개수 DESC
```

**WITH의 핵심 규칙:**
- WITH 이후에는 WITH에서 명시한 변수만 사용 가능
- 집계(count, collect 등)를 한 후 추가 필터링할 때 필수
- SQL의 `HAVING`과 비슷한 역할

```cypher
// 실전 예시: BELONGS_TO가 누락된 노드 찾기
// OPTIONAL MATCH: MATCH와 비슷하지만, 패턴이 없어도 NULL을 반환하며 쿼리를 계속 진행
// (MATCH는 패턴이 없으면 결과 자체가 0건이 됨)
MATCH (c:Concept)
WHERE c.domain IS NOT NULL
WITH c
OPTIONAL MATCH (c)-[r:BELONGS_TO]->(:Domain)
WITH c, r
WHERE r IS NULL
RETURN c.id, c.domain, '누락' AS 상태
```

> 💡 **OPTIONAL MATCH = SQL의 LEFT JOIN**
>
> `MATCH`는 패턴이 반드시 존재해야 결과를 반환합니다 (INNER JOIN).
> `OPTIONAL MATCH`는 패턴이 없어도 NULL로 채워서 반환합니다 (LEFT JOIN).
> 위 예시에서 BELONGS_TO 관계가 없는 노드를 찾기 위해 OPTIONAL MATCH를 사용한 후
> `WHERE r IS NULL`로 "관계가 없는 것"만 필터링합니다.

---

## 2.7 유용한 함수 모음

Part 2에서 자주 등장하는 함수들:

| 함수 | 반환 | 예시 | 용도 |
|------|------|------|------|
| `labels(n)` | `List<String>` | `labels(n)` → `['Concept']` | 노드의 라벨 확인 |
| `type(r)` | `String` | `type(r)` → `'SUBCLASS_OF'` | 관계의 타입 확인 |
| `count(x)` | `Integer` | `count(c)` → `231` | 개수 집계 |
| `collect(x)` | `List` | `collect(c.name)` → `['A','B']` | 목록 수집 |
| `coalesce(a, b)` | 첫 번째 non-null | `coalesce(c.name_kr, c.name)` | NULL 대체 |
| `size(list)` | `Integer` | `size(collect(c))` → `10` | 리스트 길이 |
| `elementId(n)` | `String` | `elementId(n)` → `'4:...'` | 내부 ID (비교용) |
| `keys(n)` | `List<String>` | `keys(n)` → `['id','name']` | 속성 키 목록 |
| `n.prop IS NOT NULL` | `Boolean` | `WHERE c.definition IS NOT NULL` | 속성 존재 확인 |

> ⚠️ **`exists(n.prop)` 함수는 Neo4j 5+에서 deprecated입니다.**
> 속성 존재 확인은 `n.prop IS NOT NULL`로 대체하세요.
> 단, `exists()`는 **패턴 존재 확인**에는 여전히 사용 가능합니다:
> ```cypher
> // ❌ deprecated: 속성 존재 확인
> WHERE exists(c.definition)
>
> // ✅ 권장: IS NOT NULL 사용
> WHERE c.definition IS NOT NULL
>
> // ✅ 유효: 패턴 존재 확인 (이 용법은 계속 지원)
> WHERE exists((:Person)-[:WORKS_FOR]->(:Company))
> ```

> ⚠️ **`id(n)` 함수는 Neo4j 5+에서 deprecated입니다.**
> 대신 `elementId(n)`을 사용하세요. `id(n)`은 내부 ID를 정수로 반환하지만,
> Neo4j가 ID를 재사용하므로 신뢰할 수 없습니다.
> `elementId()`는 문자열 기반의 안정적인 식별자를 반환합니다.

---

## [실습] 미니 온톨로지 만들기

### 목표
3개 Concept + 2개 관계 + 1개 Domain으로 미니 온톨로지를 구축하고,
MERGE → MATCH → SET → 검증의 전체 사이클을 체험합니다.

### ① 미니 온톨로지 설계

```
(암호화)-[:HAS_TYPE]->(대칭키 암호)
(암호화)-[:HAS_TYPE]->(비대칭키 암호)
(암호화)-[:BELONGS_TO]->(보안)
```

### ② 노드 생성 (Neo4j Browser)

```cypher
// Concept 노드 3개 — MERGE 사용!
MERGE (enc:Concept {id: 'encryption'})
SET enc.name_kr = '암호화', enc.domain = 'SE';

MERGE (sym:Concept {id: 'symmetric_encryption'})
SET sym.name_kr = '대칭키 암호', sym.domain = 'SE',
    sym.definition = '암호화와 복호화에 같은 키를 사용하는 방식';

MERGE (asym:Concept {id: 'asymmetric_encryption'})
SET asym.name_kr = '비대칭키 암호', asym.domain = 'SE',
    asym.definition = '공개키와 개인키 쌍을 사용하는 방식';

// Domain 노드
MERGE (d:Domain {id: 'SE'})
SET d.name = '보안';
```

### ③ 관계 생성

```cypher
// HAS_TYPE 관계
MERGE (enc:Concept {id: 'encryption'})
MERGE (sym:Concept {id: 'symmetric_encryption'})
MERGE (enc)-[:HAS_TYPE]->(sym);

MERGE (enc:Concept {id: 'encryption'})
MERGE (asym:Concept {id: 'asymmetric_encryption'})
MERGE (enc)-[:HAS_TYPE]->(asym);

// BELONGS_TO 관계
MERGE (enc:Concept {id: 'encryption'})
MERGE (d:Domain {id: 'SE'})
MERGE (enc)-[:BELONGS_TO]->(d);
```

### ④ 조회로 검증

```cypher
// 암호화의 하위 유형 조회
MATCH (enc:Concept {id: 'encryption'})-[:HAS_TYPE]->(child)
RETURN child.name_kr AS 유형, child.definition AS 정의;

// 전체 그래프 시각화
MATCH (n)-[r]->(m)
WHERE n.id IN ['encryption', 'symmetric_encryption', 'asymmetric_encryption', 'SE']
   OR m.id IN ['encryption', 'symmetric_encryption', 'asymmetric_encryption', 'SE']
RETURN n, r, m;
```

### ⑤ 속성 수정 체험

```cypher
// definition 추가
MATCH (enc:Concept {id: 'encryption'})
SET enc.definition = '평문을 암호문으로 변환하여 정보를 보호하는 기술'
RETURN enc.name_kr, enc.definition;

// MERGE 멱등성 확인 — 같은 쿼리 3번 실행!
MERGE (enc:Concept {id: 'encryption'})
SET enc.name_kr = '암호화'
RETURN enc;
// → 3번 실행해도 노드는 1개만 존재
```

```cypher
// 멱등성 확인
MATCH (c:Concept {id: 'encryption'})
RETURN count(c) AS 개수;
// → 반드시 1
```

### ⑥ 정리

```cypher
// 실습 데이터 삭제
MATCH (n)
WHERE n.id IN ['encryption', 'symmetric_encryption', 'asymmetric_encryption']
DETACH DELETE n;

// SE Domain은 프로젝트에서 사용하므로 삭제하지 않음
```

### 체크리스트

- [ ] MERGE로 3개 Concept + 1개 Domain 생성 — 중복 없이
- [ ] HAS_TYPE 관계 2개 + BELONGS_TO 1개 생성
- [ ] MATCH로 조회하여 관계가 올바른지 확인
- [ ] SET으로 definition 속성 추가 확인
- [ ] **MERGE를 3번 실행해도 노드가 1개**임을 확인 (멱등성)
- [ ] DETACH DELETE로 정리

---

## 2.8 Cypher 치트시트 — Part 2에서 바로 쓰는 패턴

이 치트시트를 옆에 두고 Part 2를 읽으면 Cypher 쿼리를 막힘 없이 따라갈 수 있습니다.

### 읽기

```cypher
// 기본 조회
MATCH (c:Concept) RETURN c LIMIT 10;

// 속성 필터
MATCH (c:Concept) WHERE c.domain = 'AI' RETURN c.name_kr;

// 관계 탐색
MATCH (a)-[:SUBCLASS_OF]->(b) RETURN a.name_kr, b.name_kr;

// 집계
MATCH (c:Concept) RETURN c.domain, count(c) ORDER BY count(c) DESC;

// 가변 길이 경로
MATCH path = (a)-[*1..3]->(b) RETURN path;

// 최단 경로
MATCH path = shortestPath((a)-[*]-(b)) RETURN path;
```

### 쓰기

```cypher
// 노드 생성 (멱등)
MERGE (c:Concept {id: 'my_concept'})
SET c.name_kr = '내 개념', c.domain = 'AI';

// 관계 생성 (멱등)
MERGE (a:Concept {id: 'x'})
MERGE (b:Concept {id: 'y'})
MERGE (a)-[:SUBCLASS_OF]->(b);
```

### 수정/삭제

```cypher
// 속성 수정
MATCH (c:Concept {id: 'x'}) SET c.name = 'new name';

// 속성 삭제
MATCH (c:Concept {id: 'x'}) REMOVE c.old_property;

// 노드+관계 삭제
MATCH (c:Concept {id: 'x'}) DETACH DELETE c;
```

### 진단

```cypher
// 전체 노드/관계 수
MATCH (n) RETURN count(n) AS 노드수;
MATCH ()-[r]->() RETURN count(r) AS 관계수;

// 라벨별 분포
MATCH (n) RETURN labels(n), count(n) ORDER BY count(n) DESC;

// 고립 노드
MATCH (n) WHERE NOT (n)--() RETURN n;
```

---

> 📌 **핵심 정리**
>
> 1. **Cypher = 패턴 매칭 언어**: `(노드)-[:관계]->(노드)` ASCII Art 문법
> 2. **MATCH + RETURN**: 읽기의 기본. WHERE로 필터, ORDER BY로 정렬
> 3. **MERGE > CREATE**: 온톨로지에서는 항상 MERGE. 멱등성이 핵심
> 4. **MERGE의 `{}`에는 id만**: 나머지 속성은 SET으로 분리
> 5. **ON CREATE SET / ON MATCH SET**: 생성/매칭 시 다른 동작
> 6. **DETACH DELETE 주의**: 연결된 관계까지 삭제됨, 복구 불가
> 7. 깊이 있는 문법은 **Part 3(Ch.13~15)**에서 — 여기서는 "최소 생존 Cypher"
> 8. **치트시트를 옆에 두고** Part 2를 시작하세요
