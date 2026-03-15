// ================================================================
// MG 도메인 (MG_151 ~ MG_200) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// MG_140: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_140'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_141: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_141'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_142: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_142'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_143: 프롭 테크(PropTech), 밀리 테크(MiliTech), 에이블 테크(AbleTech)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_143'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '융합서비스'})
SET     n.name = '융합서비스',
    n.name_kr = '융합서비스',
    n.domain = 'MG';

MERGE (n:Concept {id: '영향'})
SET     n.name = '영향',
    n.name_kr = '영향',
    n.domain = 'MG',
    n.definition = '선진국을 중심으로 부동산 산업이 제조업을 대체할 서비스산업의 핵심부문으로 재인식되면서 각국은 ICT 기술을 활용해 새로운 서비스를 창출하기 위한 공공부문의 오픈데이터 정책 추진';

MERGE (n:Concept {id: '비즈니스_영역'})
SET     n.name = '비즈니스 영역',
    n.name_kr = '비즈니스 영역',
    n.domain = 'MG';

MERGE (n:Concept {id: '영역_상세_설명'})
SET     n.name = '영역 상세 설명',
    n.name_kr = '영역 상세 설명',
    n.domain = 'MG',
    n.definition = '중개 및 임대';

MERGE (n:Concept {id: '부동산_관리'})
SET     n.name = '부동산 관리',
    n.name_kr = '부동산 관리',
    n.domain = 'MG',
    n.definition = '에너지, 사물인터넷, 센서기술 등 스마트 부동산 기술을 기반 임차인·건물 관리 서비스';

MERGE (n:Concept {id: '프로젝트_개발'})
SET     n.name = '프로젝트 개발',
    n.name_kr = '프로젝트 개발',
    n.domain = 'MG',
    n.definition = '부동산 개발과 관련된 프롭테크 영역으로 건설, 인테리어 디자인, VR/3D 분야 등이 해당';

MERGE (n:Concept {id: '투자_및_자금조달'})
SET     n.name = '투자 및 자금조달',
    n.name_kr = '투자 및 자금조달',
    n.domain = 'MG',
    n.definition = '개인대출, 크라우드 펀딩';

MERGE (n:Concept {id: '주요_기술'})
SET     n.name = '주요 기술',
    n.name_kr = '주요 기술',
    n.domain = 'MG',
    n.definition = '전략적 육성형';

MERGE (n:Concept {id: '메타소재'})
SET     n.name = '메타소재',
    n.name_kr = '메타소재',
    n.domain = 'MG',
    n.definition = '스텔스';

MERGE (n:Concept {id: '수소연료'})
SET     n.name = '수소연료',
    n.name_kr = '수소연료',
    n.domain = 'MG',
    n.definition = '에너지 혁명';

MERGE (n:Concept {id: '추격형'})
SET     n.name = '추격형',
    n.name_kr = '추격형',
    n.domain = 'MG',
    n.definition = '퀀텀컴퓨팅';

MERGE (n:Concept {id: '레이저'})
SET     n.name = '레이저',
    n.name_kr = '레이저',
    n.domain = 'MG',
    n.definition = '레이저무기, 첨단의료기';

MERGE (n:Concept {id: '바이오'})
SET     n.name = '바이오',
    n.name_kr = '바이오',
    n.domain = 'MG',
    n.definition = '생화학무기, 헬스케어';

MERGE (n:Technology {id: '상용화_목표형'})
SET     n.name = '상용화 목표형',
    n.name_kr = '상용화 목표형',
    n.domain = 'MG',
    n.definition = '5G';

MERGE (n:Concept {id: '나노소재'})
SET     n.name = '나노소재',
    n.name_kr = '나노소재',
    n.domain = 'MG',
    n.definition = '첨단의료기, 초소형 롭소';

MERGE (n:Concept {id: '사어버보안'})
SET     n.name = '사어버보안',
    n.name_kr = '사어버보안',
    n.domain = 'MG',
    n.definition = '지휘통제장비, 무인로봇';

