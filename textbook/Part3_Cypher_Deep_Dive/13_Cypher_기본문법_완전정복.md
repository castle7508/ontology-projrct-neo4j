# Ch.13 — Cypher 기본문법 완전정복

> **"Part 2를 거치며 Cypher의 '맛'을 봤다면, 이제 '전체 메뉴판'을 펼칠 차례다."**

Ch.02에서 30분 만에 익힌 Cypher는 Part 2를 따라가기 위한 최소 생존 키트였습니다.
이 챕터에서는 Cypher의 기본 문법을 **빠짐없이, 깊이 있게** 다룹니다.
모든 예시는 우리 프로젝트의 실제 데이터(435노드, 875관계)를 사용합니다.

> 📌 **이 챕터의 위치**
>
> ```
> Ch.02 (최소 Cypher) → Part 2 (실전 워크플로우) → Ch.13 (기본 완전정복) → Ch.14 (고급)
> ```
> Part 2를 경험한 후이므로, "왜 이 문법이 필요한지"를 체감한 상태에서 읽게 됩니다.
> 처음부터 문법만 나열하는 것보다 훨씬 효과적입니다.

### Ch.02 vs Ch.13 — 무엇이 다른가?

Ch.02를 읽은 독자는 "같은 내용을 또 보는 건 아닌가?"라고 생각할 수 있습니다.
**아닙니다.** Ch.02는 "읽을 수 있는" 수준, Ch.13은 "자유자재로 쓸 수 있는" 수준을 목표로 합니다.

| 주제 | Ch.02 (30분 완성) | Ch.13 (완전정복) |
|------|-------------------|------------------|
| **MERGE** | 기본 패턴, 멱등성 소개 | `+=` vs `=` 연산, ON CREATE/ON MATCH 심화, 관계 MERGE 함정 |
| **WHERE** | 6개 연산자 표 | 정규식(`=~`), NULL 3가지 법칙, 배열 필터, XOR |
| **집계** | count, collect 소개 | 13개 집계 함수 전체, GROUP BY 자동 규칙 |
| **WITH** | SQL HAVING 비교 1개 | 3가지 용법 (집계 필터, 변수 전달, 범위 제한+추가 처리) |
| **UNWIND** | 미다룸 | 기본~배치 업데이트까지 |
| **함수** | 8개 유틸 함수 표 | 문자열/리스트/맵/타입변환 + reduce, all/any/none/single |
| **제약조건/인덱스** | UNIQUE + 기본 인덱스 | EXISTS, NODE KEY, 복합 인덱스, FULLTEXT, EXPLAIN/PROFILE |
| **실습** | 미니 온톨로지 1개 | 연습문제 20개 (정답 포함) |

> 💡 **Ch.02를 건너뛰었어도 괜찮습니다.** Ch.13은 독립적으로 읽을 수 있습니다.
> 다만, 프로젝트 맥락(435노드, 875관계)을 모르면 Part 2를 먼저 읽는 것을 권장합니다.

---

## 13.1 노드 조작 — CREATE, MERGE, SET, REMOVE, DELETE

### 13.1.1 CREATE — 무조건 새로 만든다

```cypher
// 단일 노드 생성
CREATE (c:Concept {id: 'test_concept', name_kr: '테스트'})
RETURN c

// 여러 노드 한 번에 생성
CREATE (a:Concept {id: 'alpha'}), (b:Concept {id: 'beta'})
RETURN a, b
```

CREATE는 **항상** 새 노드를 만듭니다. 같은 쿼리를 10번 실행하면 10개의 노드가 생깁니다.

**CREATE가 적합한 경우:**
- 로그, 이벤트 등 본질적으로 중복이 허용되는 데이터
- 테스트/실험용 임시 데이터
- UNIQUE 제약조건이 있어서 중복 시 에러가 나길 원하는 경우

**CREATE가 부적합한 경우:**
- 온톨로지 노드 — **반드시 MERGE**를 사용해야 합니다

> ⚠️ **[안티패턴] 온톨로지에 CREATE 사용**
>
> ```cypher
> // ❌ 두 번 실행하면 '딥러닝' 노드가 2개!
> CREATE (c:Concept {id: 'deep_learning', name_kr: '딥러닝'})
> ```
>
> UNIQUE 제약조건이 있으면 두 번째 실행 시 에러가 발생하지만,
> MERGE를 쓰면 에러 없이 자연스럽게 기존 노드를 재사용합니다.

### 13.1.2 MERGE — 있으면 재사용, 없으면 생성

```cypher
// 기본 MERGE
MERGE (c:Concept {id: 'deep_learning'})
SET c.name_kr = '딥러닝', c.domain = 'AI'
RETURN c
```

MERGE의 동작 원리:

```
MERGE (c:Label {매칭키: 값})
  │
  ├─ 존재함 → 기존 노드를 c에 바인딩 (생성하지 않음)
  │
  └─ 없음   → 새 노드 생성 후 c에 바인딩
```

**MERGE의 핵심 규칙:**

| 규칙 | 설명 | 예시 |
|------|------|------|
| `{}` 안은 매칭 키만 | 나머지 속성은 SET으로 분리 | `MERGE (c:Concept {id: 'x'}) SET c.name = 'y'` |
| 라벨은 반드시 포함 | 라벨 없이 MERGE하면 전체 스캔 | `MERGE (c:Concept {id: 'x'})` ✅ |
| 멱등성 보장 | 10번 실행해도 노드 1개 | 안전한 반복 실행 |

### 13.1.3 ON CREATE SET / ON MATCH SET — 조건부 속성 설정

```cypher
MERGE (c:Concept {id: 'machine_learning'})
ON CREATE SET
    c.name_kr = '머신러닝',
    c.created_at = datetime()
ON MATCH SET
    c.updated_at = datetime(),
    c.access_count = coalesce(c.access_count, 0) + 1
SET
    c.domain = 'AI'    // 항상 실행
RETURN c
```

| 절 | 실행 시점 | 우리 프로젝트에서의 활용 |
|---|---|---|
| `ON CREATE SET` | 노드가 **새로 생성**될 때만 | 시드 노드의 초기 exam_frequency 설정 |
| `ON MATCH SET` | 기존 노드를 **찾았을** 때만 | 문서 적재 시 definition 보강 |
| `SET` | **항상** (CREATE/MATCH 무관) | domain 같은 공통 속성 |

**실전 패턴 — 시드 속성 보호:**

```cypher
// 시드에서 설정한 exam_frequency를 문서 적재 시 덮어쓰지 않음
MERGE (c:Concept {id: 'testing'})
ON CREATE SET
    c.exam_frequency = 922,
    c.importance = 'high'
ON MATCH SET
    c.definition = coalesce(c.definition, '소프트웨어 결함을 발견하는 활동')
```

