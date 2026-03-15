# Ch.15 — Cypher 실전 레시피 30선

> **"레시피를 외울 필요는 없다. 필요할 때 꺼내 쓰면 된다."**

이 챕터는 **복사-붙여넣기-실행** 할 수 있는 실전 레시피 모음입니다.
Ch.13~14의 문법을 실제 작업에 적용하는 30가지 패턴을 다룹니다.
모든 레시피는 우리 프로젝트의 데이터(435노드, 875관계)에서 바로 실행 가능합니다.

> 📌 **레시피 카테고리**
>
> | 카테고리 | 번호 | 용도 |
> |----------|------|------|
> | 탐색 | #01~#05 | 그래프 구조 탐색과 발견 |
> | 분석 | #06~#10 | 통계와 분포 분석 |
> | 검증 | #11~#15 | 데이터 품질 진단 |
> | 수정 | #16~#20 | 데이터 정비와 수정 |
> | 성능 | #21~#25 | 성능 최적화와 배치 처리 |
> | 시각화/내보내기 | #26~#30 | 결과 시각화와 데이터 추출 |

---

## 탐색 레시피 (#01~#05)

### #01. 하위 개념 트리 탐색

특정 개념의 하위 트리를 계층적으로 펼칩니다.

```cypher
// '인공지능'의 하위 개념 트리 (3레벨까지)
MATCH path = (root:Concept {id: 'artificial_intelligence'})<-[:SUBCLASS_OF|HAS_TYPE*1..3]-(child)
RETURN
    root.name_kr AS 루트,
    [n IN nodes(path)[1..] | coalesce(n.name_kr, n.name)] AS 하위체인,
    length(path) AS 깊이
ORDER BY 깊이, 하위체인
```

**변형 — 들여쓰기 형태 출력:**

```cypher
MATCH path = (root:Concept {id: 'artificial_intelligence'})<-[:SUBCLASS_OF|HAS_TYPE*1..3]-(child)
WITH child, length(path) AS depth
RETURN
    reduce(indent = '', x IN range(1, depth) | indent + '  ') + '└─ ' + child.name_kr AS 계층트리,
    depth AS 깊이
ORDER BY 깊이, child.name_kr
```

### #02. 두 개념 간 최단 경로

임의의 두 개념이 어떻게 연결되어 있는지 확인합니다.

```cypher
// 사용법: id 값만 교체
// shortestPath에서는 라벨을 생략하는 경우가 많음 — 여러 라벨을 넘나들며 경로를 찾아야 하므로
MATCH (a:Concept {id: 'deep_learning'}), (b:Threat {id: 'ddos'})
MATCH path = shortestPath((a)-[*]-(b))
RETURN
    [n IN nodes(path) | coalesce(n.name_kr, n.name)] AS 경로,
    [r IN relationships(path) | type(r)] AS 관계들,
    length(path) AS 거리
```

> 💡 shortestPath의 시작/끝 노드는 **MATCH로 먼저 바인딩**한 뒤,
> 별도 MATCH에서 shortestPath를 호출하는 것이 안전합니다.
> 이렇게 하면 시작/끝 노드에 라벨+인덱스를 활용하면서도
> 경로 탐색 중에는 라벨 제한 없이 다양한 노드를 경유할 수 있습니다.

### #03. 도메인 지도 — 도메인 간 연결 분석

도메인 간 공유 관계를 파악합니다.

```cypher
// 도메인 간 교차 연결 수
MATCH (a)-[r]->(b)
WHERE a.domain IS NOT NULL AND b.domain IS NOT NULL
  AND a.domain <> b.domain
RETURN a.domain AS 출발도메인,
       b.domain AS 도착도메인,
       type(r) AS 관계타입,
       count(r) AS 연결수
ORDER BY 연결수 DESC
LIMIT 20
```

### #04. 교차 도메인 허브 — 여러 도메인에서 참조되는 개념

