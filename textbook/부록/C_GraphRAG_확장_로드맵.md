# 부록 C — GraphRAG 확장 로드맵

> 이 프로젝트의 최종 목표는 **STEP 8: GraphRAG 활용**입니다.
> 현재까지 구축한 온톨로지를 RAG(Retrieval-Augmented Generation)에
> 어떻게 연결하는지, 확장 방향을 안내합니다.

---

## C.1 GraphRAG란 무엇인가

### 기존 RAG의 한계

일반적인 RAG(벡터 검색 기반)는 문서를 청크(chunk)로 분할하고,
사용자 질문과 유사한 청크를 벡터 유사도로 검색하여 LLM에 전달합니다.

```
질문 → [벡터 검색] → 유사 청크 Top K → [LLM] → 답변
```

**한계점:**
- 관계 추론 불가: "딥러닝의 상위 개념은?" → 관계가 아니라 텍스트 유사도로 검색
- 다중 홉 추론 불가: "CNN을 만든 기술의 상위 분야에 속하는 알고리즘은?"
- 구조적 질문 불가: "보안 도메인에서 가장 많이 출제되는 개념 Top 5는?"

### GraphRAG의 접근

GraphRAG는 벡터 검색에 **그래프 탐색**을 결합합니다:

```
질문 → [질문 분석] → [그래프 탐색 + 벡터 검색] → 통합 컨텍스트 → [LLM] → 답변
        │                 │
        │                 ├── Cypher 쿼리 → 구조적 결과
        │                 └── 벡터 검색 → 텍스트 유사 청크
        │
        └── 질문에서 엔티티/관계 추출
```

**우리 온톨로지가 GraphRAG에 적합한 이유:**

| 이미 있는 것 | GraphRAG에서의 역할 |
|-------------|---------------------|
| 11개 노드 타입, 17개 관계 타입 | 구조화된 지식 스키마 |
| 2,392개 문서 → JSON → Cypher | 엔티티 추출 + 관계 매핑 완료 |
| SUBCLASS_OF/HAS_TYPE 계층 | 다중 홉 추론의 기반 |
| MENTIONED_IN 문서 추적 | 답변의 출처 추적 (provenance) |
| 전문검색 인덱스 | 키워드 기반 엔티티 검색 |

---

## C.2 확장 방향 — 3단계 로드맵

### Phase 1: 벡터 임베딩 추가 (현재 스키마에 확장)

Neo4j 5.11+에서 지원하는 **벡터 인덱스**를 활용합니다.

```cypher
// 1. 벡터 인덱스 생성
CREATE VECTOR INDEX concept_embedding IF NOT EXISTS
FOR (c:Concept) ON (c.embedding)
OPTIONS {indexConfig: {
    `vector.dimensions`: 1536,
    `vector.similarity_function`: 'cosine'
}};

// 2. 임베딩 저장 (Python에서 생성 후 적재)
// Python: embedding = openai.embed("딥러닝은 다층 신경망...")
MATCH (c:Concept {id: 'deep_learning'})
SET c.embedding = $embedding_vector;

// 3. 벡터 유사도 검색
WITH $query_embedding AS queryVector
CALL db.index.vector.queryNodes('concept_embedding', 5, queryVector)
YIELD node, score
RETURN node.name_kr, node.definition, score
ORDER BY score DESC;
```

### Phase 2: 하이브리드 검색 (벡터 + 그래프)

벡터 검색으로 출발점을 찾고, 그래프 탐색으로 컨텍스트를 확장합니다:

```cypher
// 1단계: 벡터 검색으로 시작점 찾기
WITH $query_embedding AS queryVector
CALL db.index.vector.queryNodes('concept_embedding', 3, queryVector)
YIELD node AS startNode, score

// 2단계: 그래프 탐색으로 주변 컨텍스트 확장
MATCH (startNode)-[r*1..2]-(related)
WHERE NOT related:Domain AND NOT related:Document

// 3단계: 통합 컨텍스트 반환
RETURN startNode.name_kr AS 시작개념,
       score AS 유사도,
       collect(DISTINCT {
           name: related.name_kr,
           relation: [rel IN r | type(rel)],
           definition: related.definition
       })[..5] AS 관련컨텍스트
```

### Phase 3: neo4j-graphrag-python 연동

Neo4j 공식 GraphRAG Python 라이브러리를 활용한 엔드투엔드 파이프라인:

```python
# pip install neo4j-graphrag-python

from neo4j_graphrag.retrievers import HybridRetriever
from neo4j_graphrag.generation import GraphRAG
from neo4j import GraphDatabase

# Neo4j 연결
driver = GraphDatabase.driver(
    "bolt://localhost:7687",
    auth=("neo4j", "ontology2025!")
)

# 하이브리드 검색기 (벡터 + 전문검색)
retriever = HybridRetriever(
    driver=driver,
    vector_index_name="concept_embedding",
    fulltext_index_name="concept_fulltext",
    return_properties=["name_kr", "definition", "domain"]
)

# GraphRAG 파이프라인
rag = GraphRAG(
    retriever=retriever,
    llm=llm  # OpenAI, Claude 등
)

# 질문 → 답변
response = rag.search(
    query_text="딥러닝과 머신러닝의 관계를 설명하시오"
)
print(response.answer)
```

---

## C.3 현재 프로젝트에서 바로 시작할 수 있는 것

| 작업 | 난이도 | 소요 시간 | 전제조건 |
|------|--------|-----------|----------|
| 전문검색으로 질의응답 프로토타입 | 낮음 | 1시간 | 현재 상태로 가능 |
| Concept.definition에 벡터 임베딩 | 중간 | 반나절 | OpenAI API 키, Neo4j 5.11+ |
| 하이브리드 검색 구현 | 중간 | 1일 | 벡터 임베딩 완료 |
| neo4j-graphrag-python 연동 | 높음 | 2~3일 | 벡터 + Python 환경 |

