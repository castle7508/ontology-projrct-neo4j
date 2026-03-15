// ================================================================
// DB 도메인 (DB_001 ~ DB_011.2) -- 온톨로지 Cypher
// 도메인: DB (데이터베이스)
// 주제: 데이터베이스 정의, 트랜잭션, 데이터 독립성, 격리수준,
//       팬텀충돌, 엔티티, 키 유형, 스키마/인스턴스,
//       스토어드 프로시저, 뷰
// ================================================================

// ──────────────────────────────────────
// DB_001: 데이터베이스 정의
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'database'})
SET c.name = 'Database',
    c.name_kr = '데이터베이스',
    c.domain = 'DB',
    c.definition = '한 조직의 여러 응용시스템이 공용하기 위해 최소의 중복으로 통합, 저장된 운영 데이터의 집합.',
    c.aliases = ['DB', '데이터베이스'],
    c.keywords = '통저운공, 실계동내',
    c.importance = 'high';

MERGE (c:Concept {id: 'integrated_data'})
SET c.name = 'Integrated Data',
    c.name_kr = '통합 데이터',
    c.domain = 'DB',
    c.definition = '최소의 중복, 통제된 중복으로 관리되는 데이터.';

MERGE (c:Concept {id: 'stored_data'})
SET c.name = 'Stored Data',
    c.name_kr = '저장 데이터',
    c.domain = 'DB',
    c.definition = '컴퓨터가 접근 가능한 저장 매체에 저장된 데이터.';

MERGE (c:Concept {id: 'operational_data'})
SET c.name = 'Operational Data',
    c.name_kr = '운영 데이터',
    c.domain = 'DB',
    c.definition = '한 조직의 고유 기능을 수행하기 위해 필요한 데이터.';

MERGE (c:Concept {id: 'shared_data'})
SET c.name = 'Shared Data',
    c.name_kr = '공용 데이터',
    c.domain = 'DB',
    c.definition = '한 조직의 여러 응용 프로그램이 공동으로 소유, 유지, 이용하는 데이터.';

// --- Metric 노드: 데이터베이스 특징 ---

MERGE (m:Metric {id: 'realtime_accessibility'})
SET m.name = 'Realtime Accessibility',
    m.name_kr = '실시간 접근성',
    m.domain = 'DB',
    m.definition = '실시간 응답시간 기준, 온라인 처리를 지원하는 특성.';

MERGE (m:Metric {id: 'continuous_evolution'})
SET m.name = 'Continuous Evolution',
    m.name_kr = '계속적인 변화',
    m.domain = 'DB',
    m.definition = '데이터베이스 상태가 동적이며 삽입, 갱신, 삭제를 통해 정확성을 유지하는 특성.';

MERGE (m:Metric {id: 'concurrent_sharing'})
SET m.name = 'Concurrent Sharing',
    m.name_kr = '동시 공용성',
    m.domain = 'DB',
    m.definition = '다중 사용자의 동시 접근을 지원하는 특성.';

MERGE (m:Metric {id: 'content_based_reference'})
SET m.name = 'Content-based Reference',
    m.name_kr = '내용에 의한 참조',
    m.domain = 'DB',
    m.definition = '데이터의 내용(값)에 따라 참조하는 특성.';

// --- Technology 노드: DBMS ---

MERGE (t:Technology {id: 'dbms'})
SET t.name = 'DBMS',
    t.name_kr = '데이터베이스 관리 시스템',
    t.category = 'platform',
    t.domain = 'DB',
    t.definition = '데이터베이스를 관리하는 소프트웨어로 데이터베이스, 데이터베이스 언어, 사용자, DBMS 소프트웨어로 구성.',
    t.aliases = ['Database Management System'];

MERGE (c:Concept {id: 'database_system'})
SET c.name = 'Database System',
    c.name_kr = '데이터베이스 시스템',
    c.domain = 'DB',
    c.definition = '데이터를 Database에 저장하고, 관리해서 필요한 정보를 생성하는 컴퓨터 중심의 시스템.';

// --- Concept 노드: 데이터 모델링 기본 ---

MERGE (c:Concept {id: 'entity'})
SET c.name = 'Entity',
    c.name_kr = '개체(엔티티)',
    c.domain = 'DB',
    c.definition = '사물 및 개념의 특성 또는 성질을 공유하는 실체로 업무에 필요하고 유용한 정보를 저장 및 관리하기 위한 인스턴스의 집합.',
    c.importance = 'high';

MERGE (c:Concept {id: 'attribute'})
SET c.name = 'Attribute',
    c.name_kr = '속성(애트리뷰트)',
    c.domain = 'DB',
    c.definition = '데이터의 가장 작은 논리적 단위.';

MERGE (c:Concept {id: 'relationship'})
SET c.name = 'Relationship',
    c.name_kr = '관계',
    c.domain = 'DB',
    c.definition = '속성관계, 개체관계, 개체내 관계, 개체간 관계를 포함.';

MERGE (c:Concept {id: 'er_diagram'})
SET c.name = 'ER Diagram',
    c.name_kr = 'ER 다이어그램',
    c.domain = 'DB',
    c.definition = '개체와 관계를 도식으로 표현한 다이어그램.';

// ──────────────────────────────────────
// DB_003: 트랜잭션 (Transaction)
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'transaction'})
SET c.name = 'Transaction',
    c.name_kr = '트랜잭션',
    c.domain = 'DB',
    c.definition = '한번에 처리되어야 할 하나 또는 둘 이상의 일련의 작업단위로써 데이터베이스에 행해지는 작업의 논리적 단위.',
    c.aliases = ['트랜잭션', 'Logical Unit of Work'],
    c.keywords = 'ACID, 활부완 실철',
    c.importance = 'high';

// --- Standard 노드: ACID ---

MERGE (s:Standard {id: 'acid'})
SET s.name = 'ACID',
    s.name_kr = 'ACID',
    s.domain = 'DB',
    s.definition = '트랜잭션의 4가지 특성: 원자성(Atomicity), 일관성(Consistency), 고립성(Isolation), 영속성(Durability).';

MERGE (c:Concept {id: 'atomicity'})
SET c.name = 'Atomicity',
    c.name_kr = '원자성',
    c.domain = 'DB',
    c.definition = '트랜잭션의 모든 연산이 데이터베이스에 반영되거나 전혀 반영되지 않아야 함 (All or Nothing).',
    c.guarantee_method = 'Recovery (Commit/Rollback)';

