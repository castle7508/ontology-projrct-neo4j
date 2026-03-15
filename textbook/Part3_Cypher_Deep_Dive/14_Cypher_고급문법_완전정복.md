# Ch.14 — Cypher 고급문법 완전정복

> **"기본이 '읽고 쓰기'라면, 고급은 '탐험하고 분석하기'다."**

Ch.13에서 노드/관계 조작, 필터링, 집계를 마스터했습니다.
이 챕터에서는 Cypher의 고급 기능을 다룹니다:
가변 길이 경로, 서브쿼리, APOC 프로시저, 성능 최적화, GDS 그래프 알고리즘까지.

> 📌 **이 챕터를 읽어야 하는 시점**
>
> - 3-홉 이상의 경로 탐색이 필요할 때
> - 대량 데이터 배치 처리가 필요할 때
> - 쿼리가 느려서 최적화가 필요할 때
> - 그래프 알고리즘(PageRank, 커뮤니티 탐지)을 적용하고 싶을 때

---

## 14.1 가변 길이 경로

### 14.1.1 기본 문법 — `*min..max`

```cypher
// 1~3홉 경로 탐색 (cnn은 Technology 라벨)
MATCH path = (a:Technology {id: 'cnn'})-[*1..3]->(b)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 경로
```

| 패턴 | 의미 |
|------|------|
| `[*]` | 무제한 홉 (⚠️ 위험 — 매우 느릴 수 있음) |
| `[*1..3]` | 1~3홉 |
| `[*..5]` | 최대 5홉 (0홉 포함) |
| `[*2]` | 정확히 2홉 |
| `[*2..2]` | 정확히 2홉 (명시적) |

**관계 타입 지정:**

```cypher
// SUBCLASS_OF 체인만 따라가기 (1~5홉)
MATCH path = (a:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..5]->(b)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 개념체인
```

**실전 예시 — AI 개념의 계층 구조 탐색:**

```cypher
// CNN에서 최상위 개념까지의 계층 체인
MATCH path = (start:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..10]->(ancestor)
WHERE NOT (ancestor)-[:SUBCLASS_OF]->()    // 더 이상 상위가 없는 노드
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 계층,
       length(path) AS 깊이
```

### 14.1.2 shortestPath — 최단 경로

```cypher
// 두 개념 간 최단 경로
MATCH path = shortestPath(
    (a:Concept {id: 'deep_learning'})-[*]-(b:Concept {id: 'encryption'})
)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 경로,
       [r IN relationships(path) | type(r)] AS 관계들,
       length(path) AS 거리
```

> ⚠️ `shortestPath`에서 방향을 무시(`-[*]-`)하는 것이 일반적입니다.
> 방향을 지정하면 경로를 찾지 못할 수 있습니다.

### 14.1.3 allShortestPaths — 모든 최단 경로

```cypher
// 두 개념 간 동일 거리의 모든 최단 경로
MATCH path = allShortestPaths(
    (a:Concept {id: 'deep_learning'})-[*]-(b:Concept {id: 'encryption'})
)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 경로,
       length(path) AS 거리
```

### 14.1.4 경로 함수

```cypher
MATCH path = (a:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..3]->(b)
RETURN
    nodes(path) AS 노드목록,
    relationships(path) AS 관계목록,
    length(path) AS 경로길이,
    [n IN nodes(path) | n.name_kr] AS 이름체인,
    [r IN relationships(path) | type(r)] AS 관계체인
```

| 함수 | 반환 | 설명 |
|------|------|------|
| `nodes(path)` | List<Node> | 경로의 모든 노드 |
| `relationships(path)` | List<Relationship> | 경로의 모든 관계 |
| `length(path)` | Integer | 관계의 수 (= 홉 수) |

> ⚠️ **[안티패턴] 무제한 가변 경로**
>
> ```cypher
> // ❌ 매우 위험! 그래프 전체를 탐색할 수 있음
> MATCH path = (a)-[*]->(b)
> RETURN path
>
> // ✅ 항상 상한을 지정
> MATCH path = (a)-[*1..5]->(b)
> RETURN path
> ```
>
> `[*]`는 이론적으로 그래프의 모든 경로를 탐색합니다.
> 우리 프로젝트(435노드)에서도 시간이 오래 걸릴 수 있고,
> 대규모 그래프에서는 메모리 초과로 쿼리가 실패합니다.
> **반드시 `*1..N` 형태로 상한을 지정**하세요.

---

## 14.2 서브쿼리

### 14.2.1 CALL { } — 독립 서브쿼리

Neo4j 5+에서 지원하는 서브쿼리는 복잡한 쿼리를 모듈화합니다:

```cypher
// 각 도메인의 최다 출제 Concept 찾기
MATCH (d:Domain)
CALL {
    WITH d
    MATCH (c:Concept)-[:BELONGS_TO]->(d)
    WHERE c.exam_frequency IS NOT NULL
    RETURN c
    ORDER BY c.exam_frequency DESC
    LIMIT 1
}
RETURN d.id AS 도메인, d.name AS 도메인명,
       c.name_kr AS 최다출제, c.exam_frequency AS 빈도
ORDER BY c.exam_frequency DESC
```

**서브쿼리 규칙:**
- `WITH` 절로 외부 변수를 서브쿼리 안으로 전달
- 서브쿼리의 `RETURN`이 외부로 결과 전달
- 서브쿼리 안에서 LIMIT, ORDER BY 사용 가능

### 14.2.2 EXISTS { } — 패턴 존재 확인

```cypher
// COMPARED_WITH 관계가 있는 Concept만 조회
MATCH (c:Concept)
WHERE EXISTS {
    (c)-[:COMPARED_WITH]-()
}
RETURN c.name_kr AS 비교대상_있는_개념

// 복합 패턴 존재 확인
MATCH (c:Concept)
WHERE EXISTS {
    (c)-[:SUBCLASS_OF]->(:Concept)-[:BELONGS_TO]->(:Domain {id: 'AI'})
}
RETURN c.name_kr AS 'AI 하위 개념의 하위 개념'
```

### 14.2.3 COUNT { } — 서브쿼리 결과 카운트

```cypher
// 관계가 5개 이상인 노드만 조회
MATCH (c:Concept)
WHERE COUNT { (c)-[]-() } >= 5
RETURN c.name_kr, COUNT { (c)-[]-() } AS 관계수
ORDER BY 관계수 DESC
```

### 14.2.4 COLLECT { } — 서브쿼리 결과를 리스트로

> 💡 COLLECT 서브쿼리는 **Neo4j 5.6+**에서 지원됩니다.
> 우리 프로젝트는 Neo4j 2025.02.0(5.x 기반)이므로 사용 가능합니다.