```cypher
// 3개 이상 도메인에서 참조되는 개념
MATCH (c:Concept)<-[r]-(other)
WHERE other.domain IS NOT NULL AND other.domain <> c.domain
WITH c, collect(DISTINCT other.domain) AS 참조도메인
WHERE size(참조도메인) >= 2
RETURN c.name_kr AS 교차개념,
       c.domain AS 소속도메인,
       참조도메인,
       size(참조도메인) AS 교차도메인수
ORDER BY 교차도메인수 DESC
```

### #05. 허브 노드 — 가장 많은 연결을 가진 노드

```cypher
// 관계가 가장 많은 Top 15 노드
MATCH (n)-[r]-()
WITH n, count(r) AS degree
ORDER BY degree DESC
LIMIT 15
RETURN
    coalesce(n.name_kr, n.name, n.id) AS 이름,
    labels(n) AS 라벨,
    n.domain AS 도메인,
    degree AS 연결수
```

---

## 분석 레시피 (#06~#10)

### #06. 전체 그래프 통계 대시보드

한 번의 실행으로 그래프 전체 상태를 파악합니다.

```cypher
// 기본 통계
CALL apoc.meta.stats()
YIELD nodeCount, relCount, labels, relTypesCount
RETURN
    nodeCount AS 총노드수,
    relCount AS 총관계수,
    labels AS 라벨별노드수,
    relTypesCount AS 관계타입별수
```

### #07. 라벨별 속성 완전성 분석

각 라벨의 속성이 얼마나 채워져 있는지 확인합니다.

```cypher
// Concept의 주요 속성 완전성
MATCH (c:Concept)
WITH count(c) AS total,
     count(c.definition) AS has_def,
     count(c.domain) AS has_domain,
     count(c.exam_frequency) AS has_freq,
     count(c.importance) AS has_imp,
     count(c.aliases) AS has_aliases
RETURN
    total AS 전체,
    has_def AS 'definition 있음',
    toString(round(100.0 * has_def / total, 1)) + '%' AS 'definition 비율',
    has_domain AS 'domain 있음',
    toString(round(100.0 * has_domain / total, 1)) + '%' AS 'domain 비율',
    has_freq AS 'exam_frequency 있음',
    toString(round(100.0 * has_freq / total, 1)) + '%' AS 'frequency 비율',
    has_aliases AS 'aliases 있음',
    toString(round(100.0 * has_aliases / total, 1)) + '%' AS 'aliases 비율'
```

### #08. 도메인별 밀도 분석

각 도메인의 노드 대비 관계 비율(밀도)을 측정합니다.

```cypher
MATCH (d:Domain)
OPTIONAL MATCH (n)-[:BELONGS_TO]->(d)
WITH d, collect(n) AS domain_nodes, count(n) AS node_count
UNWIND domain_nodes AS n1
OPTIONAL MATCH (n1)-[r]-(n2)
WHERE n2 IN domain_nodes
WITH d, node_count, count(DISTINCT r) AS rel_count
RETURN
    d.id AS 도메인,
    d.name AS 이름,
    node_count AS 노드수,
    rel_count AS 내부관계수,
    CASE WHEN node_count > 1
        THEN round(1.0 * rel_count / (node_count * (node_count - 1)), 4)
        ELSE 0
    END AS 밀도
ORDER BY 밀도 DESC
```

### #09. 고립 노드 진단

아무 관계도 없는 "외톨이" 노드를 찾습니다.

```cypher
// 관계가 0개인 노드
MATCH (n)
WHERE NOT (n)--()
RETURN
    n.id AS id,
    labels(n) AS 라벨,
    n.name_kr AS 이름,
    n.domain AS 도메인
ORDER BY labels(n), n.id
```

### #10. 관계 연결률 분석

각 노드의 "기대 관계" 대비 "실제 관계" 비율을 측정합니다.

