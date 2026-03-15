# Ch.10 — STEP 5: 스키마 검증 - 수정 패턴

> **"문제를 발견하는 것은 절반이다. 나머지 절반은 안전하게 수정하는 것이다."**

이 챕터는 스키마 검증 3부작의 두 번째로, **"발견된 이슈를 어떻게 안전하게 수정하는가"**에 집중합니다.
Ch.09에서 진단 쿼리로 문제를 발견했다면,
이 챕터에서는 **노드 병합, 관계 수정, 속성 정정, 안전한 삭제**의 구체적 Cypher 패턴을 다룹니다.

모든 수정 패턴은 **멱등성(여러 번 실행해도 안전)**을 보장합니다.

---

## 10.1 수정 전 원칙

수정은 진단보다 위험합니다. 잘못된 수정은 잘못된 데이터보다 나쁩니다.
수정 전 반드시 지켜야 할 3가지 원칙:

### 원칙 1: 백업 먼저

```bash
# PowerShell에서 실행 — Neo4j 데이터 덤프
docker exec neo4j-ontology neo4j-admin database dump neo4j --to-path=/data/backups/

# 또는 Cypher 스크립트로 내보내기 (APOC)
# Neo4j Browser에서:
# CALL apoc.export.cypher.all('backup_before_fix.cypher', {})
```

> 📌 **최소한 "수정 전 상태"를 기록하세요.**
> 백업이 어렵다면 최소한 `apoc.meta.stats()`의 결과를 복사해두세요.
> 수정 후 비교할 수 있습니다.

### 원칙 2: 수정 계획 수립

수정 전 아래를 먼저 확인합니다:

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 영향 범위: 이 수정이 몇 개 노드/관계에 영향을 주는가?   │
│  2. 의존성: 이 노드를 참조하는 다른 노드/관계가 있는가?      │
│  3. 순서: 어떤 수정을 먼저 해야 하는가?                      │
│  4. 롤백: 수정이 잘못되었을 때 되돌릴 수 있는가?             │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### 원칙 3: 수정 후 재검증

수정을 적용한 후 **같은 진단 쿼리를 다시 실행**하여 이슈가 해결되었는지 확인합니다.

```
수정 전: L4-Q1 교차 라벨 → 1건 발견
수정 적용: function_point Method→Concept 병합
수정 후: L4-Q1 교차 라벨 → 0건 ✅ 확인
```

---

## 10.2 노드 병합 패턴

### 10.2.1 수동 병합 — 관계 이전 + 삭제

같은 개념이 2개 노드로 존재할 때, 하나로 합치는 패턴입니다.

**시나리오: `agile`(시드) vs `agile_methodology`(문서 데이터)**

```cypher
// ═══════════════════════════════════════════
// 수동 병합: agile_methodology → agile
// ═══════════════════════════════════════════

// STEP 1: 대상 노드의 관계 확인 (수정 전 영향 범위 파악)
MATCH (old:Concept {id: 'agile_methodology'})-[r]-(n)
RETURN type(r) AS rel_type, startNode(r).id AS from, endNode(r).id AS to;

// STEP 2: 각 관계를 시드 노드로 이전
// (관계 타입별로 하나씩 처리 — 실수 방지)

// HAS_TYPE 이전
MATCH (old:Concept {id: 'agile_methodology'})-[:HAS_TYPE]->(target)
MATCH (seed:Concept {id: 'agile'})
MERGE (seed)-[:HAS_TYPE]->(target);

// COMPARED_WITH 이전 (역방향도 처리)
MATCH (other)-[:COMPARED_WITH]->(old:Concept {id: 'agile_methodology'})
MATCH (seed:Concept {id: 'agile'})
MERGE (other)-[:COMPARED_WITH]->(seed);

// MENTIONED_IN 이전
MATCH (old:Concept {id: 'agile_methodology'})-[:MENTIONED_IN]->(doc)
MATCH (seed:Concept {id: 'agile'})
MERGE (seed)-[:MENTIONED_IN]->(doc);

// STEP 3: old 노드의 모든 관계 삭제
MATCH (old:Concept {id: 'agile_methodology'})-[r]-()
DELETE r;

// STEP 4: old 노드 삭제
MATCH (old:Concept {id: 'agile_methodology'})
DELETE old;

// STEP 5: 검증 — old 노드가 사라졌는지 확인
MATCH (n:Concept {id: 'agile_methodology'})
RETURN count(n) AS should_be_zero;
// → 0이어야 함

// STEP 6: 시드 노드에 관계가 잘 이전되었는지 확인
MATCH (seed:Concept {id: 'agile'})-[r]-(n)
RETURN type(r), n.id;
```

