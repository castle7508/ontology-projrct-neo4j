# Ch.01 — 그래프DB와 Neo4j 입문

> **"현실 세계의 데이터는 테이블이 아니라 네트워크다."**

이 챕터는 그래프 데이터베이스가 **왜 필요한지**, **무엇이 다른지**,
**왜 Neo4j를 선택했는지**를 다룹니다.
그래프DB를 처음 접하는 분도 이 챕터를 마치면
"아, 그래프가 이래서 필요하구나"를 체감할 수 있도록 설계했습니다.

---

## 1.1 데이터의 본질은 "관계"다

### 1.1.1 한 문장에서 시작하기

다음 문장을 읽어보세요:

> "딥러닝은 머신러닝의 하위 분야이고, CNN은 딥러닝을 구현하며,
> 이미지 분류에 사용되고, GPU에 의존한다."

이 한 문장에는 **4개의 개체**(딥러닝, 머신러닝, CNN, GPU)와
**4개의 관계**(하위 분야, 구현, 사용, 의존)가 들어 있습니다.

이것을 **관계형 데이터베이스(RDB)**로 표현하면 어떻게 될까요?

```
테이블 1: concepts (id, name, type)
테이블 2: technologies (id, name, category)
테이블 3: concept_relations (source_id, target_id, relation_type)
테이블 4: tech_dependencies (tech_id, dependency_id, dependency_type)

→ 4개 테이블 + 외래키(FK) + JOIN 3회로 "한 문장"을 재현
```

같은 문장을 **그래프**로 표현하면:

```
(딥러닝)-[:SUBCLASS_OF]->(머신러닝)
(CNN)-[:IMPLEMENTS]->(딥러닝)
(CNN)-[:USES]->(이미지 분류)
(딥러닝)-[:DEPENDS_ON]->(GPU)

→ 4개 노드 + 4개 관계. 문장과 구조가 1:1 대응.
```

**차이가 보이시나요?**

RDB에서는 "관계"를 표현하기 위해 **별도의 테이블**을 만들어야 합니다.
데이터가 늘어날수록 JOIN이 중첩되고, 쿼리가 복잡해지며, 성능이 떨어집니다.

그래프DB에서는 "관계"가 **일급 시민(first-class citizen)**입니다.
노드와 관계를 직접 연결하므로, 데이터 구조가 현실 세계의 관계와 동일합니다.

### 1.1.2 왜 지금 그래프인가

그래프 데이터베이스는 새로운 기술이 아닙니다.
오일러의 쾨니히스베르크 다리 문제(1736년)가 그래프 이론의 시작입니다.
하지만 **지금** 그래프DB가 주목받는 이유가 있습니다:

| 트렌드 | 그래프가 필요한 이유 |
|--------|---------------------|
| **지식그래프 (Knowledge Graph)** | Google, Amazon, LinkedIn이 핵심 인프라로 활용. 개체 간 관계가 핵심 |
| **GraphRAG** | LLM + 그래프 결합. 환각(hallucination) 줄이고 정확도 향상 |
| **추천 시스템** | "이 상품을 본 사람이 본 다른 상품" = 그래프 탐색 |
| **사기 탐지** | 금융 거래 네트워크에서 비정상 패턴 탐색 |
| **IT 인프라 관리** | 서버, 서비스, 의존성의 복잡한 관계 추적 |

우리 프로젝트도 이 흐름의 일부입니다:
- **2,392개 IT 학습 문서** → 개념 간 관계를 그래프로 구축
- **최종 목표**: GraphRAG로 확장하여 "딥러닝과 관련된 보안 위협은?" 같은 질문에
  그래프 경로를 기반으로 정확한 답변 생성

---

## 1.2 그래프 데이터베이스 핵심 개념

Neo4j가 사용하는 **Property Graph Model**의 4가지 핵심 요소를 배웁니다.

### 1.2.1 노드 (Node) — 엔티티를 표현하는 기본 단위

