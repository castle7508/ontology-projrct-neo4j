# 부록 E — 용어 사전

> 교재에서 사용하는 전문 용어를 가나다순 + ABC순으로 정리합니다.
> 첫 등장 챕터를 함께 표기합니다.

---

## 한글

| 용어 | 영문 | 정의 | 첫 등장 |
|------|------|------|---------|
| 가변 길이 경로 | Variable-length Path | 홉 수를 범위로 지정하여 탐색하는 경로 패턴 (`[*1..3]`) | Ch.02 |
| 강성 | Rigidity | OntoClean 메타속성. 개체가 그 클래스 소속을 필연적으로 유지하는 성질 (+R/−R) | Ch.05 |
| 거버넌스 | Governance | 스키마 변경 관리, 네이밍 규칙, 역할 분담 등 조직적 관리 체계 | Ch.17 |
| 고립 노드 | Orphan Node | 어떤 관계도 없는 노드 | Ch.09 |
| 관계 | Relationship | 두 노드를 방향과 의미를 가지고 연결하는 그래프 요소 | Ch.01 |
| 관계 풍부도 | Relationship Richness | OntoQA 지표. 비계층 관계 비율 (높을수록 다양한 의미 표현) | Ch.09 |
| 교차 라벨 중복 | Cross-label Duplication | 같은 id가 서로 다른 라벨에 동시 존재하는 이슈 | Ch.11 |
| 그래프 프로젝션 | Graph Projection | GDS 알고리즘 실행을 위해 디스크 데이터를 인메모리에 올리는 것 | Ch.14 |
| 노드 | Node | 그래프의 기본 엔티티 단위 (원으로 표현) | Ch.01 |
| 노드 병합 | Node Merging | 중복된 두 노드를 하나로 합치는 작업 (수동 또는 APOC) | Ch.10 |
| 도메인 온톨로지 | Domain Ontology | 특정 분야의 지식을 구조화한 온톨로지 (Level 3) | Ch.05 |
| 라벨 | Label | 노드의 유형을 나타내는 태그 (`:Concept`, `:Technology`) | Ch.01 |
| 라벨 표현식 | Label Expression | Neo4j 5+에서 `:A\|B`, `:A&B`, `:!C` 같은 논리 연산으로 라벨 매칭 | Ch.14 |
| 마이그레이션 | Migration | 스키마 또는 데이터를 한 버전에서 다른 버전으로 변환하는 작업 | Ch.10 |
| 멱등성 | Idempotency | 같은 연산을 여러 번 실행해도 결과가 동일한 성질 | Ch.02 |
| 배치 적재 | Batch Loading | 대량 데이터를 트랜잭션 단위로 나누어 적재하는 방식 | Ch.08 |
| 벡터 인덱스 | Vector Index | 벡터 임베딩의 유사도 검색을 위한 Neo4j 인덱스 (cosine/euclidean) | Ch.14 |
| 복합 인덱스 | Composite Index | 여러 속성을 결합한 인덱스 (예: label + domain) | Ch.07 |
| 서브쿼리 | Subquery | CALL {} 블록으로 격리된 내부 쿼리 (Neo4j 5+) | Ch.14 |
| 설계 패턴 (ODP) | Ontology Design Pattern | 반복적 모델링 문제의 검증된 해법 (Taxonomy, Part-Whole 등) | Ch.05 |
| 속성 | Property | 노드 또는 관계에 저장되는 키-값 쌍 | Ch.01 |
| 속성 풍부도 | Attribute Richness | OntoQA 지표. 노드 타입당 평균 속성 수 | Ch.09 |
| 속성 타입 제약조건 | Property Type Constraint | 속성의 데이터 타입을 강제하는 제약조건 (IS :: STRING 등) | Ch.07 |
| 순환 참조 | Circular Reference | A→B→C→A처럼 관계가 원형으로 돌아오는 구조 | Ch.09 |
| 스키마리스 | Schemaless | 사전 스키마 정의 없이 데이터를 자유롭게 저장하는 방식 | Ch.01 |
| 시드 노드 | Seed Node | 그래프의 뼈대 역할을 하는 우선 적재 노드 (Top 50) | Ch.07 |
| 시소러스 | Thesaurus | 동의어/유의어/관련어를 정리한 어휘 체계 (Level 1) | Ch.05 |
| 실행 계획 | Execution Plan | PROFILE/EXPLAIN로 확인하는 Cypher 쿼리의 처리 과정 | Ch.13 |
| 역정규화 | Denormalization | RDB의 정규화된 테이블을 그래프 구조로 변환하는 과정 | Ch.16 |
| 온톨로지 | Ontology | 공유된 개념화의 명시적 명세 (Tom Gruber, 1993) | Ch.05 |
| 의미 검증 | Semantic Validation | 데이터의 도메인 규칙 준수 여부를 검증하는 L4 계층 | Ch.09 |
| 의존성 | Dependence | OntoClean 메타속성. 개체 존재가 다른 개체에 의존하는 성질 (+D/−D) | Ch.05 |
| 인덱스 프리 인접성 | Index-Free Adjacency | 노드가 이웃 노드를 메모리 포인터로 직접 참조하여 O(1) 탐색하는 방식 | Ch.01 |
| 전문검색 인덱스 | Fulltext Index | 텍스트 토큰 기반 검색을 위한 Lucene 기반 인덱스 | Ch.07 |
| 정체성 | Identity | OntoClean 메타속성. 클래스가 개체를 구별하는 기준을 제공하는 성질 (+I/−I) | Ch.05 |
| 중복 관계 | Duplicate Relationship | 같은 노드 쌍에 같은 타입의 관계가 여러 개 존재하는 이슈 | Ch.09 |
| 카르테시안 곱 | Cartesian Product | 두 집합의 모든 조합을 생성하는 연산 (성능 저하 원인) | Ch.14 |
| 택소노미 | Taxonomy | 계층적 분류 체계 (온톨로지의 Level 2) | Ch.05 |
| 통일성 | Unity | OntoClean 메타속성. 개체가 통일된 전체를 이루는 성질 (+U/−U) | Ch.05 |
| 트랜잭션 | Transaction | 원자적으로 실행되는 작업 단위. 전부 성공하거나 전부 실패 | Ch.14 |
| 페이지 캐시 | Page Cache | 디스크 데이터를 메모리에 캐싱하는 Neo4j 핵심 메모리 영역 | Ch.17 |