**왜 관계를 하나씩 처리하는가?**
- 일괄 처리하면 예상하지 못한 관계까지 이전될 수 있음
- 관계 타입별로 처리하면 각 단계에서 결과를 확인할 수 있음
- 문제 발생 시 어느 단계에서 잘못되었는지 특정 가능

### 10.2.2 APOC 자동 병합

대량의 중복 노드를 처리할 때는 APOC이 효율적입니다.

```cypher
// apoc.refactor.mergeNodes: 노드 목록을 첫 번째 노드로 병합
MATCH (a:Concept {id: 'agile'}), (b:Concept {id: 'agile_methodology'})
CALL apoc.refactor.mergeNodes([a, b], {
    properties: 'combine',    // 속성: 합치기
    mergeRels: true           // 관계: 이전 + 중복 제거
}) YIELD node
RETURN node;
```

**properties 옵션:**

| 옵션 | 동작 | 용도 |
|------|------|------|
| `'discard'` | 첫 번째 노드의 속성 유지, 나머지 무시 | 시드 속성 보호 |
| `'overwrite'` | 마지막 노드의 속성이 최종값 | 문서 데이터 우선 |
| `'combine'` | 배열로 합치기 | 모든 값 보존 |

**수동 vs APOC 비교:**

| 기준 | 수동 병합 | APOC 병합 |
|------|----------|----------|
| 코드량 | 많음 (관계별 처리) | 적음 (한 줄) |
| 제어 수준 | 높음 (각 단계 확인) | 낮음 (일괄 처리) |
| 안전성 | 높음 (단계별 검증) | 보통 (결과 확인만) |
| 대량 처리 | 느림 | 빠름 |
| 권장 상황 | 처음 수정, 소수 건 | 패턴 확인 후 대량 |

> 💡 **권장 전략**: 처음 1~2건은 수동으로 처리하여 패턴을 익히고,
> 동일 유형의 대량 건은 APOC으로 일괄 처리합니다.

### 10.2.3 교차 라벨 병합 (같은 id, 다른 라벨)

**시나리오: `function_point`가 Concept(시드) + Method(문서)로 존재**

이 경우는 일반 병합보다 복잡합니다. 라벨이 다르기 때문입니다.

```cypher
// STEP 1: Method의 관계를 Concept으로 이전
MATCH (method:Method {id: 'function_point'})-[r:MENTIONED_IN]->(doc:Document)
MATCH (seed:Concept {id: 'function_point'})
MERGE (seed)-[:MENTIONED_IN]->(doc);

// STEP 2: Method의 다른 관계도 확인하여 이전
MATCH (method:Method {id: 'function_point'})-[r]-(n)
WHERE NOT n:Document  // 이미 처리한 Document 제외
RETURN type(r), n.id;
// → 추가 관계가 있으면 각각 이전

// STEP 3: Method 노드의 모든 관계 삭제 + 노드 삭제
MATCH (method:Method {id: 'function_point'})-[r]-()
DELETE r;
MATCH (method:Method {id: 'function_point'})
DELETE method;

// STEP 4: 검증 — 교차 라벨 중복 해소 확인
MATCH (a), (b)
WHERE a.id = b.id AND elementId(a) < elementId(b)
RETURN a.id, labels(a), labels(b);
// → 0건이어야 함
```

---

## 10.3 관계 수정 패턴