노드는 현실 세계의 **"것(thing)"**을 표현합니다.
사람, 제품, 개념, 문서 — 무엇이든 노드가 될 수 있습니다.

```cypher
// 노드 생성 예시
CREATE (:Concept {id: 'deep_learning', name: 'Deep Learning', name_kr: '딥러닝'})
```

**라벨(Label)**로 노드의 유형을 분류합니다:

```
(:Concept)      ← IT 핵심 개념 (딥러닝, 교착상태, 정규화)
(:Technology)   ← 구현 기술/도구 (CNN, AES, Docker)
(:Method)       ← 방법론/알고리즘 (SVM, K-Means, 애자일)
(:Domain)       ← 도메인 분류 (AI, SW, SE, DB 등)
```

> 💡 **라벨은 "카테고리"와 같습니다.**
> RDB의 테이블명과 비슷하지만, 큰 차이가 있습니다:
> **하나의 노드에 여러 라벨을 붙일 수 있습니다.**
> 예: `(:Person:Actor {name: 'Tom Hanks'})` — 사람이면서 배우
>
> Neo4j 공식문서에 따르면, 라벨은 노드를 분류(classify)하는 역할이며,
> 쿼리 시 인덱스와 결합하여 탐색 범위를 좁히는 성능 최적화 효과도 있습니다.

### 1.2.2 관계 (Relationship) — 노드 간 연결

관계는 두 노드를 **의미 있는 방향**으로 연결합니다.

```cypher
// 관계 생성 예시
MATCH (dl:Concept {id: 'deep_learning'})
MATCH (ml:Concept {id: 'machine_learning'})
CREATE (dl)-[:SUBCLASS_OF]->(ml)
```

**관계의 3가지 필수 요소:**

```
(시작 노드)-[:타입]->(끝 노드)
     │          │         │
     │          │         └─ Target Node (방향의 끝)
     │          └─ Relationship Type (의미)
     └─ Source Node (방향의 시작)
```

1. **방향(Direction)**: 모든 관계는 반드시 방향이 있습니다.
   `(딥러닝)-[:SUBCLASS_OF]->(머신러닝)` = "딥러닝은 머신러닝의 하위"
2. **타입(Type)**: 관계의 의미를 나타냅니다.
   SUBCLASS_OF, DEPENDS_ON, COMPARED_WITH 등
3. **단일 타입**: 하나의 관계는 정확히 하나의 타입만 가집니다.
   (노드의 라벨은 여러 개 가능하지만, 관계 타입은 하나)

> ⚠️ **방향은 저장용이지, 쿼리의 제약이 아닙니다**
>
> Neo4j는 관계를 저장할 때 방향을 기록하지만,
> 쿼리할 때는 방향을 무시하고 탐색할 수 있습니다:
> ```cypher
> // 방향 지정 탐색
> MATCH (a)-[:SUBCLASS_OF]->(b) RETURN a, b
>
> // 방향 무시 탐색 (양방향)
> MATCH (a)-[:SUBCLASS_OF]-(b) RETURN a, b
> ```
> "의미적으로 자연스러운 방향"으로 저장하되, 쿼리는 자유롭게 합니다.

### 1.2.3 속성 (Property) — 메타데이터를 키-값 쌍으로 저장

노드와 관계 모두에 **속성(Property)**을 부여할 수 있습니다.
속성은 키-값 쌍(key-value pair)으로, 엔티티의 상세 정보를 저장합니다.

```cypher
// 노드 속성
MERGE (c:Concept {id: 'deep_learning'})
SET c.name = 'Deep Learning',
    c.name_kr = '딥러닝',
    c.domain = 'AI',
    c.definition = '깊은 인공신경망을 활용하는 머신러닝 기술',
    c.exam_frequency = 168,
    c.aliases = ['DL', '심층학습']

// 관계 속성
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['학습 방식', '데이터 요구량', '해석 가능성']
}]->(b)
```

