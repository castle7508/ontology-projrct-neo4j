# 부록 F — Part별 종합 퀴즈

> 각 Part를 완료한 후 자가 진단용으로 사용하세요.
> 70% 이상 정답이면 다음 Part로 진행해도 좋습니다.
> 50% 미만이면 해당 Part를 다시 읽어보세요.

---

## Part 1 퀴즈: 기초 (Ch.01~02) — 10문항

**Q1.** Neo4j에서 노드의 유형을 분류하는 태그를 무엇이라 하는가?
- (a) Property (b) Label (c) Type (d) Index

<details><summary>정답</summary>(b) Label — 노드에 `:Concept`, `:Technology` 같은 라벨을 붙여 유형을 분류합니다.</details>

**Q2.** 다음 Cypher 패턴이 의미하는 것은?
```cypher
(a:Concept)-[:SUBCLASS_OF]->(b:Concept)
```
- (a) a와 b는 같은 개념 (b) a는 b의 상위 개념 (c) a는 b의 하위 개념 (d) a와 b는 비교 대상

<details><summary>정답</summary>(c) a는 b의 하위 개념 — 화살표 방향이 a→b이고, SUBCLASS_OF는 "~의 하위 분류"를 의미합니다.</details>

**Q3.** CREATE와 MERGE의 가장 큰 차이는 무엇인가?
- (a) CREATE가 더 빠르다 (b) MERGE는 기존 노드가 있으면 재사용한다 (c) CREATE는 속성을 설정할 수 없다 (d) MERGE는 관계를 만들 수 없다

<details><summary>정답</summary>(b) MERGE는 매칭 키로 기존 노드를 찾고, 있으면 재사용, 없으면 생성합니다. 이것을 멱등성(idempotency)이라 합니다.</details>

**Q4.** 다음 중 Neo4j가 RDB보다 압도적으로 유리한 쿼리 유형은?
- (a) 단순 행 수 집계 (b) 가변 깊이 계층 탐색 (c) 대량 INSERT (d) 컬럼 합산

<details><summary>정답</summary>(b) 가변 깊이 계층 탐색 — RDB는 JOIN 단계를 미리 정해야 하지만, Cypher는 `[*1..N]`으로 동적 탐색합니다.</details>

**Q5.** `MERGE (c:Concept {id: 'x', name: 'X', domain: 'AI'})`의 문제점은?
- (a) 문법 오류 (b) id, name, domain 모두가 매칭 키가 되어 속성 하나라도 다르면 새 노드 생성 (c) MERGE는 속성을 지정할 수 없음 (d) 문제 없음

<details><summary>정답</summary>(b) MERGE의 `{}`에는 매칭 키(id)만 넣어야 합니다. 나머지는 SET으로 분리해야 안전합니다.</details>

**Q6.** Property Graph와 RDF의 가장 큰 차이는?
- (a) Property Graph는 관계에 속성을 저장할 수 없다 (b) RDF는 추론 엔진이 내장되어 있다 (c) Property Graph는 방향이 없다 (d) RDF는 노드에 라벨을 붙일 수 없다

<details><summary>정답</summary>(b) RDF/OWL은 OWL 추론 엔진(Reasoner)을 통해 명시되지 않은 관계를 자동 추론할 수 있습니다. Property Graph는 쿼리 유연성과 속성 풍부성이 장점입니다.</details>

**Q7.** `DETACH DELETE n`은 무엇을 하는가?
- (a) n 노드만 삭제 (b) n 노드와 연결된 모든 관계를 함께 삭제 (c) n의 속성만 삭제 (d) n의 라벨만 삭제

<details><summary>정답</summary>(b) DETACH DELETE는 노드와 연결된 모든 관계를 함께 삭제합니다. 복구 불가하므로 삭제 전 반드시 영향 범위를 확인하세요.</details>

**Q8.** Index-Free Adjacency란?
- (a) 인덱스 없이 전체 스캔하는 방식 (b) 노드가 이웃 노드를 메모리 포인터로 직접 참조하는 방식 (c) 인덱스를 자동 생성하는 기능 (d) 인접 노드를 캐시하는 기능