### 13.1.4 SET — 속성 수정의 모든 것

```cypher
// 단일 속성 설정
MATCH (c:Concept {id: 'deep_learning'})
SET c.definition = '다층 인공신경망을 사용하는 머신러닝 기법'

// 여러 속성 동시 설정
MATCH (c:Concept {id: 'deep_learning'})
SET c.definition = '다층 인공신경망을 사용하는 머신러닝 기법',
    c.importance = 'high',
    c.aliases = ['DL', '심층학습']

// 속성을 NULL로 → 삭제 효과
MATCH (c:Concept {id: 'deep_learning'})
SET c.temporary_flag = null
```

**SET의 특수 용법 — 맵 복사:**

```cypher
// 기존 속성을 유지하면서 새 속성 추가 (+= 연산자)
MATCH (c:Concept {id: 'deep_learning'})
SET c += {importance: 'high', category: 'core'}

// 기존 속성을 모두 대체 (= 연산자) — ⚠️ 위험!
MATCH (c:Concept {id: 'deep_learning'})
SET c = {id: 'deep_learning', name: 'Deep Learning'}
// → 다른 모든 속성이 사라짐! id와 name만 남음
```

> ⚠️ **`SET c = {...}`와 `SET c += {...}`의 차이**
>
> | 연산 | 동작 | 위험도 |
> |------|------|--------|
> | `c = {map}` | 기존 속성 **전부 삭제** 후 map으로 교체 | 🔴 매우 위험 |
> | `c += {map}` | 기존 속성 **유지**, map의 속성만 추가/갱신 | 🟢 안전 |

### 13.1.5 REMOVE — 속성과 라벨 제거

```cypher
// 속성 제거
MATCH (c:Concept {id: 'deep_learning'})
REMOVE c.temporary_flag

// 라벨 제거
MATCH (c:Concept {id: 'deep_learning'})
REMOVE c:CoreConcept

// 여러 속성/라벨 동시 제거
MATCH (c:Concept {id: 'deep_learning'})
REMOVE c.temp1, c.temp2, c:TempLabel
```

### 13.1.6 DELETE vs DETACH DELETE

```cypher
// 관계가 없는 노드만 삭제 가능
MATCH (n:Concept {id: 'temp_test'})
DELETE n

// 관계가 있는 노드 → DELETE만 쓰면 에러!
// "Cannot delete node<123>, because it still has relationships."

// 노드 + 연결된 모든 관계를 함께 삭제
MATCH (n:Concept {id: 'temp_test'})
DETACH DELETE n
```

**삭제 전 안전 확인 패턴:**

```cypher
// STEP 1: 삭제 대상의 관계 확인
MATCH (n:Concept {id: 'temp_test'})-[r]-()
RETURN type(r) AS 관계타입, count(r) AS 개수

// STEP 2: 확인 후 삭제
MATCH (n:Concept {id: 'temp_test'})
DETACH DELETE n
```

> [설계 원칙] **"삭제는 마지막 수단"**
>
> 온톨로지에서 노드를 삭제하면 연결된 관계들이 모두 사라집니다.
> 잘못 만든 노드는 삭제보다 **병합**(APOC mergeNodes)을 먼저 고려하세요.
> 삭제가 불가피하면, 반드시 영향 범위를 확인한 후 실행합니다.

---

## 13.2 관계 조작 — 생성, 수정, 삭제

### 13.2.1 관계 생성

```cypher
// MERGE로 안전한 관계 생성 (양쪽 노드도 MERGE)
MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)

// 관계에 속성 추가
MERGE (a:Concept {id: 'supervised_learning'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['데이터 레이블', '알고리즘', '활용사례'],
    summary: '지도학습은 레이블 데이터, 비지도학습은 레이블 없이 학습'
}]->(b)
```

**왜 양쪽 노드도 MERGE인가?**

```cypher
// ❌ MATCH 사용 시 — 노드가 없으면 전체 쿼리가 0건 반환 (silent failure!)
MATCH (a:Concept {id: 'deep_learning'})
MATCH (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)
// → a 또는 b가 없으면 에러 없이 아무것도 안 함. 발견하기 어려운 버그!

// ✅ 양쪽 모두 MERGE — 노드가 없으면 자동 생성
MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)
```

### 13.2.2 방향성

Cypher에서 관계는 **반드시 방향**이 있습니다:

```cypher
// 방향 있는 생성 (화살표)
MERGE (a)-[:SUBCLASS_OF]->(b)    // a가 b의 하위 개념

// 조회 시 방향 무시 가능
MATCH (a:Concept {id: 'deep_learning'})-[r]-(connected)
RETURN type(r), connected.name_kr

// 조회 시 방향 지정
MATCH (a:Concept {id: 'deep_learning'})-[r]->(parent)
RETURN type(r), parent.name_kr
```

| 패턴 | 의미 |
|------|------|
| `(a)-[r]->(b)` | a에서 b로 나가는 관계 |
| `(a)<-[r]-(b)` | b에서 a로 들어오는 관계 |
| `(a)-[r]-(b)` | 방향 무시 (양쪽 모두 탐색) |

### 13.2.3 관계 속성 수정

```cypher
// 관계 속성 추가/수정
MATCH (a:Concept {id: 'supervised_learning'})-[r:COMPARED_WITH]->
      (b:Concept {id: 'unsupervised_learning'})
SET r.difficulty = 'medium',
    r.last_updated = date()
RETURN r

// 관계 속성 제거
MATCH (a:Concept {id: 'supervised_learning'})-[r:COMPARED_WITH]->
      (b:Concept {id: 'unsupervised_learning'})
REMOVE r.difficulty
```

### 13.2.4 관계 삭제

```cypher
// 특정 관계만 삭제 (노드는 유지)
MATCH (a:Concept {id: 'x'})-[r:SUBCLASS_OF]->(b:Concept {id: 'y'})
DELETE r

// 특정 타입의 관계 전부 삭제
MATCH ()-[r:TEMP_REL]->()
DELETE r
```

### 13.2.5 관계 타입 변경

Neo4j에서 관계 타입은 **변경 불가**입니다.
타입을 바꾸려면 **삭제 → 재생성**해야 합니다:

```cypher
// RELATED_TO → SUBCLASS_OF로 변경
MATCH (a:Concept {id: 'x'})-[old:RELATED_TO]->(b:Concept {id: 'y'})
CREATE (a)-[new:SUBCLASS_OF]->(b)
SET new = properties(old)    // 기존 관계 속성 복사
DELETE old
```