**지원 데이터 타입:**

| 타입 | 예시 | 용도 |
|------|------|------|
| `String` | `'Deep Learning'` | 이름, 정의, 설명 |
| `Integer` | `168` | 출현 횟수, 순위 |
| `Float` | `0.117` | 출제 비중, 점수 |
| `Boolean` | `true` | 활성/비활성 플래그 |
| `List` | `['DL', '심층학습']` | 별칭, 태그, 관점 |
| `Date/Time` | `date('2024-01-15')` | 생성일, 수정일 |
| `Point` | `point({x: 37.5, y: 127.0})` | 지리 좌표 |

> 💡 **RDB 컬럼 vs 그래프 속성**
>
> RDB에서는 모든 행이 같은 컬럼을 가져야 합니다 (스키마 강제).
> 그래프에서는 같은 라벨의 노드라도 **다른 속성을 가질 수 있습니다** (스키마리스).
>
> ```cypher
> // 이 두 Concept 노드는 속성이 다름 — 문제없음!
> (:Concept {id: 'deep_learning', exam_frequency: 168, aliases: ['DL']})
> (:Concept {id: 'agile', definition: '반복 점진적 개발 방법론'})
> ```
>
> 이것이 "첫 스키마는 틀린다"를 실천 가능하게 만드는 핵심입니다.
> 속성을 나중에 자유롭게 추가/수정/삭제할 수 있습니다.

### 1.2.4 경로 (Path) — 그래프의 진정한 힘

경로(Path)는 **노드와 관계가 번갈아 나오는 연속된 시퀀스**입니다.

```
(CNN)-[:IMPLEMENTS]->(딥러닝)-[:SUBCLASS_OF]->(머신러닝)-[:SUBCLASS_OF]->(AI)
```

이 경로는 "CNN → 딥러닝 → 머신러닝 → AI"로 이어지는 경로입니다.
4개 노드, **3개 관계(3-hop)**를 거칩니다.
여기서 그래프의 진정한 힘이 나옵니다:

**RDB에서 "CNN과 AI의 관계"를 찾으려면:**
```sql
-- 3단계 JOIN이 필요하고, 경로 길이를 미리 알아야 함
SELECT * FROM concepts c1
JOIN relations r1 ON c1.id = r1.source_id
JOIN concepts c2 ON r1.target_id = c2.id
JOIN relations r2 ON c2.id = r2.source_id
JOIN concepts c3 ON r2.target_id = c3.id
JOIN relations r3 ON c3.id = r3.source_id
JOIN concepts c4 ON r3.target_id = c4.id
WHERE c1.name = 'CNN' AND c4.name = 'AI'
```

**Neo4j에서 같은 질문:**
```cypher
// 경로 길이를 몰라도 됨! *는 가변 길이
// CNN은 Technology 라벨, AI는 Concept 라벨 — 라벨이 달라도 경로 탐색 가능
MATCH path = (a:Technology {name_kr: 'CNN'})-[*]->(b:Concept {name_kr: '인공지능'})
RETURN path
```

> 📌 **핵심: 인덱스 프리 인접성 (Index-Free Adjacency)**
>
> 그래프DB의 성능 비밀은 **데이터 저장 방식** 자체에 있습니다.
>
> **RDB의 JOIN 작동 방식:**
> ```
> concepts 테이블 (100만 행) → 인덱스로 source_id 검색 → O(log N)
> relations 테이블 (500만 행) → 인덱스로 target_id 검색 → O(log N)
> → hop마다 O(log N) 비용. 3-hop = O(3 × log N)
> → 데이터가 10배 늘면 각 JOIN이 느려짐
> ```
>
> **Neo4j의 탐색 작동 방식:**
> ```
> 노드 A의 메모리 주소 → 관계 포인터를 직접 따라감 → O(1)
> 인접 노드 B의 메모리 주소 → 다시 포인터를 따라감 → O(1)
> → hop마다 O(1) 비용. 3-hop = O(3)
> → 데이터가 10배 늘어도 탐색 속도 동일
> ```
>
> 각 노드가 인접한 노드/관계의 **물리적 메모리 주소를 직접 저장**하고 있으므로,
> 인덱스를 거치지 않고(index-free) 바로 이웃(adjacency)에 접근합니다.
> 그래서 **전체 그래프 크기와 무관하게** 탐색 성능이 일정합니다.

