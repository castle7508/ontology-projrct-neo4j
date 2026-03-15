// ================================================================
// DB 도메인 (DB_151 ~ DB_179) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// DB_134.1: 데이터 품질 관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_품질_관리'})
SET     n.name = '데이터 품질 관리',
    n.name_kr = '데이터 품질 관리',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_품질관리_대상'})
SET     n.name = '데이터 품질관리 대상',
    n.name_kr = '데이터 품질관리 대상',
    n.domain = 'DB';

MERGE (n:Concept {id: 'da'})
SET     n.name = 'DA',
    n.name_kr = 'DA',
    n.domain = 'DB',
    n.aliases = ['DA'];

MERGE (n:Concept {id: 'modeler'})
SET     n.name = 'Modeler',
    n.name_kr = 'Modeler',
    n.domain = 'DB',
    n.aliases = ['Modeler'];

MERGE (n:Concept {id: 'dba'})
SET     n.name = 'DBA',
    n.name_kr = 'DBA',
    n.domain = 'DB',
    n.aliases = ['DBA'];

MERGE (n:Concept {id: 'user'})
SET     n.name = 'User',
    n.name_kr = 'User',
    n.domain = 'DB',
    n.aliases = ['User'];

MERGE (n:Concept {id: '품질관리_기법'})
SET     n.name = '품질관리 기법',
    n.name_kr = '품질관리 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_품질관리_업무체계'})
SET     n.name = '데이터 품질관리 업무체계',
    n.name_kr = '데이터 품질관리 업무체계',
    n.domain = 'DB',
    n.definition = '데이터 품질 관리 원칙/지침';

MERGE (n:Concept {id: '조직_역할_및_책임'})
SET     n.name = '조직 역할 및 책임',
    n.name_kr = '조직 역할 및 책임',
    n.domain = 'DB',
    n.definition = 'CDO, Data Steward, Data Owner, Advisor를 포함하는 데이터 품질관리 조직을 정의하고 각 구성원의 역할과 책임 규정';

MERGE (n:Concept {id: '데이터_품질관리_절차'})
SET     n.name = '데이터 품질관리 절차',
    n.name_kr = '데이터 품질관리 절차',
    n.domain = 'DB',
    n.definition = '관리대상 데이터 범위의 선정, 품질평가, 이슈정의, 원인분석, 해결방안 수립, 해결방안 적용, 적용 결과의 피드백 등 품질관리 업무의 세부절차 정의';

MERGE (n:Concept {id: '데이터_품질_측정체계_수립'})
SET     n.name = '데이터 품질 측정체계 수립',
    n.name_kr = '데이터 품질 측정체계 수립',
    n.domain = 'DB',
    n.definition = '데이터 품질지표 정의(DQI)';

MERGE (n:Concept {id: 'ctq'})
SET     n.name = 'CTQ',
    n.name_kr = '데이터 품질관리 대상선정',
    n.domain = 'DB',
    n.definition = '전사 시스템에 대해 데이터 관점의 관계 분석을 통해 품질관리 대상 시스템과 업무/데이터 범위 선정',
    n.aliases = ['CTQ', '데이터 품질관리 대상선정'];

MERGE (n:Concept {id: '데이터_품질_측정_상세규칙_정의'})
SET     n.name = '데이터 품질 측정 상세규칙 정의',
    n.name_kr = '데이터 품질 측정 상세규칙 정의',
    n.domain = 'DB',
    n.definition = 'DQI의 세부측정기준 정의';

MERGE (n:Concept {id: '데이터_품질관리_인프라'})
SET     n.name = '데이터 품질관리 인프라',
    n.name_kr = '데이터 품질관리 인프라',
    n.domain = 'DB',
    n.definition = 'DQM';

MERGE (n:Concept {id: 'meta'})
SET     n.name = 'Meta',
    n.name_kr = 'Meta',
    n.domain = 'DB',
    n.definition = '품질측정 기준 및 DQ 솔루션의 품질측정 결과를 품질관리조직 및 관련 현업과 공유할 수 있는 메타데이터 관리 솔루션의 선정',
    n.aliases = ['Meta'];

// --- 관계 ---

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'data_관리_및_운영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질관리_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'da'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'modeler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'dba'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '품질관리_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질관리_업무체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '조직_역할_및_책임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질관리_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질_측정체계_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'ctq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질_측정_상세규칙_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: '데이터_품질관리_인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Concept {id: 'meta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Document {id: 'DB_134.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질관리_대상'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modeler'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dba'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질관리_업무체계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직_역할_및_책임'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질관리_절차'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질_측정체계_수립'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ctq'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질_측정_상세규칙_정의'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질관리_인프라'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meta'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_134.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.5'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.6'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.7'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.8'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_134.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_134.9'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_135.1: 데이터 이력관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_135.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_history_management'})
SET     n.name = 'Data History Management',
    n.name_kr = '데이터 이력관리',
    n.domain = 'DB',
    n.aliases = ['데이터 이력관리'];

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: '발변진시선'})
SET     n.name = '발변진시선',
    n.name_kr = '발변진시선',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'data_history_management'})
MERGE (b:Concept {id: '발변진시선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_history_management'})
MERGE (b:Document {id: 'DB_135.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_history_management'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발변진시선'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_135.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_135.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_135.3: 카탈로그
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_135.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '카탈로그'})
SET     n.name = '카탈로그',
    n.name_kr = '카탈로그',
    n.domain = 'DB';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: '카탈로그_저장정보(오브젝트'})