MERGE (c:Concept {id: 'consistency'})
SET c.name = 'Consistency',
    c.name_kr = '일관성',
    c.domain = 'DB',
    c.definition = '일관된 상태의 데이터베이스에서 하나의 트랜잭션을 정확히 수행하면 또 다른 일관된 상태를 유지.',
    c.guarantee_method = '도메인 무결성, 릴레이션 무결성';

MERGE (c:Concept {id: 'isolation'})
SET c.name = 'Isolation',
    c.name_kr = '고립성',
    c.domain = 'DB',
    c.definition = '트랜잭션이 완료되기 전까지 갱신 중인 데이터에 다른 트랜잭션이 접근하지 못하도록 제한.',
    c.guarantee_method = 'Locking, 병행제어, 2-Phase Locking';

MERGE (c:Concept {id: 'durability'})
SET c.name = 'Durability',
    c.name_kr = '영속성',
    c.domain = 'DB',
    c.definition = '트랜잭션이 완료된 이후에는 장애가 발생해도 갱신한 데이터 손실을 방지.',
    c.guarantee_method = 'Archive, 로그, Redo/Undo 기반 회복';

// --- Concept 노드: 트랜잭션 상태 ---

MERGE (c:Concept {id: 'transaction_state_active'})
SET c.name = 'Active State',
    c.name_kr = '활동 상태',
    c.domain = 'DB',
    c.definition = '트랜잭션이 시작되어 실행중인 상태. BEGIN_TRANSACTION, READ, WRITE 연산 수행.';

MERGE (c:Concept {id: 'transaction_state_partial_committed'})
SET c.name = 'Partial Committed State',
    c.name_kr = '부분 완료 상태',
    c.domain = 'DB',
    c.definition = '트랜잭션의 모든 연산이 실행 완료된 후 Commit 연산 실행 전 상태.';

MERGE (c:Concept {id: 'transaction_state_failed'})
SET c.name = 'Failed State',
    c.name_kr = '실패 상태',
    c.domain = 'DB',
    c.definition = '트랜잭션 실행 중 오류가 발생되어 수행이 중단된 상태.';

MERGE (c:Concept {id: 'transaction_state_committed'})
SET c.name = 'Committed State',
    c.name_kr = '완료 상태',
    c.domain = 'DB',
    c.definition = '트랜잭션이 성공적으로 종료되어 Commit 연산을 실행한 후의 상태.';

MERGE (c:Concept {id: 'transaction_state_aborted'})
SET c.name = 'Aborted State',
    c.name_kr = '철회 상태',
    c.domain = 'DB',
    c.definition = '트랜잭션이 비정상적으로 수행되어 Rollback 연산이 수행된 상태.';

// --- Concept 노드: 직렬성 문제 ---

MERGE (c:Concept {id: 'serializability'})
SET c.name = 'Serializability',
    c.name_kr = '직렬성',
    c.domain = 'DB',
    c.definition = '여러 트랜잭션이 동시에 병행 수행되더라도 각 트랜잭션이 하나씩 차례대로 수행되는 것과 같은 일관성을 보장하는 특성.';

MERGE (c:Concept {id: 'lost_update'})
SET c.name = 'Lost Update',
    c.name_kr = '갱신 손실',
    c.domain = 'DB',
    c.definition = '트랜잭션들이 동일한 데이터를 동시에 갱신할 때 갱신 내용이 손실되는 문제.';

MERGE (c:Concept {id: 'dirty_read'})
SET c.name = 'Dirty Read',
    c.name_kr = '현황 오류(부정판독)',
    c.domain = 'DB',
    c.definition = '다른 트랜잭션에 의해 수정되었지만 아직 커밋되지 않은 데이터를 읽는 현상.';

MERGE (c:Concept {id: 'inconsistency_problem'})
SET c.name = 'Inconsistency',
    c.name_kr = '모순성',
    c.domain = 'DB',
    c.definition = '복수의 트랜잭션이 동시에 데이터를 액세스하고 갱신할 때 DB 내 데이터가 불일치하는 문제.';

MERGE (c:Concept {id: 'cascaded_rollback'})
SET c.name = 'Cascaded Rollback',
    c.name_kr = '연쇄복귀',
    c.domain = 'DB',
    c.definition = '동일한 데이터에 접근한 트랜잭션 중 일부가 취소되어 rollback되는 과정에서 발생하는 문제.';

// --- Method 노드: 동시성 제어 ---

MERGE (m:Method {id: 'concurrency_control'})
SET m.name = 'Concurrency Control',
    m.name_kr = '동시성 제어(병행제어)',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '트랜잭션의 직렬성을 보장하여 데이터베이스 무결성을 유지하는 기법.';

MERGE (m:Method {id: 'locking'})
SET m.name = 'Locking',
    m.name_kr = '로킹',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '트랜잭션이 데이터에 접근할 때 잠금을 설정하여 동시 접근을 제어하는 기법.';

MERGE (m:Method {id: 'two_phase_locking'})
SET m.name = '2-Phase Locking',
    m.name_kr = '2단계 로킹',
    m.category = 'technique',
    m.domain = 'DB',
    m.aliases = ['2PL'],
    m.definition = 'Growing Phase에서 잠금 획득, Shrinking Phase에서 잠금 해제하는 로킹 프로토콜.';

MERGE (m:Method {id: 'recovery'})
SET m.name = 'Recovery',
    m.name_kr = '회복',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '트랜잭션 장애 시 데이터베이스를 일관된 상태로 복구하는 기법. Redo/Undo 기반.';

// ──────────────────────────────────────
// DB_004: 데이터 독립성
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'data_independence'})
SET c.name = 'Data Independence',
    c.name_kr = '데이터 독립성',
    c.domain = 'DB',
    c.definition = 'DB의 논리적 구조나 물리적 구조가 변경되어도 응용프로그램에 영향을 주지 않는 성질.',
    c.keywords = '외개내, 논리, 물리 독립성, 사상(Mapping)',
    c.importance = 'high';

MERGE (c:Concept {id: 'logical_data_independence'})
SET c.name = 'Logical Data Independence',
    c.name_kr = '논리적 데이터 독립성',
    c.domain = 'DB',
    c.definition = '개념 스키마가 변경되더라도 외부 스키마가 영향을 받지 않는 성질. 뷰와 테이블 사이의 독립성.';

MERGE (c:Concept {id: 'physical_data_independence'})
SET c.name = 'Physical Data Independence',
    c.name_kr = '물리적 데이터 독립성',
    c.domain = 'DB',
    c.definition = '내부 스키마를 변경하더라도 개념 스키마가 영향을 받지 않는 성질.';