## 영문/약어

| 용어 | 정의 | 첫 등장 |
|------|------|---------|
| APOC | Awesome Procedures On Cypher. Neo4j 확장 프로시저 라이브러리 (400+) | Ch.03 |
| BFO | Basic Formal Ontology. 상위 온톨로지의 대표적 체계 | Ch.05 |
| CALL IN TRANSACTIONS | 대량 데이터를 배치 단위로 나누어 처리하는 Cypher 절 | Ch.08 |
| CDC | Change Data Capture. 데이터 변경을 실시간으로 캡처하여 외부 시스템과 동기화 | Ch.17 |
| CMDB | Configuration Management Database. IT 인프라 구성 관리 DB | Ch.16 |
| Composite Database | 여러 데이터베이스를 하나의 쿼리로 접근하는 Neo4j 5+ 기능 (Fabric 후속) | Ch.17 |
| CREATE | Cypher의 무조건 생성 명령어. 온톨로지에서는 MERGE 사용 권장 | Ch.02 |
| DbHits | 데이터베이스 히트 수. PROFILE에서 쿼리 비용을 측정하는 단위 | Ch.13 |
| DETACH DELETE | 노드와 연결된 모든 관계를 함께 삭제하는 Cypher 명령어 | Ch.02 |
| DOLCE | Descriptive Ontology for Linguistic and Cognitive Engineering. 상위 온톨로지 | Ch.05 |
| ETL | Extract-Transform-Load. 데이터 추출→변환→적재 파이프라인 | Ch.08 |
| EXISTS | 속성 또는 관계의 존재를 강제하는 제약조건 (Enterprise) | Ch.07 |
| EXPLAIN | Cypher 쿼리의 예상 실행 계획을 보여주는 명령어 (실행하지 않음) | Ch.13 |
| FOREACH | 리스트 순회하며 쓰기 작업을 수행하는 Cypher 절 | Ch.13 |
| GDS | Graph Data Science. Neo4j 그래프 알고리즘 라이브러리 (PageRank, Louvain 등) | Ch.14 |
| GraphRAG | 그래프 탐색 + 벡터 검색을 결합한 RAG 방식. 환각 감소에 효과적 | 부록 C |
| LPG | Labeled Property Graph. Neo4j가 사용하는 그래프 데이터 모델 | Ch.01 |
| LOAD CSV | CSV 파일을 읽어 그래프 데이터로 적재하는 Cypher 절 | Ch.08 |
| Louvain | 커뮤니티 탐지 알고리즘. 그래프에서 밀집 연결 그룹을 찾음 | Ch.14 |
| MERGE | Cypher의 "있으면 재사용, 없으면 생성" 명령어. 멱등성의 핵심 | Ch.02 |
| N-ary Relation | 3개 이상의 개체가 참여하는 관계. ODP의 하나 | Ch.05 |
| n10s | Neosemantics. Neo4j의 RDF/OWL 통합 플러그인 (Labs) | Ch.03 |
| NODE KEY | 여러 속성의 조합으로 유일성을 강제하는 제약조건 (Enterprise) | Ch.07 |
| ON CREATE SET | MERGE가 노드를 새로 생성했을 때만 실행되는 SET 절 | Ch.02 |
| ON MATCH SET | MERGE가 기존 노드를 찾았을 때만 실행되는 SET 절 | Ch.02 |
| OntoClean | Guarino & Welty의 온톨로지 택소노미 검증 방법론 (2002) | Ch.05 |
| OntoQA | 온톨로지 품질을 정량적으로 측정하는 프레임워크 (Tartir et al., 2005) | Ch.09 |
| OPTIONAL MATCH | 패턴이 없어도 NULL로 채워서 반환하는 MATCH (SQL의 LEFT JOIN) | Ch.02 |
| OWL | Web Ontology Language. W3C 표준 온톨로지 명세 언어 | Ch.01 |
| PageRank | 노드 중요도를 측정하는 GDS 알고리즘. 허브 노드 탐지에 활용 | Ch.14 |
| PROFILE | Cypher 쿼리를 실행하고 실측 실행 계획 + DbHits를 보여주는 명령어 | Ch.13 |
| Property Graph | 노드/관계에 속성을 저장하는 그래프 데이터 모델 (Neo4j 방식) | Ch.01 |
| QDM | Question-Driven Modeling. 질문에서 스키마를 도출하는 방법론 | Ch.05 |
| QPP | Quantified Path Patterns. Neo4j 5+의 경로 패턴 반복 문법 | Ch.14 |
| RBAC | Role-Based Access Control. 역할 기반 접근 제어 | Ch.17 |
| RDF | Resource Description Framework. 시맨틱웹 표준 데이터 모델 (트리플 기반) | Ch.01 |
| Reification | 관계를 노드로 변환하여 속성/관계를 추가하는 모델링 기법 | Ch.05 |
| shortestPath | 두 노드 간 최단 경로를 찾는 Cypher 내장 함수 | Ch.01 |
| SKOS | Simple Knowledge Organization System. W3C 분류 체계 표현 표준 어휘 | Ch.17 |
| SPARQL | RDF 데이터를 쿼리하는 표준 언어 (W3C) | Ch.01 |
| SPOF | Single Point of Failure. 단일 장애점 | Ch.16 |
| SUMO | Suggested Upper Merged Ontology. IEEE 표준 상위 온톨로지 | Ch.05 |
| UNION | 여러 쿼리 결과를 하나로 합치는 Cypher 연산 (UNION: 중복 제거, UNION ALL: 유지) | Ch.13 |
| UNIQUE | 속성 값의 유일성을 강제하는 제약조건. 인덱스를 자동 생성 | Ch.02 |
| UNWIND | 리스트를 개별 행으로 풀어내는 Cypher 절. 배치 처리에 필수 | Ch.13 |
| Vector Index | 벡터 임베딩의 유사도 검색을 위한 인덱스 (Neo4j 5.11+) | Ch.14 |
| WAL | Write-Ahead Log. 트랜잭션 내구성을 보장하는 선기록 로그. CDC의 데이터 소스 | Ch.17 |
| WITH | Cypher에서 파이프라인처럼 앞 단계 결과를 다음 단계로 전달하는 절 | Ch.02 |
