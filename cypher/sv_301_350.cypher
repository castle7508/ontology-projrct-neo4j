// ================================================================
// SV 도메인 (SV_301 ~ SV_350) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_283: UsN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_283'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'usn'})
SET     n.name = 'UsN',
    n.name_kr = 'UsN',
    n.domain = 'SV',
    n.aliases = ['UsN'];

MERGE (n:Concept {id: 'convergence'})
SET     n.name = 'Convergence',
    n.name_kr = '통신IT융합',
    n.domain = 'SV',
    n.aliases = ['Convergence', '통신IT융합'];

MERGE (n:Concept {id: 'rfid_tag_reader'})
SET     n.name = 'RFID Tag/Reader',
    n.name_kr = 'RFID Tag/Reader',
    n.domain = 'SV',
    n.aliases = ['RFID Tag/Reader'];

MERGE (n:Concept {id: '센서노드'})
SET     n.name = '센서노드',
    n.name_kr = '센서노드',
    n.domain = 'SV';

MERGE (n:Technology {id: 'zigbee'})
SET     n.name = 'Zigbee',
    n.name_kr = 'Zigbee',
    n.domain = 'SV',
    n.aliases = ['Zigbee'];

MERGE (n:Concept {id: 'usn_미들웨어'})
SET     n.name = 'USN 미들웨어',
    n.name_kr = 'USN 미들웨어',
    n.domain = 'SV';

MERGE (n:Concept {id: '센서기반_nw'})
SET     n.name = '센서기반 NW',
    n.name_kr = '센서기반 NW',
    n.domain = 'SV';

MERGE (n:Concept {id: 'usn_정보_자원'})
SET     n.name = 'USN 정보 자원',
    n.name_kr = 'USN 정보 자원',
    n.domain = 'SV',
    n.definition = 'RFID Tag';

MERGE (n:Concept {id: 'rfid_reader'})
SET     n.name = 'RFID Reader',
    n.name_kr = 'RFID Reader',
    n.domain = 'SV',
    n.definition = '사물에 부착된 태그의 정보를 인식하여 수집한 정보를 USN 미들웨어에 제공',
    n.aliases = ['RFID Reader'];

MERGE (n:Concept {id: '센서/센서노드'})
SET     n.name = '센서/센서노드',
    n.name_kr = '센서/센서노드',
    n.domain = 'SV',
    n.definition = '환경, 물리층에서 감지된 정보와 센서에 관련된 특정 이벤트를 유무선 통신 기술을 이용하여 전달하는 센서';

MERGE (n:Concept {id: '싱크노드'})
SET     n.name = '싱크노드',
    n.name_kr = '싱크노드',
    n.domain = 'SV',
    n.definition = '센서노드에 감지된 센싱 데이터를 취합, 이벤트 데이터를 센서 네트워크 외부로 연계 센서네트워크를 관리하는 시스템';

MERGE (n:Concept {id: 'bcn_백본_및_엑세스_네트워크'})
SET     n.name = 'BCN 백본 및 엑세스 네트워크',
    n.name_kr = 'BCN 백본 및 엑세스 네트워크',
    n.domain = 'SV',
    n.definition = 'USN 게이트웨이';

MERGE (n:Concept {id: 'usn_통합서버'})
SET     n.name = 'USN 통합서버',
    n.name_kr = 'USN 통합서버',
    n.domain = 'SV',
    n.definition = 'USN 관련정보를 저장 또는 관리하기 위한 서버 센싱데이터 서버, USN 메타데이터 서버, 디렉토리 서버';

MERGE (n:Concept {id: '미들_웨어'})
SET     n.name = '미들 웨어',
    n.name_kr = '미들 웨어',
    n.domain = 'SV',
    n.definition = '응용서비스 미들웨어';

MERGE (n:Concept {id: '센서노드_미들웨어'})
SET     n.name = '센서노드 미들웨어',
    n.name_kr = '센서노드 미들웨어',
    n.domain = 'SV',
    n.definition = '센서노드에 탑재되어 센서네트워크의 프로그램 갱신, 응용변화에 따른 프로그래밍 조정';

MERGE (n:Concept {id: 'usn_응용서비스'})
SET     n.name = 'USN 응용서비스',
    n.name_kr = 'USN 응용서비스',
    n.domain = 'SV',
    n.definition = 'IT-BT-NT 융합';

// --- 관계 ---

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'convergence'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'rfid_tag_reader'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '센서노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Technology {id: 'zigbee'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'usn_미들웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '센서기반_nw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'usn_정보_자원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'rfid_reader'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '센서/센서노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '싱크노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'bcn_백본_및_엑세스_네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'usn_통합서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '미들_웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: '센서노드_미들웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Concept {id: 'usn_응용서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Document {id: 'SV_283'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'convergence'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid_tag_reader'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'zigbee'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn_미들웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서기반_nw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn_정보_자원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid_reader'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서/센서노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '싱크노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcn_백본_및_엑세스_네트워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn_통합서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미들_웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서노드_미들웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn_응용서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_284: 인터페이스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_284'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sv'})
SET     n.name = 'SV',
    n.name_kr = '디지털서비스',
    n.domain = 'SV',
    n.aliases = ['SV', '디지털서비스'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'rfid_응용인터페이스_참조모델'})
SET     n.name = 'RFID 응용인터페이스 참조모델',
    n.name_kr = 'RFID 응용인터페이스 참조모델',
    n.domain = 'SV';

MERGE (n:Concept {id: '유용성'})
SET     n.name = '유용성',
    n.name_kr = '유용성',
    n.domain = 'SV';

MERGE (n:Concept {id: '투명성'})
SET     n.name = '투명성',
    n.name_kr = '투명성',
    n.domain = 'SV';

MERGE (n:Concept {id: '효과성'})
SET     n.name = '효과성',
    n.name_kr = '효과성',
    n.domain = 'SV';

MERGE (n:Concept {id: '유연성'})
SET     n.name = '유연성',
    n.name_kr = '유연성',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'sv'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: 'rfid_응용인터페이스_참조모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: '유용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: '투명성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: '효과성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Concept {id: '유연성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Document {id: 'SV_284'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid_응용인터페이스_참조모델'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투명성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효과성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_285: Moblie RFID
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_285'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'moblie_rfid'})
SET     n.name = 'Moblie RFID',
    n.name_kr = 'Moblie RFID',
    n.domain = 'SV',
    n.aliases = ['Moblie RFID'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'mobile_rfid'})
SET     n.name = 'Mobile RFID',
    n.name_kr = 'Mobile RFID',
    n.domain = 'SV',
    n.aliases = ['Mobile RFID'];

MERGE (n:Concept {id: '안심귀가서비스'})
SET     n.name = '안심귀가서비스',
    n.name_kr = '안심귀가서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '서비스형태'})
SET     n.name = '서비스형태',
    n.name_kr = '서비스형태',
    n.domain = 'SV',
    n.definition = '이동통신 망을 기반으로 다양한 비즈니스 모델개발 B2C서비스 (기존 RFID는 B2B서비스)';

MERGE (n:Concept {id: '리더기형태'})
SET     n.name = '리더기형태',
    n.name_kr = '리더기형태',
    n.domain = 'SV',
    n.definition = '휴대폰에 내.외장 형태';

MERGE (n:Concept {id: '한국최초'})
SET     n.name = '한국최초',
    n.name_kr = '한국최초',
    n.domain = 'SV',
    n.definition = '이동통신망이 가장 발달한 한국에서 세계 최초로 시도하는 RFID서비스';

MERGE (n:Concept {id: '주파수대역'})
SET     n.name = '주파수대역',
    n.name_kr = '주파수대역',
    n.domain = 'SV',
    n.definition = '900Mhz UHF 대역 사용';

MERGE (n:Concept {id: '코드체계'})
SET     n.name = '코드체계',
    n.name_kr = '코드체계',
    n.domain = 'SV',
    n.definition = 'ISO표준과 호환되는 mCode, 2차원 바코드를 수용하기 위한 micro-mCode, 모바일 RFID 시범서비스를 위해 개발한 wmi-mCode 등 3가지';

MERGE (n:Concept {id: '일반_rfid'})
SET     n.name = '일반 RFID',
    n.name_kr = '일반 RFID',
    n.domain = 'SV';

MERGE (n:Concept {id: '주파수_문제'})
SET     n.name = '주파수 문제',
    n.name_kr = '주파수 문제',
    n.domain = 'SV',
    n.definition = '900MHz는 이동통신 대역에서 많이 사용하므로 충돌문제';

MERGE (n:Concept {id: '보안_문제'})
SET     n.name = '보안 문제',
    n.name_kr = '보안 문제',
    n.domain = 'SV',
    n.definition = '개인 사생활 침해 등의 인권문제, 개인정보 누출 등 정보보호 문제';