SET     n.name = '카탈로그 저장정보(오브젝트',
    n.name_kr = '카탈로그 저장정보(오브젝트',
    n.domain = 'DB';

MERGE (n:Concept {id: '권한'})
SET     n.name = '권한',
    n.name_kr = '권한',
    n.domain = 'DB';

MERGE (n:Concept {id: 'relation'})
SET     n.name = 'Relation',
    n.name_kr = 'Relation',
    n.domain = 'DB',
    n.aliases = ['Relation'];

MERGE (n:Concept {id: '저장_프로시져'})
SET     n.name = '저장 프로시져',
    n.name_kr = '저장 프로시져',
    n.domain = 'DB';

MERGE (n:Concept {id: '백업_및_복구)'})
SET     n.name = '백업 및 복구)',
    n.name_kr = '백업 및 복구)',
    n.domain = 'DB';

MERGE (n:Metric {id: '릴레이션_정보'})
SET     n.name = '릴레이션 정보',
    n.name_kr = '릴레이션 정보',
    n.domain = 'DB',
    n.definition = '릴레이션 이름, 릴레이션 속성들에 대한 속성 이름과 타입(또는 도메인) - 릴레이션이 저장된 파일 이름, 파일 구조, 물러직 위치 - 릴레이션에 대해 정의된 각 인덱스의 인엑스 이름 - 릴레이션 상에 정의된 무결성 제약 조건, 릴레이션의 생성자 이름';

MERGE (n:Concept {id: '인덱스'})
SET     n.name = '인덱스',
    n.name_kr = '인덱스',
    n.domain = 'DB',
    n.definition = '인덱스의 이름과 구조, 인덱스가 정의된 속성 정보 - 키에 대한 정보';

MERGE (n:Concept {id: '통계정보'})
SET     n.name = '통계정보',
    n.name_kr = '통계정보',
    n.domain = 'DB',
    n.definition = '릴레이션 카디널리티 : 각 릴레이션의 튜플 수 - 릴레이션 크기 : 각 릴레이션에 대한 페이지 수 - 인덱스 카디널리티 : 각 인덱스에 대한 상이한 키값 수 - 인덱스 높이 : 각 트리 인덱스에 대한 레벨 수 - 인덱스 범위 : 각 인덱스에 대한 최소 키 값과 최대 키값';

MERGE (n:Concept {id: '사용자_정보'})
SET     n.name = '사용자 정보',
    n.name_kr = '사용자 정보',
    n.domain = 'DB',
    n.definition = '사용자 계정 정보(패스워드 포함), 사용자 권한 정보';

// --- 관계 ---

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '카탈로그_저장정보(오브젝트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '권한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: 'relation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '저장_프로시져'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '백업_및_복구)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Metric {id: '릴레이션_정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '인덱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '통계정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Concept {id: '사용자_정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Document {id: 'DB_135.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '카탈로그'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카탈로그_저장정보(오브젝트'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'relation'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저장_프로시져'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백업_및_복구)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '릴레이션_정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_137: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_137'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_138.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_138.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_138.2: 샤딩(Sharding) / Shard
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_138.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'sharding'})
SET     n.name = '샤딩(Sharding) / Shard',
    n.name_kr = '샤딩(Sharding) / Shard',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: '샤드'})
SET     n.name = '샤드',
    n.name_kr = '샤드',
    n.domain = 'DB';

MERGE (n:Concept {id: '라우팅프로세스'})
SET     n.name = '라우팅프로세스',
    n.name_kr = '라우팅프로세스',
    n.domain = 'DB';

MERGE (n:Concept {id: '수평분할'})
SET     n.name = '수평분할',
    n.name_kr = '수평분할',
    n.domain = 'DB';

MERGE (n:Concept {id: '분산저장'})
SET     n.name = '분산저장',
    n.name_kr = '분산저장',
    n.domain = 'DB';

MERGE (n:Concept {id: '신뢰성_개선'})
SET     n.name = '신뢰성 개선',
    n.name_kr = '신뢰성 개선',
    n.domain = 'DB',
    n.definition = '한 샤드가 실패하더라도 다른 샤드는 데이터 서비스를 제공';

MERGE (n:Concept {id: '위치_추상화'})
SET     n.name = '위치 추상화',
    n.name_kr = '위치 추상화',
    n.domain = 'DB',
    n.definition = '어플리케이션 서버에서 어떤 데이터가 어떤 데이터베이스에 위치해 있는지 알 필요가 없음';

MERGE (n:Metric {id: 'replication'})
SET     n.name = 'Replication',
    n.name_kr = 'Replication',
    n.domain = 'DB',
    n.definition = '클러스터내의 노드 복제 통한 높은 가용성과 안전성 제공',
    n.aliases = ['Replication'];

MERGE (n:Concept {id: 'scale_out'})
SET     n.name = 'Scale-out',
    n.name_kr = 'Scale-out',
    n.domain = 'DB',
    n.definition = 'Scale-up 한계 해결, 노드 중심 확장, 확장의 유연성, 수평확장',
    n.aliases = ['Scale-out'];

MERGE (n:Concept {id: 'efficiency'})
SET     n.name = 'Efficiency',
    n.name_kr = 'Efficiency',
    n.domain = 'DB',
    n.definition = '효율적 자원활용 및 Shard 구조 독립적 단위 App 운영',
    n.aliases = ['Efficiency'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: 'shard_metadata'})
