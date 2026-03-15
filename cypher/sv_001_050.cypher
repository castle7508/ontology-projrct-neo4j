// ================================================================
// SV 도메인 (SV_001 ~ SV_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_001: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_001'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_002: Web 3.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_002'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'web_3_0'})
SET     n.name = 'Web 3.0',
    n.name_kr = 'Web 3.0',
    n.domain = 'SV',
    n.aliases = ['Web 3.0'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '탈중앙화'})
SET     n.name = '탈중앙화',
    n.name_kr = '탈중앙화',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터_소유권'})
SET     n.name = '데이터 소유권',
    n.name_kr = '데이터 소유권',
    n.domain = 'SV';

MERGE (n:Concept {id: '높은_보안성'})
SET     n.name = '높은 보안성',
    n.name_kr = '높은 보안성',
    n.domain = 'SV';

MERGE (n:Concept {id: '지능화_서비스'})
SET     n.name = '지능화 서비스',
    n.name_kr = '지능화 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '확장된_미디어_인터페이스'})
SET     n.name = '확장된 미디어 인터페이스',
    n.name_kr = '확장된 미디어 인터페이스',
    n.domain = 'SV';

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'nft'})
SET     n.name = 'NFT',
    n.name_kr = 'NFT',
    n.domain = 'SV',
    n.aliases = ['NFT'];

MERGE (n:Concept {id: '시맨틱웹'})
SET     n.name = '시맨틱웹',
    n.name_kr = '시맨틱웹',
    n.domain = 'SV';

MERGE (n:Concept {id: '메타버스'})
SET     n.name = '메타버스',
    n.name_kr = '메타버스',
    n.domain = 'SV';

MERGE (n:Concept {id: '(web_2.0-_참여'})
SET     n.name = '(web 2.0- 참여',
    n.name_kr = '(web 2.0- 참여',
    n.domain = 'SV';