// --- Standard 노드: ANSI/SPARC ---

MERGE (s:Standard {id: 'ansi_sparc'})
SET s.name = 'ANSI/SPARC',
    s.name_kr = 'ANSI/SPARC 3단계 구조',
    s.domain = 'DB',
    s.definition = 'DBMS의 구현을 위한 추상적인 설계 표준. 외부, 개념, 내부 단계 구분.';

// --- Concept 노드: 3단계 스키마 ---

MERGE (c:Concept {id: 'three_level_schema'})
SET c.name = 'Three-Level Schema Architecture',
    c.name_kr = '3단계 스키마 구조',
    c.domain = 'DB',
    c.definition = '외부스키마, 개념스키마, 내부스키마를 분리하여 데이터간 독립성을 보장하기 위한 아키텍처.';

MERGE (c:Concept {id: 'external_schema'})
SET c.name = 'External Schema',
    c.name_kr = '외부 스키마',
    c.domain = 'DB',
    c.definition = '사용자나 응용프로그래머가 접근하는 데이터베이스의 논리적 부분. 서브 스키마라고도 함.',
    c.aliases = ['Sub Schema'];

MERGE (c:Concept {id: 'conceptual_schema'})
SET c.name = 'Conceptual Schema',
    c.name_kr = '개념 스키마',
    c.domain = 'DB',
    c.definition = '데이터베이스의 전체 구조를 추상화하는 단계. 통합 조직별로 하나만 존재. 하드웨어와 소프트웨어에 독립적.';

MERGE (c:Concept {id: 'internal_schema'})
SET c.name = 'Internal Schema',
    c.name_kr = '내부 스키마',
    c.domain = 'DB',
    c.definition = '저장장치의 입장에서 데이터베이스 전체가 저장되는 방법을 명세. 추상화의 최하위 단계.';

// --- Concept 노드: 사상(Mapping) ---

MERGE (c:Concept {id: 'external_conceptual_mapping'})
SET c.name = 'External-Conceptual Mapping',
    c.name_kr = '외부/개념 사상',
    c.domain = 'DB',
    c.definition = '외부 스키마와 개념 스키마 간의 대응 관계. 논리적 데이터 독립성 제공.';

MERGE (c:Concept {id: 'conceptual_internal_mapping'})
SET c.name = 'Conceptual-Internal Mapping',
    c.name_kr = '개념/내부 사상',
    c.domain = 'DB',
    c.definition = '개념 스키마와 내부 스키마 간의 대응 관계. 물리적 데이터 독립성 제공.';

// ──────────────────────────────────────
// DB_006: 격리성 수준 (Isolation Level)
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'isolation_level'})
SET c.name = 'Isolation Level',
    c.name_kr = '격리성 수준',
    c.domain = 'DB',
    c.definition = '트랜잭션의 실행 중에 생성, 변경되는 데이터에 대하여 다른 트랜잭션의 접근 가능여부를 레벨화하여 병행성과 일관성 수준을 Lock Level을 통해 정의한 것.',
    c.keywords = 'DNP, RU, RC, RR, SR',
    c.importance = 'high';

MERGE (c:Concept {id: 'read_uncommitted'})
SET c.name = 'Read Uncommitted',
    c.name_kr = 'Read Uncommitted',
    c.domain = 'DB',
    c.definition = '트랜잭션에서 처리 중인 아직 Commit 되지 않은 데이터를 다른 트랜잭션이 읽는 것을 허용.',
    c.allowed_problems = ['Dirty Read', 'Non-Repeatable Read', 'Phantom Read'];

MERGE (c:Concept {id: 'read_committed'})
SET c.name = 'Read Committed',
    c.name_kr = 'Read Committed',
    c.domain = 'DB',
    c.definition = '트랜잭션이 Commit 되어 확정된 데이터만 다른 트랜잭션이 읽도록 허용.',
    c.allowed_problems = ['Non-Repeatable Read', 'Phantom Read'];

MERGE (c:Concept {id: 'repeatable_read'})
SET c.name = 'Repeatable Read',
    c.name_kr = 'Repeatable Read',
    c.domain = 'DB',
    c.definition = '트랜잭션 내에서 쿼리를 두 번 이상 수행할 때 첫 번째 쿼리에 있던 레코드가 사라지거나 값이 바뀌는 현상을 방지.',
    c.allowed_problems = ['Phantom Read'];

MERGE (c:Concept {id: 'serializable_read'})
SET c.name = 'Serializable Read',
    c.name_kr = 'Serializable Read',
    c.domain = 'DB',
    c.definition = '가장 높은 격리 수준. 첫 번째 쿼리에 있던 레코드 변경 방지 및 새로운 레코드 삽입도 방지.',
    c.allowed_problems = [];

// --- Concept 노드: 격리성 문제 ---

MERGE (c:Concept {id: 'non_repeatable_read'})
SET c.name = 'Non-Repeatable Read',
    c.name_kr = '비반복 판독',
    c.domain = 'DB',
    c.definition = '한 트랜잭션 내에서 같은 쿼리를 두 번 수행했는데 다른 트랜잭션이 값을 수정/삭제하여 두 쿼리 결과가 다르게 나타나는 현상.';

MERGE (c:Concept {id: 'phantom_read'})
SET c.name = 'Phantom Read',
    c.name_kr = '가상 판독(팬텀 리드)',
    c.domain = 'DB',
    c.definition = '한 트랜잭션 내에서 같은 쿼리를 두 번 수행했는데 첫 번째 쿼리에서 없던 레코드가 두 번째 쿼리에서 나타나는 현상.';

// --- Standard 노드 ---

MERGE (s:Standard {id: 'sql_92'})
SET s.name = 'SQL-92',
    s.name_kr = 'SQL-92',
    s.domain = 'DB',
    s.definition = 'ANSI/ISO SQL 표준으로 4단계 Isolation Level을 표준화.';

// ──────────────────────────────────────
// DB_007: 팬텀 충돌 (Phantom Conflict)
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'phantom_conflict'})
SET c.name = 'Phantom Conflict',
    c.name_kr = '팬텀 충돌',
    c.domain = 'DB',
    c.definition = '데이터베이스에 삽입되려는 가상의 투플(Phantom Tuple)에 의해 트랜잭션이 충돌되어 일관성 및 무결성이 보장되지 않는 현상.',
    c.keywords = '팬텀 투플, Phantom Read, 인덱스 로킹, Locking 단위 확대';