### 10.3.1 관계 추가 (MENTIONED_IN 보강)

```cypher
// 시드-문서 간 MENTIONED_IN 일괄 추가
MATCH (seed:Concept {id: 'encryption'}), (doc:Document)
WHERE doc.id IN ['SE_003', 'SE_004', 'SE_005', 'SE_006', 'SE_007', 'SE_008', 'SE_009', 'SE_010']
MERGE (seed)-[:MENTIONED_IN]->(doc);

// 검증
MATCH (seed:Concept {id: 'encryption'})-[:MENTIONED_IN]->(doc)
RETURN count(doc) AS doc_count;
```

### 10.3.2 관계 방향 수정

```cypher
// 잘못된 방향의 관계를 올바른 방향으로 교체
// 주의: Neo4j는 관계 방향을 직접 변경할 수 없음 → 삭제 + 재생성

// STEP 1: 잘못된 관계 확인
MATCH (parent:Concept {id: 'artificial_intelligence'})-[r:SUBCLASS_OF]->(child:Concept {id: 'machine_learning'})
RETURN r;
// → AI→ML 방향은 잘못됨 (상위→하위). 올바른 방향: ML→AI

// STEP 2: 잘못된 관계 삭제
MATCH (parent:Concept {id: 'artificial_intelligence'})-[r:SUBCLASS_OF]->(child:Concept {id: 'machine_learning'})
DELETE r;

// STEP 3: 올바른 방향으로 재생성
MATCH (child:Concept {id: 'machine_learning'}), (parent:Concept {id: 'artificial_intelligence'})
MERGE (child)-[:SUBCLASS_OF]->(parent);

// STEP 4: 검증
MATCH (ml:Concept {id: 'machine_learning'})-[:SUBCLASS_OF]->(ai:Concept {id: 'artificial_intelligence'})
RETURN ml.name_kr, ai.name_kr;
```

### 10.3.3 관계 타입 변경 (RELATED_TO → 구체적 관계)

```cypher
// RELATED_TO를 의미에 맞는 관계로 교체
// ⚠️ 반드시 한 문장(세미콜론 없이)으로 작성해야 변수 r이 유지됩니다

MATCH (a:Concept {id: 'deep_learning'})-[r:RELATED_TO]->(b:Concept {id: 'gpu'})
MERGE (a)-[:DEPENDS_ON]->(b)
DELETE r;
```

> ⚠️ **변수 스코핑 주의: 세미콜론 위치가 중요합니다**
>
> ```cypher
> // ❌ 잘못된 패턴 — 세미콜론으로 문장을 분리하면 r 변수가 소실
> MATCH (a)-[r:RELATED_TO]->(b)
> MERGE (a)-[:DEPENDS_ON]->(b);   // ← 여기서 문장 종료
> DELETE r;                        // ← r이 정의되지 않음! 에러!
>
> // ✅ 올바른 패턴 — 한 문장으로 합치기
> MATCH (a)-[r:RELATED_TO]->(b)
> MERGE (a)-[:DEPENDS_ON]->(b)    // 세미콜론 없음
> DELETE r;                        // r이 여전히 유효
> ```
>
> Cypher에서 세미콜론(`;`)은 문장 구분자입니다.
> 세미콜론 이후에는 이전 문장의 변수를 참조할 수 없습니다.

> ⚠️ **순서 주의: 새 관계를 먼저 만들고, 기존 관계를 삭제합니다.**
> 반대로 하면 삭제 후 새 관계 생성에 실패했을 때 데이터 손실.

### 10.3.4 중복 관계 제거

```cypher
// 같은 쌍 사이의 중복 관계 중 하나만 남기기
MATCH (a)-[r1]->(b), (a)-[r2]->(b)
WHERE elementId(r1) < elementId(r2) AND type(r1) = type(r2)
DELETE r2;
```

---

## 10.4 속성 수정 패턴

### 10.4.1 속성 단건 수정