SET     n.name = 'shard metadata',
    n.name_kr = 'shard metadata',
    n.domain = 'DB',
    n.definition = 'CUBRID SHARD의 동작을 위한 설정 정보. 요청된 질의를 분석하여 실제 질의를 수행할 shard DB를 선택하기 위한 정보 및 세션을 생성하기 위한 정보를 포함',
    n.aliases = ['shard metadata'];

MERGE (n:Concept {id: 'shard_key'})
SET     n.name = 'shard key',
    n.name_kr = 'shard key',
    n.domain = 'DB',
    n.definition = '(column)sharding된 테이블에서 shard를 선택하기 위한 식별자로 사용되는 칼럼',
    n.aliases = ['shard key'];

MERGE (n:Concept {id: 'shard_key_data'})
SET     n.name = 'shard key data',
    n.name_kr = 'shard key data',
    n.domain = 'DB',
    n.definition = '질의 중 shard를 식별하기 위한 힌트에 해당하는 shard key의 값',
    n.aliases = ['shard key data'];

MERGE (n:Concept {id: 'shard_id'})
SET     n.name = 'shard ID',
    n.name_kr = 'shard ID',
    n.domain = 'DB',
    n.definition = 'shard DB를 식별하기 위한 식별자',
    n.aliases = ['shard ID'];

MERGE (n:Concept {id: 'proxy'})
SET     n.name = 'proxy',
    n.name_kr = 'proxy',
    n.domain = 'DB',
    n.definition = '사용자 질의에 포함된 힌트를 해석하고, 해석된 힌트와 shard metadata를 이용하여 실제 질의 처리할 shard DB로 요청을 전달 역할을 하는 CUBRID 미들웨어 프로세스',
    n.aliases = ['proxy'];

MERGE (n:Concept {id: 'partitioning'})
SET     n.name = '파티셔닝',
    n.name_kr = '파티셔닝',
    n.domain = 'DB';

MERGE (n:Concept {id: '가이드라인'})
SET     n.name = '가이드라인',
    n.name_kr = '가이드라인',
    n.domain = 'DB';

MERGE (n:Concept {id: '주요_내용'})
SET     n.name = '주요 내용',
    n.name_kr = '주요 내용',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'data_관리_및_운영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '샤드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '라우팅프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '수평분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '분산저장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '신뢰성_개선'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '위치_추상화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Metric {id: 'replication'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'scale_out'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'efficiency'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'shard_metadata'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'shard_key'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'shard_key_data'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'shard_id'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'proxy'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'partitioning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'partitioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'partitioning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: 'partitioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가이드라인'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '가이드라인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Document {id: 'DB_138.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sharding'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '샤드'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅프로세스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수평분할'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산저장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성_개선'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치_추상화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'replication'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scale_out'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'efficiency'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shard_metadata'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shard_key'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shard_key_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shard_id'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'partitioning'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가이드라인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_내용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_141.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_141.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_142: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_142'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_144.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_144.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_144.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_144.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_144.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_144.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_145.1: DB 성능개선 방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_145.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'db_성능개선_방안'})
SET     n.name = 'DB 성능개선 방안',
    n.name_kr = 'DB 성능개선 방안',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db성능'})
SET     n.name = 'DB성능(튜닝)',
    n.name_kr = 'DB성능(튜닝)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db_성능개선'})
SET     n.name = 'DB 성능개선',
    n.name_kr = 'DB 성능개선',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db모델링_측면'})
SET     n.name = '(3가지) DB모델링 측면',
    n.name_kr = '(3가지) DB모델링 측면',
    n.domain = 'DB';

MERGE (n:Concept {id: 'dbms_측면'})
SET     n.name = 'DBMS 측면',
    n.name_kr = 'DBMS 측면',
    n.domain = 'DB';

MERGE (n:Concept {id: '옵티마이저'})
SET     n.name = '옵티마이저',
    n.name_kr = '옵티마이저',
    n.domain = 'DB';

MERGE (n:Concept {id: '조인방식'})
SET     n.name = '조인방식',
    n.name_kr = '조인방식',
    n.domain = 'DB';

MERGE (n:Concept {id: '정규화'})
SET     n.name = '정규화',
    n.name_kr = '정규화',
    n.domain = 'DB';

MERGE (n:Concept {id: '부분범위처리'})
SET     n.name = '부분범위처리',
    n.name_kr = '부분범위처리',
    n.domain = 'DB';

MERGE (n:Concept {id: '다중처리'})
SET     n.name = '다중처리',
    n.name_kr = '다중처리',
    n.domain = 'DB';

MERGE (n:Concept {id: 'hint'})
SET     n.name = 'Hint',
    n.name_kr = 'Hint',
    n.domain = 'DB',
    n.aliases = ['Hint'];

MERGE (n:Concept {id: '비즈니스_측면'})
SET     n.name = '비즈니스 측면',
    n.name_kr = '비즈니스 측면',
    n.domain = 'DB',
    n.definition = '중복 업무 프로세스';

MERGE (n:Concept {id: '불필요한_업무_프로세스'})
SET     n.name = '불필요한 업무 프로세스',
    n.name_kr = '불필요한 업무 프로세스',
    n.domain = 'DB',
    n.definition = '불필요한 업무 분할 및 할당으로 DB의 복잡성 증가로 전반적인 DB 처리 성능 저하';

MERGE (n:Concept {id: 'db_모델링_측면'})
SET     n.name = 'DB 모델링 측면',
    n.name_kr = 'DB 모델링 측면',
    n.domain = 'DB',
    n.definition = '논리적 구조의 잘못된 설계';