> 💡 `properties(r)`은 관계의 모든 속성을 맵으로 반환합니다.
> 이를 새 관계에 `SET new = properties(old)`로 복사하면
> 속성을 하나하나 옮기지 않아도 됩니다.

---

## 13.3 패턴 매칭 — MATCH의 모든 것

### 13.3.1 단일 노드 매칭

```cypher
// 라벨로 매칭
MATCH (c:Concept)
RETURN c LIMIT 5

// 라벨 + 속성으로 매칭
MATCH (c:Concept {id: 'deep_learning'})
RETURN c

// 여러 라벨 조건 (AND)
MATCH (n:Concept:CoreConcept)
RETURN n
```

### 13.3.2 관계 패턴 매칭

```cypher
// 단일 관계
MATCH (a:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(parent)
RETURN parent.name_kr

// 여러 관계 타입 (OR)
MATCH (a:Concept {id: 'deep_learning'})-[r:SUBCLASS_OF|DEPENDS_ON]->(target)
RETURN type(r) AS 관계, target.name_kr AS 대상

// 관계 타입 무관 (모든 관계)
MATCH (a:Concept {id: 'deep_learning'})-[r]->(target)
RETURN type(r), target.name_kr

// 관계 타입 무관 + 방향 무시
MATCH (a:Concept {id: 'deep_learning'})-[r]-(connected)
RETURN type(r), labels(connected), connected.name_kr
```

### 13.3.3 다중 홉 매칭

```cypher
// 2-홉 경로 (딥러닝 → ? → ?)
MATCH (a:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(b)-[:SUBCLASS_OF]->(c)
RETURN a.name_kr, b.name_kr, c.name_kr

// 결과: 딥러닝 → 머신러닝 → 인공지능
```

### 13.3.4 OPTIONAL MATCH — LEFT JOIN과 동일

```cypher
// MATCH: 관계가 없으면 결과 자체가 0건
MATCH (c:Concept {id: 'deep_learning'})-[r:DEFINED_BY]->(s)
RETURN s.name_kr
// → 결과 없음 (DEFINED_BY 관계가 없으므로)

// OPTIONAL MATCH: 관계가 없어도 NULL로 채워서 반환
MATCH (c:Concept {id: 'deep_learning'})
OPTIONAL MATCH (c)-[r:DEFINED_BY]->(s)
RETURN c.name_kr, s.name_kr AS 표준
// → '딥러닝', null
```

**OPTIONAL MATCH의 실전 활용 — 누락 검출:**

```cypher
// BELONGS_TO가 누락된 Concept 찾기
MATCH (c:Concept)
WHERE c.domain IS NOT NULL
OPTIONAL MATCH (c)-[r:BELONGS_TO]->(:Domain)
WITH c, r
WHERE r IS NULL
RETURN c.id, c.name_kr, c.domain AS 도메인코드, 'BELONGS_TO 누락' AS 이슈
```

### 13.3.5 패턴 부정 — NOT EXISTS

```cypher
// BELONGS_TO 관계가 없는 Concept (Neo4j 5+ 권장 문법)
MATCH (c:Concept)
WHERE NOT EXISTS { (c)-[:BELONGS_TO]->(:Domain) }
RETURN c.id, c.name_kr

// 관계가 하나도 없는 고립 노드
MATCH (n)
WHERE NOT EXISTS { (n)--() }
RETURN n.id, labels(n)
```

---

## 13.4 필터링과 조건 — WHERE 절 완전정복

### 13.4.1 비교 연산자

```cypher
MATCH (c:Concept)
WHERE c.exam_frequency > 200
  AND c.domain = 'AI'
RETURN c.name_kr, c.exam_frequency
ORDER BY c.exam_frequency DESC
```

| 연산자 | 의미 | 예시 |
|--------|------|------|
| `=` | 같다 | `c.domain = 'AI'` |
| `<>` | 다르다 | `c.domain <> 'ST'` |
| `>`, `>=` | 크다, 크거나 같다 | `c.exam_frequency >= 100` |
| `<`, `<=` | 작다, 작거나 같다 | `c.exam_frequency < 50` |

### 13.4.2 논리 연산자

```cypher
// AND — 두 조건 모두 참
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.importance = 'high'
RETURN c.name_kr

// OR — 하나라도 참
MATCH (c:Concept)
WHERE c.domain = 'AI' OR c.domain = 'SE'
RETURN c.name_kr, c.domain

// NOT — 조건 반전
MATCH (c:Concept)
WHERE NOT c.domain = 'ST'
RETURN c.name_kr

// XOR — 하나만 참 (드물게 사용)
MATCH (c:Concept)
WHERE (c.domain = 'AI') XOR (c.importance = 'high')
RETURN c.name_kr
```

### 13.4.3 IN — 목록 포함 여부

```cypher
// 특정 도메인의 Concept만 조회
MATCH (c:Concept)
WHERE c.domain IN ['AI', 'SE', 'SW']
RETURN c.name_kr, c.domain
ORDER BY c.domain

// NOT IN
MATCH (c:Concept)
WHERE NOT c.domain IN ['ST', 'DS']
RETURN c.name_kr
```

### 13.4.4 문자열 연산자

```cypher
// STARTS WITH — 접두사 매칭
MATCH (c:Concept)
WHERE c.name STARTS WITH 'Deep'
RETURN c.name, c.name_kr

// ENDS WITH — 접미사 매칭
MATCH (c:Concept)
WHERE c.name ENDS WITH 'Learning'
RETURN c.name, c.name_kr

// CONTAINS — 부분 문자열 포함
MATCH (c:Concept)
WHERE c.definition CONTAINS '신경망'
RETURN c.name_kr, c.definition

// 정규식 매칭 (=~ 연산자)
MATCH (c:Concept)
WHERE c.id =~ '.*_learning'
RETURN c.id, c.name_kr
// → deep_learning, machine_learning, supervised_learning, ...
```

**정규식 패턴 예시:**

| 패턴 | 의미 | 매칭 예시 |
|------|------|-----------|
| `'deep.*'` | deep으로 시작 | deep_learning |
| `'.*learning'` | learning으로 끝남 | machine_learning |
| `'(?i)cnn'` | 대소문자 무시 | CNN, cnn, Cnn |
| `'[a-z]+_[a-z]+'` | 영문소문자_영문소문자 | deep_learning |

### 13.4.5 NULL 처리