<details><summary>정답</summary>(b) Neo4j의 성능 핵심. 관계 탐색이 O(log N)이 아니라 O(1)로, 데이터가 아무리 많아도 이웃 탐색 속도가 일정합니다.</details>

**Q9.** `WHERE c.definition = null`이 작동하지 않는 이유는?
- (a) definition이 예약어 (b) NULL과의 비교는 항상 NULL을 반환하며 false로 평가 (c) 문법 오류 (d) 작동함

<details><summary>정답</summary>(b) Cypher에서 NULL은 "알 수 없는 값"입니다. `IS NULL` / `IS NOT NULL` 전용 연산자를 사용해야 합니다.</details>

**Q10.** UNIQUE 제약조건이 생성하는 부수 효과는?
- (a) 전문검색 인덱스 자동 생성 (b) Range 인덱스 자동 생성 (c) 노드 자동 삭제 (d) 관계 자동 생성

<details><summary>정답</summary>(b) UNIQUE 제약조건은 해당 속성에 대한 Range 인덱스를 자동으로 생성합니다. 별도 인덱스를 추가로 만들 필요가 없습니다.</details>

---

## Part 2 퀴즈: 실전 워크플로우 (Ch.03~12) — 10문항

**Q1.** Question-Driven Modeling(QDM)의 첫 번째 단계는?
- (a) 노드 타입 결정 (b) 핵심 질문 도출 (c) Cypher 작성 (d) 데이터 적재

<details><summary>정답</summary>(b) 핵심 질문 도출 — "이 데이터로 답변하고 싶은 질문이 무엇인가?"를 먼저 정의하면 스키마가 자연스럽게 도출됩니다.</details>

**Q2.** "엔티티를 노드로 분리할지, 속성으로 처리할지" 결정하는 핵심 기준은?
- (a) 이름의 길이 (b) 자체적인 관계를 가지는가, 다른 곳에서 참조되는가 (c) 데이터 크기 (d) 생성 일시

<details><summary>정답</summary>(b) 자체 관계가 있거나 다른 엔티티에서 참조되면 노드로 분리합니다. 단순 값/설명이면 속성으로 처리합니다.</details>

**Q3.** 5계층 검증 프레임워크에서 가장 먼저 수행해야 하는 계층은?
- (a) L5 성능 검증 (b) L4 의미 검증 (c) L1 구조 검증 (d) L3 관계 검증

<details><summary>정답</summary>(c) L1 구조 검증 — 아래에서 위로 순서대로 검증합니다. 제약조건(L1)이 없으면 중복 검사(L4)가 무의미합니다.</details>

**Q4.** 교차 라벨 중복이란?
- (a) 같은 라벨에 같은 이름의 노드 2개 (b) 같은 id가 서로 다른 라벨에 동시 존재 (c) 관계가 양방향으로 중복 (d) 인덱스가 중복 생성

<details><summary>정답</summary>(b) 예: `function_point`가 Concept과 Method에 동시 존재. UNIQUE 제약조건은 라벨별로 독립이므로 이것을 방지하지 못합니다.</details>

**Q5.** "첫 스키마는 틀린다"는 원칙이 의미하는 것은?
- (a) 스키마 설계를 하지 말라 (b) 빠르게 시작하고 반복 개선하라 (c) 항상 다른 사람의 스키마를 사용하라 (d) 스키마 없이 적재하라

<details><summary>정답</summary>(b) 완벽한 설계를 추구하지 말고, 소량 적재 → 검증 → 수정 → 재적재의 반복 사이클을 돌려야 합니다.</details>

**Q6.** MERGE 적재 시 Domain.name을 보호하는 방법은?
- (a) Domain을 CREATE로 생성 (b) ON MATCH SET에서 name을 SET하지 않기 (c) Domain 노드를 삭제 후 재생성 (d) UNIQUE 제약조건 추가