// --- 관계 ---

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '영향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '비즈니스_영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '영역_상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '부동산_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '프로젝트_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '투자_및_자금조달'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '메타소재'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '수소연료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '추격형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '레이저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '바이오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Technology {id: '상용화_목표형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '나노소재'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Concept {id: '사어버보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proptech'})
MERGE (b:Document {id: 'MG_143'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '융합서비스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영향'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_영역'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영역_상세_설명'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부동산_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_개발'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투자_및_자금조달'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기술'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타소재'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수소연료'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추격형'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '레이저'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바이오'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '상용화_목표형'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '나노소재'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사어버보안'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_144.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_144.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_144.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_144.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_145: O2O(Online to Offline)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_145'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'online_to_offline'})
SET     n.name = 'Online to Offline',
    n.name_kr = 'O2O',
    n.domain = 'MG',
    n.aliases = ['Online to Offline', 'O2O'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: 'o2o'})
SET     n.name = 'O2O',
    n.name_kr = 'O2O',
    n.domain = 'MG',
    n.aliases = ['O2O'];

MERGE (n:Concept {id: '쇼루밍/리버스_쇼루밍'})
SET     n.name = '쇼루밍/리버스 쇼루밍',
    n.name_kr = '쇼루밍/리버스 쇼루밍',
    n.domain = 'MG';

MERGE (n:Concept {id: 'beacon'})
SET     n.name = '비콘',
    n.name_kr = '비콘',
    n.domain = 'MG';

MERGE (n:Concept {id: '블루투스'})
SET     n.name = '블루투스',
    n.name_kr = '블루투스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'MG',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: '시장의변화'})
SET     n.name = '시장의변화',
    n.name_kr = '시장의변화',
    n.domain = 'MG',
    n.definition = '온라인 상거래와 오프라인 상거래의 경계가 허물어지고 사업 다각화 필요(Online 서비스 연계 필요성)';

MERGE (n:Concept {id: '옴니채널등장_omni-channel_shopping'})
SET     n.name = '옴니채널등장 Omni-channel Shopping',
    n.name_kr = '옴니채널등장 Omni-channel Shopping',
    n.domain = 'MG',
    n.definition = '온라인과 오프라인을 유기적으로 결합한 쇼핑체계';

MERGE (n:Concept {id: '소비형태의_다양화'})
SET     n.name = '소비형태의 다양화',
    n.name_kr = '소비형태의 다양화',
    n.domain = 'MG',
    n.definition = '쇼루밍(Showrooming) : 오프라인 상품선택, 온라인구매 역쇼루밍(Reverse Showrooming) : 온라인 상품검색, 오프라인 구매 옴니채널 : 쇼루밍, 역쇼루밍을 모두 하는 쇼핑활동';

MERGE (n:Concept {id: 'it기술의_진화'})
SET     n.name = 'IT기술의 진화',
    n.name_kr = 'IT기술의 진화',
    n.domain = 'MG',
    n.definition = '스마트폰 등 모바일기기 확산과 IT기술의 발달에 따라 온라인 상거래 이용패턴 변화 저전력 근거리 통신 기술 Beacon 근거리 무선통신 Bluetooth4.0';

MERGE (n:Concept {id: 'offline_to_online'})
SET     n.name = 'Offline to Online',
    n.name_kr = 'Offline to Online',
    n.domain = 'MG',
    n.definition = '스마트폰 앱, QR 코드 등을 통해 전자상거래 사이트로 유도 - 실 점포와 전자상거래 사이트의 포인트 통합 등',
    n.aliases = ['Offline to Online'];

MERGE (n:Concept {id: 'online'})
SET     n.name = 'Online',
    n.name_kr = '온라인',
    n.domain = 'MG',
    n.definition = '정보 획득 용이',
    n.aliases = ['Online', '온라인'];

MERGE (n:Concept {id: '실시간_구매'})
SET     n.name = '실시간 구매',
    n.name_kr = '실시간 구매',
    n.domain = 'MG',
    n.definition = '온라인 구매 후 오프라인 방문 제품 수령 가능';

MERGE (n:Concept {id: '저렴한_가격'})
SET     n.name = '저렴한 가격',
    n.name_kr = '저렴한 가격',
    n.domain = 'MG',
    n.definition = '오프라인 대비 저렴한 가격으로 구매 가능';

MERGE (n:Concept {id: '간편한_결제'})
SET     n.name = '간편한 결제',
    n.name_kr = '간편한 결제',
    n.domain = 'MG',
    n.definition = '모바일, Fintech 기반의 간편 결제 가능';

MERGE (n:Concept {id: 'offline'})
SET     n.name = 'Offline',
    n.name_kr = '오프라인',
    n.domain = 'MG',
    n.definition = '제품의 확인',
    n.aliases = ['Offline', '오프라인'];

MERGE (n:Concept {id: '대기시간_감소'})
SET     n.name = '대기시간 감소',
    n.name_kr = '대기시간 감소',
    n.domain = 'MG',
    n.definition = '온라인 주문/결제,오프라인 방문 상품 수령';

MERGE (n:Concept {id: '혜택의_증가'})
SET     n.name = '혜택의 증가',
    n.name_kr = '혜택의 증가',
    n.domain = 'MG',
    n.definition = '오프라인 매장 근접 시 쿠폰,정보 확인';

MERGE (n:Concept {id: '사후관리_용이'})
SET     n.name = '사후관리 용이',
    n.name_kr = '사후관리 용이',
    n.domain = 'MG',
    n.definition = '상품 교환,반품,환불 등 기존 온라인 서비스의 불편함 해소 가능';

MERGE (n:Concept {id: 'business'})
SET     n.name = 'Business',
    n.name_kr = 'Business',
    n.domain = 'MG',
    n.definition = 'Startup 기회',
    n.aliases = ['Business'];

MERGE (n:Concept {id: '사업영역_확대'})
SET     n.name = '사업영역 확대',
    n.name_kr = '사업영역 확대',
    n.domain = 'MG',
    n.definition = '운송,패션/뷰티,숙박,관광,유통 등 산업 전 분야에 걸쳐 기업의 성장 기회 제공';

MERGE (n:Concept {id: '플랫폼_비즈니스'})
SET     n.name = '플랫폼 비즈니스',
    n.name_kr = '플랫폼 비즈니스',
    n.domain = 'MG',
    n.definition = '여러 사업자를 연결하는 플랫폼 비즈니스로 진화';

MERGE (n:Concept {id: 'cost'})
SET     n.name = 'Cost',
    n.name_kr = 'Cost',
    n.domain = 'MG',
    n.definition = '비용 절감',
    n.aliases = ['Cost'];

MERGE (n:Concept {id: '수익_증대'})
SET     n.name = '수익 증대',
    n.name_kr = '수익 증대',
    n.domain = 'MG',
    n.definition = '작은 공급자들을 모아 큰 수익을 창출하는 롱테일형 사업 등장';

MERGE (n:Concept {id: 'marketing'})
SET     n.name = 'Marketing',
    n.name_kr = 'Marketing',
    n.domain = 'MG',
    n.definition = '데이터 획득',
    n.aliases = ['Marketing'];

MERGE (n:Concept {id: '타켓_마케팅'})
SET     n.name = '타켓 마케팅',
    n.name_kr = '타켓 마케팅',
    n.domain = 'MG',
    n.definition = '온라인 회원정보,매장 구매정보 기반 타겟 마케팅 위치정보 기반 고객의 매장 방문 유도';

MERGE (n:Concept {id: 'service'})
SET     n.name = 'Service',
    n.name_kr = 'Service',
    n.domain = 'MG',
    n.definition = '고객가치 제공',
    n.aliases = ['Service'];

MERGE (n:Concept {id: 'killer_service'})
SET     n.name = 'Killer Service',
    n.name_kr = 'Killer Service',
    n.domain = 'MG',
    n.definition = '비콘, NFC 등을 활용한 모바일 결제 서비스 제공 온/오프라인 포인트 연동,쿠폰/이벤트 제공',
    n.aliases = ['Killer Service'];

// --- 관계 ---

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '쇼루밍/리버스_쇼루밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'beacon'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '블루투스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '시장의변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '옴니채널등장_omni-channel_shopping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '소비형태의_다양화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'it기술의_진화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'offline_to_online'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'online'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '실시간_구매'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '저렴한_가격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '간편한_결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'offline'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '대기시간_감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '혜택의_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '사후관리_용이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'business'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '사업영역_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '플랫폼_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'cost'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '수익_증대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'marketing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '타켓_마케팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'killer_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Document {id: 'MG_145'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쇼루밍/리버스_쇼루밍'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beacon'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블루투스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시장의변화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '옴니채널등장_omni-channel_shopping'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소비형태의_다양화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it기술의_진화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'offline_to_online'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'online'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_구매'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저렴한_가격'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간편한_결제'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'offline'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대기시간_감소'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혜택의_증가'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사후관리_용이'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'business'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업영역_확대'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cost'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익_증대'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'marketing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타켓_마케팅'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'killer_service'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_146: O4O (Online for Offline)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_146'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'online_for_offline'})
SET     n.name = 'Online for Offline',
    n.name_kr = 'O4O',
    n.domain = 'MG',
    n.aliases = ['Online for Offline', 'O4O'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: 'o4o'})