```cypher
// NULL 체크
MATCH (c:Concept)
WHERE c.definition IS NULL
RETURN c.id, c.name_kr AS 'definition 없음'

MATCH (c:Concept)
WHERE c.definition IS NOT NULL
RETURN c.id, c.name_kr, left(c.definition, 30) AS 정의미리보기

// coalesce — NULL 대체
MATCH (c:Concept)
RETURN c.name_kr,
       coalesce(c.definition, '(정의 없음)') AS 정의
```

> ⚠️ **NULL 비교의 함정**
>
> ```cypher
> // ❌ NULL과의 비교는 항상 NULL (false로 평가됨)
> WHERE c.definition = null     // 작동하지 않음!
> WHERE c.definition <> null    // 작동하지 않음!
>
> // ✅ NULL 전용 연산자 사용
> WHERE c.definition IS NULL
> WHERE c.definition IS NOT NULL
> ```
>
> Cypher에서 NULL은 "알 수 없는 값"입니다. NULL과의 어떤 비교도 NULL을 반환하며,
> WHERE 절에서 NULL은 false로 평가됩니다.

### 13.4.6 리스트/배열 속성 필터링

```cypher
// 배열 속성에 특정 값이 포함되어 있는지
MATCH (c:Concept)
WHERE 'AI' IN c.aliases
RETURN c.name_kr

// 배열 크기 필터
MATCH (c:Concept)
WHERE c.aliases IS NOT NULL AND size(c.aliases) > 2
RETURN c.name_kr, c.aliases
```

---

## 13.5 결과 반환과 정렬 — RETURN의 모든 것

### 13.5.1 기본 RETURN

```cypher
// 노드 전체 반환
MATCH (c:Concept {id: 'deep_learning'})
RETURN c

// 특정 속성만 반환
MATCH (c:Concept {id: 'deep_learning'})
RETURN c.name_kr, c.domain, c.definition
```

### 13.5.2 별칭 (AS)

```cypher
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr AS 개념,
       c.domain AS 도메인,
       c.exam_frequency AS 출제빈도
ORDER BY 출제빈도 DESC
LIMIT 10
```

### 13.5.3 DISTINCT — 중복 제거

```cypher
// 어떤 도메인 코드들이 사용되는지
MATCH (c:Concept)
RETURN DISTINCT c.domain AS 도메인
ORDER BY 도메인

// 특정 관계 타입이 어떤 라벨 쌍에서 사용되는지
MATCH (a)-[r]->(b)
RETURN DISTINCT labels(a) AS 출발, type(r) AS 관계, labels(b) AS 도착
ORDER BY 관계
```

### 13.5.4 ORDER BY — 정렬

```cypher
// 오름차순 (기본값)
MATCH (c:Concept) RETURN c.name_kr ORDER BY c.name_kr

// 내림차순
MATCH (c:Concept) RETURN c.name_kr ORDER BY c.exam_frequency DESC

// 다중 정렬 기준
MATCH (c:Concept)
RETURN c.domain, c.name_kr, c.exam_frequency
ORDER BY c.domain ASC, c.exam_frequency DESC

// NULL 정렬 — NULL은 기본적으로 가장 뒤에 위치
MATCH (c:Concept)
RETURN c.name_kr, c.exam_frequency
ORDER BY c.exam_frequency DESC
// → exam_frequency가 NULL인 노드는 맨 뒤
```

### 13.5.5 SKIP과 LIMIT — 페이지네이션

```cypher
// 처음 10개
MATCH (c:Concept)
RETURN c.name_kr
ORDER BY c.name_kr
LIMIT 10

// 11~20번째 (2페이지)
MATCH (c:Concept)
RETURN c.name_kr
ORDER BY c.name_kr
SKIP 10 LIMIT 10

// 상위 5개
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr, c.exam_frequency
ORDER BY c.exam_frequency DESC
LIMIT 5
```

### 13.5.6 표현식과 계산

```cypher
// 문자열 결합
MATCH (c:Concept {id: 'deep_learning'})
RETURN c.name + ' (' + c.name_kr + ')' AS 표시명

// 조건부 반환 (CASE)
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr,
       CASE
           WHEN c.exam_frequency >= 500 THEN '최다출제'
           WHEN c.exam_frequency >= 200 THEN '다출제'
           WHEN c.exam_frequency >= 100 THEN '보통'
           ELSE '저빈도'
       END AS 등급
ORDER BY c.exam_frequency DESC
```

---

## 13.6 집계 함수와 WITH 절

### 13.6.1 집계 함수 총정리

```cypher
// count — 개수
MATCH (c:Concept)
RETURN count(c) AS 총_개념수

// count(DISTINCT) — 고유값 개수
MATCH (c:Concept)
RETURN count(DISTINCT c.domain) AS 도메인수

// collect — 리스트로 수집
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.importance = 'high'
RETURN collect(c.name_kr) AS AI_핵심개념

// sum, avg, min, max
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN sum(c.exam_frequency) AS 총합,
       avg(c.exam_frequency) AS 평균,
       min(c.exam_frequency) AS 최소,
       max(c.exam_frequency) AS 최대
```

**집계 함수 전체 목록:**

| 함수 | 반환 | 설명 |
|------|------|------|
| `count(x)` | Integer | 개수 (NULL 제외) |
| `count(*)` | Integer | 행 수 (NULL 포함) |
| `count(DISTINCT x)` | Integer | 고유값 개수 |
| `collect(x)` | List | 리스트로 수집 |
| `collect(DISTINCT x)` | List | 고유값만 수집 |
| `sum(x)` | Number | 합계 |
| `avg(x)` | Float | 평균 |
| `min(x)` | Any | 최솟값 |
| `max(x)` | Any | 최댓값 |
| `stDev(x)` | Float | 표본 표준편차 |
| `stDevP(x)` | Float | 모집단 표준편차 |
| `percentileDisc(x, p)` | Number | 이산 백분위수 |
| `percentileCont(x, p)` | Float | 연속 백분위수 |

### 13.6.2 GROUP BY — Cypher에서의 그루핑

Cypher에는 명시적인 GROUP BY가 없습니다.
**집계 함수가 아닌 RETURN 항목이 자동으로 그룹 키**가 됩니다:

```cypher
// c.domain이 자동 그룹 키
MATCH (c:Concept)
RETURN c.domain AS 도메인,
       count(c) AS 개수,
       collect(c.name_kr)[..3] AS 상위3개
ORDER BY 개수 DESC
```

```
┌──────────┬───────┬───────────────────────────────┐
│ 도메인   │ 개수  │ 상위3개                       │
├──────────┼───────┼───────────────────────────────┤
│ 'SE'     │ 42    │ ['정보보안','기밀성','무결성'] │
│ 'AI'     │ 35    │ ['인공지능','머신러닝','딥러닝']│
│ 'SW'     │ 31    │ ['테스트','애자일','SDLC']     │
│ ...      │ ...   │ ...                           │
└──────────┴───────┴───────────────────────────────┘
```