```cypher
// Domain.name 한글 복구
MATCH (d:Domain {id: 'DB'}) SET d.name = '데이터베이스';
MATCH (d:Domain {id: 'SE'}) SET d.name = '보안';
MATCH (d:Domain {id: 'SW'}) SET d.name = '소프트웨어공학';
```

### 10.4.2 UNWIND 기반 배치 수정

```cypher
// 여러 건을 한 번에 수정 (데이터를 배열로 전달)
UNWIND [
  {id: 'DB', name: '데이터베이스'},
  {id: 'SE', name: '보안'},
  {id: 'SW', name: '소프트웨어공학'}
] AS row
MATCH (d:Domain {id: row.id})
SET d.name = row.name;
```

**UNWIND의 장점:**
- 수정 대상이 많을 때 코드 반복 없이 처리
- 데이터와 로직을 분리 (데이터만 배열로 관리)
- 멱등성 보장 (같은 값으로 SET하면 변화 없음)

### 10.4.3 속성명 변경 (APOC)

```cypher
// 모든 노드의 name_ko → name_kr 일괄 변경
CALL apoc.refactor.rename.nodeProperty('name_ko', 'name_kr');
```

### 10.4.4 속성 타입 변환

```cypher
// exam_frequency가 문자열인 경우 → 정수로 변환
MATCH (c:Concept)
WHERE c.exam_frequency IS NOT NULL AND c.exam_frequency IS :: STRING
SET c.exam_frequency = toInteger(c.exam_frequency);
```

### 10.4.5 BELONGS_TO 누락 일괄 복구

```cypher
// domain 속성은 있지만 BELONGS_TO가 없는 모든 노드 복구
MATCH (n)
WHERE n.domain IS NOT NULL
  AND NOT (n)-[:BELONGS_TO]->(:Domain)
  AND NOT n:Domain AND NOT n:Document AND NOT n:_GraphConfig
WITH n
MATCH (d:Domain {id: n.domain})
MERGE (n)-[:BELONGS_TO]->(d);
```

---

## 10.5 안전한 삭제 패턴

### 10.5.1 관계 먼저, 노드 나중에

Neo4j에서 관계가 있는 노드는 직접 삭제할 수 없습니다:

```cypher
// ❌ 에러: 관계가 있는 노드는 삭제 불가
MATCH (n:Concept {id: 'obsolete_node'})
DELETE n;
// → Error: Cannot delete node because it still has relationships

// ✅ 관계 먼저 삭제
MATCH (n:Concept {id: 'obsolete_node'})-[r]-()
DELETE r;
// 그 다음 노드 삭제
MATCH (n:Concept {id: 'obsolete_node'})
DELETE n;
```

### 10.5.2 DETACH DELETE — 편리하지만 주의

```cypher
// 관계 포함 한 번에 삭제
MATCH (n:Concept {id: 'obsolete_node'})
DETACH DELETE n;
```

> ⚠️ **DETACH DELETE는 편리하지만 위험합니다.**
>
> 이 노드에 연결된 **모든 관계가 함께 삭제**됩니다.
> 의도하지 않은 관계까지 삭제될 수 있습니다.
>
> **반드시 삭제 전에 관계를 확인하세요:**
> ```cypher
> // 삭제 전 영향 범위 확인
> MATCH (n:Concept {id: 'obsolete_node'})-[r]-(connected)
> RETURN type(r) AS rel, connected.id AS connected_to;
> ```

### 10.5.3 조건부 삭제 (고립 노드만)

```cypher
// 관계가 하나도 없는 노드만 삭제 (안전)
MATCH (n:Concept)
WHERE NOT (n)--()
  AND n.importance IS NULL  // 시드 노드는 보호
DELETE n;
```

---

## 10.6 스키마 버전 관리

### 10.6.1 버전 네이밍

```
v1: 초기 설계 (정성 분석 기반)
v2: 정량 분석 반영 (exam_weight, exam_frequency 추가)
v3: 검증 후 수정 (중복 병합, Domain.name 복구, MENTIONED_IN 보강)
```