MERGE (n:Concept {id: '공유'})
SET     n.name = '공유',
    n.name_kr = '공유',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방)_(web3.0_–_소통'})
SET     n.name = '개방) (Web3.0 – 소통',
    n.name_kr = '개방) (Web3.0 – 소통',
    n.domain = 'SV';

MERGE (n:Concept {id: '융합'})
SET     n.name = '융합',
    n.name_kr = '융합',
    n.domain = 'SV';

MERGE (n:Concept {id: '개인화)'})
SET     n.name = '개인화)',
    n.name_kr = '개인화)',
    n.domain = 'SV';

MERGE (n:Concept {id: '기본_특성'})
SET     n.name = '기본 특성',
    n.name_kr = '기본 특성',
    n.domain = 'SV',
    n.definition = '탈중앙화';

MERGE (n:Concept {id: '구현_특성'})
SET     n.name = '구현 특성',
    n.name_kr = '구현 특성',
    n.domain = 'SV',
    n.definition = '지능화 서비스';

MERGE (n:Concept {id: 'web_2_0'})
SET     n.name = 'Web 2.0',
    n.name_kr = 'Web 2.0',
    n.domain = 'SV',
    n.aliases = ['Web 2.0'];

MERGE (n:Technology {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SV',
    n.definition = '차세대 폼팩터(Form Factor) 및 프레임 워크 기술 개발 - 가상 자산 활성화를 위한 응용 기술 개발 - 블록체인 기반 데이터 분산 저장 기술 개발 - 만물 인터넷(Internet of Everything, IoE) 시대를 위한 5G, 6G 개발 및 상용화';

MERGE (n:Concept {id: '보안기술_측면'})
SET     n.name = '보안기술 측면',
    n.name_kr = '보안기술 측면',
    n.domain = 'SV',
    n.definition = '인프라 및 네트워크';

MERGE (n:Concept {id: '개인정보_및_데이터'})
SET     n.name = '개인정보 및 데이터',
    n.name_kr = '개인정보 및 데이터',
    n.domain = 'SV',
    n.definition = '동형암호, 프라이버시 강화 기술(Privacy Enhancing Technology, PET) 이용한 데이터 보호 - 가상 자산 거래 및 개인정보보호를 위한 FIDO, DID 등의 차세대 인증기술 개발 - 어플리케이션 데이터 위변조 방지를 위한 Anti-Tempering 기술 적용';

MERGE (n:Concept {id: '산업_측면'})
SET     n.name = '산업 측면',
    n.name_kr = '산업 측면',
    n.domain = 'SV',
    n.definition = '메타버스';

MERGE (n:Standard {id: '법·제도적_측면'})
SET     n.name = '법·제도적 측면',
    n.name_kr = '법·제도적 측면',
    n.domain = 'SV',
    n.definition = '웹 3.0 플랫폼 및 기술 개발을 위한 MPEG-v, IEEE 2888 등의 표준 확립 - 웹 3.0 플랫폼 활성화를 위한 가이드 라인 마련 - 개인정보보호를 위한 마이데이터, 데이터 3법 등 법률 개선 - 가상세계에서의 디지털 성범죄 처벌 관련 법안 개선 - 가상 자산(암호화폐, NFT) 관련 법안 마련 및 개선';

MERGE (n:Concept {id: '정부_측면'})
SET     n.name = '정부 측면',
    n.name_kr = '정부 측면',
    n.domain = 'SV',
    n.definition = '웹 3.0 주요 플랫폼 활성화를 위한 인력 양성 및 육성 - 웹 3.0 산업 육성을 위한 국내∙외 시장 현황 모니터링 - 웹 3.0의 글로벌 기술선도를 위한 정책마련 및 예산지원 강화 - 가상 자산의 생성, 유통, 거래 등 프로세스 지원';

MERGE (n:Concept {id: '복잡성'})
SET     n.name = '복잡성',
    n.name_kr = '복잡성',
    n.domain = 'SV',
    n.definition = '새로운 웹 방향 니즈에 따른 대중화가 어려운 이용 복잡성';

MERGE (n:Concept {id: '변동성'})
SET     n.name = '변동성',
    n.name_kr = '변동성',
    n.domain = 'SV',
    n.definition = 'NFT, P2E 등 대표적 비즈 모델의 빠른 성장에 따른 암호화폐, 가상자산의 심한 변동성';

MERGE (n:Concept {id: '기술적_한계'})
SET     n.name = '기술적 한계',
    n.name_kr = '기술적 한계',
    n.domain = 'SV',
    n.definition = '탈중앙화 실현의 현실적 한계 - 비효율적 에너지 소비구조와 지속가능성 이슈';

MERGE (n:Concept {id: '법제도_측면'})
SET     n.name = '법제도 측면',
    n.name_kr = '법제도 측면',
    n.domain = 'SV',
    n.definition = '암호 화폐 대한 과금 문제 정비 - 이용자 보호 및 자금세탁 등 규제 정비 - 블록 체인 게임이 국내 현행법(게임산업진흥에 관한 법률 제32조 제1항 제7호)상 사행성의 이유로 전면 금지 제도에 대한 정비';

// --- 관계 ---

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '탈중앙화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '데이터_소유권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '높은_보안성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '지능화_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '확장된_미디어_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: 'nft'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '시맨틱웹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '메타버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '(web_2.0-_참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '개방)_(web3.0_–_소통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '개인화)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '기본_특성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '구현_특성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_2_0'})
MERGE (b:Concept {id: 'web_3_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: 'web_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Technology {id: '기술적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '보안기술_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '개인정보_및_데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '산업_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Standard {id: '법·제도적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '정부_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '복잡성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '변동성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '기술적_한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Concept {id: '법제도_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Document {id: 'SV_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_3_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈중앙화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_소유권'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '높은_보안성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능화_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장된_미디어_인터페이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시맨틱웹'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타버스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(web_2.0-_참여'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방)_(web3.0_–_소통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인화)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_특성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현_특성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '기술적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안기술_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_및_데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '법·제도적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복잡성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변동성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_한계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법제도_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_003: Web 4.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_003'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'web_4_0'})
SET     n.name = 'Web 4.0',
    n.name_kr = 'Web 4.0',
    n.domain = 'SV',
    n.aliases = ['Web 4.0'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '웹_4.0'})
SET     n.name = '웹 4.0',
    n.name_kr = '웹 4.0',
    n.domain = 'SV';

MERGE (n:Concept {id: 'symbiotic_web'})
SET     n.name = 'Symbiotic web',
    n.name_kr = 'Symbiotic web',
    n.domain = 'SV',
    n.aliases = ['Symbiotic web'];

MERGE (n:Concept {id: '가상/현실_연결'})
SET     n.name = '가상/현실 연결',
    n.name_kr = '가상/현실 연결',
    n.domain = 'SV';

MERGE (n:Concept {id: '속도와_안정성'})
SET     n.name = '속도와 안정성',
    n.name_kr = '속도와 안정성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

// --- 관계 ---

MERGE (a:Concept {id: '웹_4.0'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Concept {id: 'symbiotic_web'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Concept {id: '가상/현실_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Concept {id: '속도와_안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Document {id: 'SV_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_4_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_4.0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'symbiotic_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상/현실_연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속도와_안정성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_006: 웹서비스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_006'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '웹서비스'})
SET     n.name = '웹서비스',
    n.name_kr = '웹서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'SV',
    n.aliases = ['SOA'];

MERGE (n:Concept {id: '기술요소_-_uddi'})
SET     n.name = '기술요소 - UDDI',
    n.name_kr = '기술요소 - UDDI',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sopa'})
SET     n.name = 'SOPA',
    n.name_kr = 'SOPA',
    n.domain = 'SV',
    n.aliases = ['SOPA'];

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['XML'];

MERGE (n:Concept {id: 'rest'})
SET     n.name = 'REST',
    n.name_kr = 'REST',
    n.domain = 'SV',
    n.aliases = ['REST'];

MERGE (n:Concept {id: 'wsdl'})
SET     n.name = 'WSDL',
    n.name_kr = 'WSDL',
    n.domain = 'SV',
    n.aliases = ['WSDL'];

MERGE (n:Concept {id: 'json'})
SET     n.name = 'JSON',
    n.name_kr = 'JSON',
    n.domain = 'SV',
    n.aliases = ['JSON'];

MERGE (n:Technology {id: 'http_요청을_최소화'})
SET     n.name = 'HTTP 요청을 최소화',
    n.name_kr = 'HTTP 요청을 최소화',
    n.domain = 'SV',
    n.definition = '이미지 맵 이용 시 평균 50%의 속도 절감 - CSS Sprite 활용 - 스크립트와 스타일시트 결합';

MERGE (n:Technology {id: '헤더에_만료기간_추가'})
SET     n.name = '헤더에 만료기간 추가',
    n.name_kr = '헤더에 만료기간 추가',
    n.domain = 'SV',
    n.definition = '사이트에 처음 방문한 사용자일 경우 여러 번의 HTTP 요청을 하게 될지도 모르지만 헤더 만료 기한을 이용함으로써 그 구성요소를 캐시에 저장';

MERGE (n:Concept {id: 'css_expression_지양'})
SET     n.name = 'CSS Expression 지양',
    n.name_kr = 'CSS Expression 지양',
    n.domain = 'SV',
    n.definition = 'CSS Expression은 CSS 속성을 동적으로 설정하는 강력하면서 위험한 기능으로 IE5 이후 버전부터 지원 (Expression 의 잦은 업데이트, 문제)';

MERGE (n:Concept {id: 'gzip_컴포넌트_활용'})
SET     n.name = 'Gzip 컴포넌트 활용',
    n.name_kr = 'Gzip 컴포넌트 활용',
    n.domain = 'SV',
    n.definition = 'Gizp은 HTML문서, 스크립트와 스타일시트를 압축';

MERGE (n:Concept {id: '자바스크립트_최소화_및_중복_제거'})
SET     n.name = '자바스크립트 최소화 및 중복 제거',
    n.name_kr = '자바스크립트 최소화 및 중복 제거',
    n.domain = 'SV',
    n.definition = '불필요한 문제를 줄여서 파일 크기 축소로 로딩 시간 개선';

MERGE (n:Concept {id: '리다이렉트_제거'})
SET     n.name = '리다이렉트 제거',
    n.name_kr = '리다이렉트 제거',
    n.domain = 'SV',
    n.definition = '주소 뒤에 슬래시 제거, 직접적인 웹 사이트 연결';

// --- 관계 ---

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '기술요소_-_uddi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'sopa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'rest'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'wsdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'json'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Technology {id: 'http_요청을_최소화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Technology {id: '헤더에_만료기간_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'css_expression_지양'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'gzip_컴포넌트_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '자바스크립트_최소화_및_중복_제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '리다이렉트_제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Document {id: 'SV_006'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소_-_uddi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sopa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rest'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wsdl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'json'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_요청을_최소화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '헤더에_만료기간_추가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'css_expression_지양'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gzip_컴포넌트_활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바스크립트_최소화_및_중복_제거'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리다이렉트_제거'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_007'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_008: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_008'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_009.1: OAS(OpenAPI Specification)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_009.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'openapi_specification'})
SET     n.name = 'OpenAPI Specification',
    n.name_kr = 'OAS',
    n.domain = 'SV',
    n.aliases = ['OpenAPI Specification', 'OAS'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'swagger'})
SET     n.name = 'Swagger',
    n.name_kr = 'Swagger',
    n.domain = 'SV',
    n.aliases = ['Swagger'];

MERGE (n:Concept {id: 'openapi_3_0'})
SET     n.name = 'OpenAPI 3.0',
    n.name_kr = 'OpenAPI 3.0',
    n.domain = 'SV',
    n.aliases = ['OpenAPI 3.0'];

MERGE (n:Concept {id: 'openapi'})
SET     n.name = 'openapi',
    n.name_kr = 'openapi',
    n.domain = 'SV',
    n.aliases = ['openapi'];

MERGE (n:Concept {id: 'info'})
SET     n.name = 'info',
    n.name_kr = 'info',
    n.domain = 'SV',
    n.aliases = ['info'];

MERGE (n:Concept {id: 'servers'})
SET     n.name = 'servers',
    n.name_kr = 'servers',
    n.domain = 'SV',
    n.aliases = ['servers'];

MERGE (n:Concept {id: 'paths'})
SET     n.name = 'paths',
    n.name_kr = 'paths',
    n.domain = 'SV',
    n.aliases = ['paths'];

MERGE (n:Concept {id: 'components'})
SET     n.name = 'components',
    n.name_kr = 'components',
    n.domain = 'SV',
    n.aliases = ['components'];

MERGE (n:Concept {id: 'security'})
SET     n.name = 'security',
    n.name_kr = 'security',
    n.domain = 'SV',
    n.aliases = ['security'];

MERGE (n:Technology {id: 'api_인증'})
SET     n.name = 'API 인증',
    n.name_kr = 'API 인증',
    n.domain = 'SV',
    n.definition = 'HTTP 기본 인증, API 키를 사용한 인증, OAuth 플로우 기반 인증, OpenID Connect 기반 인증 등 지원';

MERGE (n:Concept {id: '디자인'})
SET     n.name = '디자인',
    n.name_kr = '디자인',
    n.domain = 'SV',
    n.definition = '코드 작성 전에 리소스 및 작업을 정의하고 API를 디자인하기위한 완전한 형식을 제공';

MERGE (n:Concept {id: '문서'})
SET     n.name = '문서',
    n.name_kr = '문서',
    n.domain = 'SV',
    n.definition = '시각화하여 API를 운영 및 내부 개발자와 외부 소비자가 신속하게 API를 채택 가능';

MERGE (n:Concept {id: '클라이언트_및_서버_생성'})
SET     n.name = '클라이언트 및 서버 생성',
    n.name_kr = '클라이언트 및 서버 생성',
    n.domain = 'SV',
    n.definition = 'OAS 정의를 기반으로 서버 스텁 및 클라이언트 SDK에 대한 기반 생성';

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SV',
    n.definition = 'OAS 정의에서 테스트 케이스 생성을 자동화';

MERGE (n:Concept {id: '모니터'})
SET     n.name = '모니터',
    n.name_kr = '모니터',
    n.domain = 'SV',
    n.definition = 'OAS 생성에 정의된 작업을 사용하여 API 모니터를 생성';

MERGE (n:Technology {id: '배포'})
SET     n.name = '배포',
    n.name_kr = '배포',
    n.domain = 'SV',
    n.definition = 'AWS, IBM, Apigee, 등과 같은 주요 API 게이트웨이에 의해 지원';

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'SV',
    n.definition = 'openapi';

// --- 관계 ---

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'swagger'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'openapi_3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'openapi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'info'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'servers'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'paths'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'components'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Technology {id: 'api_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '디자인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '문서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '클라이언트_및_서버_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '모니터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Technology {id: '배포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Document {id: 'SV_009.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'openapi_specification'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swagger'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openapi_3_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openapi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'info'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'servers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paths'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'components'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'api_인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트_및_서버_생성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '배포'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_009.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_009.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_010: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_010'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_011: Enterprise 2.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_011'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'enterprise_2_0'})
SET     n.name = 'Enterprise 2.0',
    n.name_kr = 'Enterprise 2.0',
    n.domain = 'SV',
    n.aliases = ['Enterprise 2.0'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'enterprise_2_0'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'enterprise_2_0'})
MERGE (b:Document {id: 'SV_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'enterprise_2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_012: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_012'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_013: Cookies
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_013'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cookies'})
SET     n.name = 'Cookies',
    n.name_kr = 'Cookies',
    n.domain = 'SV',
    n.aliases = ['Cookies'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'client_server_side'})
SET     n.name = 'Client/Server Side',
    n.name_kr = 'Client/Server Side',
    n.domain = 'SV',
    n.aliases = ['Client/Server Side'];

MERGE (n:Concept {id: '영구쿠키'})
SET     n.name = '영구쿠키',
    n.name_kr = '영구쿠키',
    n.domain = 'SV';

MERGE (n:Concept {id: '세션_쿠키'})
SET     n.name = '세션 쿠키',
    n.name_kr = '세션 쿠키',
    n.domain = 'SV';

MERGE (n:Concept {id: 'set_cookie'})
SET     n.name = 'Set-cookie',
    n.name_kr = 'Set-cookie',
    n.domain = 'SV',
    n.aliases = ['Set-cookie'];

// --- 관계 ---

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Concept {id: 'client_server_side'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Concept {id: '영구쿠키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Concept {id: '세션_쿠키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Concept {id: 'set_cookie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Document {id: 'SV_013'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cookies'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client_server_side'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영구쿠키'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세션_쿠키'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'set_cookie'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_014: Dark Web
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_014'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'dark_web'})
SET     n.name = 'Dark Web',
    n.name_kr = 'Dark Web',
    n.domain = 'SV',
    n.aliases = ['Dark Web'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '다크웹'})
SET     n.name = '다크웹',
    n.name_kr = '다크웹',
    n.domain = 'SV';

MERGE (n:Concept {id: '범죄'})
SET     n.name = '범죄',
    n.name_kr = '범죄',
    n.domain = 'SV';

MERGE (n:Concept {id: '딥웹'})
SET     n.name = '딥웹',
    n.name_kr = '딥웹',
    n.domain = 'SV';

MERGE (n:Concept {id: 'tor_nw'})
SET     n.name = 'Tor NW',
    n.name_kr = 'Tor NW',
    n.domain = 'SV',
    n.aliases = ['Tor NW'];

MERGE (n:Concept {id: 'onion_router'})
SET     n.name = 'Onion router',
    n.name_kr = 'Onion router',
    n.domain = 'SV',
    n.aliases = ['Onion router'];

MERGE (n:Concept {id: '접속허가'})
SET     n.name = '접속허가',
    n.name_kr = '접속허가',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '다크웹'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Concept {id: '범죄'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Concept {id: '딥웹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Concept {id: 'tor_nw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Concept {id: 'onion_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Concept {id: '접속허가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Document {id: 'SV_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dark_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다크웹'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범죄'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥웹'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tor_nw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onion_router'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속허가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_015: Deep Web
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_015'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'deep_web'})
SET     n.name = 'Deep Web',
    n.name_kr = 'Deep Web',
    n.domain = 'SV',
    n.aliases = ['Deep Web'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deep_web'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deep_web'})
MERGE (b:Document {id: 'SV_015'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deep_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_016: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_016'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_017: 검색엔진
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_017'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'search_engine'})
SET     n.name = 'Search Engine',
    n.name_kr = '검색엔진',
    n.domain = 'SV',
    n.aliases = ['검색엔진'];

MERGE (n:Concept {id: 'crawler'})
SET     n.name = 'Crawler',
    n.name_kr = 'Crawler',
    n.domain = 'SV',
    n.aliases = ['Crawler'];

MERGE (n:Concept {id: 'indexer'})
SET     n.name = 'Indexer',
    n.name_kr = 'Indexer',
    n.domain = 'SV',
    n.aliases = ['Indexer'];

MERGE (n:Concept {id: 'database'})
SET     n.name = 'Database',
    n.name_kr = 'Database',
    n.domain = 'SV',
    n.aliases = ['Database'];

MERGE (n:Concept {id: 'searcher'})
SET     n.name = 'Searcher',
    n.name_kr = 'Searcher',
    n.domain = 'SV',
    n.aliases = ['Searcher'];

MERGE (n:Concept {id: 'query_manager'})
SET     n.name = 'Query Manager',
    n.name_kr = 'Query Manager',
    n.domain = 'SV',
    n.aliases = ['Query Manager'];

MERGE (n:Concept {id: 'filter'})
SET     n.name = 'Filter',
    n.name_kr = 'Filter',
    n.domain = 'SV',
    n.aliases = ['Filter'];

MERGE (n:Concept {id: '자연어_처리'})
SET     n.name = '자연어 처리',
    n.name_kr = '자연어 처리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'n-gram_방식_방법'})
SET     n.name = 'N-gram 방식 방법',
    n.name_kr = 'N-gram 방식 방법',
    n.domain = 'SV',
    n.definition = '글자를 겹쳐서 색인어 추출하는 방법 - 사례) 정보검색시스템을 : “정보”, “보검”, “검색”, “색시”, “시스”, “스템”, “템을”';

MERGE (n:Metric {id: 'n-gram_방식_장점'})
SET     n.name = 'N-gram 방식 장점',
    n.name_kr = 'N-gram 방식 장점',
    n.domain = 'SV',
    n.definition = '재현율 100%로 빠지는 것 없이 모두 찾아냄, 사전에 없는 신조어 색인 가능 - 색인어 크기가 일정하여 색인어 리스트 구성이 용이';

MERGE (n:Concept {id: 'n-gram_방식_단점'})
SET     n.name = 'N-gram 방식 단점',
    n.name_kr = 'N-gram 방식 단점',
    n.domain = 'SV',
    n.definition = '틀린 내용 다수 포함, 검색품질 저하, 색인어리스트 크기가 커짐';

MERGE (n:Metric {id: 'n-gram_방식_적용'})
SET     n.name = 'N-gram 방식 적용',
    n.name_kr = 'N-gram 방식 적용',
    n.domain = 'SV',
    n.definition = '형태소분석의 오류로 인한 성능 저하시 사용 - 문서의 건수가 적고, 재현율이 최우선시 되는 경우 사용';

// --- 관계 ---

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'search_engine'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'crawler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'indexer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'database'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'searcher'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'query_manager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'filter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: '자연어_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'n-gram_방식_방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Metric {id: 'n-gram_방식_장점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Concept {id: 'n-gram_방식_단점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Metric {id: 'n-gram_방식_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Document {id: 'SV_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'search_engine'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crawler'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'indexer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'database'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'searcher'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'query_manager'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'filter'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자연어_처리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n-gram_방식_방법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'n-gram_방식_장점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n-gram_방식_단점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'n-gram_방식_적용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_018: 추천시스템
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_018'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '추천시스템'})
SET     n.name = '추천시스템',
    n.name_kr = '추천시스템',
    n.domain = 'SV';

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: '통계'})
SET     n.name = '통계',
    n.name_kr = '통계',
    n.domain = 'SV';

MERGE (n:Concept {id: '콘텐츠_기반'})
SET     n.name = '콘텐츠 기반',
    n.name_kr = '콘텐츠 기반',
    n.domain = 'SV';

MERGE (n:Concept {id: '협업_필터링'})
SET     n.name = '협업 필터링',
    n.name_kr = '협업 필터링',
    n.domain = 'SV';

MERGE (n:Concept {id: '딥러닝_융합'})
SET     n.name = '딥러닝 융합',
    n.name_kr = '딥러닝 융합',
    n.domain = 'SV';

MERGE (n:Concept {id: '연관'})
SET     n.name = '연관',
    n.name_kr = '연관',
    n.domain = 'SV';

MERGE (n:Concept {id: '다양'})
SET     n.name = '다양',
    n.name_kr = '다양',
    n.domain = 'SV';

MERGE (n:Concept {id: 'novelty'})
SET     n.name = '새로움',
    n.name_kr = '새로움',
    n.domain = 'SV';

MERGE (n:Concept {id: 'seredipity'})
SET     n.name = '불예측성',
    n.name_kr = '불예측성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'coverage'})
SET     n.name = '커버리지',
    n.name_kr = '커버리지',
    n.domain = 'SV';

MERGE (n:Concept {id: '비즈니스_또는_서비스_관점'})
SET     n.name = '비즈니스 또는 서비스 관점',
    n.name_kr = '비즈니스 또는 서비스 관점',
    n.domain = 'SV',
    n.definition = 'PV(Page View)';

MERGE (n:Concept {id: 'click_through_rate'})
SET     n.name = 'Click Through Rate',
    n.name_kr = 'CTR',
    n.domain = 'SV',
    n.definition = '노출된 광고에 대해서 사용자가 얼마나 클릭을 했느냐를 의미하는 정량적 값으로 일반적인 공식은 클릭수를 노출수로 나눈 백분율 값',
    n.aliases = ['Click Through Rate', 'CTR'];

MERGE (n:Concept {id: '품질_관점에서의_평가지표'})
SET     n.name = '품질 관점에서의 평가지표',
    n.name_kr = '품질 관점에서의 평가지표',
    n.domain = 'SV',
    n.definition = '연관성(relevance)';

MERGE (n:Concept {id: 'diversity'})
SET     n.name = 'diversity',
    n.name_kr = '다양성',
    n.domain = 'SV',
    n.definition = '추천된 Top-k개의 아이템들이 얼마나 다양한 종류로 구성되었는가?',
    n.aliases = ['diversity', '다양성'];

// --- 관계 ---

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '통계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '콘텐츠_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '협업_필터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '딥러닝_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '연관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '다양'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: 'novelty'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: 'seredipity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: 'coverage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '비즈니스_또는_서비스_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: 'click_through_rate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: '품질_관점에서의_평가지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Concept {id: 'diversity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Document {id: 'SV_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '추천시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠_기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협업_필터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥러닝_융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'novelty'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'seredipity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coverage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_또는_서비스_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'click_through_rate'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_관점에서의_평가지표'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'diversity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_019.1: 협업필터링(Collaborative Filtering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_019.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'collaborative_filtering'})
SET     n.name = 'Collaborative Filtering',
    n.name_kr = '협업필터링',
    n.domain = 'SV',
    n.aliases = ['Collaborative Filtering', '협업필터링'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: '기억기반'})
SET     n.name = '기억기반',
    n.name_kr = '기억기반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'user_based'})
SET     n.name = 'User-Based',
    n.name_kr = 'User-Based',
    n.domain = 'SV',
    n.aliases = ['User-Based'];

MERGE (n:Concept {id: 'item_based'})
SET     n.name = 'Item-Based',
    n.name_kr = 'Item-Based',
    n.domain = 'SV',
    n.aliases = ['Item-Based'];

MERGE (n:Concept {id: '모델기반'})
SET     n.name = '모델기반',
    n.name_kr = '모델기반',
    n.domain = 'SV';

MERGE (n:Concept {id: '유사도'})
SET     n.name = '유사도',
    n.name_kr = '유사도',
    n.domain = 'SV';

MERGE (n:Concept {id: '유클리디안'})
SET     n.name = '유클리디안',
    n.name_kr = '유클리디안',
    n.domain = 'SV';

MERGE (n:Concept {id: '피어슨'})
SET     n.name = '피어슨',
    n.name_kr = '피어슨',
    n.domain = 'SV';

MERGE (n:Concept {id: '코사인'})
SET     n.name = '코사인',
    n.name_kr = '코사인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'jaccard_similarity'})
SET     n.name = '자카드 유사도',
    n.name_kr = '자카드 유사도',
    n.domain = 'SV';

MERGE (n:Concept {id: '사용자기반_협업필터링'})
SET     n.name = '사용자기반 협업필터링',
    n.name_kr = '사용자기반 협업필터링',
    n.domain = 'SV';

MERGE (n:Concept {id: '아이템기반_협업필터링'})
SET     n.name = '아이템기반 협업필터링',
    n.name_kr = '아이템기반 협업필터링',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '기억기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: 'user_based'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: 'item_based'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '모델기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '유사도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '유클리디안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '피어슨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '코사인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: 'jaccard_similarity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사용자기반_협업필터링'})
MERGE (b:Concept {id: '아이템기반_협업필터링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '사용자기반_협업필터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Concept {id: '아이템기반_협업필터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Document {id: 'SV_019.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'collaborative_filtering'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기억기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user_based'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'item_based'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유사도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유클리디안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피어슨'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코사인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jaccard_similarity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자기반_협업필터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아이템기반_협업필터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_019.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_019.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_020: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_020'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_021: TF-IDF(Term Frequency - Inverse Document Frequency)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_021'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'term_frequency_inverse_document_frequency'})
SET     n.name = 'Term Frequency - Inverse Document Frequency',
    n.name_kr = 'TF-IDF',
    n.domain = 'SV',
    n.aliases = ['Term Frequency - Inverse Document Frequency', 'TF-IDF'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Document {id: 'SV_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_022: Folksonomy
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_022'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'folksonomy'})
SET     n.name = 'Folksonomy',
    n.name_kr = 'Folksonomy',
    n.domain = 'SV',
    n.aliases = ['Folksonomy'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: '참여'})
SET     n.name = '참여',
    n.name_kr = '참여',
    n.domain = 'SV';

MERGE (n:Concept {id: '직관적'})
SET     n.name = '직관적',
    n.name_kr = '직관적',
    n.domain = 'SV';

MERGE (n:Concept {id: '개인화'})
SET     n.name = '개인화',
    n.name_kr = '개인화',
    n.domain = 'SV';

MERGE (n:Concept {id: '소셜태깅'})
SET     n.name = '소셜태깅',
    n.name_kr = '소셜태깅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'user'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'SV';

MERGE (n:Concept {id: 'tags'})
SET     n.name = '태그',
    n.name_kr = '태그',
    n.domain = 'SV';

MERGE (n:Concept {id: 'resource'})
SET     n.name = 'Resource',
    n.name_kr = 'Resource',
    n.domain = 'SV',
    n.aliases = ['Resource'];

MERGE (n:Concept {id: 'taxonomy'})
SET     n.name = 'Taxonomy',
    n.name_kr = 'Taxonomy',
    n.domain = 'SV',
    n.aliases = ['Taxonomy'];

// --- 관계 ---

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: '참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: '직관적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: '개인화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: '소셜태깅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: 'tags'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: 'resource'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: 'taxonomy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Concept {id: 'taxonomy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Document {id: 'SV_022'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'folksonomy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직관적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소셜태깅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tags'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'taxonomy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_023: FTR (Full Text Retrieval)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_023'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'full_text_retrieval'})
SET     n.name = 'Full Text Retrieval',
    n.name_kr = 'FTR',
    n.domain = 'SV',
    n.aliases = ['Full Text Retrieval', 'FTR'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ftr'})
SET     n.name = 'FTR',
    n.name_kr = 'FTR',
    n.domain = 'SV',
    n.aliases = ['FTR'];

// --- 관계 ---

MERGE (a:Concept {id: 'ftr'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'full_text_retrieval'})
MERGE (b:Document {id: 'SV_023'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'full_text_retrieval'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ftr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_024: 에이전트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_024'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'agent'})
SET     n.name = 'Agent',
    n.name_kr = '에이전트',
    n.domain = 'SV',
    n.aliases = ['에이전트'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: '처리_모듈'})
SET     n.name = '처리 모듈',
    n.name_kr = '처리 모듈',
    n.domain = 'SV';

MERGE (n:Concept {id: '지식_모듈'})
SET     n.name = '지식 모듈',
    n.name_kr = '지식 모듈',
    n.domain = 'SV';

MERGE (n:Concept {id: '통신_모듈'})
SET     n.name = '통신 모듈',
    n.name_kr = '통신 모듈',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'agent'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Concept {id: '처리_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Concept {id: '지식_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Concept {id: '통신_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Document {id: 'SV_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_025: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_025'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_026.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_026.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_026.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_026.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_027: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_027'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_028: RDF(Resource Description Framework)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_028'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'resource_description_framework'})
SET     n.name = 'Resource Description Framework',
    n.name_kr = 'RDF',
    n.domain = 'SV',
    n.aliases = ['Resource Description Framework', 'RDF'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['XML'];

MERGE (n:Concept {id: '표준화_가이드'})
SET     n.name = '표준화 가이드',
    n.name_kr = '표준화 가이드',
    n.domain = 'SV';

MERGE (n:Concept {id: '시멘틱_웹'})
SET     n.name = '시멘틱 웹',
    n.name_kr = '시멘틱 웹',
    n.domain = 'SV';

MERGE (n:Concept {id: 'resource:'})
SET     n.name = 'Resource:',
    n.name_kr = 'Resource:',
    n.domain = 'SV',
    n.definition = 'RDF로 기술되는 HTML 문서 전체 혹은 XML의 하나의 Element';

MERGE (n:Concept {id: 'property:'})
SET     n.name = 'Property:',
    n.name_kr = 'Property:',
    n.domain = 'SV',
    n.definition = 'Resource로 기술할 수 있는 특징, 속성, 관계 등';

MERGE (n:Concept {id: 'statements:'})
SET     n.name = 'Statements:',
    n.name_kr = 'Statements:',
    n.domain = 'SV',
    n.definition = 'Resource가 가질 수 있는 value';

// --- 관계 ---

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: '표준화_가이드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: '시멘틱_웹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: 'resource:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: 'property:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Concept {id: 'statements:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Document {id: 'SV_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'resource_description_framework'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화_가이드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시멘틱_웹'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource:'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'property:'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'statements:'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_029: Semantic Web
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_029'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'semantic_web'})
SET     n.name = 'Semantic Web',
    n.name_kr = 'Semantic Web',
    n.domain = 'SV',
    n.aliases = ['Semantic Web'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'rdf'})
SET     n.name = 'RDF',
    n.name_kr = 'RDF',
    n.domain = 'SV',
    n.aliases = ['RDF'];

MERGE (n:Concept {id: 'ontology'})
SET     n.name = 'Ontology',
    n.name_kr = 'Ontology',
    n.domain = 'SV',
    n.aliases = ['Ontology'];

MERGE (n:Concept {id: 'agent'})
SET     n.name = 'Agent',
    n.name_kr = 'Agent',
    n.domain = 'SV',
    n.aliases = ['Agent'];

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['XML'];

MERGE (n:Concept {id: '개인'})
SET     n.name = '개인',
    n.name_kr = '개인',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: 'rdf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: 'ontology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: 'agent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Concept {id: '개인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Document {id: 'SV_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'semantic_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdf'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ontology'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_030: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_030'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_031: SPARQL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_031'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'sparql'})
SET     n.name = 'SPARQL',
    n.name_kr = 'SPARQL',
    n.domain = 'SV',
    n.aliases = ['SPARQL'];

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['XML'];

MERGE (n:Concept {id: 'json'})
SET     n.name = 'JSON',
    n.name_kr = 'JSON',
    n.domain = 'SV',
    n.aliases = ['JSON'];

MERGE (n:Concept {id: 'sparql_엔진'})
SET     n.name = 'SPARQL 엔진',
    n.name_kr = 'SPARQL 엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'pdf'})
SET     n.name = 'PDF',
    n.name_kr = 'PDF',
    n.domain = 'SV',
    n.aliases = ['PDF'];

MERGE (n:Concept {id: 'grddl'})
SET     n.name = 'GRDDL',
    n.name_kr = 'GRDDL',
    n.domain = 'SV',
    n.aliases = ['GRDDL'];

MERGE (n:Concept {id: 'sql_sparql'})
SET     n.name = 'SQL-SPARQL',
    n.name_kr = 'SQL-SPARQL',
    n.domain = 'SV',
    n.aliases = ['SQL-SPARQL'];

MERGE (n:Concept {id: 'pdfa'})
SET     n.name = 'PDFa',
    n.name_kr = 'PDFa',
    n.domain = 'SV',
    n.aliases = ['PDFa'];

// --- 관계 ---

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'json'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'sparql_엔진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'pdf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'grddl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'sql_sparql'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Concept {id: 'pdfa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Document {id: 'SV_031'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'json'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sparql_엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdf'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grddl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql_sparql'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdfa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_032: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_032'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_034: 데이터 리터러시(Data Literacy)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_034'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'data_literacy'})
SET     n.name = 'Data Literacy',
    n.name_kr = '데이터 리터러시',
    n.domain = 'SV',
    n.aliases = ['Data Literacy', '데이터 리터러시'];

MERGE (n:Concept {id: '출제_예상_토픽'})
SET     n.name = '출제 예상 토픽',
    n.name_kr = '출제 예상 토픽',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터_이해'})
SET     n.name = '데이터 이해',
    n.name_kr = '데이터 이해',
    n.domain = 'SV';

MERGE (n:Concept {id: '해석'})
SET     n.name = '해석',
    n.name_kr = '해석',
    n.domain = 'SV';

MERGE (n:Concept {id: '인사이트'})
SET     n.name = '인사이트',
    n.name_kr = '인사이트',
    n.domain = 'SV';

MERGE (n:Concept {id: '활용'})
SET     n.name = '활용',
    n.name_kr = '활용',
    n.domain = 'SV';

MERGE (n:Concept {id: '시각화'})
SET     n.name = '시각화',
    n.name_kr = '시각화',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '데이터_이해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '해석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '인사이트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Concept {id: '시각화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Document {id: 'SV_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_literacy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제_예상_토픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_이해'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인사이트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시각화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_035: 디지털 발자국(Digital Footprint)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_035'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_footprint'})
SET     n.name = 'Digital Footprint',
    n.name_kr = '디지털 발자국',
    n.domain = 'SV',
    n.aliases = ['Digital Footprint', '디지털 발자국'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: '옵트아웃_방식'})
SET     n.name = '옵트아웃 방식',
    n.name_kr = '옵트아웃 방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털세탁소'})
SET     n.name = '디지털세탁소',
    n.name_kr = '디지털세탁소',
    n.domain = 'SV';

MERGE (n:Concept {id: '잊혀질_권리'})
SET     n.name = '잊혀질 권리',
    n.name_kr = '잊혀질 권리',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털장례식'})
SET     n.name = '디지털장례식',
    n.name_kr = '디지털장례식',
    n.domain = 'SV';

MERGE (n:Concept {id: '긍정적_활용'})
SET     n.name = '긍정적 활용',
    n.name_kr = '긍정적 활용',
    n.domain = 'SV',
    n.definition = '맞춤형 마케팅 전략';

MERGE (n:Concept {id: '범죄자_검거'})
SET     n.name = '범죄자 검거',
    n.name_kr = '범죄자 검거',
    n.domain = 'SV',
    n.definition = '인터넷을 통한 명예훼손 범죄자의 게시글 혹은 계정 이용 내역을 근거로 추적분석 과정에 활용';

MERGE (n:Concept {id: '부정적_활용'})
SET     n.name = '부정적 활용',
    n.name_kr = '부정적 활용',
    n.domain = 'SV',
    n.definition = '개인정보 유출';

MERGE (n:Concept {id: '스팸성_광고_노출'})
SET     n.name = '스팸성 광고 노출',
    n.name_kr = '스팸성 광고 노출',
    n.domain = 'SV',
    n.definition = '사용자가 본인의 웹서핑 정보 제공에 거부하지 않으면 동의한 것으로 간주하는 ‘옵트아웃 방식’의 정보 제공 동의 절차로 인한 개인 정보 활용';

MERGE (n:Concept {id: '제도적_방안'})
SET     n.name = '제도적 방안',
    n.name_kr = '제도적 방안',
    n.domain = 'SV',
    n.definition = '옵트아웃 방식 의 제제';

MERGE (n:Concept {id: '개인정보_활용_목적_공유'})
SET     n.name = '개인정보 활용 목적 공유',
    n.name_kr = '개인정보 활용 목적 공유',
    n.domain = 'SV',
    n.definition = '개인정보 보호법을 근거로 수집되는 개인정보의 활용 내역 의 구체적 내용과 명확한 목적의 사용자 전달';

MERGE (n:Concept {id: '개인적_방안'})
SET     n.name = '개인적 방안',
    n.name_kr = '개인적 방안',
    n.domain = 'SV',
    n.definition = '업로드 유의';

MERGE (n:Concept {id: '디지털_세탁소'})
SET     n.name = '디지털 세탁소',
    n.name_kr = '디지털 세탁소',
    n.domain = 'SV',
    n.definition = '일부 유명인의 경우 자신의 디지털 흔적의 삭제의 한계로 전문적으로 삭제를 대행하는 디지털 세탁소 서비스 활용';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '옵트아웃_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '디지털세탁소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '잊혀질_권리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '디지털장례식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '긍정적_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '범죄자_검거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '부정적_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '스팸성_광고_노출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '제도적_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '개인정보_활용_목적_공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '개인적_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Concept {id: '디지털_세탁소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Document {id: 'SV_035'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_footprint'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '옵트아웃_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털세탁소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잊혀질_권리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털장례식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긍정적_활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범죄자_검거'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정적_활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스팸성_광고_노출'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도적_방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_활용_목적_공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인적_방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_세탁소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_037: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_037'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_038: DOM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_038'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'dom'})
SET     n.name = 'DOM',
    n.name_kr = 'DOM',
    n.domain = 'SV',
    n.aliases = ['DOM'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

MERGE (n:Concept {id: '트리_구조'})
SET     n.name = '트리 구조',
    n.name_kr = '트리 구조',
    n.domain = 'SV';

MERGE (n:Concept {id: '메모리에_올려_놓고_해석'})
SET     n.name = '메모리에 올려 놓고 해석',
    n.name_kr = '메모리에 올려 놓고 해석',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'dom'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Concept {id: '트리_구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Concept {id: '메모리에_올려_놓고_해석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Document {id: 'SV_038'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리_구조'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리에_올려_놓고_해석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_039: SAX(Simple API for XML)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_039'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'simple_api_for_xml'})
SET     n.name = 'Simple API for XML',
    n.name_kr = 'SAX',
    n.domain = 'SV',
    n.aliases = ['Simple API for XML', 'SAX'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

MERGE (n:Concept {id: 'sax'})
SET     n.name = 'SAX',
    n.name_kr = 'SAX',
    n.domain = 'SV',
    n.aliases = ['SAX'];

MERGE (n:Concept {id: 'event_driven'})
SET     n.name = 'Event-driven',
    n.name_kr = 'Event-driven',
    n.domain = 'SV',
    n.aliases = ['Event-driven'];

MERGE (n:Concept {id: '읽기전용'})
SET     n.name = '읽기전용',
    n.name_kr = '읽기전용',
    n.domain = 'SV';

MERGE (n:Concept {id: 'dtd'})
SET     n.name = 'DTD',
    n.name_kr = 'DTD',
    n.domain = 'SV',
    n.aliases = ['DTD'];

MERGE (n:Concept {id: '속도빠름'})
SET     n.name = '속도빠름',
    n.name_kr = '속도빠름',
    n.domain = 'SV';

MERGE (n:Concept {id: 'dom'})
SET     n.name = 'DOM',
    n.name_kr = 'DOM',
    n.domain = 'SV',
    n.aliases = ['DOM'];

// --- 관계 ---

MERGE (a:Concept {id: 'sax'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: 'event_driven'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: '읽기전용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: 'dtd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: '속도빠름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Concept {id: 'sax'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: 'dom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Concept {id: 'sax'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Document {id: 'SV_039'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'simple_api_for_xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sax'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_driven'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '읽기전용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dtd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속도빠름'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_040: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_040'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_041: XML Schema
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_041'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'xml_schema'})
SET     n.name = 'XML Schema',
    n.name_kr = 'XML Schema',
    n.domain = 'SV',
    n.aliases = ['XML Schema'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

MERGE (n:Concept {id: 'name_space'})
SET     n.name = 'Name Space',
    n.name_kr = 'Name Space',
    n.domain = 'SV',
    n.aliases = ['Name Space'];

MERGE (n:Concept {id: 'dtd'})
SET     n.name = 'DTD',
    n.name_kr = 'DTD',
    n.domain = 'SV',
    n.aliases = ['DTD'];

// --- 관계 ---

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Concept {id: 'name_space'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Concept {id: 'dtd'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Concept {id: 'dtd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Document {id: 'SV_041'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xml_schema'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'name_space'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dtd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_042: XLL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_042'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'xll'})
SET     n.name = 'XLL',
    n.name_kr = 'XLL',
    n.domain = 'SV',
    n.aliases = ['XLL'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

MERGE (n:Concept {id: 'hyper_link'})
SET     n.name = 'Hyper Link',
    n.name_kr = 'Hyper Link',
    n.domain = 'SV',
    n.aliases = ['Hyper Link'];

// --- 관계 ---

MERGE (a:Concept {id: 'xll'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hyper_link'})
MERGE (b:Concept {id: 'xll'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'xll'})
MERGE (b:Concept {id: 'hyper_link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xll'})
MERGE (b:Document {id: 'SV_042'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xll'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hyper_link'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_043: XPath
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_043'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'xpath'})
SET     n.name = 'XPath',
    n.name_kr = 'XPath',
    n.domain = 'SV',
    n.aliases = ['XPath'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

// --- 관계 ---

MERGE (a:Concept {id: 'xpath'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xpath'})
MERGE (b:Document {id: 'SV_043'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xpath'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_044: XQuery
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_044'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'xquery'})
SET     n.name = 'XQuery',
    n.name_kr = 'XQuery',
    n.domain = 'SV',
    n.aliases = ['XQuery'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

// --- 관계 ---

MERGE (a:Concept {id: 'xquery'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xquery'})
MERGE (b:Document {id: 'SV_044'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xquery'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_045: VXML
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_045'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'vxml'})
SET     n.name = 'VXML',
    n.name_kr = 'VXML',
    n.domain = 'SV',
    n.aliases = ['VXML'];

MERGE (n:Concept {id: 'b2b'})
SET     n.name = 'B2B',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['B2B', 'XML'];

MERGE (n:Concept {id: '양방향응답시스템'})
SET     n.name = '양방향응답시스템',
    n.name_kr = '양방향응답시스템',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SV',
    n.aliases = ['XML'];

MERGE (n:Concept {id: '응용분야'})
SET     n.name = '응용분야',
    n.name_kr = '응용분야',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Concept {id: 'b2b'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Concept {id: '양방향응답시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Concept {id: '응용분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Document {id: 'SV_045'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vxml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b2b'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향응답시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용분야'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_047: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_047'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_048: 자바스크립트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_048'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '자바스크립트'})
SET     n.name = '자바스크립트',
    n.name_kr = '자바스크립트',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'html'})
SET     n.name = 'Html',
    n.name_kr = 'Html',
    n.domain = 'SV',
    n.aliases = ['Html'];

MERGE (n:Concept {id: 'interactive'})
SET     n.name = 'Interactive',
    n.name_kr = 'Interactive',
    n.domain = 'SV',
    n.aliases = ['Interactive'];

MERGE (n:Concept {id: 'json'})
SET     n.name = 'JSON',
    n.name_kr = 'JSON',
    n.domain = 'SV',
    n.aliases = ['JSON'];

// --- 관계 ---

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: '자바스크립트'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: 'html'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: 'interactive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: 'json'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Document {id: 'SV_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interactive'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'json'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_049: 자바스크립트 프레임워크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_049'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '자바스크립트_프레임워크'})
SET     n.name = '자바스크립트 프레임워크',
    n.name_kr = '자바스크립트 프레임워크',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '자바스크립트'})
SET     n.name = '자바스크립트',
    n.name_kr = '자바스크립트',
    n.domain = 'SV';

MERGE (n:Concept {id: 'angularjs'})
SET     n.name = 'Angularjs',
    n.name_kr = 'Angularjs',
    n.domain = 'SV',
    n.aliases = ['Angularjs'];

MERGE (n:Concept {id: 'backbone_js'})
SET     n.name = 'Backbone.js',
    n.name_kr = 'Backbone.js',
    n.domain = 'SV',
    n.aliases = ['Backbone.js'];

MERGE (n:Concept {id: 'ember_js'})
SET     n.name = 'Ember.js',
    n.name_kr = 'Ember.js',
    n.domain = 'SV',
    n.aliases = ['Ember.js'];

MERGE (n:Concept {id: 'knockout_js'})
SET     n.name = 'Knockout.js',
    n.name_kr = 'Knockout.js',
    n.domain = 'SV',
    n.aliases = ['Knockout.js'];

MERGE (n:Technology {id: 'angular'})
SET     n.name = 'Angular',
    n.name_kr = 'Angular',
    n.domain = 'SV',
    n.aliases = ['Angular'];

MERGE (n:Technology {id: 'react'})
SET     n.name = 'React',
    n.name_kr = 'React',
    n.domain = 'SV',
    n.aliases = ['React'];

MERGE (n:Technology {id: 'vue'})
SET     n.name = 'Vue',
    n.name_kr = 'Vue',
    n.domain = 'SV',
    n.aliases = ['Vue'];

// --- 관계 ---

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Concept {id: '자바스크립트'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Concept {id: 'angularjs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Concept {id: 'backbone_js'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Concept {id: 'ember_js'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Concept {id: 'knockout_js'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'angular'})
MERGE (b:Technology {id: 'react'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'angular'})
MERGE (b:Technology {id: 'vue'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Technology {id: 'angular'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'react'})
MERGE (b:Technology {id: 'vue'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Technology {id: 'react'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Technology {id: 'vue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Document {id: 'SV_049'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자바스크립트_프레임워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'angularjs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backbone_js'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ember_js'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'knockout_js'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'angular'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'react'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vue'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_050: SPA(Single Page Web Application)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_050'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'single_page_web_application'})
SET     n.name = 'Single Page Web Application',
    n.name_kr = 'SPA',
    n.domain = 'SV',
    n.aliases = ['Single Page Web Application', 'SPA'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'spa'})
SET     n.name = 'SPA',
    n.name_kr = 'SPA',
    n.domain = 'SV',
    n.aliases = ['SPA'];

MERGE (n:Concept {id: '고려사항_상세'})
SET     n.name = '고려사항 상세',
    n.name_kr = '고려사항 상세',
    n.domain = 'SV';

MERGE (n:Concept {id: '대응_방안'})
SET     n.name = '대응 방안',
    n.name_kr = '대응 방안',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'spa'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '고려사항_상세'})
MERGE (b:Concept {id: '대응_방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'single_page_web_application'})
MERGE (b:Concept {id: '고려사항_상세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'single_page_web_application'})
MERGE (b:Concept {id: '대응_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'single_page_web_application'})
MERGE (b:Document {id: 'SV_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'single_page_web_application'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항_상세'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응_방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_051: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_051'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_053: Node.js
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_053'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Technology {id: 'node_js'})
SET     n.name = 'Node.js',
    n.name_kr = 'Node.js',
    n.domain = 'SV',
    n.aliases = ['Node.js'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '자바스크립트'})
SET     n.name = '자바스크립트',
    n.name_kr = '자바스크립트',
    n.domain = 'SV';

MERGE (n:Concept {id: '싱글쓰레드'})
SET     n.name = '싱글쓰레드',
    n.name_kr = '싱글쓰레드',
    n.domain = 'SV';

MERGE (n:Concept {id: '비동기처리'})
SET     n.name = '비동기처리',
    n.name_kr = '비동기처리',
    n.domain = 'SV';

MERGE (n:Concept {id: '이벤트루프'})
SET     n.name = '이벤트루프',
    n.name_kr = '이벤트루프',
    n.domain = 'SV';

MERGE (n:Concept {id: 'v8크롬_자바스크립트_엔진'})
SET     n.name = 'V8크롬 자바스크립트 엔진',
    n.name_kr = 'V8크롬 자바스크립트 엔진',
    n.domain = 'SV';

MERGE (n:Concept {id: 'non_blocking_i_o'})
SET     n.name = 'Non-Blocking I/O',
    n.name_kr = 'Non-Blocking I/O',
    n.domain = 'SV',
    n.aliases = ['Non-Blocking I/O'];

MERGE (n:Concept {id: '비동기_i/o'})
SET     n.name = '비동기 I/O',
    n.name_kr = '비동기 I/O',
    n.domain = 'SV',
    n.definition = 'Node.js에서의 I/O는 블록되지 않아, 파일을 읽을 때 프로그램이 파일을 모두 읽을 때까지 기다리지 않음 IoT 기기에서도 I/O를 많이 사용하는데, 센서 값 혹은 액추에어터 동작들은 모두 I/O를 통해 이뤄짐';

MERGE (n:Concept {id: '이벤트_기반_프로그램'})
SET     n.name = '이벤트 기반 프로그램',
    n.name_kr = '이벤트 기반 프로그램',
    n.domain = 'SV',
    n.definition = 'Node.js는 I/O가 완료됐을 때 개발자가 미리 등록한 핸들러를 실행하여 싱글 스레드이면서도 고성능 유지함';

MERGE (n:Concept {id: '실시간_시스템에_사용_어려움'})
SET     n.name = '실시간 시스템에 사용 어려움',
    n.name_kr = '실시간 시스템에 사용 어려움',
    n.domain = 'SV',
    n.definition = '어떤 API를 실행하기 위해 얼마나 많은 시간이 소요될지 예측하기 어렵고 시간이 일정하지도 않음.';

MERGE (n:Concept {id: '핵심_기능'})
SET     n.name = '핵심 기능',
    n.name_kr = '핵심 기능',
    n.domain = 'SV',
    n.definition = '단일 스레드 (Single Thread)';

MERGE (n:Concept {id: 'event_loop'})
SET     n.name = 'Event Loop',
    n.name_kr = '이벤트 루프',
    n.domain = 'SV',
    n.definition = 'Node.js에서 비동기 작업을 할 때 사용되는 것으로 이벤트 발생 시 호출할 콜백 함수들을 관리하고, 호출된 콜백 함수의 실행 순서를 결정 - 5개(timers, pending callbacks, idle, prepare, poll, check, close callbacks) Phase로 구성',
    n.aliases = ['Event Loop', '이벤트 루프'];

MERGE (n:Technology {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'SV',
    n.definition = 'Node.js API';

MERGE (n:Technology {id: 'node_js_bindings'})
SET     n.name = 'Node.js Bindings',
    n.name_kr = 'Node.js Bindings',
    n.domain = 'SV',
    n.definition = '자바스크립트와 C/C++ 바인딩 레이어',
    n.aliases = ['Node.js Bindings'];

MERGE (n:Technology {id: 'node_js_standard_library'})
SET     n.name = 'Node.js Standard Library',
    n.name_kr = 'Node.js Standard Library',
    n.domain = 'SV',
    n.definition = '타이머(setTimeout), 파일시스템(fs), 네트워크 호출(http) 등의 표준 라이브러리를 지원',
    n.aliases = ['Node.js Standard Library'];

MERGE (n:Concept {id: 'v8'})
SET     n.name = 'V8',
    n.name_kr = 'V8',
    n.domain = 'SV',
    n.definition = 'Memory Heap, Call Stack, Garbage Collector로 구성되며 자바스크립트 코드를 주어진 OS의 기계 코드로 변환 - 자바스크립트 코드를 컴파일하고 실행',
    n.aliases = ['V8'];

MERGE (n:Concept {id: 'libuv'})
SET     n.name = 'libuv',
    n.name_kr = 'libuv',
    n.domain = 'SV',
    n.definition = 'Thread Pool로 구성이 되며 Event Loop, Event Queue를 처리 - 비동기 I/O 작업에 초점을 맞춘 C 라이브러리 - 구 버전에서는 libeio, libev가 libuv로 변경',
    n.aliases = ['libuv'];

MERGE (n:Concept {id: 'c_ares'})
SET     n.name = 'c-ares',
    n.name_kr = 'c-ares',
    n.domain = 'SV',
    n.definition = 'dns모듈에서 사용되는 비동기 DNS 요청을 위한 C라이브러리',
    n.aliases = ['c-ares'];

MERGE (n:Technology {id: 'llhttp'})
SET     n.name = 'llhttp',
    n.name_kr = 'llhttp',
    n.domain = 'SV',
    n.definition = 'HTTP 요청, 응답구문 분석등에 사용(http-parser 사용)',
    n.aliases = ['llhttp'];

MERGE (n:Technology {id: 'open_ssl'})
SET     n.name = 'open-ssl',
    n.name_kr = 'open-ssl',
    n.domain = 'SV',
    n.definition = 'TLS(SSL), crypto 모듈에 사용되는 암호화 함수',
    n.aliases = ['open-ssl'];

MERGE (n:Concept {id: 'zlib'})
SET     n.name = 'zlib',
    n.name_kr = 'zlib',
    n.domain = 'SV',
    n.definition = '비동기 및 스트리밍으로 압축 및 압축 해제를 담당하는 라이브러리',
    n.aliases = ['zlib'];

// --- 관계 ---

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '자바스크립트'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '싱글쓰레드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '비동기처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '이벤트루프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'v8크롬_자바스크립트_엔진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'non_blocking_i_o'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '비동기_i/o'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '이벤트_기반_프로그램'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '실시간_시스템에_사용_어려움'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: '핵심_기능'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'event_loop'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Technology {id: '구성_요소'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Technology {id: 'node_js_bindings'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Technology {id: 'node_js_standard_library'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'v8'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'libuv'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'c_ares'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Technology {id: 'llhttp'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Technology {id: 'open_ssl'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Concept {id: 'zlib'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Document {id: 'SV_053'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'node_js'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바스크립트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '싱글쓰레드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비동기처리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이벤트루프'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v8크롬_자바스크립트_엔진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_blocking_i_o'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비동기_i/o'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이벤트_기반_프로그램'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_시스템에_사용_어려움'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_loop'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '구성_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'node_js_bindings'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'node_js_standard_library'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v8'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'libuv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c_ares'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'llhttp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'open_ssl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zlib'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 264개
// 관계: 534개
// ================================================================