MERGE (c:Concept {id: 'phantom_tuple'})
SET c.name = 'Phantom Tuple',
    c.name_kr = '팬텀 투플',
    c.domain = 'DB',
    c.definition = '실제 데이터베이스에 저장되어 있지 않지만 삽입되려는 가상의 투플.';

// --- Method 노드: 해결방법 ---

MERGE (m:Method {id: 'locking_unit_expansion'})
SET m.name = 'Locking Unit Expansion',
    m.name_kr = '로킹 단위 확대',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = 'Locking의 단위를 투플이 아니라 릴레이션으로 확대하여 팬텀 충돌을 해결. 병행성 감소 단점 존재.';

MERGE (m:Method {id: 'index_locking'})
SET m.name = 'Index Locking',
    m.name_kr = '인덱스 로킹',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '릴레이션의 인덱스 버킷에 Locking 규약을 사용하여 팬텀 충돌을 해결하는 기법.';

// ──────────────────────────────────────
// DB_008: 엔티티 (Entity)
// ──────────────────────────────────────

// --- Concept 노드: 엔티티 유형 (유무형) ---

MERGE (c:Concept {id: 'tangible_entity'})
SET c.name = 'Tangible Entity',
    c.name_kr = '유형 엔티티',
    c.domain = 'DB',
    c.definition = '물리적 실체가 존재하고 지속적으로 활용되며 업무 구분이 용이한 엔티티. 예: 사원, 물품, 강사.';

MERGE (c:Concept {id: 'conceptual_entity'})
SET c.name = 'Conceptual Entity',
    c.name_kr = '개념 엔티티',
    c.domain = 'DB',
    c.definition = '물리적 형태는 없지만 관리해야 할 개념적 정보로 구성된 엔티티. 예: 조직, 보험상품.';

MERGE (c:Concept {id: 'event_entity'})
SET c.name = 'Event Entity',
    c.name_kr = '사건 엔티티',
    c.domain = 'DB',
    c.definition = '업무수행 시 발생하며 다량 발생하고 통계 활용이 가능한 엔티티. 예: 주문, 청구.';

// --- Concept 노드: 엔티티 유형 (발생시점) ---

MERGE (c:Concept {id: 'basic_entity'})
SET c.name = 'Basic Entity',
    c.name_kr = '기본 엔티티',
    c.domain = 'DB',
    c.definition = '기본 업무에 존재하는 정보로 독립적으로 생성되며 타 엔티티의 부모 역할. 예: 사원, 부서, 고객.';

MERGE (c:Concept {id: 'central_entity'})
SET c.name = 'Central Entity',
    c.name_kr = '중심 엔티티',
    c.domain = 'DB',
    c.definition = '기본 엔티티에서 파생되어 업무의 중심 역할을 수행하며 행위 엔티티를 생성. 예: 계약, 주문, 매출.';

MERGE (c:Concept {id: 'action_entity'})
SET c.name = 'Action Entity',
    c.name_kr = '행위 엔티티',
    c.domain = 'DB',
    c.definition = '상세 설계나 상관 모델링에서 도출되며 변경이 자주 되고 대량의 데이터가 발생하는 엔티티. 예: 주문목록, 사원변경이력.';

// --- Method 노드: 엔티티 도출방법 ---

MERGE (m:Method {id: 'noun_extraction'})
SET m.name = 'Noun Extraction',
    m.name_kr = '명사형 도출',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '장표나 업무기술서 등에서 명사를 구분하여 엔티티를 도출하는 방법.';

MERGE (m:Method {id: 'normalization_based_extraction'})
SET m.name = 'Normalization-based Extraction',
    m.name_kr = '정규화 이용 도출',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '1차~5차 정규화를 통해 엔티티를 합리적으로 도출하는 방법.';

MERGE (m:Method {id: 'four_step_data_modeling'})
SET m.name = '4-Step Data Modeling',
    m.name_kr = '4단계 데이터 모델링',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = '구조 -> 업무흐름 -> 기술적 모델링 -> 검토 정제의 4단계로 구성된 엔티티 도출 방법.';

// --- Method 노드: CRUD Matrix ---

MERGE (m:Method {id: 'crud_matrix'})
SET m.name = 'CRUD Matrix',
    m.name_kr = 'CRUD 매트릭스',
    m.category = 'technique',
    m.domain = 'DB',
    m.definition = 'Entity Type 검증 기법으로 Create, Read, Update, Delete 연산을 매트릭스로 분석.';

// ──────────────────────────────────────
// DB_009: 키(Key) 유형
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'db_key'})
SET c.name = 'Key',
    c.name_kr = '키',
    c.domain = 'DB',
    c.definition = '하나의 릴레이션 내에서 각각의 튜플들을 유일하게 식별할 수 있는 속성의 집합.',
    c.keywords = '유일성, 최소성, 대표성',
    c.importance = 'high';

MERGE (c:Concept {id: 'super_key'})
SET c.name = 'Super Key',
    c.name_kr = '슈퍼키',
    c.domain = 'DB',
    c.definition = '유일성은 만족하지만 최소성은 만족하지 않는 키.',
    c.properties = ['유일성'];

MERGE (c:Concept {id: 'candidate_key'})
SET c.name = 'Candidate Key',
    c.name_kr = '후보키',
    c.domain = 'DB',
    c.definition = '유일성과 최소성 모두를 만족하는 키.',
    c.properties = ['유일성', '최소성', 'Not Null'];

MERGE (c:Concept {id: 'primary_key'})
SET c.name = 'Primary Key',
    c.name_kr = '기본키',
    c.domain = 'DB',
    c.definition = '후보키 중 하나를 대표로 선정하여 사용하는 키.';

MERGE (c:Concept {id: 'alternate_key'})
SET c.name = 'Alternate Key',
    c.name_kr = '대체키',
    c.domain = 'DB',
    c.definition = '여러 후보키들 중에서 기본키로 선정되고 남은 나머지 키.';

MERGE (c:Concept {id: 'foreign_key'})
SET c.name = 'Foreign Key',
    c.name_kr = '외래키',
    c.domain = 'DB',
    c.definition = '릴레이션 속성의 집합이 다른 릴레이션에서 기본키로 이용되는 키.';

// --- Concept 노드: 제약 유형 ---

MERGE (c:Concept {id: 'essential_constraint'})
SET c.name = 'Essential Constraint',
    c.name_kr = '본질적 제약',
    c.domain = 'DB',
    c.definition = '데이터 모델의 구조적 특성으로 인한 제약. 반드시 기본키가 있어야 하고 테이블의 각 셀이 단일 값을 가져야 함 (1차 정규화).';