### 13.6.3 WITH — 쿼리 파이프라인

WITH는 Cypher의 **파이프라인 연결자**입니다. 앞 단계 결과를 다음 단계로 전달합니다.

**용법 1: 집계 후 필터링 (SQL의 HAVING)**

```cypher
// 도메인별 Concept 수를 구한 뒤, 30개 이상인 도메인만
MATCH (c:Concept)
WITH c.domain AS 도메인, count(c) AS 개수
WHERE 개수 >= 30
RETURN 도메인, 개수
ORDER BY 개수 DESC
```

**용법 2: 중간 변수 전달**

```cypher
// 각 도메인의 "허브" 개념 찾기 (관계 10개 이상)
MATCH (c:Concept)-[r]-()
WITH c, count(r) AS 관계수
WHERE 관계수 >= 10
RETURN c.name_kr, c.domain, 관계수
ORDER BY 관계수 DESC
```

**용법 3: 결과 범위 제한 후 추가 처리**

```cypher
// Top 10 Concept만 추출한 뒤, 각각의 관계 탐색
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
WITH c
ORDER BY c.exam_frequency DESC
LIMIT 10
MATCH (c)-[r]->(target)
RETURN c.name_kr, type(r) AS 관계, target.name_kr AS 대상
```

**WITH의 핵심 규칙:**
- WITH 이후에는 **WITH에서 명시한 변수만** 사용 가능
- WITH를 거치면 이전 단계의 변수는 "잊혀짐"
- 집계(count, collect 등) 후 추가 필터링에 필수

> ⚠️ **[안티패턴] WITH 없이 집계 후 필터링**
>
> ```cypher
> // ❌ WHERE에서 집계 결과를 직접 필터링할 수 없음
> MATCH (c:Concept)
> RETURN c.domain, count(c) AS 개수
> WHERE 개수 >= 30    // 문법 에러!
>
> // ✅ WITH로 중간 단계 거치기
> MATCH (c:Concept)
> WITH c.domain AS 도메인, count(c) AS 개수
> WHERE 개수 >= 30
> RETURN 도메인, 개수
> ```

### 13.6.4 WITH + UNWIND — 리스트 풀기

UNWIND는 리스트를 행으로 "펼칩니다":

```cypher
// 기본 UNWIND
UNWIND [1, 2, 3] AS x
RETURN x
// → 3개 행: 1, 2, 3

// 실전: 도메인 코드 리스트에서 각 도메인의 Concept 수 확인
UNWIND ['AI', 'SE', 'SW', 'DB', 'NW'] AS domain_code
MATCH (c:Concept {domain: domain_code})
RETURN domain_code AS 도메인, count(c) AS 개수
ORDER BY 개수 DESC
```

```cypher
// 실전: 배치 속성 업데이트
UNWIND [
    {id: 'deep_learning', importance: 'high'},
    {id: 'machine_learning', importance: 'high'},
    {id: 'artificial_intelligence', importance: 'high'}
] AS item
MATCH (c:Concept {id: item.id})
SET c.importance = item.importance
RETURN c.id, c.importance
```

---

## 13.7 문자열, 리스트, 맵 함수

### 13.7.1 문자열 함수

```cypher
RETURN
    toLower('Deep Learning')     AS lower,     // 'deep learning'
    toUpper('deep learning')     AS upper,     // 'DEEP LEARNING'
    trim('  hello  ')            AS trimmed,   // 'hello'
    replace('a-b-c', '-', '_')   AS replaced,  // 'a_b_c'
    split('AI,SE,SW', ',')       AS splitted,  // ['AI', 'SE', 'SW']
    left('Deep Learning', 4)     AS l,         // 'Deep'
    right('Deep Learning', 8)    AS r,         // 'Learning'
    substring('Hello World', 6)  AS sub,       // 'World'
    size('Hello')                AS len,       // 5
    reverse('Hello')             AS rev        // 'olleH'
```

**실전 활용:**

```cypher
// id 네이밍 규칙 검증 — 소문자+언더스코어만 허용
MATCH (c:Concept)
WHERE NOT c.id =~ '^[a-z0-9_]+$'
RETURN c.id AS '규칙 위반 id', c.name_kr
```

### 13.7.2 리스트 함수

```cypher
RETURN
    size([1, 2, 3])              AS 길이,      // 3
    head([1, 2, 3])              AS 첫번째,    // 1
    last([1, 2, 3])              AS 마지막,    // 3
    tail([1, 2, 3])              AS 나머지,    // [2, 3]
    range(1, 5)                  AS 범위,      // [1, 2, 3, 4, 5]
    range(0, 10, 3)              AS 스텝,      // [0, 3, 6, 9]
    reverse([1, 2, 3])           AS 뒤집기     // [3, 2, 1]
```

**리스트 슬라이싱:**

```cypher
WITH ['A', 'B', 'C', 'D', 'E'] AS items
RETURN
    items[0]        AS 첫번째,     // 'A'
    items[-1]       AS 마지막,     // 'E'
    items[1..3]     AS 슬라이스,   // ['B', 'C']
    items[..2]      AS 앞2개,      // ['A', 'B']
    items[3..]      AS 뒤부터      // ['D', 'E']
```

**리스트 컴프리헨션(List Comprehension):**

```cypher
// Python의 리스트 컴프리헨션과 유사
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.exam_frequency IS NOT NULL
WITH collect(c) AS concepts
RETURN [c IN concepts | c.name_kr] AS 이름목록,
       [c IN concepts WHERE c.exam_frequency > 100 | c.name_kr] AS 고빈도
```

문법: `[variable IN list WHERE condition | expression]`

- `variable IN list`: 리스트의 각 항목을 변수에 바인딩
- `WHERE condition`: 필터 (선택사항)
- `| expression`: 변환 표현식 (선택사항)

**reduce() — 리스트 축약:**

```cypher
// 경로 내 모든 노드의 이름을 하나의 문자열로 이어 붙이기
MATCH path = (a:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..3]->(b)
RETURN reduce(
    chain = '', n IN nodes(path) |
    chain + CASE WHEN chain = '' THEN '' ELSE ' → ' END + coalesce(n.name_kr, n.name)
) AS 경로문자열
```

`reduce(accumulator = initial, variable IN list | expression)`는
리스트를 순회하며 누적 결과를 계산합니다. Python의 `functools.reduce()`와 동일합니다.

