// ================================================================
// DB 도메인 (DB_051 ~ DB_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// DB_042.1: 데이터 회복 기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_042.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_회복_기법'})
SET     n.name = '데이터 회복 기법',
    n.name_kr = '데이터 회복 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_recovery'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: 'redo'})
SET     n.name = 'REDO',
    n.name_kr = 'REDO',
    n.domain = 'DB',
    n.aliases = ['REDO'];

MERGE (n:Concept {id: 'undo'})
SET     n.name = 'UNDO',
    n.name_kr = 'UNDO',
    n.domain = 'DB',
    n.aliases = ['UNDO'];

MERGE (n:Concept {id: '즉시갱신'})
SET     n.name = '즉시갱신',
    n.name_kr = '즉시갱신',
    n.domain = 'DB';

MERGE (n:Concept {id: '지연갱신'})
SET     n.name = '지연갱신',
    n.name_kr = '지연갱신',
    n.domain = 'DB';

MERGE (n:Concept {id: '체크포인트'})
SET     n.name = '체크포인트',
    n.name_kr = '체크포인트',
    n.domain = 'DB';

MERGE (n:Concept {id: '그림자페이지'})
SET     n.name = '그림자페이지',
    n.name_kr = '그림자페이지',
    n.domain = 'DB';

MERGE (n:Concept {id: '장애_유형'})
SET     n.name = '장애 유형',
    n.name_kr = '장애 유형',
    n.domain = 'DB';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: 'redo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: 'undo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '즉시갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '지연갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '체크포인트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '그림자페이지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '장애_유형'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '장애_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Document {id: 'DB_042.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_recovery'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '즉시갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지연갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체크포인트'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그림자페이지'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애_유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_042.2: REDO, UNDO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_042.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'redo,_undo'})
SET     n.name = 'REDO, UNDO',
    n.name_kr = 'REDO, UNDO',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: 'redo'})
SET     n.name = 'REDO',
    n.name_kr = 'REDO',
    n.domain = 'DB',
    n.definition = '정의',
    n.aliases = ['REDO'];

MERGE (n:Concept {id: 'undo'})
SET     n.name = 'UNDO',
    n.name_kr = 'UNDO',
    n.domain = 'DB',
    n.definition = '장애 발생 시,모든 변경 사항, Commit안된 트랜잭션 작업을 취소하여 일관성 보장 기법',
    n.aliases = ['UNDO'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: '동작'})
SET     n.name = '동작',
    n.name_kr = '동작',
    n.domain = 'DB',
    n.definition = '트랜잭션이 시작하면,해당 트랜잭션의 연산 내용을 Log 파일에 기록';

MERGE (n:Concept {id: '대표_기법'})
SET     n.name = '대표 기법',
    n.name_kr = '대표 기법',
    n.domain = 'DB',
    n.definition = 'Log 기반 지연 갱신 회복 기법';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'DB',
    n.definition = 'Log 기반 즉시 갱신 회복 기법';

