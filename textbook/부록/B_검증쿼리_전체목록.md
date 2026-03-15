# 부록 B — 검증 쿼리 전체 목록

> **복사-붙여넣기용.** Neo4j Browser에서 바로 실행할 수 있습니다.
> 각 쿼리의 상세 해설은 Ch.09(진단 프레임워크)를 참조하세요.

---

## L1: 구조 검증

### L1-Q1. 제약조건 전수 확인

```cypher
SHOW CONSTRAINTS
YIELD name, type, labelsOrTypes, properties, ownedIndex
RETURN name, type, labelsOrTypes, properties, ownedIndex
ORDER BY name;
```

기대: 11개 UNIQUE 제약조건 (Concept, Technology, Method, Standard, Law, Threat, Metric, Domain, Question, Document, ExamSession)

### L1-Q2. 인덱스 전수 확인

```cypher
SHOW INDEXES
YIELD name, type, labelsOrTypes, properties, state
RETURN name, type, labelsOrTypes, properties, state
ORDER BY labelsOrTypes, name;
```

기대: 모든 state = 'ONLINE'

### L1-Q3. 라벨별 노드 수

```cypher
CALL apoc.meta.stats() YIELD labels
RETURN labels;
```

### L1-Q4. 관계 타입별 수

```cypher
CALL apoc.meta.stats() YIELD relTypesCount
RETURN relTypesCount;
```

### L1-Q5. 메타 그래프 시각화

```cypher
CALL apoc.meta.graph();
```

---

## L2: 데이터 검증

### L2-Q1. 필수 속성 NULL 검사 (Concept)

```cypher
MATCH (c:Concept)
WHERE c.id IS NULL OR c.name IS NULL OR c.domain IS NULL
RETURN c.id, c.name, c.domain, 'Concept 필수속성 누락' AS 이슈
LIMIT 20;
```

### L2-Q2. 필수 속성 NULL 검사 (Technology, Method, Threat)

```cypher
MATCH (t:Technology) WHERE t.id IS NULL OR t.name IS NULL RETURN t.id, 'Technology' AS 라벨
UNION ALL
MATCH (m:Method) WHERE m.id IS NULL OR m.name IS NULL RETURN m.id, 'Method' AS 라벨
UNION ALL
MATCH (th:Threat) WHERE th.id IS NULL OR th.name IS NULL RETURN th.id, 'Threat' AS 라벨;
```

### L2-Q3. 속성 완전성 통계

```cypher
MATCH (c:Concept)
WITH count(*) AS total,
     sum(CASE WHEN c.definition IS NULL THEN 1 ELSE 0 END) AS no_def,
     sum(CASE WHEN c.name_kr IS NULL THEN 1 ELSE 0 END) AS no_kr,
     sum(CASE WHEN c.exam_frequency IS NULL THEN 1 ELSE 0 END) AS no_freq
RETURN total,
       no_def AS 'definition NULL',
       round(100.0 * no_def / total, 1) AS 'def NULL %',
       no_kr AS 'name_kr NULL',
       no_freq AS 'exam_freq NULL';
```

### L2-Q4. id 네이밍 규칙 위반

```cypher
MATCH (n)
WHERE n.id IS NOT NULL AND NOT n.id =~ '^[a-z0-9_]+$'
RETURN n.id AS 위반_id, labels(n) AS 라벨
ORDER BY n.id;
```

### L2-Q5. 도메인 코드 유효성

```cypher
WITH ['PM','MG','SW','SV','ST','AI','DS','AL','SE','DB','NW','CA','OS'] AS valid_domains
MATCH (n)
WHERE n.domain IS NOT NULL AND NOT n.domain IN valid_domains
RETURN n.id, labels(n) AS 라벨, n.domain AS 잘못된도메인;
```

### L2-Q6. 중복 이름 검출 (같은 라벨)

```cypher
MATCH (a:Concept), (b:Concept)
WHERE a.name_kr = b.name_kr AND a.id <> b.id
  AND elementId(a) < elementId(b)
RETURN a.id AS id_A, b.id AS id_B, a.name_kr AS 이름;
```

---

## L3: 관계 검증

### L3-Q1. 고립 노드

```cypher
MATCH (n)
WHERE NOT (n)--()
RETURN n.id, labels(n) AS 라벨, n.name_kr AS 이름
ORDER BY labels(n);
```