**프레디킷 함수 — 리스트 조건 검사:**

```cypher
// all: 모든 항목이 조건을 만족하는가?
RETURN all(x IN [2, 4, 6] WHERE x % 2 = 0) AS 모두짝수   // true

// any: 하나라도 조건을 만족하는가?
RETURN any(x IN ['AI', 'SE', 'ST'] WHERE x = 'AI') AS AI포함  // true

// none: 아무것도 조건을 만족하지 않는가?
RETURN none(x IN [1, 3, 5] WHERE x > 10) AS 없음          // true

// single: 정확히 하나만 조건을 만족하는가?
RETURN single(x IN [1, 2, 3] WHERE x = 2) AS 하나만       // true
```

**실전 활용 — 경로 내 모든 노드가 같은 도메인인지 확인:**

```cypher
MATCH path = (a:Concept)-[:SUBCLASS_OF*1..3]->(b:Concept)
WHERE a.domain = 'AI'
  AND all(n IN nodes(path) WHERE n.domain = 'AI')
RETURN [n IN nodes(path) | n.name_kr] AS 순수AI체인
```

### 13.7.3 맵(Map) 함수

```cypher
// 맵 리터럴
RETURN {name: 'Deep Learning', domain: 'AI'} AS concept_map

// 노드를 맵으로 변환
MATCH (c:Concept {id: 'deep_learning'})
RETURN properties(c) AS 모든속성

// 맵에서 키 목록 추출
MATCH (c:Concept {id: 'deep_learning'})
RETURN keys(c) AS 속성키목록
```

### 13.7.4 타입 변환 함수

```cypher
RETURN
    toInteger('42')              AS 정수,      // 42
    toFloat('3.14')              AS 실수,      // 3.14
    toString(42)                 AS 문자열,    // '42'
    toBoolean('true')            AS 불리언     // true
```

**안전한 변환 (null-safe):**

```cypher
// toIntegerOrNull — 변환 실패 시 null (에러 대신)
RETURN
    toIntegerOrNull('42')        AS 성공,      // 42
    toIntegerOrNull('abc')       AS 실패       // null
```

---

## 13.8 UNION과 FOREACH

### 13.8.1 UNION — 결과 합치기

여러 쿼리의 결과를 하나의 결과 집합으로 합칩니다:

```cypher
// 여러 라벨의 노드를 하나의 목록으로 합치기
MATCH (c:Concept) WHERE c.domain = 'AI'
RETURN c.id AS id, c.name_kr AS 이름, 'Concept' AS 유형
UNION ALL
MATCH (t:Technology) WHERE t.domain = 'AI'
RETURN t.id AS id, t.name_kr AS 이름, 'Technology' AS 유형
UNION ALL
MATCH (m:Method) WHERE m.domain = 'AI'
RETURN m.id AS id, m.name_kr AS 이름, 'Method' AS 유형
ORDER BY 유형, 이름
```

**UNION vs UNION ALL:**

| 연산 | 동작 | 성능 |
|------|------|------|
| `UNION` | 결과를 합치고 **중복 제거** | 느림 (정렬+비교 필요) |
| `UNION ALL` | 결과를 합치고 **중복 유지** | 빠름 (그대로 합침) |

> 💡 중복이 없다고 확신하면 `UNION ALL`이 성능상 유리합니다.

**UNION 규칙:**
- 모든 쿼리의 **RETURN 컬럼 수와 이름**이 동일해야 합니다
- ORDER BY는 마지막 UNION 뒤에만 사용 가능
- 각 쿼리는 독립적인 스코프 (변수 공유 불가)

**실전 활용 — 여러 라벨에서 검증 쿼리 한 번에 실행:**

```cypher
// 모든 노드 타입의 NULL id 검사를 한 번에
MATCH (c:Concept) WHERE c.id IS NULL RETURN 'Concept' AS 라벨, elementId(c) AS 내부ID
UNION ALL
MATCH (t:Technology) WHERE t.id IS NULL RETURN 'Technology' AS 라벨, elementId(t) AS 내부ID
UNION ALL
MATCH (m:Method) WHERE m.id IS NULL RETURN 'Method' AS 라벨, elementId(m) AS 내부ID
```

### 13.8.2 FOREACH — 리스트 순회하며 쓰기

FOREACH는 리스트의 각 항목에 대해 **쓰기 작업**을 수행합니다:

```cypher
// 경로의 모든 노드에 visited 속성 추가
MATCH path = (a:Concept {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..3]->(root)
FOREACH (n IN nodes(path) |
    SET n.visited = true
)
```

```cypher
// 배열의 각 값으로 노드 생성
WITH ['transfer_learning', 'federated_learning', 'meta_learning'] AS new_concepts
FOREACH (concept_id IN new_concepts |
    MERGE (c:Concept {id: concept_id})
    SET c.domain = 'AI'
)
```

**FOREACH의 제약:**
- `SET`, `REMOVE`, `CREATE`, `MERGE`, `DELETE`만 사용 가능 (쓰기 전용)
- `MATCH`, `RETURN`, `WITH`는 사용 불가
- 읽기+쓰기가 동시에 필요하면 `UNWIND` + `WITH`를 사용

**FOREACH vs UNWIND 선택 기준:**

| 상황 | 권장 | 이유 |
|------|------|------|
| 단순 속성 SET만 필요 | FOREACH | 간결함 |
| 읽기+쓰기 모두 필요 | UNWIND | MATCH/RETURN 사용 가능 |
| 결과를 반환해야 함 | UNWIND | FOREACH는 RETURN 불가 |

---

## 13.9 제약조건과 인덱스

### 13.9.1 UNIQUE 제약조건

```cypher
// 생성 (IF NOT EXISTS로 멱등성 확보)
CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;

// 삭제
DROP CONSTRAINT concept_id IF EXISTS;

// 전체 확인
SHOW CONSTRAINTS;
```

UNIQUE 제약조건의 효과:
1. **중복 방지**: 같은 id를 가진 Concept 노드를 두 개 만들 수 없음
2. **인덱스 자동 생성**: 별도 인덱스 없이 빠른 검색 보장
3. **MERGE 성능**: MERGE가 매칭 키를 빠르게 찾을 수 있음

**우리 프로젝트의 11개 제약조건:**