```cypher
// 각 Concept의 관계 타입 목록을 서브쿼리로 수집
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.importance = 'high'
RETURN c.name_kr,
       COLLECT { MATCH (c)-[r]->() RETURN DISTINCT type(r) } AS 관계타입들
```

### 14.2.5 CALL { } IN TRANSACTIONS — 대량 배치 처리

대량 데이터를 처리할 때 트랜잭션을 분할하여 메모리 초과를 방지합니다:

```cypher
// 모든 Concept의 updated_at을 배치 업데이트 (1000개씩 커밋)
MATCH (c:Concept)
CALL {
    WITH c
    SET c.updated_at = datetime()
} IN TRANSACTIONS OF 1000 ROWS
```

**실전 활용 — 대량 BELONGS_TO 관계 생성:**

```cypher
// domain 속성은 있지만 BELONGS_TO 관계가 없는 노드에 일괄 연결
MATCH (n)
WHERE n.domain IS NOT NULL
  AND (n:Concept OR n:Technology OR n:Method OR n:Threat)
  AND NOT EXISTS { (n)-[:BELONGS_TO]->(:Domain) }
CALL {
    WITH n
    MATCH (d:Domain {id: n.domain})
    MERGE (n)-[:BELONGS_TO]->(d)
} IN TRANSACTIONS OF 500 ROWS
```

> 💡 **CALL IN TRANSACTIONS vs 일반 쿼리**
>
> | 항목 | 일반 쿼리 | CALL IN TRANSACTIONS |
> |------|-----------|---------------------|
> | 트랜잭션 | 전체가 1개 트랜잭션 | N개씩 분할 |
> | 메모리 | 전체를 메모리에 적재 | 배치 단위만 적재 |
> | 실패 시 | 전체 롤백 | 완료된 배치는 유지 |
> | 적합한 경우 | 소량 데이터 (수천 건) | 대량 데이터 (수만~수백만 건) |

---

## 14.3 UNWIND와 리스트 처리 심화

### 14.3.1 UNWIND 기본

```cypher
// 리스트를 행으로 펼치기
UNWIND ['AI', 'SE', 'SW'] AS domain
RETURN domain
// → 3개 행
```

### 14.3.2 UNWIND로 배치 노드 생성

```cypher
// 여러 노드를 한 번에 생성
UNWIND [
    {id: 'federated_learning', name_kr: '연합학습', domain: 'AI'},
    {id: 'edge_computing', name_kr: '엣지 컴퓨팅', domain: 'SV'},
    {id: 'quantum_computing', name_kr: '양자 컴퓨팅', domain: 'CA'}
] AS item
MERGE (c:Concept {id: item.id})
SET c.name_kr = item.name_kr, c.domain = item.domain
RETURN c.id, c.name_kr
```

### 14.3.3 UNWIND + collect — 리스트 변환

```cypher
// 중첩 리스트 펼치기 → 변환 → 다시 수집
MATCH (c:Concept)
WHERE c.aliases IS NOT NULL
UNWIND c.aliases AS alias
WITH c.id AS concept_id, toLower(alias) AS normalized_alias
RETURN concept_id, collect(DISTINCT normalized_alias) AS 정규화된_별칭
```

### 14.3.4 중첩 UNWIND

```cypher
// 도메인-개념 매핑 일괄 처리
UNWIND [
    {domain: 'AI', concepts: ['deep_learning', 'machine_learning']},
    {domain: 'SE', concepts: ['encryption', 'authentication']}
] AS mapping
UNWIND mapping.concepts AS concept_id
MATCH (c:Concept {id: concept_id})
MERGE (d:Domain {id: mapping.domain})
MERGE (c)-[:BELONGS_TO]->(d)
RETURN mapping.domain, concept_id
```

---

## 14.4 CASE 표현식

### 14.4.1 단순 CASE — 값 매칭

```cypher
// 도메인 코드를 한글 카테고리로 변환
MATCH (c:Concept)
RETURN c.name_kr,
       CASE c.domain
           WHEN 'AI' THEN '인공지능/데이터'
           WHEN 'SE' THEN '보안'
           WHEN 'SW' THEN '소프트웨어'
           WHEN 'NW' THEN '네트워크/통신'
           WHEN 'DB' THEN '데이터베이스'
           WHEN 'CA' THEN '하드웨어/구조'
           WHEN 'OS' THEN '운영체제'
           ELSE '기타'
       END AS 카테고리
```

### 14.4.2 검색 CASE — 조건 매칭

```cypher
// 출제빈도에 따른 등급 분류
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr,
       c.exam_frequency AS 빈도,
       CASE
           WHEN c.exam_frequency >= 500 THEN 'S등급 (최다출제)'
           WHEN c.exam_frequency >= 200 THEN 'A등급 (다출제)'
           WHEN c.exam_frequency >= 100 THEN 'B등급 (보통)'
           WHEN c.exam_frequency >= 50  THEN 'C등급 (저빈도)'
           ELSE 'D등급 (희소)'
       END AS 등급
ORDER BY c.exam_frequency DESC
```

### 14.4.3 CASE를 SET에서 활용

```cypher
// importance를 exam_frequency 기반으로 자동 설정
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
SET c.importance = CASE
    WHEN c.exam_frequency >= 200 THEN 'high'
    WHEN c.exam_frequency >= 100 THEN 'medium'
    ELSE 'low'
END
RETURN c.name_kr, c.exam_frequency, c.importance
```

---

## 14.5 APOC 필수 프로시저

APOC(Awesome Procedures On Cypher)은 Neo4j의 필수 확장 라이브러리입니다.
우리 프로젝트에서 실제로 사용하는 핵심 프로시저를 다룹니다.

### 14.5.1 apoc.meta.stats — 그래프 전체 통계

```cypher
CALL apoc.meta.stats()
YIELD nodeCount, relCount, labels, relTypes, relTypesCount
RETURN nodeCount AS 노드수,
       relCount AS 관계수,
       labels AS 라벨별수,
       relTypesCount AS 관계타입별수
```

**결과 예시:**
```
노드수: 435
관계수: 875
라벨별수: {Concept: 231, Technology: 52, Method: 54, ...}
관계타입별수: {SUBCLASS_OF: 45, BELONGS_TO: 320, MENTIONED_IN: 185, ...}
```

### 14.5.2 apoc.meta.graph — 메타 그래프 시각화

```cypher
// 스키마 구조를 그래프로 시각화 (Neo4j Browser에서 실행)
CALL apoc.meta.graph()
```