SET     n.name = 'O4O',
    n.name_kr = 'O4O',
    n.domain = 'MG',
    n.aliases = ['O4O'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'MG',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'MG',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: '이미지/얼굴_인식'})
SET     n.name = '이미지/얼굴 인식',
    n.name_kr = '이미지/얼굴 인식',
    n.domain = 'MG';

MERGE (n:Concept {id: '지오펜싱'})
SET     n.name = '지오펜싱',
    n.name_kr = '지오펜싱',
    n.domain = 'MG';

MERGE (n:Concept {id: '비콘'})
SET     n.name = '비콘',
    n.name_kr = '비콘',
    n.domain = 'MG';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'MG';

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'MG';

MERGE (n:Concept {id: 'amazon_go'})
SET     n.name = '아마존고',
    n.name_kr = '아마존고',
    n.domain = 'MG';

MERGE (n:Concept {id: 'o2o'})
SET     n.name = 'O2O',
    n.name_kr = 'O2O',
    n.domain = 'MG',
    n.aliases = ['O2O'];

// --- 관계 ---

MERGE (a:Concept {id: 'o4o'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: '이미지/얼굴_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: '지오펜싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: '비콘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: 'amazon_go'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Concept {id: 'o4o'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: 'o2o'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Concept {id: 'o4o'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Document {id: 'MG_146'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o4o'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지/얼굴_인식'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지오펜싱'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비콘'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'amazon_go'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_147: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_147'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_148: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_148'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_149: 오픈 뱅킹(Open Banking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_149'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'open_banking'})
SET     n.name = 'Open Banking',
    n.name_kr = '오픈 뱅킹',
    n.domain = 'MG',
    n.aliases = ['Open Banking', '오픈 뱅킹'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'fintech'})
SET     n.name = '핀테크',
    n.name_kr = '핀테크',
    n.domain = 'MG';

MERGE (n:Concept {id: '마이데이터'})
SET     n.name = '마이데이터',
    n.name_kr = '마이데이터',
    n.domain = 'MG';

MERGE (n:Standard {id: 'isms'})
SET     n.name = 'ISMS',
    n.name_kr = 'ISMS',
    n.domain = 'MG',
    n.aliases = ['ISMS'];

MERGE (n:Concept {id: '오픈api'})
SET     n.name = '오픈API',
    n.name_kr = '오픈API',
    n.domain = 'MG';

MERGE (n:Concept {id: '스몰_라이선스'})
SET     n.name = '스몰 라이선스',
    n.name_kr = '스몰 라이선스',
    n.domain = 'MG';

MERGE (n:Concept {id: '데이터3법'})
SET     n.name = '데이터3법',
    n.name_kr = '데이터3법',
    n.domain = 'MG';