**지금 바로 할 수 있는 것 — 전문검색 기반 프로토타입:**

```cypher
// "암호화 관련 기출문제 대비 개념 정리"
CALL db.index.fulltext.queryNodes('concept_fulltext', '암호화')
YIELD node, score
WHERE score > 0.5
MATCH (node)-[r*1..2]-(related)
WHERE NOT related:Domain AND NOT related:Document
RETURN node.name_kr AS 핵심개념,
       node.definition AS 정의,
       collect(DISTINCT related.name_kr)[..5] AS 관련개념
ORDER BY score DESC
LIMIT 5
```

---

## C.4 Vector Index ↔ GraphRAG 파이프라인 연결

Ch.14에서 다룬 Vector Index와 이 GraphRAG 로드맵은 **하나의 파이프라인**으로 연결됩니다.

```
┌─────────────────────────────────────────────────────────────────┐
│                 GraphRAG 전체 파이프라인                        │
│                                                                 │
│  [사용자 질문]                                                  │
│       │                                                         │
│       ▼                                                         │
│  [1단계: 벡터 검색] ─── Ch.14 Vector Index (7.7.2)             │
│  "의미적으로 유사한 Concept 5개 찾기"                           │
│       │                                                         │
│       ▼                                                         │
│  [2단계: 그래프 확장] ─── Ch.02 경로 탐색, Ch.14 VLP           │
│  "찾은 노드에서 2-hop 서브그래프 추출"                          │
│       │                                                         │
│       ▼                                                         │
│  [3단계: 컨텍스트 조합] ─── 노드 속성 + 관계 + 경로            │
│  "definition, 관계명, 경로를 텍스트로 직렬화"                   │
│       │                                                         │
│       ▼                                                         │
│  [4단계: LLM 답변] ─── OpenAI/Claude API                       │
│  "컨텍스트를 기반으로 답변 생성"                                │
│       │                                                         │
│       ▼                                                         │
│  [답변 + 근거 (그래프 경로)]                                    │
└─────────────────────────────────────────────────────────────────┘
```

### C.4.1 파이프라인 구현 예시 (Python)

```python
from neo4j import GraphDatabase
import openai  # 또는 anthropic

driver = GraphDatabase.driver("bolt://localhost:7687", auth=("neo4j", "ontology2025!"))

def graphrag_query(question: str):
    # 1단계: 질문을 벡터로 변환
    query_vector = openai.embeddings.create(
        model="text-embedding-ada-002",
        input=question
    ).data[0].embedding

    # 2단계: Neo4j에서 벡터 검색 + 그래프 확장
    with driver.session() as session:
        result = session.run("""
            CALL db.index.vector.queryNodes('concept_embedding', 5, $vector)
            YIELD node, score
            WHERE score > 0.75
            MATCH (node)-[r*1..2]-(related)
            WHERE NOT related:Domain AND NOT related:Document
            RETURN node.name_kr AS concept,
                   node.definition AS definition,
                   score,
                   collect(DISTINCT {
                       name: related.name_kr,
                       rel: type(r[0]),
                       label: labels(related)[0]
                   })[..10] AS context
            ORDER BY score DESC
        """, vector=query_vector)
        graph_context = [dict(r) for r in result]

    # 3단계: 컨텍스트를 프롬프트에 포함하여 LLM 호출
    context_text = format_context(graph_context)  # 텍스트 직렬화
    response = openai.chat.completions.create(
        model="gpt-4",
        messages=[{
            "role": "system",
            "content": f"아래 지식그래프 정보를 기반으로 답변하세요:\n{context_text}"
        }, {
            "role": "user",
            "content": question
        }]
    )
    return response.choices[0].message.content

# 사용
answer = graphrag_query("딥러닝과 보안의 관계를 설명하시오")
```

### C.4.2 비용 추정

| 작업 | API | 단가 | 우리 프로젝트 예상 |
|------|-----|------|--------------------|
| 임베딩 생성 (1회) | OpenAI ada-002 | $0.0001/1K tokens | ~50,000 노드 × 50 tokens ≈ $0.25 |
| 임베딩 검색 (질문당) | Neo4j 로컬 | 무료 | O(log N) — 밀리초 단위 |
| LLM 답변 (질문당) | GPT-4/Claude | $0.01~0.03 | 컨텍스트 크기에 비례 |

> 💡 **핵심 인사이트: 그래프가 환각을 줄인다**
>
> 일반 RAG: "벡터로 비슷한 텍스트 찾기" → 맥락 없는 단편 정보
> GraphRAG: "벡터로 시작점 찾기 + 그래프로 연결 정보 확장" → **구조화된 근거**
>
> "딥러닝의 하위 기술 중 보안 위협이 있는 것은?"이라는 질문에:
> - 일반 RAG: 관련 문서 조각만 제공
> - GraphRAG: (딥러닝)-[:SUBCLASS_OF*]-(child)-[:THREATENS]-(threat) 경로를 근거로 제시

---

## C.5 참고 자료

- **neo4j-graphrag-python**: [github.com/neo4j/neo4j-graphrag-python](https://github.com/neo4j/neo4j-graphrag-python)
- **Neo4j Vector Index 공식 문서**: Neo4j Cypher Manual → Vector Index
- **Going Meta 시리즈**: Jesús Barrasa의 온톨로지 + GraphRAG 실전 영상
- **교재 내 참조**: Ch.14(Vector Index 생성), Ch.12(STEP 8 로드맵)