### 10.6.2 마이그레이션 스크립트 작성 규칙

```cypher
// ================================================================
// 마이그레이션: v2 → v3
// 날짜: 2026-03-15
// 작성자: 프로젝트 팀
// ================================================================
// 변경 사항:
//   1. Domain.name 한글 복구 (3건)
//   2. function_point Method→Concept 병합 (1건)
//   3. agile_methodology→agile 병합 (1건)
//   4. MENTIONED_IN 추가 (19건)
//   5. BELONGS_TO 누락 복구 (3건)
// ================================================================
// 멱등성: 여러 번 실행해도 안전합니다
// 의존성: 00_schema.cypher가 먼저 실행되어야 합니다
// 롤백: rollback_v3_to_v2.cypher 참조
// ================================================================
```

**마이그레이션 스크립트의 3대 규칙:**

| 규칙 | 의미 | 구현 방법 |
|------|------|----------|
| **멱등성** | 여러 번 실행해도 결과 동일 | MERGE 사용, IF NOT EXISTS, 조건부 처리 |
| **원자성** | 전체 성공 또는 전체 실패 | 논리적 단위로 묶기 (트랜잭션) |
| **추적성** | 언제, 누가, 무엇을 변경했는지 기록 | 헤더 주석, Git 커밋 메시지 |

### 10.6.3 롤백 전략

```cypher
// ================================================================
// 롤백: v3 → v2
// 주의: 병합된 노드를 다시 분리하는 것은 불가능합니다.
//       병합 롤백이 필요하면 v2 백업에서 복원하세요.
// ================================================================

// 1. Domain.name 롤백 (수동으로 원래 영문값 복원은 의미 없으므로 생략)

// 2. 추가된 MENTIONED_IN 삭제
MATCH (seed:Concept {id: 'encryption'})-[r:MENTIONED_IN]->(doc:Document)
WHERE doc.id IN ['SE_003', 'SE_004', 'SE_005', 'SE_006', 'SE_007', 'SE_008', 'SE_009', 'SE_010']
DELETE r;

// 3. 노드 병합은 롤백 불가 → 백업 복원 필요
```

> ⚠️ **노드 병합은 되돌릴 수 없습니다.**
> 병합 수정을 적용하기 전에 반드시 백업하세요.
> 백업에서 복원하는 것이 유일한 롤백 방법입니다.

---

## 10.7 재발 방지 — Cypher 작성 규칙 강화

수정은 "치료"이지만, 재발 방지는 "예방"입니다.

### 10.7.1 시드 id 참조 가이드

Cypher 생성 시 다음 참조 자료를 항상 제공합니다:

```
시드 id 목록 (Top 50):
testing, cloud_computing, artificial_intelligence, process, quality,
privacy_protection, memory, authentication, big_data, iot, ...
(전체 목록은 00_schema.cypher PART 6 참조)

규칙: 이 목록에 있는 개념과 동일한 것은 반드시 시드 id를 사용하세요.
```

### 10.7.2 Domain.name SET 금지 규칙

```
규칙: 도메인별 Cypher 파일에서 Domain 노드의 name 속성을 SET하지 마세요.
이유: 한글 name이 영문으로 덮어써지는 사고 방지.
Domain.name은 00_schema.cypher에서만 설정합니다.
```

### 10.7.3 적재 후 자동 검증

```
규칙: 새 Cypher 파일을 적재한 후, 반드시 다음 3개 쿼리를 실행하세요.
1. 교차 라벨 중복: MATCH (a),(b) WHERE a.id=b.id AND elementId(a)<elementId(b) RETURN a.id
2. Domain.name 검증: MATCH (d:Domain) WHERE NOT d.name =~ '.*[가-힣].*' RETURN d
3. 고립 노드: MATCH (n) WHERE NOT (n)--() AND NOT n:Domain RETURN n.id
```

### 10.7.4 Cypher 리뷰 체크리스트

새 Cypher 파일을 적재하기 전 확인:

