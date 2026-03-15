# 부록 D — 참고자료

---

## 공식 문서

| 자료 | URL | 용도 |
|------|-----|------|
| **Neo4j Cypher Manual** | neo4j.com/docs/cypher-manual/current | Cypher 문법 레퍼런스 |
| **Neo4j APOC 문서** | neo4j.com/docs/apoc/current | APOC 프로시저/함수 레퍼런스 |
| **Neo4j GDS 문서** | neo4j.com/docs/graph-data-science/current | 그래프 알고리즘 (PageRank, Louvain 등) |
| **Neo4j Operations Manual** | neo4j.com/docs/operations-manual/current | 백업, 보안, 클러스터, 성능 튜닝 |
| **n10s (Neosemantics)** | neo4j.com/labs/neosemantics | RDF/OWL 통합 플러그인 |

## 영상 자료

| 자료 | URL | 내용 |
|------|-----|------|
| **Going Meta 시리즈** (Jesús Barrasa) | youtu.be/FeAowtZB80w | 온톨로지 구축 실전, RDF↔Property Graph |
| **Going Meta GitHub** | github.com/jbarrasa/goingmeta | 시리즈 코드/데이터 |

## 라이브러리 & 도구

| 자료 | URL | 용도 |
|------|-----|------|
| **neo4j-graphrag-python** | github.com/neo4j/neo4j-graphrag-python | GraphRAG 파이프라인 (벡터 + 그래프) |
| **Neo4j Python Driver** | neo4j.com/docs/python-manual/current | Python에서 Neo4j 연결 |
| **python-docx** | python-docx.readthedocs.io | DOCX 파일 파싱 (우리 프로젝트 ETL) |

## 서적

| 제목 | 저자 | 비고 |
|------|------|------|
| *Graph Databases* (3rd ed.) | Ian Robinson, Jim Webber, Emil Eifrem | 그래프DB 입문 필독서 (Neo4j 공동 창업자) |
| *Knowledge Graphs* | Aidan Hogan 외 | 지식그래프 이론과 실전의 표준 교과서 |
| *Building Knowledge Graphs* | Jesús Barrasa, Jim Webber | 온톨로지 + Neo4j 실전 (Going Meta 기반) |
| *Graph-Powered Machine Learning* | Alessandro Negro | 그래프 + ML/AI 결합 |
| *Ontology Engineering with Ontology Design Patterns* | Eva Blomqvist 외 | ODP 체계적 입문서 (IOS Press) |

## 온톨로지 이론

| 자료 | 비고 |
|------|------|
| Tom Gruber, "A Translation Approach to Portable Ontology Specifications" (1993) | 온톨로지의 정의: "공유된 개념화의 명시적 명세" |
| W3C OWL 2 Web Ontology Language | RDF/OWL 형식 온톨로지 표준 |
| Protégé (Stanford) — protege.stanford.edu | OWL 온톨로지 편집 도구 (GUI) |

## 시각화 도구

| 도구 | 유형 | 장점 | 적합한 환경 |
|------|------|------|-------------|
| **Neo4j Browser** | 내장 웹 UI | 즉시 사용, Cypher 직접 실행, 무료 | 개발/디버깅/학습 |
| **Neo4j Bloom** | 비즈니스 시각화 | 코드 없이 탐색, 자연어 검색, 퍼스펙티브 설정 | 비개발자 탐색, 프레젠테이션 |
| **neovis.js** | JavaScript 라이브러리 | 웹앱에 그래프 시각화 임베드, 오픈소스 | 커스텀 웹 대시보드 |
| **yFiles** | 상용 라이브러리 | 고급 레이아웃 알고리즘, 대규모 그래프 | 엔터프라이즈 앱, 상용 제품 |
| **Graphlytic** | 웹 기반 분석 도구 | 그래프 분석 + 시각화 통합, 필터/검색 | 분석가용 인터랙티브 탐색 |
| **Gephi** | 오픈소스 데스크톱 | 네트워크 분석, 대규모 레이아웃, 학술 연구 | 오프라인 분석, 논문용 시각화 |

> 💡 **우리 프로젝트 추천**: 학습/개발에는 **Neo4j Browser**, 비개발자 시연에는 **Bloom**,
> 웹앱 통합에는 **neovis.js**가 적합합니다.

## 우리 프로젝트 내부 자료

| 자료 | 위치 | 내용 |
|------|------|------|
| 프로젝트 설계서 | `CLAUDE.md` | 스키마, 워크플로우, 인프라, 규칙 |
| 스키마 정의 | `cypher/00_schema.cypher` | 제약조건 + 인덱스 + 시드 노드 |
| 도메인별 Cypher | `cypher/ai_001_010.cypher` 등 | 적재 데이터 |
| 파이프라인 기록 | `system-docs/03_파이프라인/기록.txt` | Claude.ai 대화 기록 |
| 분석설계 문서 | `system-docs/02_분석설계/` | 스키마 설계서, 정량분석 결과 |
| 파싱 결과 JSON | `tools/data/parsed/` | 2,381개 JSON (43MB) |
