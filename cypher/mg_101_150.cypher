// ================================================================
// MG 도메인 (MG_101 ~ MG_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// MG_090: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_090'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_091: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_091'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_092.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_092.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_092.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_092.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_094: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_094'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_095: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_095'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_096: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_096'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_097: MRO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_097'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'mro'})
SET     n.name = 'MRO',
    n.name_kr = 'MRO',
    n.domain = 'MG',
    n.aliases = ['MRO'];

MERGE (n:Concept {id: '경영전략'})
SET     n.name = '경영전략',
    n.name_kr = '경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '아웃소싱_표준/정책'})
SET     n.name = '아웃소싱 표준/정책',
    n.name_kr = '아웃소싱 표준/정책',
    n.domain = 'MG';

MERGE (n:Concept {id: 'maintenance'})
SET     n.name = 'Maintenance',
    n.name_kr = 'Maintenance',
    n.domain = 'MG',
    n.aliases = ['Maintenance'];

MERGE (n:Concept {id: 'repair'})
SET     n.name = 'Repair',
    n.name_kr = 'Repair',
    n.domain = 'MG',
    n.aliases = ['Repair'];

MERGE (n:Concept {id: 'operation'})
SET     n.name = 'Operation',
    n.name_kr = 'Operation',
    n.domain = 'MG',
    n.aliases = ['Operation'];

MERGE (n:Metric {id: 'e_procurement'})
SET     n.name = 'e-Procurement',
    n.name_kr = 'e-Procurement',
    n.domain = 'MG',
    n.aliases = ['e-Procurement'];

MERGE (n:Concept {id: '속성'})
SET     n.name = '속성',
    n.name_kr = '속성',
    n.domain = 'MG';