### L3-Q2. BELONGS_TO 누락

```cypher
MATCH (n)
WHERE n.domain IS NOT NULL
  AND (n:Concept OR n:Technology OR n:Method OR n:Standard OR n:Threat OR n:Metric)
  AND NOT EXISTS { (n)-[:BELONGS_TO]->(:Domain) }
RETURN n.id, labels(n) AS 라벨, n.name_kr, n.domain AS 도메인코드
ORDER BY n.domain;
```

### L3-Q3. MENTIONED_IN 누락

```cypher
MATCH (doc:Document)
WHERE NOT EXISTS { ()-[:MENTIONED_IN]->(doc) }
RETURN doc.id AS 미연결문서, doc.filename
ORDER BY doc.id;
```

### L3-Q4. 순환 참조 검출

```cypher
MATCH path = (a)-[:SUBCLASS_OF*2..10]->(a)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.id)] AS 순환경로,
       length(path) AS 길이;
```

### L3-Q5. 중복 관계 검출

```cypher
MATCH (a)-[r]->(b)
WITH a, b, type(r) AS relType, count(r) AS cnt
WHERE cnt > 1
RETURN a.id AS 출발, relType AS 관계, b.id AS 도착, cnt AS 중복수;
```

### L3-Q6. 관계 방향 일관성 (SUBCLASS_OF가 자기 자신을 가리키는 경우)

```cypher
MATCH (a)-[:SUBCLASS_OF]->(a)
RETURN a.id, a.name_kr AS '자기참조 노드';
```

---

## L4: 의미 검증

### L4-Q1. 교차 라벨 중복

```cypher
MATCH (a), (b)
WHERE a.id = b.id AND labels(a) <> labels(b)
  AND elementId(a) < elementId(b)
RETURN a.id, labels(a) AS 라벨A, labels(b) AS 라벨B;
```

### L4-Q2. Domain.name 보호 검증

```cypher
MATCH (d:Domain)
WHERE NOT d.name =~ '.*[가-힣].*'
RETURN d.id, d.name AS '한글이_아닌_이름';
```

### L4-Q3. 시드-문서 연결률

```cypher
MATCH (c:Concept)
WHERE c.importance = 'high'
OPTIONAL MATCH (c)-[:MENTIONED_IN]->(doc:Document)
WITH c, count(doc) AS doc_links
RETURN c.id, c.name_kr,
       doc_links,
       CASE WHEN doc_links > 0 THEN '연결됨' ELSE '미연결' END AS 상태
ORDER BY doc_links ASC, c.id;
```

---

## L5: 성능 검증

### L5-Q1. 인덱스 활용 확인 (PROFILE)

```cypher
PROFILE
MATCH (c:Concept {id: 'deep_learning'})
RETURN c;
```

NodeIndexSeek이 보이면 정상. AllNodesScan이면 인덱스 확인 필요.

### L5-Q2. 라벨 없는 검색 비교 (PROFILE)

```cypher
PROFILE
MATCH (n {id: 'deep_learning'})
RETURN n;
```

AllNodesScan + Filter가 보이면 — 라벨 없는 검색의 비효율.

### L5-Q3. 전문검색 인덱스 테스트

```cypher
CALL db.index.fulltext.queryNodes('concept_fulltext', '신경망')
YIELD node, score
RETURN node.name_kr, round(score, 3) AS 점수
ORDER BY score DESC
LIMIT 5;
```

---

## 일괄 실행 가이드

**실행 순서:**
1. L1 전체 (5개) → 구조가 온전한지 확인
2. L2 전체 (6개) → 데이터가 완전한지 확인
3. L3 전체 (6개) → 관계가 올바른지 확인
4. L4 전체 (3개) → 의미가 맞는지 확인
5. L5 전체 (3개) → 성능이 괜찮은지 확인

**판정 기준:**
- L1~L3: 이상 0건이 목표
- L4: 이상 0건이 목표 (시드 연결률은 단계적 개선)
- L5: NodeIndexSeek 확인

> 💡 이 쿼리들을 하나의 Cypher 파일(`validation/full_check.cypher`)로
> 저장해두면, STEP 4~5 반복 시 매번 즉시 실행할 수 있습니다.