MERGE (n:Concept {id: '지나친_정규화'})
SET     n.name = '지나친 정규화',
    n.name_kr = '지나친 정규화',
    n.domain = 'DB',
    n.definition = '반정규화가 없이 지나친 정규화로 데이터베이스의 처리능력의 축소';

MERGE (n:Concept {id: '외부_환경에_따른_성능_저하'})
SET     n.name = '외부 환경에 따른 성능 저하',
    n.name_kr = '외부 환경에 따른 성능 저하',
    n.domain = 'DB',
    n.definition = '잘못된 OS parameter 변경으로 인한 성능 저하 - 하드웨어 자원(CPU, 메모리, 스토리지)의 경합';

MERGE (n:Concept {id: 'sql_측면'})
SET     n.name = 'SQL 측면',
    n.name_kr = 'SQL 측면',
    n.domain = 'DB',
    n.definition = '비효율적 실행경로 잘못된 Join 방식';

MERGE (n:Concept {id: 'dynamic_sql_남용'})
SET     n.name = 'Dynamic SQL 남용',
    n.name_kr = 'Dynamic SQL 남용',
    n.domain = 'DB',
    n.definition = '동적 SQL의 남용 사용으로 인한 전반적인 DBMS의 성능의 저하 발생';

MERGE (n:Concept {id: '단순화한_업무_프로세스로의_개선'})
SET     n.name = '단순화한 업무 프로세스로의 개선',
    n.name_kr = '단순화한 업무 프로세스로의 개선',
    n.domain = 'DB',
    n.definition = '비즈니스적으로 복잡한 업무를 단순화한 프로세스 개선 필요';

MERGE (n:Concept {id: '식별자_지정'})
SET     n.name = '식별자 지정',
    n.name_kr = '식별자 지정',
    n.domain = 'DB',
    n.definition = '적절한 Primary Key 및 Foreign Key 선택으로 성능 개선';

MERGE (n:Concept {id: '적절한_데이터_타입'})
SET     n.name = '적절한 데이터 타입',
    n.name_kr = '적절한 데이터 타입',
    n.domain = 'DB',
    n.definition = 'Join 컬럼의 데이터 타입은 가급적 동일하게 유지하여 성능 개선 진행';

MERGE (n:Concept {id: '인덱스_설정'})
SET     n.name = '인덱스 설정',
    n.name_kr = '인덱스 설정',
    n.domain = 'DB',
    n.definition = '분포도가 좋은 경우 생성, Bitmap Index 등 적용 고려 - 복합인덱스의 선후행 관계 재식별';

MERGE (n:Concept {id: '반정규화'})
SET     n.name = '반정규화',
    n.name_kr = '반정규화',
    n.domain = 'DB',
    n.definition = '변경이 적고, 성능이 요구되는 경우 조인 최소화 - 테이블, 컬럼, 관계의 반정규화';

MERGE (n:Concept {id: '파티셔닝'})
SET     n.name = '파티셔닝',
    n.name_kr = '파티셔닝',
    n.domain = 'DB',
    n.definition = '대용량 테이블의 경우 필요한 데이터에 대한 테이블 분할 검토';

MERGE (n:Concept {id: '이력테이블_관리'})
SET     n.name = '이력테이블 관리',
    n.name_kr = '이력테이블 관리',
    n.domain = 'DB',
    n.definition = '이력 데이터의 시작과 종료, 현재 진행 상태 등을 명확하게 명시하여 성능 보장';

MERGE (n:Concept {id: 'table_접근_방식_결정'})
SET     n.name = 'Table 접근 방식 결정',
    n.name_kr = 'Table 접근 방식 결정',
    n.domain = 'DB',
    n.definition = '접근 유형에 따라 Full Scan, B-Tree Index, Bitmap Index, Clustering, Hashing 적용검토';

MERGE (n:Concept {id: '적정_인덱스_지정'})
SET     n.name = '적정 인덱스 지정',
    n.name_kr = '적정 인덱스 지정',
    n.domain = 'DB',
    n.definition = '테이블 조회를 주로 하는지 입력, 수정, 삭제 작업이 주로 발생하는지를 고려하여 적당한 인덱스 개수 지정';

MERGE (n:Concept {id: '복제테이블_생성'})
SET     n.name = '복제테이블 생성',
    n.name_kr = '복제테이블 생성',
    n.domain = 'DB',
    n.definition = '분산 DB의 경우 원격 DB를 이용할 때 성능 저하가 예상된다면 스냅샷을 이용한 복제 테이블 생성';

MERGE (n:Concept {id: '공유_데이터_관리'})
SET     n.name = '공유 데이터 관리',
    n.name_kr = '공유 데이터 관리',
    n.domain = 'DB',
    n.definition = '빈번하게 공통적으로 사용하는 데이터의 접근을 쉽게 하기 위해 어플리케이션의 메모리에 상주시키고 함수를 사용하여 코드 변환하도록 유도';

MERGE (n:Concept {id: '인덱스_키_규칙'})
SET     n.name = '인덱스 키 규칙',
    n.name_kr = '인덱스 키 규칙',
    n.domain = 'DB',
    n.definition = 'PK는 일반적으로 지정된 순서대로 인덱스를 생성하므로 키를 구성하는 컬럼 순서를 복합 컬럼 인덱스를 지정하는 규칙에 따라 나열함';