---

## 1.3 Property Graph vs RDF — 왜 Neo4j를 선택했나

온톨로지를 구현하는 기술은 크게 두 갈래입니다.
선택 기준을 명확히 이해하고 넘어가야, 이후 챕터에서 "왜 이렇게 설계하는가?"가 납득됩니다.

### 1.3.1 Property Graph Model (Neo4j)

```cypher
// 직관적이고 속성이 풍부한 표현
MERGE (dl:Concept {id: 'deep_learning'})
SET dl.name = 'Deep Learning',
    dl.name_kr = '딥러닝',
    dl.definition = '깊은 인공신경망을 활용하는 머신러닝 기술'

MERGE (ml:Concept {id: 'machine_learning'})
MERGE (dl)-[:SUBCLASS_OF]->(ml)
```

- 노드/관계 모두에 **풍부한 속성** 부여 가능
- Cypher 쿼리 언어가 SQL처럼 읽기 쉬움
- **스키마리스**: 구조를 먼저 정의하지 않아도 데이터 투입 가능
- 시각화 도구(Neo4j Browser, Bloom)가 우수

### 1.3.2 RDF/OWL (시맨틱웹)

```turtle
@prefix : <http://example.org/it#> .
:DeepLearning rdf:type :Concept ;
    rdfs:subClassOf :MachineLearning ;
    :dependsOn :GPU .
```

- W3C **국제 표준** — 기관 간 데이터 교환에 유리
- **논리적 추론 엔진** (OWL Reasoner): "A가 B의 하위이고 B가 C의 하위이면, A는 C의 하위"를 자동 도출
- 단점: 학습 곡선 높음, SPARQL 쿼리 복잡, 속성 표현 제한적 (reification 필요)

### 1.3.3 선택 기준 비교

| 기준 | RDF/OWL | Property Graph (Neo4j) |
|------|---------|----------------------|
| **구축 속도** | 느림 (스키마 선설계 필수) | **빠름** (스키마리스) |
| **스키마 변경** | 어려움 | **매우 쉬움** |
| **쿼리 유연성** | 보통 (SPARQL) | **높음** (Cypher) |
| **자동 추론** | **있음** (OWL Reasoner) | 없음 (수동 관계 생성) |
| **표준 교환** | **W3C 표준** | 비표준 |
| **속성 표현** | 제한적 | **풍부** (노드/관계 모두) |
| **학습 곡선** | 높음 | **낮음** |
| **시각화** | 제한적 | **우수** (Browser, Bloom) |

### 1.3.4 우리 프로젝트에서 Property Graph를 선택한 5가지 이유

1. **"첫 스키마는 틀린다"** — 빠르게 만들고 빠르게 수정해야 하므로 스키마리스가 유리
2. **풍부한 속성** — definition, exam_frequency, perspectives 등 다양한 속성이 필요
3. **구축 속도** — 2,392개 문서를 처리해야 하므로 빠른 프로토타이핑 필수
4. **쿼리 유연성** — "3-hop 이내 연결된 모든 개념" 같은 경로 탐색이 핵심 사용 패턴
5. **시각화** — Neo4j Browser에서 즉시 그래프를 눈으로 확인 가능