<details><summary>정답</summary>(b) Domain.name은 한글로 유지해야 합니다. 문서 적재 시 MERGE의 ON MATCH SET에서 name을 SET하면 영문으로 덮어써지는 이슈가 발생합니다 (Ch.11 이슈 #1).</details>

**Q7.** 고립 노드를 찾는 Cypher는?
- (a) `MATCH (n) WHERE n.id IS NULL RETURN n` (b) `MATCH (n) WHERE NOT (n)--() RETURN n` (c) `MATCH (n)-[r]-() RETURN n` (d) `MATCH (n:Domain) RETURN n`

<details><summary>정답</summary>(b) `NOT (n)--()` 패턴은 "어떤 관계도 없는 노드"를 찾습니다.</details>

**Q8.** apoc.refactor.mergeNodes의 properties 옵션 'combine'은 무엇을 하는가?
- (a) 첫 번째 노드의 값만 유지 (b) 마지막 노드의 값으로 덮어쓰기 (c) 두 값을 배열로 합침 (d) 속성을 삭제

<details><summary>정답</summary>(c) 'combine'은 두 노드의 속성 값을 배열로 합칩니다. 'discard'는 첫 번째 값 유지, 'overwrite'는 마지막 값으로 덮어쓰기입니다.</details>

**Q9.** 반복순환의 종료 조건은?
- (a) 이슈 0건 (b) 100회 반복 완료 (c) 신규 이슈 타입이 더 이상 발생하지 않음 (d) 전체 데이터 적재 완료

<details><summary>정답</summary>(c) "이슈 0건"이 아니라 "신규 이슈 타입이 없음"이 종료 조건입니다. 기존 패턴의 반복은 자동화로 처리하면 됩니다.</details>

**Q10.** Concept vs Technology vs Method 분류가 모호할 때의 기본값 규칙은?
- (a) Technology로 분류 (b) Method로 분류 (c) Concept으로 분류 (d) 분류하지 않음

<details><summary>정답</summary>(c) Concept은 가장 범용적인 라벨입니다. 데이터가 쌓이면서 더 적합한 라벨이 판단되면 그때 변경합니다. (Ch.06 경계 사례 판단표 참조)</details>

---

## Part 3 퀴즈: Cypher Deep Dive (Ch.13~15) — 10문항

**Q1.** `SET c = {id: 'x', name: 'X'}`와 `SET c += {id: 'x', name: 'X'}`의 차이는?
- (a) 동일한 동작 (b) `=`는 기존 속성을 모두 삭제 후 교체, `+=`는 기존 유지+추가 (c) `+=`는 오류 (d) `=`는 새 노드 생성

<details><summary>정답</summary>(b) `=`는 기존 속성을 **전부 삭제**하고 맵으로 교체합니다. 매우 위험합니다. `+=`는 기존 속성을 유지하면서 추가/갱신만 합니다.</details>

**Q2.** 가변 길이 경로 `[*]`를 사용하면 안 되는 이유는?
- (a) 문법 오류 (b) 그래프 전체를 탐색하여 메모리 초과/시간 초과 위험 (c) 방향을 지정할 수 없음 (d) 인덱스를 사용할 수 없음

<details><summary>정답</summary>(b) `[*]`는 무제한 홉이므로 그래프 전체를 탐색할 수 있습니다. 반드시 `[*1..N]`으로 상한을 지정하세요.</details>

**Q3.** PROFILE과 EXPLAIN의 차이는?
- (a) 동일 (b) PROFILE은 실행+실측 데이터, EXPLAIN은 계획만 (c) EXPLAIN이 더 상세 (d) PROFILE은 읽기 전용

<details><summary>정답</summary>(b) PROFILE은 쿼리를 실제 실행하고 Rows, DbHits 등 실측 데이터를 포함합니다. EXPLAIN은 실행하지 않고 계획만 보여줍니다.</details>

**Q4.** 다음 중 인덱스를 **완전히 활용**하는 문자열 연산자는?
- (a) CONTAINS (b) ENDS WITH (c) STARTS WITH (d) =~ (정규식)

<details><summary>정답</summary>(c) STARTS WITH — B-tree 인덱스의 접두사 매칭을 활용합니다. CONTAINS는 부분 활용, ENDS WITH과 정규식은 미활용(전체 스캔).</details>

**Q5.** `CALL { } IN TRANSACTIONS OF 1000 ROWS`의 목적은?
- (a) 쿼리 속도 향상 (b) 대량 데이터 처리 시 트랜잭션 분할로 메모리 보호 (c) 병렬 실행 (d) 인덱스 생성

<details><summary>정답</summary>(b) 전체를 하나의 트랜잭션으로 처리하면 메모리가 부족할 수 있습니다. N개씩 분할하면 배치 단위만 메모리에 적재됩니다.</details>

**Q6.** QPP(Quantified Path Patterns)가 기존 `[*1..N]`보다 우수한 점은?
- (a) 더 빠르다 (b) 중간 노드에 조건을 걸면서 경로 탐색이 가능 (c) 관계 타입을 지정할 수 있다 (d) 방향을 무시할 수 있다

<details><summary>정답</summary>(b) QPP는 `(()-[:REL]->(n WHERE n.prop = 'X')){1,5}` 형태로 중간 노드 조건을 패턴 안에서 평가합니다. 기존 방식은 탐색 후 사후 필터만 가능합니다.</details>

**Q7.** `collect()` 함수의 결과에 중복을 제거하려면?
- (a) `collect(UNIQUE x)` (b) `collect(DISTINCT x)` (c) `DISTINCT collect(x)` (d) 불가능

<details><summary>정답</summary>(b) `collect(DISTINCT x)` — DISTINCT 키워드를 collect 안에 넣으면 고유값만 수집합니다.</details>

**Q8.** PageRank 알고리즘이 온톨로지에서 높은 점수를 주는 노드는?
- (a) 속성이 가장 많은 노드 (b) 많은 노드가 참조하는(들어오는 관계가 많은) 상위 개념 (c) 가장 최근에 생성된 노드 (d) id가 가장 짧은 노드

<details><summary>정답</summary>(b) PageRank는 "많이 참조되는 노드"에 높은 점수를 부여합니다. 우리 온톨로지에서는 '인공지능', '머신러닝' 같은 상위 개념이 해당됩니다.</details>

**Q9.** 전문검색 인덱스(FULLTEXT INDEX)의 호출 방법은?
- (a) `MATCH` 절에서 직접 사용 (b) `CALL db.index.fulltext.queryNodes(...)` (c) `WHERE` 절에서 사용 (d) `RETURN` 절에서 사용

<details><summary>정답</summary>(b) 전문검색 인덱스는 `CALL db.index.fulltext.queryNodes('인덱스명', '검색어')` 프로시저로 호출합니다. YIELD node, score로 결과를 받습니다.</details>

**Q10.** 카르테시안 곱(Cartesian Product)이 발생하는 Cypher 패턴은?
- (a) `MATCH (a:Concept)-[r]->(b)` (b) `MATCH (a:Concept), (b:Technology)` (c) `MATCH path = shortestPath(...)` (d) `MATCH (a:Concept) RETURN a`

<details><summary>정답</summary>(b) `MATCH (a), (b)` — 관계 없이 두 집합을 독립 매칭하면 모든 조합(N×M)이 생성됩니다. 231 Concept × 52 Technology = 12,012개 조합!</details>

---

## Part 4 퀴즈: 기업 적용 (Ch.16~17) — 10문항

**Q1.** QDM 방법론을 기업 데이터에 적용할 때, 변하지 않는 것은?
- (a) 노드 라벨 이름 (b) 데이터 소스 (c) "질문 → 패턴 → 스키마" 프로세스 (d) 인프라 구성

<details><summary>정답</summary>(c) QDM의 프로세스 자체는 도메인에 독립적입니다. 달라지는 것은 질문의 내용, 노드/관계 이름, 데이터 소스입니다.</details>

**Q2.** CMDB(IT 인프라)에서 그래프가 RDB보다 압도적으로 유리한 이유는?
- (a) 데이터가 적어서 (b) 의존성 깊이가 가변적이므로 가변 길이 경로 탐색이 필수 (c) 보안이 더 강해서 (d) 비용이 저렴해서

<details><summary>정답</summary>(b) "서버 X가 죽으면 영향받는 서비스는?"의 답은 의존성 깊이에 따라 달라집니다. SQL은 JOIN 수를 미리 정해야 하지만, Cypher는 `[*1..N]`으로 동적 탐색합니다.</details>

**Q3.** 프로덕션 Neo4j에서 가장 중요한 메모리 설정은?
- (a) JVM Heap (b) Page Cache (c) OS 메모리 (d) 스왑 메모리

<details><summary>정답</summary>(b) Page Cache — 전체 데이터를 메모리에 캐싱할 수 있으면 디스크 I/O가 없어져 10~100배 빨라집니다. 데이터 크기의 120% 이상을 권장합니다.</details>

**Q4.** RBAC에서 `GRANT MATCH {*} ON GRAPH * TO data_analyst`가 부여하는 권한은?
- (a) 쓰기 권한 (b) 노드 탐색(TRAVERSE) + 속성 읽기(READ) 결합 권한 (c) 스키마 관리 권한 (d) 삭제 권한

<details><summary>정답</summary>(b) MATCH는 TRAVERSE(노드 탐색)와 READ(속성 읽기)를 결합한 권한입니다. 쓰기(WRITE)는 별도로 부여해야 합니다.</details>

**Q5.** Neo4j의 SSL 설정 접두사는?
- (a) `server.ssl.policy` (b) `dbms.ssl.policy` (c) `neo4j.ssl.config` (d) `bolt.ssl.setting`

<details><summary>정답</summary>(b) `dbms.ssl.policy.<scope>.<setting>` — Neo4j 5+에서도 SSL 설정은 `dbms.` 접두사를 유지합니다 (대부분의 다른 설정은 `server.*`로 변경됨).</details>

**Q6.** 온라인 백업 명령어에서 `--type=full`과 `--type=incremental`의 차이는?
- (a) 같은 동작 (b) full은 전체 백업, incremental은 마지막 백업 이후 변경분만 (c) full은 더 빠름 (d) incremental은 매일 해야 함

<details><summary>정답</summary>(b) full은 전체 백업, incremental(differential)은 이전 백업 이후의 변경분만 백업합니다. 백업 체인(full + incremental)으로 관리합니다.</details>

**Q7.** SKOS의 `skos:broader`는 우리 프로젝트의 어떤 관계에 대응하는가?
- (a) COMPARED_WITH (b) BELONGS_TO (c) SUBCLASS_OF (d) MENTIONED_IN

<details><summary>정답</summary>(c) SUBCLASS_OF — `skos:broader`는 "상위 개념"을 의미하며, 우리의 SUBCLASS_OF(하위→상위 방향)와 의미적으로 동일합니다.</details>

**Q8.** 동시 MERGE 시 경쟁 조건(Race Condition)을 방지하는 핵심 메커니즘은?
- (a) LOAD CSV (b) UNIQUE 제약조건 (c) 전문검색 인덱스 (d) GDS 프로젝션

<details><summary>정답</summary>(b) UNIQUE 제약조건이 있으면, 두 트랜잭션이 동시에 같은 id로 MERGE할 때 하나는 성공, 하나는 ConstraintValidationFailed로 실패합니다. `execute_write()`의 자동 재시도로 해결됩니다.</details>

**Q9.** Python Neo4j Driver에서 Cypher Injection을 방지하는 방법은?
- (a) f-string 사용 (b) `$parameter` 바인딩 사용 (c) 쿼리를 암호화 (d) 읽기 전용 계정 사용

<details><summary>정답</summary>(b) `session.run("MATCH (c:Concept {id: $id}) RETURN c", id=user_input)` — 파라미터 바인딩을 사용하면 입력값이 쿼리 구조를 변경할 수 없습니다.</details>

**Q10.** OntoClean 방법론의 핵심 메타속성 4가지는?
- (a) 이름, 타입, 크기, 날짜 (b) 강성, 통일성, 정체성, 의존성 (c) 속도, 정확도, 재현율, F1 (d) 노드, 관계, 속성, 라벨

<details><summary>정답</summary>(b) Rigidity(강성), Unity(통일성), Identity(정체성), Dependency(의존성) — 이 4가지 메타속성으로 온톨로지의 분류 체계가 논리적으로 건전한지 평가합니다.</details>

---

## 채점 기준

| 정답률 | 판정 | 권장 |
|--------|------|------|
| 90~100% | 완벽 이해 | 다음 Part 진행 |
| 70~89% | 양호 | 오답 문항의 관련 챕터만 복습 |
| 50~69% | 보통 | 해당 Part를 한 번 더 읽기 |
| 50% 미만 | 부족 | 해당 Part를 처음부터 다시 학습 |