MERGE (n:Concept {id: 'fk_잠금_회피'})
SET     n.name = 'FK 잠금 회피',
    n.name_kr = 'FK 잠금 회피',
    n.domain = 'DB',
    n.definition = 'FK에 대해서는 가급적 인덱스를 생성하여 전체 스캔이 발생하는 경우와 불필요하게 발생하는 잠금 회피';

MERGE (n:Concept {id: '테이블스페이스_분리'})
SET     n.name = '테이블스페이스 분리',
    n.name_kr = '테이블스페이스 분리',
    n.domain = 'DB',
    n.definition = '테이블을 위한 테이블스페이스와 Index 용 테이블 스페이스 분리';

MERGE (n:Concept {id: '롤백세그먼트_다중_구성'})
SET     n.name = '롤백세그먼트 다중 구성',
    n.name_kr = '롤백세그먼트 다중 구성',
    n.domain = 'DB',
    n.definition = '롤백 세그먼트 경합을 피하기 위해 여러 개로 구성';

// --- 관계 ---

MERGE (a:Concept {id: 'db_성능개선'})
MERGE (b:Concept {id: 'db성능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'db모델링_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'dbms_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '옵티마이저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '조인방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '정규화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '부분범위처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '다중처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'hint'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '비즈니스_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '불필요한_업무_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'db_모델링_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '지나친_정규화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '외부_환경에_따른_성능_저하'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'sql_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'dynamic_sql_남용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '단순화한_업무_프로세스로의_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '식별자_지정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '적절한_데이터_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '인덱스_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '반정규화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '파티셔닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '이력테이블_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'table_접근_방식_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '적정_인덱스_지정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '복제테이블_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '공유_데이터_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '인덱스_키_규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: 'fk_잠금_회피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '테이블스페이스_분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Concept {id: '롤백세그먼트_다중_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Document {id: 'DB_145.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'db_성능개선_방안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db성능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_성능개선'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db모델링_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dbms_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '옵티마이저'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조인방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분범위처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불필요한_업무_프로세스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_모델링_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지나친_정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_환경에_따른_성능_저하'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic_sql_남용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순화한_업무_프로세스로의_개선'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별자_지정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적절한_데이터_타입'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스_설정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반정규화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파티셔닝'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이력테이블_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'table_접근_방식_결정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적정_인덱스_지정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복제테이블_생성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유_데이터_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인덱스_키_규칙'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fk_잠금_회피'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이블스페이스_분리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '롤백세그먼트_다중_구성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_145.2: 옵티마이저(Optimizer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_145.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'optimizer'})
SET     n.name = 'Optimizer',
    n.name_kr = '옵티마이저',
    n.domain = 'DB',
    n.aliases = ['Optimizer', '옵티마이저'];

MERGE (n:Concept {id: 'db성능'})
SET     n.name = 'DB성능(튜닝)',
    n.name_kr = 'DB성능(튜닝)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'rbo'})
SET     n.name = 'RBO',
    n.name_kr = 'RBO',
    n.domain = 'DB',
    n.aliases = ['RBO'];

MERGE (n:Concept {id: 'cbo'})
SET     n.name = 'CBO',
    n.name_kr = 'CBO',
    n.domain = 'DB',
    n.aliases = ['CBO'];

MERGE (n:Concept {id: '질의변환기'})
SET     n.name = '질의변환기',
    n.name_kr = '질의변환기',
    n.domain = 'DB';

MERGE (n:Concept {id: '비용산정기'})
SET     n.name = '비용산정기',
    n.name_kr = '비용산정기',
    n.domain = 'DB';

MERGE (n:Concept {id: '실행계획생성기'})
SET     n.name = '실행계획생성기',
    n.name_kr = '실행계획생성기',
    n.domain = 'DB';

MERGE (n:Concept {id: '통계정보의_정확성'})
SET     n.name = '통계정보의 정확성',
    n.name_kr = '통계정보의 정확성',
    n.domain = 'DB',
    n.definition = '적절한 통계 정보의 생성 및 주기적인 갱신을 통한 통계정보 정확성 보정';

MERGE (n:Concept {id: '효율적_인덱스_구성'})
SET     n.name = '효율적 인덱스 구성',
    n.name_kr = '효율적 인덱스 구성',
    n.domain = 'DB',
    n.definition = '데이터 카디널리티등을 관리하여 가장 효율적인 인덱스 생성';

MERGE (n:Concept {id: '주기적_통계정보_갱신'})
SET     n.name = '주기적 통계정보 갱신',
    n.name_kr = '주기적 통계정보 갱신',
    n.domain = 'DB',
    n.definition = '주기적인 통계정보 갱신을 통한 최신 통계정보 유지';

MERGE (n:Concept {id: 'dbms_튜닝'})
SET     n.name = 'DBMS 튜닝',
    n.name_kr = 'DBMS 튜닝',
    n.domain = 'DB',
    n.definition = '인덱스 조정 및 Table / Index 재 구성 수행';

// --- 관계 ---

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'db성능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'rbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'cbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '질의변환기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '비용산정기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '실행계획생성기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '통계정보의_정확성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '효율적_인덱스_구성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: '주기적_통계정보_갱신'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'dbms_튜닝'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'rbo'})
MERGE (b:Concept {id: 'cbo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'rbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'cbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rbo'})
MERGE (b:Concept {id: 'cbo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'rbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Concept {id: 'cbo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Document {id: 'DB_145.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'optimizer'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db성능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rbo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbo'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '질의변환기'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용산정기'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행계획생성기'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계정보의_정확성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율적_인덱스_구성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주기적_통계정보_갱신'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dbms_튜닝'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_145.3: 힌트(Hint)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_145.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'hint'})
SET     n.name = 'Hint',
    n.name_kr = '힌트',
    n.domain = 'DB',
    n.aliases = ['Hint', '힌트'];

MERGE (n:Concept {id: 'db성능'})
SET     n.name = 'DB성능(튜닝)',
    n.name_kr = 'DB성능(튜닝)',
    n.domain = 'DB';

MERGE (n:Concept {id: '개발자가_유도하는_최적화된_실행계획'})
SET     n.name = '개발자가 유도하는 최적화된 실행계획',
    n.name_kr = '개발자가 유도하는 최적화된 실행계획',
    n.domain = 'DB';

MERGE (n:Concept {id: '/*+_*/'})
SET     n.name = '/*+ (힌트) */',
    n.name_kr = '/*+ (힌트) */',
    n.domain = 'DB';

MERGE (n:Concept {id: '힌트(all_rows'})
SET     n.name = '힌트(ALL_ROWS',
    n.name_kr = '힌트(ALL_ROWS',
    n.domain = 'DB';

MERGE (n:Concept {id: 'first_rows'})
SET     n.name = 'FIRST_ROWS',
    n.name_kr = 'FIRST_ROWS',
    n.domain = 'DB';

MERGE (n:Concept {id: 'rule'})
SET     n.name = 'RULE',
    n.name_kr = 'RULE',
    n.domain = 'DB',
    n.aliases = ['RULE'];

MERGE (n:Concept {id: 'full'})
SET     n.name = 'FULL',
    n.name_kr = 'FULL',
    n.domain = 'DB',
    n.aliases = ['FULL'];

MERGE (n:Concept {id: 'index_desc'})
SET     n.name = 'INDEX_DESC',
    n.name_kr = 'INDEX_DESC',
    n.domain = 'DB';

MERGE (n:Concept {id: 'rowid'})
SET     n.name = 'ROWID',
    n.name_kr = 'ROWID',
    n.domain = 'DB',
    n.aliases = ['ROWID'];

MERGE (n:Concept {id: 'cluster'})
SET     n.name = 'CLUSTER',
    n.name_kr = 'CLUSTER',
    n.domain = 'DB',
    n.aliases = ['CLUSTER'];

MERGE (n:Concept {id: 'hash'})
SET     n.name = 'HASH',
    n.name_kr = 'HASH',
    n.domain = 'DB',
    n.aliases = ['HASH'];

MERGE (n:Concept {id: 'index'})
SET     n.name = 'INDEX',
    n.name_kr = 'INDEX',
    n.domain = 'DB',
    n.aliases = ['INDEX'];

MERGE (n:Concept {id: 'choose)'})
SET     n.name = 'CHOOSE)',
    n.name_kr = 'CHOOSE)',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'db성능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: '개발자가_유도하는_최적화된_실행계획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: '/*+_*/'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: '힌트(all_rows'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'first_rows'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'rule'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'full'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'index_desc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'rowid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'cluster'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'hash'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Concept {id: 'choose)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Document {id: 'DB_145.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hint'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db성능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자가_유도하는_최적화된_실행계획'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '/*+_*/'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '힌트(all_rows'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'first_rows'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'index_desc'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rowid'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cluster'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hash'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'index'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'choose)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_145.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_145.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_146: DB용량 산정
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_146'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'db용량_산정'})
SET     n.name = 'DB용량 산정',
    n.name_kr = 'DB용량 산정',
    n.domain = 'DB';

MERGE (n:Concept {id: '용량산정_기술'})
SET     n.name = '용량산정 기술',
    n.name_kr = '용량산정 기술',
    n.domain = 'DB';

MERGE (n:Concept {id: '성능관리'})
SET     n.name = '성능관리',
    n.name_kr = '성능관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '애플리케이션규모산정'})
SET     n.name = '애플리케이션규모산정',
    n.name_kr = '애플리케이션규모산정',
    n.domain = 'DB';

MERGE (n:Concept {id: '업무부하관리'})
SET     n.name = '업무부하관리',
    n.name_kr = '업무부하관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '모델링(경험기반_기법'})
SET     n.name = '모델링(경험기반 기법',
    n.name_kr = '모델링(경험기반 기법',
    n.domain = 'DB';

MERGE (n:Concept {id: '시뮬레이션'})
SET     n.name = '시뮬레이션',
    n.name_kr = '시뮬레이션',
    n.domain = 'DB';

MERGE (n:Concept {id: '시스템_로그_분석)용량계획_수립'})
SET     n.name = '시스템 로그 분석)용량계획 수립',
    n.name_kr = '시스템 로그 분석)용량계획 수립',
    n.domain = 'DB';

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'DB',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: '메모리'})
SET     n.name = '메모리',
    n.name_kr = '메모리',
    n.domain = 'DB';

MERGE (n:Concept {id: '디스크_용량산정_방식'})
SET     n.name = '디스크 용량산정 방식',
    n.name_kr = '디스크 용량산정 방식',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '성능관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '애플리케이션규모산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '업무부하관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '모델링(경험기반_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '시뮬레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '시스템_로그_분석)용량계획_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '메모리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Concept {id: '디스크_용량산정_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Document {id: 'DB_146'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'db용량_산정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용량산정_기술'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션규모산정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무부하관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델링(경험기반_기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시뮬레이션'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_로그_분석)용량계획_수립'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크_용량산정_방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_149: 데이터베이스 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_149'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터베이스_보안'})
SET     n.name = '데이터베이스 보안',
    n.name_kr = '데이터베이스 보안',
    n.domain = 'DB';

MERGE (n:Concept {id: 'authentication'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'DB';

MERGE (n:Metric {id: 'availability'})
SET     n.name = '가용성',
    n.name_kr = '가용성',
    n.domain = 'DB';

MERGE (n:Metric {id: 'integrity'})
SET     n.name = '무결성',
    n.name_kr = '무결성',
    n.domain = 'DB';

MERGE (n:Metric {id: 'confidentiality'})
SET     n.name = '기밀성',
    n.name_kr = '기밀성',
    n.domain = 'DB';

MERGE (n:Concept {id: '컴플라이언스'})
SET     n.name = '컴플라이언스',
    n.name_kr = '컴플라이언스',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_암호화_기술_3가지'})
SET     n.name = '데이터 암호화 기술 3가지',
    n.name_kr = '데이터 암호화 기술 3가지',
    n.domain = 'DB';

MERGE (n:Concept {id: '접근_제어_유형(dac'})
SET     n.name = '접근 제어 유형(DAC',
    n.name_kr = '접근 제어 유형(DAC',
    n.domain = 'DB';

MERGE (n:Concept {id: 'mac'})
SET     n.name = 'MAC',
    n.name_kr = 'MAC',
    n.domain = 'DB',
    n.aliases = ['MAC'];

MERGE (n:Concept {id: 'rbac)'})
SET     n.name = 'RBAC)',
    n.name_kr = 'RBAC)',
    n.domain = 'DB';

MERGE (n:Concept {id: '암호화:_plug-in'})
SET     n.name = '암호화: plug-in',
    n.name_kr = '암호화: plug-in',
    n.domain = 'DB';

MERGE (n:Concept {id: 'api'})
SET     n.name = 'API',
    n.name_kr = 'API',
    n.domain = 'DB',
    n.aliases = ['API'];

MERGE (n:Concept {id: 'hybrid'})
SET     n.name = 'Hybrid',
    n.name_kr = 'Hybrid',
    n.domain = 'DB',
    n.aliases = ['Hybrid'];

MERGE (n:Concept {id: '커널'})
SET     n.name = '커널',
    n.name_kr = '커널',
    n.domain = 'DB';

MERGE (n:Concept {id: 'secure_proxy'})
SET     n.name = 'Secure-Proxy',
    n.name_kr = 'Secure-Proxy',
    n.domain = 'DB',
    n.aliases = ['Secure-Proxy'];

MERGE (n:Concept {id: '호모몰픽'})
SET     n.name = '호모몰픽',
    n.name_kr = '호모몰픽',
    n.domain = 'DB';

MERGE (n:Concept {id: '불법접근'})
SET     n.name = '불법접근',
    n.name_kr = '불법접근',
    n.domain = 'DB',
    n.definition = '∙ 비인가자의 접근 및 인가자의 인가범위 이외의 접근';

MERGE (n:Concept {id: '정보노출'})
SET     n.name = '정보노출',
    n.name_kr = '정보노출',
    n.domain = 'DB',
    n.definition = 'Aggregation (조합, 집단화)';

MERGE (n:Concept {id: 'inference'})
SET     n.name = 'Inference',
    n.name_kr = '추론',
    n.domain = 'DB',
    n.definition = '∙ 보안등급 없는 일반 사용자가 보안으로 분류되지 않은 정보에 정당하게 접근, 기밀정보를 유추하는 행위',
    n.aliases = ['Inference', '추론'];

MERGE (n:Concept {id: 'access_control'})
SET     n.name = 'Access Control',
    n.name_kr = '접근 통제',
    n.domain = 'DB',
    n.definition = '∙ 허가 받지 않은 사용자의 DB 자체에 대한 접근을 방지 예) 계정/암호, RBAC',
    n.aliases = ['Access Control', '접근 통제'];

MERGE (n:Concept {id: 'authorization_rules'})
SET     n.name = 'Authorization Rules',
    n.name_kr = '허가 규칙',
    n.domain = 'DB',
    n.definition = '∙ 정당한 절차를 통한 DBMS 접근 사용자도, 허가 받지 않은 데이터의 접근을 방지',
    n.aliases = ['Authorization Rules', '허가 규칙'];

MERGE (n:Concept {id: 'views'})
SET     n.name = 'Views',
    n.name_kr = '가상 테이블',
    n.domain = 'DB',
    n.definition = '∙ 가상 테이블을 이용하여 전체 DB 중 자신이 허가 받은 사용자 관점만 볼 수 있도록 한정',
    n.aliases = ['Views', '가상 테이블'];

MERGE (n:Concept {id: 'encryption'})
SET     n.name = 'Encryption',
    n.name_kr = '암호화',
    n.domain = 'DB',
    n.definition = '∙ 데이터를 암호화하여 형태를 변형, 가독성을 원천적으로 봉쇄하는 방식',
    n.aliases = ['Encryption', '암호화'];

MERGE (n:Concept {id: '심사_항목'})
SET     n.name = '심사 항목',
    n.name_kr = '심사 항목',
    n.domain = 'DB',
    n.definition = '접근제어';

// --- 관계 ---

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Metric {id: 'availability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Metric {id: 'integrity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Metric {id: 'confidentiality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '컴플라이언스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '데이터_암호화_기술_3가지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '접근_제어_유형(dac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'mac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'rbac)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '암호화:_plug-in'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'hybrid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'secure_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '호모몰픽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '불법접근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '정보노출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'inference'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'access_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'authorization_rules'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'views'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Concept {id: '심사_항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Document {id: 'DB_149'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authentication'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'availability'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'integrity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'confidentiality'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴플라이언스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화_기술_3가지'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_제어_유형(dac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rbac)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화:_plug-in'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hybrid'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커널'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secure_proxy'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호모몰픽'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불법접근'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보노출'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inference'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access_control'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authorization_rules'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'views'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심사_항목'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_150: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_150'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_152: DB 접근제어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_152'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'db_접근제어'})
SET     n.name = 'DB 접근제어',
    n.name_kr = 'DB 접근제어',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터베이스_보안'})
SET     n.name = '데이터베이스 보안',
    n.name_kr = '데이터베이스 보안',
    n.domain = 'DB';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'DB';

MERGE (n:Metric {id: '가용성'})
SET     n.name = '가용성',
    n.name_kr = '가용성',
    n.domain = 'DB';

MERGE (n:Metric {id: '무결성'})
SET     n.name = '무결성',
    n.name_kr = '무결성',
    n.domain = 'DB';

MERGE (n:Metric {id: '기밀성'})
SET     n.name = '기밀성',
    n.name_kr = '기밀성',
    n.domain = 'DB';

MERGE (n:Concept {id: '컴플라이언스'})
SET     n.name = '컴플라이언스',
    n.name_kr = '컴플라이언스',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_암호화_기술_3가지'})
SET     n.name = '데이터 암호화 기술 3가지',
    n.name_kr = '데이터 암호화 기술 3가지',
    n.domain = 'DB';

MERGE (n:Concept {id: '접근_제어_유형(dac'})
SET     n.name = '접근 제어 유형(DAC',
    n.name_kr = '접근 제어 유형(DAC',
    n.domain = 'DB';

MERGE (n:Concept {id: 'mac'})
SET     n.name = 'MAC',
    n.name_kr = 'MAC',
    n.domain = 'DB',
    n.aliases = ['MAC'];

MERGE (n:Concept {id: 'rbac)'})
SET     n.name = 'RBAC)',
    n.name_kr = 'RBAC)',
    n.domain = 'DB';

MERGE (n:Concept {id: 'grant'})
SET     n.name = 'GRANT',
    n.name_kr = 'GRANT',
    n.domain = 'DB',
    n.definition = '권한 부여',
    n.aliases = ['GRANT'];

MERGE (n:Concept {id: 'revoke'})
SET     n.name = 'REVOKE',
    n.name_kr = 'REVOKE',
    n.domain = 'DB',
    n.definition = '권한 회수',
    n.aliases = ['REVOKE'];

MERGE (n:Concept {id: 'dac'})
SET     n.name = 'DAC',
    n.name_kr = 'DAC',
    n.domain = 'DB',
    n.aliases = ['DAC'];

MERGE (n:Concept {id: 'rbac'})
SET     n.name = 'RBAC',
    n.name_kr = 'RBAC',
    n.domain = 'DB',
    n.aliases = ['RBAC'];

MERGE (n:Concept {id: '방법'})
SET     n.name = '방법',
    n.name_kr = '방법',
    n.domain = 'DB',
    n.definition = '1) Capability List : 행 중심 표현 형태 - 한 주체에 대한 접근 가능한 객체와 허가 받은 접근 종류의 목록 - 객체가 적은 경우에 적합 예) 사람 A에 대해 [프린터1:PRINT], [파일1:RW] 2) Access Control List(ACL) : 열 중심 표현 형태 - 한 객체에 대해 접근 허가 받은 주체들과 각 주체마다 허가 받은';

MERGE (n:Metric {id: 'bell-_lapadula_모델,_biba_모델'})
SET     n.name = 'Bell- Lapadula 모델, Biba 모델',
    n.name_kr = 'Bell- Lapadula 모델, Biba 모델',
    n.domain = 'DB',
    n.definition = '(1) Bell-Lapadula 모델 (기밀성 중심) - 군대의 보안 레벨과 같이 그 정보의 기밀성에 따라 상하 관계가 구분된 정보를 보호하기 위해 사용 예) 상위 레벨 읽기금지 정책(No-read-up Policy) 하위 레벨 쓰기금지 정책 No-write-down Policy) (2) Biba 모델 (무결성 중심) - 기밀성보다는 정보의 무결성을 높이는';

// --- 관계 ---

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Metric {id: '가용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Metric {id: '무결성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Metric {id: '기밀성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: '컴플라이언스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: '데이터_암호화_기술_3가지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: '접근_제어_유형(dac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'mac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'rbac)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'grant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'revoke'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dac'})
MERGE (b:Concept {id: 'mac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dac'})
MERGE (b:Concept {id: 'rbac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'dac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mac'})
MERGE (b:Concept {id: 'rbac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'mac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: 'rbac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Concept {id: '방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Metric {id: 'bell-_lapadula_모델,_biba_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Document {id: 'DB_152'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'db_접근제어'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스_보안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '무결성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '기밀성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴플라이언스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화_기술_3가지'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_제어_유형(dac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rbac)'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grant'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'revoke'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rbac'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'bell-_lapadula_모델,_biba_모델'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_153: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_153'})
SET doc.domain = 'DB';

// ================================================================
// DB 도메인 자동 생성 완료
// 노드: 160개
// 관계: 330개
// ================================================================