> [기업 박스] **RDF가 더 적합한 경우**
>
> 다음 조건에 해당하면 Property Graph 대신 RDF/OWL을 고려하세요:
> - 산업 표준 온톨로지(SNOMED CT, FIBO 등)와 연동해야 하는 경우
> - 여러 조직 간 온톨로지를 교환/통합해야 하는 경우
> - 자동 추론이 핵심 요구사항인 경우 (예: 의료 진단 시스템)
> - 규제 기관이 RDF/OWL 형식을 요구하는 경우
>
> 참고: Neo4j도 **n10s 플러그인**으로 RDF를 임포트할 수 있으므로,
> "Property Graph로 시작 → 필요 시 RDF 연동"이라는 점진적 전략이 가능합니다.

> 💡 이 비교는 여기서는 선택 근거 수준으로 다룹니다.
> Ch.05(온톨로지 모델링)에서 온톨로지의 4계층, Property Graph에서의 온톨로지 구현을
> 학술적 근거까지 포함하여 심층적으로 다시 다룹니다.

---

## 1.4 Neo4j 에코시스템 한눈에

Neo4j는 단일 데이터베이스가 아니라 **에코시스템**입니다.

### 1.4.1 Neo4j 에디션

| 에디션 | 비용 | 주요 차이 |
|--------|------|-----------|
| **Community** | 무료 | 단일 데이터베이스, 기본 제약조건만 |
| **Enterprise** | 유료 (개발/평가 무료) | 다중 DB, EXISTS/NODE KEY 제약조건, RBAC, 클러스터 |
| **Aura** (클라우드) | 종량제 | 관리형 서비스, 설치 불필요 |

우리 프로젝트는 **Enterprise (개발/평가용)**를 사용합니다.
`NEO4J_ACCEPT_LICENSE_AGREEMENT=yes`로 무료 사용 가능합니다.

### 1.4.2 핵심 플러그인

| 플러그인 | 정식 명칭 | 역할 | 우리 프로젝트 활용 |
|----------|-----------|------|-------------------|
| **APOC** | Awesome Procedures on Cypher | 유틸리티 400+ | 메타 통계, 노드 병합, JSON 로드 |
| **GDS** | Graph Data Science | 그래프 알고리즘 60+ | PageRank, Louvain, 유사도 분석 |
| **n10s** | neosemantics | RDF/OWL 연동 | RDF 임포트 (필요 시) |

### 1.4.3 클라이언트 도구

| 도구 | 접속 방법 | 용도 | 비용 |
|------|-----------|------|------|
| **Neo4j Browser** | `http://localhost:7474` | Cypher 실행 + 그래프 시각화 | 무료 |
| **Neo4j Bloom** | 별도 설치 | 비개발자용 탐색 도구 | Enterprise 포함 |
| **Neo4j Desktop** | 로컬 설치 | DB 관리 GUI | 무료 |
| **Cypher Shell** | CLI (`cypher-shell`) | 스크립트 실행, 배치 적재 | 무료 |

이 프로젝트에서는 **Neo4j Browser**(쿼리 실행/시각화)와
**Cypher Shell**(파일 배치 적재)을 주로 사용합니다.

---

## 1.5 RDB vs 그래프DB — 실전 비교

이론 비교만으로는 체감이 어렵습니다.
**같은 질문 5개**를 SQL과 Cypher로 풀어보면서 차이를 직접 느껴보겠습니다.

모든 예시는 우리 프로젝트의 **실제 데이터**를 사용합니다.

### Q1: "암호화의 하위 기술을 모두 찾아라" (계층 탐색)

**SQL (RDB):**
```sql
-- 재귀적 탐색은 CTE(Common Table Expression) 필요
-- SUBCLASS_OF: 자식 → 부모 방향이므로, 부모의 자식을 찾으려면 target_id = 부모
WITH RECURSIVE sub AS (
    -- 1단계: 암호화를 부모로 가리키는 직접 하위
    SELECT source_id AS child_id FROM relations
    WHERE target_id = (SELECT id FROM concepts WHERE name = '암호화')
      AND relation_type = 'SUBCLASS_OF'
    UNION ALL
    -- N단계: 재귀적으로 하위의 하위 탐색
    SELECT r.source_id FROM relations r
    JOIN sub s ON r.target_id = s.child_id
    WHERE r.relation_type = 'SUBCLASS_OF'
)
SELECT c.name FROM concepts c JOIN sub s ON c.id = s.child_id;
```