이 쿼리는 노드 라벨 간의 관계 패턴을 시각적으로 보여줍니다.
"어떤 라벨이 어떤 관계로 연결되어 있는지"를 한눈에 파악할 수 있습니다.

### 14.5.3 apoc.refactor.mergeNodes — 노드 병합

중복 노드를 발견했을 때 수동으로 관계를 옮기고 삭제하는 대신,
한 번의 호출로 병합합니다:

```cypher
// 중복 노드 병합: 'agile'과 'agile_methodology'
MATCH (keep:Concept {id: 'agile'})
MATCH (remove:Concept {id: 'agile_methodology'})
CALL apoc.refactor.mergeNodes([keep, remove], {
    properties: {
        name: 'discard',           // 첫 번째 노드의 값 유지
        definition: 'combine',     // 두 값을 배열로 합침
        `.*`: 'discard'            // 나머지는 첫 번째 노드 값 유지
    },
    mergeRels: true                // 관계도 병합
})
YIELD node
RETURN node
```

**속성 병합 전략:**

| 전략 | 동작 |
|------|------|
| `'discard'` | 첫 번째 노드의 값 유지 (기본값) |
| `'overwrite'` | 마지막 노드의 값으로 덮어쓰기 |
| `'combine'` | 두 값을 배열로 합침 |

### 14.5.4 apoc.refactor.rename — 속성명/라벨/관계 타입 변경

```cypher
// 속성명 변경: name_kr → korean_name (모든 Concept에)
MATCH (c:Concept)
WITH collect(c) AS nodes
CALL apoc.refactor.rename.nodeProperty('name_kr', 'korean_name', nodes)
YIELD committedOperations
RETURN committedOperations
```

```cypher
// 관계 타입 변경: RELATED_TO → ASSOCIATED_WITH
MATCH ()-[r:RELATED_TO]->()
WITH collect(r) AS rels
CALL apoc.refactor.rename.type('RELATED_TO', 'ASSOCIATED_WITH', rels)
YIELD committedOperations
RETURN committedOperations
```

```cypher
// 라벨 변경: Technology → Tool
MATCH (n:Technology)
WITH collect(n) AS nodes
CALL apoc.refactor.rename.label('Technology', 'Tool', nodes)
YIELD committedOperations
RETURN committedOperations
```

### 14.5.5 apoc.periodic.iterate — 대량 배치 처리

CALL IN TRANSACTIONS의 APOC 버전입니다.
더 세밀한 배치 제어가 가능합니다:

```cypher
// 모든 Concept의 updated_at을 배치 업데이트
CALL apoc.periodic.iterate(
    'MATCH (c:Concept) RETURN c',
    'SET c.updated_at = datetime()',
    {batchSize: 1000, parallel: false}
)
YIELD batches, total, timeTaken
RETURN batches, total, timeTaken
```

**설정 옵션:**

| 옵션 | 기본값 | 설명 |
|------|--------|------|
| `batchSize` | 10000 | 한 배치당 처리 건수 |
| `parallel` | false | 병렬 실행 여부 (⚠️ 쓰기 작업에서는 false 권장) |
| `iterateList` | true | 리스트를 한번에 전달 vs 행 단위 전달 |

### 14.5.6 apoc.export — 데이터 내보내기

```cypher
// 전체 그래프를 JSON으로 내보내기
CALL apoc.export.json.all('export/full_graph.json', {})
YIELD file, nodes, relationships
RETURN file, nodes, relationships

// 특정 쿼리 결과만 CSV로 내보내기
CALL apoc.export.csv.query(
    'MATCH (c:Concept) WHERE c.domain = "AI" RETURN c.id, c.name_kr, c.domain',
    'export/ai_concepts.csv',
    {}
)
```

### 14.5.7 apoc.load.json — JSON 데이터 가져오기

```cypher
// JSON 파일에서 데이터 로드
CALL apoc.load.json('file:///data/concepts.json')
YIELD value
MERGE (c:Concept {id: value.id})
SET c.name_kr = value.name_kr,
    c.domain = value.domain,
    c.definition = value.definition
```

> 💡 **apoc.load.json의 파일 경로**
>
> `file:///` 접두사는 Neo4j의 `import/` 디렉토리를 기준으로 합니다.
> Docker 환경에서는 `docker-compose.yml`에서 마운트한 경로입니다.
> 우리 프로젝트: `./import` → 컨테이너의 `/var/lib/neo4j/import/`

### 14.5.8 기타 유용한 APOC 함수

```cypher
// 맵/리스트 조작
RETURN apoc.map.fromPairs([['key1', 'val1'], ['key2', 'val2']]) AS 맵변환

// 텍스트 처리
RETURN apoc.text.join(['A', 'B', 'C'], ', ') AS 결합     // 'A, B, C'

// 날짜/시간
RETURN apoc.date.format(timestamp(), 'ms', 'yyyy-MM-dd HH:mm') AS 현재시각

// 컬렉션
RETURN apoc.coll.flatten([[1,2],[3,4],[5]]) AS 평탄화     // [1,2,3,4,5]
RETURN apoc.coll.duplicates([1,2,2,3,3,3]) AS 중복값      // [2,3]
```

---

## 14.6 성능 최적화

### 14.6.1 PROFILE — 실행 계획 + 실측 데이터

```cypher
PROFILE
MATCH (c:Concept {id: 'deep_learning'})-[:SUBCLASS_OF]->(parent)
RETURN parent.name_kr
```

PROFILE 결과에서 확인할 항목:

| 지표 | 의미 | 좋은 값 |
|------|------|---------|
| `Rows` | 연산자가 처리한 행 수 | 필요한 만큼만 |
| `DbHits` | 데이터베이스 접근 횟수 | 낮을수록 좋음 |
| `Estimated Rows` | 예상 행 수 | 실제와 비슷하면 OK |
| `Operator` | 실행 연산자 | IndexSeek > LabelScan > AllNodesScan |

### 14.6.2 EXPLAIN — 실행 계획만 (실행하지 않음)

```cypher
EXPLAIN
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.name STARTS WITH 'Deep'
RETURN c
```

EXPLAIN은 쿼리를 **실행하지 않고** 실행 계획만 보여줍니다.
대량 데이터에서 느린 쿼리를 미리 점검할 때 유용합니다.

### 14.6.3 인덱스 활용 확인

```cypher
// ❌ 인덱스 미활용 — AllNodesScan 또는 Filter
PROFILE
MATCH (n {id: 'deep_learning'})    // 라벨 없음!
RETURN n

// ✅ 인덱스 활용 — NodeIndexSeek
PROFILE
MATCH (n:Concept {id: 'deep_learning'})   // 라벨 있음!
RETURN n
```