```cypher
// 각 Concept의 관계 유형별 연결 상태
MATCH (c:Concept)
WHERE c.domain IS NOT NULL
OPTIONAL MATCH (c)-[r1:BELONGS_TO]->(:Domain)
OPTIONAL MATCH (c)-[r2:MENTIONED_IN]->(:Document)
OPTIONAL MATCH (c)-[r3:SUBCLASS_OF|HAS_TYPE|INSTANCE_OF]->()
WITH c,
     CASE WHEN r1 IS NOT NULL THEN 1 ELSE 0 END AS has_domain,
     CASE WHEN r2 IS NOT NULL THEN 1 ELSE 0 END AS has_doc,
     CASE WHEN r3 IS NOT NULL THEN 1 ELSE 0 END AS has_hierarchy
RETURN
    c.domain AS 도메인,
    count(c) AS 노드수,
    sum(has_domain) AS 'BELONGS_TO 있음',
    sum(has_doc) AS 'MENTIONED_IN 있음',
    sum(has_hierarchy) AS '계층관계 있음',
    toString(round(100.0 * sum(has_domain) / count(c), 1)) + '%' AS 도메인연결률,
    toString(round(100.0 * sum(has_doc) / count(c), 1)) + '%' AS 문서연결률
ORDER BY 도메인
```

---

## 검증 레시피 (#11~#15)

### #11. 중복 노드 검출

id 또는 name이 동일한 노드를 찾습니다.

```cypher
// 같은 id를 가진 서로 다른 라벨의 노드 (교차 라벨 중복)
MATCH (a), (b)
WHERE a.id = b.id
  AND labels(a) <> labels(b)
  AND elementId(a) < elementId(b)
RETURN
    a.id AS id,
    labels(a) AS 라벨A,
    labels(b) AS 라벨B,
    a.name_kr AS 이름A,
    b.name_kr AS 이름B
```

```cypher
// 같은 name_kr을 가진 같은 라벨의 노드 (의미적 중복)
MATCH (a:Concept), (b:Concept)
WHERE a.name_kr = b.name_kr
  AND a.id <> b.id
  AND elementId(a) < elementId(b)
RETURN a.id AS id_A, b.id AS id_B, a.name_kr AS 이름
```

### #12. BELONGS_TO 누락 검출

domain 속성이 있지만 Domain 노드에 연결되지 않은 노드를 찾습니다.

```cypher
MATCH (n)
WHERE n.domain IS NOT NULL
  AND (n:Concept OR n:Technology OR n:Method OR n:Standard OR n:Threat OR n:Metric)
  AND NOT EXISTS { (n)-[:BELONGS_TO]->(:Domain) }
RETURN
    n.id AS id,
    labels(n) AS 라벨,
    n.name_kr AS 이름,
    n.domain AS 도메인코드
ORDER BY n.domain, labels(n)
```

### #13. 순환 참조 검출

SUBCLASS_OF 체인에 순환(A→B→C→A)이 있으면 무한 루프 위험입니다.

```cypher
// SUBCLASS_OF 순환 검출
MATCH path = (a:Concept)-[:SUBCLASS_OF*2..10]->(a)
RETURN
    [n IN nodes(path) | n.name_kr] AS 순환경로,
    length(path) AS 순환길이
```

### #14. 속성 완전성 검증

필수 속성이 누락된 노드를 찾습니다.

```cypher
// 필수 속성 NULL 검사 — Concept
MATCH (c:Concept)
WHERE c.id IS NULL
   OR c.name_kr IS NULL
   OR c.domain IS NULL
RETURN
    c.id AS id,
    CASE WHEN c.id IS NULL THEN 'id 누락' ELSE '' END AS id체크,
    CASE WHEN c.name_kr IS NULL THEN 'name_kr 누락' ELSE '' END AS name_kr체크,
    CASE WHEN c.domain IS NULL THEN 'domain 누락' ELSE '' END AS domain체크
```

```cypher
// id 네이밍 규칙 위반 검사 (영문 소문자 + 언더스코어 + 숫자만)
MATCH (n)
WHERE n.id IS NOT NULL
  AND NOT n.id =~ '^[a-z0-9_]+$'
RETURN n.id AS 위반_id, labels(n) AS 라벨
ORDER BY n.id
```

### #15. Domain.name 보호 검증

Domain 노드의 name이 실수로 영문으로 덮어씌워졌는지 확인합니다.