```cypher
// 모든 노드 타입에 id 고유성 적용
CREATE CONSTRAINT concept_id IF NOT EXISTS FOR (n:Concept) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT technology_id IF NOT EXISTS FOR (n:Technology) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT method_id IF NOT EXISTS FOR (n:Method) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT standard_id IF NOT EXISTS FOR (n:Standard) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT law_id IF NOT EXISTS FOR (n:Law) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT threat_id IF NOT EXISTS FOR (n:Threat) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT metric_id IF NOT EXISTS FOR (n:Metric) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT domain_id IF NOT EXISTS FOR (n:Domain) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT question_id IF NOT EXISTS FOR (n:Question) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT document_id IF NOT EXISTS FOR (n:Document) REQUIRE n.id IS UNIQUE;
CREATE CONSTRAINT exam_session_id IF NOT EXISTS FOR (n:ExamSession) REQUIRE n.id IS UNIQUE;
```

> ⚠️ **제약조건은 라벨별로 독립적입니다**
>
> `Concept`에 `id = 'function_point'`이고 `Method`에도 `id = 'function_point'`인
> 노드가 동시에 존재할 수 있습니다. 이것이 Ch.11에서 발견한 **교차 라벨 중복** 이슈입니다.
> 라벨을 넘나드는 중복 검사는 별도 쿼리로 해야 합니다:
>
> ```cypher
> MATCH (a), (b)
> WHERE a.id = b.id AND labels(a) <> labels(b)
>   AND elementId(a) < elementId(b)
> RETURN a.id, labels(a) AS 라벨A, labels(b) AS 라벨B
> ```

### 13.9.2 EXISTS 제약조건 (Enterprise Edition)

```cypher
// 필수 속성 강제 — 특정 속성이 반드시 존재해야 함
CREATE CONSTRAINT concept_has_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS NOT NULL;
```

### 13.9.3 NODE KEY 제약조건 (Enterprise Edition)

```cypher
// 복합 키 — 여러 속성의 조합이 고유해야 함
CREATE CONSTRAINT question_composite IF NOT EXISTS
FOR (n:Question) REQUIRE (n.session, n.number) IS UNIQUE;
```

### 13.9.4 인덱스 — 검색 성능의 핵심

**단일 속성 인덱스:**

```cypher
CREATE INDEX concept_name IF NOT EXISTS
FOR (n:Concept) ON (n.name);

CREATE INDEX concept_name_kr IF NOT EXISTS
FOR (n:Concept) ON (n.name_kr);

CREATE INDEX concept_domain IF NOT EXISTS
FOR (n:Concept) ON (n.domain);
```

**복합 인덱스:**

```cypher
// 도메인 + 중요도로 동시 검색하는 경우
CREATE INDEX concept_domain_importance IF NOT EXISTS
FOR (n:Concept) ON (n.domain, n.importance);
```

**전문검색 인덱스(Full-Text Index):**

```cypher
// 여러 속성을 통합 검색
CREATE FULLTEXT INDEX concept_fulltext IF NOT EXISTS
FOR (n:Concept) ON EACH [n.name, n.name_kr, n.definition];

// 사용법
CALL db.index.fulltext.queryNodes('concept_fulltext', '신경망')
YIELD node, score
RETURN node.name_kr, node.definition, score
ORDER BY score DESC
```

**인덱스 관리:**

```cypher
// 전체 인덱스 확인
SHOW INDEXES;

// 인덱스 삭제
DROP INDEX concept_name IF EXISTS;
```

### 13.9.5 인덱스가 사용되는지 확인 — EXPLAIN

```cypher
// EXPLAIN: 실행 계획만 보기 (실행하지 않음)
EXPLAIN
MATCH (c:Concept {id: 'deep_learning'})
RETURN c
// → NodeIndexSeek이 보이면 인덱스 사용 중 ✅
// → AllNodesScan이 보이면 전체 스캔 ❌

// PROFILE: 실행 계획 + 실제 실행 (실측 데이터 포함)
PROFILE
MATCH (c:Concept {id: 'deep_learning'})
RETURN c
// → Rows, DbHits 등 실제 수치 확인 가능
```

| 실행 계획 연산 | 의미 | 성능 |
|----------------|------|------|
| `NodeIndexSeek` | 인덱스를 사용하여 직접 접근 | 🟢 최적 |
| `NodeByLabelScan` | 라벨 내 전체 스캔 | 🟡 보통 |
| `AllNodesScan` | 전체 노드 스캔 | 🔴 느림 |
| `Filter` | 결과를 조건으로 필터링 | 필터 위치에 따라 다름 |
| `Expand(All)` | 관계를 따라 확장 | 관계 수에 비례 |

---

## [실습] 연습문제 20개

모든 문제는 우리 프로젝트의 데이터를 사용합니다.
`cypher/00_schema.cypher`와 `cypher/ai_001_010.cypher`가 적재된 상태에서 실행하세요.

### 읽기 (Q1~Q8)

**Q1.** AI 도메인에 속하는 모든 Concept의 한글명과 정의를 조회하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.domain = 'AI'
RETURN c.name_kr AS 개념, c.definition AS 정의
ORDER BY c.name_kr
```
</details>

**Q2.** 출제빈도 Top 5 Concept을 조회하세요 (이름, 도메인, 빈도 포함).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr AS 개념, c.domain AS 도메인, c.exam_frequency AS 빈도
ORDER BY c.exam_frequency DESC
LIMIT 5
```
</details>

**Q3.** '딥러닝'의 상위 개념 체인을 2-홉까지 조회하세요 (딥러닝 → ? → ?).

<details>
<summary>정답</summary>

```cypher
MATCH (a:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(b)-[:SUBCLASS_OF]->(c)
RETURN a.name_kr AS 시작, b.name_kr AS 중간, c.name_kr AS 최상위
```
</details>

**Q4.** 도메인별 Concept 수를 집계하고, 가장 많은 도메인 순으로 정렬하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
RETURN c.domain AS 도메인, count(c) AS 개수
ORDER BY 개수 DESC
```
</details>

**Q5.** '머신러닝'에 IMPLEMENTS 관계로 연결된 Method를 모두 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH (m:Method)-[:IMPLEMENTS]->(concept)
WHERE concept.id IN ['supervised_learning', 'unsupervised_learning', 'reinforcement_learning']
RETURN m.name_kr AS 알고리즘, concept.name_kr AS 학습유형
ORDER BY concept.name_kr, m.name_kr
```
</details>

**Q6.** 관계가 없는 고립 노드가 있는지 확인하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (n)
WHERE NOT (n)--()
RETURN n.id, labels(n) AS 라벨
```
</details>

**Q7.** 각 관계 타입별 개수를 집계하세요.

<details>
<summary>정답</summary>

```cypher
MATCH ()-[r]->()
RETURN type(r) AS 관계타입, count(r) AS 개수
ORDER BY 개수 DESC
```
</details>

**Q8.** definition 속성이 없는 Concept 중 importance가 'high'인 것을 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.definition IS NULL AND c.importance = 'high'
RETURN c.id, c.name_kr, c.domain
ORDER BY c.domain
```
</details>

