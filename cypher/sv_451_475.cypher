// ================================================================
// SV 도메인 (SV_451 ~ SV_475) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_413.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_413.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_413.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_413.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_414: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_414'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_415: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_415'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_416: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_416'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_421: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_421'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_422: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_422'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_424.1: N-Screen
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_424.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'n_screen'})
SET     n.name = 'N-Screen',
    n.name_kr = 'N-Screen',
    n.domain = 'SV',
    n.aliases = ['N-Screen'];

MERGE (n:Concept {id: 'convergence'})
SET     n.name = 'Convergence',
    n.name_kr = '통합IT융합',
    n.domain = 'SV',
    n.aliases = ['Convergence', '통합IT융합'];

MERGE (n:Concept {id: 'dlna'})
SET     n.name = 'DLNA',
    n.name_kr = 'DLNA',
    n.domain = 'SV',
    n.aliases = ['DLNA'];

MERGE (n:Concept {id: 'sync_framework'})
SET     n.name = 'Sync Framework',
    n.name_kr = 'Sync Framework',
    n.domain = 'SV',
    n.aliases = ['Sync Framework'];

MERGE (n:Concept {id: '오픈_프로토콜'})
SET     n.name = '오픈 프로토콜',
    n.name_kr = '오픈 프로토콜',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_기술'})
SET     n.name = 'Cloud 기술',
    n.name_kr = 'Cloud 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '서버분산'})
SET     n.name = '서버분산',
    n.name_kr = '서버분산',
    n.domain = 'SV';

MERGE (n:Concept {id: '스트리밍'})
SET     n.name = '스트리밍',
    n.name_kr = '스트리밍',
    n.domain = 'SV';

MERGE (n:Concept {id: '매쉬업'})
SET     n.name = '매쉬업',
    n.name_kr = '매쉬업',
    n.domain = 'SV';

MERGE (n:Concept {id: '이어서_재생_기능'})
SET     n.name = '이어서 재생 기능',
    n.name_kr = '이어서 재생 기능',
    n.domain = 'SV',
    n.definition = '사용자가 시청하던 동영상을 언제 어디서나 파일의 이동 없이 네트워크 공유를 통해 다른 기기(TV, PC, 스마트폰, 태블릿)에서 중지된 부분부터 이어서 시청할 수 있음';

MERGE (n:Concept {id: '개인화_&_양방향_서비스'})
SET     n.name = '개인화 & 양방향 서비스',
    n.name_kr = '개인화 & 양방향 서비스',
    n.domain = 'SV',
    n.definition = '고객 선호 정보와 이용 패턴을 종합적으로 분석 - 고객에게 최적화된 콘텐츠 추천';

MERGE (n:Concept {id: '이용_편의성'})
SET     n.name = '이용 편의성',
    n.name_kr = '이용 편의성',
    n.domain = 'SV',
    n.definition = '영상을 시청하다가 원하는 장면으로 이동 시 기다릴 필요 없이 바로 볼 수 있음';

MERGE (n:Concept {id: 'social_network_서비스_연동'})
SET     n.name = 'Social Network 서비스 연동',
    n.name_kr = 'Social Network 서비스 연동',
    n.domain = 'SV',
    n.definition = 'TV의 시청과 함께 인터넷, 소셜 커뮤니티의 동시 접근 및 재생산된 문화의 공유 - 상호 작용에 의한 창의적 문화를 창출할 기회 마련';

MERGE (n:Concept {id: '서비스_유형'})
SET     n.name = '서비스 유형',
    n.name_kr = '서비스 유형',
    n.domain = 'SV';

MERGE (n:Concept {id: '개요'})
SET     n.name = '개요',
    n.name_kr = '개요',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'convergence'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'dlna'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'sync_framework'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '오픈_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'cloud_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'html5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '서버분산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '스트리밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '매쉬업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '이어서_재생_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '개인화_&_양방향_서비스'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '이용_편의성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: 'social_network_서비스_연동'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '서비스_유형'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '서비스_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Document {id: 'SV_424.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'n_screen'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'convergence'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dlna'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sync_framework'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈_프로토콜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버분산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스트리밍'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매쉬업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이어서_재생_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인화_&_양방향_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용_편의성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'social_network_서비스_연동'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_유형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개요'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_424.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_424.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_425: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_425'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_426: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_426'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_427: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_427'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_428.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_428.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_428.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_428.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_429: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_429'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_430.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_430.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_430.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_430.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_431: ISO 26262
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_431'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_26262'})
SET     n.name = 'ISO 26262',
    n.name_kr = 'ISO 26262',
    n.domain = 'SV',
    n.aliases = ['ISO 26262'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: '기능안전'})