### 14.6.4 USING INDEX 힌트

Neo4j의 쿼리 플래너가 최적의 인덱스를 선택하지 못할 때,
명시적으로 인덱스 사용을 지시합니다:

```cypher
MATCH (c:Concept)
USING INDEX c:Concept(domain)
WHERE c.domain = 'AI' AND c.name_kr CONTAINS '학습'
RETURN c.name_kr
```

> 💡 대부분의 경우 Neo4j 플래너가 자동으로 최적 인덱스를 선택합니다.
> USING INDEX는 플래너가 잘못된 선택을 할 때만 사용하세요.

### 14.6.5 느린 쿼리 패턴 (피해야 할 것)

**패턴 1: 무제한 가변 경로**

```cypher
// ❌ 매우 느림 — 그래프 전체 탐색
MATCH (a)-[*]->(b)
RETURN count(*)

// ✅ 상한 지정
MATCH (a)-[*1..5]->(b)
RETURN count(*)
```

**패턴 2: 카르테시안 곱 (Cartesian Product)**

```cypher
// ❌ 카르테시안 곱 — 231 × 231 = 53,361개 조합!
MATCH (a:Concept), (b:Concept)
WHERE a.domain = 'AI' AND b.domain = 'SE'
RETURN count(*)

// ✅ 필요한 관계만 탐색
MATCH (a:Concept)-[r]-(b:Concept)
WHERE a.domain = 'AI' AND b.domain = 'SE'
RETURN a.name_kr, type(r), b.name_kr
```

**패턴 3: 라벨 없는 MATCH**

```cypher
// ❌ 전체 노드 스캔
MATCH (n {id: 'deep_learning'})
RETURN n

// ✅ 라벨 지정 → 인덱스 활용
MATCH (n:Concept {id: 'deep_learning'})
RETURN n
```

**패턴 4: 정규식 남용**

```cypher
// ❌ 정규식은 인덱스를 사용할 수 없음 (전체 스캔)
MATCH (c:Concept)
WHERE c.name =~ '.*learning.*'
RETURN c

// ✅ CONTAINS는 인덱스를 부분적으로 활용
MATCH (c:Concept)
WHERE c.name CONTAINS 'learning'
RETURN c

// ✅ STARTS WITH는 인덱스를 완전히 활용
MATCH (c:Concept)
WHERE c.name STARTS WITH 'Deep'
RETURN c
```

**문자열 연산자별 인덱스 활용도:**

| 연산자 | 인덱스 활용 | 성능 |
|--------|-------------|------|
| `=` | 완전 활용 | 🟢 최적 |
| `STARTS WITH` | 완전 활용 | 🟢 최적 |
| `ENDS WITH` | 미활용 | 🔴 느림 |
| `CONTAINS` | 부분 활용 | 🟡 보통 |
| `=~` (정규식) | 미활용 | 🔴 느림 |

### 14.6.6 쿼리 최적화 체크리스트

1. **라벨을 항상 지정**하는가?
2. **인덱스가 있는 속성**으로 WHERE 조건을 걸고 있는가?
3. **가변 길이 경로에 상한**이 있는가?
4. **카르테시안 곱**이 발생하지 않는가?
5. **PROFILE로 실제 실행 계획**을 확인했는가?
6. STARTS WITH를 사용할 수 있는 곳에서 **정규식을 쓰고 있지 않은가?**

---

## 14.7 트랜잭션과 에러 처리

### 14.7.1 Cypher의 트랜잭션 모델

Neo4j의 모든 Cypher 쿼리는 트랜잭션 안에서 실행됩니다:

- **Neo4j Browser**: 각 쿼리가 자동으로 하나의 트랜잭션
- **cypher-shell**: 파일 내 각 세미콜론(`;`) 단위가 하나의 트랜잭션
- **드라이버**: 명시적 트랜잭션 관리 가능

```cypher
// Neo4j Browser에서는 하나의 쿼리 블록이 하나의 트랜잭션
// 중간에 에러가 나면 전체가 롤백됨

// ✅ 안전한 멱등 스크립트 패턴
MERGE (a:Concept {id: 'x'})
SET a.name_kr = 'X';

MERGE (b:Concept {id: 'y'})
SET b.name_kr = 'Y';

MERGE (a:Concept {id: 'x'})
MERGE (b:Concept {id: 'y'})
MERGE (a)-[:SUBCLASS_OF]->(b);
```

### 14.7.2 에러 시나리오와 대응

**시나리오 1: 제약조건 위반**

```cypher
// id가 중복되면 ConstraintValidationFailed 에러
CREATE (c:Concept {id: 'deep_learning'})
// → 에러: Node(xxx) already exists with label `Concept` and property `id` = 'deep_learning'

// 대응: MERGE 사용 (에러 대신 기존 노드 재사용)
MERGE (c:Concept {id: 'deep_learning'})
```

**시나리오 2: 관계 있는 노드 DELETE**

```cypher
// 관계가 있으면 에러
MATCH (n:Concept {id: 'deep_learning'})
DELETE n
// → 에러: Cannot delete node<xxx>, because it still has relationships.

// 대응: DETACH DELETE 또는 관계 먼저 삭제
MATCH (n:Concept {id: 'deep_learning'})
DETACH DELETE n
```

**시나리오 3: 타입 불일치**

```cypher
// 문자열과 숫자 비교
MATCH (c:Concept)
WHERE c.exam_frequency > '100'    // 문자열 '100'!
// → 예상치 못한 결과 (문자열 비교가 됨)

// 대응: 올바른 타입 사용
WHERE c.exam_frequency > 100      // 숫자 100
```

---

## 14.8 Neo4j 5+ 신기능

Neo4j 5는 Cypher의 표현력을 크게 확장하는 기능을 도입했습니다.
우리 프로젝트에서 바로 활용할 수 있는 2가지 핵심 기능을 소개합니다.

### 14.8.1 Quantified Path Patterns (QPP) — 가변 경로의 진화

기존의 `[*1..3]` 가변 길이 경로는 **관계만** 반복했습니다.
QPP는 **노드+관계 패턴 전체**를 반복하면서 조건까지 걸 수 있습니다:

**기존 문법 (관계만 반복):**

```cypher
// SUBCLASS_OF를 1~5번 따라가기
MATCH path = (a:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..5]->(root)
RETURN path
```

**QPP 문법 (패턴 반복 + 중간 노드 조건):**

```cypher
// "AI 도메인에 속하는 Concept"만 거치면서 SUBCLASS_OF 체인 탐색
MATCH path = (start:Technology {id: 'cnn'})
             (()-[:INSTANCE_OF|SUBCLASS_OF]->(mid:Concept WHERE mid.domain = 'AI')){1,5}
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS AI전용체인
```