MERGE (c:Concept {id: 'implicit_constraint'})
SET c.name = 'Implicit Constraint',
    c.name_kr = '내재적 제약',
    c.domain = 'DB',
    c.definition = '데이터 의미를 정확히 표현하고 오류를 방지하기 위해 DB 스키마에 지정하는 제약. 영역 제약, 참조 무결성 제약 포함.';

MERGE (c:Concept {id: 'explicit_constraint'})
SET c.name = 'Explicit Constraint',
    c.name_kr = '명시적 제약',
    c.domain = 'DB',
    c.definition = '프로그램에 명시하거나 사용자의 수작업으로 생성하는 제약.';

MERGE (c:Concept {id: 'referential_integrity'})
SET c.name = 'Referential Integrity',
    c.name_kr = '참조 무결성 제약',
    c.domain = 'DB',
    c.definition = 'Tuple 간 일관성 유지를 위해 외래키 또는 트리거를 사용하여 명시하는 제약.';

MERGE (c:Concept {id: 'domain_constraint'})
SET c.name = 'Domain Constraint',
    c.name_kr = '범위(Domain) 제약',
    c.domain = 'DB',
    c.definition = '컬럼(속성) 형식의 제약으로 잘못된 입력을 방지. Check, Default, NOT NULL, Rule 등.';

// ──────────────────────────────────────
// DB_010: 스키마와 인스턴스
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'schema'})
SET c.name = 'Schema',
    c.name_kr = '스키마',
    c.domain = 'DB',
    c.definition = '데이터베이스의 구조(Structure)와 제약조건(Constraint)에 대한 명세(Specification)를 기술한 것. 데이터 객체, 개체, 속성, 관계, 제약조건 포함.',
    c.language = 'DDL (Data Definition Language)';

MERGE (c:Concept {id: 'instance'})
SET c.name = 'Instance',
    c.name_kr = '인스턴스',
    c.domain = 'DB',
    c.definition = '특정 시간에 Database에 저장된 정보의 모임으로 스키마의 실제 Data.',
    c.language = 'DML (Data Manipulation Language)';

// ──────────────────────────────────────
// DB_011.1: 스토어드 프로시저 (Stored Procedure)
// ──────────────────────────────────────

// --- Technology 노드 ---

MERGE (t:Technology {id: 'stored_procedure'})
SET t.name = 'Stored Procedure',
    t.name_kr = '스토어드 프로시저',
    t.category = 'feature',
    t.domain = 'DB',
    t.definition = '일련의 쿼리를 마치 하나의 함수처럼 실행하기 위한 쿼리의 집합. 영구저장모듈(Persistent Storage Module)이라고도 함.',
    t.aliases = ['Persistent Storage Module', 'PSM'];

// --- Concept 노드: 프로시저 구성요소 ---

MERGE (c:Concept {id: 'sp_declare'})
SET c.name = 'DECLARE Section',
    c.name_kr = '선언부',
    c.domain = 'DB',
    c.definition = 'PL/SQL에서 사용하는 모든 변수나 상수를 선언하는 부분. 변수/상수/커서를 선언.',
    c.required = false;

MERGE (c:Concept {id: 'sp_begin'})
SET c.name = 'BEGIN Section',
    c.name_kr = '실행부',
    c.domain = 'DB',
    c.definition = '절차적 형식으로 SQL문을 실행할 수 있도록 제어문, 반복문, 함수정의 등 로직을 기술하는 부분.',
    c.required = true;

MERGE (c:Concept {id: 'sp_exception'})
SET c.name = 'EXCEPTION Section',
    c.name_kr = '예외처리부',
    c.domain = 'DB',
    c.definition = 'PL/SQL문 실행 중 에러 발생 시 이를 해결하기 위한 문장을 기술하는 부분.',
    c.required = false;

// --- Concept 노드: 프로시저 유형 ---

MERGE (c:Concept {id: 'anonymous_block'})
SET c.name = 'Anonymous Block',
    c.name_kr = '익명 블록',
    c.domain = 'DB',
    c.definition = '이름없는 블록. 실행하기 위해 프로그램 안에서 선언되고 PL/SQL 엔진으로 전달.';

MERGE (c:Concept {id: 'procedure'})
SET c.name = 'Procedure',
    c.name_kr = '프로시저',
    c.domain = 'DB',
    c.definition = '특정 작업을 수행할 수 있는 이름이 있는 블록. 매개변수를 받을 수 있고 반복 사용 가능.';

MERGE (c:Concept {id: 'function'})
SET c.name = 'Function',
    c.name_kr = '함수',
    c.domain = 'DB',
    c.definition = '값을 계산하고 결과값을 반환할 때 사용. 반환값의 데이터 타입을 return 문에 선언.';

// --- Standard 노드 ---

MERGE (s:Standard {id: 'sql_psm'})
SET s.name = 'SQL/PSM',
    s.name_kr = 'SQL/PSM',
    s.domain = 'DB',
    s.definition = '데이터베이스 언어 표준 SQL에서 스토어드 프로시저를 위한 Persistent Storage Module 기준.';

// ──────────────────────────────────────
// DB_011.2: 뷰 (View)
// ──────────────────────────────────────

// --- Technology 노드 ---

MERGE (t:Technology {id: 'view'})
SET t.name = 'View',
    t.name_kr = '뷰',
    t.category = 'feature',
    t.domain = 'DB',
    t.definition = '하나 이상의 테이블에서 원하는 데이터만 가져올 수 있도록 미리 원하는 컬럼만 모아 가상적으로 만든 테이블. 실제 데이터가 존재하지 않음.',
    t.aliases = ['가상 테이블'];

// --- Concept 노드: 뷰 종류 ---

MERGE (c:Concept {id: 'system_view'})
SET c.name = 'System View',
    c.name_kr = '시스템 뷰',
    c.domain = 'DB',
    c.definition = '테이블의 제약, 색인 등에 대한 정보 열람이 가능한 뷰.';

MERGE (c:Concept {id: 'indexed_view'})
SET c.name = 'Indexed View',
    c.name_kr = '인덱스 된 뷰',
    c.domain = 'DB',
    c.definition = '실제 데이터를 직접 실시간 연산하여 성능향상을 높이고자 할 때 사용되는 뷰.';