SET     n.name = '기능안전',
    n.name_kr = '기능안전',
    n.domain = 'SV';

MERGE (n:Concept {id: 'autosa'})
SET     n.name = 'AUTOSA',
    n.name_kr = 'AUTOSA',
    n.domain = 'SV',
    n.aliases = ['AUTOSA'];

MERGE (n:Concept {id: 'asil'})
SET     n.name = 'ASIL',
    n.name_kr = 'ASIL',
    n.domain = 'SV',
    n.aliases = ['ASIL'];

MERGE (n:Standard {id: 'iso_61508'})
SET     n.name = 'ISO 61508',
    n.name_kr = 'ISO 61508',
    n.domain = 'SV',
    n.aliases = ['ISO 61508'];

MERGE (n:Concept {id: 'v_model'})
SET     n.name = 'V model',
    n.name_kr = 'V model',
    n.domain = 'SV',
    n.aliases = ['V model'];

MERGE (n:Concept {id: 'trl'})
SET     n.name = 'TRL',
    n.name_kr = 'TRL',
    n.domain = 'SV',
    n.aliases = ['TRL'];

MERGE (n:Concept {id: '소프트웨어의_기능안전_국제규격'})
SET     n.name = '소프트웨어의 기능안전 국제규격',
    n.name_kr = '소프트웨어의 기능안전 국제규격',
    n.domain = 'SV';

MERGE (n:Concept {id: 'iec_61508'})
SET     n.name = 'IEC 61508',
    n.name_kr = 'IEC 61508',
    n.domain = 'SV',
    n.aliases = ['IEC 61508'];

MERGE (n:Concept {id: 'sotif'})
SET     n.name = 'SOTIF',
    n.name_kr = 'ISO/PAS 21448',
    n.domain = 'SV',
    n.aliases = ['SOTIF', 'ISO/PAS 21448'];

MERGE (n:Concept {id: 'sae_j2061'})
SET     n.name = 'SAE J2061',
    n.name_kr = 'SAE J2061',
    n.domain = 'SV',
    n.aliases = ['SAE J2061'];

MERGE (n:Concept {id: 'iso_sae_21434'})
SET     n.name = 'ISO/SAE 21434',
    n.name_kr = 'ISO/SAE 21434',
    n.domain = 'SV',
    n.aliases = ['ISO/SAE 21434'];