**QPP의 핵심 차이:**

| 항목 | 기존 `[*1..N]` | QPP `(){min,max}` |
|------|----------------|---------------------|
| 반복 대상 | 관계만 | 노드+관계 패턴 전체 |
| 중간 노드 조건 | 불가 (사후 필터만) | 패턴 안에 WHERE 가능 |
| 표현력 | 단순 홉 카운팅 | "특정 조건의 노드만 경유" |
| 성능 | 조건 없는 탐색 → 후필터 | 탐색 중 조건 평가 → 조기 차단 |

**실전 활용 — 우리 프로젝트:**

```cypher
// "importance = 'high'인 Concept만 거치는 계층 체인"
MATCH path = (start:Concept {id: 'deep_learning'})
             (()-[:SUBCLASS_OF]->(c:Concept WHERE c.importance = 'high')){1,3}
RETURN [n IN nodes(path) | n.name_kr] AS 핵심개념만_경유하는_체인
```

> 💡 QPP는 기존 가변 경로의 **상위 호환**입니다.
> 중간 노드 조건이 필요 없으면 기존 `[*1..N]`을 그대로 사용해도 됩니다.

### 14.8.2 벡터 인덱스 (Vector Index) — GraphRAG의 기반

Neo4j 5.11+에서 벡터 인덱스를 네이티브로 지원합니다.
텍스트 임베딩을 노드 속성에 저장하고, 코사인 유사도로 검색할 수 있습니다.

**왜 온톨로지에 벡터가 필요한가:**

- SUBCLASS_OF, COMPARED_WITH 같은 **구조적 관계**는 Cypher로 탐색
- "딥러닝과 비슷한 느낌의 개념은?" 같은 **의미적 유사도**는 벡터로 검색
- 둘을 결합하면 **GraphRAG** — 부록 C에서 상세히 다룹니다

**벡터 인덱스 생성:**

```cypher
// 벡터 인덱스 생성 (1536차원 = OpenAI text-embedding-3-small)
CREATE VECTOR INDEX concept_embedding IF NOT EXISTS
FOR (c:Concept) ON (c.embedding)
OPTIONS {indexConfig: {
    `vector.dimensions`: 1536,
    `vector.similarity_function`: 'cosine'
}};
```

**벡터 유사도 검색:**

```cypher
// 쿼리 벡터와 가장 유사한 Concept 5개 반환
// ($query_embedding은 Python에서 생성한 벡터를 파라미터로 전달)
CALL db.index.vector.queryNodes('concept_embedding', 5, $query_embedding)
YIELD node, score
RETURN node.name_kr AS 개념,
       node.domain AS 도메인,
       round(score, 4) AS 유사도
ORDER BY score DESC
```

**하이브리드 검색 — 벡터 + 그래프:**

```cypher
// 1단계: 벡터로 시작점 찾기
CALL db.index.vector.queryNodes('concept_embedding', 3, $query_embedding)
YIELD node AS seed, score

// 2단계: 그래프로 컨텍스트 확장 (시작점의 2-홉 이웃)
MATCH (seed)-[r*1..2]-(neighbor)
WHERE NOT neighbor:Domain AND NOT neighbor:Document

// 3단계: 통합 결과 반환
RETURN seed.name_kr AS 시작점,
       round(score, 3) AS 벡터유사도,
       collect(DISTINCT neighbor.name_kr)[..5] AS 그래프이웃
```

> ⚠️ **벡터 인덱스 사용 시 주의**
>
> - 임베딩 생성에 외부 API(OpenAI 등) 필요 — 비용 발생
> - 노드당 1536 float = ~6KB — 대량 노드 시 저장 공간 고려
> - 벡터 검색은 **의미적 유사도**이지 **구조적 관계**가 아님
> - 그래프 탐색과 벡터 검색을 **결합**해야 진정한 GraphRAG

### 14.8.3 Property Type 제약조건 — 데이터 품질 강제

Neo4j 5.9+에서 **속성 값의 타입을 강제**할 수 있습니다:

```cypher
// exam_frequency는 반드시 정수여야 함
CREATE CONSTRAINT concept_freq_type IF NOT EXISTS
FOR (c:Concept) REQUIRE c.exam_frequency IS :: INTEGER;

// name은 반드시 문자열이어야 함
CREATE CONSTRAINT concept_name_type IF NOT EXISTS
FOR (c:Concept) REQUIRE c.name IS :: STRING;

// 여러 타입 허용 (Union Type)
CREATE CONSTRAINT concept_aliases_type IF NOT EXISTS
FOR (c:Concept) REQUIRE c.aliases IS :: LIST<STRING>;
```

**왜 중요한가:**
문서 적재 시 `exam_frequency`에 문자열 `'100'`이 들어가면
`WHERE c.exam_frequency > 200` 같은 비교가 예상과 다르게 동작합니다.
Property Type 제약조건은 이런 **조용한 타입 오류**를 적재 시점에 차단합니다.

```cypher
// 설정된 타입 제약조건 확인
SHOW CONSTRAINTS
YIELD name, type, labelsOrTypes, properties
WHERE type = 'NODE_PROPERTY_TYPE'
RETURN name, labelsOrTypes, properties;
```

### 14.8.4 Label Expression — 패턴 매칭의 확장

Neo4j 5+에서 라벨 매칭에 **논리 연산자**를 사용할 수 있습니다:

```cypher
// OR: Concept 또는 Technology인 노드
MATCH (n:Concept|Technology)
WHERE n.domain = 'AI'
RETURN n.id, labels(n) AS 라벨, n.name_kr

// AND: Concept이면서 동시에 CoreConcept인 노드
MATCH (n:Concept&CoreConcept)
RETURN n.id, n.name_kr

// NOT: Domain이 아닌 모든 노드
MATCH (n:!Domain)
WHERE n.domain = 'AI'
RETURN labels(n) AS 라벨, count(n) AS 개수

// 와일드카드: 어떤 라벨이든 가진 노드 (라벨 없는 노드 제외)
MATCH (n:%)
RETURN labels(n), count(n)
```

**Label Expression 연산자:**

| 연산자 | 의미 | 예시 |
|--------|------|------|
| `A\|B` | OR (하나라도) | `(:Concept\|Technology)` |
| `A&B` | AND (모두) | `(:Concept&CoreConcept)` |
| `!A` | NOT (아닌) | `(:!Domain)` |
| `%` | 와일드카드 (아무거나) | `(:%)` |

**실전 활용 — 우리 프로젝트:**