MERGE (n:Concept {id: '사례'})
SET     n.name = '사례(품목)',
    n.name_kr = '사례(품목)',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Concept {id: '경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: '아웃소싱_표준/정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: 'maintenance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: 'repair'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: 'operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Metric {id: 'e_procurement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Concept {id: '사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: '속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Concept {id: '사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Document {id: 'MG_097'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mro'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maintenance'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'repair'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operation'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'e_procurement'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사례'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_098: SSC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_098'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'ssc'})
SET     n.name = 'SSC',
    n.name_kr = 'SSC',
    n.domain = 'MG',
    n.aliases = ['SSC'];

MERGE (n:Concept {id: '경영전략'})
SET     n.name = '경영전략',
    n.name_kr = '경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'shared_service_center'})
SET     n.name = 'Shared Service Center',
    n.name_kr = 'Shared Service Center',
    n.domain = 'MG',
    n.aliases = ['Shared Service Center'];

// --- 관계 ---

MERGE (a:Concept {id: 'shared_service_center'})
MERGE (b:Concept {id: '경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ssc'})
MERGE (b:Document {id: 'MG_098'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ssc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shared_service_center'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_099: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_099'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_100.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_100.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_100.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_100.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_101: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_101'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_102: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_102'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_108: IT-Compliance
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_108'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'it_compliance'})
SET     n.name = 'IT-Compliance',
    n.name_kr = 'IT-Compliance',
    n.domain = 'MG',
    n.aliases = ['IT-Compliance'];

MERGE (n:Concept {id: '공보보통책'})
SET     n.name = '공보보통책',
    n.name_kr = '공보보통책',
    n.domain = 'MG';

MERGE (n:Concept {id: '바젤ⅱ'})
SET     n.name = '바젤Ⅱ(Basel Ⅱ)',
    n.name_kr = '바젤Ⅱ(Basel Ⅱ)',
    n.domain = 'MG',
    n.definition = '시장, 신용 리스크 외에 운영 리스크 까지 고려 BIS(Bank for International Settlement: 국제 결제 은행) 비율 산출, 은행건전성평가 기준';

MERGE (n:Concept {id: '기업회계_compliance'})
SET     n.name = '기업회계 Compliance',
    n.name_kr = '기업회계 Compliance',
    n.domain = 'MG',
    n.definition = '회계 3법(증권거래법, 공인회계사법, 주식회사의 외부감사에 관한 법률)';

MERGE (n:Concept {id: '대응방안'})
SET     n.name = '대응방안',
    n.name_kr = '대응방안',
    n.domain = 'MG';

MERGE (n:Concept {id: '상세설명'})
SET     n.name = '상세설명',
    n.name_kr = '상세설명',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '공보보통책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '바젤ⅱ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '기업회계_compliance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Document {id: 'MG_108'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공보보통책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바젤ⅱ'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업회계_compliance'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세설명'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_109: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_109'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_110: IFRS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_110'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'ifrs'})
SET     n.name = 'IFRS',
    n.name_kr = 'IFRS',
    n.domain = 'MG',
    n.aliases = ['IFRS'];

// --- 관계 ---

MERGE (a:Concept {id: 'ifrs'})
MERGE (b:Document {id: 'MG_110'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ifrs'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_111.1: COSO 프레임워크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_111.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'coso_프레임워크'})
SET     n.name = 'COSO 프레임워크',
    n.name_kr = 'COSO 프레임워크',
    n.domain = 'MG';

MERGE (n:Concept {id: '통위통정모/_내목사위2통정모(erm'})
SET     n.name = '통위통정모/ 내목사위2통정모(ERM',
    n.name_kr = '통위통정모/ 내목사위2통정모(ERM',
    n.domain = 'MG';

MERGE (n:Concept {id: '전사적_위험_관리)'})
SET     n.name = '전사적 위험 관리)',
    n.name_kr = '전사적 위험 관리)',
    n.domain = 'MG';

MERGE (n:Metric {id: 'coso_internal_control_framework'})
SET     n.name = 'COSO Internal Control Framework',
    n.name_kr = 'COSO Internal Control Framework',
    n.domain = 'MG',
    n.definition = '국제적으로 검증된 강력하면서도 효과적인 내부통제 시스템 구축 방법론 - 5개의 Component, 3개의 Categories, 적용영역은 Entity Level과 Process Level로 구분 - Process Level은 Control Activity에 포함되어 있어 Activity에 대해서 Control Matrix를 작성하는 형태로 ICMS를 구현',
    n.aliases = ['COSO Internal Control Framework'];

MERGE (n:Concept {id: 'coso_erm_framework'})
SET     n.name = 'COSO ERM Framework',
    n.name_kr = 'COSO ERM Framework',
    n.domain = 'MG',
    n.definition = 'COSO Internal Control Framework의 전사적 위험관리 확장/보완 프레임워크 - 조직에 영향을 미칠 잠재적 사건을 인식하고, 조직의 위험 선호도 내에서 위험을 관리하고, 조직 목표를 달성함에 있어, 합리적인 확신을 제공하도록 설계된 프로세스',
    n.aliases = ['COSO ERM Framework'];

MERGE (n:Concept {id: '5_components'})
SET     n.name = '5 Components',
    n.name_kr = '5 Components',
    n.domain = 'MG',
    n.definition = '통제환경 (Control Environment)';

MERGE (n:Concept {id: '3_objective_category'})
SET     n.name = '3 Objective Category',
    n.name_kr = '3 Objective Category',
    n.domain = 'MG',
    n.definition = '운영 (Operations)';

MERGE (n:Metric {id: 'entity_process_level'})
SET     n.name = 'Entity/Process Level',
    n.name_kr = 'Entity/Process Level',
    n.domain = 'MG',
    n.definition = 'Entity Level',
    n.aliases = ['Entity/Process Level'];

MERGE (n:Concept {id: '관리체계'})
SET     n.name = '관리체계',
    n.name_kr = '관리체계',
    n.domain = 'MG',
    n.definition = '내부환경';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'MG',
    n.definition = '목표설정';

MERGE (n:Concept {id: '사건인식'})
SET     n.name = '사건인식',
    n.name_kr = '사건인식',
    n.domain = 'MG',
    n.definition = '사건, 전략과 목표에 영향을 주는 요소, 방법론과 기술, 사건의 상호연관성, 사건 카테고리, 위험과 기회';

MERGE (n:Concept {id: 'risk_assessment'})
SET     n.name = '위험평가',
    n.name_kr = '위험평가',
    n.domain = 'MG',
    n.definition = '고유위험과 잔여위험, 발생가능성과 영향, 방법론과 기술, 상호관계';

MERGE (n:Concept {id: '위험대응'})
SET     n.name = '위험대응',
    n.name_kr = '위험대응',
    n.domain = 'MG',
    n.definition = '위험 대응책 인식, 실행 가능한 위험 대응책 평가, 대응책 선택, 포트폴리오 관점';

MERGE (n:Concept {id: '운영관리'})
SET     n.name = '운영관리',
    n.name_kr = '운영관리',
    n.domain = 'MG',
    n.definition = '통제활동';

MERGE (n:Concept {id: '정보와_의사소통'})
SET     n.name = '정보와 의사소통',
    n.name_kr = '정보와 의사소통',
    n.domain = 'MG',
    n.definition = '정보, 전략적이고 통합적인 시스템, 의사소통';

MERGE (n:Concept {id: '지속적_개선'})
SET     n.name = '지속적 개선',
    n.name_kr = '지속적 개선',
    n.domain = 'MG',
    n.definition = '모니터링';

MERGE (n:Concept {id: 'coso'})
SET     n.name = 'COSO',
    n.name_kr = 'COSO',
    n.domain = 'MG',
    n.aliases = ['COSO'];

MERGE (n:Standard {id: 'cobit'})
SET     n.name = 'COBIT',
    n.name_kr = 'COBIT',
    n.domain = 'MG',
    n.aliases = ['COBIT'];

// --- 관계 ---

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '통위통정모/_내목사위2통정모(erm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '전사적_위험_관리)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Metric {id: 'coso_internal_control_framework'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: 'coso_erm_framework'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '5_components'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '3_objective_category'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Metric {id: 'entity_process_level'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '관리체계'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '사건인식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: 'risk_assessment'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '위험대응'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '운영관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '정보와_의사소통'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: '지속적_개선'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso'})
MERGE (b:Standard {id: 'cobit'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Concept {id: 'coso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Standard {id: 'cobit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Document {id: 'MG_111.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'coso_프레임워크'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통위통정모/_내목사위2통정모(erm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전사적_위험_관리)'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'coso_internal_control_framework'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coso_erm_framework'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5_components'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3_objective_category'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'entity_process_level'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리체계'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사건인식'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risk_assessment'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험대응'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보와_의사소통'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적_개선'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coso'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'cobit'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_111.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_111.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_111.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_111.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_112.1: XBRL (eXtensible Business Reporting Language)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_112.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'extensible_business_reporting_language'})
SET     n.name = 'eXtensible Business Reporting Language',
    n.name_kr = 'XBRL',
    n.domain = 'MG',
    n.aliases = ['eXtensible Business Reporting Language', 'XBRL'];

MERGE (n:Concept {id: 'it_compliance'})
SET     n.name = 'IT-Compliance',
    n.name_kr = 'IT-Compliance',
    n.domain = 'MG',
    n.aliases = ['IT-Compliance'];

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'MG',
    n.definition = '회계 문서의 작성 속도 향상 및 오류작업 감소 기존 작성 자료의 재활용으로 비용 감소';

MERGE (n:Concept {id: '고객'})
SET     n.name = '고객',
    n.name_kr = '고객',
    n.domain = 'MG',
    n.definition = '기업 공시 자료의 비교 활용으로 기업 현황 파악 간단 기업의 건전성과 부실 상태의 파악 용이';

MERGE (n:Concept {id: '분석가'})
SET     n.name = '분석가',
    n.name_kr = '분석가',
    n.domain = 'MG',
    n.definition = '기업간/업종 간의 기업 정보 분석이 가능 기업의 투명성 정도를 분석하기가 용이';

MERGE (n:Concept {id: '감독기관'})
SET     n.name = '감독기관',
    n.name_kr = '감독기관',
    n.domain = 'MG',
    n.definition = '공시자료의 재활용으로 신속한 정보 확보 가능 공시자료의 집계 부담이 감소';

// --- 관계 ---

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Concept {id: '기업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Concept {id: '고객'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Concept {id: '분석가'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Concept {id: '감독기관'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Document {id: 'MG_112.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'extensible_business_reporting_language'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_compliance'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석가'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감독기관'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_112.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_112.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_112.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_112.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_113: 규제샌드박스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_113'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '규제샌드박스'})
SET     n.name = '규제샌드박스',
    n.name_kr = '규제샌드박스',
    n.domain = 'MG';

MERGE (n:Concept {id: '범정부_it_전략/_정책'})
SET     n.name = '범정부 IT 전략/ 정책',
    n.name_kr = '범정부 IT 전략/ 정책',
    n.domain = 'MG';

MERGE (n:Concept {id: '포괄적_네거티브_규제전환'})
SET     n.name = '포괄적 네거티브 규제전환',
    n.name_kr = '포괄적 네거티브 규제전환',
    n.domain = 'MG';

MERGE (n:Concept {id: '4차_산업혁명'})
SET     n.name = '4차 산업혁명',
    n.name_kr = '4차 산업혁명',
    n.domain = 'MG';

MERGE (n:Concept {id: '실증_테스트'})
SET     n.name = '실증 테스트',
    n.name_kr = '실증 테스트',
    n.domain = 'MG';

MERGE (n:Concept {id: '실증을_위한_규제특례'})
SET     n.name = '실증을 위한 규제특례',
    n.name_kr = '실증을 위한 규제특례',
    n.domain = 'MG';

MERGE (n:Concept {id: '임시허가'})
SET     n.name = '임시허가',
    n.name_kr = '임시허가',
    n.domain = 'MG';

MERGE (n:Concept {id: '규제_개혁'})
SET     n.name = '규제 개혁',
    n.name_kr = '규제 개혁',
    n.domain = 'MG';

MERGE (n:Concept {id: '신속확인_제도'})
SET     n.name = '신속확인 제도',
    n.name_kr = '신속확인 제도',
    n.domain = 'MG';

MERGE (n:Concept {id: '신청'})
SET     n.name = '신청',
    n.name_kr = '신청',
    n.domain = 'MG',
    n.definition = '과기정통부, 산업부, 지자체 중 관련성이 높은 부처에 신청 시 해당 부처가 모든 관련부처에 통보 및 협조를 얻어 절차 진행';

MERGE (n:Concept {id: '심의'})
SET     n.name = '심의',
    n.name_kr = '심의',
    n.domain = 'MG',
    n.definition = '신제품•서비스의 혁신성, 이용자 편익, 국민의 생명•건강•환경 등 공익적 가치를 고려하여 규제 특례 심의위원회에서 결정';

MERGE (n:Concept {id: '이용자_보호장치'})
SET     n.name = '이용자 보호장치',
    n.name_kr = '이용자 보호장치',
    n.domain = 'MG',
    n.definition = '보증보험, 안전조치 등을 조건으로 부과';

MERGE (n:Concept {id: '유효기간'})
SET     n.name = '유효기간',
    n.name_kr = '유효기간',
    n.domain = 'MG',
    n.definition = '2년 이내, 1회 연장 가능';

MERGE (n:Concept {id: '후속조치'})
SET     n.name = '후속조치',
    n.name_kr = '후속조치',
    n.domain = 'MG',
    n.definition = '실증 결과에 따라 관련 법령 정비 후 시장 출시 가능';

MERGE (n:Concept {id: '3법_내용'})
SET     n.name = '3법 내용',
    n.name_kr = '3법 내용',
    n.domain = 'MG';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '범정부_it_전략/_정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '포괄적_네거티브_규제전환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '4차_산업혁명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '실증_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '실증을_위한_규제특례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '임시허가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '규제_개혁'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '신속확인_제도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '신청'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '심의'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '이용자_보호장치'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '유효기간'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '후속조치'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: '3법_내용'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '3법_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Document {id: 'MG_113'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '규제샌드박스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범정부_it_전략/_정책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포괄적_네거티브_규제전환'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4차_산업혁명'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실증_테스트'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실증을_위한_규제특례'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임시허가'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규제_개혁'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신속확인_제도'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신청'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심의'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용자_보호장치'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효기간'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후속조치'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3법_내용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_115.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_115.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_115.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_115.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_115.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_115.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_116: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_116'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_117: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_117'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_118.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_118.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_118.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_118.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_119: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_119'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_120: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_120'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_121: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_121'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_122: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_122'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_123: 디지털 플랫폼
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_123'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '디지털_플랫폼'})
SET     n.name = '디지털 플랫폼',
    n.name_kr = '디지털 플랫폼',
    n.domain = 'MG';

MERGE (n:Concept {id: '플랫폼_기술'})
SET     n.name = '플랫폼 기술',
    n.name_kr = '플랫폼 기술',
    n.domain = 'MG';

MERGE (n:Concept {id: '가치_창출'})
SET     n.name = '가치 창출',
    n.name_kr = '가치 창출',
    n.domain = 'MG';

MERGE (n:Concept {id: '생태계_조성'})
SET     n.name = '생태계 조성',
    n.name_kr = '생태계 조성',
    n.domain = 'MG';

MERGE (n:Concept {id: '디지털화'})
SET     n.name = '디지털화',
    n.name_kr = '디지털화',
    n.domain = 'MG';

MERGE (n:Concept {id: '소비자'})
SET     n.name = '소비자',
    n.name_kr = '소비자',
    n.domain = 'MG',
    n.definition = '제공된 플랫폼 하에, 재화와 서비스를 선택, 소비하는 자';

MERGE (n:Concept {id: '가치교환_활동'})
SET     n.name = '가치교환 활동',
    n.name_kr = '가치교환 활동',
    n.domain = 'MG',
    n.definition = '다양한 참여를 촉진하는 장에서 이루어지는 ‘거래’ 뿐 아니라 공급자-수요자-플랫폼 간의 상호작용을 모두 포함';

MERGE (n:Concept {id: '주요기능'})
SET     n.name = '주요기능',
    n.name_kr = '주요기능',
    n.domain = 'MG',
    n.definition = '연결 기능 (Connectivity)';

MERGE (n:Concept {id: 'information_sharing'})
SET     n.name = 'Information Sharing',
    n.name_kr = '정보공유 기능',
    n.domain = 'MG',
    n.definition = '플랫폼 내/외부 주체들 간의 정보를 실시간으로 공유 - 공유된 정보의 축적은 향후 발전을 위한 지식화(Knowledge)',
    n.aliases = ['Information Sharing', '정보공유 기능'];

MERGE (n:Concept {id: 'cost_cut'})
SET     n.name = 'Cost Cut',
    n.name_kr = '비용감소 기능',
    n.domain = 'MG',
    n.definition = '플랫폼을 통한 검색, 선택, 결정 등 소요 시간과 비용을 감소 - 공통기능의 제공을 통해 별도의 개발비용 등 절감',
    n.aliases = ['Cost Cut', '비용감소 기능'];

MERGE (n:Concept {id: 'reputation'})
SET     n.name = 'Reputation',
    n.name_kr = '평판 기능',
    n.domain = 'MG',
    n.definition = '일관된 사용자 경험과 피드백을 통해 플랫폼에 신뢰성을 부여 - 부여된 플랫폼의 브랜딩은 사용자에게 거래의 안정감을 부여',
    n.aliases = ['Reputation', '평판 기능'];

MERGE (n:Concept {id: 'network_effect'})
SET     n.name = 'Network Effect',
    n.name_kr = '네트워크 효과',
    n.domain = 'MG',
    n.definition = '그룹간 상호작용을 통한 커뮤니티 형성 등 관계 규모의 증대 - 입소문 등을 통한 네트워크 효과는 애착심을 부여',
    n.aliases = ['Network Effect', '네트워크 효과'];

MERGE (n:Concept {id: 'open_innovation'})
SET     n.name = 'Open Innovation',
    n.name_kr = '혁신 기능',
    n.domain = 'MG',
    n.definition = '이질적 그룹간 교류와 경쟁을 통한 제3의 서비스 창출 - 기술이 새로운 서비스를 창출하기도 하고, 그 역(逆)의 창출도 가능',
    n.aliases = ['Open Innovation', '혁신 기능'];

// --- 관계 ---

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '플랫폼_기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '가치_창출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '생태계_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '디지털화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '소비자'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '가치교환_활동'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: '주요기능'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: 'information_sharing'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: 'cost_cut'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: 'reputation'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: 'network_effect'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Concept {id: 'open_innovation'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Document {id: 'MG_123'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디지털_플랫폼'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_기술'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가치_창출'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생태계_조성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소비자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가치교환_활동'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기능'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'information_sharing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cost_cut'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reputation'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_effect'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_124: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_124'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_126: 크로스 플랫폼(Cross Platform)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_126'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'cross_platform'})
SET     n.name = 'Cross Platform',
    n.name_kr = '크로스 플랫폼',
    n.domain = 'MG',
    n.aliases = ['Cross Platform', '크로스 플랫폼'];

MERGE (n:Concept {id: '정부/정책'})
SET     n.name = '정부/정책',
    n.name_kr = '정부/정책',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'cross_platform'})
MERGE (b:Concept {id: '정부/정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cross_platform'})
MERGE (b:Document {id: 'MG_126'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cross_platform'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부/정책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_127: Commerce
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_127'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: '마케팅'})
SET     n.name = '마케팅',
    n.name_kr = '마케팅',
    n.domain = 'MG';

MERGE (n:Concept {id: 'e_commerce'})
SET     n.name = 'E-Commerce',
    n.name_kr = 'E-Commerce',
    n.domain = 'MG',
    n.aliases = ['E-Commerce'];

MERGE (n:Concept {id: 'u_commerce'})
SET     n.name = 'U-Commerce',
    n.name_kr = 'U-Commerce',
    n.domain = 'MG',
    n.aliases = ['U-Commerce'];

MERGE (n:Concept {id: 'm_commerce'})
SET     n.name = 'M-Commerce',
    n.name_kr = 'M-Commerce',
    n.domain = 'MG',
    n.aliases = ['M-Commerce'];

MERGE (n:Concept {id: 't_commerce'})
SET     n.name = 'T-Commerce',
    n.name_kr = 'T-Commerce',
    n.domain = 'MG',
    n.aliases = ['T-Commerce'];

MERGE (n:Concept {id: 'c_commerce'})
SET     n.name = 'C-Commerce',
    n.name_kr = 'C-Commerce',
    n.domain = 'MG',
    n.aliases = ['C-Commerce'];

MERGE (n:Concept {id: 'ott'})
SET     n.name = 'OTT',
    n.name_kr = 'OTT',
    n.domain = 'MG',
    n.aliases = ['OTT'];

MERGE (n:Concept {id: 'electronic'})
SET     n.name = 'Electronic',
    n.name_kr = 'E-Commerce',
    n.domain = 'MG',
    n.definition = '인터넷과 컴퓨터 네트워크를 이용한 상품 판매, 구매 서비스',
    n.aliases = ['Electronic', 'E-Commerce'];

MERGE (n:Concept {id: 'mobile'})
SET     n.name = 'Mobile',
    n.name_kr = 'M-Commerce',
    n.domain = 'MG',
    n.definition = '모바일 기기를 이용한 전자상거래',
    n.aliases = ['Mobile', 'M-Commerce'];

MERGE (n:Concept {id: 'television'})
SET     n.name = 'Television',
    n.name_kr = 'T-Commerce',
    n.domain = 'MG',
    n.definition = '양방향 통신이 가능한 TV를 통한 상거래 및 뱅킹 서비스',
    n.aliases = ['Television', 'T-Commerce'];

MERGE (n:Concept {id: 'collaborative'})
SET     n.name = 'Collaborative',
    n.name_kr = 'C-Commerce',
    n.domain = 'MG',
    n.definition = '온라인 공간에서 다른 기업과의 기술 및 정보 공유를 통한 전자상거래',
    n.aliases = ['Collaborative', 'C-Commerce'];

MERGE (n:Concept {id: 'ubiquitous'})
SET     n.name = 'Ubiquitous',
    n.name_kr = 'U-Commerce',
    n.domain = 'MG',
    n.definition = '인터넷을 접속할 수 있는 모든 기기를 통한 상거래',
    n.aliases = ['Ubiquitous', 'U-Commerce'];

MERGE (n:Concept {id: 'game'})
SET     n.name = 'Game',
    n.name_kr = 'G-Commerce',
    n.domain = 'MG',
    n.definition = '게임 기반 상거래',
    n.aliases = ['Game', 'G-Commerce'];

MERGE (n:Concept {id: 'location'})
SET     n.name = 'Location',
    n.name_kr = 'L-Commerce',
    n.domain = 'MG',
    n.definition = '위치 기반 상거래',
    n.aliases = ['Location', 'L-Commerce'];

// --- 관계 ---

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: '마케팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'e_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'u_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'm_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 't_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'c_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'ott'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'electronic'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'mobile'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'television'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'collaborative'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'ubiquitous'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'game'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'location'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'e_commerce'})
MERGE (b:Concept {id: 'm_commerce'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'e_commerce'})
MERGE (b:Concept {id: 't_commerce'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'e_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'm_commerce'})
MERGE (b:Concept {id: 't_commerce'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'm_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 't_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Document {id: 'MG_127'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마케팅'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'u_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 't_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ott'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'electronic'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mobile'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'television'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'collaborative'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ubiquitous'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'game'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'location'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_128: 소셜커머스(Social Commerce)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_128'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'social_commerce'})
SET     n.name = 'Social Commerce',
    n.name_kr = '소셜커머스',
    n.domain = 'MG',
    n.aliases = ['Social Commerce', '소셜커머스'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: '전자상거래_패러다임'})
SET     n.name = '전자상거래 패러다임',
    n.name_kr = '전자상거래 패러다임',
    n.domain = 'MG';

MERGE (n:Concept {id: '소셜미디어'})
SET     n.name = '소셜미디어',
    n.name_kr = '소셜미디어',
    n.domain = 'MG';

MERGE (n:Concept {id: 'sns'})
SET     n.name = 'SNS',
    n.name_kr = 'SNS',
    n.domain = 'MG',
    n.aliases = ['SNS'];

MERGE (n:Concept {id: 'real_time_reaction'})
SET     n.name = 'Real Time Reaction',
    n.name_kr = 'Real Time Reaction',
    n.domain = 'MG',
    n.aliases = ['Real Time Reaction'];

MERGE (n:Concept {id: 'social_spread'})
SET     n.name = 'Social Spread',
    n.name_kr = 'Social Spread',
    n.domain = 'MG',
    n.aliases = ['Social Spread'];

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'MG';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: '전자상거래_패러다임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: '소셜미디어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: 'sns'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: 'real_time_reaction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: 'social_spread'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Document {id: 'MG_128'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'social_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자상거래_패러다임'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소셜미디어'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sns'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'real_time_reaction'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'social_spread'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_129: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_129'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_130: 앰비언트 커머스(Ambient Commerce)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_130'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'ambient_commerce'})
SET     n.name = 'Ambient Commerce',
    n.name_kr = '앰비언트 커머스',
    n.domain = 'MG',
    n.aliases = ['Ambient Commerce', '앰비언트 커머스'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: '엠비언트_커머스'})
SET     n.name = '엠비언트 커머스',
    n.name_kr = '엠비언트 커머스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'MG',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: '상황인식'})
SET     n.name = '상황인식',
    n.name_kr = '상황인식',
    n.domain = 'MG';

MERGE (n:Concept {id: '퍼베이시브_컴퓨팅'})
SET     n.name = '퍼베이시브 컴퓨팅',
    n.name_kr = '퍼베이시브 컴퓨팅',
    n.domain = 'MG';

MERGE (n:Concept {id: 'sensing'})
SET     n.name = '센싱',
    n.name_kr = '센싱',
    n.domain = 'MG';

MERGE (n:Concept {id: 'status_tracking'})
SET     n.name = '상태추적',
    n.name_kr = '상태추적',
    n.domain = 'MG';

MERGE (n:Concept {id: 'reasoning'})
SET     n.name = '추론',
    n.name_kr = '추론',
    n.domain = 'MG';

MERGE (n:Concept {id: 'amazon_go'})
SET     n.name = 'Amazon Go',
    n.name_kr = 'Amazon Go',
    n.domain = 'MG',
    n.aliases = ['Amazon Go'];

// --- 관계 ---

MERGE (a:Concept {id: '엠비언트_커머스'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: '상황인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: '퍼베이시브_컴퓨팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: 'sensing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: 'status_tracking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: 'reasoning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Concept {id: 'amazon_go'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Document {id: 'MG_130'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ambient_commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엠비언트_커머스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인식'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼베이시브_컴퓨팅'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'status_tracking'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reasoning'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'amazon_go'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_131: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_131'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_132: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_132'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_133: e-maketplace
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_133'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'e_maketplace'})
SET     n.name = 'e-maketplace',
    n.name_kr = 'e-maketplace',
    n.domain = 'MG',
    n.aliases = ['e-maketplace'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: 'e_marketplace'})
SET     n.name = 'e-marketplace',
    n.name_kr = 'e-marketplace',
    n.domain = 'MG',
    n.aliases = ['e-marketplace'];

MERGE (n:Concept {id: '인터넷_상거래'})
SET     n.name = '인터넷 상거래',
    n.name_kr = '인터넷 상거래',
    n.domain = 'MG';

MERGE (n:Concept {id: 'vertical'})
SET     n.name = '수직형',
    n.name_kr = '수직형',
    n.domain = 'MG';

MERGE (n:Concept {id: 'horizontal'})
SET     n.name = '수평형',
    n.name_kr = '수평형',
    n.domain = 'MG';

MERGE (n:Concept {id: 'mega'})
SET     n.name = '결합형',
    n.name_kr = '결합형',
    n.domain = 'MG';

MERGE (n:Concept {id: '카탈로그_쇼핑몰'})
SET     n.name = '카탈로그 쇼핑몰',
    n.name_kr = '카탈로그 쇼핑몰',
    n.domain = 'MG';

MERGE (n:Concept {id: '수형형'})
SET     n.name = '수형형',
    n.name_kr = '수형형',
    n.domain = 'MG',
    n.definition = 'Horizontal e-Marketplace, Hortal - 특정 제품이나 산업에 국한하지 않고 다양한 상품을 폭 넓게 취급하는 Marketplace를 지칭';

// --- 관계 ---

MERGE (a:Concept {id: 'e_marketplace'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: '인터넷_상거래'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: 'vertical'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: 'horizontal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: 'mega'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: '카탈로그_쇼핑몰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Concept {id: '수형형'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Document {id: 'MG_133'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'e_maketplace'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_marketplace'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_상거래'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vertical'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'horizontal'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mega'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카탈로그_쇼핑몰'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수형형'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_135: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_135'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_136: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_136'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_137: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_137'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_138: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_138'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_139: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_139'})
SET doc.domain = 'MG';

// ================================================================
// MG 도메인 자동 생성 완료
// 노드: 117개
// 관계: 244개
// ================================================================