MERGE (n:Concept {id: '표준화_문제'})
SET     n.name = '표준화 문제',
    n.name_kr = '표준화 문제',
    n.domain = 'SV',
    n.definition = 'RFID의 리더, Tag, 미들웨어의 다양한 표준규격에 대한 통합 및 이동통신의 표준도 고려해야 함';

MERGE (n:Concept {id: '장비_및_인프라_문제'})
SET     n.name = '장비 및 인프라 문제',
    n.name_kr = '장비 및 인프라 문제',
    n.domain = 'SV',
    n.definition = 'Tag 가격의 현실화 미흡 및 RFID 미들웨어, 네트워크 등의 인프라가 미흡';

// --- 관계 ---

MERGE (a:Concept {id: 'mobile_rfid'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '안심귀가서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '서비스형태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '리더기형태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '한국최초'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '주파수대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '코드체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일반_rfid'})
MERGE (b:Concept {id: 'mobile_rfid'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '일반_rfid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: 'mobile_rfid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '주파수_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '보안_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '표준화_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Concept {id: '장비_및_인프라_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Document {id: 'SV_285'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'moblie_rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mobile_rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안심귀가서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스형태'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리더기형태'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국최초'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수대역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드체계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반_rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비_및_인프라_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_286: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_286'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_287: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_287'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_288: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_288'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_289: AUTOSAR (Automotive Open System Architecture)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_289'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'automotive_open_system_architecture'})
SET     n.name = 'Automotive Open System Architecture',
    n.name_kr = 'AUTOSAR',
    n.domain = 'SV',
    n.aliases = ['Automotive Open System Architecture', 'AUTOSAR'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: '자동차_전장용_임베디드_sw'})
SET     n.name = '자동차 전장용 임베디드 SW',
    n.name_kr = '자동차 전장용 임베디드 SW',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ecu'})
SET     n.name = 'ECU',
    n.name_kr = 'ECU',
    n.domain = 'SV',
    n.aliases = ['ECU'];

MERGE (n:Standard {id: 'iso26262'})
SET     n.name = 'ISO26262',
    n.name_kr = 'ISO26262',
    n.domain = 'SV',
    n.aliases = ['ISO26262'];

// --- 관계 ---