```cypher
// "도메인 분류와 문서 추적을 제외한" 순수 지식 노드만 조회
MATCH (n:!Domain&!Document&!ExamSession)
WHERE n.domain = 'AI'
RETURN labels(n) AS 유형, count(n) AS 개수
ORDER BY 개수 DESC
```

### 14.8.5 Cypher 25 미리보기 — 차세대 문법

Neo4j 2025.06+에서 **Cypher 25** 버전이 도입되었습니다.
우리 프로젝트(2025.02.0)에서는 아직 사용할 수 없지만,
향후 업그레이드 시 활용할 수 있는 주요 신기능을 소개합니다.

**WHEN — 조건부 쿼리 실행:**

```cypher
// Cypher 25에서만 동작 (CYPHER 25 접두사 필요)
CYPHER 25
MATCH (c:Concept {id: $concept_id})
WHEN c.importance = 'high' THEN {
    MATCH (c)-[r*1..3]-(related)
    RETURN c.name_kr AS 개념, collect(DISTINCT related.name_kr) AS 관련개념
}
ELSE {
    RETURN c.name_kr AS 개념, [] AS 관련개념
}
```

**LET — 변수 바인딩 (WITH 없이 스코프 유지):**

```cypher
// Cypher 25
CYPHER 25
MATCH (c:Concept)
LET total = count(c)
MATCH (c2:Concept {domain: 'AI'})
RETURN count(c2) AS AI개수, total AS 전체,
       round(100.0 * count(c2) / total, 1) AS 비율
```

**FILTER — 독립적 필터링 (WHERE 없이):**

```cypher
// Cypher 25
CYPHER 25
MATCH (c:Concept)-[:BELONGS_TO]->(d:Domain)
FILTER c.exam_frequency > 100
RETURN d.id, count(c) AS 고빈도개수
```

> 💡 **Cypher 25 사용법**: Neo4j 2025.06+에서 쿼리 앞에 `CYPHER 25`를 붙이면
> 새 문법을 사용할 수 있습니다. 기존 문법(Cypher 5)도 계속 동작합니다.
> 향후 마이그레이션은 점진적으로 수행하면 됩니다.

---

## 14.9 GDS 라이브러리 맛보기

GDS(Graph Data Science)는 그래프 알고리즘 라이브러리입니다.
PageRank, 커뮤니티 탐지, 노드 유사도 등을 제공합니다.

**왜 온톨로지에 그래프 알고리즘이 유용한가?**

온톨로지를 Cypher로만 분석하면 "이 노드의 관계가 몇 개인가?" 수준의 질문에 답할 수 있습니다.
하지만 GDS 알고리즘을 사용하면 다음과 같은 **구조적 질문**에 답할 수 있습니다:

| 질문 | 알고리즘 | 온톨로지에서의 활용 |
|------|----------|---------------------|
| "가장 핵심적인 개념은?" | PageRank | 많은 개념이 참조하는 상위 개념 식별 |
| "개념들이 자연스럽게 어떤 군집을 형성하는가?" | Louvain | 도메인 분류의 타당성 교차 검증 |
| "비슷한 위치에 있는 개념은?" | Node Similarity | 중복 후보 탐지, 관련 개념 추천 |
| "어떤 개념이 도메인 간 다리 역할을 하는가?" | Betweenness Centrality | 교차 도메인 핵심 개념 식별 |

이런 분석은 STEP 5(스키마 검증)에서 스키마 품질을 **정량적으로** 평가하고,
STEP 8(GraphRAG)에서 지식 검색의 정확도를 높이는 데 활용됩니다.

> 💡 GDS 알고리즘을 사용하려면 먼저 **인메모리 그래프 프로젝션**을 생성해야 합니다.
> 프로젝션은 디스크의 Neo4j 그래프에서 필요한 부분만 메모리에 올려
> 빠른 알고리즘 실행을 가능하게 합니다.

### 14.9.1 그래프 프로젝션 생성

```cypher
// 네이티브 프로젝션 — GDS 2.x 표준 API
CALL gds.graph.project(
    'ontology-graph',                            // 프로젝션 이름
    ['Concept', 'Technology', 'Method'],          // 노드 라벨
    ['SUBCLASS_OF', 'HAS_TYPE', 'INSTANCE_OF',
     'IMPLEMENTS', 'DEPENDS_ON', 'USES',
     'COMPARED_WITH']                             // 관계 타입
)
YIELD graphName, nodeCount, relationshipCount
RETURN graphName, nodeCount, relationshipCount
```