// --- 관계 ---

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: '기능안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'autosa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'asil'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Standard {id: 'iso_61508'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'v_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'trl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: '소프트웨어의_기능안전_국제규격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iec_61508'})
MERGE (b:Standard {id: 'iso_26262'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'iec_61508'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'sotif'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'sae_j2061'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'iso_sae_21434'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sotif'})
MERGE (b:Concept {id: 'sae_j2061'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sotif'})
MERGE (b:Concept {id: 'iso_sae_21434'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'sotif'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sae_j2061'})
MERGE (b:Concept {id: 'iso_sae_21434'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'sae_j2061'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Concept {id: 'iso_sae_21434'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Document {id: 'SV_431'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_26262'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'autosa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'asil'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_61508'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v_model'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어의_기능안전_국제규격'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_61508'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sotif'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sae_j2061'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_sae_21434'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_432: ASIL(Automotive Software Integrity Levels)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_432'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'automotive_software_integrity_levels'})
SET     n.name = 'Automotive Software Integrity Levels',
    n.name_kr = 'ASIL',
    n.domain = 'SV',
    n.aliases = ['Automotive Software Integrity Levels', 'ASIL'];

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

MERGE (n:Concept {id: 'asil'})
SET     n.name = 'ASIL',
    n.name_kr = 'ASIL',
    n.domain = 'SV',
    n.aliases = ['ASIL'];

MERGE (n:Concept {id: 'iec61508'})
SET     n.name = 'IEC61508',
    n.name_kr = 'IEC61508',
    n.domain = 'SV',
    n.aliases = ['IEC61508'];

MERGE (n:Concept {id: '차량안전성'})
SET     n.name = '차량안전성',
    n.name_kr = '차량안전성',
    n.domain = 'SV';

MERGE (n:Concept {id: '잠재적_심각도'})
SET     n.name = '잠재적 심각도',
    n.name_kr = '잠재적 심각도',
    n.domain = 'SV';

MERGE (n:Concept {id: '노출_가능성'})
SET     n.name = '노출 가능성',
    n.name_kr = '노출 가능성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'controllability'})
SET     n.name = '통제 가능성',
    n.name_kr = '통제 가능성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'safety_integrity_level'})
SET     n.name = 'Safety integrity level',
    n.name_kr = 'SIL',
    n.domain = 'SV',
    n.aliases = ['Safety integrity level', 'SIL'];

MERGE (n:Concept {id: 'automotive_safety_integrity_level'})
SET     n.name = 'Automotive Safety Integrity Level',
    n.name_kr = 'ASIL',
    n.domain = 'SV',
    n.aliases = ['Automotive Safety Integrity Level', 'ASIL'];

// --- 관계 ---

MERGE (a:Concept {id: 'asil'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: 'iec61508'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: '차량안전성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: '잠재적_심각도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: '노출_가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: 'controllability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'safety_integrity_level'})
MERGE (b:Concept {id: 'automotive_safety_integrity_level'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: 'safety_integrity_level'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Concept {id: 'automotive_safety_integrity_level'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Document {id: 'SV_432'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'automotive_software_integrity_levels'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'asil'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec61508'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차량안전성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잠재적_심각도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노출_가능성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'controllability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'safety_integrity_level'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automotive_safety_integrity_level'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_433: 의료기기 기능 안전
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_433'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '의료기기_기능_안전'})
SET     n.name = '의료기기 기능 안전',
    n.name_kr = '의료기기 기능 안전',
    n.domain = 'SV';

MERGE (n:Concept {id: '의료sw'})
SET     n.name = '의료SW',
    n.name_kr = '의료SW',
    n.domain = 'SV';

MERGE (n:Concept {id: '의료기기_sw표준'})
SET     n.name = '의료기기 SW표준',
    n.name_kr = '의료기기 SW표준',
    n.domain = 'SV';

MERGE (n:Standard {id: 'iso_13485'})
SET     n.name = 'ISO 13485',
    n.name_kr = 'ISO 13485',
    n.domain = 'SV',
    n.aliases = ['ISO 13485'];

MERGE (n:Standard {id: 'iso_14971'})
SET     n.name = 'ISO 14971',
    n.name_kr = 'ISO 14971',
    n.domain = 'SV',
    n.aliases = ['ISO 14971'];

MERGE (n:Standard {id: 'iso_60601'})
SET     n.name = 'ISO 60601',
    n.name_kr = 'ISO 60601',
    n.domain = 'SV',
    n.aliases = ['ISO 60601'];

MERGE (n:Standard {id: 'iso_62304'})
SET     n.name = 'ISO 62304',
    n.name_kr = 'ISO 62304',
    n.domain = 'SV',
    n.aliases = ['ISO 62304'];

MERGE (n:Concept {id: 'gmp'})
SET     n.name = 'GMP',
    n.name_kr = 'GMP',
    n.domain = 'SV',
    n.aliases = ['GMP'];

MERGE (n:Concept {id: 'fda'})
SET     n.name = 'FDA',
    n.name_kr = 'FDA',
    n.domain = 'SV',
    n.aliases = ['FDA'];

MERGE (n:Concept {id: '적용_범위'})
SET     n.name = '적용 범위',
    n.name_kr = '적용 범위',
    n.domain = 'SV',
    n.definition = '의료 목적으로 사용하는 소프트웨어';

MERGE (n:Concept {id: 'iec_60601_2'})
SET     n.name = 'IEC 60601-2',
    n.name_kr = 'IEC 60601-2',
    n.domain = 'SV',
    n.definition = '의료용 전기 기기 개별 규격 : 의료용 전기 기기에 따라 83개로 구성',
    n.aliases = ['IEC 60601-2'];

// --- 관계 ---

MERGE (a:Concept {id: '의료sw'})
MERGE (b:Concept {id: '의료기기_기능_안전'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '의료기기_sw표준'})
MERGE (b:Concept {id: '의료sw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Standard {id: 'iso_13485'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Standard {id: 'iso_14971'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Standard {id: 'iso_60601'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Standard {id: 'iso_62304'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Concept {id: 'gmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Concept {id: 'fda'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Concept {id: '적용_범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Concept {id: 'iec_60601_2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Document {id: 'SV_433'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '의료기기_기능_안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료sw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료기기_sw표준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_13485'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_14971'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_60601'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_62304'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gmp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fda'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용_범위'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_60601_2'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_434: 항공기 기능 안전
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_434'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '항공기_기능_안전'})
SET     n.name = '항공기 기능 안전',
    n.name_kr = '항공기 기능 안전',
    n.domain = 'SV';

MERGE (n:Concept {id: 'functional_safety'})
SET     n.name = '기능안전',
    n.name_kr = '기능안전',
    n.domain = 'SV';

MERGE (n:Concept {id: '감항성'})
SET     n.name = '감항성',
    n.name_kr = '감항성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'do_178b'})
SET     n.name = 'DO-178B',
    n.name_kr = 'DO-178B',
    n.domain = 'SV',
    n.aliases = ['DO-178B'];

MERGE (n:Concept {id: 'do_178c'})
SET     n.name = 'DO-178C',
    n.name_kr = 'DO-178C',
    n.domain = 'SV',
    n.aliases = ['DO-178C'];

MERGE (n:Concept {id: 'airworthiness'})
SET     n.name = 'Airworthiness',
    n.name_kr = 'Airworthiness',
    n.domain = 'SV',
    n.aliases = ['Airworthiness'];

MERGE (n:Concept {id: '생명주기목표'})
SET     n.name = '생명주기목표',
    n.name_kr = '생명주기목표',
    n.domain = 'SV',
    n.definition = '시스템 생명주기에 포함된 안전성 평가';

MERGE (n:Concept {id: '무결레벨'})
SET     n.name = '무결레벨',
    n.name_kr = '무결레벨',
    n.domain = 'SV',
    n.definition = 'SL(Software Level)';

MERGE (n:Metric {id: '안전_무결성_등급'})
SET     n.name = '안전 무결성 등급',
    n.name_kr = '안전 무결성 등급',
    n.domain = 'SV',
    n.definition = 'DAL E-A';

MERGE (n:Concept {id: '장애등급'})
SET     n.name = '장애등급',
    n.name_kr = '장애등급',
    n.domain = 'SV',
    n.definition = 'Catastrophic Hazardous / Severe-Major Major Minor';

MERGE (n:Concept {id: '개발_프로세스_테일러링'})
SET     n.name = '개발 프로세스 테일러링',
    n.name_kr = '개발 프로세스 테일러링',
    n.domain = 'SV',
    n.definition = 'Objectives 테일러링';

MERGE (n:Concept {id: 'sw_테스팅'})
SET     n.name = 'SW 테스팅',
    n.name_kr = 'SW 테스팅',
    n.domain = 'SV',
    n.definition = '코드 커버리지의 정량적 테스트 시물레이션 테스트 HW 결함 테스팅(별도 테스팅 모델 정의)';

// --- 관계 ---

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: 'functional_safety'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: '감항성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: 'do_178b'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: 'do_178c'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: 'airworthiness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: '생명주기목표'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: '무결레벨'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Metric {id: '안전_무결성_등급'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: '장애등급'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: '개발_프로세스_테일러링'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Concept {id: 'sw_테스팅'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Document {id: 'SV_434'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '항공기_기능_안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'functional_safety'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감항성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'do_178b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'do_178c'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'airworthiness'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생명주기목표'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무결레벨'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '안전_무결성_등급'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애등급'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_프로세스_테일러링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_테스팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_435: 원자력 발전소(Nuclear power plants)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_435'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'nuclear_power_plants'})
SET     n.name = 'Nuclear power plants',
    n.name_kr = '원자력 발전소',
    n.domain = 'SV',
    n.aliases = ['Nuclear power plants', '원자력 발전소'];

MERGE (n:Concept {id: '기능안전'})
SET     n.name = '기능안전',
    n.name_kr = '기능안전',
    n.domain = 'SV';

MERGE (n:Concept {id: 'iec_61226'})
SET     n.name = 'IEC 61226',
    n.name_kr = 'IEC 61226',
    n.domain = 'SV',
    n.aliases = ['IEC 61226'];

MERGE (n:Concept {id: 'iec_60880'})
SET     n.name = 'IEC 60880',
    n.name_kr = 'IEC 60880',
    n.domain = 'SV',
    n.aliases = ['IEC 60880'];

MERGE (n:Concept {id: 'category_a'})
SET     n.name = 'Category A',
    n.name_kr = 'Category A',
    n.domain = 'SV',
    n.aliases = ['Category A'];

// --- 관계 ---

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Concept {id: '기능안전'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Concept {id: 'iec_61226'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Concept {id: 'iec_60880'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Concept {id: 'category_a'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Document {id: 'SV_435'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'nuclear_power_plants'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_61226'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_60880'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'category_a'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_436: 철도(Rail) 기능 안전 Software
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_436'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'rail'})
SET     n.name = '철도(Rail) 기능 안전 Software',
    n.name_kr = '철도(Rail) 기능 안전 Software',
    n.domain = 'SV';

MERGE (n:Concept {id: '자동차'})
SET     n.name = '자동차',
    n.name_kr = '자동차',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'rail'})
MERGE (b:Concept {id: '자동차'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rail'})
MERGE (b:Document {id: 'SV_436'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rail'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_437: 능동안전(Active Safety)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_437'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'active_safety'})
SET     n.name = 'Active Safety',
    n.name_kr = '능동안전',
    n.domain = 'SV',
    n.aliases = ['Active Safety', '능동안전'];

MERGE (n:Concept {id: '기능안전'})
SET     n.name = '기능안전',
    n.name_kr = '기능안전',
    n.domain = 'SV';

MERGE (n:Concept {id: '안전설계_개념'})
SET     n.name = '안전설계 개념',
    n.name_kr = '안전설계 개념',
    n.domain = 'SV';

MERGE (n:Concept {id: '안전_메카니즘'})
SET     n.name = '안전 메카니즘',
    n.name_kr = '안전 메카니즘',
    n.domain = 'SV';

MERGE (n:Concept {id: 'hara'})
SET     n.name = 'HARA',
    n.name_kr = 'HARA',
    n.domain = 'SV',
    n.aliases = ['HARA'];

MERGE (n:Concept {id: 'fsc'})
SET     n.name = 'FSC',
    n.name_kr = 'FSC',
    n.domain = 'SV',
    n.aliases = ['FSC'];

MERGE (n:Concept {id: 'tsc'})
SET     n.name = 'TSC',
    n.name_kr = 'TSC',
    n.domain = 'SV',
    n.aliases = ['TSC'];

MERGE (n:Concept {id: 'hsi'})
SET     n.name = 'HSI',
    n.name_kr = 'HSI',
    n.domain = 'SV',
    n.aliases = ['HSI'];

MERGE (n:Concept {id: '하드웨어'})
SET     n.name = '하드웨어',
    n.name_kr = '하드웨어',
    n.domain = 'SV',
    n.definition = 'Watch-dog Timer';

MERGE (n:Concept {id: 'tmr'})
SET     n.name = 'TMR',
    n.name_kr = 'TMR',
    n.domain = 'SV',
    n.definition = 'Module 1,2,3 Major Voter 통한 Safe State 유지',
    n.aliases = ['TMR'];

MERGE (n:Concept {id: 'voltage_current_monitoring'})
SET     n.name = 'Voltage/Current Monitoring',
    n.name_kr = 'Voltage/Current Monitoring',
    n.domain = 'SV',
    n.definition = '부가된 전력, 전압에 대한 모니터링',
    n.aliases = ['Voltage/Current Monitoring'];

MERGE (n:Concept {id: 'redundancy'})
SET     n.name = 'redundancy',
    n.name_kr = 'redundancy',
    n.domain = 'SV',
    n.definition = '하드웨어적 중복',
    n.aliases = ['redundancy'];

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'SV',
    n.definition = 'RAM 패턴 시험';

MERGE (n:Concept {id: 'ram_march_시험'})
SET     n.name = 'RAM March 시험',
    n.name_kr = 'RAM March 시험',
    n.domain = 'SV',
    n.definition = '연결된 셀 커버리지에 대한 쓰기 읽기 순서에 따름';

MERGE (n:Concept {id: '패러티_비트'})
SET     n.name = '패러티 비트',
    n.name_kr = '패러티 비트',
    n.domain = 'SV',
    n.definition = '데이터 끝 1 bit추가, 1의 개수로 오류유무판단(짝수, 홀수 패리티)';

MERGE (n:Concept {id: '블록_복제'})
SET     n.name = '블록 복제',
    n.name_kr = '블록 복제',
    n.domain = 'SV',
    n.definition = '공통 고장형태는 진단 커버리지를 감소시킬 수 있음';

MERGE (n:Concept {id: 'running'})
SET     n.name = '동작(Running) 체크섬 / CRC',
    n.name_kr = '동작(Running) 체크섬 / CRC',
    n.domain = 'SV',
    n.definition = '순회 부호에 기반한 오류 검출 부호';

// --- 관계 ---

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '기능안전'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '안전설계_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '안전_메카니즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'hara'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'fsc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'tsc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'hsi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '하드웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'tmr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'voltage_current_monitoring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'redundancy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'ram_march_시험'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '패러티_비트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '블록_복제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'running'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Document {id: 'SV_437'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전설계_개념'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전_메카니즘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hara'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fsc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tsc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hsi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tmr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voltage_current_monitoring'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redundancy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ram_march_시험'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패러티_비트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록_복제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'running'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_438: 자동차 능동안전(Active Safety)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_438'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'active_safety'})
SET     n.name = 'Active Safety',
    n.name_kr = '자동차 능동안전',
    n.domain = 'SV',
    n.aliases = ['Active Safety', '자동차 능동안전'];

MERGE (n:Concept {id: '기능안전'})
SET     n.name = '기능안전',
    n.name_kr = '기능안전',
    n.domain = 'SV';

MERGE (n:Concept {id: '예방안전'})
SET     n.name = '예방안전',
    n.name_kr = '예방안전',
    n.domain = 'SV';

MERGE (n:Concept {id: '사고회피'})
SET     n.name = '사고회피',
    n.name_kr = '사고회피',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율주행'})
SET     n.name = '자율주행',
    n.name_kr = '자율주행',
    n.domain = 'SV';

MERGE (n:Concept {id: '충돌안전'})
SET     n.name = '충돌안전',
    n.name_kr = '충돌안전',
    n.domain = 'SV';

MERGE (n:Concept {id: 'adas'})
SET     n.name = 'ADAS',
    n.name_kr = 'ADAS',
    n.domain = 'SV',
    n.aliases = ['ADAS'];

MERGE (n:Concept {id: 'aebs'})
SET     n.name = 'AEBS',
    n.name_kr = 'AEBS',
    n.domain = 'SV',
    n.aliases = ['AEBS'];

MERGE (n:Concept {id: 'lka'})
SET     n.name = 'LKA',
    n.name_kr = 'LKA',
    n.domain = 'SV',
    n.aliases = ['LKA'];

MERGE (n:Concept {id: 'fca'})
SET     n.name = 'FCA',
    n.name_kr = 'FCA',
    n.domain = 'SV',
    n.aliases = ['FCA'];

MERGE (n:Concept {id: 'bca'})
SET     n.name = 'BCA',
    n.name_kr = 'BCA',
    n.domain = 'SV',
    n.aliases = ['BCA'];

MERGE (n:Concept {id: 'rcca'})
SET     n.name = 'RCCA',
    n.name_kr = 'RCCA',
    n.domain = 'SV',
    n.aliases = ['RCCA'];

MERGE (n:Concept {id: 'hba'})
SET     n.name = 'HBA',
    n.name_kr = 'HBA',
    n.domain = 'SV',
    n.aliases = ['HBA'];

MERGE (n:Concept {id: 'lba'})
SET     n.name = 'LBA',
    n.name_kr = 'LBA',
    n.domain = 'SV',
    n.aliases = ['LBA'];

MERGE (n:Concept {id: '전방충돌_회피'})
SET     n.name = '전방충돌 회피',
    n.name_kr = '전방충돌 회피',
    n.domain = 'SV',
    n.definition = 'FCA';

MERGE (n:Threat {id: 'acc'})
SET     n.name = 'ACC',
    n.name_kr = 'ACC',
    n.domain = 'SV',
    n.definition = '적응순항제어장치, Adaptive Cruise Control - 차량 전방에 장착된 레이다를 사용하여 앞차와의 간격을 적절하게 자동 유지',
    n.aliases = ['ACC'];

MERGE (n:Concept {id: '차선이탈_경고'})
SET     n.name = '차선이탈 경고',
    n.name_kr = '차선이탈 경고',
    n.domain = 'SV',
    n.definition = 'LKA';

MERGE (n:Concept {id: 'ldws'})
SET     n.name = 'LDWS',
    n.name_kr = 'LDWS',
    n.domain = 'SV',
    n.definition = '차선이탈경고장치, Lane Departure Warning System - 주행 차선 감지, 표류 방지 및 경고 장치',
    n.aliases = ['LDWS'];

MERGE (n:Concept {id: '사각지대_후방감시'})
SET     n.name = '사각지대 후방감시',
    n.name_kr = '사각지대 후방감시',
    n.domain = 'SV',
    n.definition = 'BCA';

MERGE (n:Concept {id: 'rcca,'})
SET     n.name = 'RCCA,',
    n.name_kr = 'RCCA,',
    n.domain = 'SV',
    n.definition = '후방 교차 충돌방지 보조, Rear Cross-traffic Collision-avoidance Assist - 후진 출차 시 측방에서 다가오는 장애물과의 충돌 방지, 위험경고, 제어';

MERGE (n:Method {id: 'pca_r'})
SET     n.name = 'PCA-R',
    n.name_kr = 'PCA-R',
    n.domain = 'SV',
    n.definition = '주차 충돌방지 보조-후방, Parking Collision-avoidance Assist-Reverse - 주차/출차 및 저속 후진 중 후방 보행자 및 장애물과의 충돌 방지',
    n.aliases = ['PCA-R'];

MERGE (n:Concept {id: '편의시스템'})
SET     n.name = '편의시스템',
    n.name_kr = '편의시스템',
    n.domain = 'SV',
    n.definition = 'HBA';

MERGE (n:Metric {id: '연역적'})
SET     n.name = '연역적',
    n.name_kr = '연역적',
    n.domain = 'SV',
    n.definition = 'STPA (System Theoretic Process Analysis)';

MERGE (n:Concept {id: 'fmea'})
SET     n.name = 'FMEA',
    n.name_kr = 'Failure Modes & Effects Analysis',
    n.domain = 'SV',
    n.definition = 'FM(Failure Mode) 추출 - 발생빈도, 위험도, 통제가능성을 정량화',
    n.aliases = ['FMEA', 'Failure Modes & Effects Analysis'];

MERGE (n:Concept {id: '귀납적'})
SET     n.name = '귀납적',
    n.name_kr = '귀납적',
    n.domain = 'SV',
    n.definition = 'FTA (Fault Tree Analysis)';

MERGE (n:Concept {id: 'hazard_and_operability'})
SET     n.name = 'Hazard and Operability',
    n.name_kr = 'HAZOP',
    n.domain = 'SV',
    n.definition = '정상에서 벗어난 일탈상황에 대한 원인 분석 - 전문가 집단, Guide Word 사용',
    n.aliases = ['Hazard and Operability', 'HAZOP'];

// --- 관계 ---

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '기능안전'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '예방안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '사고회피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '자율주행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '충돌안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'adas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'aebs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'lka'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'fca'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'bca'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'rcca'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'hba'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'lba'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '전방충돌_회피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Threat {id: 'acc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '차선이탈_경고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'ldws'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '사각지대_후방감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'rcca,'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Method {id: 'pca_r'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '편의시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Metric {id: '연역적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'fmea'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: '귀납적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Concept {id: 'hazard_and_operability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Document {id: 'SV_438'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'active_safety'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예방안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고회피'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율주행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '충돌안전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aebs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lka'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fca'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bca'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rcca'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hba'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lba'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전방충돌_회피'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'acc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차선이탈_경고'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ldws'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사각지대_후방감시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rcca,'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'pca_r'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편의시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '연역적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '귀납적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hazard_and_operability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 113개
// 관계: 234개
// ================================================================