MERGE (a:Concept {id: 'automotive_open_system_architecture'})
MERGE (b:Concept {id: '자동차_전장용_임베디드_sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_open_system_architecture'})
MERGE (b:Concept {id: 'ecu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_open_system_architecture'})
MERGE (b:Standard {id: 'iso26262'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_open_system_architecture'})
MERGE (b:Document {id: 'SV_289'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'automotive_open_system_architecture'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차_전장용_임베디드_sw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ecu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso26262'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_290: Connected Car
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_290'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'connected_car'})
SET     n.name = 'Connected Car',
    n.name_kr = 'Connected Car',
    n.domain = 'SV',
    n.aliases = ['Connected Car'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: 'connectivity'})
SET     n.name = 'Connectivity',
    n.name_kr = '연결성',
    n.domain = 'SV',
    n.aliases = ['Connectivity', '연결성'];

MERGE (n:Concept {id: '텔레메틱스'})
SET     n.name = '텔레메틱스',
    n.name_kr = '텔레메틱스',
    n.domain = 'SV';

MERGE (n:Concept {id: '엔터테이먼트'})
SET     n.name = '엔터테이먼트',
    n.name_kr = '엔터테이먼트',
    n.domain = 'SV';

MERGE (n:Concept {id: 'genivi'})
SET     n.name = 'GENIVI',
    n.name_kr = 'GENIVI',
    n.domain = 'SV',
    n.aliases = ['GENIVI'];

MERGE (n:Concept {id: 'wawe'})
SET     n.name = 'WAWE',
    n.name_kr = 'WAWE',
    n.domain = 'SV',
    n.aliases = ['WAWE'];

MERGE (n:Concept {id: 'dsrc'})
SET     n.name = 'DSRC',
    n.name_kr = 'DSRC',
    n.domain = 'SV',
    n.aliases = ['DSRC'];

MERGE (n:Concept {id: 'most'})
SET     n.name = 'MOST',
    n.name_kr = 'MOST',
    n.domain = 'SV',
    n.aliases = ['MOST'];

MERGE (n:Concept {id: 'flexlay'})
SET     n.name = 'FLEXLAY',
    n.name_kr = 'FLEXLAY',
    n.domain = 'SV',
    n.aliases = ['FLEXLAY'];

MERGE (n:Concept {id: '유형(임베디드'})
SET     n.name = '유형(임베디드',
    n.name_kr = '유형(임베디드',
    n.domain = 'SV';

MERGE (n:Concept {id: '테더드'})
SET     n.name = '테더드',
    n.name_kr = '테더드',
    n.domain = 'SV';

MERGE (n:Concept {id: '통합)'})
SET     n.name = '통합)',
    n.name_kr = '통합)',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'connectivity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '텔레메틱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '엔터테이먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'genivi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'wawe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'dsrc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'most'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: 'flexlay'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '유형(임베디드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '테더드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Concept {id: '통합)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Document {id: 'SV_290'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'connected_car'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'connectivity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '텔레메틱스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔터테이먼트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'genivi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wawe'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsrc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'most'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flexlay'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형(임베디드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테더드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_291: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_291'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_292: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_292'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_293: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_293'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_294: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_294'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_295: RADAR(Radio Detection And Ranging)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_295'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'radio_detection_and_ranging'})
SET     n.name = 'Radio Detection And Ranging',
    n.name_kr = 'RADAR',
    n.domain = 'SV',
    n.aliases = ['Radio Detection And Ranging', 'RADAR'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: '전자기파_반사결과_인식'})
SET     n.name = '전자기파 반사결과 인식',
    n.name_kr = '전자기파 반사결과 인식',
    n.domain = 'SV';

MERGE (n:Concept {id: '거리'})
SET     n.name = '거리',
    n.name_kr = '거리',
    n.domain = 'SV';

MERGE (n:Concept {id: '방향'})
SET     n.name = '방향',
    n.name_kr = '방향',
    n.domain = 'SV';

MERGE (n:Concept {id: '고도_측정'})
SET     n.name = '고도 측정',
    n.name_kr = '고도 측정',
    n.domain = 'SV';

MERGE (n:Concept {id: '근거리'})
SET     n.name = '근거리(24Ghz)',
    n.name_kr = '근거리(24Ghz)',
    n.domain = 'SV';

MERGE (n:Concept {id: '중장거리'})
SET     n.name = '중장거리(77~79Ghz)',
    n.name_kr = '중장거리(77~79Ghz)',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '전자기파_반사결과_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '방향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '고도_측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '근거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Concept {id: '중장거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Document {id: 'SV_295'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'radio_detection_and_ranging'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기파_반사결과_인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방향'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고도_측정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '근거리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중장거리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_296.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_296.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_296.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_296.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_297.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_297.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_297.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_297.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_298.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_298.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_298.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_298.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_299: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_299'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_300: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_300'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_301: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_301'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_302: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_302'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_303: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_303'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_304: GENIVI Alliance
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_304'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'genivi_alliance'})
SET     n.name = 'GENIVI Alliance',
    n.name_kr = 'GENIVI Alliance',
    n.domain = 'SV',
    n.aliases = ['GENIVI Alliance'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sap'})
SET     n.name = 'SAP',
    n.name_kr = 'SAP',
    n.domain = 'SV',
    n.aliases = ['SAP'];

// --- 관계 ---

MERGE (a:Concept {id: 'genivi_alliance'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'genivi_alliance'})
MERGE (b:Concept {id: 'sap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'genivi_alliance'})
MERGE (b:Document {id: 'SV_304'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'genivi_alliance'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sap'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_305: OAA(Open Automotive Alliance)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_305'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'open_automotive_alliance'})
SET     n.name = 'Open Automotive Alliance',
    n.name_kr = 'OAA',
    n.domain = 'SV',
    n.aliases = ['Open Automotive Alliance', 'OAA'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: '안드로이드'})
SET     n.name = '안드로이드',
    n.name_kr = '안드로이드',
    n.domain = 'SV';

MERGE (n:Concept {id: '커넥티드_카'})
SET     n.name = '커넥티드 카',
    n.name_kr = '커넥티드 카',
    n.domain = 'SV';

MERGE (n:Concept {id: 'google'})
SET     n.name = 'google',
    n.name_kr = 'google',
    n.domain = 'SV',
    n.aliases = ['google'];

MERGE (n:Concept {id: '개방형_자동차_연합'})
SET     n.name = '개방형 자동차 연합',
    n.name_kr = '개방형 자동차 연합',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Concept {id: '안드로이드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Concept {id: '커넥티드_카'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Concept {id: 'google'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Concept {id: '개방형_자동차_연합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Document {id: 'SV_305'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_automotive_alliance'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안드로이드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커넥티드_카'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'google'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형_자동차_연합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_306: 차량 긴급구난체계(e-Call)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_306'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'e_call'})
SET     n.name = 'e-Call',
    n.name_kr = '차량 긴급구난체계',
    n.domain = 'SV',
    n.aliases = ['e-Call', '차량 긴급구난체계'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: 'am형'})
SET     n.name = 'AM형',
    n.name_kr = 'AM형',
    n.domain = 'SV';

MERGE (n:Concept {id: 'eu형'})
SET     n.name = 'EU형',
    n.name_kr = 'EU형',
    n.domain = 'SV';

MERGE (n:Concept {id: 'e-call센터'})
SET     n.name = 'e-Call센터',
    n.name_kr = 'e-Call센터',
    n.domain = 'SV';

MERGE (n:Concept {id: '소방기관'})
SET     n.name = '소방기관',
    n.name_kr = '소방기관',
    n.domain = 'SV';

MERGE (n:Concept {id: '교통기관'})
SET     n.name = '교통기관',
    n.name_kr = '교통기관',
    n.domain = 'SV';

MERGE (n:Concept {id: '경찰기관'})
SET     n.name = '경찰기관',
    n.name_kr = '경찰기관',
    n.domain = 'SV';

MERGE (n:Concept {id: '응급기관'})
SET     n.name = '응급기관',
    n.name_kr = '응급기관',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보수집_기능'})
SET     n.name = '정보수집 기능',
    n.name_kr = '정보수집 기능',
    n.domain = 'SV',
    n.definition = '기본정보수집';

MERGE (n:Concept {id: '사고정보수집'})
SET     n.name = '사고정보수집',
    n.name_kr = '사고정보수집',
    n.domain = 'SV',
    n.definition = '사고 시간, 사고 장소, 자체 훼손 정보 판단, 사고 현장 정보';

MERGE (n:Concept {id: 'proxy_pasp'})
SET     n.name = 'Proxy PASP',
    n.name_kr = 'Proxy PASP',
    n.domain = 'SV',
    n.definition = '부하 최소화 하기위한 사고 신고 필터링 제공',
    n.aliases = ['Proxy PASP'];

MERGE (n:Concept {id: '정보처리_기능'})
SET     n.name = '정보처리 기능',
    n.name_kr = '정보처리 기능',
    n.domain = 'SV',
    n.definition = '정보저장';

MERGE (n:Concept {id: 'msd_인코딩'})
SET     n.name = 'MSD 인코딩',
    n.name_kr = 'MSD 인코딩',
    n.domain = 'SV',
    n.definition = '최소사고 정보 데이터 (Minimum Set Data) Encoding';

MERGE (n:Concept {id: '정보전달'})
SET     n.name = '정보전달',
    n.name_kr = '정보전달',
    n.domain = 'SV',
    n.definition = '정보를 M2M 모뎀 및 내장 모뎀 이용하여 이동통신망을 통해 Minimum Set Data (MSD)를 PASP 로 전송 OBD-II 스캐너 단말과 연결된 스마트 기기가 MSD 전송 기능을 수행';

MERGE (n:Concept {id: '음성통화_기능'})
SET     n.name = '음성통화 기능',
    n.name_kr = '음성통화 기능',
    n.domain = 'SV',
    n.definition = 'IMEI, USIM';

MERGE (n:Concept {id: 'ota'})
SET     n.name = 'OTA',
    n.name_kr = 'OTA',
    n.domain = 'SV',
    n.definition = 'Over The Air. 차량 긴급구난체계 시스템에 대한 무선 업데이터 제공',
    n.aliases = ['OTA'];

MERGE (n:Concept {id: '음성통화'})
SET     n.name = '음성통화',
    n.name_kr = '음성통화',
    n.domain = 'SV',
    n.definition = 'e-Call 단말은 PASP 운영요원과의 음성통화 기능을 지원한다. OBD-II 스캐너 단말과 연결된 스마트 기기가 음성통화 기능을 지원';

MERGE (n:Concept {id: '기타기능'})
SET     n.name = '기타기능',
    n.name_kr = '기타기능',
    n.domain = 'SV',
    n.definition = '사용자 인터페이스';

MERGE (n:Concept {id: '위치서비스'})
SET     n.name = '위치서비스',
    n.name_kr = '위치서비스',
    n.domain = 'SV',
    n.definition = 'GNSS(세계위성항법시스템) 신호를 이용하여 차량의 위치를 계산';

MERGE (n:Concept {id: '역할'})
SET     n.name = '역할',
    n.name_kr = '역할',
    n.domain = 'SV',
    n.definition = 'e-Call 관제센터는 차량 운행 중 교통사고 발생 시 e-Call 단말로부터 이동통신망을 통해 전송되어온 사고 정보(MSD)를 분석하고, 음성 통화를 통해 사고의 심각도 정도를 판단하여 구조 기관(경찰, 119 안전신고센터 등)에 사고 내용을 통지함으로서 인명구조 등 사고를 처리하는 역할을 수행';

MERGE (n:Concept {id: '수집/_처리_part'})
SET     n.name = '수집/ 처리 Part',
    n.name_kr = '수집/ 처리 Part',
    n.domain = 'SV',
    n.definition = '사고정보수집';

MERGE (n:Concept {id: '상해_심각도_판단'})
SET     n.name = '상해 심각도 판단',
    n.name_kr = '상해 심각도 판단',
    n.domain = 'SV',
    n.definition = '수집된 사고 정보를 기반으로 상해 심각도를 판단 수보요원과 탑승자간의 질의 통한 심각도 판단';

MERGE (n:Concept {id: '사고유형분석'})
SET     n.name = '사고유형분석',
    n.name_kr = '사고유형분석',
    n.domain = 'SV',
    n.definition = '사고의 유형을 분류 및 분석하여 적절한 조치 수행 사고특성, 사고피해, 사고영향에 따른 사고 유형 분석';

MERGE (n:Concept {id: '데이터암호화'})
SET     n.name = '데이터암호화',
    n.name_kr = '데이터암호화',
    n.domain = 'SV',
    n.definition = 'CoAP-Payload 방식과 CBOR 디코딩 방식 통해 수신된 데이터의 암호화 Encryption Key, One/Two Way Encryption / Decryption';

MERGE (n:Metric {id: 'db_연동'})
SET     n.name = 'DB 연동',
    n.name_kr = 'DB 연동',
    n.domain = 'SV',
    n.definition = '수집된 데이터의 DataBase 저장 처리 SQL Query, Data Collector, Statistics Process';

MERGE (n:Concept {id: '콜백_part'})
SET     n.name = '콜백 Part',
    n.name_kr = '콜백 Part',
    n.domain = 'SV',
    n.definition = '콜 연계';

MERGE (n:Concept {id: '전화_모듈'})
SET     n.name = '전화(호) 모듈',
    n.name_kr = '전화(호) 모듈',
    n.domain = 'SV',
    n.definition = '전화(호) 연결모듈(PBX), 전화(호) 제어모듈(CTI), 전화(호) 시나리오모듈(MR)';

MERGE (n:Concept {id: '녹취_모듈'})
SET     n.name = '녹취 모듈',
    n.name_kr = '녹취 모듈',
    n.domain = 'SV',
    n.definition = '대화 내역 저장, 전화(호) 제어모듈과의 연계';

MERGE (n:Concept {id: '운영_part'})
SET     n.name = '운영 Part',
    n.name_kr = '운영 Part',
    n.domain = 'SV',
    n.definition = '운영';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'SV',
    n.definition = '모니터링을 통해 알람 기능 제공하여 운영 효율 증진';

MERGE (n:Concept {id: '이력조회'})
SET     n.name = '이력조회',
    n.name_kr = '이력조회',
    n.domain = 'SV',
    n.definition = '기존 사고 내역에 대한 조회와 유사 사고 조회 및 대응 방안의 조회';

MERGE (n:Concept {id: '통계분석'})
SET     n.name = '통계분석',
    n.name_kr = '통계분석',
    n.domain = 'SV',
    n.definition = '통계 분석을 통한 예측 및 관리 수행';

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'SV',
    n.definition = '차량 긴급구난체계 관제센터에 대한 전반적 관리 제공';

MERGE (n:Concept {id: '연계_part'})
SET     n.name = '연계 Part',
    n.name_kr = '연계 Part',
    n.domain = 'SV',
    n.definition = '연계 모듈';

MERGE (n:Concept {id: '긴급구조_기관'})
SET     n.name = '긴급구조 기관',
    n.name_kr = '긴급구조 기관',
    n.domain = 'SV',
    n.definition = '소방방재청';

MERGE (n:Concept {id: '소방본부'})
SET     n.name = '소방본부',
    n.name_kr = '소방본부',
    n.domain = 'SV',
    n.definition = '119 구급센터 운영, 소방/재난 처리 및 응급 처치, 환자 이송 구급/구호';

MERGE (n:Concept {id: '소방서'})
SET     n.name = '소방서',
    n.name_kr = '소방서',
    n.domain = 'SV',
    n.definition = '지역 119 구급상황관리센터 지령 받아 긴급상황 대응';

MERGE (n:Concept {id: '긴급구조_지원기관'})
SET     n.name = '긴급구조 지원기관',
    n.name_kr = '긴급구조 지원기관',
    n.domain = 'SV',
    n.definition = '경찰관서';

MERGE (n:Concept {id: '응급의료기관'})
SET     n.name = '응급의료기관',
    n.name_kr = '응급의료기관',
    n.domain = 'SV',
    n.definition = '전문 응급의료 및 권역/지역의 응급의료 제공, 병원 간 이동 담당';

MERGE (n:Concept {id: '의료지원기관'})
SET     n.name = '의료지원기관',
    n.name_kr = '의료지원기관',
    n.domain = 'SV',
    n.definition = '환자 안내, 상담/지도, 응급처리 지도, 이송병원 안내';

MERGE (n:Concept {id: '기_타'})
SET     n.name = '기 타',
    n.name_kr = '기 타',
    n.domain = 'SV',
    n.definition = '교통관리센터';

MERGE (n:Concept {id: '사고조사기관'})
SET     n.name = '사고조사기관',
    n.name_kr = '사고조사기관',
    n.domain = 'SV',
    n.definition = '현장 증거 확보, 사고원인 피해 파악, 합의 및 보상';

MERGE (n:Concept {id: '견인업체'})
SET     n.name = '견인업체',
    n.name_kr = '견인업체',
    n.domain = 'SV',
    n.definition = '주행 불가 차량 견인';

// --- 관계 ---

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'am형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'eu형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'e-call센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '소방기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '교통기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '경찰기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '응급기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '정보수집_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '사고정보수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'proxy_pasp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '정보처리_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'msd_인코딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '정보전달'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '음성통화_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: 'ota'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '음성통화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '기타기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '위치서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '역할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '수집/_처리_part'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '상해_심각도_판단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '사고유형분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '데이터암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Metric {id: 'db_연동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '콜백_part'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '전화_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '녹취_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '운영_part'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '이력조회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '통계분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '연계_part'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '긴급구조_기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '소방본부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '소방서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '긴급구조_지원기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '응급의료기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '의료지원기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '기_타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '사고조사기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Concept {id: '견인업체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Document {id: 'SV_306'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'e_call'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'am형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eu형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e-call센터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소방기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교통기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경찰기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응급기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보수집_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고정보수집'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy_pasp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보처리_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'msd_인코딩'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보전달'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성통화_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ota'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성통화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역할'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집/_처리_part'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상해_심각도_판단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고유형분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터암호화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'db_연동'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콜백_part'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전화_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '녹취_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_part'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이력조회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연계_part'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긴급구조_기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소방본부'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소방서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긴급구조_지원기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응급의료기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료지원기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기_타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고조사기관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '견인업체'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_307: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_307'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_308: 자율주행 인공지능 기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_308'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '자율주행_인공지능_기술'})
SET     n.name = '자율주행 인공지능 기술',
    n.name_kr = '자율주행 인공지능 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: 'gpgpu'})
SET     n.name = 'GPGPU',
    n.name_kr = 'GPGPU',
    n.domain = 'SV',
    n.aliases = ['GPGPU'];

MERGE (n:Concept {id: 'tpu'})
SET     n.name = 'TPU',
    n.name_kr = 'TPU',
    n.domain = 'SV',
    n.aliases = ['TPU'];

MERGE (n:Technology {id: '딥러닝(cnn'})
SET     n.name = '딥러닝(CNN',
    n.name_kr = '딥러닝(CNN',
    n.domain = 'SV';

MERGE (n:Technology {id: 'rnn'})
SET     n.name = 'RNN',
    n.name_kr = 'RNN',
    n.domain = 'SV',
    n.aliases = ['RNN'];

MERGE (n:Concept {id: 'hmm)'})
SET     n.name = 'HMM)',
    n.name_kr = 'HMM)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'hmi'})
SET     n.name = 'HMI',
    n.name_kr = 'HMI',
    n.domain = 'SV',
    n.aliases = ['HMI'];

MERGE (n:Concept {id: 'hw적_요소'})
SET     n.name = 'HW적 요소',
    n.name_kr = 'HW적 요소',
    n.domain = 'SV',
    n.definition = 'CPU';

MERGE (n:Concept {id: '멀티코어_확장'})
SET     n.name = '멀티코어 확장',
    n.name_kr = '멀티코어 확장',
    n.domain = 'SV',
    n.definition = '단일코어의 성능한계 극복 위해 CPU의 기본단위인 코어수를 여러 개로 확장';

MERGE (n:Concept {id: 'dsp통합'})
SET     n.name = 'DSP통합',
    n.name_kr = 'DSP통합',
    n.domain = 'SV',
    n.definition = '신호처리과정에서 하드웨어 가속이 필요한 부분에 대해 DSP 통합';

MERGE (n:Concept {id: 'apu'})
SET     n.name = 'APU',
    n.name_kr = 'APU',
    n.domain = 'SV',
    n.definition = 'CPU내부에 GPU 탑재하고 두 프로세서 사이에 버스 공유, 신호 교환 경로 단축하여 성능과 배터리 수명 향상',
    n.aliases = ['APU'];

MERGE (n:Concept {id: '매니코어_구현'})
SET     n.name = '매니코어 구현',
    n.name_kr = '매니코어 구현',
    n.domain = 'SV',
    n.definition = '수백~수천개의 코어를 하나의 칩에 집적한 집적코어 아키텍처 - SIMD 병렬처리로 그래픽 작업 외에 수치연산에도 적합';

MERGE (n:Concept {id: 'sw적_요소'})
SET     n.name = 'SW적 요소',
    n.name_kr = 'SW적 요소',
    n.domain = 'SV',
    n.definition = '기계학습';

MERGE (n:Concept {id: '비지도학습'})
SET     n.name = '비지도학습',
    n.name_kr = '비지도학습',
    n.domain = 'SV',
    n.definition = '입력데이터의 패턴, 특성을 학습하여 예측하는 학습방법 (Clustering)';

MERGE (n:Concept {id: '강화학습'})
SET     n.name = '강화학습',
    n.name_kr = '강화학습',
    n.domain = 'SV',
    n.definition = '학습 알고리즘이 수행한 결과에 따라서 보상 통해 수행방식 조절해 나가는 학습방법';

MERGE (n:Concept {id: '시각_기반_딥러닝'})
SET     n.name = '시각 기반 딥러닝',
    n.name_kr = '시각 기반 딥러닝',
    n.domain = 'SV',
    n.definition = '신경망학습';

MERGE (n:Technology {id: 'cnn'})
SET     n.name = 'CNN',
    n.name_kr = 'CNN',
    n.domain = 'SV',
    n.definition = '영상처리에 합성곱과 Subsampling을 반복, 영상 줄이고 특징 추출하는 심층신경망 (R-CNN과 이를 개선한 Fast R-CNN 사용)',
    n.aliases = ['CNN'];

MERGE (n:Technology {id: 'hmi기반'})
SET     n.name = 'HMI기반',
    n.name_kr = 'HMI기반',
    n.domain = 'SV',
    n.definition = 'RNN';

// --- 관계 ---

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'gpgpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'tpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Technology {id: '딥러닝(cnn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Technology {id: 'rnn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'hmm)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'hmi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'hw적_요소'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '멀티코어_확장'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'dsp통합'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'apu'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '매니코어_구현'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: 'sw적_요소'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '비지도학습'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '강화학습'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Concept {id: '시각_기반_딥러닝'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Technology {id: 'cnn'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Technology {id: 'hmi기반'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Document {id: 'SV_308'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자율주행_인공지능_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpgpu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tpu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '딥러닝(cnn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hmm)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hmi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw적_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티코어_확장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsp통합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'apu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매니코어_구현'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw적_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비지도학습'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강화학습'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시각_기반_딥러닝'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'cnn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'hmi기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_309.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_309.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_309.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_309.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_310.1: MaaS (Mobility as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_310.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mobility_as_a_service'})
SET     n.name = 'Mobility as a Service',
    n.name_kr = 'MaaS',
    n.domain = 'SV',
    n.aliases = ['Mobility as a Service', 'MaaS'];

MERGE (n:Concept {id: '출제_예상_토픽'})
SET     n.name = '출제 예상 토픽',
    n.name_kr = '출제 예상 토픽',
    n.domain = 'SV';

MERGE (n:Concept {id: 'maas'})
SET     n.name = 'MaaS',
    n.name_kr = 'MaaS',
    n.domain = 'SV',
    n.aliases = ['MaaS'];

MERGE (n:Concept {id: '차량공유서비스'})
SET     n.name = '차량공유서비스',
    n.name_kr = '차량공유서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율주행자동차'})
SET     n.name = '자율주행자동차',
    n.name_kr = '자율주행자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'SV';

MERGE (n:Concept {id: '위치인식'})
SET     n.name = '위치인식',
    n.name_kr = '위치인식',
    n.domain = 'SV';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '공유'})
SET     n.name = '공유',
    n.name_kr = '공유',
    n.domain = 'SV';

MERGE (n:Concept {id: '연계'})
SET     n.name = '연계',
    n.name_kr = '연계',
    n.domain = 'SV';

MERGE (n:Concept {id: 'taas'})
SET     n.name = 'TaaS',
    n.name_kr = 'TaaS',
    n.domain = 'SV',
    n.aliases = ['TaaS'];

MERGE (n:Concept {id: 'laas'})
SET     n.name = 'LaaS',
    n.name_kr = 'LaaS',
    n.domain = 'SV',
    n.aliases = ['LaaS'];

MERGE (n:Concept {id: '이동_수단'})
SET     n.name = '이동 수단',
    n.name_kr = '이동 수단',
    n.domain = 'SV',
    n.definition = '전기 자동차';

MERGE (n:Concept {id: '개인_이동_수단'})
SET     n.name = '개인 이동 수단',
    n.name_kr = '개인 이동 수단',
    n.domain = 'SV',
    n.definition = '전동휠, 전동킥보드, 전기자전거 등 전기기반 1인용 이동 수단';

MERGE (n:Concept {id: '자율_주행'})
SET     n.name = '자율 주행',
    n.name_kr = '자율 주행',
    n.domain = 'SV',
    n.definition = '운전자 개입 없이 AI를 통한 이동 수단 주행 가능 기술';

MERGE (n:Concept {id: 'connected_vehicle'})
SET     n.name = 'Connected Vehicle',
    n.name_kr = 'Connected Vehicle',
    n.domain = 'SV',
    n.definition = '무선랜이 장착되어 인터넷 접속이 가능한 이동 수단',
    n.aliases = ['Connected Vehicle'];

MERGE (n:Concept {id: '서비스_제공'})
SET     n.name = '서비스 제공',
    n.name_kr = '서비스 제공',
    n.domain = 'SV',
    n.definition = 'MaaS 플랫폼';

MERGE (n:Concept {id: 'smart_결제_시스템'})
SET     n.name = 'Smart 결제 시스템',
    n.name_kr = 'Smart 결제 시스템',
    n.domain = 'SV',
    n.definition = '공유 자원 사용 후 편리성을 확보한 네트워크 기반 결제 기술';

MERGE (n:Concept {id: 'multimodal_interface'})
SET     n.name = 'Multimodal Interface',
    n.name_kr = 'Multimodal Interface',
    n.domain = 'SV',
    n.definition = '음성, 모션 인식, 터치 스크린 등을 통한 다양한 통신 채널 확보',
    n.aliases = ['Multimodal Interface'];

MERGE (n:Concept {id: 'cooperative_its'})
SET     n.name = 'Cooperative ITS',
    n.name_kr = 'C-ITS',
    n.domain = 'SV',
    n.definition = '교통 상황, 위험 정보 등의 실시간 제공 통한 이동 시간 단축',
    n.aliases = ['Cooperative ITS', 'C-ITS'];

MERGE (n:Concept {id: 'b2c'})
SET     n.name = 'B2C',
    n.name_kr = 'B2C',
    n.domain = 'SV',
    n.definition = '집카(ZipCar), 쏘카(SOCAR), 그린카(GreenCar)',
    n.aliases = ['B2C'];

MERGE (n:Concept {id: 'p2p'})
SET     n.name = 'P2P',
    n.name_kr = 'P2P',
    n.domain = 'SV',
    n.definition = '투로(Turo), 겟어라운드(Get around) 저스트 쉐어 잇(Just Share It) 카모니(Carmony)',
    n.aliases = ['P2P'];

MERGE (n:Concept {id: 'poolus'})
SET     n.name = 'LUXI',
    n.name_kr = '풀러스(Poolus), 럭시',
    n.domain = 'SV',
    n.definition = '출퇴근 방향이 비슷한 드라이버와 탑승자를 이어주는 승차공유중계(카풀)',
    n.aliases = ['LUXI', '풀러스(Poolus), 럭시'];

MERGE (n:Concept {id: 'buddytruck'})
SET     n.name = 'Buddytruck',
    n.name_kr = '버디트럭',
    n.domain = 'SV',
    n.definition = '트럭, 미니밴 등 큰 차량 소유자와 짐운반이 필요한 사람 간 중계',
    n.aliases = ['Buddytruck', '버디트럭'];

MERGE (n:Concept {id: 'uber'})
SET     n.name = 'Lyft',
    n.name_kr = '우버(Uber), 리프트',
    n.domain = 'SV',
    n.definition = '승객 이동으로 부가 수입을 원하는 사람, 택시 이용자 간 중계',
    n.aliases = ['Lyft', '우버(Uber), 리프트'];

// --- 관계 ---

MERGE (a:Concept {id: 'maas'})
MERGE (b:Concept {id: '출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '차량공유서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '자율주행자동차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '위치인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '연계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'taas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'laas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '이동_수단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '개인_이동_수단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '자율_주행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'connected_vehicle'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: '서비스_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'smart_결제_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'multimodal_interface'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'cooperative_its'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'b2c'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'p2p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'poolus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'buddytruck'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Concept {id: 'uber'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Document {id: 'SV_310.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mobility_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제_예상_토픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차량공유서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율주행자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'taas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'laas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동_수단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_이동_수단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율_주행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'connected_vehicle'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_제공'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_결제_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multimodal_interface'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cooperative_its'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2c'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p2p'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'poolus'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'buddytruck'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uber'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_310.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_310.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_310.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_310.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_311: 드론(Drone; 무인기), 안티드론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_311'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '드론,_안티드론'})
SET     n.name = '드론(Drone; 무인기), 안티드론',
    n.name_kr = '드론(Drone; 무인기), 안티드론',
    n.domain = 'SV';

MERGE (n:Concept {id: 'it물류/드론'})
SET     n.name = 'IT물류/드론',
    n.name_kr = 'IT물류/드론',
    n.domain = 'SV';

MERGE (n:Concept {id: 'drone'})
SET     n.name = '드론',
    n.name_kr = '드론',
    n.domain = 'SV';

MERGE (n:Concept {id: 'uav'})
SET     n.name = 'UAV',
    n.name_kr = '무인항공기',
    n.domain = 'SV',
    n.aliases = ['UAV', '무인항공기'];

MERGE (n:Concept {id: '도청공격'})
SET     n.name = '도청공격',
    n.name_kr = '도청공격',
    n.domain = 'SV';

MERGE (n:Concept {id: '비행'})
SET     n.name = '비행',
    n.name_kr = '비행',
    n.domain = 'SV',
    n.definition = '자율 운항';

MERGE (n:Concept {id: '기반'})
SET     n.name = '기반',
    n.name_kr = '기반',
    n.domain = 'SV',
    n.definition = '통신';

MERGE (n:Concept {id: '규제'})
SET     n.name = '규제',
    n.name_kr = '규제',
    n.domain = 'SV',
    n.definition = '비행 금지 구역';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = '사생활 침해';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'SV',
    n.definition = '주파수 제한';

MERGE (n:Concept {id: '산업'})
SET     n.name = '산업',
    n.name_kr = '산업',
    n.domain = 'SV',
    n.definition = '기업 역량 부족';

MERGE (n:Concept {id: '탐지기술'})
SET     n.name = '탐지기술',
    n.name_kr = '탐지기술',
    n.domain = 'SV',
    n.definition = '음향 탐지센서';

MERGE (n:Technology {id: '방향_탐지_센서'})
SET     n.name = '방향 탐지 센서',
    n.name_kr = '방향 탐지 센서',
    n.domain = 'SV',
    n.definition = '드론의 조종 신호는 IMS 대역인 2.4GHz/5.8GHz 대역 주로 사용하여 해당 신호의 방향과 위치를 방향 탐지 센서 이용 위치 추정 - WiFi 많이 설치되어 있는 도심은 조종신호와 구분하기 어려운 것이 단점 - 고지대에서 운용시 다른 센서와 달리 조종자 위치까지 추정 가능한 장점';

MERGE (n:Concept {id: '영상_센서'})
SET     n.name = '영상 센서',
    n.name_kr = '영상 센서',
    n.domain = 'SV',
    n.definition = '가시광선 영역과 적외선 열화상 영역의 영상정보를 활용하여 움직이는 무인비행체를 탐지하는 기술 - 위협체의 형상 확인 가능하므로 무인비행체인지 식별 수단으로 활용 - 제작 비용이 고가';

MERGE (n:Concept {id: '레이다_센서'})
SET     n.name = '레이다 센서',
    n.name_kr = '레이다 센서',
    n.domain = 'SV',
    n.definition = '특정 대역의 RF 신호를 송출하고 표적으로부터 반사되어 돌아오는 신호를 수신하여 표적을 탐지하는 기술 - 탐지길이가 다른 센서에 비하여 길다는 장점이 있음 - 비용이 고가이며 간섭 이슈 해결이 필요함';

MERGE (n:Concept {id: '무력화_기술'})
SET     n.name = '무력화 기술',
    n.name_kr = '무력화 기술',
    n.domain = 'SV',
    n.definition = '전파 교란 기술';

MERGE (n:Concept {id: '파괴_기술'})
SET     n.name = '파괴 기술',
    n.name_kr = '파괴 기술',
    n.domain = 'SV',
    n.definition = '무인 비행체에 직접 물리력을 가해 파괴하는 기술 - 산탄총 또는 레이저 빔 이용하여 드론 격추 수행 - 추락하는 드론과 파편들로 2 차 사고 발생 우려와 먼거리 빠른 속도 이동시 격추 어려운 단점';

MERGE (n:Concept {id: '포획_기술'})
SET     n.name = '포획 기술',
    n.name_kr = '포획 기술',
    n.domain = 'SV',
    n.definition = '드론을 독수리 이용 포획 방법 또는 그물망을 이용하여 포획하는 기술 - 드론 장착 그물망은 고속 이동 포획 어려우며 지상 그물망 발사 방식은 근접한 거리에서 사용 가능';

MERGE (n:Concept {id: '탐지'})
SET     n.name = '탐지',
    n.name_kr = '탐지',
    n.domain = 'SV',
    n.definition = '레이더';

MERGE (n:Concept {id: '무력화'})
SET     n.name = '무력화',
    n.name_kr = '무력화',
    n.domain = 'SV',
    n.definition = 'Jamming';

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'SV',
    n.definition = '실시간 안정성 보장 비행 제어 OS, 인공지능 기반 임무수행 OS 동시 수행';

MERGE (n:Concept {id: '안정성'})
SET     n.name = '안정성',
    n.name_kr = '안정성',
    n.domain = 'SV',
    n.definition = '임무 수행 OS에서 발생하는 오류, 비행제어 OS에 전이되지 않음';

MERGE (n:Concept {id: '경량화'})
SET     n.name = '경량화',
    n.name_kr = '경량화',
    n.domain = 'SV',
    n.definition = '단일 하드웨어 가상화 구성으로 인한 Size, Weight, Power 최소화';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스',
    n.name_kr = '서비스',
    n.domain = 'SV',
    n.definition = '비행 제어용 서비스 - 임무 수행용 서비스';

MERGE (n:Concept {id: 'os'})
SET     n.name = 'OS',
    n.name_kr = 'OS',
    n.domain = 'SV',
    n.definition = '드론 플랫폼 전용 운영체제 - 범용 운영체제',
    n.aliases = ['OS'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV',
    n.definition = 'Embedded Hypervisor';

MERGE (n:Concept {id: 'hw'})
SET     n.name = 'HW',
    n.name_kr = 'HW',
    n.domain = 'SV',
    n.definition = '멀티코어 CPU HW Platform',
    n.aliases = ['HW'];

// --- 관계 ---

MERGE (a:Concept {id: 'drone'})
MERGE (b:Concept {id: 'it물류/드론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: 'uav'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '도청공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '비행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '규제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '산업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '탐지기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Technology {id: '방향_탐지_센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '영상_센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '레이다_센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '무력화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '파괴_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '포획_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '무력화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '경량화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: 'os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Concept {id: 'hw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Document {id: 'SV_311'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '드론,_안티드론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it물류/드론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drone'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uav'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도청공격'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐지기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '방향_탐지_센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상_센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '레이다_센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무력화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파괴_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포획_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무력화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_312: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_312'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_313: CNPC (Control and Non-payload Communication)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_313'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'control_and_non_payload_communication'})
SET     n.name = 'Control and Non-payload Communication',
    n.name_kr = 'CNPC',
    n.domain = 'SV',
    n.aliases = ['Control and Non-payload Communication', 'CNPC'];

MERGE (n:Concept {id: 'it_물류/드론'})
SET     n.name = 'IT 물류/드론',
    n.name_kr = 'IT 물류/드론',
    n.domain = 'SV';

MERGE (n:Concept {id: 'p2p'})
SET     n.name = 'P2P',
    n.name_kr = 'P2P',
    n.domain = 'SV',
    n.aliases = ['P2P'];

MERGE (n:Concept {id: '네트워크형'})
SET     n.name = '네트워크형',
    n.name_kr = '네트워크형',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'control_and_non_payload_communication'})
MERGE (b:Concept {id: 'p2p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'control_and_non_payload_communication'})
MERGE (b:Concept {id: '네트워크형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'control_and_non_payload_communication'})
MERGE (b:Document {id: 'SV_313'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'control_and_non_payload_communication'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_물류/드론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p2p'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_314.1: ISO 28000
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_314.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_28000'})
SET     n.name = 'ISO 28000',
    n.name_kr = 'ISO 28000',
    n.domain = 'SV',
    n.aliases = ['ISO 28000'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'SV';

MERGE (n:Concept {id: '범위관리'})
SET     n.name = '범위관리',
    n.name_kr = '범위관리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'wbs'})
SET     n.name = 'WBS',
    n.name_kr = 'WBS',
    n.domain = 'SV',
    n.aliases = ['WBS'];

MERGE (n:Concept {id: '1._범위'})
SET     n.name = '1. 범위',
    n.name_kr = '1. 범위',
    n.domain = 'SV',
    n.definition = '공급사슬 보안인증에 필요한 보안경영시스템의 내용과 그 적용범위';

MERGE (n:Concept {id: '2._인증규격'})
SET     n.name = '2. 인증규격',
    n.name_kr = '2. 인증규격',
    n.domain = 'SV',
    n.definition = '없음';

MERGE (n:Concept {id: '3._용어정의'})
SET     n.name = '3. 용어정의',
    n.name_kr = '3. 용어정의',
    n.domain = 'SV',
    n.definition = '보안경영시스템의 주요 용어 정의(시설, 보안, 보안경영, 보안경영목표, 보안경영방침, 보안경영프로그램, 보안경영세부목표, 이해관계자, 공급사슬, 다운스트림, 업스트림, 최고경영자, 지속적개선)';

MERGE (n:Concept {id: '4._보안경영_시스템_요구사항'})
SET     n.name = '4. 보안경영 시스템 요구사항',
    n.name_kr = '4. 보안경영 시스템 요구사항',
    n.domain = 'SV',
    n.definition = '4.1 일반요구사항';

MERGE (n:Concept {id: '4.2_보안경영방침'})
SET     n.name = '4.2 보안경영방침',
    n.name_kr = '4.2 보안경영방침',
    n.domain = 'SV',
    n.definition = '최고경영자는 조직 전반의 보안경영방침을 승인하고 문서화하여 유지';

MERGE (n:Concept {id: '4.3_보안리스크_평가_및_기획'})
SET     n.name = '4.3 보안리스크 평가 및 기획',
    n.name_kr = '4.3 보안리스크 평가 및 기획',
    n.domain = 'SV',
    n.definition = '4.3.1 보안리스크 평가 4.3.2 법률, 강제 요구사항 및 그 밖의 보안 규정 요구사항 4.3.3 보안경영목표 4.3.4 보안세부목표 4.3.5 보안프로그램';

MERGE (n:Concept {id: '4.4_실행_및_운영'})
SET     n.name = '4.4 실행 및 운영',
    n.name_kr = '4.4 실행 및 운영',
    n.domain = 'SV',
    n.definition = '4.4.1 보안경영구조, 권한 및 책임 4.4.2 적격성, 교육훈련 및 인식 4.4.3 의사소통 4.4.4 문서화 4.4.5 문서 및 데이터 관리 4.4.6 운영관리 4.4.7 비상시 대비, 대응 및 보안복구';

MERGE (n:Concept {id: '4.5_점검_및_시정조치'})
SET     n.name = '4.5 점검 및 시정조치',
    n.name_kr = '4.5 점검 및 시정조치',
    n.domain = 'SV',
    n.definition = '4.5.1 보안성과측정 및 모니터링 4.5.2 시스템 평가 4.5.3 보안관련 실패, 사건, 부적한 사항, 그리고 시정조치 및 예방조치 4.5.4 기록관리 4.5.5 심사';

MERGE (n:Concept {id: '4.6_경영검토_및_지속적_개선'})
SET     n.name = '4.6 경영검토 및 지속적 개선',
    n.name_kr = '4.6 경영검토 및 지속적 개선',
    n.domain = 'SV',
    n.definition = '최고경영자는 보안경영시스템의 적절성, 충족성, 효과성을 보장하기 위해 주기적으로 검토하고 문서로 보유';

MERGE (n:Concept {id: '물리적_보안'})
SET     n.name = '물리적 보안',
    n.name_kr = '물리적 보안',
    n.domain = 'SV',
    n.definition = '모든 건물과 재산이 불법진입․침입으로부터 보호될 것';

MERGE (n:Concept {id: '출입_통제'})
SET     n.name = '출입 통제',
    n.name_kr = '출입 통제',
    n.domain = 'SV',
    n.definition = '시설 및 운송수단에 대한 불법 접근 금지';

MERGE (n:Concept {id: '절차_보안'})
SET     n.name = '절차 보안',
    n.name_kr = '절차 보안',
    n.domain = 'SV',
    n.definition = '기록되지 않은 물질이 운송수단 또는 화물에 도입 되는 것을 막고, 불법적인 접근을 막기에 적합할 것';

MERGE (n:Concept {id: '인적_보안'})
SET     n.name = '인적 보안',
    n.name_kr = '인적 보안',
    n.domain = 'SV',
    n.definition = '－회사는 고용평등 및 개인정보보호에 관한 법률을 충분히 고려해서 장래 고 용인에 대한 점검, 신청서 검증을 위한 내부 절차를 마련해야 함 －내부 절차는 고용인의 이력 확인 및 특정 고용인의 관련 기능의 신뢰성에 대한 조사를 포함';

MERGE (n:Concept {id: '문서화_절차'})
SET     n.name = '문서화 절차',
    n.name_kr = '문서화 절차',
    n.domain = 'SV',
    n.definition = '회사는 서류의 완결성, 판독성, 정확성 및 제출 시간을 확인';

MERGE (n:Concept {id: '정보보안'})
SET     n.name = '정보보안',
    n.name_kr = '정보보안',
    n.domain = 'SV',
    n.definition = '물류 부문에서 정보전달 절차를 확실하게 유지';

MERGE (n:Concept {id: '안전한_화물_흐름'})
SET     n.name = '안전한 화물 흐름',
    n.name_kr = '안전한 화물 흐름',
    n.domain = 'SV',
    n.definition = '회사는 승인된 운영자가 아닌 운영자가 제공한 화물을 확실하게 검사하여 승인된 운영자의 화물 수준으로 향상시켜야 함';

// --- 관계 ---

MERGE (a:Concept {id: '범위관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Concept {id: '범위관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '1._범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '2._인증규격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '3._용어정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4._보안경영_시스템_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4.2_보안경영방침'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4.3_보안리스크_평가_및_기획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4.4_실행_및_운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4.5_점검_및_시정조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '4.6_경영검토_및_지속적_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '물리적_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '출입_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '절차_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '인적_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '문서화_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '정보보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Concept {id: '안전한_화물_흐름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Document {id: 'SV_314.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범위관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1._범위'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._인증규격'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._용어정의'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._보안경영_시스템_요구사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.2_보안경영방침'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.3_보안리스크_평가_및_기획'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.4_실행_및_운영'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.5_점검_및_시정조치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.6_경영검토_및_지속적_개선'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출입_통제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절차_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인적_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서화_절차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전한_화물_흐름'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_314.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_314.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_315: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_315'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_316: 머클트리 (Merkle Tree)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_316'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'merkle_tree'})
SET     n.name = 'Merkle Tree',
    n.name_kr = '머클트리',
    n.domain = 'SV',
    n.aliases = ['Merkle Tree', '머클트리'];

MERGE (n:Concept {id: '금융+기술/블록체인'})
SET     n.name = '금융+기술/블록체인',
    n.name_kr = '금융+기술/블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '머클루트'})
SET     n.name = '머클루트',
    n.name_kr = '머클루트',
    n.domain = 'SV';

MERGE (n:Concept {id: '머클경로'})
SET     n.name = '머클경로',
    n.name_kr = '머클경로',
    n.domain = 'SV';

MERGE (n:Technology {id: 'sha_256'})
SET     n.name = 'SHA-256',
    n.name_kr = 'SHA-256',
    n.domain = 'SV',
    n.aliases = ['SHA-256'];

// --- 관계 ---

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Concept {id: '금융+기술/블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Concept {id: '머클루트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Concept {id: '머클경로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Technology {id: 'sha_256'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Document {id: 'SV_316'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'merkle_tree'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융+기술/블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머클루트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머클경로'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sha_256'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_317: 분산원장기술(DLT)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_317'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'dlt'})
SET     n.name = 'DLT',
    n.name_kr = '분산원장기술',
    n.domain = 'SV',
    n.aliases = ['DLT', '분산원장기술'];

MERGE (n:Concept {id: 'blockchain'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산원장'})
SET     n.name = '분산원장',
    n.name_kr = '분산원장',
    n.domain = 'SV';

MERGE (n:Concept {id: 'pki'})
SET     n.name = 'PKI',
    n.name_kr = 'PKI',
    n.domain = 'SV',
    n.aliases = ['PKI'];

MERGE (n:Concept {id: '암호화_해시'})
SET     n.name = '암호화 해시',
    n.name_kr = '암호화 해시',
    n.domain = 'SV';

MERGE (n:Concept {id: 'p2p_네트워크'})
SET     n.name = 'P2P 네트워크',
    n.name_kr = 'P2P 네트워크',
    n.domain = 'SV';

MERGE (n:Concept {id: '합의알고리즘'})
SET     n.name = '합의알고리즘',
    n.name_kr = '합의알고리즘',
    n.domain = 'SV';

MERGE (n:Concept {id: '스마트_컨트랙트'})
SET     n.name = '스마트 컨트랙트',
    n.name_kr = '스마트 컨트랙트',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: 'blockchain'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: '분산원장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: 'pki'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: '암호화_해시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: 'p2p_네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: '합의알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Concept {id: '스마트_컨트랙트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Document {id: 'SV_317'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dlt'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blockchain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산원장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pki'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화_해시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p2p_네트워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합의알고리즘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_컨트랙트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_318: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_318'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_319: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_319'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_320: 라이트닝 네트워크(Lightning Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_320'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'lightning_network'})
SET     n.name = 'Lightning Network',
    n.name_kr = '라이트닝 네트워크',
    n.domain = 'SV',
    n.aliases = ['Lightning Network', '라이트닝 네트워크'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '온체인'})
SET     n.name = '온체인',
    n.name_kr = '온체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '오프체인'})
SET     n.name = '오프체인',
    n.name_kr = '오프체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '낮은_수수료'})
SET     n.name = '낮은 수수료',
    n.name_kr = '낮은 수수료',
    n.domain = 'SV';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'SV';

MERGE (n:Concept {id: '체인'})
SET     n.name = '체인',
    n.name_kr = '체인',
    n.domain = 'SV',
    n.definition = '온체인';

MERGE (n:Concept {id: '지불채널'})
SET     n.name = '지불채널',
    n.name_kr = '지불채널',
    n.domain = 'SV',
    n.definition = '사용자 간의 거래가 일시적으로 기록되는 채널';

MERGE (n:Concept {id: '트랜잭션'})
SET     n.name = '트랜잭션',
    n.name_kr = '트랜잭션',
    n.domain = 'SV',
    n.definition = 'Funding Transaction';

MERGE (n:Concept {id: 'commitment_transaction'})
SET     n.name = 'Commitment Transaction',
    n.name_kr = 'Commitment Transaction',
    n.domain = 'SV',
    n.definition = '블록체인 내부에 저장되지 않은 거래 기록',
    n.aliases = ['Commitment Transaction'];

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SV',
    n.definition = '합의과정이 없는 Off-Chain에서 거래기록을 조작하여 On-Chain에 기록 가능성 존재';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'SV',
    n.definition = '타임스탬프 사용';

// --- 관계 ---

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '온체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '오프체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '낮은_수수료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '지불채널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '트랜잭션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: 'commitment_transaction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Document {id: 'SV_320'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lightning_network'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오프체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '낮은_수수료'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지불채널'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commitment_transaction'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_321: 하드 포크(Hard Fork)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_321'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'hard_fork'})
SET     n.name = 'Hard Fork',
    n.name_kr = '하드 포크',
    n.domain = 'SV',
    n.aliases = ['Hard Fork', '하드 포크'];

MERGE (n:Concept {id: '금융+기술'})
SET     n.name = '금융+기술',
    n.name_kr = '금융+기술',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'hard_fork'})
MERGE (b:Concept {id: '금융+기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hard_fork'})
MERGE (b:Document {id: 'SV_321'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hard_fork'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융+기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_322: 세그윗(SegWit)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_322'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'segwit'})
SET     n.name = 'SegWit',
    n.name_kr = '세그윗',
    n.domain = 'SV',
    n.aliases = ['SegWit', '세그윗'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '소프트포크'})
SET     n.name = '소프트포크',
    n.name_kr = '소프트포크',
    n.domain = 'SV';

MERGE (n:Concept {id: '거래가변성'})
SET     n.name = '거래가변성',
    n.name_kr = '거래가변성',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서명'})
SET     n.name = '디지털 서명',
    n.name_kr = '디지털 서명',
    n.domain = 'SV';

MERGE (n:Concept {id: '기반_기술'})
SET     n.name = '기반 기술',
    n.name_kr = '기반 기술',
    n.domain = 'SV',
    n.definition = '소프트 포크';

MERGE (n:Concept {id: '트랜젝션'})
SET     n.name = '트랜젝션',
    n.name_kr = '트랜젝션',
    n.domain = 'SV',
    n.definition = '입력값 출력값이라는 두 가지 주요 요소로 구성 - 입력값 : 전송자의 공개 주소가 포함 - 출력값 : 수신자의 공개 주소가 포함';

MERGE (n:Concept {id: '활용_기술'})
SET     n.name = '활용 기술',
    n.name_kr = '활용 기술',
    n.domain = 'SV',
    n.definition = '라이트닝 네트워크';

MERGE (n:Concept {id: '아토믹_스왑'})
SET     n.name = '아토믹 스왑',
    n.name_kr = '아토믹 스왑',
    n.domain = 'SV',
    n.definition = '중앙화된 암호화폐 거래소를 거치지 않고, 서로 다른 코인을 직접 교환';

MERGE (n:Concept {id: '스마트_컨트렉트'})
SET     n.name = '스마트 컨트렉트',
    n.name_kr = '스마트 컨트렉트',
    n.domain = 'SV',
    n.definition = '서면으로 이루어지던 계약을 코드로 구현하고 특정 조건이 충족되었을 때 해당 계약이 이행되게 하는 script';

// --- 관계 ---

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '소프트포크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '거래가변성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '디지털_서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '기반_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '트랜젝션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '활용_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '아토믹_스왑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Concept {id: '스마트_컨트렉트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Document {id: 'SV_322'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'segwit'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트포크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래가변성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜젝션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아토믹_스왑'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_컨트렉트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_323: 암호화폐 지갑(Cryptocurrency Wallet)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_323'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cryptocurrency_wallet'})
SET     n.name = 'Cryptocurrency Wallet',
    n.name_kr = '암호화폐 지갑',
    n.domain = 'SV',
    n.aliases = ['Cryptocurrency Wallet', '암호화폐 지갑'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '공개키'})
SET     n.name = '공개키',
    n.name_kr = '공개키',
    n.domain = 'SV';

MERGE (n:Concept {id: '개인키'})
SET     n.name = '개인키',
    n.name_kr = '개인키',
    n.domain = 'SV';

MERGE (n:Concept {id: 'hot_wallet'})
SET     n.name = '핫월렛',
    n.name_kr = '핫월렛',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cold_wallet'})
SET     n.name = '콜드월렛',
    n.name_kr = '콜드월렛',
    n.domain = 'SV';

MERGE (n:Concept {id: 'on-line_지갑'})
SET     n.name = 'On-Line 지갑',
    n.name_kr = 'On-Line 지갑',
    n.domain = 'SV';

MERGE (n:Concept {id: 'off-line_지갑'})
SET     n.name = 'off-line 지갑',
    n.name_kr = 'off-line 지갑',
    n.domain = 'SV';

MERGE (n:Concept {id: '2_of_3'})
SET     n.name = '2-of-3',
    n.name_kr = '2-of-3',
    n.domain = 'SV';

MERGE (n:Concept {id: '3_of_5'})
SET     n.name = '3-of-5',
    n.name_kr = '3-of-5',
    n.domain = 'SV';

MERGE (n:Concept {id: '핫_월렛'})
SET     n.name = '핫 월렛',
    n.name_kr = '핫 월렛',
    n.domain = 'SV',
    n.definition = 'On-Line 상태 기반, 인터넷 통한 실시간 거래정보 교환 가능한 암호화폐 가상지갑';

MERGE (n:Concept {id: '콜드_월렛'})
SET     n.name = '콜드 월렛',
    n.name_kr = '콜드 월렛',
    n.domain = 'SV',
    n.definition = 'Off-Line 상태 기반, 인터넷이 차단된 별도 하드웨어(USB등)을 통한 키보안 강화 암호화폐 가상지갑';

MERGE (n:Concept {id: 'key_보관방식'})
SET     n.name = 'Key 보관방식',
    n.name_kr = 'Key 보관방식',
    n.domain = 'SV',
    n.definition = '전자지갑 접근 Private 키 분리 보관(거래소, 보안회사, 백업 등)';

MERGE (n:Concept {id: '구현방식'})
SET     n.name = '구현방식',
    n.name_kr = '구현방식',
    n.domain = 'SV',
    n.definition = '이더리움 스마트계약, Dapp';

MERGE (n:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
SET     n.name = '① 유사・중복 점검제도의 부담 해소(안 제20조)',
    n.name_kr = '① 유사・중복 점검제도의 부담 해소(안 제20조)',
    n.domain = 'SV',
    n.definition = '상호 인정';

MERGE (n:Standard {id: '심사_생략'})
SET     n.name = '심사 생략',
    n.name_kr = '심사 생략',
    n.domain = 'SV',
    n.definition = '수탁회사가 ISMS-P 인증을 획득한 경우, 위탁사에서의 ISMS-P 인증심사에 부수되는 수탁사의 현장점검 면제';

MERGE (n:Concept {id: '②_심사_품질_향상'})
SET     n.name = '② 심사 품질 향상',
    n.name_kr = '② 심사 품질 향상',
    n.domain = 'SV',
    n.definition = '인증・심사기관 관리';

MERGE (n:Concept {id: '분야별_세부점검항목'})
SET     n.name = '분야별 세부점검항목',
    n.name_kr = '분야별 세부점검항목',
    n.domain = 'SV',
    n.definition = '가상자산, 의료, 공공 등 분야별 특성・신기술을 고려한 세부점검항목 마련(안 제23조)';

MERGE (n:Standard {id: '③_인증_인센티브_확대'})
SET     n.name = '③ 인증 인센티브 확대',
    n.name_kr = '③ 인증 인센티브 확대',
    n.domain = 'SV',
    n.definition = '「정보보호산업의 진흥에 관한 법률」제13조에 따른 정보보호공시기업의 ISMS-P 인증수수료 할인(30%) 적용(안 제21조)';

MERGE (n:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
SET     n.name = '④ 코로나19 등 재난, 재해 상황 발생 시 예외 조항 신설',
    n.name_kr = '④ 코로나19 등 재난, 재해 상황 발생 시 예외 조항 신설',
    n.domain = 'SV',
    n.definition = '심사원 자격 유효기간 유예(안 제15조) 인증 의무대상자 이행 기한 연장(안 제19조) 유사 시 비대면 원격 심사 병행(안 제25조)';

MERGE (n:Concept {id: '⑤_기타_개정_사항'})
SET     n.name = '⑤ 기타 개정 사항',
    n.name_kr = '⑤ 기타 개정 사항',
    n.domain = 'SV',
    n.definition = '심사원이 인증위원회 소속된 경우 자격 유지 의무 유예(안 제15조) - 심사원 지급수수료 기준 및 출장경비 지급 기준을 인터넷진흥원에서 정하여 공고하도록 개정(안 별표 6) - 관계법 개정 사항 반영(안 제21조) - 문구 및 용어 수정(안 제2조, 제20조)';

// --- 관계 ---

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '공개키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '개인키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: 'hot_wallet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: 'cold_wallet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: 'on-line_지갑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: 'off-line_지갑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '2_of_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '3_of_5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '핫_월렛'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '콜드_월렛'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: 'key_보관방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '구현방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Standard {id: '심사_생략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '②_심사_품질_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '분야별_세부점검항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Standard {id: '③_인증_인센티브_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Concept {id: '⑤_기타_개정_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Document {id: 'SV_323'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cryptocurrency_wallet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인키'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hot_wallet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cold_wallet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on-line_지갑'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'off-line_지갑'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_of_3'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3_of_5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핫_월렛'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콜드_월렛'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'key_보관방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '심사_생략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_심사_품질_향상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분야별_세부점검항목'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '③_인증_인센티브_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_기타_개정_사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_324: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_324'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_325: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_325'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 271개
// 관계: 537개
// ================================================================