**Cypher (Neo4j):**
```cypher
MATCH (parent:Concept {name_kr: '암호화'})<-[:SUBCLASS_OF*]-(child)
RETURN child.name_kr AS 하위기술
```

→ Cypher는 **1줄**. `*`가 가변 길이 탐색을 자동 처리합니다.

### Q2: "AES와 DES를 비교하시오" (관계 속성 조회)

**SQL:**
```sql
SELECT c.perspectives FROM comparisons c
JOIN concepts a ON c.source_id = a.id
JOIN concepts b ON c.target_id = b.id
WHERE a.name = 'AES' AND b.name = 'DES';
-- comparisons 전용 테이블이 필요!
```

**Cypher:**
```cypher
MATCH (a:Technology {id: 'aes'})-[r:COMPARED_WITH]-(b:Technology {id: 'des'})
RETURN r.perspectives AS 비교관점
```

→ 관계 자체에 속성(`perspectives`)을 저장하므로, **별도 테이블 불필요**.

### Q3: "보안 도메인에서 출제 빈도 Top 10" (집계)

**SQL:**
```sql
SELECT c.name, c.exam_frequency
FROM concepts c
WHERE c.domain = 'SE'
ORDER BY c.exam_frequency DESC
LIMIT 10;
```

**Cypher:**
```cypher
MATCH (c:Concept {domain: 'SE'})
RETURN c.name_kr AS 개념, c.exam_frequency AS 출제빈도
ORDER BY c.exam_frequency DESC
LIMIT 10
```

→ 단순 집계는 SQL과 Cypher가 비슷합니다. 그래프의 장점이 드러나지 않는 영역입니다.

> 💡 **그래프DB가 모든 면에서 우월한 것은 아닙니다.**
> 단순 집계, 대량 트랜잭션(OLTP), 정형 보고서에는 RDB가 여전히 강합니다.
> 그래프DB는 **"관계 탐색"이 핵심인 경우**에 빛납니다.

### Q4: "딥러닝과 3-hop 이내 모든 개념" (경로 탐색)

**SQL:**
```sql
-- 3단계 JOIN... 코드가 폭발적으로 늘어남
-- 4-hop이면? 5-hop이면? 매번 쿼리를 다시 작성해야 함
```

**Cypher:**
```cypher
MATCH (start:Concept {id: 'deep_learning'})-[*1..3]-(connected)
RETURN DISTINCT connected.name_kr AS 연결개념, connected.domain AS 도메인
ORDER BY 도메인
```

→ `[*1..3]`으로 1~3 hop 탐색. **hop 수를 바꾸려면 숫자만 변경**.

### Q5: "두 개념의 최단 경로" (최단 경로)

**SQL:**
```sql
-- RDB에서 최단 경로? BFS 알고리즘을 애플리케이션 레벨에서 직접 구현해야 함
-- 표준 SQL만으로는 불가능
```

**Cypher:**
```cypher
MATCH path = shortestPath(
    (a:Concept {id: 'encryption'})-[*]-(b:Concept {id: 'cloud_computing'})
)
RETURN [n IN nodes(path) | n.name_kr] AS 경로
```

→ `shortestPath()`가 내장 함수. **별도 알고리즘 구현 불필요**.

### 비교 종합

| 질문 유형 | SQL | Cypher | 그래프 우위 |
|----------|-----|--------|-----------|
| 계층 탐색 | CTE 재귀 (10줄+) | `*` 1줄 | ★★★ |
| 관계 속성 | 전용 테이블 필요 | 관계에 직접 저장 | ★★☆ |
| 단순 집계 | 자연스러움 | 비슷함 | — |
| N-hop 탐색 | JOIN N회 중첩 | `[*1..N]` | ★★★ |
| 최단 경로 | 불가 (앱 레벨 필요) | `shortestPath()` 내장 | ★★★ |

