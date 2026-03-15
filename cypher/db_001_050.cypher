// ================================================================
// DB 도메인 (DB_001 ~ DB_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// DB_001: 1. 데이터베이스 정의
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_001'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '1._데이터베이스_정의'})
SET     n.name = '1. 데이터베이스 정의',
    n.name_kr = '1. 데이터베이스 정의',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db기본'})
SET     n.name = 'DB기본',
    n.name_kr = 'DB기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터베이스_정의'})
SET     n.name = '데이터베이스 정의',
    n.name_kr = '데이터베이스 정의',
    n.domain = 'DB';

MERGE (n:Concept {id: '통저운공'})
SET     n.name = '통저운공',
    n.name_kr = '통저운공',
    n.domain = 'DB';

MERGE (n:Concept {id: '실계동내'})
SET     n.name = '실계동내',
    n.name_kr = '실계동내',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '데이터베이스_정의'})
MERGE (b:Concept {id: 'db기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '1._데이터베이스_정의'})
MERGE (b:Concept {id: '통저운공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '1._데이터베이스_정의'})
MERGE (b:Concept {id: '실계동내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '1._데이터베이스_정의'})
MERGE (b:Document {id: 'DB_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '1._데이터베이스_정의'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스_정의'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통저운공'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실계동내'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_003: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_003'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_004: 데이터 독립성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_004'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_independency'})
SET     n.name = 'Data Independency',
    n.name_kr = '데이터 독립성',
    n.domain = 'DB',
    n.aliases = ['데이터 독립성'];

MERGE (n:Concept {id: 'db기본'})
SET     n.name = 'DB기본',
    n.name_kr = 'DB기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '외개내'})
SET     n.name = '외개내',
    n.name_kr = '외개내',
    n.domain = 'DB';

MERGE (n:Concept {id: '논리'})
SET     n.name = '논리',
    n.name_kr = '논리',
    n.domain = 'DB';

MERGE (n:Concept {id: '물리_독립성'})
SET     n.name = '물리 독립성',
    n.name_kr = '물리 독립성',
    n.domain = 'DB';

MERGE (n:Concept {id: '응논물'})
SET     n.name = '응논물',
    n.name_kr = '응논물',
    n.domain = 'DB';

MERGE (n:Concept {id: 'mapping'})
SET     n.name = 'Mapping',
    n.name_kr = '사상',
    n.domain = 'DB',
    n.aliases = ['Mapping', '사상'];

// --- 관계 ---

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: 'db기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: '외개내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: '논리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: '물리_독립성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: '응논물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Concept {id: 'mapping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Document {id: 'DB_004'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_independency'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외개내'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리_독립성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응논물'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mapping'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_006: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_006'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_007'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_008: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_008'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_009: 키(key) 유형
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_009'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'key'})
SET     n.name = '키(key) 유형',
    n.name_kr = '키(key) 유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db_기본'})
SET     n.name = 'DB 기본',
    n.name_kr = 'DB 기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '유최대'})
SET     n.name = '유최대',
    n.name_kr = '유최대',
    n.domain = 'DB';

MERGE (n:Concept {id: '후기대'})
SET     n.name = '후기대',
    n.name_kr = '후기대',
    n.domain = 'DB';

MERGE (n:Concept {id: 'uniqueness'})
SET     n.name = '유일성',
    n.name_kr = '유일성',
    n.domain = 'DB',
    n.definition = '속성의 집합인 키의 내용이 릴레이션 내에서 유일하다는 특성';

MERGE (n:Concept {id: 'not_null'})
SET     n.name = '최소성',
    n.name_kr = '최소성',
    n.domain = 'DB',
    n.definition = '키는 릴레이션 모든 튜플들은 유일하게 식별하기 위해 최소 속성들로 구성';

MERGE (n:Concept {id: '대표성'})
SET     n.name = '대표성',
    n.name_kr = '대표성',
    n.domain = 'DB',
    n.definition = '해당 Relation을 대표할 수 있는 속성';

// --- 관계 ---

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: 'db_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: '유최대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: '후기대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: 'uniqueness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: 'not_null'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Concept {id: '대표성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Document {id: 'DB_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유최대'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후기대'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uniqueness'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'not_null'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대표성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_010: 스키마, 인스턴스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_010'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '스키마,_인스턴스'})
SET     n.name = '스키마, 인스턴스',
    n.name_kr = '스키마, 인스턴스',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db기본'})
SET     n.name = 'DB기본',
    n.name_kr = 'DB기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '스키마_=_논리_스키마'})
SET     n.name = '스키마 = 논리 스키마',
    n.name_kr = '스키마 = 논리 스키마',
    n.domain = 'DB';

MERGE (n:Concept {id: '인스턴스_=_저장된_레코드_값'})
SET     n.name = '인스턴스 = 저장된 레코드 값',
    n.name_kr = '인스턴스 = 저장된 레코드 값',
    n.domain = 'DB';

MERGE (n:Concept {id: 'schema'})
SET     n.name = 'Schema',
    n.name_kr = '스키마',
    n.domain = 'DB',
    n.aliases = ['Schema', '스키마'];

MERGE (n:Concept {id: 'instance'})
SET     n.name = 'Instance',
    n.name_kr = '인스턴스',
    n.domain = 'DB',
    n.aliases = ['Instance', '인스턴스'];

// --- 관계 ---

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Concept {id: 'db기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Concept {id: '스키마_=_논리_스키마'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Concept {id: '인스턴스_=_저장된_레코드_값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schema'})
MERGE (b:Concept {id: 'instance'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Concept {id: 'schema'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Concept {id: 'instance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Document {id: 'DB_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스키마,_인스턴스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스키마_=_논리_스키마'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인스턴스_=_저장된_레코드_값'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'instance'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_011.1: 스토어드 프로시저
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_011.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'stored_procedure'})
SET     n.name = 'Stored Procedure',
    n.name_kr = '스토어드 프로시저',
    n.domain = 'DB',
    n.aliases = ['스토어드 프로시저'];

MERGE (n:Concept {id: 'db_기본'})
SET     n.name = 'DB 기본',
    n.name_kr = 'DB 기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '장점_:_1)_네트워크_부하감소'})
SET     n.name = '장점 : 1) 네트워크 부하감소',
    n.name_kr = '장점 : 1) 네트워크 부하감소',
    n.domain = 'DB';

MERGE (n:Concept {id: '2)_처리시간줄어듬'})
SET     n.name = '2) 처리시간줄어듬',
    n.name_kr = '2) 처리시간줄어듬',
    n.domain = 'DB';

MERGE (n:Concept {id: '단점_:_재사용성_낮음'})
SET     n.name = '단점 : 재사용성 낮음',
    n.name_kr = '단점 : 재사용성 낮음',
    n.domain = 'DB';

MERGE (n:Concept {id: '업무변경시_수정_작업'})
SET     n.name = '업무변경시 수정 작업',
    n.name_kr = '업무변경시 수정 작업',
    n.domain = 'DB';

MERGE (n:Concept {id: '명령어'})
SET     n.name = '명령어',
    n.name_kr = '명령어',
    n.domain = 'DB';

MERGE (n:Concept {id: '필수여부'})
SET     n.name = '필수여부',
    n.name_kr = '필수여부',
    n.domain = 'DB';

MERGE (n:Concept {id: 'anonymous'})
SET     n.name = 'Anonymous',
    n.name_kr = 'Anonymous',
    n.domain = 'DB',
    n.definition = '이름없는 블록 -실행하기 위해 프로그램 안에서 선언되고, 실행 시 실행 위해 PL-SQL엔진으로 전달 -선행 컴파일러 프로그램과 SQL*Plus 또는 서버관리자에 의해 익명 블록 내장 가능',
    n.aliases = ['Anonymous'];

MERGE (n:Metric {id: 'procedure'})
SET     n.name = 'Procedure',
    n.name_kr = 'Procedure',
    n.domain = 'DB',
    n.definition = '특정 작업 수행할 수 있는 이름이 있는 블록 -매개변수를 받을 수 있고, 반복 사용가능 -연속실행 또는 구현 복잡 트랜잭션 수행 블록을 DB저장하기 위해 생성',
    n.aliases = ['Procedure'];

MERGE (n:Concept {id: 'function'})
SET     n.name = 'Function',
    n.name_kr = 'Function',
    n.domain = 'DB',
    n.definition = '값을 계산하고 결과값 반환 시 사용 -반환값의 데이터 타입을 return 문에 선언',
    n.aliases = ['Function'];

MERGE (n:Concept {id: '명령'})
SET     n.name = '명령',
    n.name_kr = '명령',
    n.domain = 'DB',
    n.definition = '생성';

MERGE (n:Metric {id: 'drop_procedure'})
SET     n.name = '제거',
    n.name_kr = '제거',
    n.domain = 'DB',
    n.definition = 'DROP PROCEDURE 프로시저명';

MERGE (n:Concept {id: 'execute_or_exec'})
SET     n.name = '실행',
    n.name_kr = '실행',
    n.domain = 'DB',
    n.definition = 'EXCUTE 프로시저명 or EXEC 프로시저명';

MERGE (n:Concept {id: '프로시저명'})
SET     n.name = '프로시저명',
    n.name_kr = '프로시저명',
    n.domain = 'DB',
    n.definition = '생성, 제거, 실행 하려는 스토어드 프로시저의 이름';

MERGE (n:Concept {id: '파라미터'})
SET     n.name = '파라미터',
    n.name_kr = '파라미터',
    n.domain = 'DB',
    n.definition = 'IN, OUT, INOUT의 값이 올 수 있음 - 스토어드 프로시저에 파라미터 전달, 반환 또는 전달/반환 모두 수행 지정';

MERGE (n:Concept {id: '프로시저_body'})
SET     n.name = '프로시저 BODY',
    n.name_kr = '프로시저 BODY',
    n.domain = 'DB',
    n.definition = '스토어드 프로시저 본문 코드 작성 - BEGIN으로 시작, END로 종료 - 최소 1개의 SQL 구문 포함';

// --- 관계 ---

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: 'db_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '장점_:_1)_네트워크_부하감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '2)_처리시간줄어듬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '단점_:_재사용성_낮음'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '업무변경시_수정_작업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '명령어'})
MERGE (b:Concept {id: '필수여부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '명령어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '필수여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: 'anonymous'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Metric {id: 'procedure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: 'function'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '명령'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Metric {id: 'drop_procedure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: 'execute_or_exec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '프로시저명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '파라미터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Concept {id: '프로시저_body'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Document {id: 'DB_011.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stored_procedure'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장점_:_1)_네트워크_부하감소'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_처리시간줄어듬'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단점_:_재사용성_낮음'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무변경시_수정_작업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필수여부'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anonymous'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'procedure'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'function'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'drop_procedure'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'execute_or_exec'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로시저명'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파라미터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로시저_body'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_011.2: 뷰(View)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_011.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터베이스_보안'})
SET     n.name = '데이터베이스 보안',
    n.name_kr = '데이터베이스 보안',
    n.domain = 'DB';

MERGE (n:Concept {id: '가상_테이블'})
SET     n.name = '가상 테이블',
    n.name_kr = '가상 테이블',
    n.domain = 'DB';

MERGE (n:Concept {id: 'indexed_view'})
SET     n.name = 'Indexed View',
    n.name_kr = '인덱스 된 뷰',
    n.domain = 'DB',
    n.definition = '실제 데이터를 가져와서 직접 실시간 연산을 하고 처리하는 시간이 늦어지므로 성능향상을 높이고자 할 때 사용됨.',
    n.aliases = ['Indexed View', '인덱스 된 뷰'];

MERGE (n:Concept {id: 'partitioned_view'})
SET     n.name = 'Partitioned View',
    n.name_kr = '분할된 뷰',
    n.domain = 'DB',
    n.definition = '여러 대의 SQL서버에 테이블을 나누어 저장. - 한 대의 SQL서버로 처리할 수 없는 대량의 데이터일 때 사용하여 성능향상',
    n.aliases = ['Partitioned View', '분할된 뷰'];

MERGE (n:Concept {id: '생성규칙'})
SET     n.name = '생성규칙',
    n.name_kr = '생성규칙',
    n.domain = 'DB',
    n.definition = '로그인';

MERGE (n:Concept {id: 'sql문_작성'})
SET     n.name = 'SQL문 작성',
    n.name_kr = 'SQL문 작성',
    n.domain = 'DB',
    n.definition = '뷰에서 사용할 SQL문장을 작성. - 작성한 문장을 실행하여 제대로 된 결과가 나타나는지 확인. - 작성한 문장 앞에 “CREATE VIEW dbo.뷰 이름 AS” 붙임.';

MERGE (n:Concept {id: '권한허용'})
SET     n.name = '권한허용',
    n.name_kr = '권한허용',
    n.domain = 'DB',
    n.definition = '뷰를 사용할 사용자에게 권한을 허용.';

MERGE (n:Concept {id: '결과확인'})
SET     n.name = '결과확인',
    n.name_kr = '결과확인',
    n.domain = 'DB',
    n.definition = '사용자로 로그인하여 뷰에서 데이터 조회.';

MERGE (n:Concept {id: '고려사항'})
SET     n.name = '고려사항',
    n.name_kr = '고려사항',
    n.domain = 'DB',
    n.definition = '뷰를 사용하는 사용자 권한에 대한 철저한 관리 필요. - 불필요한 뷰 생성 방지.';

// --- 관계 ---

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '데이터베이스_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '가상_테이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: 'indexed_view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: 'partitioned_view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '생성규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: 'sql문_작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '권한허용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '결과확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'view'})
MERGE (b:Document {id: 'DB_011.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_테이블'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'indexed_view'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'partitioned_view'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성규칙'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql문_작성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한허용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과확인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_012: 식별자
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_012'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '식별자'})
SET     n.name = '식별자',
    n.name_kr = '식별자',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db기본'})
SET     n.name = 'DB기본',
    n.name_kr = 'DB기본',
    n.domain = 'DB';

MERGE (n:Concept {id: '식강-자주포'})
SET     n.name = '식강-자주포',
    n.name_kr = '식강-자주포',
    n.domain = 'DB';

MERGE (n:Concept {id: '비약-자일포'})
SET     n.name = '비약-자일포',
    n.name_kr = '비약-자일포',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '식별자'})
MERGE (b:Concept {id: 'db기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '식별자'})
MERGE (b:Concept {id: '식강-자주포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '식별자'})
MERGE (b:Concept {id: '비약-자일포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '식별자'})
MERGE (b:Document {id: 'DB_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '식별자'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식강-자주포'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비약-자일포'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_013: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_013'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_014: OLAP(Online Analytical Processing), 다차원 모델링
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_014'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: 'olap'})
SET     n.name = 'OLAP',
    n.name_kr = 'OLAP',
    n.domain = 'DB',
    n.aliases = ['OLAP'];

MERGE (n:Concept {id: '다차원정보'})
SET     n.name = '다차원정보',
    n.name_kr = '다차원정보',
    n.domain = 'DB';

MERGE (n:Concept {id: 'rolap'})
SET     n.name = 'ROLAP',
    n.name_kr = 'ROLAP',
    n.domain = 'DB',
    n.aliases = ['ROLAP'];

MERGE (n:Concept {id: 'molap'})
SET     n.name = 'MOLAP',
    n.name_kr = 'MOLAP',
    n.domain = 'DB',
    n.aliases = ['MOLAP'];

MERGE (n:Concept {id: 'dolap'})
SET     n.name = 'DOLAP',
    n.name_kr = 'DOLAP',
    n.domain = 'DB',
    n.aliases = ['DOLAP'];

MERGE (n:Concept {id: 'holap'})
SET     n.name = 'HOLAP',
    n.name_kr = 'HOLAP',
    n.domain = 'DB',
    n.aliases = ['HOLAP'];

MERGE (n:Concept {id: 'web_olap'})
SET     n.name = 'Web OLAP',
    n.name_kr = 'Web OLAP',
    n.domain = 'DB',
    n.aliases = ['Web OLAP'];

MERGE (n:Concept {id: 'star_schema'})
SET     n.name = 'Star Schema',
    n.name_kr = 'Star Schema',
    n.domain = 'DB',
    n.aliases = ['Star Schema'];

MERGE (n:Concept {id: 'snowflake_schema'})
SET     n.name = 'Snowflake Schema',
    n.name_kr = 'Snowflake Schema',
    n.domain = 'DB',
    n.aliases = ['Snowflake Schema'];

MERGE (n:Concept {id: 'drill_down'})
SET     n.name = 'Drill Down',
    n.name_kr = 'Drill Down',
    n.domain = 'DB',
    n.aliases = ['Drill Down'];

MERGE (n:Concept {id: 'slice&dice'})
SET     n.name = 'Slice&Dice',
    n.name_kr = 'Slice&Dice',
    n.domain = 'DB';

MERGE (n:Concept {id: 'oltp_비교'})
SET     n.name = 'OLTP 비교',
    n.name_kr = 'OLTP 비교',
    n.domain = 'DB';

MERGE (n:Concept {id: 'dw_(data_warehouse'})
SET     n.name = 'DW (Data Warehouse',
    n.name_kr = 'DW (Data Warehouse',
    n.domain = 'DB',
    n.definition = '대량의 Data와 각종 외부 Data들로부터 의미 있는 정보를 찾아내어 기업활동에 활용하고, 전사에 걸친 이질의 분산 Database를 통합하여 효율적인 의사결정 지원정보를 제공하기 위한 통합 데이터베이스';

MERGE (n:Concept {id: 'etl_ett'})
SET     n.name = 'ETL/ETT',
    n.name_kr = 'ETL/ETT',
    n.domain = 'DB',
    n.definition = 'Extract, Transform and Load -데이터추출(Extraction), 가공(Transformation), 전송(Transportation) - 데이터를 소스 시스템에서 추출하여 Data Warehouse에 Load시켜 정제 작업까지의 전 과정',
    n.aliases = ['ETL/ETT'];

MERGE (n:Concept {id: 'ods'})
SET     n.name = 'ODS',
    n.name_kr = 'ODS',
    n.domain = 'DB',
    n.definition = 'Operational Data Store - 운영계 시스템에서 데이터를 추출하여 ODS에 저장 - ODS는 다차원 모델링이 아니라 ER모델링으로 되어있음. 따라서 사용자로부터 직접적 액세스가 없음.',
    n.aliases = ['ODS'];

MERGE (n:Concept {id: 'metadata'})
SET     n.name = 'Metadata',
    n.name_kr = 'Metadata',
    n.domain = 'DB',
    n.definition = 'DW Repository에 저장될 Data에 대한 요약정보, 위치 등의 정보를 저장 관리 기능',
    n.aliases = ['Metadata'];

MERGE (n:Concept {id: 'data_mart'})
SET     n.name = 'Data Mart',
    n.name_kr = 'Data Mart',
    n.domain = 'DB',
    n.definition = '소수의 사용자들이 제한된 주제를 가지고 소규모의 데이터를 추출하여 구축한 시스템 - 일반적으로 각 부서별 다양한 분석과 예측을 목적으로 만들어짐.',
    n.aliases = ['Data Mart'];

MERGE (n:Concept {id: 'reporting_tool'})
SET     n.name = 'Reporting Tool',
    n.name_kr = 'Reporting Tool',
    n.domain = 'DB',
    n.definition = '다차원 질의 결과에 대한 Reporting 및 Chart로 결과 출력 Tool',
    n.aliases = ['Reporting Tool'];

MERGE (n:Concept {id: 'fact'})
SET     n.name = 'Fact',
    n.name_kr = 'Fact',
    n.domain = 'DB',
    n.definition = '중심테이블(major 테이블)로서 관련성이 높은 Measure들의 집합 - Measure는 사업의 Performance와 주요 사업성공 요인들을 관찰할 수 있는 수단으로 사업분석에 필요로 하는 Data(금액, 건수, 시간 등) - 두 가지의 Type의 Measures Raw(Base) fact / Derived(Calculated) metric',
    n.aliases = ['Fact'];

MERGE (n:Concept {id: 'dimension'})
SET     n.name = 'Dimension',
    n.name_kr = 'Dimension',
    n.domain = 'DB',
    n.definition = '부속 테이블(minor 테이블) - 각 Fact를 분석하는 하나의 관점 Dimension은 복수의 속성을 가지고 있으며 이것은 Drill-up과 Drill-down등 데이터분석의 요약수준에 대한 Navigation를 가능하게 하는 경로를 지님',
    n.aliases = ['Dimension'];

MERGE (n:Concept {id: 'attribute'})
SET     n.name = 'Attribute',
    n.name_kr = '속성',
    n.domain = 'DB',
    n.definition = '각 차원 테이블이 가지고 있는 속성 임. - 사실을 검색하고, 여과하고 분류할 때 사용 됨.',
    n.aliases = ['Attribute', '속성'];

MERGE (n:Concept {id: 'hierar_chies'})
SET     n.name = 'Hierar-chies',
    n.name_kr = '속성 계층',
    n.domain = 'DB',
    n.definition = '차원 내 정의된 속성들 간에 존재하는 계층 관계 아래로 가기 (Drill-down) 및 위로 가기 (Roll-up) 등 기능 이용',
    n.aliases = ['Hierar-chies', '속성 계층'];

MERGE (n:Concept {id: '스타_스키마'})
SET     n.name = '스타 스키마',
    n.name_kr = '스타 스키마',
    n.domain = 'DB';

MERGE (n:Concept {id: '스노우_플레이크'})
SET     n.name = '스노우 플레이크',
    n.name_kr = '스노우 플레이크',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'olap'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: '다차원정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'rolap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'molap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'dolap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'holap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'web_olap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'star_schema'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'snowflake_schema'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'drill_down'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'slice&dice'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'oltp_비교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'dw_(data_warehouse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'etl_ett'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'ods'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'metadata'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'data_mart'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'reporting_tool'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'fact'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'dimension'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'attribute'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: 'hierar_chies'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스타_스키마'})
MERGE (b:Concept {id: '스노우_플레이크'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: '스타_스키마'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Concept {id: '스노우_플레이크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'online_analytical_processing'})
MERGE (b:Document {id: 'DB_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'olap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다차원정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rolap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'molap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dolap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_olap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'star_schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snowflake_schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drill_down'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slice&dice'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oltp_비교'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dw_(data_warehouse'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'etl_ett'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ods'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'metadata'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_mart'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reporting_tool'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fact'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dimension'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'attribute'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hierar_chies'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스타_스키마'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스노우_플레이크'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_016: 15. 로우기반, 칼럼기반(Column-Oriented, Row-Oriented Database)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_016'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '15._로우기반,_칼럼기반'})
SET     n.name = 'Column-Oriented, Row-Oriented Database',
    n.name_kr = '15. 로우기반, 칼럼기반',
    n.domain = 'DB',
    n.aliases = ['Column-Oriented, Row-Oriented Database', '15. 로우기반, 칼럼기반'];

MERGE (n:Concept {id: 'db_유형'})
SET     n.name = 'DB 유형',
    n.name_kr = 'DB 유형',
    n.domain = 'DB';

MERGE (n:Concept {id: '로우기반,_칼럼기반'})
SET     n.name = '로우기반, 칼럼기반',
    n.name_kr = '로우기반, 칼럼기반',
    n.domain = 'DB';

MERGE (n:Concept {id: 'oltp'})
SET     n.name = 'OLTP',
    n.name_kr = 'OLTP',
    n.domain = 'DB',
    n.aliases = ['OLTP'];

MERGE (n:Concept {id: 'olap'})
SET     n.name = 'OLAP',
    n.name_kr = 'OLAP',
    n.domain = 'DB',
    n.aliases = ['OLAP'];

MERGE (n:Concept {id: '집계유리'})
SET     n.name = '집계유리',
    n.name_kr = '집계유리',
    n.domain = 'DB';

MERGE (n:Concept {id: '압축효율'})
SET     n.name = '압축효율',
    n.name_kr = '압축효율',
    n.domain = 'DB';

MERGE (n:Concept {id: '물리적구조도'})
SET     n.name = '물리적구조도',
    n.name_kr = '물리적구조도',
    n.domain = 'DB';

MERGE (n:Concept {id: '로우_기반_dbms'})
SET     n.name = '로우 기반 DBMS',
    n.name_kr = '로우 기반 DBMS',
    n.domain = 'DB';

MERGE (n:Concept {id: '칼럼_기반_dbms'})
SET     n.name = '칼럼 기반 DBMS',
    n.name_kr = '칼럼 기반 DBMS',
    n.domain = 'DB';

MERGE (n:Concept {id: 'row'})
SET     n.name = 'Row',
    n.name_kr = 'Row',
    n.domain = 'DB',
    n.definition = 'Row Key와 하나 또는 여러 개의 Column들로 구성 - Row Key를 이용해 문자 정렬',
    n.aliases = ['Row'];

MERGE (n:Concept {id: 'row_key'})
SET     n.name = 'Row Key',
    n.name_kr = 'Row Key',
    n.domain = 'DB',
    n.definition = 'Row 식별자, Row Key값 수으로 정렬됨, 검색시 사용되는 기본 키',
    n.aliases = ['Row Key'];

MERGE (n:Concept {id: 'column'})
SET     n.name = 'Column',
    n.name_kr = 'Column',
    n.domain = 'DB',
    n.definition = 'key-value 쌍으로 하나의 Row에 여러 Column 저장 - 항상 Timestamp 값이 함께 저장',
    n.aliases = ['Column'];

MERGE (n:Concept {id: 'timestamp'})
SET     n.name = 'Timestamp',
    n.name_kr = 'Timestamp',
    n.domain = 'DB',
    n.definition = 'value와 함계 쓰여지며, value의 버전을 위해 식별자로 활용',
    n.aliases = ['Timestamp'];

MERGE (n:Concept {id: 'cassandra'})
SET     n.name = 'Cassandra',
    n.name_kr = 'Cassandra',
    n.domain = 'DB',
    n.definition = '구글 Bigtable + Dynamo 분산 기술 결합',
    n.aliases = ['Cassandra'];

MERGE (n:Concept {id: 'hypertable'})
SET     n.name = 'Hypertable',
    n.name_kr = 'Hypertable',
    n.domain = 'DB',
    n.definition = '구글 Bigtable 아키텍처 기반으로 구현, 성능우수',
    n.aliases = ['Hypertable'];

// --- 관계 ---

MERGE (a:Concept {id: '로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'db_유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'oltp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'olap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '집계유리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '압축효율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '물리적구조도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로우_기반_dbms'})
MERGE (b:Concept {id: '칼럼_기반_dbms'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '로우_기반_dbms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '칼럼_기반_dbms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로우_기반_dbms'})
MERGE (b:Concept {id: '칼럼_기반_dbms'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '로우_기반_dbms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: '칼럼_기반_dbms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'row'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'row_key'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'column'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'timestamp'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'cassandra'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Concept {id: 'hypertable'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Document {id: 'DB_016'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '15._로우기반,_칼럼기반'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로우기반,_칼럼기반'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oltp'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'olap'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집계유리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압축효율'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적구조도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로우_기반_dbms'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '칼럼_기반_dbms'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'row'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'row_key'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'column'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timestamp'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cassandra'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hypertable'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_017.0: NOSQL이론(CAP이론)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_017.0'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'nosql이론'})
SET     n.name = 'NOSQL이론(CAP이론)',
    n.name_kr = 'NOSQL이론(CAP이론)',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터베이스'})
SET     n.name = '데이터베이스',
    n.name_kr = '데이터베이스',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'nosql'})
SET     n.name = 'NoSQL',
    n.name_kr = 'CAP 이론',
    n.domain = 'DB',
    n.aliases = ['NoSQL', 'CAP 이론'];

MERGE (n:Concept {id: '유형:_key_value'})
SET     n.name = '유형: Key Value',
    n.name_kr = '유형: Key Value',
    n.domain = 'DB';

MERGE (n:Concept {id: 'column_family'})
SET     n.name = 'Column Family',
    n.name_kr = 'Column Family',
    n.domain = 'DB',
    n.aliases = ['Column Family'];

MERGE (n:Concept {id: 'document'})
SET     n.name = 'Document',
    n.name_kr = 'Document',
    n.domain = 'DB',
    n.aliases = ['Document'];

MERGE (n:Concept {id: 'graph'})
SET     n.name = 'Graph',
    n.name_kr = '키컬도그',
    n.domain = 'DB',
    n.aliases = ['Graph', '키컬도그'];

MERGE (n:Concept {id: '데이터베이스_측면'})
SET     n.name = '데이터베이스 측면',
    n.name_kr = '데이터베이스 측면',
    n.domain = 'DB',
    n.definition = '스키마 유연성';

MERGE (n:Concept {id: '복잡쿼리_불필요'})
SET     n.name = '복잡쿼리 불필요',
    n.name_kr = '복잡쿼리 불필요',
    n.domain = 'DB',
    n.definition = '조인이 불가하기 때문에 복잡한 쿼리 불필요';

MERGE (n:Concept {id: '트랜잭션_보장_지원'})
SET     n.name = '트랜잭션 보장 지원',
    n.name_kr = '트랜잭션 보장 지원',
    n.domain = 'DB',
    n.definition = 'NoSQL 유형에 따라 Column Family, Super Column 등의 기법을 이용하여 트랜잭션 보장받을 수 있음.';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'DB',
    n.definition = '데이터량 증가에 따른 데이터베이스 확장성을 우선적으로 지원됨.';

MERGE (n:Concept {id: '데이터_모델_측면'})
SET     n.name = '데이터 모델 측면',
    n.name_kr = '데이터 모델 측면',
    n.domain = 'DB',
    n.definition = '비 관계형 모델';

MERGE (n:Concept {id: '조회_성능_향상'})
SET     n.name = '조회 성능 향상',
    n.name_kr = '조회 성능 향상',
    n.domain = 'DB',
    n.definition = '단일 테이블을 읽어 필요한 정보를 확보할 수 있으므로 조인등이 불필요하여 성능 향상';

MERGE (n:Concept {id: '특성_및_개념도'})
SET     n.name = '특성 및 개념도',
    n.name_kr = '특성 및 개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: 'pick_two'})
SET     n.name = 'Pick Two',
    n.name_kr = 'Pick Two',
    n.domain = 'DB',
    n.definition = 'C+A',
    n.aliases = ['Pick Two'];

MERGE (n:Concept {id: 'a+p'})
SET     n.name = 'A+P',
    n.name_kr = 'A+P',
    n.domain = 'DB',
    n.definition = '일관성을 크게 요하지 않는 서비스에 적합, 비동기화 서비스, SNS서비스에 적합 - Dynamo, Cassandra, Dynamo';

MERGE (n:Technology {id: 'c+p'})
SET     n.name = 'C+P',
    n.name_kr = 'C+P',
    n.domain = 'DB',
    n.definition = '데이터 보다는 성능이 중요한 퍼포먼스형 - 대용량 분산파일시스템, 성능 보장형, 모든 노드가 함께 성능을 내야하는 서비스에 적합 - Big Table, MongoDB, Hbase, Redis';

MERGE (n:Concept {id: 'rdbms_모델링'})
SET     n.name = 'RDBMS 모델링',
    n.name_kr = 'RDBMS 모델링',
    n.domain = 'DB',
    n.definition = '영화평 ER 모델로 평론가는 여러 영화를 한줄 영화평을 작성할 수 있고 한 영화도 여러 평론가에 의하여 한줄 영화평이 작성될 수 있을 경우 다음과 같이 표현';

MERGE (n:Concept {id: 'nosql_모델링'})
SET     n.name = 'NoSQL 모델링',
    n.name_kr = 'NoSQL 모델링',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Concept {id: '데이터베이스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'nosql'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '유형:_key_value'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'column_family'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'document'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'graph'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '데이터베이스_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '복잡쿼리_불필요'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '트랜잭션_보장_지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '데이터_모델_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '조회_성능_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: '특성_및_개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'pick_two'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'a+p'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Technology {id: 'c+p'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'rdbms_모델링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Concept {id: 'nosql_모델링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Document {id: 'DB_017.0'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'nosql이론'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nosql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형:_key_value'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'column_family'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'document'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'graph'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복잡쿼리_불필요'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션_보장_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_모델_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조회_성능_향상'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특성_및_개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pick_two'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'a+p'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'c+p'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdbms_모델링'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nosql_모델링'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_017.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_017.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_017.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_017.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_017.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_017.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_018: 공간 DATABASE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_018'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '공간_database'})
SET     n.name = '공간 DATABASE',
    n.name_kr = '공간 DATABASE',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'vector'})
SET     n.name = '벡터',
    n.name_kr = '벡터',
    n.domain = 'DB';

MERGE (n:Concept {id: '래스터_방식'})
SET     n.name = '래스터 방식',
    n.name_kr = '래스터 방식',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_타입'})
SET     n.name = '데이터 타입',
    n.name_kr = '데이터 타입',
    n.domain = 'DB';

MERGE (n:Concept {id: '저장_타입'})
SET     n.name = '저장 타입',
    n.name_kr = '저장 타입',
    n.domain = 'DB';

MERGE (n:Concept {id: '일반db'})
SET     n.name = '일반DB',
    n.name_kr = '일반DB',
    n.domain = 'DB';

MERGE (n:Concept {id: '공간_db'})
SET     n.name = '공간 DB',
    n.name_kr = '공간 DB',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: 'vector'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: '래스터_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_타입'})
MERGE (b:Concept {id: '저장_타입'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: '데이터_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: '저장_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일반db'})
MERGE (b:Concept {id: '공간_db'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: '일반db'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Concept {id: '공간_db'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Document {id: 'DB_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '공간_database'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vector'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '래스터_방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_타입'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저장_타입'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_019: 멀티미디어 DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_019'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '멀티미디어_db'})
SET     n.name = '멀티미디어 DB',
    n.name_kr = '멀티미디어 DB',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db기본'})
SET     n.name = 'DB기본',
    n.name_kr = 'DB기본',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '멀티미디어_db'})
MERGE (b:Concept {id: 'db기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '멀티미디어_db'})
MERGE (b:Document {id: 'DB_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '멀티미디어_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db기본'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_021: 생체인식 DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_021'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '생체인식_db'})
SET     n.name = '생체인식 DB',
    n.name_kr = '생체인식 DB',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: '신체적/행동적_특성'})
SET     n.name = '신체적/행동적 특성',
    n.name_kr = '신체적/행동적 특성',
    n.domain = 'DB';

MERGE (n:Concept {id: '생체인식_정보'})
SET     n.name = '생체인식 정보',
    n.name_kr = '생체인식 정보',
    n.domain = 'DB';

MERGE (n:Concept {id: '획득/특징추출/비교/유사도판정'})
SET     n.name = '획득/특징추출/비교/유사도판정',
    n.name_kr = '획득/특징추출/비교/유사도판정',
    n.domain = 'DB';

MERGE (n:Concept {id: 'xml_사용'})
SET     n.name = 'XML 사용',
    n.name_kr = 'XML 사용',
    n.domain = 'DB',
    n.definition = '호환성 증대, 표준화를 위한 XML 사용';

MERGE (n:Concept {id: '이미지_저장'})
SET     n.name = '이미지 저장',
    n.name_kr = '이미지 저장',
    n.domain = 'DB',
    n.definition = '멀티미디어 기능의 지원 필요, 객체 저장 기술';

MERGE (n:Concept {id: '신속한_인증'})
SET     n.name = '신속한 인증',
    n.name_kr = '신속한 인증',
    n.domain = 'DB',
    n.definition = '인증의 신속성과 정확성 필요';

MERGE (n:Concept {id: '등록/패턴_매칭'})
SET     n.name = '등록/패턴 매칭',
    n.name_kr = '등록/패턴 매칭',
    n.domain = 'DB',
    n.definition = '생체 인식 대상을 이미지 처리하여 DB화';

MERGE (n:Concept {id: '영상_획득'})
SET     n.name = '영상 획득',
    n.name_kr = '영상 획득',
    n.domain = 'DB',
    n.definition = '카메라/PC캠 등으로부터 생체 인식 영상 획득';

MERGE (n:Concept {id: '전처리_과정'})
SET     n.name = '전처리 과정',
    n.name_kr = '전처리 과정',
    n.domain = 'DB',
    n.definition = '생체인식 구성요소 추출 등 이미지/객체 처리과정';

MERGE (n:Concept {id: '이미지_추출'})
SET     n.name = '이미지 추출',
    n.name_kr = '이미지 추출',
    n.domain = 'DB',
    n.definition = '전처리 과정을 거친 입력데이터로부터 이미지 검출';

MERGE (n:Concept {id: '표준화'})
SET     n.name = '표준화',
    n.name_kr = '표준화',
    n.domain = 'DB',
    n.definition = '특징추출, 기하학적 표준화';

MERGE (n:Concept {id: '인식'})
SET     n.name = '인식',
    n.name_kr = '인식',
    n.domain = 'DB',
    n.definition = '검출 데이터와 DB 데이터간의 비교 및 인식';

MERGE (n:Concept {id: '1:1_시스템'})
SET     n.name = '1:1 시스템 (Verification mode, 인증)',
    n.name_kr = '1:1 시스템 (Verification mode, 인증)',
    n.domain = 'DB',
    n.definition = '특정 사용자의 정보가 입력되었을 때, 데이터베이스에 저장된 모든 정보와 비교 - 제시된 두 개의 특성이 동일한 것인지 조회하는 One-to-one 비교 - 범죄수사용으로 사용되며 사용자수가 적을 때 유용';

MERGE (n:Concept {id: '1:n_시스템'})
SET     n.name = '1:N 시스템 (Identification mode, 인식)',
    n.name_kr = '1:N 시스템 (Identification mode, 인식)',
    n.domain = 'DB',
    n.definition = '사용자가 생체인식을 입력함으로써 입력된 생체인식과 데이터베이스에 저장된 지문을 비교하여 인증 사용자가 많을 때 유용 - 출입통제, 금고, 전자상거래, 본인확인 등 정확한 판독률을 요구하는데 이용 제시된 특성이 여럿 중 누구의 것인지 검색하는 One-to-many 비교';

MERGE (n:Concept {id: '사용자_측면'})
SET     n.name = '사용자 측면',
    n.name_kr = '사용자 측면',
    n.domain = 'DB',
    n.definition = '편의성, 생산성';

MERGE (n:Concept {id: '생체인식_데이터_측면'})
SET     n.name = '생체인식 데이터 측면',
    n.name_kr = '생체인식 데이터 측면',
    n.domain = 'DB',
    n.definition = '보편성, 획득성, 신뢰성, 상호호환성';

MERGE (n:Metric {id: '보안적_측면'})
SET     n.name = '보안적 측면',
    n.name_kr = '보안적 측면',
    n.domain = 'DB',
    n.definition = '무경성, 기밀성';

MERGE (n:Concept {id: '성능적_측면'})
SET     n.name = '성능적 측면',
    n.name_kr = '성능적 측면',
    n.domain = 'DB',
    n.definition = 'FAR(False Acceptance Rate, 타인 오 인식율), FRR(False Rejection Rate, 본인 오 거부율)의 적절한 Trade-off 필요';

MERGE (n:Concept {id: 'rdb'})
SET     n.name = 'RDB',
    n.name_kr = 'RDB',
    n.domain = 'DB',
    n.aliases = ['RDB'];

MERGE (n:Concept {id: '사용자_인식'})
SET     n.name = '사용자 인식',
    n.name_kr = '사용자 인식',
    n.domain = 'DB',
    n.definition = '생체인식결과는 확률적 오류가능성 및 생체 특징 인식에 대한 거부감';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'DB',
    n.definition = '객관적 성능 평가를 위한 실험용 생체인식 DB 필요 시스템 인증을 위한 공증 기관 필요';

MERGE (n:Concept {id: '법률/제도'})
SET     n.name = '법률/제도',
    n.name_kr = '법률/제도',
    n.domain = 'DB',
    n.definition = '컴퓨터를 이용한 생체인식결과에 법적 구속력 전자서명으로서의 생체 특징 인정 필요';

MERGE (n:Concept {id: '연구/교육'})
SET     n.name = '연구/교육',
    n.name_kr = '연구/교육',
    n.domain = 'DB',
    n.definition = '복합적 학문 및 기술 요구 기술문화발전 속도에 비하여 더딘 인력 배출';

MERGE (n:Concept {id: '인권'})
SET     n.name = '인권',
    n.name_kr = '인권',
    n.domain = 'DB',
    n.definition = '목적 외 활용 가능성, 생체정보의 자기 결정권 침해, 프라이버시 훼손 등 정보 감시 문제 생체정보를 이용한 국가 통제력 강화';

MERGE (n:Concept {id: '보안_암호화_기술의_핵심솔루션'})
SET     n.name = '보안 암호화 기술의 핵심솔루션',
    n.name_kr = '보안 암호화 기술의 핵심솔루션',
    n.domain = 'DB',
    n.definition = '생체 특징점 추출 및 정합알고리즘의 개발 생체인식기술의 핵심으로 시스템 오차율을 결정 하드웨어 및 응용분야에 따라 다양한 알고리즘 가능';

MERGE (n:Concept {id: '생체정보_입력기기의_개발'})
SET     n.name = '생체정보 입력기기의 개발',
    n.name_kr = '생체정보 입력기기의 개발',
    n.domain = 'DB',
    n.definition = '생체정보, 응용분야, 사용환경에 따라 다양한 하드웨어 기술 개발 국내기술 가운데 가장 취약하고, 개발비용도 가장 큼';

MERGE (n:Concept {id: '다중_생체인식_방법_개발'})
SET     n.name = '다중 생체인식 방법 개발',
    n.name_kr = '다중 생체인식 방법 개발',
    n.domain = 'DB',
    n.definition = '단일 단일생체인식방법의 취약점을 보완 보안 정도에 따라 다양한 조합의 생체인식방법적용';

MERGE (n:Concept {id: '신규_시장_창출,응용기술_개발'})
SET     n.name = '신규 시장 창출,응용기술 개발',
    n.name_kr = '신규 시장 창출,응용기술 개발',
    n.domain = 'DB',
    n.definition = '미아찾기, 출입국관리, 스마트카드와의 결합, 의료정보에 군번저장';

MERGE (n:Standard {id: '요소기술의_표준화'})
SET     n.name = '요소기술의 표준화',
    n.name_kr = '요소기술의 표준화',
    n.domain = 'DB',
    n.definition = '생체정보를 교환하기 위한 표준안 마련 : ANSI/NIST-ITL1-2000, Human Recognition Services(HRS), Common Biometric Exchange File Format(CBEFF) 표준함수 정의 : BioAPI';

MERGE (n:Concept {id: '성능평가_및_분석기술의_개발'})
SET     n.name = '성능평가 및 분석기술의 개발',
    n.name_kr = '성능평가 및 분석기술의 개발',
    n.domain = 'DB',
    n.definition = '객관적인 성능평가 및 분석을 위한 공학적 척도 및 시스템 연구 실험용 생체자료의 DB화 및 분석기법개발 데이터가 빠르게 증가하고 있다는 점을 고려할 때 새로운 형태의 검색엔진을 이용한 생체인식DB구축은 정형화된 틀을 갖는 기존의 DBMS에 비해 조건에 따른 응용성이 높게 평가되고 있음';

MERGE (n:Concept {id: '생체자료_기반_인간유전성_연구'})
SET     n.name = '생체자료 기반 인간유전성 연구',
    n.name_kr = '생체자료 기반 인간유전성 연구',
    n.domain = 'DB',
    n.definition = '지문의 특성과 DNA구조의 상관관계연구 얼굴의 특징과 학업능력의 상관관계연구';

// --- 관계 ---

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '신체적/행동적_특성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '생체인식_정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '획득/특징추출/비교/유사도판정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: 'xml_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '이미지_저장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '신속한_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '등록/패턴_매칭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '영상_획득'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '전처리_과정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '이미지_추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '1:1_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '1:n_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '사용자_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '생체인식_데이터_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Metric {id: '보안적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '성능적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: 'rdb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: 'rdb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '사용자_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '법률/제도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '연구/교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '인권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '보안_암호화_기술의_핵심솔루션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '생체정보_입력기기의_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '다중_생체인식_방법_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '신규_시장_창출,응용기술_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Standard {id: '요소기술의_표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '성능평가_및_분석기술의_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Concept {id: '생체자료_기반_인간유전성_연구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Document {id: 'DB_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '생체인식_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신체적/행동적_특성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체인식_정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '획득/특징추출/비교/유사도판정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml_사용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지_저장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신속한_인증'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '등록/패턴_매칭'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상_획득'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전처리_과정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지_추출'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:1_시스템'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:n_시스템'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체인식_데이터_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '보안적_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능적_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdb'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_인식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법률/제도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구/교육'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인권'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_암호화_기술의_핵심솔루션'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체정보_입력기기의_개발'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_생체인식_방법_개발'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_시장_창출,응용기술_개발'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '요소기술의_표준화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능평가_및_분석기술의_개발'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체자료_기반_인간유전성_연구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_022.1: 19. In Memory DATABASE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_022.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '19_in_memory_database'})
SET     n.name = '19. In Memory DATABASE',
    n.name_kr = '19. In Memory DATABASE',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'in_memory_database'})
SET     n.name = 'In Memory DATABASE',
    n.name_kr = 'In Memory DATABASE',
    n.domain = 'DB',
    n.aliases = ['In Memory DATABASE'];

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'DB';

MERGE (n:Concept {id: '주요_내용'})
SET     n.name = '주요 내용',
    n.name_kr = '주요 내용',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'in_memory_database'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '19_in_memory_database'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '19_in_memory_database'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '19_in_memory_database'})
MERGE (b:Document {id: 'DB_022.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '19_in_memory_database'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'in_memory_database'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_내용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_022.2: 메인 메모리 DB, Hybrid MMDBMS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_022.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
SET     n.name = '메인 메모리 DB, Hybrid MMDBMS',
    n.name_kr = '메인 메모리 DB, Hybrid MMDBMS',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db_유형'})
SET     n.name = 'DB 유형',
    n.name_kr = 'DB 유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'mmdbms_->_t-tree_인덱스'})
SET     n.name = 'MMDBMS -> T-Tree 인덱스',
    n.name_kr = 'MMDBMS -> T-Tree 인덱스',
    n.domain = 'DB';

MERGE (n:Concept {id: '메모리_기반'})
SET     n.name = '메모리 기반',
    n.name_kr = '메모리 기반',
    n.domain = 'DB';

MERGE (n:Concept {id: '인덱스_구조'})
SET     n.name = '인덱스 구조',
    n.name_kr = '인덱스 구조',
    n.domain = 'DB',
    n.definition = 'T-트리 인덱스';

MERGE (n:Concept {id: '질의_최적화'})
SET     n.name = '질의 최적화',
    n.name_kr = '질의 최적화',
    n.domain = 'DB',
    n.definition = '메모리 기반';

MERGE (n:Concept {id: '지속성_기술'})
SET     n.name = '지속성 기술',
    n.name_kr = '지속성 기술',
    n.domain = 'DB',
    n.definition = '백업DB';

// --- 관계 ---

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: 'db_유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: 'mmdbms_->_t-tree_인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: '메모리_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: '인덱스_구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: '질의_최적화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Concept {id: '지속성_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Document {id: 'DB_022.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '메인_메모리_db,_hybrid_mmdbms'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mmdbms_->_t-tree_인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_기반'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스_구조'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '질의_최적화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속성_기술'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_022.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_022.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_023: 병렬 데이터베이스(Parallel database)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_023'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'parallel_database'})
SET     n.name = 'Parallel database',
    n.name_kr = '병렬 데이터베이스',
    n.domain = 'DB',
    n.aliases = ['Parallel database', '병렬 데이터베이스'];

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'homogeneous'})
SET     n.name = 'Homogeneous',
    n.name_kr = 'Homogeneous',
    n.domain = 'DB',
    n.aliases = ['Homogeneous'];

// --- 관계 ---

MERGE (a:Concept {id: 'parallel_database'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'parallel_database'})
MERGE (b:Concept {id: 'homogeneous'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'parallel_database'})
MERGE (b:Document {id: 'DB_023'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'parallel_database'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'homogeneous'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_024.1: Embedded DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_024.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'embedded_db'})
SET     n.name = 'Embedded DB',
    n.name_kr = 'Embedded DB',
    n.domain = 'DB',
    n.aliases = ['Embedded DB'];

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'embedded_db'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'embedded_db'})
MERGE (b:Document {id: 'DB_024.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'embedded_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_024.2: 모바일 DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_024.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '모바일_db'})
SET     n.name = '모바일 DB',
    n.name_kr = '모바일 DB',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: '모바일_단말'})
SET     n.name = '모바일 단말',
    n.name_kr = '모바일 단말',
    n.domain = 'DB';

MERGE (n:Concept {id: '소용량_장비'})
SET     n.name = '소용량 장비',
    n.name_kr = '소용량 장비',
    n.domain = 'DB';

MERGE (n:Concept {id: '동기화_기능'})
SET     n.name = '동기화 기능',
    n.name_kr = '동기화 기능',
    n.domain = 'DB';

MERGE (n:Concept {id: 'embedded_dbms'})
SET     n.name = 'Embedded DBMS',
    n.name_kr = 'Embedded DBMS',
    n.domain = 'DB',
    n.aliases = ['Embedded DBMS'];

// --- 관계 ---

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Concept {id: '모바일_단말'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Concept {id: '소용량_장비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Concept {id: '동기화_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Concept {id: 'embedded_dbms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Document {id: 'DB_024.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '모바일_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_단말'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소용량_장비'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기화_기능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embedded_dbms'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_025: Tiny DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_025'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'tiny_db'})
SET     n.name = 'Tiny DB',
    n.name_kr = 'Tiny DB',
    n.domain = 'DB',
    n.aliases = ['Tiny DB'];

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: '센서/bs_내장'})
SET     n.name = '센서/BS 내장',
    n.name_kr = '센서/BS 내장',
    n.domain = 'DB';

MERGE (n:Concept {id: '전력_최적화'})
SET     n.name = '전력 최적화',
    n.name_kr = '전력 최적화',
    n.domain = 'DB';

MERGE (n:Concept {id: 'tinyos'})
SET     n.name = 'TinyOS',
    n.name_kr = 'TinyOS',
    n.domain = 'DB',
    n.aliases = ['TinyOS'];

MERGE (n:Concept {id: 'metadata_management'})
SET     n.name = 'Metadata management',
    n.name_kr = 'Metadata management',
    n.domain = 'DB',
    n.definition = '센서 네트워크에서 사용하는 Metadata Catalog 제공',
    n.aliases = ['Metadata management'];

MERGE (n:Concept {id: 'high_level_queries'})
SET     n.name = 'High Level Queries',
    n.name_kr = 'High Level Queries',
    n.domain = 'DB',
    n.definition = 'High level 질의어 제공으로 응용 프로그램의 쉬운 작성을 가능하게 함',
    n.aliases = ['High Level Queries'];

MERGE (n:Concept {id: 'network_topology'})
SET     n.name = 'Network topology',
    n.name_kr = 'Network topology',
    n.domain = 'DB',
    n.definition = '라우팅 테이블을 유지, 무선망을 관리 데이터를 능률적이고 신뢰성 있게 사용자에게 전달',
    n.aliases = ['Network topology'];

MERGE (n:Concept {id: 'multiple_queries'})
SET     n.name = 'Multiple Queries',
    n.name_kr = 'Multiple Queries',
    n.domain = 'DB',
    n.definition = '다중 질의가 같은 모트 set 위에서 동시에 구동되는 것을 허용',
    n.aliases = ['Multiple Queries'];

MERGE (n:Concept {id: 'deployment_via_query_sharing'})
SET     n.name = 'Deployment via Query sharing',
    n.name_kr = 'Deployment via Query sharing',
    n.domain = 'DB',
    n.definition = '새로운 모트에게 Tiny DB 코드를 다운로드 하고 설치 Tiny DB를 통한 새로 증설된 모트가 기존 모트들 사이에 질의는 공유',
    n.aliases = ['Deployment via Query sharing'];

// --- 관계 ---

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: '센서/bs_내장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: '전력_최적화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'tinyos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'metadata_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'high_level_queries'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'network_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'multiple_queries'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Concept {id: 'deployment_via_query_sharing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Document {id: 'DB_025'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tiny_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서/bs_내장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력_최적화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tinyos'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'metadata_management'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'high_level_queries'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_topology'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multiple_queries'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deployment_via_query_sharing'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_026: SQLite
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_026'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'sqlite'})
SET     n.name = 'SQLite',
    n.name_kr = 'SQLite',
    n.domain = 'DB',
    n.aliases = ['SQLite'];

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'core'})
SET     n.name = 'Core',
    n.name_kr = 'Core',
    n.domain = 'DB',
    n.aliases = ['Core'];

MERGE (n:Concept {id: 'backend'})
SET     n.name = 'backend',
    n.name_kr = 'backend',
    n.domain = 'DB',
    n.aliases = ['backend'];

MERGE (n:Concept {id: 'sql_compiler'})
SET     n.name = 'Sql Compiler',
    n.name_kr = 'Sql Compiler',
    n.domain = 'DB',
    n.aliases = ['Sql Compiler'];

MERGE (n:Concept {id: '모바일_환경_경량_db'})
SET     n.name = '모바일 환경 경량 DB',
    n.name_kr = '모바일 환경 경량 DB',
    n.domain = 'DB';

MERGE (n:Concept {id: 'local_base'})
SET     n.name = 'local base',
    n.name_kr = 'local base',
    n.domain = 'DB',
    n.aliases = ['local base'];

MERGE (n:Concept {id: 'public_domain'})
SET     n.name = 'Public domain',
    n.name_kr = 'Public domain',
    n.domain = 'DB',
    n.definition = '목적 제한 없이 자유롭게 복사, 수정, 배포가능. no copyright',
    n.aliases = ['Public domain'];

MERGE (n:Concept {id: '단일파일'})
SET     n.name = '단일파일',
    n.name_kr = '단일파일',
    n.domain = 'DB',
    n.definition = '테이블, 인덱스, 트리거정보, 뷰 등의 정보를 하나의 파일로 저장';

MERGE (n:Concept {id: '경량의_lib'})
SET     n.name = '경량의 lib',
    n.name_kr = '경량의 lib',
    n.domain = 'DB',
    n.definition = '500Kb 이하의 용량(최적화 설정 시 300kb이하 설정가능)';

MERGE (n:Concept {id: '표준sql지원'})
SET     n.name = '표준SQL지원',
    n.name_kr = '표준SQL지원',
    n.domain = 'DB',
    n.definition = 'SQL92 표준문법 지원';

MERGE (n:Concept {id: '로컬베이스'})
SET     n.name = '로컬베이스',
    n.name_kr = '로컬베이스',
    n.domain = 'DB',
    n.definition = '클라이언트/서버 구조는 지원하지 않음(로컬만 지원)';

MERGE (n:Concept {id: '크로스플랫폼_지원'})
SET     n.name = '크로스플랫폼 지원',
    n.name_kr = '크로스플랫폼 지원',
    n.domain = 'DB',
    n.definition = 'Android, *BSD, iOS, Linux, Mac, Solaris, VxWorks, and Windows (Win32, WinCE, WinRT)';

MERGE (n:Concept {id: 'zero_configuration'})
SET     n.name = 'Zero-configuration',
    n.name_kr = 'Zero-configuration',
    n.domain = 'DB',
    n.definition = '별도의 설정 및 관리작업 필요 없이 사용가능',
    n.aliases = ['Zero-configuration'];

// --- 관계 ---

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'core'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'backend'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'sql_compiler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '모바일_환경_경량_db'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'local_base'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'public_domain'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '단일파일'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '경량의_lib'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '표준sql지원'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '로컬베이스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: '크로스플랫폼_지원'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Concept {id: 'zero_configuration'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Document {id: 'DB_026'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sqlite'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backend'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql_compiler'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_환경_경량_db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'local_base'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public_domain'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일파일'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량의_lib'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준sql지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로컬베이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '크로스플랫폼_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_configuration'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_027: 통계데이터베이스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_027'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '통계데이터베이스'})
SET     n.name = '통계데이터베이스',
    n.name_kr = '통계데이터베이스',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'count'})
SET     n.name = 'COUNT',
    n.name_kr = 'COUNT',
    n.domain = 'DB',
    n.aliases = ['COUNT'];

MERGE (n:Concept {id: 'sum'})
SET     n.name = 'SUM',
    n.name_kr = 'SUM',
    n.domain = 'DB',
    n.aliases = ['SUM'];

MERGE (n:Concept {id: 'avg'})
SET     n.name = 'AVG',
    n.name_kr = 'AVG',
    n.domain = 'DB',
    n.aliases = ['AVG'];

MERGE (n:Concept {id: '개인추적자'})
SET     n.name = '개인추적자',
    n.name_kr = '개인추적자',
    n.domain = 'DB';

MERGE (n:Concept {id: '일반추적자'})
SET     n.name = '일반추적자',
    n.name_kr = '일반추적자',
    n.domain = 'DB';

MERGE (n:Concept {id: '개별_추적자'})
SET     n.name = '개별 추적자',
    n.name_kr = '개별 추적자',
    n.domain = 'DB',
    n.definition = '특정 레코드를 특정 속성값을 식별하도록 하기 위해 속성값을 직접 사용하여 추론하게 하는 요인 -특정학과의 “성적”을 알아내기 위해서 다른”성적”을 이용하여 추적';

MERGE (n:Concept {id: '일반_추적자'})
SET     n.name = '일반 추적자',
    n.name_kr = '일반 추적자',
    n.domain = 'DB',
    n.definition = '특정 식에 나타나지 않는 임의의 속성(attribute) 을 사용하여 특정 레코드를 유일하게 식별하도록 알아내게 하는 요인 -특정 학과의 “성적”을 알아내기 위해서 학년, 지역 값으로 추적';

// --- 관계 ---

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: 'count'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: 'sum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: 'avg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: '개인추적자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: '일반추적자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: '개별_추적자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Concept {id: '일반_추적자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Document {id: 'DB_027'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '통계데이터베이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'count'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sum'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'avg'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인추적자'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반추적자'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개별_추적자'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반_추적자'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_028.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_028.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_028.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_028.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_029.1: 분산DB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_029.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '분산db'})
SET     n.name = '분산DB',
    n.name_kr = '분산DB',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db유형'})
SET     n.name = 'DB유형',
    n.name_kr = 'DB유형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'na'})
SET     n.name = 'NA',
    n.name_kr = 'NA',
    n.domain = 'DB',
    n.aliases = ['NA'];

MERGE (n:Concept {id: '데이터_설계'})
SET     n.name = '데이터 설계',
    n.name_kr = '데이터 설계',
    n.domain = 'DB',
    n.definition = 'Top Down';

MERGE (n:Concept {id: 'bottom_up'})
SET     n.name = 'Bottom Up',
    n.name_kr = 'Bottom Up',
    n.domain = 'DB',
    n.definition = '지역 별 설계 후 전사적 관점에서 통합(이기종 데이터베이스와 연동하기 위한 게이트웨이 필요) -이미 존재하는 데이터베이스를 통합하는 방법',
    n.aliases = ['Bottom Up'];

MERGE (n:Metric {id: 'hybrid'})
SET     n.name = 'Hybrid',
    n.name_kr = 'Hybrid',
    n.domain = 'DB',
    n.definition = '데이터베이스 통합 시 양 방식을 혼합하여 활용하는 방식 DB들의 데이터 복잡도가 심한 경우 적용 -이미 존재하는 데이터베이스의 복잡도가 심하여 Bottom Up 적용이 어려운 경우',
    n.aliases = ['Hybrid'];

MERGE (n:Concept {id: '데이터_분할'})
SET     n.name = '데이터 분할',
    n.name_kr = '데이터 분할',
    n.domain = 'DB',
    n.definition = 'Horizontal';

MERGE (n:Concept {id: 'vertical'})
SET     n.name = 'Vertical',
    n.name_kr = 'Vertical',
    n.domain = 'DB',
    n.definition = '한 관계의 속성을 분할하여 둘 이상의 서로 다른 장소에 저장 (Field 별 분할) 예) 전화요금 사용 고객정보 DB가 있을 경우 고객 기본사항은 중앙에 보관하고 변동 사항은 해당 지역 배치 방식',
    n.aliases = ['Vertical'];

// --- 관계 ---

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: 'db유형'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: 'na'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: '데이터_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: 'bottom_up'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Metric {id: 'hybrid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: '데이터_분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Concept {id: 'vertical'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Document {id: 'DB_029.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '분산db'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'na'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bottom_up'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'hybrid'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분할'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vertical'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_029.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_029.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_029.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_029.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_030: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_030'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_032: ERD
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_032'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'erd'})
SET     n.name = 'ERD',
    n.name_kr = 'ERD',
    n.domain = 'DB',
    n.aliases = ['ERD'];

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터베이스_관계'})
SET     n.name = '데이터베이스 관계',
    n.name_kr = '데이터베이스 관계',
    n.domain = 'DB';

MERGE (n:Concept {id: '피터첸'})
SET     n.name = '피터첸',
    n.name_kr = '피터첸',
    n.domain = 'DB';

MERGE (n:Concept {id: '까마귀발'})
SET     n.name = '까마귀발',
    n.name_kr = '까마귀발',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '데이터베이스_관계'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'erd'})
MERGE (b:Concept {id: '피터첸'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erd'})
MERGE (b:Concept {id: '까마귀발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erd'})
MERGE (b:Document {id: 'DB_032'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'erd'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피터첸'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '까마귀발'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_033: 암스트롱 공리(Armstrong’s Axioms)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_033'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '암스트롱_공리'})
SET     n.name = '암스트롱 공리(Armstrong’s Axioms)',
    n.name_kr = '암스트롱 공리(Armstrong’s Axioms)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: 'closure'})
SET     n.name = '폐포',
    n.name_kr = '폐포',
    n.domain = 'DB';

MERGE (n:Concept {id: '함수적_종속성'})
SET     n.name = '함수적 종속성',
    n.name_kr = '함수적 종속성',
    n.domain = 'DB';

MERGE (n:Concept {id: '정규화'})
SET     n.name = '정규화',
    n.name_kr = '정규화',
    n.domain = 'DB';

MERGE (n:Concept {id: '재귀성'})
SET     n.name = '재귀성(반사공리)',
    n.name_kr = '재귀성(반사공리)',
    n.domain = 'DB';

MERGE (n:Concept {id: '부가성'})
SET     n.name = '부가성(확장공리)',
    n.name_kr = '부가성(확장공리)',
    n.domain = 'DB';

MERGE (n:Concept {id: '이행성'})
SET     n.name = '이행성(이행공리)',
    n.name_kr = '이행성(이행공리)',
    n.domain = 'DB';

MERGE (n:Concept {id: '분해'})
SET     n.name = '분해',
    n.name_kr = '분해',
    n.domain = 'DB';

MERGE (n:Concept {id: '합집합'})
SET     n.name = '합집합',
    n.name_kr = '합집합',
    n.domain = 'DB';

MERGE (n:Concept {id: '의사이행'})
SET     n.name = '의사이행',
    n.name_kr = '의사이행',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: 'closure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '함수적_종속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '정규화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '재귀성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '부가성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '이행성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '분해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '합집합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Concept {id: '의사이행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Document {id: 'DB_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '암스트롱_공리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'closure'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함수적_종속성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재귀성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부가성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이행성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분해'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합집합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사이행'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_034: Star & Snowflake Schema
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_034'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'star_&_snowflake_schema'})
SET     n.name = 'Star & Snowflake Schema',
    n.name_kr = 'Star & Snowflake Schema',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: '-스타_비가_노정'})
SET     n.name = '-스타 비가 노정(정이없다)',
    n.name_kr = '-스타 비가 노정(정이없다)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'star_schema'})
SET     n.name = 'Star Schema',
    n.name_kr = 'Star Schema',
    n.domain = 'DB',
    n.definition = '정규화된 Fact Table을 중심으로 비정규화된 Dimension Table 배치 형태 모델링 기법',
    n.aliases = ['Star Schema'];

MERGE (n:Concept {id: 'snowflake_schema'})
SET     n.name = 'Snowflake Schema',
    n.name_kr = 'Snowflake Schema',
    n.domain = 'DB',
    n.definition = '정규화된 Fact Table을 중심으로 정규화된(제3정규형) Dimension Table 배치 형태 모델링 기법',
    n.aliases = ['Snowflake Schema'];

// --- 관계 ---

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Concept {id: '-스타_비가_노정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Concept {id: 'star_schema'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Concept {id: 'snowflake_schema'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Document {id: 'DB_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'star_&_snowflake_schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '-스타_비가_노정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'star_schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snowflake_schema'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_035: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_035'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_036: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_036'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_037: 데이터베이스 관계
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_037'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'relationship'})
SET     n.name = 'Relationship',
    n.name_kr = '데이터베이스 관계',
    n.domain = 'DB',
    n.aliases = ['데이터베이스 관계'];

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: '1:1'})
SET     n.name = '1:1',
    n.name_kr = '1:1',
    n.domain = 'DB';

MERGE (n:Concept {id: '1:m'})
SET     n.name = '1:M',
    n.name_kr = '1:M',
    n.domain = 'DB';

MERGE (n:Concept {id: 'm:m'})
SET     n.name = 'M:M',
    n.name_kr = 'M:M',
    n.domain = 'DB';

MERGE (n:Concept {id: 'intersection_entity'})
SET     n.name = 'Intersection Entity',
    n.name_kr = 'Intersection Entity',
    n.domain = 'DB',
    n.aliases = ['Intersection Entity'];

MERGE (n:Concept {id: '순환관계'})
SET     n.name = '순환관계',
    n.name_kr = '순환관계',
    n.domain = 'DB';

MERGE (n:Concept {id: 'm_:m_순환관계_해소'})
SET     n.name = 'M :M 순환관계 해소',
    n.name_kr = 'M :M 순환관계 해소',
    n.domain = 'DB';

MERGE (n:Concept {id: '정상_관계'})
SET     n.name = '정상 관계',
    n.name_kr = '정상 관계',
    n.domain = 'DB',
    n.definition = '엔티티와 엔티티가 독립적으로 분리되어 있으면서, 상호간에 한 가지 관계만 존재하는 형태';

MERGE (n:Concept {id: '재귀적_관계'})
SET     n.name = '재귀적 관계',
    n.name_kr = '재귀적 관계',
    n.domain = 'DB',
    n.definition = '하나의 엔티티 내에서 엔티티와 엔티티가 관계를 맺고 있는 형태. - 부서, 부품, 메뉴 등과 같이 계층 구조 형태를 표현할 때 유용하다. - 부품은 다른 부품으로 조립된다.';

MERGE (n:Concept {id: '병렬_관계'})
SET     n.name = '병렬 관계',
    n.name_kr = '병렬 관계',
    n.domain = 'DB',
    n.definition = '엔티티와 엔티티가 독립적으로 분리되어 있으면서 두 개 이상의 관계가 상호간에 존재하는 형태 - 주문을 신청한 주문자로써의 관계와 주문한 물건을 받는 수신자로써의 관계';

MERGE (n:Concept {id: '슈퍼타입_서브타입_관계'})
SET     n.name = '슈퍼타입 서브타입 관계',
    n.name_kr = '슈퍼타입 서브타입 관계',
    n.domain = 'DB',
    n.definition = '공통 속성을 가지는 슈퍼타입과, 공통 부분을 제외하고 두 개 이상의 엔티티간의 속성에 차이가 있을 때 별도의 서브타입으로 존재할 수 있다. - 배타적 관계 : 슈퍼타입의 엔티티가 반드시 하나의 서브타입에는 속하는 관계 - 포함 관계 : 슈타타입의 엔티티가 두 개 이상의 서브타입에 포함될 수 있는 관계 - 직원은 반드시 일반직원이나 촉탁직원 중 하나에만 속할';

MERGE (n:Concept {id: '식별_/_비식별_관계'})
SET     n.name = '식별 / 비식별 관계',
    n.name_kr = '식별 / 비식별 관계',
    n.domain = 'DB',
    n.definition = '식별 관계 : 부모 엔티티의 주식별자가 자식 엔티티의 주식별자로 상속 - 비식별 관계 : 부모 엔티티의 주식별자가 자식 엔티티의 일반속성으로 상속';

MERGE (n:Concept {id: '식별관계'})
SET     n.name = '식별관계',
    n.name_kr = '식별관계',
    n.domain = 'DB',
    n.definition = '테이블의 기본키 또는 유니크 키를 자식 테이블이 자신의 기본키로 사용하는 관계 - 테이블의 키가 자신의 기본키에 포함되기 때문에 반드시 부모 테이블에 데이터가 존재해야 자식 테이블에 데이터를 입력할 수 있음 - 부모 데이터가 없다면 자식 데이터는 생길 수 없음 - 관계는 ERD상에서 실선으로 표시 - 부모 테이블에 자식 테이블이 종속됨';

MERGE (n:Concept {id: '비식별관계'})
SET     n.name = '비식별관계',
    n.name_kr = '비식별관계',
    n.domain = 'DB',
    n.definition = '부모 테이블의 기본키 또는 유니크 키를 자신의 기본키로 사용하지 않고, 외래 키로 사용하는 관계 - 자식 데이터는 부모 데이터가 없어도 독립적으로 생성될 수 있음 - 부모와의 의존성을 줄일 수 있기 때문에 조금 더 자유로운 데이터 생성과 수정이 가능함';

MERGE (n:Concept {id: '슈퍼타입'})
SET     n.name = '슈퍼타입',
    n.name_kr = '슈퍼타입',
    n.domain = 'DB',
    n.definition = '데이터 모델의 관계 엔티티들간의 업무 수행시 확장하여 사용하는 공통속성을 하나로 묶어 통합하여 관리하는 데이터 모델';

MERGE (n:Concept {id: '서브타입'})
SET     n.name = '서브타입',
    n.name_kr = '서브타입',
    n.domain = 'DB',
    n.definition = '엔티티들 내부의 속성 중 업무에 상호 배타적으로 적용하여 사용하는 속성을 유형별로 세분화하여 관리하는 데이터 모델';

MERGE (n:Concept {id: '슈퍼타입과_서브타입_차이점'})
SET     n.name = '슈퍼타입과 서브타입 차이점',
    n.name_kr = '슈퍼타입과 서브타입 차이점',
    n.domain = 'DB',
    n.definition = '업무를 구성할 때 데이터의 특정을 공통점과 차이점을 고려하여 효과적으로 표현 - 공통된 부분을 슈퍼타입으로 모델링하고 공통부분으로부터 상속받아 다른 엔티티와 차이가 있는 속성에 대해서는 별도의 서브엔티티로 구분하여 업무를 정확하게 표현하여 물리적인 데이터 모델로 변환할 수 있음';

MERGE (n:Concept {id: 'one_to_one_type'})
SET     n.name = 'One-to-One Type',
    n.name_kr = 'One-to-One Type',
    n.domain = 'DB',
    n.aliases = ['One-to-One Type'];

MERGE (n:Concept {id: 'plus_type'})
SET     n.name = 'Plus Type',
    n.name_kr = 'Plus Type',
    n.domain = 'DB',
    n.definition = '확장성 보통 - 조인 불가 - 슈퍼-서브 Table 관계',
    n.aliases = ['Plus Type'];

MERGE (n:Concept {id: 'single_type'})
SET     n.name = 'Single Type',
    n.name_kr = 'Single Type',
    n.domain = 'DB',
    n.definition = '확장성 나쁨 - 조인 성능 우수 - 전체 Entity 를 하나로 통합',
    n.aliases = ['Single Type'];

// --- 관계 ---

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '1:1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '1:m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'm:m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'intersection_entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '순환관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'm_:m_순환관계_해소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '정상_관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '재귀적_관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '병렬_관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '슈퍼타입_서브타입_관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '식별_/_비식별_관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '식별관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '비식별관계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '슈퍼타입'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '서브타입'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '슈퍼타입과_서브타입_차이점'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'one_to_one_type'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'plus_type'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'single_type'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Document {id: 'DB_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:1'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:m'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm:m'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intersection_entity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순환관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm_:m_순환관계_해소'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정상_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재귀적_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슈퍼타입_서브타입_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별_/_비식별_관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비식별관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슈퍼타입'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서브타입'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슈퍼타입과_서브타입_차이점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_to_one_type'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plus_type'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'single_type'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_038: 데이터베이스 카디널리티
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_038'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'database_cardinality'})
SET     n.name = 'Database Cardinality',
    n.name_kr = '데이터베이스 카디널리티',
    n.domain = 'DB',
    n.aliases = ['데이터베이스 카디널리티'];

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: '릴레이션'})
SET     n.name = '릴레이션',
    n.name_kr = '릴레이션',
    n.domain = 'DB';

MERGE (n:Concept {id: '튜플'})
SET     n.name = '튜플',
    n.name_kr = '튜플',
    n.domain = 'DB';

MERGE (n:Concept {id: '속성'})
SET     n.name = '속성',
    n.name_kr = '속성',
    n.domain = 'DB';

MERGE (n:Concept {id: '레코드'})
SET     n.name = '레코드',
    n.name_kr = '레코드',
    n.domain = 'DB';

MERGE (n:Concept {id: '차수'})
SET     n.name = '차수',
    n.name_kr = '차수',
    n.domain = 'DB';

MERGE (n:Concept {id: '도메인'})
SET     n.name = '도메인',
    n.name_kr = '도메인',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '릴레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '튜플'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '레코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '차수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Concept {id: '도메인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Document {id: 'DB_038'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'database_cardinality'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '릴레이션'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '튜플'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '레코드'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차수'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도메인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_039.1: 자기참조관계
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_039.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'recursive_relationship'})
SET     n.name = 'Recursive Relationship',
    n.name_kr = '자기참조관계',
    n.domain = 'DB',
    n.aliases = ['자기참조관계'];

MERGE (n:Concept {id: 'db설계'})
SET     n.name = 'DB설계',
    n.name_kr = 'DB설계',
    n.domain = 'DB';

MERGE (n:Concept {id: 'bom'})
SET     n.name = 'BOM',
    n.name_kr = 'BOM',
    n.domain = 'DB',
    n.aliases = ['BOM'];

MERGE (n:Concept {id: '계층적_구성'})
SET     n.name = '계층적 구성',
    n.name_kr = '계층적 구성',
    n.domain = 'DB';

MERGE (n:Concept {id: '다중entity'})
SET     n.name = '다중Entity',
    n.name_kr = '다중Entity',
    n.domain = 'DB';

MERGE (n:Concept {id: '단일entity'})
SET     n.name = '단일Entity',
    n.name_kr = '단일Entity',
    n.domain = 'DB';

MERGE (n:Concept {id: '유형(1:1'})
SET     n.name = '유형(1:1',
    n.name_kr = '유형(1:1',
    n.domain = 'DB';

MERGE (n:Concept {id: '1:m'})
SET     n.name = '1:M',
    n.name_kr = '1:M',
    n.domain = 'DB';

MERGE (n:Concept {id: 'm:n)'})
SET     n.name = 'M:N)',
    n.name_kr = 'M:N)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'm:n_해소방법'})
SET     n.name = 'M:N 해소방법',
    n.name_kr = 'M:N 해소방법',
    n.domain = 'DB';

MERGE (n:Concept {id: '1:1자기참조관계'})
SET     n.name = '1:1자기참조관계',
    n.name_kr = '1:1자기참조관계',
    n.domain = 'DB';

MERGE (n:Concept {id: '1:m자기참조관계'})
SET     n.name = '1:M자기참조관계',
    n.name_kr = '1:M자기참조관계',
    n.domain = 'DB',
    n.definition = '상위 조직 하나에 여러 개의 하위조직이 올 수 있고 다시 하위 조직 하나는 그 하위 조직 여러 개를 거느리는 경우 예 : 조직, 게시판의 Q&A, 통합메뉴, BOM';

MERGE (n:Concept {id: 'm:n자기참조관계'})
SET     n.name = 'M:N자기참조관계',
    n.name_kr = 'M:N자기참조관계',
    n.domain = 'DB',
    n.definition = '부품 1은 상위부품으로 2도 구성할 수 있고 4도 구성할 수 있음. 이럴 경우 관계의 표현이M:N 표현되어 모델링 됨 - 예 : BOM, 관련계좌 등';

// --- 관계 ---

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: 'db설계'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: 'bom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '계층적_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '다중entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '단일entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '유형(1:1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '1:m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: 'm:n)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: 'm:n_해소방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '1:1자기참조관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: '1:m자기참조관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Concept {id: 'm:n자기참조관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Document {id: 'DB_039.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'recursive_relationship'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db설계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bom'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계층적_구성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중entity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일entity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형(1:1'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:m'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm:n)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm:n_해소방법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:1자기참조관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1:m자기참조관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm:n자기참조관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_039.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_039.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_039.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_039.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_039.4: OR Mapping(Object-Relational)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_039.4'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'object_relational'})
SET     n.name = 'Object-Relational',
    n.name_kr = 'OR Mapping',
    n.domain = 'DB',
    n.aliases = ['Object-Relational', 'OR Mapping'];

MERGE (n:Concept {id: 'db_응용'})
SET     n.name = 'DB 응용',
    n.name_kr = 'DB 응용',
    n.domain = 'DB';

MERGE (n:Concept {id: 'or_mapping'})
SET     n.name = 'OR Mapping',
    n.name_kr = 'OR Mapping',
    n.domain = 'DB',
    n.aliases = ['OR Mapping'];

MERGE (n:Concept {id: 'attribute_to_column'})
SET     n.name = 'Attribute To Column',
    n.name_kr = 'Attribute To Column',
    n.domain = 'DB',
    n.aliases = ['Attribute To Column'];

MERGE (n:Concept {id: 'one_to_many'})
SET     n.name = 'One-To-Many',
    n.name_kr = 'One-To-Many',
    n.domain = 'DB',
    n.definition = 'class Post(): … class Comment(models.Model): post = models.foreignKey(Post, on_delete=models.CASCADE)',
    n.aliases = ['One-To-Many'];

MERGE (n:Concept {id: '2_attribute_to_column'})
SET     n.name = '2.Attribute To Column',
    n.name_kr = '2.Attribute To Column',
    n.domain = 'DB',
    n.definition = 'Class instance의 Attribute는 Table Column 으로 매핑';

// --- 관계 ---

MERGE (a:Concept {id: 'or_mapping'})
MERGE (b:Concept {id: 'db_응용'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'object_relational'})
MERGE (b:Concept {id: 'attribute_to_column'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_relational'})
MERGE (b:Concept {id: 'one_to_many'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_relational'})
MERGE (b:Concept {id: '2_attribute_to_column'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_relational'})
MERGE (b:Document {id: 'DB_039.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'object_relational'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_응용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'or_mapping'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'attribute_to_column'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_to_many'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_attribute_to_column'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_040.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_040.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_040.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_040.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_041: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_041'})
SET doc.domain = 'DB';

// ================================================================
// DB 도메인 자동 생성 완료
// 노드: 292개
// 관계: 590개
// ================================================================