MERGE (n:Concept {id: '사용자'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'MG',
    n.definition = '금융 편의성 증대';

MERGE (n:Concept {id: '서비스_선택권_강화'})
SET     n.name = '서비스 선택권 강화',
    n.name_kr = '서비스 선택권 강화',
    n.domain = 'MG',
    n.definition = '편리한 UX 서비스 이용';

MERGE (n:Concept {id: '핀테크사'})
SET     n.name = '핀테크사',
    n.name_kr = '핀테크사',
    n.domain = 'MG',
    n.definition = '개발 비용절감';

MERGE (n:Concept {id: '금융시장_진입용이'})
SET     n.name = '금융시장 진입용이',
    n.name_kr = '금융시장 진입용이',
    n.domain = 'MG',
    n.definition = '사업 장벽없이 신규 금융서비스 개발';

MERGE (n:Concept {id: '은행'})
SET     n.name = '은행',
    n.name_kr = '은행',
    n.domain = 'MG',
    n.definition = '종합금융플랫폼 구축';

MERGE (n:Concept {id: '신규_사업모델_생성'})
SET     n.name = '신규 사업모델 생성',
    n.name_kr = '신규 사업모델 생성',
    n.domain = 'MG',
    n.definition = '생태계 필수 서비스 사업 모델 생성';

MERGE (n:Concept {id: '국가'})
SET     n.name = '국가',
    n.name_kr = '국가',
    n.domain = 'MG',
    n.definition = '마이데이터 활성화';

MERGE (n:Concept {id: '글로벌_경쟁력_강화'})
SET     n.name = '글로벌 경쟁력 강화',
    n.name_kr = '글로벌 경쟁력 강화',
    n.domain = 'MG',
    n.definition = '지급결제 시장 글로벌 경쟁력 강화';

MERGE (n:Concept {id: '신규_비즈니스'})
SET     n.name = '신규 비즈니스',
    n.name_kr = '신규 비즈니스',
    n.domain = 'MG',
    n.definition = '개인 최적화 서비스';

MERGE (n:Concept {id: '제2_금융_서비스_확대'})
SET     n.name = '제2 금융 서비스 확대',
    n.name_kr = '제2 금융 서비스 확대',
    n.domain = 'MG',
    n.definition = '카드사, 보험사 등 제2 금융 통합서비스 제공';

MERGE (n:Concept {id: 'mypayment_사업_발전'})
SET     n.name = 'MyPayment 사업 발전',
    n.name_kr = 'MyPayment 사업 발전',
    n.domain = 'MG',
    n.definition = '지급지시전달업 저비용, 절차 간소화 제공';

MERGE (n:Concept {id: '법_제도_개선'})
SET     n.name = '법 제도 개선',
    n.name_kr = '법 제도 개선',
    n.domain = 'MG',
    n.definition = '스몰라이선스 핀테크';

MERGE (n:Concept {id: '핀테크_펀드_조성'})
SET     n.name = '핀테크 펀드 조성',
    n.name_kr = '핀테크 펀드 조성',
    n.domain = 'MG',
    n.definition = '영세 핀테크 사 펀딩 통한 사업 수행 지원';

MERGE (n:Concept {id: '보안_강화'})
SET     n.name = '보안 강화',
    n.name_kr = '보안 강화',
    n.domain = 'MG',
    n.definition = '핀테크사 보안 강화';

MERGE (n:Concept {id: '보안점검_자금_지원'})
SET     n.name = '보안점검 자금 지원',
    n.name_kr = '보안점검 자금 지원',
    n.domain = 'MG',
    n.definition = '보안점검 지원 통한 금융보안원 점검 수행';

MERGE (n:Concept {id: '마이페이먼트'})
SET     n.name = '마이페이먼트',
    n.name_kr = '마이페이먼트',
    n.domain = 'MG',
    n.definition = '결제시 자금 전달에 대한 지급지시';

// --- 관계 ---

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: 'fintech'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '마이데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Standard {id: 'isms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '오픈api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '스몰_라이선스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '데이터3법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '서비스_선택권_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '핀테크사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '금융시장_진입용이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '은행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '신규_사업모델_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '국가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '글로벌_경쟁력_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '신규_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '제2_금융_서비스_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: 'mypayment_사업_발전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '법_제도_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '핀테크_펀드_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '보안_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '보안점검_자금_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Concept {id: '마이페이먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Document {id: 'MG_149'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_banking'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fintech'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이데이터'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'isms'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈api'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스몰_라이선스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터3법'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_선택권_강화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크사'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융시장_진입용이'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '은행'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_사업모델_생성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌_경쟁력_강화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제2_금융_서비스_확대'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mypayment_사업_발전'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법_제도_개선'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크_펀드_조성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_강화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안점검_자금_지원'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이페이먼트'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_150: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_150'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_151: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_151'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_152: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_152'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_153: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_153'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '크라우드_펀딩법'})
SET     n.name = '크라우드 펀딩법(연간 7억)',
    n.name_kr = '크라우드 펀딩법(연간 7억)',
    n.domain = 'MG';

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'MG';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'MG';

MERGE (n:Concept {id: '투자자'})
SET     n.name = '투자자',
    n.name_kr = '투자자',
    n.domain = 'MG';

MERGE (n:Concept {id: '유형:_기부'})
SET     n.name = '유형: 기부',
    n.name_kr = '유형: 기부',
    n.domain = 'MG';

MERGE (n:Concept {id: '후원'})
SET     n.name = '후원',
    n.name_kr = '후원',
    n.domain = 'MG';

MERGE (n:Concept {id: '대출'})
SET     n.name = '대출',
    n.name_kr = '대출',
    n.domain = 'MG';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG';

MERGE (n:Concept {id: '온라인_비즈니스'})
SET     n.name = '온라인 비즈니스',
    n.name_kr = '온라인 비즈니스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'long_tail'})
SET     n.name = 'Long Tail',
    n.name_kr = '롱테일 현상',
    n.domain = 'MG',
    n.aliases = ['Long Tail', '롱테일 현상'];

// --- 관계 ---

MERGE (a:Concept {id: '크라우드_펀딩법'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투자자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형:_기부'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후원'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대출'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_tail'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_154: IPO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_154'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'ipo'})
SET     n.name = 'IPO',
    n.name_kr = 'IPO',
    n.domain = 'MG',
    n.aliases = ['IPO'];

MERGE (n:Concept {id: '주체'})
SET     n.name = '주체',
    n.name_kr = '주체',
    n.domain = 'MG';

MERGE (n:Concept {id: '일정'})
SET     n.name = '일정(예시)',
    n.name_kr = '일정(예시)',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '주체'})
MERGE (b:Concept {id: '일정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ipo'})
MERGE (b:Concept {id: '주체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ipo'})
MERGE (b:Concept {id: '일정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ipo'})
MERGE (b:Document {id: 'MG_154'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ipo'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주체'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_155: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_155'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_156: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_156'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_157: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_157'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_158: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_158'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_159: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_159'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_160: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_160'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_161: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_161'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_162: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_162'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_163: 시빅 해킹(Civic Hacking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_163'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'civic_hacking'})
SET     n.name = 'Civic Hacking',
    n.name_kr = '시빅 해킹',
    n.domain = 'MG',
    n.aliases = ['Civic Hacking', '시빅 해킹'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'MG';

MERGE (n:Concept {id: '공공_데이터'})
SET     n.name = '공공 데이터',
    n.name_kr = '공공 데이터',
    n.domain = 'MG';

MERGE (n:Concept {id: 'open_api'})
SET     n.name = 'Open API',
    n.name_kr = 'Open API',
    n.domain = 'MG',
    n.aliases = ['Open API'];

MERGE (n:Concept {id: '오픈_소스'})
SET     n.name = '오픈 소스',
    n.name_kr = '오픈 소스',
    n.domain = 'MG';

MERGE (n:Concept {id: '활동_핵심_civic'})
SET     n.name = '활동 핵심 Civic',
    n.name_kr = '활동 핵심 Civic',
    n.domain = 'MG',
    n.definition = '시민, 기업가';

MERGE (n:Concept {id: '정부,_지방단체'})
SET     n.name = '정부, 지방단체',
    n.name_kr = '정부, 지방단체',
    n.domain = 'MG',
    n.definition = '문제 해결을 위한 지원 - 공공 데이터 제공, 관리';

MERGE (n:Concept {id: '전문가,_헤커톤'})
SET     n.name = '전문가, 헤커톤',
    n.name_kr = '전문가, 헤커톤',
    n.domain = 'MG',
    n.definition = '문제 해결을 위한 주체 - 공공 데이터를 활용한 솔루션 개발, 제공';

MERGE (n:Concept {id: '해결_도구_tool'})
SET     n.name = '해결 도구 Tool',
    n.name_kr = '해결 도구 Tool',
    n.domain = 'MG',
    n.definition = '공공데이터';

MERGE (n:Concept {id: '커뮤니티'})
SET     n.name = '커뮤니티',
    n.name_kr = '커뮤니티',
    n.domain = 'MG',
    n.definition = '발생한 문제 공유 및 전파 - 문제 해결 및 Feed-Back 채널';

MERGE (n:Concept {id: '해결_방안_hacker'})
SET     n.name = '해결 방안 Hacker',
    n.name_kr = '해결 방안 Hacker',
    n.domain = 'MG',
    n.definition = 'IT 솔루션';

MERGE (n:Concept {id: '피드백'})
SET     n.name = '피드백',
    n.name_kr = '피드백',
    n.domain = 'MG',
    n.definition = '문제 해결 결과 - 개선점, 시민과 전문가의 소통';

MERGE (n:Concept {id: 'it_플랫폼'})
SET     n.name = 'IT 플랫폼',
    n.name_kr = 'IT 플랫폼',
    n.domain = 'MG',
    n.definition = '문제 제기와 해결 S/W 인프라 - 소통 채널과 문제 해결의 기반 제공';

MERGE (n:Concept {id: '프로그래머'})
SET     n.name = '프로그래머',
    n.name_kr = '프로그래머',
    n.domain = 'MG',
    n.definition = 'Open Source';

MERGE (n:Concept {id: '디자이너'})
SET     n.name = '디자이너',
    n.name_kr = '디자이너',
    n.domain = 'MG',
    n.definition = 'UI / UX Design';

MERGE (n:Concept {id: '시민'})
SET     n.name = '시민',
    n.name_kr = '시민',
    n.domain = 'MG',
    n.definition = '공공 데이터';

MERGE (n:Concept {id: '크라우드_펀딩'})
SET     n.name = '크라우드 펀딩',
    n.name_kr = '크라우드 펀딩',
    n.domain = 'MG',
    n.definition = '지역사회 문제 해결을 위해 주민들의 기금 조성을 지원';

MERGE (n:Concept {id: '지역_사회_조직'})
SET     n.name = '지역 사회 조직',
    n.name_kr = '지역 사회 조직',
    n.domain = 'MG',
    n.definition = '지역 문제 적극적 참여 및 의견 개진을 위한 조직 구성 및 활동';

MERGE (n:Concept {id: '정보_크라우드_소싱'})
SET     n.name = '정보 크라우드 소싱',
    n.name_kr = '정보 크라우드 소싱',
    n.domain = 'MG',
    n.definition = '시민 참여를 통해 필요 정보 수집 정당성 확보 및 목표 달성 지원';

MERGE (n:Concept {id: '지역_주민_포럼'})
SET     n.name = '지역 주민 포럼',
    n.name_kr = '지역 주민 포럼',
    n.domain = 'MG',
    n.definition = '지역 시민의 협력, 정보 공유 활성화';

MERGE (n:Concept {id: '주민_간_공유경제_촉진'})
SET     n.name = '주민 간 공유경제 촉진',
    n.name_kr = '주민 간 공유경제 촉진',
    n.domain = 'MG',
    n.definition = '물건이나 서비스 공유 촉진을 위한 체계 구축';

MERGE (n:Metric {id: '데이터_접근과_투명성'})
SET     n.name = '데이터 접근과 투명성',
    n.name_kr = '데이터 접근과 투명성',
    n.domain = 'MG',
    n.definition = '데이터의 가용성, 투명성, 책무성 향상을 위한 활동';

MERGE (n:Concept {id: '데이터의_유용성'})
SET     n.name = '데이터의 유용성',
    n.name_kr = '데이터의 유용성',
    n.domain = 'MG',
    n.definition = '정부 제공 데이터 분석 통한 데이터 품질 개선 및 양질의 데이터 확보';

MERGE (n:Concept {id: '공공_의사결정'})
SET     n.name = '공공 의사결정',
    n.name_kr = '공공 의사결정',
    n.domain = 'MG',
    n.definition = '주요 의제에 대해 지역 주민의 직접적 참여 촉진';

MERGE (n:Concept {id: '주민들의_피드백_전달'})
SET     n.name = '주민들의 피드백 전달',
    n.name_kr = '주민들의 피드백 전달',
    n.domain = 'MG',
    n.definition = '주민들의 정부 교류 편의성 확보 및 공공 서비스 피드백 방안 마련';

MERGE (n:Concept {id: '시각화_및_매핑'})
SET     n.name = '시각화 및 매핑',
    n.name_kr = '시각화 및 매핑',
    n.domain = 'MG',
    n.definition = '정보의 시각화 및 매핑을 통해 데이터의 이해와 통찰력 확보 지원';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'MG';

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'MG';

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'MG',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'MG';

MERGE (n:Concept {id: '시사점'})
SET     n.name = '시사점',
    n.name_kr = '시사점',
    n.domain = 'MG',
    n.definition = '도구, 인프라 활용 측면';

MERGE (n:Concept {id: '정책_방향'})
SET     n.name = '정책 방향',
    n.name_kr = '정책 방향',
    n.domain = 'MG',
    n.definition = '시민 중심';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'MG',
    n.definition = '개인 안심 번호';

MERGE (n:Concept {id: '마스크_앱'})
SET     n.name = '마스크 앱',
    n.name_kr = '마스크 앱',
    n.domain = 'MG',
    n.definition = '공적 마스크 재고량을 약국 별로 확인 - 마스크 공급·재고 데이터를 활용';

MERGE (n:Concept {id: 'share_your_light'})
SET     n.name = 'Share your Light',
    n.name_kr = '프로젝트 SYL',
    n.domain = 'MG',
    n.definition = 'Code for Incheon 프로젝트 - 도시 정전 시 고립 방지를 위한 위치 제공',
    n.aliases = ['Share your Light', '프로젝트 SYL'];

MERGE (n:Concept {id: '해외'})
SET     n.name = '해외',
    n.name_kr = '해외',
    n.domain = 'MG',
    n.definition = '소화전 입양하기 (Adopt a Hydrant)';

MERGE (n:Concept {id: 'meet&hack'})
SET     n.name = 'Meet&Hack (밋앤핵)',
    n.name_kr = 'Meet&Hack (밋앤핵)',
    n.domain = 'MG',
    n.definition = '한국, 대만, 일본, 홍콩의 시빅해커 커뮤니티 - 전 지구적 문제 해결을 위한 모임';

MERGE (n:Concept {id: '마스크_맵'})
SET     n.name = '마스크 맵',
    n.name_kr = '마스크 맵',
    n.domain = 'MG',
    n.definition = '코로나 대응을 위해 대만 시민이 만든 앱 - 정부, 공공에 결합하여 방역 효과 증대';

MERGE (n:Concept {id: '[미국]_소화전_입양하기'})
SET     n.name = '[미국] 소화전 입양하기',
    n.name_kr = '[미국] 소화전 입양하기',
    n.domain = 'MG',
    n.definition = '시민이 지도에서 소화전 위치를 확인하고 집 앞 소화전을 직접 관리하는 서비스';

MERGE (n:Concept {id: 'waze'})
SET     n.name = 'Waze',
    n.name_kr = '[이스라엘] 웨이즈',
    n.domain = 'MG',
    n.definition = '도로상황 정보를 공유하여 실시간 교통 지도를 제공하는 사용자 참여형 지도',
    n.aliases = ['Waze', '[이스라엘] 웨이즈'];

MERGE (n:Concept {id: '[아일랜드]_푸드_클라우드'})
SET     n.name = '[아일랜드] 푸드 클라우드',
    n.name_kr = '[아일랜드] 푸드 클라우드',
    n.domain = 'MG',
    n.definition = '남은 음식을 공유하여 기아 문제 해결을 모색한 O2O 서비스 애플리케이션';

MERGE (n:Concept {id: '[스페인]_디사이드_마드리드'})
SET     n.name = '[스페인] 디사이드 마드리드',
    n.name_kr = '[스페인] 디사이드 마드리드',
    n.domain = 'MG',
    n.definition = '시민이 시의 재정과 입법, 행정 과정에 직접 참여 가능한 시민참여 웹사이트';

MERGE (n:Concept {id: '[캐나다]_오픈노스'})
SET     n.name = '[캐나다] 오픈노스',
    n.name_kr = '[캐나다] 오픈노스',
    n.domain = 'MG',
    n.definition = '시민이 질 좋은 정보를 쉽게 찾을 수 있도록 오픈 데이터를 제공하는 서비스';

MERGE (n:Concept {id: '[뉴질랜드]_루미오'})
SET     n.name = '[뉴질랜드] 루미오',
    n.name_kr = '[뉴질랜드] 루미오',
    n.domain = 'MG',
    n.definition = '의사결정구조의 비효율성과 정보 격차를 해결 하는 협력적·수평적 온라인 의사결정 플랫폼';

MERGE (n:Concept {id: '[아르헨티나]_데모크라시_os'})
SET     n.name = '[아르헨티나] 데모크라시 OS',
    n.name_kr = '[아르헨티나] 데모크라시 OS',
    n.domain = 'MG',
    n.definition = '시민이 직접 토론과 투표로 의견을 제시할 수 있는 온라인 시민참여 시스템';

MERGE (n:Concept {id: '민주주의_서울'})
SET     n.name = '민주주의 서울',
    n.name_kr = '민주주의 서울',
    n.domain = 'MG',
    n.definition = '시민이 정책제안, 결정, 실행까지 전 과정에 참여할 수 있는 온라인 창구';

MERGE (n:Concept {id: '메르스_확산_지도'})
SET     n.name = '메르스 확산 지도',
    n.name_kr = '메르스 확산 지도',
    n.domain = 'MG',
    n.definition = '투명한 안전보건정보를 제공하기 위해 국민이 직접 나서 정보를 수집·게시';

MERGE (n:Concept {id: '서울_e품앗이'})
SET     n.name = '서울 e품앗이',
    n.name_kr = '서울 e품앗이',
    n.domain = 'MG',
    n.definition = '시민이 물건, 재능, 공간 등을 공동체화폐를 활용 하여 자유롭게 교환';

MERGE (n:Concept {id: '우리동네_후보'})
SET     n.name = '우리동네 후보',
    n.name_kr = '우리동네 후보',
    n.domain = 'MG',
    n.definition = '데이터를 활용하여 지방선거 후보자 정보를 수집, 분석하여 유권자에게 보여주는 정치인 정보 제공 앱';

MERGE (n:Concept {id: '예산_지도'})
SET     n.name = '예산 지도',
    n.name_kr = '예산 지도',
    n.domain = 'MG',
    n.definition = '데이터의 시각화를 통하여 정부의 예산 집행 내역 및 활동을 투명하게 감시';

MERGE (n:Concept {id: '국회_톡톡'})
SET     n.name = '국회 톡톡',
    n.name_kr = '국회 톡톡',
    n.domain = 'MG',
    n.definition = '시민이 적극적으로 정치에 참여할 수 있도록 지원 하는 온라인 시민 입법 플랫폼';

// --- 관계 ---

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '공공_데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'open_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '오픈_소스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '활동_핵심_civic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '정부,_지방단체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '전문가,_헤커톤'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '해결_도구_tool'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '커뮤니티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '해결_방안_hacker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '피드백'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'it_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '프로그래머'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '디자이너'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '시민'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '크라우드_펀딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '지역_사회_조직'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '정보_크라우드_소싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '지역_주민_포럼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '주민_간_공유경제_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Metric {id: '데이터_접근과_투명성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '데이터의_유용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '공공_의사결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '주민들의_피드백_전달'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '시각화_및_매핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '시사점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '정책_방향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '마스크_앱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'share_your_light'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '해외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'meet&hack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '마스크_맵'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[미국]_소화전_입양하기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: 'waze'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[아일랜드]_푸드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[스페인]_디사이드_마드리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[캐나다]_오픈노스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[뉴질랜드]_루미오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '[아르헨티나]_데모크라시_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '민주주의_서울'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '메르스_확산_지도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '서울_e품앗이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '우리동네_후보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '예산_지도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Concept {id: '국회_톡톡'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Document {id: 'MG_163'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'civic_hacking'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공_데이터'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_api'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈_소스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동_핵심_civic'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부,_지방단체'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전문가,_헤커톤'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_도구_tool'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커뮤니티'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안_hacker'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피드백'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_플랫폼'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그래머'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자이너'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시민'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '크라우드_펀딩'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지역_사회_조직'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_크라우드_소싱'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지역_주민_포럼'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주민_간_공유경제_촉진'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '데이터_접근과_투명성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터의_유용성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공_의사결정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주민들의_피드백_전달'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시각화_및_매핑'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시사점'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책_방향'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스크_앱'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'share_your_light'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해외'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meet&hack'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스크_맵'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[미국]_소화전_입양하기'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'waze'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[아일랜드]_푸드_클라우드'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[스페인]_디사이드_마드리드'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[캐나다]_오픈노스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[뉴질랜드]_루미오'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[아르헨티나]_데모크라시_os'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민주주의_서울'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메르스_확산_지도'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서울_e품앗이'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우리동네_후보'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예산_지도'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국회_톡톡'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_164: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_164'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_165: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_165'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_166: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_166'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_167: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_167'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_168: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_168'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_169: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_169'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_170: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_170'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_171: 린 스타트업(Lean Startup), MVP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_171'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'lean_startup'})
SET     n.name = '린 스타트업(Lean Startup), MVP',
    n.name_kr = '린 스타트업(Lean Startup), MVP',
    n.domain = 'MG';

MERGE (n:Concept {id: 'lean_thinking'})
SET     n.name = '린 사고방식',
    n.name_kr = '린 사고방식',
    n.domain = 'MG';

MERGE (n:Method {id: 'rapid_prototype'})
SET     n.name = 'rapid prototype',
    n.name_kr = 'rapid prototype',
    n.domain = 'MG',
    n.aliases = ['rapid prototype'];

MERGE (n:Concept {id: 'pivoting'})
SET     n.name = 'Pivoting',
    n.name_kr = 'Pivoting',
    n.domain = 'MG',
    n.aliases = ['Pivoting'];

MERGE (n:Concept {id: '애자일'})
SET     n.name = '애자일',
    n.name_kr = '애자일',
    n.domain = 'MG';

MERGE (n:Concept {id: '데브옵스'})
SET     n.name = '데브옵스',
    n.name_kr = '데브옵스',
    n.domain = 'MG';

MERGE (n:Method {id: 'ci_cd'})
SET     n.name = 'CI/CD',
    n.name_kr = 'CI/CD',
    n.domain = 'MG',
    n.aliases = ['CI/CD'];

MERGE (n:Concept {id: '제품개발_사이클'})
SET     n.name = '제품개발 사이클',
    n.name_kr = '제품개발 사이클',
    n.domain = 'MG',
    n.definition = 'Build';

MERGE (n:Concept {id: 'measure'})
SET     n.name = 'Measure',
    n.name_kr = 'Measure',
    n.domain = 'MG',
    n.definition = '제품 및 서비스의 고객 반응 측정 - 실제 고객에서 선보이고 피드백을 받음',
    n.aliases = ['Measure'];

MERGE (n:Concept {id: 'learn'})
SET     n.name = 'Learn',
    n.name_kr = 'Learn',
    n.domain = 'MG',
    n.definition = '고객반응을 기반으로 새로운 정보 학습 - 가설의 변경 및 비즈니스 모델의 방향전환',
    n.aliases = ['Learn'];

MERGE (n:Concept {id: '주요기법'})
SET     n.name = '주요기법',
    n.name_kr = '주요기법',
    n.domain = 'MG',
    n.definition = 'MVP';

MERGE (n:Method {id: 'agile_프로세스'})
SET     n.name = 'Agile 프로세스',
    n.name_kr = 'Agile 프로세스',
    n.domain = 'MG',
    n.definition = '지속적으로 발생하는 불확정적인 상황에 유연하고 빠르게 대응해 생산성과 품질을 향상시키고자 하는 협력적 개발방식 적용';

MERGE (n:Concept {id: 'ci,_cd'})
SET     n.name = 'CI, CD',
    n.name_kr = 'CI, CD',
    n.domain = 'MG',
    n.definition = '하루에도 몇 번씩 새로운 코드를 릴리즈 및 지속적 배포(Continuous Deployment)라는 기법을 사용';

// --- 관계 ---

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'lean_thinking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'rapid_prototype'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'pivoting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '애자일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '데브옵스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'ci_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '제품개발_사이클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'measure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'learn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '주요기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'agile_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'ci,_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Document {id: 'MG_171'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lean_thinking'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'rapid_prototype'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pivoting'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애자일'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데브옵스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'ci_cd'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품개발_사이클'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'measure'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'learn'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기법'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile_프로세스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ci,_cd'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_172: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_172'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_173.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_173.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_173.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_173.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_174: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_174'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_175: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_175'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_176: 온라인광고비
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_176'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '온라인광고비'})
SET     n.name = '온라인광고비',
    n.name_kr = '온라인광고비',
    n.domain = 'MG';

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: '광고클릭횟수'})
SET     n.name = '광고클릭횟수',
    n.name_kr = '광고클릭횟수',
    n.domain = 'MG';

MERGE (n:Concept {id: '광고단가_산정기법'})
SET     n.name = '광고단가 산정기법',
    n.name_kr = '광고단가 산정기법',
    n.domain = 'MG';

MERGE (n:Concept {id: '유사비교'})
SET     n.name = '유사비교',
    n.name_kr = '유사비교',
    n.domain = 'MG';

MERGE (n:Concept {id: 'pull방식'})
SET     n.name = 'Pull방식',
    n.name_kr = 'Pull방식',
    n.domain = 'MG';

MERGE (n:Concept {id: 'push방식'})
SET     n.name = 'Push방식',
    n.name_kr = 'Push방식',
    n.domain = 'MG';

MERGE (n:Concept {id: '상품노출_당'})
SET     n.name = '상품노출 당',
    n.name_kr = '상품노출 당',
    n.domain = 'MG';

MERGE (n:Concept {id: '70~150만원'})
SET     n.name = '70~150만원',
    n.name_kr = '70~150만원',
    n.domain = 'MG';

MERGE (n:Concept {id: 'cost_per_click'})
SET     n.name = 'Cost Per Click',
    n.name_kr = 'CPC',
    n.domain = 'MG',
    n.aliases = ['Cost Per Click', 'CPC'];

MERGE (n:Concept {id: 'cost_per_million'})
SET     n.name = 'Cost Per Million',
    n.name_kr = 'CPM',
    n.domain = 'MG',
    n.aliases = ['Cost Per Million', 'CPM'];

MERGE (n:Concept {id: 'cpc의_현황'})
SET     n.name = 'CPC의 현황',
    n.name_kr = 'CPC의 현황',
    n.domain = 'MG',
    n.definition = '경험이 적은 광고주들은 효율적인 광고진행 노하우 부족으로 대행사 활용 - SEO(Search Engine Optimization)을 통한 광고 비용 절감 방안 모색';

MERGE (n:Concept {id: '대표_사례'})
SET     n.name = '대표 사례',
    n.name_kr = '대표 사례',
    n.domain = 'MG',
    n.definition = '오버추어: 네이버, 야후, 엠파스, 네이트, MSN, SBS 등 - 클릭초이스: 온라인 검색시장의 70% 이상을 차지하고 있는 네이버의 파워링크, 비즈사이트, 지식인 등 - 구글: 다음, 구글, 인터파크 등 - 리얼클릭: 국내 130여개의 프리미엄 사이트(종합포탈, PC방 어플리케이션, 엔터테인먼트 등)';

MERGE (n:Concept {id: 'cpc의_향후_전망'})
SET     n.name = 'CPC의 향후 전망',
    n.name_kr = 'CPC의 향후 전망',
    n.domain = 'MG',
    n.definition = '로그 분석 및 평가기술 지능화에 따른 CRM결과의 정합성향상 - Portal위주의 CPC적용에서 보다 다양한 채널로의 CPC가 확대될 것으로 기대 부정클릭의 반작용을 방지할 수 있는 기술개발이 보다 적극화되어 CPC 시장의 건전성 향상';

// --- 관계 ---

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '광고클릭횟수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '광고단가_산정기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '유사비교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'pull방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'push방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '상품노출_당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '70~150만원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cost_per_click'})
MERGE (b:Concept {id: 'cost_per_million'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'cost_per_click'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'cost_per_million'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'cpc의_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: '대표_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Concept {id: 'cpc의_향후_전망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Document {id: 'MG_176'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '온라인광고비'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광고클릭횟수'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광고단가_산정기법'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유사비교'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pull방식'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push방식'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상품노출_당'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '70~150만원'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cost_per_click'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cost_per_million'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpc의_현황'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대표_사례'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpc의_향후_전망'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_177: Programmatic Buying
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_177'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'programmatic_buying'})
SET     n.name = 'Programmatic Buying',
    n.name_kr = 'Programmatic Buying',
    n.domain = 'MG',
    n.aliases = ['Programmatic Buying'];

MERGE (n:Concept {id: 'commerce'})
SET     n.name = 'Commerce',
    n.name_kr = 'Commerce',
    n.domain = 'MG',
    n.aliases = ['Commerce'];

MERGE (n:Concept {id: 'advertiser'})
SET     n.name = 'Advertiser',
    n.name_kr = 'Advertiser',
    n.domain = 'MG',
    n.aliases = ['Advertiser'];

MERGE (n:Concept {id: 'dsp'})
SET     n.name = 'DSP',
    n.name_kr = 'DSP',
    n.domain = 'MG',
    n.aliases = ['DSP'];

MERGE (n:Concept {id: 'ssp'})
SET     n.name = 'SSP',
    n.name_kr = 'SSP',
    n.domain = 'MG',
    n.aliases = ['SSP'];

MERGE (n:Concept {id: 'publisher'})
SET     n.name = 'Publisher',
    n.name_kr = 'Publisher',
    n.domain = 'MG',
    n.aliases = ['Publisher'];

// --- 관계 ---

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Concept {id: 'commerce'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Concept {id: 'advertiser'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Concept {id: 'dsp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Concept {id: 'ssp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Concept {id: 'publisher'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Document {id: 'MG_177'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'programmatic_buying'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'commerce'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'advertiser'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'publisher'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_178: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_178'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_179: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_179'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_180: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_180'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_181: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_181'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_182: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_182'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_183: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_183'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_184: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_184'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_185: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_185'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_186: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_186'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_187: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_187'})
SET doc.domain = 'MG';

// ================================================================
// MG 도메인 자동 생성 완료
// 노드: 178개
// 관계: 350개
// ================================================================