// --- 관계 ---

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: '데이터_회복'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: 'redo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: 'undo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: '동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: '대표_기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo'})
MERGE (b:Concept {id: 'undo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: 'redo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Concept {id: 'undo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Document {id: 'DB_042.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'redo,_undo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대표_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_045: 로그기반회복기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_045'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '로그기반회복기법'})
SET     n.name = '로그기반회복기법',
    n.name_kr = '로그기반회복기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: '>_즉'})
SET     n.name = '> 즉',
    n.name_kr = '> 즉',
    n.domain = 'DB';

MERGE (n:Concept {id: 'commit_시'})
SET     n.name = 'Commit 시',
    n.name_kr = 'Commit 시',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db에_갱신'})
SET     n.name = 'DB에 갱신',
    n.name_kr = 'DB에 갱신',
    n.domain = 'DB';

MERGE (n:Concept {id: 'immediate_update'})
SET     n.name = 'Immediate Update',
    n.name_kr = '즉시 갱신 기법',
    n.domain = 'DB',
    n.aliases = ['Immediate Update', '즉시 갱신 기법'];

MERGE (n:Concept {id: 'deferred_update'})
SET     n.name = 'Deferred Update',
    n.name_kr = '지연 갱신 기법',
    n.domain = 'DB',
    n.aliases = ['Deferred Update', '지연 갱신 기법'];

// --- 관계 ---

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: '데이터_회복'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: '>_즉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: 'commit_시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: 'db에_갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'immediate_update'})
MERGE (b:Concept {id: 'deferred_update'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: 'immediate_update'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Concept {id: 'deferred_update'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Document {id: 'DB_045'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '로그기반회복기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '>_즉'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commit_시'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db에_갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'immediate_update'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deferred_update'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_046: 체크포인트 회복기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_046'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '체크포인트_회복기법'})
SET     n.name = '체크포인트 회복기법',
    n.name_kr = '체크포인트 회복기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: '체크포인트_회복_기법'})
SET     n.name = '체크포인트 회복 기법',
    n.name_kr = '체크포인트 회복 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: 'checkpoint'})
SET     n.name = '검사점',
    n.name_kr = '검사점',
    n.domain = 'DB',
    n.definition = '주기적 생성';

MERGE (n:Concept {id: '회복_효율성'})
SET     n.name = '회복 효율성',
    n.name_kr = '회복 효율성',
    n.domain = 'DB',
    n.definition = '간결한 검사';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB',
    n.definition = '장애 발생으로부터 마지막 검사점 이후의 트랜잭션을 REDO/UNDO';

MERGE (n:Concept {id: '갱신'})
SET     n.name = '갱신',
    n.name_kr = '갱신',
    n.domain = 'DB',
    n.definition = '트랜잭션 수행 중, 검사점(Checkpoint) 기반으로 로그 기록 수행';

MERGE (n:Concept {id: '회복'})
SET     n.name = '회복',
    n.name_kr = '회복',
    n.domain = 'DB',
    n.definition = '트랜잭션 수행 도중 장애 발생시, 로그 정보를 모두 검사하여 REDO와 UNDO 연산을 실행할 트랜잭션과 체크포인트 선정 - 검사점의 로그 기록을 기반 REDO/UNDO 수행 - 검사점 이전 시작된 트랜잭션은 REDO, 검사점 이후 - 새로 시작한 트랜잭션은 UNDO 리스트';

MERGE (n:Concept {id: 'undo'})
SET     n.name = 'UNDO',
    n.name_kr = 'UNDO',
    n.domain = 'DB',
    n.definition = '검사 시점 설정 당시 활동중인 트랜잭션은 전부 UNDO 리스트 삽입',
    n.aliases = ['UNDO'];

MERGE (n:Concept {id: 'redo'})
SET     n.name = 'REDO',
    n.name_kr = 'REDO',
    n.domain = 'DB',
    n.definition = '검사점 시점으로부터 로그를 탐색 - <Ti commit>(수행종료)트랜잭션은 REDO로 추가 - <Ti start>(수행시작)트랜잭션은 UNDO로 유지',
    n.aliases = ['REDO'];

// --- 관계 ---

MERGE (a:Concept {id: '체크포인트_회복_기법'})
MERGE (b:Concept {id: '데이터_회복'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: 'checkpoint'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: '회복_효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: '갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: '회복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: 'undo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Concept {id: 'redo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Document {id: 'DB_046'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '체크포인트_회복기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체크포인트_회복_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'checkpoint'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복_효율성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_047: 그림자페이지 회복기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_047'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '그림자페이지_회복기법'})
SET     n.name = '그림자페이지 회복기법',
    n.name_kr = '그림자페이지 회복기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: '그림자페이지회복기법'})
SET     n.name = '그림자페이지회복기법',
    n.name_kr = '그림자페이지회복기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '그림자페이지테이블로_현재_테이블_대체'})
SET     n.name = '그림자페이지테이블로 현재 테이블 대체',
    n.name_kr = '그림자페이지테이블로 현재 테이블 대체',
    n.domain = 'DB';

MERGE (n:Concept {id: '회복_대상'})
SET     n.name = '회복 대상',
    n.name_kr = '회복 대상',
    n.domain = 'DB',
    n.definition = '백업 데이터';

MERGE (n:Concept {id: '적용_전략'})
SET     n.name = '적용 전략',
    n.name_kr = '적용 전략',
    n.domain = 'DB',
    n.definition = '병행 적용';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: '갱신'})
SET     n.name = '갱신',
    n.name_kr = '갱신',
    n.domain = 'DB',
    n.definition = '트랜잭션 수행 중 현재 페이지 테이블과 그림자 페이지 테이블을 운용 - 현재 페이지 테이블을 우선 갱신하고, 트랜잭션 종료 시 그림자 페이지 테이블 갱신. - 다중 사용자 환경에서는 추가적인 로깅 필요';

MERGE (n:Concept {id: '회복동작'})
SET     n.name = '회복동작',
    n.name_kr = '회복동작',
    n.domain = 'DB',
    n.definition = '장애 발생 시, 그림자 페이지 테이블의 내용을 이용하여 회복 수행';

MERGE (n:Concept {id: '생성'})
SET     n.name = '생성',
    n.name_kr = '생성',
    n.domain = 'DB',
    n.definition = '트랜잭션 시작 시점에 현재 페이지 테이블의 내용과 동일한 그림자페이지테이블 생성';

MERGE (n:Concept {id: '기록'})
SET     n.name = '기록',
    n.name_kr = '기록',
    n.domain = 'DB',
    n.definition = '트랜잭션 변경 연산이 수행되면,메모리의 현재 페이지 테이블 내용만 갱신';

MERGE (n:Concept {id: '반영'})
SET     n.name = '반영',
    n.name_kr = '반영',
    n.domain = 'DB',
    n.definition = '트랜잭션이 성공하는 경우, 현재 페이지 테이블 내용을 그림자페이지테이블로 반영';

MERGE (n:Concept {id: '회복'})
SET     n.name = '회복',
    n.name_kr = '회복',
    n.domain = 'DB',
    n.definition = '제거';

MERGE (n:Concept {id: '변경'})
SET     n.name = '변경',
    n.name_kr = '변경',
    n.domain = 'DB',
    n.definition = '현재 페이지 테이블을 HDD에 저장된 그림자 페이지 테이블로 변경';

MERGE (n:Concept {id: '복구'})
SET     n.name = '복구',
    n.name_kr = '복구',
    n.domain = 'DB',
    n.definition = '그림자 페이지 테이블의 내용을 기반으로 회복 작업 수행';

// --- 관계 ---

MERGE (a:Concept {id: '그림자페이지회복기법'})
MERGE (b:Concept {id: '데이터_회복'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '그림자페이지테이블로_현재_테이블_대체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '회복_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '적용_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '회복동작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '기록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '반영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '회복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Concept {id: '복구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Document {id: 'DB_047'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '그림자페이지_회복기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그림자페이지회복기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그림자페이지테이블로_현재_테이블_대체'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복_대상'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용_전략'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복동작'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기록'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_048.1: ARIES (Algorithms for Recovery and Isolation Exploiting Semantics)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_048.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
SET     n.name = 'Algorithms for Recovery and Isolation Exploiting Semantics',
    n.name_kr = 'ARIES',
    n.domain = 'DB',
    n.aliases = ['Algorithms for Recovery and Isolation Exploiting Semantics', 'ARIES'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복_기법'})
SET     n.name = '데이터 회복 기법',
    n.name_kr = '데이터 회복 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '회복_3단계(분석'})
SET     n.name = '회복 3단계(분석',
    n.name_kr = '회복 3단계(분석',
    n.domain = 'DB';

MERGE (n:Concept {id: 'redo'})
SET     n.name = 'REDO',
    n.name_kr = 'REDO',
    n.domain = 'DB',
    n.aliases = ['REDO'];

MERGE (n:Concept {id: 'undo)'})
SET     n.name = 'UNDO)',
    n.name_kr = 'UNDO)',
    n.domain = 'DB';

MERGE (n:Concept {id: '필요정보(로그'})
SET     n.name = '필요정보(로그',
    n.name_kr = '필요정보(로그',
    n.domain = 'DB';

MERGE (n:Concept {id: '트랜잭션_테이블'})
SET     n.name = '트랜잭션 테이블',
    n.name_kr = '트랜잭션 테이블',
    n.domain = 'DB';

MERGE (n:Concept {id: '오손_페이지_테이블)'})
SET     n.name = '오손 페이지 테이블)',
    n.name_kr = '오손 페이지 테이블)',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: '데이터_회복_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: '회복_3단계(분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: 'redo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: 'undo)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: '필요정보(로그'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: '트랜잭션_테이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Concept {id: '오손_페이지_테이블)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Document {id: 'DB_048.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'algorithms_for_recovery_and_isolation_exploiting_semantics'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복_3단계(분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undo)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필요정보(로그'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션_테이블'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오손_페이지_테이블)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_048.2: Database 백업
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_048.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'database_백업'})
SET     n.name = 'Database 백업',
    n.name_kr = 'Database 백업',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_회복'})
SET     n.name = '데이터 회복',
    n.name_kr = '데이터 회복',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db_백업'})
SET     n.name = 'DB 백업',
    n.name_kr = 'DB 백업',
    n.domain = 'DB';

MERGE (n:Concept {id: '백업_대상파일'})
SET     n.name = '백업 대상파일',
    n.name_kr = '백업 대상파일',
    n.domain = 'DB',
    n.definition = '장애복구용';

MERGE (n:Concept {id: '로그_정보_파일'})
SET     n.name = '로그 정보 파일',
    n.name_kr = '로그 정보 파일',
    n.domain = 'DB',
    n.definition = '장애 시점의 로그파일, 백업 이후 생성된 아카이브 로그 파일';

MERGE (n:Concept {id: '장애_복구시_필요_파일'})
SET     n.name = '장애 복구시 필요 파일',
    n.name_kr = '장애 복구시 필요 파일',
    n.domain = 'DB',
    n.definition = '닫힌 백업파일 이용';

MERGE (n:Concept {id: '완전_복구'})
SET     n.name = '완전 복구',
    n.name_kr = '완전 복구',
    n.domain = 'DB',
    n.definition = 'Archive log파일, 장애 시점의 Redo log 파일, 장애시점의 Control 파일';

MERGE (n:Concept {id: '불완전_복구'})
SET     n.name = '불완전 복구',
    n.name_kr = '불완전 복구',
    n.domain = 'DB',
    n.definition = '백업된 데이터 파일 전체 - 현재까지의 Archive log 파일, 장애 이전 시점의 Archive log 파일 - 현재 시점의 Redo log 파일과 장애 시점의 Control 파일';

// --- 관계 ---

MERGE (a:Concept {id: 'db_백업'})
MERGE (b:Concept {id: '데이터_회복'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Concept {id: '백업_대상파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Concept {id: '로그_정보_파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Concept {id: '장애_복구시_필요_파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Concept {id: '완전_복구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Concept {id: '불완전_복구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Document {id: 'DB_048.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'database_백업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_회복'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_백업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백업_대상파일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로그_정보_파일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애_복구시_필요_파일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완전_복구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불완전_복구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_049: 동시성 제어 문제점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_049'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '동시성_제어_문제점'})
SET     n.name = '동시성 제어 문제점',
    n.name_kr = '동시성 제어 문제점',
    n.domain = 'DB';

MERGE (n:Concept {id: '동시성_제어'})
SET     n.name = '동시성 제어',
    n.name_kr = '동시성 제어',
    n.domain = 'DB';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'DB';

MERGE (n:Concept {id: '갱현모연'})
SET     n.name = '갱현모연',
    n.name_kr = '갱현모연',
    n.domain = 'DB';

MERGE (n:Concept {id: '락2낙타다_ldic'})
SET     n.name = '락2낙타다 LDIC',
    n.name_kr = '락2낙타다 LDIC',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '동시성_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '동시성_제어_문제점'})
MERGE (b:Concept {id: '갱현모연'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동시성_제어_문제점'})
MERGE (b:Concept {id: '락2낙타다_ldic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동시성_제어_문제점'})
MERGE (b:Document {id: 'DB_049'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '동시성_제어_문제점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성_제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '갱현모연'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '락2낙타다_ldic'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_050: Locking
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_050'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'locking'})
SET     n.name = 'Locking',
    n.name_kr = 'Locking',
    n.domain = 'DB',
    n.aliases = ['Locking'];

MERGE (n:Concept {id: '동시성제어'})
SET     n.name = '동시성제어',
    n.name_kr = '동시성제어',
    n.domain = 'DB';

MERGE (n:Concept {id: 'shared_lock'})
SET     n.name = 'Shared lock',
    n.name_kr = 'Shared lock',
    n.domain = 'DB',
    n.aliases = ['Shared lock'];

MERGE (n:Concept {id: 'wound-wait_알고리즘'})
SET     n.name = 'Wound-Wait 알고리즘',
    n.name_kr = 'Wound-Wait 알고리즘',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'locking'})
MERGE (b:Concept {id: '동시성제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'locking'})
MERGE (b:Concept {id: 'shared_lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'locking'})
MERGE (b:Concept {id: 'wound-wait_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'locking'})
MERGE (b:Document {id: 'DB_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'locking'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shared_lock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wound-wait_알고리즘'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_051: 2PL(2 Phase Locking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_051'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '2pl'})
SET     n.name = '2PL(2 Phase Locking)',
    n.name_kr = '2PL(2 Phase Locking)',
    n.domain = 'DB';

MERGE (n:Concept {id: '동시성제어'})
SET     n.name = '동시성제어',
    n.name_kr = '동시성제어',
    n.domain = 'DB';

MERGE (n:Concept {id: '2pl_or_2plp'})
SET     n.name = '2PL or 2PLP',
    n.name_kr = '2PL or 2PLP',
    n.domain = 'DB';

MERGE (n:Concept {id: 'lock(read_lock'})
SET     n.name = 'Lock(Read lock',
    n.name_kr = 'Lock(Read lock',
    n.domain = 'DB';

MERGE (n:Concept {id: 'write_lock'})
SET     n.name = 'write lock',
    n.name_kr = 'write lock',
    n.domain = 'DB',
    n.aliases = ['write lock'];

MERGE (n:Concept {id: 'x_lock'})
SET     n.name = 'X-lock',
    n.name_kr = 'X-lock',
    n.domain = 'DB',
    n.aliases = ['X-lock'];

MERGE (n:Concept {id: 's-lock)_2pl(lock'})
SET     n.name = 'S-lock) 2PL(lock',
    n.name_kr = 'S-lock) 2PL(lock',
    n.domain = 'DB';

MERGE (n:Concept {id: 'unlock'})
SET     n.name = 'unlock',
    n.name_kr = 'unlock',
    n.domain = 'DB',
    n.aliases = ['unlock'];

MERGE (n:Concept {id: 'finish_to_start'})
SET     n.name = 'finish to start',
    n.name_kr = 'finish to start',
    n.domain = 'DB',
    n.aliases = ['finish to start'];

MERGE (n:Concept {id: 'start_to_start)'})
SET     n.name = 'start to start)',
    n.name_kr = 'start to start)',
    n.domain = 'DB';

MERGE (n:Concept {id: '논리개수기'})
SET     n.name = '논리개수기',
    n.name_kr = '논리개수기',
    n.domain = 'DB';

MERGE (n:Concept {id: 'wait_die'})
SET     n.name = 'wait-die',
    n.name_kr = 'wait-die',
    n.domain = 'DB',
    n.aliases = ['wait-die'];

MERGE (n:Concept {id: 'wound-wait)'})
SET     n.name = 'wound-wait)',
    n.name_kr = 'wound-wait)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'mvcc(undo영역'})
SET     n.name = 'MVCC(Undo영역',
    n.name_kr = 'MVCC(Undo영역',
    n.domain = 'DB';

MERGE (n:Concept {id: 'cr_copy'})
SET     n.name = 'CR-copy',
    n.name_kr = 'CR-copy',
    n.domain = 'DB',
    n.aliases = ['CR-copy'];

MERGE (n:Concept {id: 'rollback_segment'})
SET     n.name = 'Rollback segment',
    n.name_kr = 'Rollback segment',
    n.domain = 'DB',
    n.aliases = ['Rollback segment'];

MERGE (n:Concept {id: 'snapshot_too_old'})
SET     n.name = 'Snapshot too old',
    n.name_kr = 'Snapshot too old',
    n.domain = 'DB',
    n.aliases = ['Snapshot too old'];

MERGE (n:Concept {id: '오라클-세그먼트'})
SET     n.name = '오라클-세그먼트',
    n.name_kr = '오라클-세그먼트',
    n.domain = 'DB';

MERGE (n:Concept {id: 'ms_temp_db'})
SET     n.name = 'MS-temp DB',
    n.name_kr = 'MS-temp DB',
    n.domain = 'DB',
    n.aliases = ['MS-temp DB'];

MERGE (n:Concept {id: '문장수준mvcc'})
SET     n.name = '문장수준MVCC',
    n.name_kr = '문장수준MVCC',
    n.domain = 'DB';

MERGE (n:Concept {id: '트랜잭션수준_mvcc)'})
SET     n.name = '트랜잭션수준 MVCC)',
    n.name_kr = '트랜잭션수준 MVCC)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'timestamp_ordering'})
SET     n.name = 'Timestamp Ordering',
    n.name_kr = 'Timestamp Ordering',
    n.domain = 'DB',
    n.aliases = ['Timestamp Ordering'];

MERGE (n:Concept {id: '낙관적검증기법'})
SET     n.name = '낙관적검증기법',
    n.name_kr = '낙관적검증기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '2pc'})
SET     n.name = '2PC',
    n.name_kr = '2PC',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '2pl_or_2plp'})
MERGE (b:Concept {id: '동시성제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'lock(read_lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'write_lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'x_lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 's-lock)_2pl(lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'unlock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'finish_to_start'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'start_to_start)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '논리개수기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'wait_die'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'wound-wait)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'mvcc(undo영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'cr_copy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'rollback_segment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'snapshot_too_old'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '오라클-세그먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'ms_temp_db'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '문장수준mvcc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '트랜잭션수준_mvcc)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'timestamp_ordering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '낙관적검증기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '낙관적검증기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: 'timestamp_ordering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '낙관적검증기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pc'})
MERGE (b:Concept {id: '2pl'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Concept {id: '2pc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Document {id: 'DB_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '2pl'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2pl_or_2plp'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lock(read_lock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'write_lock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'x_lock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 's-lock)_2pl(lock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unlock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'finish_to_start'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'start_to_start)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리개수기'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wait_die'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wound-wait)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mvcc(undo영역'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cr_copy'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rollback_segment'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snapshot_too_old'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오라클-세그먼트'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ms_temp_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문장수준mvcc'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션수준_mvcc)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '낙관적검증기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2pc'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_052: Strict 2PL / Rigorous 2PL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_052'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'strict_2pl_rigorous_2pl'})
SET     n.name = 'Strict 2PL / Rigorous 2PL',
    n.name_kr = 'Strict 2PL / Rigorous 2PL',
    n.domain = 'DB',
    n.aliases = ['Strict 2PL / Rigorous 2PL'];

MERGE (n:Concept {id: '동시성제어'})
SET     n.name = '동시성제어(병행 제어)',
    n.name_kr = '동시성제어(병행 제어)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'strict_2pl'})
SET     n.name = 'Strict 2PL',
    n.name_kr = 'Strict 2PL',
    n.domain = 'DB',
    n.aliases = ['Strict 2PL'];

MERGE (n:Concept {id: 'rigorous_2pl'})
SET     n.name = 'Rigorous 2PL',
    n.name_kr = 'Rigorous 2PL',
    n.domain = 'DB',
    n.aliases = ['Rigorous 2PL'];

// --- 관계 ---

MERGE (a:Concept {id: 'strict_2pl_rigorous_2pl'})
MERGE (b:Concept {id: '동시성제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'strict_2pl'})
MERGE (b:Concept {id: 'rigorous_2pl'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'strict_2pl_rigorous_2pl'})
MERGE (b:Concept {id: 'strict_2pl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'strict_2pl_rigorous_2pl'})
MERGE (b:Concept {id: 'rigorous_2pl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'strict_2pl_rigorous_2pl'})
MERGE (b:Document {id: 'DB_052'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'strict_2pl_rigorous_2pl'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'strict_2pl'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rigorous_2pl'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_054: Timestamp Ordering
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_054'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'timestamp_ordering'})
SET     n.name = 'Timestamp Ordering',
    n.name_kr = 'Timestamp Ordering',
    n.domain = 'DB',
    n.aliases = ['Timestamp Ordering'];

MERGE (n:Concept {id: '동시성제어'})
SET     n.name = '동시성제어(병행 제어)',
    n.name_kr = '동시성제어(병행 제어)',
    n.domain = 'DB';

MERGE (n:Concept {id: '타임스탬프_지정'})
SET     n.name = '타임스탬프 지정',
    n.name_kr = '타임스탬프 지정',
    n.domain = 'DB';

MERGE (n:Concept {id: '생성방법(논리적계수'})
SET     n.name = '생성방법(논리적계수',
    n.name_kr = '생성방법(논리적계수',
    n.domain = 'DB';

MERGE (n:Concept {id: '시스템시계)'})
SET     n.name = '시스템시계)',
    n.name_kr = '시스템시계)',
    n.domain = 'DB';

MERGE (n:Concept {id: '종류(read_ts'})
SET     n.name = '종류(read_TS',
    n.name_kr = '종류(read_TS',
    n.domain = 'DB';

MERGE (n:Concept {id: 'write_ts)'})
SET     n.name = 'write_TS)',
    n.name_kr = 'write_TS)',
    n.domain = 'DB';

MERGE (n:Concept {id: '직렬성_보장'})
SET     n.name = '직렬성 보장',
    n.name_kr = '직렬성 보장',
    n.domain = 'DB',
    n.definition = '상충되는 연산들이 타임 스탬프 순서로 처리됨으로 직렬성 (Serializability)이 보장';

MERGE (n:Concept {id: '교착상태_방지'})
SET     n.name = '교착상태 방지',
    n.name_kr = '교착상태 방지',
    n.domain = 'DB',
    n.definition = '트랜잭션이 결코 기다리는 경우가 없으므로 교착상태 (Deadlock) 를 방지';

MERGE (n:Concept {id: '연쇄복귀_초래'})
SET     n.name = '연쇄복귀 초래',
    n.name_kr = '연쇄복귀 초래',
    n.domain = 'DB',
    n.definition = '문제점은 연쇄복귀 (Cascading Rollback) 를 초래';

MERGE (n:Concept {id: '생성방법'})
SET     n.name = '생성방법',
    n.name_kr = '생성방법',
    n.domain = 'DB',
    n.definition = '논리적 계수 (Logical Counter)';

MERGE (n:Concept {id: 'system_clock'})
SET     n.name = 'System Clock',
    n.name_kr = '시스템 시계',
    n.domain = 'DB',
    n.definition = '트랜잭션이 시스템에 들어오면 시스템 시계의 값을 그 트랜잭션의 타임스탬프 값으로 부여',
    n.aliases = ['System Clock', '시스템 시계'];

MERGE (n:Concept {id: '타임스탬프_종류'})
SET     n.name = '타임스탬프 종류',
    n.name_kr = '타임스탬프 종류',
    n.domain = 'DB',
    n.definition = 'read_TS(x)';

MERGE (n:Concept {id: 'x'})
SET     n.name = 'x',
    n.name_kr = 'write_TS',
    n.domain = 'DB',
    n.definition = '데이터 아이템 x 의 기록 타임스탬프로서 write(x)를 성공적으로 수행한 트랜잭션의 타임스탬프 중에서 제일 큰 타임스탬프',
    n.aliases = ['x', 'write_TS'];

MERGE (n:Concept {id: 'ti'})
SET     n.name = '트랜잭션(Ti)가 읽기 시도 시',
    n.name_kr = '트랜잭션(Ti)가 읽기 시도 시',
    n.domain = 'DB',
    n.definition = 'TS(Ti) >= Write_TS(x)';

// --- 관계 ---

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '동시성제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '타임스탬프_지정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '생성방법(논리적계수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '시스템시계)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '종류(read_ts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: 'write_ts)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '직렬성_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '교착상태_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '연쇄복귀_초래'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '생성방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: 'system_clock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: '타임스탬프_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: 'x'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Concept {id: 'ti'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Document {id: 'DB_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'timestamp_ordering'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타임스탬프_지정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성방법(논리적계수'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템시계)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종류(read_ts'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'write_ts)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직렬성_보장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교착상태_방지'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연쇄복귀_초래'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성방법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system_clock'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타임스탬프_종류'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'x'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ti'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_055: 다중 버전 동시성 제어(MVCC)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_055'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'mvcc'})
SET     n.name = 'MVCC',
    n.name_kr = '다중 버전 동시성 제어',
    n.domain = 'DB',
    n.aliases = ['MVCC', '다중 버전 동시성 제어'];

MERGE (n:Concept {id: 'database'})
SET     n.name = 'Database',
    n.name_kr = 'Database',
    n.domain = 'DB',
    n.aliases = ['Database'];

MERGE (n:Concept {id: '동시성제어'})
SET     n.name = '동시성제어',
    n.name_kr = '동시성제어',
    n.domain = 'DB';

MERGE (n:Concept {id: 'isolation_level'})
SET     n.name = 'Isolation Level',
    n.name_kr = 'Isolation Level',
    n.domain = 'DB',
    n.aliases = ['Isolation Level'];

// --- 관계 ---

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Concept {id: 'database'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mvcc'})
MERGE (b:Concept {id: '동시성제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mvcc'})
MERGE (b:Concept {id: 'isolation_level'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mvcc'})
MERGE (b:Document {id: 'DB_055'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mvcc'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'database'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isolation_level'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_056: 낙관적 검증(Validation) 기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_056'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'validation'})
SET     n.name = '낙관적 검증(Validation) 기법',
    n.name_kr = '낙관적 검증(Validation) 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '동시성_제어'})
SET     n.name = '동시성 제어',
    n.name_kr = '동시성 제어',
    n.domain = 'DB';

MERGE (n:Concept {id: 'read_phase'})
SET     n.name = 'Read Phase',
    n.name_kr = 'Read Phase',
    n.domain = 'DB',
    n.aliases = ['Read Phase'];

MERGE (n:Concept {id: 'validation_phase'})
SET     n.name = 'Validation Phase',
    n.name_kr = 'Validation Phase',
    n.domain = 'DB',
    n.aliases = ['Validation Phase'];

MERGE (n:Concept {id: '판독'})
SET     n.name = '판독',
    n.name_kr = '판독',
    n.domain = 'DB';

MERGE (n:Concept {id: '확인'})
SET     n.name = '확인',
    n.name_kr = '확인',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'validation'})
MERGE (b:Concept {id: '동시성_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Concept {id: 'read_phase'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Concept {id: 'validation_phase'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Concept {id: '판독'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Concept {id: '확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Document {id: 'DB_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시성_제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'read_phase'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'validation_phase'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판독'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_057.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_057.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_057.2: 함수적 종속성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_057.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '함수적_종속성'})
SET     n.name = '함수적 종속성',
    n.name_kr = '함수적 종속성',
    n.domain = 'DB';

MERGE (n:Concept {id: '정규화'})
SET     n.name = '정규화',
    n.name_kr = '정규화',
    n.domain = 'DB';

MERGE (n:Concept {id: '완부이결다조'})
SET     n.name = '완부이결다조',
    n.name_kr = '완부이결다조',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '함수적_종속성'})
MERGE (b:Concept {id: '정규화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '함수적_종속성'})
MERGE (b:Concept {id: '완부이결다조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '함수적_종속성'})
MERGE (b:Document {id: 'DB_057.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '함수적_종속성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완부이결다조'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_057.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_057.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_058: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_058'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_059: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_059'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_060: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_060'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_061: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_061'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_062: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_062'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_063: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_063'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_064: 반정규화(Denormalization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_064'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'denormalization'})
SET     n.name = 'Denormalization',
    n.name_kr = '반정규화',
    n.domain = 'DB',
    n.aliases = ['Denormalization', '반정규화'];

MERGE (n:Concept {id: '정규화'})
SET     n.name = '정규화',
    n.name_kr = '정규화',
    n.domain = 'DB';

MERGE (n:Concept {id: '테이블_병합'})
SET     n.name = '테이블 병합',
    n.name_kr = '테이블 병합',
    n.domain = 'DB';

MERGE (n:Concept {id: '테이블_분할'})
SET     n.name = '테이블 분할',
    n.name_kr = '테이블 분할',
    n.domain = 'DB';

MERGE (n:Concept {id: '테이블_추가'})
SET     n.name = '테이블 추가',
    n.name_kr = '테이블 추가',
    n.domain = 'DB';

MERGE (n:Concept {id: '컬럼'})
SET     n.name = '컬럼',
    n.name_kr = '컬럼',
    n.domain = 'DB';

MERGE (n:Concept {id: '관계'})
SET     n.name = '관계',
    n.name_kr = '관계',
    n.domain = 'DB';

MERGE (n:Concept {id: '테이블_레벨'})
SET     n.name = '테이블 레벨',
    n.name_kr = '테이블 레벨',
    n.domain = 'DB',
    n.definition = '테이블 병합';

MERGE (n:Concept {id: '컬럼_레벨'})
SET     n.name = '컬럼 레벨',
    n.name_kr = '컬럼 레벨',
    n.domain = 'DB',
    n.definition = '중복 컬럼 추가';

MERGE (n:Concept {id: '계산_컬럼_추가'})
SET     n.name = '계산 컬럼 추가',
    n.name_kr = '계산 컬럼 추가',
    n.domain = 'DB',
    n.definition = '여러 테이블 조인 후 계산이 필요한 경우 계산 결과 컬럼 추가 장단점: 조인 비용은 감소하나, 갱신 비용 증가';

MERGE (n:Concept {id: '이력_컬럼_추가'})
SET     n.name = '이력 컬럼 추가',
    n.name_kr = '이력 컬럼 추가',
    n.domain = 'DB',
    n.definition = '변경 이력, 발생 이력 정보 위한 최신 정보 컬럼 추가';

MERGE (n:Concept {id: '관계_레벨'})
SET     n.name = '관계 레벨',
    n.name_kr = '관계 레벨',
    n.domain = 'DB',
    n.definition = '중복관계 추가';

// --- 관계 ---

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '정규화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '테이블_병합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '테이블_분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '테이블_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '컬럼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '테이블_레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '컬럼_레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '계산_컬럼_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '이력_컬럼_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Concept {id: '관계_레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Document {id: 'DB_064'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'denormalization'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이블_병합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이블_분할'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이블_추가'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컬럼'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이블_레벨'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컬럼_레벨'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산_컬럼_추가'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이력_컬럼_추가'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계_레벨'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_065: SQL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_065'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: '비절차적/표준화'})
SET     n.name = '비절차적/표준화',
    n.name_kr = '비절차적/표준화',
    n.domain = 'DB';

MERGE (n:Concept {id: '문법'})
SET     n.name = '문법',
    n.name_kr = '문법',
    n.domain = 'DB';

MERGE (n:Concept {id: '형식'})
SET     n.name = '형식',
    n.name_kr = '형식',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'sql'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Concept {id: '비절차적/표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문법'})
MERGE (b:Concept {id: '형식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Concept {id: '문법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Concept {id: '형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Document {id: 'DB_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비절차적/표준화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_066: Data Type, 제약조건
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_066'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_type,_제약조건'})
SET     n.name = 'Data Type, 제약조건',
    n.name_kr = 'Data Type, 제약조건',
    n.domain = 'DB';

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

// --- 관계 ---

MERGE (a:Concept {id: 'data_type,_제약조건'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_type,_제약조건'})
MERGE (b:Document {id: 'DB_066'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_type,_제약조건'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_067: DDL,DML,DCL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_067'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'ddl,dml,dcl'})
SET     n.name = 'DDL,DML,DCL',
    n.name_kr = 'DDL,DML,DCL',
    n.domain = 'DB';

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: 'dbms_간의_통신수단'})
SET     n.name = 'DBMS 간의 통신수단',
    n.name_kr = 'DBMS 간의 통신수단',
    n.domain = 'DB';

MERGE (n:Concept {id: 'ddl(정의:create'})
SET     n.name = 'DDL(정의:Create',
    n.name_kr = 'DDL(정의:Create',
    n.domain = 'DB';

MERGE (n:Concept {id: 'alter'})
SET     n.name = 'Alter',
    n.name_kr = 'Alter',
    n.domain = 'DB',
    n.aliases = ['Alter'];

MERGE (n:Concept {id: 'drop)'})
SET     n.name = 'Drop)',
    n.name_kr = 'Drop)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'dml(조작:select'})
SET     n.name = 'DML(조작:Select',
    n.name_kr = 'DML(조작:Select',
    n.domain = 'DB';

MERGE (n:Concept {id: 'insert'})
SET     n.name = 'Insert',
    n.name_kr = 'Insert',
    n.domain = 'DB',
    n.aliases = ['Insert'];

MERGE (n:Concept {id: 'update'})
SET     n.name = 'Update',
    n.name_kr = 'Update',
    n.domain = 'DB',
    n.aliases = ['Update'];

MERGE (n:Concept {id: 'delete)'})
SET     n.name = 'Delete)',
    n.name_kr = 'Delete)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'dcl(제어:commit'})
SET     n.name = 'DCL(제어:Commit',
    n.name_kr = 'DCL(제어:Commit',
    n.domain = 'DB';

MERGE (n:Concept {id: 'rollback'})
SET     n.name = 'Rollback',
    n.name_kr = 'Rollback',
    n.domain = 'DB',
    n.aliases = ['Rollback'];

MERGE (n:Concept {id: 'grant'})
SET     n.name = 'Grant',
    n.name_kr = 'Grant',
    n.domain = 'DB',
    n.aliases = ['Grant'];

MERGE (n:Concept {id: 'revoke)'})
SET     n.name = 'Revoke)',
    n.name_kr = 'Revoke)',
    n.domain = 'DB';

MERGE (n:Concept {id: '구조적'})
SET     n.name = '구조적',
    n.name_kr = '구조적',
    n.domain = 'DB',
    n.definition = '논리적 데이터구조';

MERGE (n:Concept {id: '물리적_데이터구조'})
SET     n.name = '물리적 데이터구조',
    n.name_kr = '물리적 데이터구조',
    n.domain = 'DB',
    n.definition = '물리적 데이터 구조를 정의(내부 스키마 기술)';

MERGE (n:Concept {id: '기본특징'})
SET     n.name = '기본특징',
    n.name_kr = '기본특징',
    n.domain = 'DB',
    n.definition = '컴퓨터와 이해도 증가';

MERGE (n:Concept {id: 'auto_commit사용'})
SET     n.name = 'Auto Commit사용',
    n.name_kr = 'Auto Commit사용',
    n.domain = 'DB',
    n.definition = '명령 실행 후 기본적으로 Auto Commit (트랜잭션의 끝으로 간주)';

MERGE (n:Concept {id: 'not_null'})
SET     n.name = 'NOT NULL',
    n.name_kr = 'NOT NULL',
    n.domain = 'DB',
    n.definition = 'Null의 값을 가지면 안됨',
    n.aliases = ['NOT NULL'];

MERGE (n:Concept {id: 'unique'})
SET     n.name = 'UNIQUE',
    n.name_kr = 'UNIQUE',
    n.domain = 'DB',
    n.definition = '데이터가 유일함을 보장',
    n.aliases = ['UNIQUE'];

MERGE (n:Concept {id: 'primary_key'})
SET     n.name = 'PRIMARY KEY',
    n.name_kr = 'PRIMARY KEY',
    n.domain = 'DB',
    n.definition = '기본키',
    n.aliases = ['PRIMARY KEY'];

MERGE (n:Concept {id: 'forign_key'})
SET     n.name = 'FORIGN KEY',
    n.name_kr = 'FORIGN KEY',
    n.domain = 'DB',
    n.definition = '외래키(외부키)',
    n.aliases = ['FORIGN KEY'];

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = '데이터 보안',
    n.domain = 'DB',
    n.definition = '불법적인 사용자로부터 데이터를 보호',
    n.aliases = ['Security', '데이터 보안'];

MERGE (n:Metric {id: 'integrity'})
SET     n.name = 'Integrity',
    n.name_kr = '무결성',
    n.domain = 'DB',
    n.definition = '데이터의 정확성 유지',
    n.aliases = ['Integrity', '무결성'];

MERGE (n:Concept {id: 'recovery'})
SET     n.name = 'Recovery',
    n.name_kr = '회복',
    n.domain = 'DB',
    n.definition = '시스템 장애에 대비',
    n.aliases = ['Recovery', '회복'];

MERGE (n:Concept {id: 'concurrency_control'})
SET     n.name = 'Concurrency Control',
    n.name_kr = '병행수행제어',
    n.domain = 'DB',
    n.definition = '여러 사용자가 DB에 동시 접근 가능(사용)',
    n.aliases = ['Concurrency Control', '병행수행제어'];

// --- 관계 ---

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'dbms_간의_통신수단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'ddl(정의:create'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'alter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'drop)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'dml(조작:select'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'insert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'update'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'delete)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'dcl(제어:commit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'rollback'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'grant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'revoke)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: '구조적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: '물리적_데이터구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: '기본특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'auto_commit사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'not_null'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'unique'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'primary_key'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'forign_key'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Metric {id: 'integrity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'recovery'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Concept {id: 'concurrency_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Document {id: 'DB_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ddl,dml,dcl'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dbms_간의_통신수단'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ddl(정의:create'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alter'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drop)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dml(조작:select'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'insert'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'update'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delete)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dcl(제어:commit'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rollback'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grant'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'revoke)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_데이터구조'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본특징'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'auto_commit사용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'not_null'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unique'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'primary_key'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'forign_key'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'integrity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concurrency_control'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_069.2: CASCADE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_069.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'cascade'})
SET     n.name = 'CASCADE',
    n.name_kr = 'CASCADE',
    n.domain = 'DB',
    n.aliases = ['CASCADE'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'cascade'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cascade'})
MERGE (b:Document {id: 'DB_069.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cascade'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_069.3: Truncate
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_069.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'truncate'})
SET     n.name = 'Truncate',
    n.name_kr = 'Truncate',
    n.domain = 'DB',
    n.aliases = ['Truncate'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: 'delete'})
SET     n.name = 'DELETE',
    n.name_kr = 'DELETE',
    n.domain = 'DB',
    n.aliases = ['DELETE'];

// --- 관계 ---

MERGE (a:Concept {id: 'truncate'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'delete'})
MERGE (b:Concept {id: 'truncate'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'truncate'})
MERGE (b:Concept {id: 'delete'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'truncate'})
MERGE (b:Document {id: 'DB_069.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'truncate'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delete'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_073: 동적(Dynamic) SQL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_073'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'dynamic'})
SET     n.name = '동적(Dynamic) SQL',
    n.name_kr = '동적(Dynamic) SQL',
    n.domain = 'DB';

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: 'static'})
SET     n.name = 'Static',
    n.name_kr = 'Static',
    n.domain = 'DB',
    n.aliases = ['Static'];

MERGE (n:Concept {id: 'runtime'})
SET     n.name = 'runtime',
    n.name_kr = 'runtime',
    n.domain = 'DB',
    n.aliases = ['runtime'];

MERGE (n:Concept {id: 'string형_변수'})
SET     n.name = 'string형 변수',
    n.name_kr = 'string형 변수',
    n.domain = 'DB';

MERGE (n:Concept {id: 'runtime_시_구문_확정'})
SET     n.name = 'Runtime 시 구문 확정',
    n.name_kr = 'Runtime 시 구문 확정',
    n.domain = 'DB',
    n.definition = 'Precompile 시점에 구문이 확정되지 않아 Syntax 체크 불가함';

MERGE (n:Concept {id: '바인드_변수_활용_가능'})
SET     n.name = '바인드 변수 활용 가능',
    n.name_kr = '바인드 변수 활용 가능',
    n.domain = 'DB',
    n.definition = 'Static SQL 과 동일하게 바인드 변수 활용 시 소프트 파싱 활용으로 라이브러리 캐시 효율 향상 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: 'static'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: 'runtime'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: 'string형_변수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: 'runtime_시_구문_확정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Concept {id: '바인드_변수_활용_가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Document {id: 'DB_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'static'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'runtime'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'string형_변수'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'runtime_시_구문_확정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바인드_변수_활용_가능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_077: Statement
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_077'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'statement'})
SET     n.name = 'Statement',
    n.name_kr = 'Statement',
    n.domain = 'DB',
    n.aliases = ['Statement'];

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: 'preparedstatement'})
SET     n.name = 'PreparedStatement',
    n.name_kr = 'PreparedStatement',
    n.domain = 'DB',
    n.aliases = ['PreparedStatement'];

MERGE (n:Concept {id: 'soft_parsing'})
SET     n.name = 'soft Parsing',
    n.name_kr = 'soft Parsing',
    n.domain = 'DB',
    n.aliases = ['soft Parsing'];

MERGE (n:Concept {id: 'createstatement'})
SET     n.name = 'createStatement()',
    n.name_kr = 'createStatement()',
    n.domain = 'DB';

MERGE (n:Concept {id: 'executequery'})
SET     n.name = 'executeQuery()',
    n.name_kr = 'executeQuery()',
    n.domain = 'DB';

MERGE (n:Concept {id: 'executeupdate'})
SET     n.name = 'executeUpdate()',
    n.name_kr = 'executeUpdate()',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'preparedstatement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'soft_parsing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'createstatement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'executequery'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'executeupdate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'preparedstatement'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'preparedstatement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'preparedstatement'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Concept {id: 'preparedstatement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Document {id: 'DB_077'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'statement'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preparedstatement'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soft_parsing'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'createstatement'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'executequery'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'executeupdate'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_078.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_078.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_079: JOIN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_079'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'join'})
SET     n.name = 'JOIN',
    n.name_kr = 'JOIN',
    n.domain = 'DB',
    n.aliases = ['JOIN'];

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: 'inner_join'})
SET     n.name = 'Inner Join',
    n.name_kr = '내부조인',
    n.domain = 'DB',
    n.definition = '조인 할 테이블간에 조인 key 값이 상호 일치하는 Tuple(튜플)을 결과값으로 반환',
    n.aliases = ['Inner Join', '내부조인'];

MERGE (n:Concept {id: 'outer_join'})
SET     n.name = 'Outer Join',
    n.name_kr = '외부조인',
    n.domain = 'DB',
    n.definition = '조인 Key 값에 대응되는 Row 가 없는 경우 제거하지 않고 Null Tuple(튜플)로 추출하는 연산 (Left/Right/Full Join)',
    n.aliases = ['Outer Join', '외부조인'];

MERGE (n:Concept {id: 'equal_join'})
SET     n.name = 'Equal Join',
    n.name_kr = '동등조인',
    n.domain = 'DB',
    n.definition = '특정 속성을 비교 연산 하여 동일한 값을 추출하는 연산',
    n.aliases = ['Equal Join', '동등조인'];

MERGE (n:Concept {id: 'natural_join'})
SET     n.name = 'Natural Join',
    n.name_kr = '자연조인',
    n.domain = 'DB',
    n.definition = '동등조인에서 조인에 참여한 속성이 두번 나오지 않도록 두번째 속성을 제거한 결과값을 반환하는 연산',
    n.aliases = ['Natural Join', '자연조인'];

MERGE (n:Concept {id: 'cross_join'})
SET     n.name = 'Cross Join',
    n.name_kr = '크로스조인',
    n.domain = 'DB',
    n.definition = '연결되는 모든 테이블들의 모든 행들의 모든 조합을 결과에 포함',
    n.aliases = ['Cross Join', '크로스조인'];

MERGE (n:Concept {id: 'semi_join'})
SET     n.name = 'Semi Join',
    n.name_kr = '세미조인',
    n.domain = 'DB',
    n.definition = '조인시 특정 조건에 부합된다면 더는 연산을 수행하지 않는 것',
    n.aliases = ['Semi Join', '세미조인'];

MERGE (n:Concept {id: 'sub_query'})
SET     n.name = 'Sub Query',
    n.name_kr = '서브쿼리',
    n.domain = 'DB',
    n.aliases = ['Sub Query', '서브쿼리'];

MERGE (n:Concept {id: 'inner_join_equi_join'})
SET     n.name = 'INNER JOIN -Equi Join',
    n.name_kr = 'INNER JOIN -Equi Join',
    n.domain = 'DB',
    n.definition = 'Select boys.boy, toys.toy From boys INNER JOIN toys ON boys.toy_id = toys_toy.id;',
    n.aliases = ['INNER JOIN -Equi Join'];

MERGE (n:Concept {id: 'inner_join_non_equi_join'})
SET     n.name = 'INNER JOIN -Non-Equi Join',
    n.name_kr = 'INNER JOIN -Non-Equi Join',
    n.domain = 'DB',
    n.definition = '조인조건은 동등( = )이외의 연산자 - BETWEEN AND, IS NULL, IS NOT NULL, IN, NOT IN',
    n.aliases = ['INNER JOIN -Non-Equi Join'];

MERGE (n:Concept {id: 'self_join'})
SET     n.name = 'Self Join',
    n.name_kr = 'Self Join',
    n.domain = 'DB',
    n.definition = '하나의 테이블에서 조인이 일어나는 것 Select c1.name, c2.name AS boss From clown_info c1 Inner Join clown_info c2 ON c1.boss_id = c2.id;',
    n.aliases = ['Self Join'];

MERGE (n:Concept {id: 'cartesian_product'})
SET     n.name = 'Cartesian Product',
    n.name_kr = 'Cartesian Product',
    n.domain = 'DB',
    n.definition = 'CROSS JOIN절을 이용하여 Cartesian Product 값 Select t.toy, b.boy From toys AS t CROSS JOIN boys AS b;',
    n.aliases = ['Cartesian Product'];

// --- 관계 ---

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'sql'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'inner_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'outer_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'equal_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'natural_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'cross_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'semi_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'sub_query'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'sub_query'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'sub_query'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'sub_query'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'inner_join_equi_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'inner_join_non_equi_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'self_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Concept {id: 'cartesian_product'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Document {id: 'DB_079'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inner_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'outer_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'equal_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'natural_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cross_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'semi_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sub_query'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inner_join_equi_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inner_join_non_equi_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cartesian_product'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_080: Join 유형
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_080'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'join_유형'})
SET     n.name = 'Join 유형',
    n.name_kr = 'Join 유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'sql'})
SET     n.name = 'SQL',
    n.name_kr = 'SQL',
    n.domain = 'DB',
    n.aliases = ['SQL'];

MERGE (n:Concept {id: 'nested_loop_join'})
SET     n.name = 'Nested Loop Join',
    n.name_kr = 'Nested Loop Join',
    n.domain = 'DB',
    n.aliases = ['Nested Loop Join'];

MERGE (n:Concept {id: 'sort_merge_join'})
SET     n.name = 'Sort Merge Join',
    n.name_kr = 'Sort Merge Join',
    n.domain = 'DB',
    n.aliases = ['Sort Merge Join'];

MERGE (n:Concept {id: 'hash_join'})
SET     n.name = 'Hash Join',
    n.name_kr = 'Hash Join',
    n.domain = 'DB',
    n.aliases = ['Hash Join'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: '동작원리'})
SET     n.name = '동작원리',
    n.name_kr = '동작원리',
    n.domain = 'DB',
    n.definition = 'TAB1과 TAB2가 Join한다고 가정할 때 TAB1을 선정한 뒤에 생성된 결과가 TAB2의 입력조건으로 사용되는 Join';

MERGE (n:Concept {id: '선행적'})
SET     n.name = '선행적',
    n.name_kr = '선행적',
    n.domain = 'DB',
    n.definition = '먼저 액세스되는 테이블의 처리 범위에 의해 처리량 결정';

MERGE (n:Concept {id: '종속적'})
SET     n.name = '종속적',
    n.name_kr = '종속적',
    n.domain = 'DB',
    n.definition = '나중에 처리되는 테이블은 앞서 처리된 값을 받아 액세스';

MERGE (n:Concept {id: '랜덤액세스'})
SET     n.name = '랜덤액세스',
    n.name_kr = '랜덤액세스',
    n.domain = 'DB',
    n.definition = '주로 랜덤 액세스 방식으로 처리 - 선행 테이블의 인덱스를 액세스하는 방법은 첫 번째 로우만 랜덤 액세스이고 나머지는 스캔이지만 연결작업은 모두 랜덤 액세스로 수행';

MERGE (n:Concept {id: '선택적'})
SET     n.name = '선택적',
    n.name_kr = '선택적',
    n.domain = 'DB',
    n.definition = '주어진 조건에 있는 모든 컬럼들이 인덱스를 가지고 있더라도 모두 사용되지 않으며 연결되는 방향에 따라 사용되는 인덱스들이 전혀 달라질 가능성 존재';

MERGE (n:Concept {id: '방향성'})
SET     n.name = '방향성',
    n.name_kr = '방향성',
    n.domain = 'DB',
    n.definition = '연결고리의 인덱스 유무에 따라 액세스 방향 및 수행속도에 많은 차이 발생';

MERGE (n:Concept {id: '부분범위처리'})
SET     n.name = '부분범위처리',
    n.name_kr = '부분범위처리',
    n.domain = 'DB',
    n.definition = '선행하는 집합의 하나씩의 로우를 대상으로 연결을 진행하기 때문에 부분범위 처리조건을 만족하고 있다면 운반단위가 채워지는 순간에 우선 멈추는 것이 가능';

MERGE (n:Concept {id: '체크조건의_영향력'})
SET     n.name = '체크조건의 영향력',
    n.name_kr = '체크조건의 영향력',
    n.domain = 'DB',
    n.definition = '연결작업을 수행한 후 마지막으로 체크되는 조건은 경우에 따라 수행속도에 미치는 영향 발생';

MERGE (n:Concept {id: '독립적'})
SET     n.name = '독립적',
    n.name_kr = '독립적',
    n.domain = 'DB',
    n.definition = '각 집합이 준비작업을 할 때 다른 집합에서 처리한 결과를 제공받지 않는다.';

MERGE (n:Concept {id: '전체범위처리'})
SET     n.name = '전체범위처리',
    n.name_kr = '전체범위처리',
    n.domain = 'DB',
    n.definition = '정렬 준비가 완료된 후에 조인을 시작할 수 있어 부분범위처리 불가능';

MERGE (n:Concept {id: '스캔방식'})
SET     n.name = '스캔방식',
    n.name_kr = '스캔방식',
    n.domain = 'DB',
    n.definition = '각자의 처리범위를 줄이기 위해서 인덱스를 사용하는 경우만 랜덤 액세스가 발생할 수 있으나 연결하는 머지 작업은 스캔 방식 이용';

MERGE (n:Concept {id: '무방향성'})
SET     n.name = '무방향성',
    n.name_kr = '무방향성',
    n.domain = 'DB',
    n.definition = '조인의 방향과는 거의 무관';

MERGE (n:Concept {id: '주요유형'})
SET     n.name = '주요유형',
    n.name_kr = '주요유형',
    n.domain = 'DB',
    n.definition = 'Nested Loops 형 세미조인';

MERGE (n:Concept {id: 'sort_merge_형_세미조인'})
SET     n.name = 'Sort Merge 형 세미조인',
    n.name_kr = 'Sort Merge 형 세미조인',
    n.domain = 'DB',
    n.definition = '연결고리의 이상이 발생하거나 대량의 데이터를 연결해야 할때는 세미 조인에서도 SortMerge 형 조인을 적용 - SortMerge 형태로 수행해야하는 이유와 효과는 조인과 거의 동일';

MERGE (n:Concept {id: '해쉬형_세미조인'})
SET     n.name = '해쉬형 세미조인',
    n.name_kr = '해쉬형 세미조인',
    n.domain = 'DB',
    n.definition = '필터 형식으로 처리되는 세미 조인은 랜덤 위주의 액세스가 발생하므로 만약 대량의 연결을 시도했을 때 커다란 부담이 될 가능성이 존재 - 위 문제를 해결하기 위해 Sort Merge 형으로 유도할 수 있지만 일반적으로 해쉬 조인이 수행속도가 유리하여 이를 활용 - 서브쿼리에 ‘HASH_SJ’ 힌트를 사용하여 세미 조인이 해쉬형으로 수행되도록 유도';

MERGE (n:Concept {id: '부정형_세미조인'})
SET     n.name = '부정형 세미조인',
    n.name_kr = '부정형 세미조인',
    n.domain = 'DB',
    n.definition = '조인의 연결고리 조건에 부정형(Not)이 들어 있다면 양쪽 집합을 연결하는 것 자체가 이미 논리적으로 어려움';

MERGE (n:Concept {id: 'nested_join'})
SET     n.name = 'Nested Join',
    n.name_kr = 'Nested Join',
    n.domain = 'DB',
    n.aliases = ['Nested Join'];

// --- 관계 ---

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'nested_loop_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'sort_merge_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'hash_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '선행적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '종속적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '랜덤액세스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '선택적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '방향성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '부분범위처리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '체크조건의_영향력'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '독립적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '전체범위처리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '스캔방식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '무방향성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '주요유형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'sort_merge_형_세미조인'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '해쉬형_세미조인'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: '부정형_세미조인'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nested_join'})
MERGE (b:Concept {id: 'sort_merge_join'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nested_join'})
MERGE (b:Concept {id: 'hash_join'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'nested_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sort_merge_join'})
MERGE (b:Concept {id: 'hash_join'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'sort_merge_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Concept {id: 'hash_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Document {id: 'DB_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'join_유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nested_loop_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sort_merge_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hash_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선행적'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속적'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '랜덤액세스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선택적'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방향성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분범위처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체크조건의_영향력'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립적'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전체범위처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스캔방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무방향성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sort_merge_형_세미조인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해쉬형_세미조인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정형_세미조인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nested_join'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_089: index
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_089'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'index'})
SET     n.name = 'index',
    n.name_kr = 'index',
    n.domain = 'DB',
    n.aliases = ['index'];

MERGE (n:Concept {id: 'db성능'})
SET     n.name = 'DB성능(튜닝)',
    n.name_kr = 'DB성능(튜닝)',
    n.domain = 'DB';

MERGE (n:Concept {id: '논리적인_유비(유일'})
SET     n.name = '논리적인 유비(유일',
    n.name_kr = '논리적인 유비(유일',
    n.domain = 'DB';

MERGE (n:Concept {id: '비유일)친구_군비(군집'})
SET     n.name = '비유일)친구 군비(군집',
    n.name_kr = '비유일)친구 군비(군집',
    n.domain = 'DB';

MERGE (n:Concept {id: '비군집)가_말했다._저희(조밀'})
SET     n.name = '비군집)가 말했다. 저희(조밀',
    n.name_kr = '비군집)가 말했다. 저희(조밀',
    n.domain = 'DB';

MERGE (n:Concept {id: '희소)_단복(단일'})
SET     n.name = '희소) 단복(단일',
    n.name_kr = '희소) 단복(단일',
    n.domain = 'DB';

MERGE (n:Concept {id: '복합)은_함수기반이다'})
SET     n.name = '복합)은 함수기반이다',
    n.name_kr = '복합)은 함수기반이다',
    n.domain = 'DB';

MERGE (n:Concept {id: '논리적_인덱스'})
SET     n.name = '논리적 인덱스',
    n.name_kr = '논리적 인덱스',
    n.domain = 'DB',
    n.definition = 'Clustered Index';

MERGE (n:Concept {id: 'non_clustered_index'})
SET     n.name = 'Non-Clustered Index',
    n.name_kr = 'Non-Clustered Index',
    n.domain = 'DB',
    n.definition = '데이터 레코드의 물리적 순서가 인덱스의 순서와 상관없이 저장',
    n.aliases = ['Non-Clustered Index'];

MERGE (n:Concept {id: 'unique_index'})
SET     n.name = 'Unique Index',
    n.name_kr = 'Unique Index',
    n.domain = 'DB',
    n.definition = '인덱스 컬럼에 대해 중복된 값을 허용하지 않음',
    n.aliases = ['Unique Index'];

MERGE (n:Concept {id: 'composite_index'})
SET     n.name = 'Composite Index',
    n.name_kr = 'Composite Index',
    n.domain = 'DB',
    n.definition = '여러 개의 컬럼 조합으로 생성된 인덱스',
    n.aliases = ['Composite Index'];

MERGE (n:Concept {id: '물리적_인덱스'})
SET     n.name = '물리적 인덱스',
    n.name_kr = '물리적 인덱스',
    n.domain = 'DB',
    n.definition = 'Partition Index';

MERGE (n:Concept {id: 'bitmap_index'})
SET     n.name = 'Bitmap Index',
    n.name_kr = 'Bitmap Index',
    n.domain = 'DB',
    n.definition = 'Bit를 이용하여 컬럼 값을 저장, 이를 이용하여 ROWID를 자동생성',
    n.aliases = ['Bitmap Index'];

MERGE (n:Concept {id: 'reverse_index'})
SET     n.name = 'Reverse Index',
    n.name_kr = 'Reverse Index',
    n.domain = 'DB',
    n.definition = '키 값을 뒤에서부터 역순으로 뒤집은 B*Tree 인덱스',
    n.aliases = ['Reverse Index'];

MERGE (n:Concept {id: 'descending_index'})
SET     n.name = 'Descending Index',
    n.name_kr = 'Descending Index',
    n.domain = 'DB',
    n.definition = '내림차순으로 정렬된 데이터를 위한 인덱스',
    n.aliases = ['Descending Index'];

MERGE (n:Concept {id: '트리_기반_인덱스'})
SET     n.name = '트리 기반 인덱스',
    n.name_kr = '트리 기반 인덱스',
    n.domain = 'DB',
    n.definition = '방식';

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'DB',
    n.definition = 'Root, Branch, Leaf Block';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: '해쉬_기반_인덱스'})
SET     n.name = '해쉬 기반 인덱스',
    n.name_kr = '해쉬 기반 인덱스',
    n.domain = 'DB',
    n.definition = '검색키 값에 직접 산술적인 연산을 적용하여 데이터가 저장되어 있는 버킷의 주소를 계산함으로써 데이터에 접근하는 방법';

MERGE (n:Concept {id: '해시_함수'})
SET     n.name = '해시 함수',
    n.name_kr = '해시 함수',
    n.domain = 'DB',
    n.definition = '검색 키 값을 입력하면, 레코드에 대한 디스크 블록 주소(버킷)를 반환하는 함수';

MERGE (n:Concept {id: '버킷'})
SET     n.name = '버킷',
    n.name_kr = '버킷',
    n.domain = 'DB',
    n.definition = '해시파일구조에서 사용하는 한 개 이상의 레코드를 저장할 수 있는 공간의 단위';

MERGE (n:Concept {id: '동작원리'})
SET     n.name = '동작원리',
    n.name_kr = '동작원리',
    n.domain = 'DB',
    n.definition = '1) 데이터 값에 대한 해시 값 생성';

MERGE (n:Concept {id: '2)_해시_값으로_버킷_구성'})
SET     n.name = '2) 해시 값으로 버킷 구성',
    n.name_kr = '2) 해시 값으로 버킷 구성',
    n.domain = 'DB',
    n.definition = '생성된 해시 값을 통해 버킷의 해시 레코드 및 해당 데이터가 저장되어 있는 레코드 주소 쌍 구성';

MERGE (n:Concept {id: '3)_동일_값_검색_수행'})
SET     n.name = '3) 동일 값 검색 수행',
    n.name_kr = '3) 동일 값 검색 수행',
    n.domain = 'DB',
    n.definition = '검색하고자 하는 동일 값 데이터에 대하여 해시 값을 생성해 레코드 주소 찾아내어 검색';

MERGE (n:Concept {id: '정적인덱싱'})
SET     n.name = '정적인덱싱',
    n.name_kr = '정적인덱싱',
    n.domain = 'DB';

MERGE (n:Concept {id: '동적인덱싱'})
SET     n.name = '동적인덱싱',
    n.name_kr = '동적인덱싱',
    n.domain = 'DB';

MERGE (n:Concept {id: '정적_인덱싱'})
SET     n.name = '정적 인덱싱',
    n.name_kr = '정적 인덱싱',
    n.domain = 'DB';

MERGE (n:Concept {id: '동적_인덱싱'})
SET     n.name = '동적 인덱싱',
    n.name_kr = '동적 인덱싱',
    n.domain = 'DB';

MERGE (n:Concept {id: '군집_/_비군집'})
SET     n.name = '군집 / 비군집',
    n.name_kr = '군집 / 비군집',
    n.domain = 'DB',
    n.definition = '군집 인덱스 (Clustered Index)';

MERGE (n:Concept {id: '밀집_/_희소'})
SET     n.name = '밀집 / 희소',
    n.name_kr = '밀집 / 희소',
    n.domain = 'DB',
    n.definition = '밀집(조밀)인덱스 (Dense Index)';

MERGE (n:Concept {id: 'sparse_index'})
SET     n.name = 'Sparse Index',
    n.name_kr = '희소인덱스',
    n.domain = 'DB',
    n.definition = '데이터 파일의 레코드 그룹, 또는 데이터 블록에 하나의 엔트리가 만들어지는 인덱스 - 중복된 키를 가진 클러스터드 인덱스에서 희귀 인덱스는 각 블록 내의 가장 빈도가 낮은 검색 키를 지시한다.',
    n.aliases = ['Sparse Index', '희소인덱스'];

MERGE (n:Concept {id: '유일_/_비유일'})
SET     n.name = '유일 / 비유일',
    n.name_kr = '유일 / 비유일',
    n.domain = 'DB',
    n.definition = 'Unique Index';

MERGE (n:Concept {id: 'non_unique_index'})
SET     n.name = 'Non-Unique Index',
    n.name_kr = 'Non-Unique Index',
    n.domain = 'DB',
    n.definition = '인덱스 컬럼에 대해 중복된 값을 허용 - 인덱스 키는 연관된 테이블의 여러 행을 가리킬 수 있음',
    n.aliases = ['Non-Unique Index'];

MERGE (n:Concept {id: '단일_/_복합'})
SET     n.name = '단일 / 복합',
    n.name_kr = '단일 / 복합',
    n.domain = 'DB',
    n.definition = 'Single Index';

MERGE (n:Concept {id: '함수_기반'})
SET     n.name = '함수 기반',
    n.name_kr = '함수 기반',
    n.domain = 'DB',
    n.definition = 'Function-based index';

MERGE (n:Concept {id: 'clustered_index'})
SET     n.name = 'Clustered Index',
    n.name_kr = 'Clustered Index',
    n.domain = 'DB',
    n.aliases = ['Clustered Index'];

MERGE (n:Concept {id: '인덱스_순서'})
SET     n.name = '인덱스 순서',
    n.name_kr = '인덱스 순서',
    n.domain = 'DB',
    n.definition = '액세스 패스 조건에 많이 사용되는 컬럼 우선 - ‘=’ 조건으로 사용되는 칼럼을 우선 - 분포도가 좋은 칼럼을 우선 - 자주 사용되는 sort의 순서로 결정 - 해당 칼럼의 동일한 값이 적을수록 분포도가 좋다고 표현 함';

MERGE (n:Concept {id: '인덱스_추가'})
SET     n.name = '인덱스 추가',
    n.name_kr = '인덱스 추가',
    n.domain = 'DB',
    n.definition = '단독/싱글 인덱스의 경우 분포도가 좋은 칼럼은 단독으로 생성하여 활용도를 향상 시킬 수 있음 - 결합/복제 인덱스의 경우 분포도는 우선 순위가 높은 편이 아님 - 논리적 모델링에서 릴레이션이 만들어져 물리적 모델링에서 외부키(foreign key)로 사용된 칼럼에 대해서는 인덱스 생성을 권고. - 모든 외부키에 대하여 Lock 결합을 피하기 위해 인덱스가';

// --- 관계 ---

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'db성능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '논리적인_유비(유일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '비유일)친구_군비(군집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '비군집)가_말했다._저희(조밀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '희소)_단복(단일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '복합)은_함수기반이다'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '논리적_인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'non_clustered_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'unique_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'composite_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '물리적_인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'bitmap_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'reverse_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'descending_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '트리_기반_인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '해쉬_기반_인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '해시_함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '버킷'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '2)_해시_값으로_버킷_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '3)_동일_값_검색_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정적인덱싱'})
MERGE (b:Concept {id: '동적인덱싱'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '정적인덱싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '동적인덱싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정적_인덱싱'})
MERGE (b:Concept {id: '동적_인덱싱'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '정적_인덱싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '동적_인덱싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '군집_/_비군집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '밀집_/_희소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'sparse_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '유일_/_비유일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'non_unique_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '단일_/_복합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '함수_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clustered_index'})
MERGE (b:Concept {id: 'non_clustered_index'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'clustered_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: 'non_clustered_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '인덱스_순서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Concept {id: '인덱스_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Document {id: 'DB_089'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db성능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리적인_유비(유일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비유일)친구_군비(군집'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비군집)가_말했다._저희(조밀'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '희소)_단복(단일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복합)은_함수기반이다'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리적_인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_clustered_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unique_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'composite_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bitmap_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reverse_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'descending_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리_기반_인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해쉬_기반_인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해시_함수'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버킷'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_해시_값으로_버킷_구성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_동일_값_검색_수행'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적인덱싱'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적인덱싱'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적_인덱싱'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적_인덱싱'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '군집_/_비군집'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '밀집_/_희소'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sparse_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유일_/_비유일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_unique_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_/_복합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함수_기반'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clustered_index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스_순서'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스_추가'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_090: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_090'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_091: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_091'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_093: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_093'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_094: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_094'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_095.1: 3V
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_095.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '3v'})
SET     n.name = '3V',
    n.name_kr = '3V',
    n.domain = 'DB';

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: '3v(volume'})
SET     n.name = '3V(Volume',
    n.name_kr = '3V(Volume',
    n.domain = 'DB';

MERGE (n:Concept {id: 'variety'})
SET     n.name = 'Variety',
    n.name_kr = 'Variety',
    n.domain = 'DB',
    n.aliases = ['Variety'];

MERGE (n:Concept {id: 'velocity)'})
SET     n.name = 'Velocity)',
    n.name_kr = 'Velocity)',
    n.domain = 'DB';

MERGE (n:Concept {id: '기존데이터'})
SET     n.name = '기존데이터',
    n.name_kr = '기존데이터',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: '3v(volume'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: 'variety'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: 'velocity)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Concept {id: '기존데이터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Concept {id: '기존데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Document {id: 'DB_095.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3v'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3v(volume'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'variety'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'velocity)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_095.2: 3A 성질 가진 스마트 데이터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_095.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '3a_성질_가진_스마트_데이터'})
SET     n.name = '3A 성질 가진 스마트 데이터',
    n.name_kr = '3A 성질 가진 스마트 데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: 'smart_data'})
SET     n.name = '스마트 데이터',
    n.name_kr = '스마트 데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: '정확성'})
SET     n.name = '정확성',
    n.name_kr = '정확성',
    n.domain = 'DB';

MERGE (n:Concept {id: '행동성'})
SET     n.name = '행동성',
    n.name_kr = '행동성',
    n.domain = 'DB';

MERGE (n:Concept {id: '민첩성_(accurate'})
SET     n.name = '민첩성 (Accurate',
    n.name_kr = '민첩성 (Accurate',
    n.domain = 'DB';

MERGE (n:Concept {id: 'actionable'})
SET     n.name = 'Actionable',
    n.name_kr = 'Actionable',
    n.domain = 'DB',
    n.aliases = ['Actionable'];

MERGE (n:Method {id: 'agile)'})
SET     n.name = 'Agile)',
    n.name_kr = 'Agile)',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Concept {id: 'smart_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Concept {id: '정확성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Concept {id: '행동성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Concept {id: '민첩성_(accurate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Concept {id: 'actionable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Method {id: 'agile)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Document {id: 'DB_095.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3a_성질_가진_스마트_데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정확성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행동성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민첩성_(accurate'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'actionable'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_095.3: CQL(Continuous Query Language)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_095.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'continuous_query_language'})
SET     n.name = 'Continuous Query Language',
    n.name_kr = 'CQL',
    n.domain = 'DB',
    n.aliases = ['Continuous Query Language', 'CQL'];

MERGE (n:Concept {id: 'smart_data'})
SET     n.name = '스마트 데이터',
    n.name_kr = '스마트 데이터',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'continuous_query_language'})
MERGE (b:Concept {id: 'smart_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'continuous_query_language'})
MERGE (b:Document {id: 'DB_095.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'continuous_query_language'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_095.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_095.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_096.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_096.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_096.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_096.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_096.3: ISO 20547
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_096.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_20547'})
SET     n.name = 'ISO 20547',
    n.name_kr = 'ISO 20547',
    n.domain = 'DB',
    n.aliases = ['ISO 20547'];

MERGE (n:Concept {id: '데이터베이스'})
SET     n.name = '데이터베이스',
    n.name_kr = '데이터베이스',
    n.domain = 'DB';

MERGE (n:Standard {id: 'iso_20549'})
SET     n.name = 'ISO 20549',
    n.name_kr = 'ISO 20549',
    n.domain = 'DB',
    n.aliases = ['ISO 20549'];

MERGE (n:Concept {id: '빅데이터_시스템_간_상호호환성_보장'})
SET     n.name = '빅데이터 시스템 간 상호호환성 보장',
    n.name_kr = '빅데이터 시스템 간 상호호환성 보장',
    n.domain = 'DB';

MERGE (n:Concept {id: '유즈케이스'})
SET     n.name = '유즈케이스',
    n.name_kr = '유즈케이스',
    n.domain = 'DB';

MERGE (n:Concept {id: '참조_아키텍처_–_빅데이터_참조구조'})
SET     n.name = '참조 아키텍처 – 빅데이터 참조구조',
    n.name_kr = '참조 아키텍처 – 빅데이터 참조구조',
    n.domain = 'DB';

MERGE (n:Concept {id: '빅데이터_시스템_공통구조'})
SET     n.name = '빅데이터 시스템 공통구조',
    n.name_kr = '빅데이터 시스템 공통구조',
    n.domain = 'DB';

MERGE (n:Concept {id: '표준명'})
SET     n.name = '표준명',
    n.name_kr = '표준명',
    n.domain = 'DB';

MERGE (n:Concept {id: '표준화_내용'})
SET     n.name = '표준화 내용',
    n.name_kr = '표준화 내용',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Standard {id: 'iso_20549'})
MERGE (b:Concept {id: '데이터베이스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '빅데이터_시스템_간_상호호환성_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '유즈케이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '참조_아키텍처_–_빅데이터_참조구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '빅데이터_시스템_공통구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준명'})
MERGE (b:Concept {id: '표준화_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '표준명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Concept {id: '표준화_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Document {id: 'DB_096.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_20547'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_20549'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_시스템_간_상호호환성_보장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유즈케이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참조_아키텍처_–_빅데이터_참조구조'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_시스템_공통구조'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준명'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화_내용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_097.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_097.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_097.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_097.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_097.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_097.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_098: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_098'})
SET doc.domain = 'DB';

// ================================================================
// DB 도메인 자동 생성 완료
// 노드: 293개
// 관계: 609개
// ================================================================