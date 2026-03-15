// ================================================================
// 플러그인 설치 확인 스크립트
// Neo4j Browser (http://localhost:7474) 에서 실행하세요
// ================================================================

// ── 1. Neo4j 버전 확인 ──
CALL dbms.components()
YIELD name, versions
RETURN name, versions;

// ── 2. APOC 확인 ──
RETURN apoc.version() AS apoc_version;

// ── 3. GDS (Graph Data Science) 확인 ──
RETURN gds.version() AS gds_version;

// ── 4. n10s (neosemantics) 확인 ──
// n10s 초기화 (최초 1회 필수)
CALL n10s.graphconfig.init({
  handleVocabUris: "MAP",
  handleMultival: "ARRAY",
  keepLangTag: false,
  keepCustomDataTypes: false
});

// ── 5. 전체 프로시저 목록으로 확인 ──
CALL dbms.procedures()
YIELD name
WHERE name STARTS WITH 'apoc' OR name STARTS WITH 'gds' OR name STARTS WITH 'n10s'
WITH split(name, '.')[0] + '.' + split(name, '.')[1] AS prefix
RETURN prefix, count(*) AS procedure_count
ORDER BY prefix;

// ── 결과 예상 ──
// apoc.algo          | 5
// apoc.convert       | 12
// apoc.export        | 8
// ...
// gds.graph          | 10
// gds.pageRank       | 3
// ...
// n10s.graphconfig   | 3
// n10s.onto          | 4
// n10s.rdf           | 6
// ...

// ================================================================
// 모두 성공하면 환경 구성 완료!
// 다음 단계: 스키마 설계 → 데이터 적재
// ================================================================