- [ ] 모든 노드에 MERGE 사용 (CREATE 금지)
- [ ] MERGE 매칭 키가 id 하나만인가?
- [ ] 시드와 동일 개념은 시드 id를 사용했는가?
- [ ] Domain.name을 SET하지 않았는가?
- [ ] 관계 방향이 설계 규칙과 일치하는가?
- [ ] 아포스트로피가 있는 문자열은 큰따옴표로 감쌌는가?
- [ ] 파일 마지막에 MENTIONED_IN 관계가 포함되었는가?

---

## [기업 박스] 대규모 그래프 수정 실무

> **기업 환경에서의 수정은 규모와 리스크가 다릅니다.**
>
> **대량 수정 시 배치 처리:**
> ```cypher
> // 10,000개 노드의 속성 일괄 수정
> MATCH (c:Concept)
> WHERE c.domain = 'legacy_code'
> CALL (c) {
>   SET c.domain = 'SW'
> } IN TRANSACTIONS OF 1000 ROWS;
> ```
>
> **스테이징 환경 활용:**
> 1. 프로덕션 데이터를 스테이징에 복제
> 2. 스테이징에서 수정 스크립트 테스트
> 3. 검증 통과 후 프로덕션에 적용
>
> **변경 감사 로그:**
> ```cypher
> // 수정 이력을 그래프에 기록
> MERGE (log:ChangeLog {id: 'v2_to_v3'})
> SET log.date = datetime(),
>     log.changes = ['Domain.name 복구', 'function_point 병합', 'agile 병합'],
>     log.affected_nodes = 5,
>     log.affected_rels = 22;
> ```

---

## [실습] 의도적 문제 그래프에서 진단 → 수정 → 재검증

### 과제

의도적으로 문제가 있는 노드/관계를 만들고, Ch.09의 진단 쿼리로 발견한 후, 이 챕터의 패턴으로 수정하세요.

### 진행 방법

**STEP 1: 문제 데이터 생성**
```cypher
// 문제 1: 교차 라벨 중복
MERGE (c:Concept {id: 'test_node'}) SET c.name_kr = '테스트노드';
MERGE (m:Method {id: 'test_node'}) SET m.name_kr = '테스트노드';

// 문제 2: BELONGS_TO 누락
MERGE (c:Concept {id: 'orphan_test'}) SET c.name_kr = '고아테스트', c.domain = 'AI';

// 문제 3: 중복 관계
MATCH (a:Concept {id: 'deep_learning'}), (b:Concept {id: 'machine_learning'})
CREATE (a)-[:SUBCLASS_OF]->(b);
```

**STEP 2: 진단** (Ch.09 쿼리 사용)

**STEP 3: 수정** (이 챕터 패턴 적용)

**STEP 4: 재검증** (같은 진단 쿼리로 0건 확인)

**STEP 5: 테스트 데이터 정리**
```cypher
MATCH (n) WHERE n.id IN ['test_node', 'orphan_test'] DETACH DELETE n;
```

---

## 이 챕터 핵심 정리

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  1. 수정 전 3원칙: 백업 → 계획 → 재검증                      │
│                                                              │
│  2. 노드 병합: 수동(관계별 이전) vs APOC(일괄)               │
│     처음엔 수동으로 패턴 익히고, 대량은 APOC                 │
│     교차 라벨 병합은 라벨이 다르므로 별도 처리               │
│                                                              │
│  3. 관계 수정: 추가(MERGE), 방향(삭제+재생성), 타입(교체)    │
│     새 관계 먼저 → 기존 관계 삭제 (순서 중요!)               │
│                                                              │
│  4. 속성 수정: 단건(SET), 배치(UNWIND), 이름변경(APOC)       │
│                                                              │
│  5. 삭제: 관계 먼저 → 노드 나중. DETACH DELETE는 확인 후만   │
│                                                              │
│  6. 재발 방지: 시드 참조, Domain.name 금지, 적재 후 자동검증 │
│                                                              │
│  다음 챕터: 실제 프로젝트의 검증 전 과정 재현 (Ch.11)        │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```