### 쓰기 (Q9~Q13)

**Q9.** 새 Concept 노드 'transfer_learning'(전이학습)을 MERGE로 생성하고, domain='AI', definition을 추가하세요.

<details>
<summary>정답</summary>

```cypher
MERGE (c:Concept {id: 'transfer_learning'})
SET c.name = 'Transfer Learning',
    c.name_kr = '전이학습',
    c.domain = 'AI',
    c.definition = '사전 훈련된 모델의 지식을 새로운 작업에 활용하는 기법'
RETURN c
```
</details>

**Q10.** 'transfer_learning'을 'deep_learning'의 하위 개념으로 연결하세요 (SUBCLASS_OF).

<details>
<summary>정답</summary>

```cypher
MERGE (a:Concept {id: 'transfer_learning'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b)
```
</details>

**Q11.** 'transfer_learning'에 aliases 배열 속성을 추가하세요: ['TL', '전이학습'].

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept {id: 'transfer_learning'})
SET c.aliases = ['TL', '전이학습']
RETURN c.id, c.aliases
```
</details>

**Q12.** AI 도메인의 모든 Concept에 last_reviewed 속성을 오늘 날짜로 일괄 설정하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.domain = 'AI'
SET c.last_reviewed = date()
RETURN c.id, c.last_reviewed
```
</details>

**Q13.** 'transfer_learning' 노드와 관련 관계를 모두 삭제하세요 (실습 정리).

<details>
<summary>정답</summary>

```cypher
// 먼저 확인
MATCH (c:Concept {id: 'transfer_learning'})-[r]-()
RETURN type(r), count(r)

// 삭제
MATCH (c:Concept {id: 'transfer_learning'})
DETACH DELETE c
```
</details>

### WITH와 집계 (Q14~Q17)

**Q14.** 관계가 10개 이상인 노드를 찾고, 관계 수 내림차순으로 정렬하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (n)-[r]-()
WITH n, count(r) AS 관계수
WHERE 관계수 >= 10
RETURN n.id, labels(n) AS 라벨, n.name_kr, 관계수
ORDER BY 관계수 DESC
```
</details>

**Q15.** 각 도메인의 Concept 이름을 리스트로 수집하되, 앞 3개만 표시하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
RETURN c.domain AS 도메인,
       count(c) AS 개수,
       collect(c.name_kr)[..3] AS 상위3개
ORDER BY 개수 DESC
```
</details>

**Q16.** 각 Domain 노드에 연결된(BELONGS_TO) Concept 수와 실제 doc_count를 비교하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (d:Domain)
OPTIONAL MATCH (c:Concept)-[:BELONGS_TO]->(d)
RETURN d.id AS 도메인,
       d.doc_count AS 문서수,
       count(c) AS 연결된_Concept수
ORDER BY d.id
```
</details>

**Q17.** MENTIONED_IN 관계가 가장 많은 Document Top 3를 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH (doc:Document)<-[:MENTIONED_IN]-(n)
RETURN doc.id AS 문서, count(n) AS 언급_개념수
ORDER BY 언급_개념수 DESC
LIMIT 3
```
</details>

### 검증과 진단 (Q18~Q20)

**Q18.** BELONGS_TO 관계가 누락된 Concept을 찾으세요 (domain 속성은 있지만 Domain 노드와 미연결).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.domain IS NOT NULL
  AND NOT EXISTS { (c)-[:BELONGS_TO]->(:Domain) }
RETURN c.id, c.name_kr, c.domain AS 도메인코드
```
</details>

**Q19.** id 네이밍 규칙(영문 소문자 + 언더스코어 + 숫자만)을 위반하는 노드를 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH (n)
WHERE n.id IS NOT NULL AND NOT n.id =~ '^[a-z0-9_]+$'
RETURN n.id, labels(n) AS 라벨
```
</details>

**Q20.** 현재 그래프의 전체 통계를 한 번에 조회하세요 (노드 수, 관계 수, 라벨별 분포, 관계 타입별 분포).

<details>
<summary>정답</summary>

```cypher
// 전체 통계
CALL apoc.meta.stats() YIELD nodeCount, relCount, labels, relTypes
RETURN nodeCount AS 노드수,
       relCount AS 관계수,
       labels AS 라벨별분포,
       relTypes AS 관계타입별분포
```
</details>

---

### 체크리스트

- [ ] CREATE와 MERGE의 차이를 설명할 수 있다
- [ ] ON CREATE SET / ON MATCH SET의 사용 시점을 안다
- [ ] SET `=` vs `+=`의 차이를 이해한다
- [ ] OPTIONAL MATCH의 용도를 안다 (누락 검출)
- [ ] WHERE에서 NULL을 IS NULL / IS NOT NULL로 비교한다
- [ ] WITH 절로 집계 → 필터링 파이프라인을 구성할 수 있다
- [ ] UNWIND로 리스트를 행으로 펼칠 수 있다
- [ ] 리스트 컴프리헨션 문법을 이해한다
- [ ] UNIQUE 제약조건과 인덱스의 관계를 안다
- [ ] EXPLAIN/PROFILE로 쿼리 성능을 확인할 수 있다
- [ ] 연습문제 20개 중 16개 이상을 직접 풀었다

---

> 📌 **핵심 정리**
>
> 1. **MERGE > CREATE**: 온톨로지에서는 항상 MERGE. `{}` 안에는 매칭 키(id)만
> 2. **SET `+=`**: 기존 속성을 유지하면서 추가. `=`는 전부 교체하므로 위험
> 3. **OPTIONAL MATCH**: LEFT JOIN과 동일. 누락 검출의 핵심 도구
> 4. **WITH**: 쿼리 파이프라인. 집계 후 필터링, 중간 결과 전달에 필수
> 5. **NULL 처리**: `IS NULL` / `IS NOT NULL` 전용 연산자 사용. `= null`은 작동 안 함
> 6. **UNWIND**: 리스트 → 행으로 펼치기. 배치 업데이트의 핵심
> 7. **제약조건**: 라벨별 독립 적용. 교차 라벨 중복은 별도 검증 필요
> 8. **EXPLAIN/PROFILE**: NodeIndexSeek이 보이면 정상. AllNodesScan이면 인덱스 확인
>
> **다음 챕터**: Ch.14에서는 가변 길이 경로, 서브쿼리, APOC 프로시저, GDS 그래프 알고리즘 등
> "그래프를 탐험하고 분석하는" 고급 문법을 다룹니다.