MERGE (c:Concept {id: 'partitioned_view'})
SET c.name = 'Partitioned View',
    c.name_kr = '분할된 뷰',
    c.domain = 'DB',
    c.definition = '여러 대의 SQL서버에 테이블을 나누어 저장하여 대량 데이터 처리 시 성능을 향상시키는 뷰.';

// ================================================================
// 관계 (Relationships)
// ================================================================

// ──────────────────────────────────────
// DB_001 관계: 데이터베이스 정의
// ──────────────────────────────────────

// 데이터베이스의 함축적 의미 (통저운공)
MERGE (a:Concept {id: 'integrated_data'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'stored_data'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'operational_data'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'shared_data'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:HAS_COMPONENT]->(b);

// 데이터베이스 특징 (실계동내)
MERGE (a:Concept {id: 'database'}) MERGE (b:Metric {id: 'realtime_accessibility'}) MERGE (a)-[:MEASURED_BY]->(b);
MERGE (a:Concept {id: 'database'}) MERGE (b:Metric {id: 'continuous_evolution'}) MERGE (a)-[:MEASURED_BY]->(b);
MERGE (a:Concept {id: 'database'}) MERGE (b:Metric {id: 'concurrent_sharing'}) MERGE (a)-[:MEASURED_BY]->(b);
MERGE (a:Concept {id: 'database'}) MERGE (b:Metric {id: 'content_based_reference'}) MERGE (a)-[:MEASURED_BY]->(b);

// DBMS 관계
MERGE (a:Technology {id: 'dbms'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:USES]->(b);
MERGE (a:Concept {id: 'database_system'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:DEPENDS_ON]->(b);

// 데이터 모델링 기본 관계
MERGE (a:Concept {id: 'entity'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:BELONGS_TO]->(b);
MERGE (a:Concept {id: 'attribute'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'relationship'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:DEPENDS_ON]->(b);
MERGE (a:Concept {id: 'er_diagram'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:USES]->(b);
MERGE (a:Concept {id: 'er_diagram'}) MERGE (b:Concept {id: 'relationship'}) MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// DB_003 관계: 트랜잭션
// ──────────────────────────────────────

// ACID -> 트랜잭션
MERGE (a:Standard {id: 'acid'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:DEFINED_BY]->(b);

// ACID 구성요소
MERGE (a:Concept {id: 'atomicity'}) MERGE (b:Standard {id: 'acid'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'consistency'}) MERGE (b:Standard {id: 'acid'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'isolation'}) MERGE (b:Standard {id: 'acid'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'durability'}) MERGE (b:Standard {id: 'acid'}) MERGE (a)-[:HAS_COMPONENT]->(b);

// 트랜잭션 상태 전이
MERGE (a:Concept {id: 'transaction_state_active'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:HAS_PHASE]->(b);
MERGE (a:Concept {id: 'transaction_state_partial_committed'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:HAS_PHASE]->(b);
MERGE (a:Concept {id: 'transaction_state_failed'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:HAS_PHASE]->(b);
MERGE (a:Concept {id: 'transaction_state_committed'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:HAS_PHASE]->(b);
MERGE (a:Concept {id: 'transaction_state_aborted'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:HAS_PHASE]->(b);

// 직렬성 -> 트랜잭션
MERGE (a:Concept {id: 'serializability'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:DEPENDS_ON]->(b);

// 직렬성 문제 유형
MERGE (a:Concept {id: 'lost_update'}) MERGE (b:Concept {id: 'serializability'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'dirty_read'}) MERGE (b:Concept {id: 'serializability'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'inconsistency_problem'}) MERGE (b:Concept {id: 'serializability'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'cascaded_rollback'}) MERGE (b:Concept {id: 'serializability'}) MERGE (a)-[:HAS_TYPE]->(b);

// 동시성 제어 기법
MERGE (a:Method {id: 'concurrency_control'}) MERGE (b:Concept {id: 'transaction'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'locking'}) MERGE (b:Method {id: 'concurrency_control'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'two_phase_locking'}) MERGE (b:Method {id: 'locking'}) MERGE (a)-[:SUBCLASS_OF]->(b);
MERGE (a:Method {id: 'recovery'}) MERGE (b:Concept {id: 'atomicity'}) MERGE (a)-[:IMPLEMENTS]->(b);

// ──────────────────────────────────────
// DB_004 관계: 데이터 독립성
// ──────────────────────────────────────

// 데이터 독립성 유형
MERGE (a:Concept {id: 'logical_data_independence'}) MERGE (b:Concept {id: 'data_independence'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'physical_data_independence'}) MERGE (b:Concept {id: 'data_independence'}) MERGE (a)-[:HAS_TYPE]->(b);

// 3단계 스키마 -> 데이터 독립성
MERGE (a:Concept {id: 'three_level_schema'}) MERGE (b:Concept {id: 'data_independence'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Concept {id: 'three_level_schema'}) MERGE (b:Standard {id: 'ansi_sparc'}) MERGE (a)-[:DEFINED_BY]->(b);

// 3단계 스키마 구성
MERGE (a:Concept {id: 'external_schema'}) MERGE (b:Concept {id: 'three_level_schema'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'conceptual_schema'}) MERGE (b:Concept {id: 'three_level_schema'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'internal_schema'}) MERGE (b:Concept {id: 'three_level_schema'}) MERGE (a)-[:HAS_COMPONENT]->(b);

// 사상 관계
MERGE (a:Concept {id: 'external_conceptual_mapping'}) MERGE (b:Concept {id: 'logical_data_independence'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Concept {id: 'conceptual_internal_mapping'}) MERGE (b:Concept {id: 'physical_data_independence'}) MERGE (a)-[:IMPLEMENTS]->(b);

// ──────────────────────────────────────
// DB_006 관계: 격리성 수준
// ──────────────────────────────────────

// Isolation Level -> Isolation (ACID)
MERGE (a:Concept {id: 'isolation_level'}) MERGE (b:Concept {id: 'isolation'}) MERGE (a)-[:IMPLEMENTS]->(b);

// Isolation Level 유형
MERGE (a:Concept {id: 'read_uncommitted'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'read_committed'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'repeatable_read'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'serializable_read'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:HAS_TYPE]->(b);

// 격리성 문제 유형
MERGE (a:Concept {id: 'dirty_read'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:DEPENDS_ON]->(b);
MERGE (a:Concept {id: 'non_repeatable_read'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:DEPENDS_ON]->(b);
MERGE (a:Concept {id: 'phantom_read'}) MERGE (b:Concept {id: 'isolation_level'}) MERGE (a)-[:DEPENDS_ON]->(b);

// SQL-92 표준
MERGE (a:Concept {id: 'isolation_level'}) MERGE (b:Standard {id: 'sql_92'}) MERGE (a)-[:DEFINED_BY]->(b);

// Locking 기반
MERGE (a:Concept {id: 'isolation_level'}) MERGE (b:Method {id: 'locking'}) MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// DB_007 관계: 팬텀 충돌
// ──────────────────────────────────────

// Phantom Conflict -> Phantom Read
MERGE (a:Concept {id: 'phantom_conflict'}) MERGE (b:Concept {id: 'phantom_read'}) MERGE (a)-[:DEPENDS_ON]->(b);
MERGE (a:Concept {id: 'phantom_tuple'}) MERGE (b:Concept {id: 'phantom_conflict'}) MERGE (a)-[:HAS_COMPONENT]->(b);

// 해결방법
MERGE (a:Method {id: 'locking_unit_expansion'}) MERGE (b:Concept {id: 'phantom_conflict'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'index_locking'}) MERGE (b:Concept {id: 'phantom_conflict'}) MERGE (a)-[:IMPLEMENTS]->(b);

// Serializable이 Phantom 해결
MERGE (a:Concept {id: 'serializable_read'}) MERGE (b:Concept {id: 'phantom_conflict'}) MERGE (a)-[:IMPLEMENTS]->(b);

// ──────────────────────────────────────
// DB_008 관계: 엔티티
// ──────────────────────────────────────

// 엔티티 유형 (유무형)
MERGE (a:Concept {id: 'tangible_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'conceptual_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'event_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);

// 엔티티 유형 (발생시점)
MERGE (a:Concept {id: 'basic_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'central_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'action_entity'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:HAS_TYPE]->(b);

// 중심 엔티티는 기본 엔티티에서 파생
MERGE (a:Concept {id: 'central_entity'}) MERGE (b:Concept {id: 'basic_entity'}) MERGE (a)-[:DEPENDS_ON]->(b);
// 행위 엔티티는 중심 엔티티에서 파생
MERGE (a:Concept {id: 'action_entity'}) MERGE (b:Concept {id: 'central_entity'}) MERGE (a)-[:DEPENDS_ON]->(b);

// 엔티티 도출 방법
MERGE (a:Method {id: 'noun_extraction'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'normalization_based_extraction'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'four_step_data_modeling'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:IMPLEMENTS]->(b);
MERGE (a:Method {id: 'crud_matrix'}) MERGE (b:Concept {id: 'entity'}) MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// DB_009 관계: 키 유형
// ──────────────────────────────────────

// 키 포함관계: 슈퍼키 > 후보키 > 기본키/대체키
MERGE (a:Concept {id: 'candidate_key'}) MERGE (b:Concept {id: 'super_key'}) MERGE (a)-[:SUBCLASS_OF]->(b);
MERGE (a:Concept {id: 'primary_key'}) MERGE (b:Concept {id: 'candidate_key'}) MERGE (a)-[:SUBCLASS_OF]->(b);
MERGE (a:Concept {id: 'alternate_key'}) MERGE (b:Concept {id: 'candidate_key'}) MERGE (a)-[:SUBCLASS_OF]->(b);

// 키 -> 데이터베이스
MERGE (a:Concept {id: 'db_key'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:BELONGS_TO]->(b);

// 키 유형
MERGE (a:Concept {id: 'super_key'}) MERGE (b:Concept {id: 'db_key'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'foreign_key'}) MERGE (b:Concept {id: 'db_key'}) MERGE (a)-[:HAS_TYPE]->(b);

// 외래키 -> 참조 무결성
MERGE (a:Concept {id: 'foreign_key'}) MERGE (b:Concept {id: 'referential_integrity'}) MERGE (a)-[:IMPLEMENTS]->(b);

// 제약 유형 관계
MERGE (a:Concept {id: 'essential_constraint'}) MERGE (b:Concept {id: 'db_key'}) MERGE (a)-[:DEPENDS_ON]->(b);
MERGE (a:Concept {id: 'implicit_constraint'}) MERGE (b:Concept {id: 'db_key'}) MERGE (a)-[:DEPENDS_ON]->(b);

// 키 비교
MERGE (a:Concept {id: 'primary_key'})
MERGE (b:Concept {id: 'alternate_key'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['선정 기준', '대표성', '활용'],
    summary: '기본키는 후보키 중 대표로 선정, 대체키는 나머지 후보키'
}]->(b);

// ──────────────────────────────────────
// DB_010 관계: 스키마와 인스턴스
// ──────────────────────────────────────

// 스키마 -> 데이터베이스
MERGE (a:Concept {id: 'schema'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:BELONGS_TO]->(b);
MERGE (a:Concept {id: 'instance'}) MERGE (b:Concept {id: 'database'}) MERGE (a)-[:BELONGS_TO]->(b);

// 스키마 vs 인스턴스 비교
MERGE (a:Concept {id: 'schema'})
MERGE (b:Concept {id: 'instance'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['정의', '특징', '언어', '변경빈도'],
    summary: '스키마는 데이터 구조/제약조건 정의(DDL), 인스턴스는 특정 시간의 실제 데이터(DML). 스키마는 거의 불변, 인스턴스는 자주 변경.'
}]->(b);

// 3단계 스키마와의 관계
MERGE (a:Concept {id: 'schema'}) MERGE (b:Concept {id: 'three_level_schema'}) MERGE (a)-[:DEPENDS_ON]->(b);

// ──────────────────────────────────────
// DB_011.1 관계: 스토어드 프로시저
// ──────────────────────────────────────

// 스토어드 프로시저 -> DBMS
MERGE (a:Technology {id: 'stored_procedure'}) MERGE (b:Technology {id: 'dbms'}) MERGE (a)-[:BELONGS_TO]->(b);

// 구성요소
MERGE (a:Concept {id: 'sp_declare'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'sp_begin'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_COMPONENT]->(b);
MERGE (a:Concept {id: 'sp_exception'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_COMPONENT]->(b);

// 프로시저 유형
MERGE (a:Concept {id: 'anonymous_block'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'procedure'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'function'}) MERGE (b:Technology {id: 'stored_procedure'}) MERGE (a)-[:HAS_TYPE]->(b);

// SQL/PSM 표준
MERGE (a:Technology {id: 'stored_procedure'}) MERGE (b:Standard {id: 'sql_psm'}) MERGE (a)-[:DEFINED_BY]->(b);

// ──────────────────────────────────────
// DB_011.2 관계: 뷰
// ──────────────────────────────────────

// 뷰 -> DBMS
MERGE (a:Technology {id: 'view'}) MERGE (b:Technology {id: 'dbms'}) MERGE (a)-[:BELONGS_TO]->(b);

// 뷰 -> 외부 스키마 (논리적 데이터 독립성)
MERGE (a:Technology {id: 'view'}) MERGE (b:Concept {id: 'external_schema'}) MERGE (a)-[:IMPLEMENTS]->(b);

// 뷰 종류
MERGE (a:Concept {id: 'system_view'}) MERGE (b:Technology {id: 'view'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'indexed_view'}) MERGE (b:Technology {id: 'view'}) MERGE (a)-[:HAS_TYPE]->(b);
MERGE (a:Concept {id: 'partitioned_view'}) MERGE (b:Technology {id: 'view'}) MERGE (a)-[:HAS_TYPE]->(b);

// ================================================================
// Domain 연결
// ================================================================

MATCH (n) WHERE n.domain = 'DB' AND (n:Concept OR n:Technology OR n:Method OR n:Standard OR n:Metric)
MERGE (d:Domain {id: 'DB'})
SET d.name = 'Database', d.name_kr = '데이터베이스'
MERGE (n)-[:BELONGS_TO]->(d);

// ================================================================
// Document 추적
// ================================================================

MERGE (doc:Document {id: 'DB_001'})
SET doc.filename = 'DB_001_002_데이터베이스 정의.docx', doc.domain = 'DB', doc.format = 'docx';

MERGE (doc:Document {id: 'DB_003'})
SET doc.filename = 'DB_003_Transaction.doc', doc.domain = 'DB', doc.format = 'doc';

MERGE (doc:Document {id: 'DB_004'})
SET doc.filename = 'DB_004_데이터 독립성.docx', doc.domain = 'DB', doc.format = 'docx';

MERGE (doc:Document {id: 'DB_006'})
SET doc.filename = 'DB_006_Isolation Level.doc', doc.domain = 'DB', doc.format = 'doc';

MERGE (doc:Document {id: 'DB_007'})
SET doc.filename = 'DB_007_Phantom_Conflict.doc', doc.domain = 'DB', doc.format = 'doc';

MERGE (doc:Document {id: 'DB_008'})
SET doc.filename = 'DB_008_엔티티.doc', doc.domain = 'DB', doc.format = 'doc';

MERGE (doc:Document {id: 'DB_009'})
SET doc.filename = 'DB_009_키(key) 유형.docx', doc.domain = 'DB', doc.format = 'docx';

MERGE (doc:Document {id: 'DB_010'})
SET doc.filename = 'DB_010_스키마-인스턴스.docx', doc.domain = 'DB', doc.format = 'docx';

MERGE (doc:Document {id: 'DB_011.1'})
SET doc.filename = 'DB_011.1_스토어드 프로시저.docx', doc.domain = 'DB', doc.format = 'docx';

MERGE (doc:Document {id: 'DB_011.2'})
SET doc.filename = 'DB_011.2_뷰(View).docx', doc.domain = 'DB', doc.format = 'docx';

// --- MENTIONED_IN 관계 ---

// DB_001 문서
MERGE (c:Concept {id: 'database'}) MERGE (doc:Document {id: 'DB_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'dbms'}) MERGE (doc:Document {id: 'DB_001'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'entity'}) MERGE (doc:Document {id: 'DB_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'er_diagram'}) MERGE (doc:Document {id: 'DB_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// DB_003 문서
MERGE (c:Concept {id: 'transaction'}) MERGE (doc:Document {id: 'DB_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (s:Standard {id: 'acid'}) MERGE (doc:Document {id: 'DB_003'}) MERGE (s)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'serializability'}) MERGE (doc:Document {id: 'DB_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'concurrency_control'}) MERGE (doc:Document {id: 'DB_003'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// DB_004 문서
MERGE (c:Concept {id: 'data_independence'}) MERGE (doc:Document {id: 'DB_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'three_level_schema'}) MERGE (doc:Document {id: 'DB_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (s:Standard {id: 'ansi_sparc'}) MERGE (doc:Document {id: 'DB_004'}) MERGE (s)-[:MENTIONED_IN]->(doc);

// DB_006 문서
MERGE (c:Concept {id: 'isolation_level'}) MERGE (doc:Document {id: 'DB_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'dirty_read'}) MERGE (doc:Document {id: 'DB_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'non_repeatable_read'}) MERGE (doc:Document {id: 'DB_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'phantom_read'}) MERGE (doc:Document {id: 'DB_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// DB_007 문서
MERGE (c:Concept {id: 'phantom_conflict'}) MERGE (doc:Document {id: 'DB_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'index_locking'}) MERGE (doc:Document {id: 'DB_007'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// DB_008 문서
MERGE (c:Concept {id: 'entity'}) MERGE (doc:Document {id: 'DB_008'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'crud_matrix'}) MERGE (doc:Document {id: 'DB_008'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// DB_009 문서
MERGE (c:Concept {id: 'db_key'}) MERGE (doc:Document {id: 'DB_009'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'primary_key'}) MERGE (doc:Document {id: 'DB_009'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'foreign_key'}) MERGE (doc:Document {id: 'DB_009'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'referential_integrity'}) MERGE (doc:Document {id: 'DB_009'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// DB_010 문서
MERGE (c:Concept {id: 'schema'}) MERGE (doc:Document {id: 'DB_010'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'instance'}) MERGE (doc:Document {id: 'DB_010'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// DB_011.1 문서
MERGE (t:Technology {id: 'stored_procedure'}) MERGE (doc:Document {id: 'DB_011.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (s:Standard {id: 'sql_psm'}) MERGE (doc:Document {id: 'DB_011.1'}) MERGE (s)-[:MENTIONED_IN]->(doc);

// DB_011.2 문서
MERGE (t:Technology {id: 'view'}) MERGE (doc:Document {id: 'DB_011.2'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// ================================================================
// DB 도메인 완료
// 노드: Concept 55개, Technology 4개, Method 12개,
//       Standard 4개, Metric 4개, Document 10개
//       합계: 89개 노드
// 관계: SUBCLASS_OF 3, HAS_COMPONENT 12, HAS_PHASE 5,
//       HAS_TYPE 18, COMPARED_WITH 2, DEPENDS_ON 10,
//       IMPLEMENTS 14, USES 5, DEFINED_BY 4,
//       MEASURED_BY 4, BELONGS_TO 7, MENTIONED_IN 22
//       합계: 106개 관계
// ================================================================