```cypher
// Domain.name이 한글이 아닌 경우 경고
MATCH (d:Domain)
WHERE NOT d.name =~ '.*[가-힣].*'
RETURN d.id AS 도메인코드,
       d.name AS 현재이름,
       '⚠️ 한글이 아님' AS 경고
```

---

## 수정 레시피 (#16~#20)

### #16. 수동 노드 병합

APOC 없이 순수 Cypher로 중복 노드를 병합합니다.

> ⚠️ **수동 병합의 한계**: Cypher에서는 관계 타입을 동적으로 지정할 수 없습니다.
> 따라서 관계 타입별로 이전 쿼리를 따로 작성해야 합니다.
> 관계 타입이 다양한 경우, APOC 병합(#17)을 강력히 권장합니다.

```cypher
// STEP 1: 병합 대상 확인 — 어떤 관계가 있는지 먼저 파악
MATCH (keep:Concept {id: 'agile'})
MATCH (remove:Concept {id: 'agile_methodology'})
OPTIONAL MATCH (remove)-[r]-()
RETURN keep.name_kr, remove.name_kr,
       collect(DISTINCT type(r)) AS 관계타입목록

// STEP 2: 관계 타입별로 이전 (예: SUBCLASS_OF)
MATCH (remove:Concept {id: 'agile_methodology'})-[r:SUBCLASS_OF]->(target)
MERGE (keep:Concept {id: 'agile'})
MERGE (keep)-[:SUBCLASS_OF]->(target)
DELETE r;

// STEP 2-2: 들어오는 관계도 이전
MATCH (source)-[r:SUBCLASS_OF]->(remove:Concept {id: 'agile_methodology'})
MERGE (keep:Concept {id: 'agile'})
MERGE (source)-[:SUBCLASS_OF]->(keep)
DELETE r;

// STEP 2-3: BELONGS_TO도 이전
MATCH (remove:Concept {id: 'agile_methodology'})-[r:BELONGS_TO]->(d:Domain)
MERGE (keep:Concept {id: 'agile'})
MERGE (keep)-[:BELONGS_TO]->(d)
DELETE r;

// STEP 3: 속성 병합 (keep에 없는 속성만 추가)
MATCH (keep:Concept {id: 'agile'})
MATCH (remove:Concept {id: 'agile_methodology'})
SET keep.definition = coalesce(keep.definition, remove.definition)

// STEP 4: remove 삭제 (모든 관계를 이전한 후에만!)
MATCH (remove:Concept {id: 'agile_methodology'})
DETACH DELETE remove
```

### #17. APOC 노드 병합 (간편 버전)

```cypher
// 한 번의 호출로 완료
MATCH (keep:Concept {id: 'agile'})
MATCH (remove:Concept {id: 'agile_methodology'})
CALL apoc.refactor.mergeNodes([keep, remove], {
    properties: 'combine',
    mergeRels: true
})
YIELD node
RETURN node.id, node.name_kr, node.definition
```

### #18. 관계 방향 수정

잘못된 방향의 관계를 수정합니다 (삭제 → 재생성).

```cypher
// HAS_TYPE 방향이 반대인 경우: (child)-[:HAS_TYPE]->(parent)여야 하는데 반대인 경우
MATCH (parent:Concept)-[old:HAS_TYPE]->(child:Concept)
WHERE parent.id = 'machine_learning' AND child.id = 'supervised_learning'
CREATE (child)-[new:HAS_TYPE]->(parent)
SET new = properties(old)
DELETE old
RETURN child.name_kr + ' -[:HAS_TYPE]-> ' + parent.name_kr AS 수정결과
```

### #19. 일괄 속성 업데이트

UNWIND로 여러 노드의 속성을 한 번에 수정합니다.

```cypher
// 도메인 코드 기반 importance 일괄 설정
UNWIND [
    {domain: 'AI', importance: 'high'},
    {domain: 'SE', importance: 'high'},
    {domain: 'SW', importance: 'high'},
    {domain: 'ST', importance: 'low'}
] AS item
MATCH (c:Concept {domain: item.domain})
WHERE c.importance IS NULL
SET c.importance = item.importance
RETURN item.domain AS 도메인, count(c) AS 업데이트수
```

### #20. 안전한 대량 삭제

삭제 전 영향 범위를 확인하고, 확인 후 삭제합니다.

```cypher
// STEP 1: 삭제 영향 범위 확인 (삭제하지 않음!)
MATCH (n:Concept {domain: 'TEST'})
OPTIONAL MATCH (n)-[r]-()
RETURN
    count(DISTINCT n) AS 삭제될_노드수,
    count(r) AS 삭제될_관계수,
    collect(DISTINCT n.id) AS 대상_id목록

// STEP 2: 확인 후 삭제
MATCH (n:Concept {domain: 'TEST'})
DETACH DELETE n
RETURN count(n) AS 삭제완료
```

---

## 성능 레시피 (#21~#25)

### #21. PROFILE로 쿼리 성능 진단

```cypher
// 쿼리 성능 비교
PROFILE
MATCH (c:Concept)
WHERE c.domain = 'AI' AND c.definition CONTAINS '학습'
RETURN c.name_kr, c.definition

// 결과에서 확인할 것:
// 1. NodeIndexSeek 또는 NodeByLabelScan 중 어떤 것이 사용되는지
// 2. DbHits 수 (낮을수록 좋음)
// 3. Rows 수 (중간 단계에서 너무 많지 않은지)
```

### #22. 인덱스 활용 여부 점검

```cypher
// 모든 인덱스와 사용 상태 확인
SHOW INDEXES
YIELD name, type, labelsOrTypes, properties, state
WHERE state = 'ONLINE'
RETURN name, type, labelsOrTypes, properties
ORDER BY labelsOrTypes, name
```

### #23. 배치 적재 — LOAD CSV

CSV 파일에서 대량 데이터를 적재합니다.

```cypher
// CSV 파일 구조: id,name,name_kr,domain,definition
// import/ 디렉토리에 concepts.csv 배치

LOAD CSV WITH HEADERS FROM 'file:///concepts.csv' AS row
MERGE (c:Concept {id: row.id})
SET c.name = row.name,
    c.name_kr = row.name_kr,
    c.domain = row.domain,
    c.definition = row.definition
```

**대량 CSV — 트랜잭션 분할:**

```cypher
LOAD CSV WITH HEADERS FROM 'file:///concepts.csv' AS row
CALL {
    WITH row
    MERGE (c:Concept {id: row.id})
    SET c.name = row.name,
        c.name_kr = row.name_kr,
        c.domain = row.domain
} IN TRANSACTIONS OF 1000 ROWS
```

### #24. 전문검색 활용

```cypher
// 전문검색 인덱스로 키워드 검색
CALL db.index.fulltext.queryNodes('concept_fulltext', '보안 암호화')
YIELD node, score
WHERE score > 0.5
RETURN
    node.name_kr AS 개념,
    node.domain AS 도메인,
    left(coalesce(node.definition, ''), 50) AS 정의미리보기,
    round(score, 3) AS 관련도
ORDER BY score DESC
LIMIT 10
```

**전문검색 고급 쿼리:**

```cypher
// AND 검색 (두 키워드 모두 포함)
CALL db.index.fulltext.queryNodes('concept_fulltext', 'deep AND learning')
YIELD node, score
RETURN node.name_kr, score

// 퍼지 검색 (오타 허용)
CALL db.index.fulltext.queryNodes('concept_fulltext', 'nueral~')
YIELD node, score
RETURN node.name_kr, score    // 'neural'도 매칭됨
```

### #25. 느린 쿼리 패턴 진단과 수정

```cypher
// ❌ 패턴 1: 무제한 가변 경로
// MATCH (a)-[*]->(b) RETURN count(*)
// ✅ 수정:
MATCH (a)-[*1..5]->(b) RETURN count(*)

// ❌ 패턴 2: 라벨 없는 검색
// MATCH (n {id: 'deep_learning'}) RETURN n
// ✅ 수정:
MATCH (n:Concept {id: 'deep_learning'}) RETURN n

// ❌ 패턴 3: 정규식으로 시작 부분 매칭
// MATCH (c:Concept) WHERE c.name =~ 'Deep.*' RETURN c
// ✅ 수정 (인덱스 활용 가능):
MATCH (c:Concept) WHERE c.name STARTS WITH 'Deep' RETURN c

// ❌ 패턴 4: 불필요한 카르테시안 곱
// MATCH (a:Concept), (b:Technology) WHERE a.domain = b.domain RETURN a, b
// ✅ 수정 (관계 기반 탐색):
MATCH (a:Concept)-[:USES|DEPENDS_ON]->(b:Technology)
WHERE a.domain = b.domain
RETURN a.name_kr, b.name_kr
```

---

## 시각화/내보내기 레시피 (#26~#30)

### #26. 메타 그래프 — 스키마 시각화

```cypher
// Neo4j Browser에서 실행 → 그래프 뷰로 전환
CALL apoc.meta.graph()
```

이 쿼리는 라벨 간의 관계 패턴을 시각적으로 보여줍니다.
"어떤 라벨이 어떤 관계로 연결되는지"를 한눈에 파악할 수 있습니다.

### #27. 특정 도메인의 서브그래프 시각화

```cypher
// AI 도메인의 전체 구조 시각화
MATCH (n)-[r]-(m)
WHERE (n.domain = 'AI' OR m.domain = 'AI')
  AND NOT n:Domain AND NOT m:Domain AND NOT n:Document AND NOT m:Document
RETURN n, r, m
LIMIT 100
```

### #28. JSON 내보내기

```cypher
// AI 도메인 Concept을 JSON으로 내보내기
CALL apoc.export.json.query(
    "MATCH (c:Concept) WHERE c.domain = 'AI'
     RETURN c.id AS id, c.name AS name, c.name_kr AS name_kr,
            c.domain AS domain, c.definition AS definition",
    'export/ai_concepts.json',
    {}
)
YIELD file, nodes
RETURN file, nodes
```

### #29. CSV 내보내기

```cypher
// 전체 통계를 CSV로 내보내기
CALL apoc.export.csv.query(
    "MATCH (c:Concept)
     RETURN c.id AS id, c.name_kr AS name_kr, c.domain AS domain,
            c.exam_frequency AS frequency, c.importance AS importance
     ORDER BY c.domain, c.name_kr",
    'export/concepts_all.csv',
    {}
)
YIELD file, rows
RETURN file, rows
```

### #30. 경로 시각화 — 특정 개념의 이웃 그래프

```cypher
// 특정 개념과 2-홉 이내 이웃을 시각화
MATCH path = (center:Concept {id: 'machine_learning'})-[*1..2]-(neighbor)
RETURN path
LIMIT 50
```

**특정 관계 타입만 포함한 서브그래프:**

```cypher
// 계층 관계(SUBCLASS_OF, HAS_TYPE, INSTANCE_OF)만 시각화
MATCH path = (n)-[r:SUBCLASS_OF|HAS_TYPE|INSTANCE_OF]->(m)
WHERE n.domain = 'AI' OR m.domain = 'AI'
RETURN path
```

---

## 레시피 활용 가이드

### 작업 목적별 레시피 매핑

| 작업 | 레시피 |
|------|--------|
| "이 개념의 하위 구조를 보고 싶다" | #01 하위 개념 트리 |
| "두 개념이 어떻게 연결되는지 알고 싶다" | #02 최단 경로 |
| "가장 중요한 노드가 뭔지 알고 싶다" | #05 허브 노드 |
| "그래프 전체 상태를 파악하고 싶다" | #06 통계 대시보드 |
| "속성이 제대로 채워져 있는지 확인하고 싶다" | #07 속성 완전성 |
| "중복 노드가 있는지 확인하고 싶다" | #11 중복 검출 |
| "BELONGS_TO가 빠진 노드가 있는지" | #12 BELONGS_TO 누락 |
| "중복 노드를 합치고 싶다" | #16 수동 병합 / #17 APOC 병합 |
| "여러 노드를 한 번에 수정하고 싶다" | #19 일괄 업데이트 |
| "쿼리가 느려서 원인을 찾고 싶다" | #21 PROFILE 진단 |
| "CSV로 대량 적재하고 싶다" | #23 LOAD CSV |
| "그래프를 시각적으로 보고 싶다" | #26 메타그래프 / #27 서브그래프 |
| "데이터를 JSON/CSV로 추출하고 싶다" | #28 JSON / #29 CSV |

---

## [실습] 레시피 실전 적용

### 과제: 새 도메인 데이터 검증 워크플로우

다음 시나리오를 수행하세요:
5개 도메인(AI, SE, SW, DB, NW)의 적재 데이터에 대해 **검증 → 진단 → 수정** 사이클을 돌립니다.

**① 검증 (레시피 #06, #07, #11, #12, #14 순서대로 실행)**
1. #06으로 전체 통계를 확인하고, 예상 수치와 비교
2. #07로 Concept의 속성 완전성을 확인 — definition이 50% 미만인 도메인은?
3. #11로 교차 라벨 중복이 있는지 확인
4. #12로 BELONGS_TO 누락이 있는지 확인
5. #14로 id 네이밍 규칙 위반이 있는지 확인

**② 수정 (발견된 이슈에 따라 #16~#20 적용)**
- 중복 발견 시 → #17 (APOC 병합) 실행
- BELONGS_TO 누락 시 → 아래 쿼리로 일괄 수정:
```cypher
MATCH (n)
WHERE n.domain IS NOT NULL
  AND (n:Concept OR n:Technology OR n:Method)
  AND NOT EXISTS { (n)-[:BELONGS_TO]->(:Domain) }
MATCH (d:Domain {id: n.domain})
MERGE (n)-[:BELONGS_TO]->(d)
```

**③ 재검증 (①의 쿼리를 다시 실행)**
- 수정 후 이슈가 0건인지 확인
- Before/After 수치를 기록

### 체크리스트

- [ ] #06 통계 대시보드를 실행하고 결과를 이해했다
- [ ] #07 속성 완전성 분석에서 가장 완전성이 낮은 속성을 식별했다
- [ ] #11 교차 라벨 중복 쿼리를 실행했다
- [ ] #12 BELONGS_TO 누락 쿼리를 실행했다
- [ ] 발견된 이슈를 수정하고, 재검증으로 0건을 확인했다
- [ ] #01 하위 트리 또는 #02 최단 경로를 자신이 선택한 개념으로 실행해봤다
- [ ] #26 메타그래프를 Neo4j Browser에서 시각화했다

---

### PDCA 단계별 레시피 매핑

| STEP | 주요 레시피 |
|------|------------|
| STEP 3: 스키마 설계 | #26 메타그래프 |
| STEP 4: 데이터 적재 | #19 일괄 업데이트, #23 LOAD CSV |
| STEP 5: 스키마 검증 | #06~#15 (분석+검증 전체) |
| STEP 5: 수정 | #16~#20 (수정 전체) |
| STEP 7: 전체 적재 | #23 LOAD CSV, #25 성능 진단 |

---

> 📌 **핵심 정리**
>
> 1. **탐색 5선**: 하위 트리, 최단 경로, 도메인 지도, 교차 허브, 허브 노드
> 2. **분석 5선**: 전체 통계, 속성 완전성, 밀도, 고립 노드, 연결률
> 3. **검증 5선**: 중복, BELONGS_TO 누락, 순환 참조, 속성 NULL, Domain.name 보호
> 4. **수정 5선**: 수동 병합, APOC 병합, 방향 수정, 일괄 업데이트, 안전 삭제
> 5. **성능 5선**: PROFILE, 인덱스 점검, LOAD CSV, 전문검색, 느린 패턴 수정
> 6. **시각화 5선**: 메타그래프, 서브그래프, JSON/CSV 내보내기, 경로 시각화
>
> 이 30개 레시피는 **부록 B(검증 쿼리 전체 목록)**와 함께
> 일상적인 온톨로지 운영의 90%를 커버합니다.