> ⚠️ **GDS 2.x API 변경 사항**
>
> | API | 상태 | 설명 |
> |-----|------|------|
> | `gds.graph.project` | ✅ 유효 | 네이티브 프로젝션 (권장) |
> | `gds.graph.project.cypher` | ❌ **Deprecated** | Cypher 기반 프로젝션 — 제거 예정 |
> | `gds.graph.drop` | ✅ 유효 | 프로젝션 삭제 (GDS 2.5+ 경고 발생하나 동작) |
>
> Cypher 프로젝션(`gds.graph.project.cypher`)이 필요했던 복잡한 필터링은
> 네이티브 프로젝션의 `nodeProperties`, `relationshipProperties` 옵션으로 대체하세요:
>
> ```cypher
> // 속성 포함 프로젝션 (Cypher 프로젝션 대체)
> CALL gds.graph.project(
>     'ontology-with-props',
>     {
>         Concept: { properties: ['exam_frequency', 'importance'] },
>         Technology: { properties: [] }
>     },
>     {
>         SUBCLASS_OF: { orientation: 'NATURAL' },
>         HAS_TYPE: { orientation: 'NATURAL' }
>     }
> )
> ```
>
> **Neo4j 2025.x 호환성**: GDS 2.15.0은 Neo4j 2025.02.0과 호환됩니다.
> 최신 호환 버전은 [GDS 릴리스 페이지](https://github.com/neo4j/graph-data-science/releases)에서 확인하세요.

### 14.9.2 PageRank — 중요 노드 식별

PageRank는 "많이 참조되는 노드"에 높은 점수를 부여합니다.
우리 온톨로지에서 **가장 핵심적인 개념**을 찾는 데 활용할 수 있습니다:

```cypher
// PageRank 실행
CALL gds.pageRank.stream('ontology-graph')
YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS node, score
RETURN node.name_kr AS 개념,
       labels(node) AS 라벨,
       node.domain AS 도메인,
       round(score, 4) AS PageRank
ORDER BY score DESC
LIMIT 15
```

**예상 결과:**
"인공지능", "머신러닝" 같은 상위 개념이 높은 PageRank를 받습니다.
많은 하위 개념이 SUBCLASS_OF로 참조하기 때문입니다.

### 14.9.3 Louvain — 커뮤니티 탐지

Louvain 알고리즘은 밀접하게 연결된 노드들을 **커뮤니티(군집)**로 분류합니다:

```cypher
// Louvain 커뮤니티 탐지
CALL gds.louvain.stream('ontology-graph')
YIELD nodeId, communityId
WITH gds.util.asNode(nodeId) AS node, communityId
RETURN communityId AS 커뮤니티,
       count(*) AS 노드수,
       collect(node.name_kr)[..5] AS 대표개념
ORDER BY 노드수 DESC
```

이 결과로 "AI 관련 개념들이 하나의 커뮤니티를 형성하고, 보안 개념들이 다른 커뮤니티를 형성하는지"를 확인할 수 있습니다.
도메인 분류가 올바른지 교차 검증하는 데 활용됩니다.

### 14.9.4 Node Similarity — 유사 노드 찾기

```cypher
// 노드 유사도 계산
CALL gds.nodeSimilarity.stream('ontology-graph')
YIELD node1, node2, similarity
WITH gds.util.asNode(node1) AS a,
     gds.util.asNode(node2) AS b,
     similarity
WHERE similarity > 0.5
RETURN a.name_kr AS 개념A,
       b.name_kr AS 개념B,
       round(similarity, 3) AS 유사도
ORDER BY similarity DESC
LIMIT 10
```

> 💡 Node Similarity는 **이웃 관계가 비슷한 노드**를 찾습니다.
> 예를 들어, 같은 상위 개념에 SUBCLASS_OF로 연결되고,
> 같은 도메인에 BELONGS_TO로 연결된 노드들은 유사도가 높습니다.

### 14.9.5 프로젝션 관리

```cypher
// 프로젝션 목록 확인
CALL gds.graph.list()
YIELD graphName, nodeCount, relationshipCount
RETURN graphName, nodeCount, relationshipCount

// 프로젝션 삭제 (메모리 해제)
CALL gds.graph.drop('ontology-graph')
```

> ⚠️ **GDS 프로젝션은 메모리에 상주합니다**
>
> 사용이 끝나면 반드시 `gds.graph.drop()`으로 삭제하세요.
> 큰 그래프의 프로젝션은 상당한 메모리를 소비합니다.

---

## [실습] 연습문제 20개

### 가변 길이 경로 (Q1~Q4)

**Q1.** 'cnn'에서 최상위 개념까지 INSTANCE_OF/SUBCLASS_OF 체인을 따라가세요.

<details>
<summary>정답</summary>

```cypher
MATCH path = (start:Technology {id: 'cnn'})-[:INSTANCE_OF|SUBCLASS_OF*1..10]->(ancestor)
WHERE NOT (ancestor)-[:SUBCLASS_OF]->()
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 계층체인,
       length(path) AS 깊이
```
</details>

**Q2.** '딥러닝'과 '암호화' 사이의 최단 경로를 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH path = shortestPath(
    (a:Concept {id: 'deep_learning'})-[*]-(b:Concept {id: 'encryption'})
)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 경로,
       [r IN relationships(path) | type(r)] AS 관계들,
       length(path) AS 거리
```
</details>

**Q3.** '인공지능'에서 2홉 이내로 도달할 수 있는 모든 노드를 찾으세요.

<details>
<summary>정답</summary>

```cypher
MATCH (ai:Concept {id: 'artificial_intelligence'})<-[*1..2]-(child)
RETURN DISTINCT child.name_kr AS 개념,
       labels(child) AS 라벨
ORDER BY child.name_kr
```
</details>

**Q4.** SUBCLASS_OF 체인의 최대 깊이가 몇인지 확인하세요.

<details>
<summary>정답</summary>

```cypher
MATCH path = (leaf)-[:SUBCLASS_OF*1..20]->(root)
WHERE NOT (leaf)<-[:SUBCLASS_OF]-()    // 리프 노드
  AND NOT (root)-[:SUBCLASS_OF]->()    // 루트 노드
RETURN leaf.name_kr AS 리프,
       root.name_kr AS 루트,
       length(path) AS 깊이
ORDER BY 깊이 DESC
LIMIT 5
```
</details>

### 서브쿼리 (Q5~Q8)

**Q5.** 각 도메인에서 가장 많은 관계를 가진 Concept을 찾으세요 (CALL 서브쿼리 사용).

<details>
<summary>정답</summary>

```cypher
MATCH (d:Domain)
CALL {
    WITH d
    MATCH (c:Concept)-[:BELONGS_TO]->(d)
    MATCH (c)-[r]-()
    WITH c, count(r) AS relCount
    RETURN c, relCount
    ORDER BY relCount DESC
    LIMIT 1
}
RETURN d.id AS 도메인, c.name_kr AS 허브개념, relCount AS 관계수
ORDER BY relCount DESC
```
</details>

**Q6.** COMPARED_WITH 관계가 있는 Concept만 조회하세요 (EXISTS 서브쿼리).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE EXISTS { (c)-[:COMPARED_WITH]-() }
RETURN c.name_kr AS 개념, c.domain AS 도메인
```
</details>

**Q7.** 관계가 5개 미만인 Concept을 찾으세요 (COUNT 서브쿼리).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE COUNT { (c)-[]-() } < 5
RETURN c.name_kr, c.domain, COUNT { (c)-[]-() } AS 관계수
ORDER BY 관계수
```
</details>

**Q8.** 모든 Concept에 checked 속성을 배치로 추가하세요 (CALL IN TRANSACTIONS).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
CALL {
    WITH c
    SET c.checked = true
} IN TRANSACTIONS OF 100 ROWS
```
</details>

### CASE와 UNWIND (Q9~Q12)

**Q9.** 각 Concept의 출제빈도를 S/A/B/C/D 등급으로 분류하세요.

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL
RETURN c.name_kr,
       c.exam_frequency,
       CASE
           WHEN c.exam_frequency >= 500 THEN 'S'
           WHEN c.exam_frequency >= 200 THEN 'A'
           WHEN c.exam_frequency >= 100 THEN 'B'
           WHEN c.exam_frequency >= 50  THEN 'C'
           ELSE 'D'
       END AS 등급
ORDER BY c.exam_frequency DESC
```
</details>

**Q10.** UNWIND로 다음 3개 Concept을 한 번에 생성하세요: quantum_ml, neuro_symbolic, few_shot_learning (도메인: AI).

<details>
<summary>정답</summary>

```cypher
UNWIND [
    {id: 'quantum_ml', name_kr: '양자 머신러닝'},
    {id: 'neuro_symbolic', name_kr: '신경-기호 AI'},
    {id: 'few_shot_learning', name_kr: '퓨샷 학습'}
] AS item
MERGE (c:Concept {id: item.id})
SET c.name_kr = item.name_kr, c.domain = 'AI'
RETURN c.id, c.name_kr
```
</details>

**Q11.** Q10에서 만든 3개를 machine_learning의 하위 개념으로 연결하세요.

<details>
<summary>정답</summary>

```cypher
UNWIND ['quantum_ml', 'neuro_symbolic', 'few_shot_learning'] AS child_id
MERGE (child:Concept {id: child_id})
MERGE (parent:Concept {id: 'machine_learning'})
MERGE (child)-[:SUBCLASS_OF]->(parent)
```
</details>

**Q12.** Q10~Q11에서 만든 데이터를 정리(삭제)하세요.

<details>
<summary>정답</summary>

```cypher
UNWIND ['quantum_ml', 'neuro_symbolic', 'few_shot_learning'] AS target_id
MATCH (c:Concept {id: target_id})
DETACH DELETE c
```
</details>

### APOC (Q13~Q16)

**Q13.** apoc.meta.stats로 전체 그래프 통계를 조회하세요.

<details>
<summary>정답</summary>

```cypher
CALL apoc.meta.stats()
YIELD nodeCount, relCount, labels, relTypesCount
RETURN nodeCount, relCount, labels, relTypesCount
```
</details>

**Q14.** apoc.meta.graph로 메타 그래프를 시각화하세요 (Neo4j Browser에서 실행).

<details>
<summary>정답</summary>

```cypher
CALL apoc.meta.graph()
```
</details>

**Q15.** 전문검색 인덱스(concept_fulltext)로 '신경망'을 검색하세요.

<details>
<summary>정답</summary>

```cypher
CALL db.index.fulltext.queryNodes('concept_fulltext', '신경망')
YIELD node, score
RETURN node.name_kr, node.definition, round(score, 3) AS 관련도
ORDER BY score DESC
```
</details>

**Q16.** apoc.coll.duplicates를 사용하여 Concept의 domain 값 중 중복이 있는지 확인하세요 (중복이 정상입니다 — 같은 도메인에 여러 Concept).

<details>
<summary>정답</summary>

```cypher
MATCH (c:Concept)
WITH collect(c.domain) AS domains
RETURN apoc.coll.duplicates(domains) AS 중복도메인,
       size(domains) AS 전체수,
       size(apoc.coll.duplicates(domains)) AS 중복수
```
</details>

### 성능 최적화 (Q17~Q20)

**Q17.** 다음 쿼리의 PROFILE을 비교하세요: (a) 라벨 없이 id 검색 vs (b) 라벨 있는 id 검색.

<details>
<summary>정답</summary>

```cypher
// (a) 라벨 없음 — AllNodesScan 예상
PROFILE
MATCH (n {id: 'deep_learning'})
RETURN n

// (b) 라벨 있음 — NodeIndexSeek 예상
PROFILE
MATCH (n:Concept {id: 'deep_learning'})
RETURN n
```
</details>

**Q18.** AI 도메인 Concept 중 name이 'A'로 시작하는 것을 STARTS WITH로 찾으세요.

<details>
<summary>정답</summary>

```cypher
PROFILE
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.name STARTS WITH 'A'
RETURN c.name, c.name_kr
```
</details>

**Q19.** 카르테시안 곱이 발생하는 쿼리를 EXPLAIN으로 확인하세요.

<details>
<summary>정답</summary>

```cypher
// ❌ 카르테시안 곱 발생
EXPLAIN
MATCH (a:Concept), (b:Technology)
RETURN count(*)

// → CartesianProduct 연산자가 보이면 카르테시안 곱 발생 중
```
</details>

**Q20.** SHOW INDEXES로 현재 인덱스 목록을 확인하고, 사용하지 않는 인덱스가 있는지 판단하세요.

<details>
<summary>정답</summary>

```cypher
SHOW INDEXES
YIELD name, type, labelsOrTypes, properties, state
RETURN name, type, labelsOrTypes, properties, state
ORDER BY labelsOrTypes, name
```

사용하지 않는 인덱스 판단 기준:
- 해당 라벨+속성 조합으로 WHERE 조건을 걸지 않는 경우
- 예: `question_session` 인덱스는 Question 노드가 아직 적재되지 않았으므로 현재는 미사용
</details>

---

### 체크리스트

- [ ] 가변 길이 경로(`*1..N`)에 항상 상한을 지정한다
- [ ] shortestPath와 allShortestPaths의 차이를 안다
- [ ] CALL { } 서브쿼리로 도메인별 Top N을 구할 수 있다
- [ ] EXISTS { }, COUNT { }로 패턴 기반 필터링을 할 수 있다
- [ ] CALL IN TRANSACTIONS로 대량 배치 처리를 할 수 있다
- [ ] CASE 표현식으로 조건부 분류를 할 수 있다
- [ ] apoc.meta.stats, apoc.meta.graph를 사용할 수 있다
- [ ] apoc.refactor.mergeNodes로 중복 노드를 병합할 수 있다
- [ ] PROFILE/EXPLAIN으로 쿼리 성능을 분석할 수 있다
- [ ] 느린 쿼리 패턴 4가지를 식별하고 개선할 수 있다
- [ ] GDS 그래프 프로젝션을 생성/삭제할 수 있다
- [ ] 연습문제 20개 중 16개 이상을 직접 풀었다

---

> 📌 **핵심 정리**
>
> 1. **가변 길이 경로**: 반드시 `*1..N` 상한 지정. `[*]`는 금지
> 2. **서브쿼리**: CALL {WITH 외부변수...RETURN 결과}로 모듈화
> 3. **CALL IN TRANSACTIONS**: 대량 배치 처리 시 메모리 보호
> 4. **APOC 4대장**: meta.stats, meta.graph, refactor.mergeNodes, periodic.iterate
> 5. **성능**: PROFILE로 확인, NodeIndexSeek이 목표, 카르테시안 곱 금지
> 6. **Neo4j 5+**: QPP로 중간 노드 조건 걸며 경로 탐색, 벡터 인덱스로 의미적 유사도 검색
> 7. **GDS**: 프로젝션 → 알고리즘 실행 → 프로젝션 삭제. PageRank로 핵심 노드 식별
>
> **다음 챕터**: Ch.15는 Ch.13~14에서 배운 모든 문법을 **복사-붙여넣기-실행** 할 수 있는
> 30개 실전 레시피로 정리합니다. 작업별로 필요한 레시피를 바로 찾아 쓸 수 있습니다.