> [설계 원칙] **"질문이 관계를 따라가는 것이라면, 그래프를 쓰라."**
>
> 우리 프로젝트의 핵심 질문들:
> - "딥러닝의 하위 기술은?" → 계층 탐색
> - "AES와 DES를 비교하시오" → 관계 속성
> - "DDoS 공격의 대응 기술 체인은?" → 경로 탐색
>
> 모두 **"관계를 따라가는 질문"**입니다. → 그래프가 최적.

> ⚠️ **[안티패턴] "그래프DB 만능주의" 함정**
>
> 그래프DB의 장점에 감동받아 **모든 데이터를 그래프에 넣으려는** 유혹이 있습니다.
> 하지만 다음 경우에는 그래프가 오히려 비효율적입니다:
>
> | 상황 | 더 나은 선택 | 이유 |
> |------|------------|------|
> | 대량 집계/보고서 (월별 매출 합산) | RDB (SQL) | GROUP BY + SUM이 훨씬 빠르고 직관적 |
> | 단순 CRUD (회원가입, 로그인) | RDB | 관계 탐색이 없으므로 그래프의 장점 없음 |
> | 시계열 데이터 (IoT 센서) | 시계열 DB (InfluxDB) | 시간 기반 집계에 특화 |
> | 전문 검색 (문서 내 키워드) | Elasticsearch | 역인덱스 기반 검색이 훨씬 빠름 |
> | 대용량 분석 (TB급) | 데이터 웨어하우스 | 컬럼형 저장이 분석에 유리 |
>
> **규칙**: "이 데이터의 핵심 질문이 관계 탐색인가?"를 먼저 물어보세요.
> 답이 "아니오"라면 그래프DB가 아닌 다른 도구가 정답일 수 있습니다.
>
> 우리 프로젝트에서도 기출문제의 단순 통계(도메인별 문제 수 집계 등)는
> Python + JSON으로 처리했지, 그래프에 넣지 않았습니다 (Ch.04 참조).

---

## 1.6 우리 프로젝트 미리보기 — 어디로 가는가

이 교재 전체를 통해 구축할 그래프의 최종 모습을 미리 봅니다:

```
                    ┌──────────┐
                    │  Domain  │ ← 13개 IT 도메인
                    │  (AI)    │
                    └────┬─────┘
                         │ BELONGS_TO
            ┌────────────┼─────────────┐
            │            │             │
     ┌──────┴───┐  ┌────┴────┐  ┌─────┴──────┐
     │ Concept  │  │Technology│  │  Method    │
     │(딥러닝)  │  │ (CNN)    │  │ (SVM)     │
     └───┬──────┘  └────┬────┘  └─────┬──────┘
         │              │             │
   SUBCLASS_OF    IMPLEMENTS     IMPLEMENTS
         │              │             │
     ┌───┴──────┐      │        ┌────┴────┐
     │ Concept  │←─────┘        │ Concept │
     │(머신러닝) │               │(지도학습) │
     └──────────┘               └─────────┘
```

**최종 목표 수치:**

| 항목 | 현재 (STEP 4) | 목표 (STEP 7) |
|------|-------------|-------------|
| 문서 | 46개 적재 | 2,392개 전체 |
| 노드 | ~435 | ~50,000+ |
| 관계 | ~875 | ~150,000+ |
| 도메인 | 5/13 | 13/13 |

이 교재를 따라가면, **STEP 1(인프라)**부터 **STEP 8(GraphRAG)**까지
그래프가 점진적으로 성장하는 과정을 직접 체험합니다.

---

## [실습] Neo4j Browser에서 Q1~Q5 직접 실행해보기

### 사전 준비
Ch.03의 실습을 완료하여 Neo4j가 실행 중이어야 합니다.
아직 데이터가 적재되지 않았다면, 아래 쿼리로 미니 데이터를 만듭니다.

### ① 미니 데이터 생성 (Neo4j Browser에서 실행)

```cypher
// 미니 온톨로지 — 5개 노드 + 5개 관계
MERGE (ai:Concept {id: 'artificial_intelligence', name_kr: '인공지능'})
MERGE (ml:Concept {id: 'machine_learning', name_kr: '머신러닝'})
MERGE (dl:Concept {id: 'deep_learning', name_kr: '딥러닝'})
MERGE (cnn:Technology {id: 'cnn', name_kr: 'CNN'})
MERGE (gpu:Technology {id: 'gpu', name_kr: 'GPU'})

MERGE (ml)-[:SUBCLASS_OF]->(ai)
MERGE (dl)-[:SUBCLASS_OF]->(ml)
MERGE (cnn)-[:IMPLEMENTS]->(dl)
MERGE (dl)-[:DEPENDS_ON]->(gpu)
MERGE (cnn)-[:DEPENDS_ON]->(gpu);
```

### ② 탐색 쿼리 실행

```cypher
// Q1: AI의 하위 개념을 모두 찾기
MATCH (ai:Concept {id: 'artificial_intelligence'})<-[:SUBCLASS_OF*]-(child)
RETURN child.name_kr AS 하위개념;
// 기대 결과: 머신러닝, 딥러닝

// Q4: 딥러닝과 2-hop 이내 모든 연결
MATCH (dl:Concept {id: 'deep_learning'})-[*1..2]-(connected)
RETURN DISTINCT connected.name_kr AS 연결, labels(connected) AS 타입;

// Q5: CNN에서 AI까지 최단 경로
MATCH path = shortestPath(
    (cnn:Technology {id: 'cnn'})-[*]-(ai:Concept {id: 'artificial_intelligence'})
)
RETURN [n IN nodes(path) | coalesce(n.name_kr, n.id)] AS 경로;
// 기대 결과: ['CNN', '딥러닝', '머신러닝', '인공지능']
```

### ③ 시각화 확인

Neo4j Browser에서 다음을 실행하면 그래프가 시각적으로 표시됩니다:

```cypher
MATCH (n)-[r]->(m) RETURN n, r, m
```

노드를 드래그하여 배치를 조정하고, 관계 화살표의 방향과 라벨을 확인하세요.

### ④ 정리 (선택)

```cypher
// 미니 데이터 삭제 (본 프로젝트 데이터와 섞이지 않도록)
MATCH (n) WHERE n.id IN ['artificial_intelligence', 'machine_learning',
    'deep_learning', 'cnn', 'gpu']
DETACH DELETE n;
```

### 체크리스트

- [ ] 미니 데이터 5개 노드 + 5개 관계 생성 확인
- [ ] Q1(계층 탐색): 하위 개념 2개 반환 확인
- [ ] Q4(N-hop): 연결된 노드 목록 확인
- [ ] Q5(최단 경로): 경로 배열 확인
- [ ] 시각화: Neo4j Browser에서 그래프 확인
- [ ] "그래프가 관계 탐색에 왜 강한지" 체감

---

> 📌 **핵심 정리**
>
> 1. **그래프DB**는 "관계"가 일급 시민 — 노드와 관계가 데이터 구조의 기본 단위
> 2. **Property Graph Model**: 노드(라벨, 속성) + 관계(타입, 방향, 속성) + 경로
> 3. **Neo4j 선택 이유**: 스키마리스(빠른 반복), 풍부한 속성, Cypher 직관성, 시각화
> 4. **그래프가 빛나는 순간**: 계층 탐색, N-hop 탐색, 최단 경로 — "관계를 따라가는 질문"
> 5. **그래프가 약한 순간**: 단순 집계, 대량 OLTP — 이 경우는 RDB가 여전히 유리
> 6. **우리 프로젝트**: 2,392개 IT 문서 → 지식그래프 → GraphRAG 확장
