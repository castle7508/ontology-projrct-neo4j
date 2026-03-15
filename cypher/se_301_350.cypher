// ================================================================
// SE 도메인 (SE_301 ~ SE_350) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_242.1: ISO 27002
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_242.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_27002'})
SET     n.name = 'ISO 27002',
    n.name_kr = 'ISO 27002',
    n.domain = 'SE',
    n.aliases = ['ISO 27002'];

MERGE (n:Concept {id: '보안_표준_및_관리적_보안'})
SET     n.name = '보안 표준(정책) 및 관리적 보안',
    n.name_kr = '보안 표준(정책) 및 관리적 보안',
    n.domain = 'SE';

MERGE (n:Standard {id: 'iso_27001'})
SET     n.name = 'ISO 27001',
    n.name_kr = 'ISO 27001',
    n.domain = 'SE',
    n.aliases = ['ISO 27001'];

MERGE (n:Concept {id: '정보_보안_관리를_위한_국제표준'})
SET     n.name = '정보 보안 관리를 위한 국제표준',
    n.name_kr = '정보 보안 관리를 위한 국제표준',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_27002'})
MERGE (b:Concept {id: '정보_보안_관리를_위한_국제표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27002'})
MERGE (b:Document {id: 'SE_242.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_27002'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_보안_관리를_위한_국제표준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_242.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_242.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_242.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_242.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_243: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_243'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_244: ISMS-P(Personal Information & Information Security Management System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_244'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SE';

MERGE (n:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
SET     n.name = '① 유사・중복 점검제도의 부담 해소(안 제20조)',
    n.name_kr = '① 유사・중복 점검제도의 부담 해소(안 제20조)',
    n.domain = 'SE',
    n.definition = '상호 인정';

MERGE (n:Standard {id: '심사_생략'})
SET     n.name = '심사 생략',
    n.name_kr = '심사 생략',
    n.domain = 'SE',
    n.definition = '수탁회사가 ISMS-P 인증을 획득한 경우, 위탁사에서의 ISMS-P 인증심사에 부수되는 수탁사의 현장점검 면제';

MERGE (n:Concept {id: '②_심사_품질_향상'})
SET     n.name = '② 심사 품질 향상',
    n.name_kr = '② 심사 품질 향상',
    n.domain = 'SE',
    n.definition = '인증・심사기관 관리';

MERGE (n:Concept {id: '분야별_세부점검항목'})
SET     n.name = '분야별 세부점검항목',
    n.name_kr = '분야별 세부점검항목',
    n.domain = 'SE',
    n.definition = '가상자산, 의료, 공공 등 분야별 특성・신기술을 고려한 세부점검항목 마련(안 제23조)';

MERGE (n:Standard {id: '③_인증_인센티브_확대'})
SET     n.name = '③ 인증 인센티브 확대',
    n.name_kr = '③ 인증 인센티브 확대',
    n.domain = 'SE',
    n.definition = '「정보보호산업의 진흥에 관한 법률」제13조에 따른 정보보호공시기업의 ISMS-P 인증수수료 할인(30%) 적용(안 제21조)';

MERGE (n:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
SET     n.name = '④ 코로나19 등 재난, 재해 상황 발생 시 예외 조항 신설',
    n.name_kr = '④ 코로나19 등 재난, 재해 상황 발생 시 예외 조항 신설',
    n.domain = 'SE',
    n.definition = '심사원 자격 유효기간 유예(안 제15조) 인증 의무대상자 이행 기한 연장(안 제19조) 유사 시 비대면 원격 심사 병행(안 제25조)';

MERGE (n:Concept {id: '⑤_기타_개정_사항'})
SET     n.name = '⑤ 기타 개정 사항',
    n.name_kr = '⑤ 기타 개정 사항',
    n.domain = 'SE',
    n.definition = '심사원이 인증위원회 소속된 경우 자격 유지 의무 유예(안 제15조) - 심사원 지급수수료 기준 및 출장경비 지급 기준을 인터넷진흥원에서 정하여 공고하도록 개정(안 별표 6) - 관계법 개정 사항 반영(안 제21조) - 문구 및 용어 수정(안 제2조, 제20조)';

MERGE (n:Concept {id: '통합_인증'})
SET     n.name = '통합 인증',
    n.name_kr = '통합 인증',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증_심사_분야'})
SET     n.name = '인증 심사 분야(인증기준 개수)',
    n.name_kr = '인증 심사 분야(인증기준 개수)',
    n.domain = 'SE';

MERGE (n:Concept {id: '관리적'})
SET     n.name = '관리적',
    n.name_kr = '관리적',
    n.domain = 'SE',
    n.definition = '인증 신뢰도';

MERGE (n:Concept {id: '기술적'})
SET     n.name = '기술적',
    n.name_kr = '기술적',
    n.domain = 'SE',
    n.definition = '심사원 인증 수행 역량';

MERGE (n:Concept {id: '물리적_및_독립성'})
SET     n.name = '물리적 및 독립성',
    n.name_kr = '물리적 및 독립성',
    n.domain = 'SE',
    n.definition = '심사원 부적절한 행동';

MERGE (n:Concept {id: '물리적_및_인식'})
SET     n.name = '물리적 및 인식',
    n.name_kr = '물리적 및 인식',
    n.domain = 'SE',
    n.definition = '투자 가이드 마련';

// --- 관계 ---

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Standard {id: '심사_생략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '②_심사_품질_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '분야별_세부점검항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Standard {id: '③_인증_인센티브_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '⑤_기타_개정_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통합_인증'})
MERGE (b:Concept {id: '인증_심사_분야'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '통합_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '인증_심사_분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '관리적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '기술적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '물리적_및_독립성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Concept {id: '물리적_및_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'isms_p'})
MERGE (b:Document {id: 'SE_244'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_유사・중복_점검제도의_부담_해소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '심사_생략'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_심사_품질_향상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분야별_세부점검항목'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '③_인증_인센티브_확대'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_코로나19_등_재난,_재해_상황_발생_시_예외_조항_신설'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_기타_개정_사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_심사_분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_및_독립성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_및_인식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_245: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_245'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_246.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_246.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_246.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_246.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_246.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_246.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_247: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_247'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_248: ISO/IEC 27017(클라우드 서비스 정보보호 통제)을 설명하시오.
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_248'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iso/iec_27017을_설명하시오.'})
SET     n.name = 'ISO/IEC 27017(클라우드 서비스 정보보호 통제)을 설명하시오.',
    n.name_kr = 'ISO/IEC 27017(클라우드 서비스 정보보호 통제)을 설명하시오.',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안표준'})
SET     n.name = '보안표준',
    n.name_kr = '보안표준',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'iso/iec_27017을_설명하시오.'})
MERGE (b:Document {id: 'SE_248'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iso/iec_27017을_설명하시오.'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안표준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_249: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_249'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_250: 클라우드 보안 인증제도
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_250'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드_보안_인증제도'})
SET     n.name = '클라우드 보안 인증제도',
    n.name_kr = '클라우드 보안 인증제도',
    n.domain = 'SE';

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SE';

MERGE (n:Concept {id: '클라우드_보안인증제도'})
SET     n.name = '클라우드 보안인증제도',
    n.name_kr = '클라우드 보안인증제도',
    n.domain = 'SE';

MERGE (n:Concept {id: 'kisa'})
SET     n.name = 'KISA',
    n.name_kr = '한국인터넷진흥원',
    n.domain = 'SE',
    n.aliases = ['KISA', '한국인터넷진흥원'];

// --- 관계 ---

MERGE (a:Concept {id: '클라우드_보안인증제도'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Concept {id: 'kisa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Document {id: 'SE_250'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_보안인증제도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kisa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_251: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_251'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_252: ISO/IEC 27100
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_252'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iso_iec_27100'})
SET     n.name = 'ISO/IEC 27100',
    n.name_kr = 'ISO/IEC 27100',
    n.domain = 'SE',
    n.aliases = ['ISO/IEC 27100'];

// --- 관계 ---

MERGE (a:Concept {id: 'iso_iec_27100'})
MERGE (b:Document {id: 'SE_252'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iso_iec_27100'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_253: 버그 바운티(Bug Bounty)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_253'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'bug_bounty'})
SET     n.name = 'Bug Bounty',
    n.name_kr = '버그 바운티',
    n.domain = 'SE',
    n.aliases = ['Bug Bounty', '버그 바운티'];

MERGE (n:Concept {id: '보안_표준_및_관리적_보안'})
SET     n.name = '보안 표준(정책) 및 관리적 보안',
    n.name_kr = '보안 표준(정책) 및 관리적 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sw취약점'})
SET     n.name = 'SW취약점',
    n.name_kr = 'SW취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '포상금'})
SET     n.name = '포상금',
    n.name_kr = '포상금',
    n.domain = 'SE';

MERGE (n:Concept {id: '화이트_해커'})
SET     n.name = '화이트 해커',
    n.name_kr = '화이트 해커',
    n.domain = 'SE';

MERGE (n:Concept {id: '출현도'})
SET     n.name = '출현도',
    n.name_kr = '출현도',
    n.domain = 'SE';

MERGE (n:Concept {id: '영향도'})
SET     n.name = '영향도',
    n.name_kr = '영향도',
    n.domain = 'SE';

MERGE (n:Concept {id: '공격_효과성'})
SET     n.name = '공격 효과성',
    n.name_kr = '공격 효과성',
    n.domain = 'SE';

MERGE (n:Concept {id: '발굴_수준'})
SET     n.name = '발굴 수준',
    n.name_kr = '발굴 수준',
    n.domain = 'SE';

MERGE (n:Law {id: '법적_근거'})
SET     n.name = '법적 근거',
    n.name_kr = '법적 근거',
    n.domain = 'SE',
    n.definition = '정보통신망법 제 48조(정보통신망 침해행위 등의 금지)';

MERGE (n:Concept {id: '운영_정책'})
SET     n.name = '운영 정책',
    n.name_kr = '운영 정책',
    n.domain = 'SE',
    n.definition = '제조사가 보안 패치 한 날로부터 120일(4개월) 이전에 외부 공개 불가 - 신고 내용이 다르게 밝혀지거나, 제 3자에게 공개한 경우 포상 대상 제외 및 환수 - 취약점을 이용한 공격코드(Exploit Code)별로 제출 시, 기술 가산점 부여';

MERGE (n:Threat {id: '포상_대상'})
SET     n.name = '포상 대상',
    n.name_kr = '포상 대상',
    n.domain = 'SE',
    n.definition = '최신 버전의 소프트웨어에 영향을 줄 수 있는 신규 보안 취약점(제로데이 취약점)';

MERGE (n:Concept {id: '포상_지급'})
SET     n.name = '포상 지급',
    n.name_kr = '포상 지급',
    n.domain = 'SE',
    n.definition = '분기별 취약점 평가 실시, 평가 결과에 따라 최소 30만원 ~ 최고 500만원 포상';

MERGE (n:Concept {id: '평가_기준'})
SET     n.name = '평가 기준',
    n.name_kr = '평가 기준',
    n.domain = 'SE',
    n.definition = '출현도, 영향도, 공격 효과성, 발굴 수준';

// --- 관계 ---

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: 'sw취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '포상금'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '화이트_해커'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '출현도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '영향도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '공격_효과성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '발굴_수준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Law {id: '법적_근거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '운영_정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Threat {id: '포상_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '포상_지급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Concept {id: '평가_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Document {id: 'SE_253'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bug_bounty'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포상금'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화이트_해커'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출현도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영향도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_효과성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발굴_수준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '법적_근거'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '포상_대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포상_지급'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_기준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_254: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_254'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_255: ISO 28000
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_255'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_28000'})
SET     n.name = 'ISO 28000',
    n.name_kr = 'ISO 28000',
    n.domain = 'SE',
    n.aliases = ['ISO 28000'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '범위관리'})
SET     n.name = '범위관리',
    n.name_kr = '범위관리',
    n.domain = 'SE';

MERGE (n:Concept {id: 'wbs'})
SET     n.name = 'WBS',
    n.name_kr = 'WBS',
    n.domain = 'SE',
    n.aliases = ['WBS'];

MERGE (n:Concept {id: '1._범위'})
SET     n.name = '1. 범위',
    n.name_kr = '1. 범위',
    n.domain = 'SE',
    n.definition = '공급사슬 보안인증에 필요한 보안경영시스템의 내용과 그 적용범위';

MERGE (n:Concept {id: '2._인증규격'})
SET     n.name = '2. 인증규격',
    n.name_kr = '2. 인증규격',
    n.domain = 'SE',
    n.definition = '없음';

MERGE (n:Concept {id: '3._용어정의'})
SET     n.name = '3. 용어정의',
    n.name_kr = '3. 용어정의',
    n.domain = 'SE',
    n.definition = '보안경영시스템의 주요 용어 정의(시설, 보안, 보안경영, 보안경영목표, 보안경영방침, 보안경영프로그램, 보안경영세부목표, 이해관계자, 공급사슬, 다운스트림, 업스트림, 최고경영자, 지속적개선)';

MERGE (n:Concept {id: '4._보안경영_시스템_요구사항'})
SET     n.name = '4. 보안경영 시스템 요구사항',
    n.name_kr = '4. 보안경영 시스템 요구사항',
    n.domain = 'SE',
    n.definition = '4.1 일반요구사항';

MERGE (n:Concept {id: '4.2_보안경영방침'})
SET     n.name = '4.2 보안경영방침',
    n.name_kr = '4.2 보안경영방침',
    n.domain = 'SE',
    n.definition = '최고경영자는 조직 전반의 보안경영방침을 승인하고 문서화하여 유지';

MERGE (n:Concept {id: '4.3_보안리스크_평가_및_기획'})
SET     n.name = '4.3 보안리스크 평가 및 기획',
    n.name_kr = '4.3 보안리스크 평가 및 기획',
    n.domain = 'SE',
    n.definition = '4.3.1 보안리스크 평가 4.3.2 법률, 강제 요구사항 및 그 밖의 보안 규정 요구사항 4.3.3 보안경영목표 4.3.4 보안세부목표 4.3.5 보안프로그램';

MERGE (n:Concept {id: '4.4_실행_및_운영'})
SET     n.name = '4.4 실행 및 운영',
    n.name_kr = '4.4 실행 및 운영',
    n.domain = 'SE',
    n.definition = '4.4.1 보안경영구조, 권한 및 책임 4.4.2 적격성, 교육훈련 및 인식 4.4.3 의사소통 4.4.4 문서화 4.4.5 문서 및 데이터 관리 4.4.6 운영관리 4.4.7 비상시 대비, 대응 및 보안복구';

MERGE (n:Concept {id: '4.5_점검_및_시정조치'})
SET     n.name = '4.5 점검 및 시정조치',
    n.name_kr = '4.5 점검 및 시정조치',
    n.domain = 'SE',
    n.definition = '4.5.1 보안성과측정 및 모니터링 4.5.2 시스템 평가 4.5.3 보안관련 실패, 사건, 부적한 사항, 그리고 시정조치 및 예방조치 4.5.4 기록관리 4.5.5 심사';

MERGE (n:Concept {id: '4.6_경영검토_및_지속적_개선'})
SET     n.name = '4.6 경영검토 및 지속적 개선',
    n.name_kr = '4.6 경영검토 및 지속적 개선',
    n.domain = 'SE',
    n.definition = '최고경영자는 보안경영시스템의 적절성, 충족성, 효과성을 보장하기 위해 주기적으로 검토하고 문서로 보유';

MERGE (n:Concept {id: '물리적_보안'})
SET     n.name = '물리적 보안',
    n.name_kr = '물리적 보안',
    n.domain = 'SE',
    n.definition = '모든 건물과 재산이 불법진입․침입으로부터 보호될 것';

MERGE (n:Concept {id: '출입_통제'})
SET     n.name = '출입 통제',
    n.name_kr = '출입 통제',
    n.domain = 'SE',
    n.definition = '시설 및 운송수단에 대한 불법 접근 금지';

MERGE (n:Concept {id: '절차_보안'})
SET     n.name = '절차 보안',
    n.name_kr = '절차 보안',
    n.domain = 'SE',
    n.definition = '기록되지 않은 물질이 운송수단 또는 화물에 도입 되는 것을 막고, 불법적인 접근을 막기에 적합할 것';

MERGE (n:Concept {id: '인적_보안'})
SET     n.name = '인적 보안',
    n.name_kr = '인적 보안',
    n.domain = 'SE',
    n.definition = '－회사는 고용평등 및 개인정보보호에 관한 법률을 충분히 고려해서 장래 고 용인에 대한 점검, 신청서 검증을 위한 내부 절차를 마련해야 함 －내부 절차는 고용인의 이력 확인 및 특정 고용인의 관련 기능의 신뢰성에 대한 조사를 포함';

MERGE (n:Concept {id: '문서화_절차'})
SET     n.name = '문서화 절차',
    n.name_kr = '문서화 절차',
    n.domain = 'SE',
    n.definition = '회사는 서류의 완결성, 판독성, 정확성 및 제출 시간을 확인';

MERGE (n:Concept {id: '정보보안'})
SET     n.name = '정보보안',
    n.name_kr = '정보보안',
    n.domain = 'SE',
    n.definition = '물류 부문에서 정보전달 절차를 확실하게 유지';

MERGE (n:Concept {id: '안전한_화물_흐름'})
SET     n.name = '안전한 화물 흐름',
    n.name_kr = '안전한 화물 흐름',
    n.domain = 'SE',
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
MERGE (b:Document {id: 'SE_255'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_28000'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범위관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1._범위'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._인증규격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._용어정의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._보안경영_시스템_요구사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.2_보안경영방침'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.3_보안리스크_평가_및_기획'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.4_실행_및_운영'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.5_점검_및_시정조치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4.6_경영검토_및_지속적_개선'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출입_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절차_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서화_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전한_화물_흐름'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_256: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_256'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_257: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_257'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_258: 개인정보 보호기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_258'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '개인정보_보호기술'})
SET     n.name = '개인정보 보호기술',
    n.name_kr = '개인정보 보호기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '디지털보안'})
SET     n.name = '디지털보안',
    n.name_kr = '디지털보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: '개인정보의_처리(수집'})
SET     n.name = '개인정보의 처리(수집',
    n.name_kr = '개인정보의 처리(수집',
    n.domain = 'SE';

MERGE (n:Concept {id: '기록'})
SET     n.name = '기록',
    n.name_kr = '기록',
    n.domain = 'SE';

MERGE (n:Concept {id: '파기_등)'})
SET     n.name = '파기 등)',
    n.name_kr = '파기 등)',
    n.domain = 'SE';

MERGE (n:Concept {id: '부정_사용'})
SET     n.name = '부정 사용',
    n.name_kr = '부정 사용',
    n.domain = 'SE';

MERGE (n:Concept {id: '유출_등_위험'})
SET     n.name = '유출 등 위험',
    n.name_kr = '유출 등 위험',
    n.domain = 'SE';

MERGE (n:Threat {id: '개인'})
SET     n.name = '개인',
    n.name_kr = '개인',
    n.domain = 'SE',
    n.definition = '개인 정보 유출에 따른 정신적/금전적 손해 - 각종 범죄에 대한 노출 가능성 증가(보이스 피싱,스팸 메일, 유괴 등)';

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'SE',
    n.definition = '개인 정보 유출 시 기업 이미지 실추, 소비자 단체 등의 불매 운동 - 다수 피해자에 대한 집단 손해배상 등으로 기업 경영 타격';

MERGE (n:Concept {id: '국가'})
SET     n.name = '국가',
    n.name_kr = '국가',
    n.domain = 'SE',
    n.definition = '국가 브랜드 하락, 전자 정부 신뢰성 하락 - 프라이버시 라운드 대두에 따른 IT산업 수출애로';

MERGE (n:Concept {id: '통제그룹'})
SET     n.name = '통제그룹',
    n.name_kr = '통제그룹',
    n.domain = 'SE';

MERGE (n:Concept {id: '통제요소'})
SET     n.name = '통제요소',
    n.name_kr = '통제요소',
    n.domain = 'SE';

MERGE (n:Concept {id: '수집_관련_통제'})
SET     n.name = '수집 관련 통제',
    n.name_kr = '수집 관련 통제',
    n.domain = 'SE',
    n.definition = '개인정보 항목을 명확히 분류하고 항목별 수집 목적을 개인정보 관리규정에 명시 -상업적 목적으로 수집하는 개인정보에 대한 사항은 동의 등의 절차를 인정보보호정책에 포함. -개인정보 항목별로 수집 목적, 이용기간, 제공처 등의 사항을 명시 -개인정보 수집 방법을 개인정보보호정책에 명시';

MERGE (n:Concept {id: '저장_및_관리에_대한_통제'})
SET     n.name = '저장 및 관리에 대한 통제',
    n.name_kr = '저장 및 관리에 대한 통제',
    n.domain = 'SE',
    n.definition = '개인정보 데이터베이스에 대한 접근 권한을 문서화 -개인정보 노출을 방지하기 위한 관리대책을 개인정보 관리규정에 포함 -개인정보책임자는 개인정보관리대책을 개인정보관리규정에 포함하여 운영 -개인정보 책임자는 개인정보 노출에 대한 대응방안을 관리규정에 명시';

MERGE (n:Concept {id: '이용_관련_통제'})
SET     n.name = '이용 관련 통제',
    n.name_kr = '이용 관련 통제',
    n.domain = 'SE',
    n.definition = '개인정보 분석에 대한 동의 절차 및 분석 절차 명세화, 로그 기록 -광고성 스팸, SMS 등의 발송 금지를 개인정보 관리규정에 명시 -개인정보 위탁사업자와 제 3 서비스 제공자 별로 개인 정보 데이터베이스 접근 권한관리 방침을 개인정보 관리규정에 명시';

MERGE (n:Concept {id: '파기_관련_통제'})
SET     n.name = '파기 관련 통제',
    n.name_kr = '파기 관련 통제',
    n.domain = 'SE',
    n.definition = '보유기간이 경과한 개인정보를 개인정보 데이터베이스나 시스템에서 파기하는 절차 명시 -개인정보의 보유기간을 설정하는 근거를 문서화.';

// --- 관계 ---

MERGE (a:Concept {id: 'pet'})
MERGE (b:Concept {id: '디지털보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '개인정보의_처리(수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '기록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '파기_등)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '부정_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '유출_등_위험'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Threat {id: '개인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '국가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '통제그룹'})
MERGE (b:Concept {id: '통제요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '통제그룹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '통제요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '수집_관련_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '저장_및_관리에_대한_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '이용_관련_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Concept {id: '파기_관련_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Document {id: 'SE_258'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '개인정보_보호기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보의_처리(수집'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기록'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파기_등)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정_사용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유출_등_위험'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '개인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통제그룹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통제요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집_관련_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저장_및_관리에_대한_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용_관련_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파기_관련_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_259: 개인정보 익명화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_259'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '개인정보_익명화'})
SET     n.name = '개인정보 익명화',
    n.name_kr = '개인정보 익명화',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: '처리기법_유형:'})
SET     n.name = '처리기법 유형:',
    n.name_kr = '처리기법 유형:',
    n.domain = 'SE';

MERGE (n:Concept {id: 'aggregation'})
SET     n.name = '총계처리',
    n.name_kr = '총계처리',
    n.domain = 'SE';

MERGE (n:Concept {id: 'data_suppression'})
SET     n.name = '범주화',
    n.name_kr = '범주화',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터_값_삭제'})
SET     n.name = '데이터 값 삭제',
    n.name_kr = '데이터 값 삭제',
    n.domain = 'SE';

MERGE (n:Concept {id: 'data_masking'})
SET     n.name = '데이터 마스킹',
    n.name_kr = '데이터 마스킹',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'pet'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Concept {id: '처리기법_유형:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Concept {id: 'aggregation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Concept {id: 'data_suppression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Concept {id: '데이터_값_삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Concept {id: 'data_masking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Document {id: 'SE_259'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '개인정보_익명화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리기법_유형:'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aggregation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_suppression'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_값_삭제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_260: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_260'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_261: Pseudonymisation(가명처리)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_261'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pseudonymisation'})
SET     n.name = 'Pseudonymisation',
    n.name_kr = '가명처리',
    n.domain = 'SE',
    n.aliases = ['Pseudonymisation', '가명처리'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '의료정보'})
SET     n.name = '의료정보',
    n.name_kr = '의료정보',
    n.domain = 'SE';

MERGE (n:Concept {id: '시부차'})
SET     n.name = '시부차',
    n.name_kr = '시부차',
    n.domain = 'SE';

MERGE (n:Concept {id: '매휴~'})
SET     n.name = '매휴~',
    n.name_kr = '매휴~',
    n.domain = 'SE';

MERGE (n:Concept {id: '개인정보'})
SET     n.name = '개인정보',
    n.name_kr = '개인정보',
    n.domain = 'SE',
    n.definition = '개인이 알아볼 수 있는 정보, 다른 정보와 쉽게 결합해 알아볼 수 있는 정보';

MERGE (n:Concept {id: '가명정보'})
SET     n.name = '가명정보',
    n.name_kr = '가명정보',
    n.domain = 'SE',
    n.definition = '추가정보의 사용 없이는 특정 개인을 알아볼 수 없게 조치한 정보';

MERGE (n:Concept {id: '익명정보'})
SET     n.name = '익명정보',
    n.name_kr = '익명정보',
    n.domain = 'SE',
    n.definition = '다른 정보를 사용하여도 더 이상 개인을 알아볼 수 없게 조치한 정보';

MERGE (n:Concept {id: '삭제기술'})
SET     n.name = '삭제기술',
    n.name_kr = '삭제기술',
    n.domain = 'SE',
    n.definition = '삭제';

MERGE (n:Concept {id: '마스킹'})
SET     n.name = '마스킹',
    n.name_kr = '마스킹',
    n.domain = 'SE',
    n.definition = '특정 항목의 일부 또는 전부를 공백 또는 문자로 대체';

MERGE (n:Concept {id: '통계도구'})
SET     n.name = '통계도구',
    n.name_kr = '통계도구',
    n.domain = 'SE',
    n.definition = '총계처리';

MERGE (n:Concept {id: '부분_총계'})
SET     n.name = '부분 총계',
    n.name_kr = '부분 총계',
    n.domain = 'SE',
    n.definition = '다른 정보에 비하여 오차 범위가 큰 항목을 평균값 등으로 대체';

MERGE (n:Concept {id: '일반화'})
SET     n.name = '일반화',
    n.name_kr = '일반화',
    n.domain = 'SE',
    n.definition = '일반 라운딩';

MERGE (n:Concept {id: 'random_rounding'})
SET     n.name = 'Random rounding',
    n.name_kr = '랜덤 라운딩',
    n.domain = 'SE',
    n.definition = '수치 데이터를 임의의 수인 자리 수, 실제 수 기준으로 올림(round up) 또는 내림(round down)하는 기법',
    n.aliases = ['Random rounding', '랜덤 라운딩'];

MERGE (n:Concept {id: 'controlled_rounding'})
SET     n.name = 'Controlled rounding',
    n.name_kr = '제어 라운딩',
    n.domain = 'SE',
    n.definition = '라운딩 적용 시 값의 변경에 따라 행이나 열의 합이 원본의 행이나 열의 합과 일치하지 않는 단점을 해결하기 위해 원본과 결과가 동일하도록 라운딩을 적용하는 기법',
    n.aliases = ['Controlled rounding', '제어 라운딩'];

MERGE (n:Concept {id: 'top_and_bottom_coding'})
SET     n.name = 'Top and bottom coding',
    n.name_kr = '상하단코딩',
    n.domain = 'SE',
    n.definition = '정규분포의 특성을 가진 데이터에서 양쪽 끝에 치우친 정보는 적은 수의 분포를 가지게 되어 식별성을 가질 수 있음 - 이를 해결하기 위해 적은 수의 분포를 가진 양 끝단의 정보를 범주화 등의 기법을 적용하여 식별성을 낮추는 기법',
    n.aliases = ['Top and bottom coding', '상하단코딩'];

MERGE (n:Concept {id: '로컬_일반화'})
SET     n.name = '로컬 일반화',
    n.name_kr = '로컬 일반화',
    n.domain = 'SE',
    n.definition = '전체 정보집합물 중 특정 열 항목(들)에서 특이한 값을 가지거나 분포상 의 특이성으로 인해 식별성이 높아지는 경우 해당 부분만 일반화를 적용하여 식별성을 낮추는 기법';

MERGE (n:Concept {id: 'data_range'})
SET     n.name = 'Data range',
    n.name_kr = '범위 방법',
    n.domain = 'SE',
    n.definition = '수치 데이터를 임의의 수 기준의 범위(range)로 설정하는 기법으로, 해당 값의 범위 또는 구간(interval)으로 표현',
    n.aliases = ['Data range', '범위 방법'];

MERGE (n:Concept {id: '문자데이터_범주화'})
SET     n.name = '문자데이터 범주화',
    n.name_kr = '문자데이터 범주화',
    n.domain = 'SE',
    n.definition = '문자로 저장된 정보에 대해 보다 상위의 개념으로 범주화하는 기법';

MERGE (n:Concept {id: 'encryption'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '양방향 암호화';

MERGE (n:Concept {id: '암호학적_해쉬함수'})
SET     n.name = '암호학적 해쉬함수',
    n.name_kr = '암호학적 해쉬함수',
    n.domain = 'SE',
    n.definition = '원문에 대한 암호화의 적용만 가능하고 암호문에 대한 복호화 적용이 불가능한 암호화 기법(MDC, MAC로 구분)';

MERGE (n:Concept {id: '순서보존_암호화'})
SET     n.name = '순서보존 암호화',
    n.name_kr = '순서보존 암호화',
    n.domain = 'SE',
    n.definition = '원본정보의 순서와 암호값의 순서가 동일하게 유지되는 암호화 방식';

MERGE (n:Concept {id: '형태보존_암호화'})
SET     n.name = '형태보존 암호화',
    n.name_kr = '형태보존 암호화',
    n.domain = 'SE',
    n.definition = '원본 정보의 형태와 암호화된 값의 형태가 동일하게 유지되는 암호화 방식';

MERGE (n:Concept {id: '동형암호화'})
SET     n.name = '동형암호화',
    n.name_kr = '동형암호화',
    n.domain = 'SE',
    n.definition = '암호화된 상태의 연산값을 복호화 하면 원래의 값을 연산한 것과 동일한 결과를 얻을 수 있는 4세대 암호화 기법';

MERGE (n:Concept {id: '다형성_암호화'})
SET     n.name = '다형성 암호화',
    n.name_kr = '다형성 암호화',
    n.domain = 'SE',
    n.definition = '가명정보의 부정한 결합을 차단하기 위해 각 도메인별로 서로 다른 가명처리 방법을 사용하여 정보를 제공하는 방법 - 정보 제공 시 서로 다른 방식의 암호화된 가명처리를 적용함에 따라 도메인별로 다른 가명정보를 가지게 됨';

MERGE (n:Concept {id: '무작위화_기술'})
SET     n.name = '무작위화 기술',
    n.name_kr = '무작위화 기술',
    n.domain = 'SE',
    n.definition = '잡음 추가';

MERGE (n:Concept {id: '치환'})
SET     n.name = '치환',
    n.name_kr = '치환',
    n.domain = 'SE',
    n.definition = '분석 시 가치가 적고 식별성이 높은 열 항목에 대해 대상 열 항목의 모든 값을 열 항목 내에서 무작위로 순서를 변경하여 식별성을 낮추는 기법';

MERGE (n:Concept {id: '토큰화'})
SET     n.name = '토큰화',
    n.name_kr = '토큰화',
    n.domain = 'SE',
    n.definition = '개인을 식별할 수 있는 정보를 토큰으로 변환 후 대체함으로써 개인정보를 직접 사용하여 발생하는 식별 위험을 제거하여 개인정보를 보호하는 기술';

MERGE (n:Concept {id: '기타_기술'})
SET     n.name = '기타 기술',
    n.name_kr = '기타 기술',
    n.domain = 'SE',
    n.definition = '표본추출 (Sampling)';

MERGE (n:Concept {id: 'anatomization'})
SET     n.name = 'Anatomization',
    n.name_kr = '해부화',
    n.domain = 'SE',
    n.definition = '기존 하나의 데이터셋(테이블)을 식별성이 있는 정보집합물과 식별성이 없는 정보집합물로 구성된 2개의 데이터셋으로 분리하는 기술',
    n.aliases = ['Anatomization', '해부화'];

MERGE (n:Concept {id: 'synthetic_data'})
SET     n.name = 'Synthetic data',
    n.name_kr = '재현데이터',
    n.domain = 'SE',
    n.definition = '원본과 최대한 유사한 통계적 성질을 보이는 가상의 데이터를 생성하기 위해 개인정보의 특성을 분석하여 새로운 데이터를 생성하는 기법',
    n.aliases = ['Synthetic data', '재현데이터'];

MERGE (n:Concept {id: 'homomorphic_secret_sharing'})
SET     n.name = 'Homomorphic secret sharing',
    n.name_kr = '동형비밀분산',
    n.domain = 'SE',
    n.definition = '식별정보 또는 기타 식별가능정보를 메시지 공유 알고리즘에 의해 생성된 두 개 이상의 쉐어(share)*로 대체 *기밀사항을 재구성하는데 사용할 수 있는 하위 집합',
    n.aliases = ['Homomorphic secret sharing', '동형비밀분산'];

MERGE (n:Concept {id: 'differential_privacy'})
SET     n.name = 'Differential privacy',
    n.name_kr = '차분 프라이버시',
    n.domain = 'SE',
    n.definition = '특정 개인에 대한 사전지식이 있는 상태에서 데이터베이스 질의(Query)에 대한 응답 값으로 개인을 알 수 없도록 응답 값에 임의의 숫자 잡음(Noise)을 추가하여 특정 개인의 존재 여부를 알 수 없도록 하는 기법 - 1개 항목이 차이나는 두 데이터베이스간의 차이(확률분포)를 기준으로 하는 프라이버시 보호 모델',
    n.aliases = ['Differential privacy', '차분 프라이버시'];

MERGE (n:Concept {id: '가명정보의_정의'})
SET     n.name = '가명정보의 정의',
    n.name_kr = '가명정보의 정의',
    n.domain = 'SE',
    n.definition = '(i) 개인정보가 추가적인 정보를 사용하지 않고서는 더 이상 개인정보주체를 특정할 수 없도록, 그 개인정보를 처리하는 것으로서, (ii) 개인정보가 식별되거나 식별될 수 있는 자연인을 특정하지 않도록, 그 추가적인 정보를 ㉮ 별도로 보관하고 ㉯ 기술적⋅관리적 안전조치를 취한 것';

MERGE (n:Concept {id: 'pseudonymization'})
SET     n.name = '가명처리',
    n.name_kr = '가명처리',
    n.domain = 'SE',
    n.definition = '별도로 보관되고 있고 기술적⋅관리적 안전조치가 적용되어 있는 추가적인 정보 없이는 특정 개인과 연계되지 않도록 데이터로부터 직접 식별자(direct identifier)를 분리시키는 과정 - 데이터를 익명화시키는 것에 해당하지 않으면서 개인정보주체를 직접 식별하는 것에 해당하지 않도록 처리하는 것';

MERGE (n:Concept {id: '가명정보_의의'})
SET     n.name = '가명정보 의의',
    n.name_kr = '가명정보 의의',
    n.domain = 'SE',
    n.definition = 'GDPR이 가명정보를 조문에 전격 도입한 것은 개인정보를 보호하는 동시에 이를 활용하기 위하여 매우 융통적인 접근방식을 채택한 것으로 평가된다. 곧 가명처리된 정보는 여전히 식별가능한 자연인에 관한 정보, 곧 개인정보로서(Recital 26) 개인정보 규범의 적용 범위에 편입되어 보호받게 된다. 가명처리된 정보는 별도로 보관되고 안전조치가 적용된 것으로서';

// --- 관계 ---

MERGE (a:Concept {id: '의료정보'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '시부차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '매휴~'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '개인정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '가명정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '익명정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '삭제기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '마스킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '통계도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '부분_총계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '일반화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'random_rounding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'controlled_rounding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'top_and_bottom_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '로컬_일반화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'data_range'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '문자데이터_범주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '암호학적_해쉬함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '순서보존_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '형태보존_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '동형암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '다형성_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '무작위화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '치환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '토큰화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '기타_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'anatomization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'synthetic_data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'homomorphic_secret_sharing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'differential_privacy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '가명정보의_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: 'pseudonymization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Concept {id: '가명정보_의의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Document {id: 'SE_261'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pseudonymisation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시부차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매휴~'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가명정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '익명정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삭제기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계도구'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분_총계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'random_rounding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'controlled_rounding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'top_and_bottom_coding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로컬_일반화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_range'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문자데이터_범주화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호학적_해쉬함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순서보존_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형태보존_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동형암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다형성_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무작위화_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '치환'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토큰화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anatomization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'synthetic_data'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'homomorphic_secret_sharing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'differential_privacy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가명정보의_정의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pseudonymization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가명정보_의의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_263: 프라이버시 보호모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_263'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '프라이버시_보호모델'})
SET     n.name = '프라이버시 보호모델',
    n.name_kr = '프라이버시 보호모델',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: '케익'})
SET     n.name = '케익',
    n.name_kr = '케익',
    n.domain = 'SE';

MERGE (n:Concept {id: '엘다'})
SET     n.name = '엘다',
    n.name_kr = '엘다',
    n.domain = 'SE';

MERGE (n:Concept {id: '티근'})
SET     n.name = '티근',
    n.name_kr = '티근',
    n.domain = 'SE';

MERGE (n:Concept {id: '취약점'})
SET     n.name = '취약점',
    n.name_kr = '취약점',
    n.domain = 'SE',
    n.definition = '동질성 공격';

MERGE (n:Concept {id: '배경지식_공격'})
SET     n.name = '배경지식 공격',
    n.name_kr = '배경지식 공격',
    n.domain = 'SE',
    n.definition = '공격자의 배경 지식을 통해 공격 대상의 민감한 정보를 알아내는 공격';

MERGE (n:Concept {id: '유사성_공격'})
SET     n.name = '유사성 공격',
    n.name_kr = '유사성 공격',
    n.domain = 'SE',
    n.definition = '익명처리된 레코드의 정보가 서로 비슷하다면 ℓ-다양성 모델을 통해 처리되었다 할지라도 프라이버시가 노출될 수 있음';

// --- 관계 ---

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: 'pet'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '케익'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '엘다'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '티근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '취약점'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '배경지식_공격'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Concept {id: '유사성_공격'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Document {id: 'SE_263'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프라이버시_보호모델'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '케익'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엘다'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '티근'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배경지식_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유사성_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_264: PPDM(Privacy Preserving Data Mining)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_264'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'privacy_preserving_data_mining'})
SET     n.name = 'Privacy Preserving Data Mining',
    n.name_kr = 'PPDM',
    n.domain = 'SE',
    n.aliases = ['Privacy Preserving Data Mining', 'PPDM'];

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: 'ppdm'})
SET     n.name = 'PPDM',
    n.name_kr = 'PPDM',
    n.domain = 'SE',
    n.aliases = ['PPDM'];

MERGE (n:Concept {id: '데이터_교란_기법'})
SET     n.name = '데이터 교란 기법',
    n.name_kr = '데이터 교란 기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '분산_프라이버시_보호_기법'})
SET     n.name = '분산 프라이버시 보호 기법',
    n.name_kr = '분산 프라이버시 보호 기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '노이즈_추가'})
SET     n.name = '노이즈 추가',
    n.name_kr = '노이즈 추가',
    n.domain = 'SE';

MERGE (n:Concept {id: '압축기반변환'})
SET     n.name = '압축기반변환',
    n.name_kr = '압축기반변환',
    n.domain = 'SE';

MERGE (n:Concept {id: '기하학적변환'})
SET     n.name = '기하학적변환',
    n.name_kr = '기하학적변환',
    n.domain = 'SE';

MERGE (n:Concept {id: 'k-익명화'})
SET     n.name = 'K-익명화',
    n.name_kr = 'K-익명화',
    n.domain = 'SE';

MERGE (n:Concept {id: '차등적_프라이버시'})
SET     n.name = '차등적 프라이버시',
    n.name_kr = '차등적 프라이버시',
    n.domain = 'SE';

MERGE (n:Concept {id: '스칼라_곱과_유클라디언_거리'})
SET     n.name = '스칼라 곱과 유클라디언 거리',
    n.name_kr = '스칼라 곱과 유클라디언 거리',
    n.domain = 'SE';

MERGE (n:Concept {id: '프라이버시_보호_질의_처리'})
SET     n.name = '프라이버시 보호 질의 처리',
    n.name_kr = '프라이버시 보호 질의 처리',
    n.domain = 'SE';

MERGE (n:Concept {id: '프라이버시_보호_집계'})
SET     n.name = '프라이버시 보호 집계',
    n.name_kr = '프라이버시 보호 집계',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'ppdm'})
MERGE (b:Concept {id: 'pet'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '데이터_교란_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '분산_프라이버시_보호_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '노이즈_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '압축기반변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '기하학적변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: 'k-익명화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '차등적_프라이버시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '스칼라_곱과_유클라디언_거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '프라이버시_보호_질의_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Concept {id: '프라이버시_보호_집계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Document {id: 'SE_264'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_mining'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ppdm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_교란_기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_프라이버시_보호_기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노이즈_추가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압축기반변환'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기하학적변환'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'k-익명화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차등적_프라이버시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스칼라_곱과_유클라디언_거리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이버시_보호_질의_처리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이버시_보호_집계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_265: PPDP(privacy-preserving data publishing), 프라이버시 보호 데이터 배포
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_265'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: 'ppdp'})
SET     n.name = 'PPDP',
    n.name_kr = 'PPDP',
    n.domain = 'SE',
    n.aliases = ['PPDP'];

// --- 관계 ---

MERGE (a:Concept {id: 'ppdp'})
MERGE (b:Concept {id: 'pet'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'privacy_preserving_data_publishing'})
MERGE (b:Document {id: 'SE_265'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ppdp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_266.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_266.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_266.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_266.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_266.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_266.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_267: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_267'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_268.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_268.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_268.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_268.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_268.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_268.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_268.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_268.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_268.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_268.5'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_269: PIA(Privacy Impact Assessment)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_269'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'privacy_impact_assessment'})
SET     n.name = 'Privacy Impact Assessment',
    n.name_kr = 'PIA',
    n.domain = 'SE',
    n.aliases = ['Privacy Impact Assessment', 'PIA'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: '개인정보_영향_평가'})
SET     n.name = '개인정보 영향 평가',
    n.name_kr = '개인정보 영향 평가',
    n.domain = 'SE';

MERGE (n:Concept {id: '사전'})
SET     n.name = '사전',
    n.name_kr = '사전',
    n.domain = 'SE';

MERGE (n:Concept {id: '피해확산'})
SET     n.name = '피해확산',
    n.name_kr = '피해확산',
    n.domain = 'SE',
    n.definition = '개인정보 범위 증가';

MERGE (n:Concept {id: '사전예방'})
SET     n.name = '사전예방',
    n.name_kr = '사전예방',
    n.domain = 'SE',
    n.definition = '침해사고 사전 예방';

MERGE (n:Concept {id: '법적근거'})
SET     n.name = '법적근거',
    n.name_kr = '법적근거',
    n.domain = 'SE',
    n.definition = '「개인정보 보호법」 제33조';

MERGE (n:Concept {id: '「개인정보_보호법_시행령」제35조'})
SET     n.name = '「개인정보 보호법 시행령」제35조',
    n.name_kr = '「개인정보 보호법 시행령」제35조',
    n.domain = 'SE',
    n.definition = '일정규모 이상의 전자적으로 처리하는 개인정보파일을 구축, 운영 또는 변경하려는 공공기관은 「개인정보 보호법」(이하 “법”이라 한다) 제33조 및 「개인정보 보호법 시행령」(이하 “영”이라 한다) 제35조에 근거하여 영향평가를 수행해야 함';

MERGE (n:Concept {id: '의무대상'})
SET     n.name = '의무대상',
    n.name_kr = '의무대상',
    n.domain = 'SE',
    n.definition = '5만명 조건';

MERGE (n:Concept {id: '변경_시'})
SET     n.name = '변경 시',
    n.name_kr = '변경 시',
    n.domain = 'SE',
    n.definition = '영 제35조에 근거하여 영향평가를 실시한 기관이 개인정보파일의 운용체계를 변경하는 경우, 변경된 부분에 대해서는 영향평가를 실시';

// --- 관계 ---

MERGE (a:Concept {id: 'pet'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '개인정보_영향_평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '사전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '피해확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '사전예방'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '법적근거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '「개인정보_보호법_시행령」제35조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '의무대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Concept {id: '변경_시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Document {id: 'SE_269'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'privacy_impact_assessment'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_영향_평가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해확산'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전예방'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적근거'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '「개인정보_보호법_시행령」제35조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의무대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경_시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_270: CCTV 개인정보보호
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_270'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cctv_개인정보보호'})
SET     n.name = 'CCTV 개인정보보호',
    n.name_kr = 'CCTV 개인정보보호',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

// --- 관계 ---

MERGE (a:Concept {id: 'cctv_개인정보보호'})
MERGE (b:Concept {id: 'pet'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cctv_개인정보보호'})
MERGE (b:Document {id: 'SE_270'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cctv_개인정보보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_271: P3P(Platform for Privacy Preference Project), 추적금지(Do Not Track, DNT)' 기능
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_271'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: 'p3p'})
SET     n.name = 'P3P',
    n.name_kr = 'P3P',
    n.domain = 'SE',
    n.aliases = ['P3P'];

MERGE (n:Concept {id: 'w3c'})
SET     n.name = 'W3C',
    n.name_kr = 'W3C',
    n.domain = 'SE',
    n.aliases = ['W3C'];

MERGE (n:Concept {id: '개인정보보호'})
SET     n.name = '개인정보보호',
    n.name_kr = '개인정보보호',
    n.domain = 'SE';

MERGE (n:Concept {id: '개방형'})
SET     n.name = '개방형',
    n.name_kr = '개방형',
    n.domain = 'SE';

MERGE (n:Concept {id: '표준화'})
SET     n.name = '표준화',
    n.name_kr = '표준화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'p3p_policy'})
SET     n.name = 'P3P Policy',
    n.name_kr = 'P3P Policy',
    n.domain = 'SE',
    n.aliases = ['P3P Policy'];

MERGE (n:Concept {id: 'p3p_reference'})
SET     n.name = 'P3P Reference',
    n.name_kr = 'P3P Reference',
    n.domain = 'SE',
    n.aliases = ['P3P Reference'];

MERGE (n:Concept {id: '한국형p3p'})
SET     n.name = '한국형P3P',
    n.name_kr = '한국형P3P',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'p3p'})
MERGE (b:Concept {id: 'pet'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: 'w3c'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: '개인정보보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: '개방형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: '표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: 'p3p_policy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: 'p3p_reference'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Concept {id: '한국형p3p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'platform_for_privacy_preference_project'})
MERGE (b:Document {id: 'SE_271'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p3p'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'w3c'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p3p_policy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p3p_reference'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국형p3p'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_272: 개인정보의 기술적, 관리적 보호조치 기준
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_272'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
SET     n.name = '개인정보의 기술적, 관리적 보호조치 기준',
    n.name_kr = '개인정보의 기술적, 관리적 보호조치 기준',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pet'})
SET     n.name = 'PET',
    n.name_kr = '개인정보보호기술',
    n.domain = 'SE',
    n.aliases = ['PET', '개인정보보호기술'];

MERGE (n:Concept {id: '접근_통제'})
SET     n.name = '접근 통제',
    n.name_kr = '접근 통제',
    n.domain = 'SE',
    n.definition = '개인 정보 취급자에 대한 공인 인증서 등 안전한 인증 수단사용 의무화 - 접속 권한을 IP 주소 등으로 제한 의무화 - 접속 기록에 대한 분석으로 개인 정보 유출 탐지 의무화 - 개인 정보를 취급하는 컴퓨터에 대한 망 분리 의무화 - 개인 정보 취급자의 비밀 번호는 영문 대문자, 영문 소문자,숫자, 특수 문자 등 중 2 종 이상으로 조합해 최소 10 자리';

MERGE (n:Concept {id: '접속_기록'})
SET     n.name = '접속 기록',
    n.name_kr = '접속 기록',
    n.domain = 'SE',
    n.definition = '개인 정보 처리 시스템에 대한 접속 기록의 보존 의무화 - 접속 기록의 위/변조 방지를 위한 보관 및 백업 의무화';

MERGE (n:Technology {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '비밀 번호, 바이오 정보는 일방향 암호화 - 보안 서버에 대해 SSL, 암호화 송수신, 저장 정보 암호화 등 사용 규정';

MERGE (n:Concept {id: '악성_프로그램_방지'})
SET     n.name = '악성 프로그램 방지',
    n.name_kr = '악성 프로그램 방지',
    n.domain = 'SE',
    n.definition = '백신 소프트웨어 사용: 월 1 회 이상 주기적 갱신, 점검. 업데이트 사용';

MERGE (n:Concept {id: '출력,_복사시_보호조치'})
SET     n.name = '출력, 복사시 보호조치',
    n.name_kr = '출력, 복사시 보호조치',
    n.domain = 'SE',
    n.definition = '개인 정보 출력 시(인쇄, 화면 표시, 파일 생성 등) 보호 조치 의무화';

MERGE (n:Concept {id: '개인_정보_표시_제한'})
SET     n.name = '개인 정보 표시 제한',
    n.name_kr = '개인 정보 표시 제한',
    n.domain = 'SE',
    n.definition = '개인 정보 업무 처리 과정에서 개인 정보의 마스킹 규정 (성명 중 이름의 첫 번째 글자 이상, 생년월일, 전화번호 또는 휴대폰 전화번호의 국번, 주소의 읍/면/동, IPv4 의 경우 17~24 비트, IPv6 의 경우 113~128 비트 영역)';

MERGE (n:Concept {id: '개인_정보_보호_조직'})
SET     n.name = '개인 정보 보호 조직',
    n.name_kr = '개인 정보 보호 조직',
    n.domain = 'SE',
    n.definition = '개인 정보 관리 책임자 지정 - 개인 정보 관리 책임자와 취급자의 역할 및 책임 규정 - 개인 정보 내부 관리 계획 수립 요구 - 보호 조치의 이행 여부에 대한 내부 점검 요구';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육',
    n.name_kr = '교육',
    n.domain = 'SE',
    n.definition = '개인 정보 관리 책임자와 취급자에 대한 년 2 회 이상의 교육 의무화';

// --- 관계 ---

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '접근_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '접속_기록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Technology {id: '암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '악성_프로그램_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '출력,_복사시_보호조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '개인_정보_표시_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '개인_정보_보호_조직'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Document {id: 'SE_272'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '개인정보의_기술적,_관리적_보호조치_기준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속_기록'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성_프로그램_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력,_복사시_보호조치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_정보_표시_제한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_정보_보호_조직'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_273: ISO 25237
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_273'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_25237'})
SET     n.name = 'ISO 25237',
    n.name_kr = 'ISO 25237',
    n.domain = 'SE',
    n.aliases = ['ISO 25237'];

MERGE (n:Concept {id: '소프트웨어_공학'})
SET     n.name = '소프트웨어 공학',
    n.name_kr = '소프트웨어 공학',
    n.domain = 'SE';

MERGE (n:Concept {id: '의료정보'})
SET     n.name = '의료정보',
    n.name_kr = '의료정보',
    n.domain = 'SE';

MERGE (n:Concept {id: '평균값대체_범주화'})
SET     n.name = '평균값대체 범주화',
    n.name_kr = '평균값대체 범주화',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터_마스킹'})
SET     n.name = '데이터 마스킹',
    n.name_kr = '데이터 마스킹',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '의료정보'})
MERGE (b:Concept {id: '소프트웨어_공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_25237'})
MERGE (b:Concept {id: '평균값대체_범주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_25237'})
MERGE (b:Concept {id: '데이터_마스킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_25237'})
MERGE (b:Document {id: 'SE_273'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_25237'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균값대체_범주화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_마스킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_274: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_274'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_275: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_275'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_276: 정보보호산업진흥법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_276'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '정보보호산업진흥법'})
SET     n.name = '정보보호산업진흥법',
    n.name_kr = '정보보호산업진흥법',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보보호_산업_진흥'})
SET     n.name = '정보보호 산업 진흥',
    n.name_kr = '정보보호 산업 진흥',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보보호_준비도_평가'})
SET     n.name = '정보보호 준비도 평가',
    n.name_kr = '정보보호 준비도 평가',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보보호_공시'})
SET     n.name = '정보보호 공시',
    n.name_kr = '정보보호 공시',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Concept {id: '정보보호_산업_진흥'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Concept {id: '정보보호_준비도_평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Concept {id: '정보보호_공시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Document {id: 'SE_276'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정보보호산업진흥법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보호_산업_진흥'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보호_준비도_평가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보호_공시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_277: 개인정보보호법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_277'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Law {id: '개인정보보호법'})
SET     n.name = '개인정보보호법',
    n.name_kr = '개인정보보호법',
    n.domain = 'SE';

MERGE (n:Concept {id: '디지털_보안'})
SET     n.name = '디지털 보안',
    n.name_kr = '디지털 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '제공자'})
SET     n.name = '제공자',
    n.name_kr = '제공자',
    n.domain = 'SE',
    n.definition = '정보주체';

MERGE (n:Concept {id: '관리자'})
SET     n.name = '관리자',
    n.name_kr = '관리자',
    n.domain = 'SE',
    n.definition = '개인정보 처리자';

MERGE (n:Concept {id: '실무자'})
SET     n.name = '실무자',
    n.name_kr = '실무자',
    n.domain = 'SE',
    n.definition = '개인정보 취급자';

MERGE (n:Concept {id: '개정내용'})
SET     n.name = '개정내용',
    n.name_kr = '개정내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '개정_세부내용'})
SET     n.name = '개정 세부내용',
    n.name_kr = '개정 세부내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '1._신기술·신산업_등_데이터_경제_성장_견인'})
SET     n.name = '1. 신기술·신산업 등 데이터 경제 성장 견인',
    n.name_kr = '1. 신기술·신산업 등 데이터 경제 성장 견인',
    n.domain = 'SE',
    n.definition = '개인정보 전송요구권 신설';

MERGE (n:Concept {id: '이동형_영상정보처리기기_규정'})
SET     n.name = '이동형 영상정보처리기기 규정',
    n.name_kr = '이동형 영상정보처리기기 규정',
    n.domain = 'SE',
    n.definition = '이동형 기기의 특성을 반영한 수집 기준, 촬영 사실 표시 등 합리적인 운영기준 마련';

MERGE (n:Concept {id: '온·오프라인_규제_일원화'})
SET     n.name = '온·오프라인 규제 일원화',
    n.name_kr = '온·오프라인 규제 일원화',
    n.domain = 'SE',
    n.definition = '일반규정과 특례규정을 일원화하여 ‘동일행위-동일규제’ 원칙 적용으로 불합리한 규제 정비';

MERGE (n:Concept {id: '2._디지털_시대에_적합한_국민의_적극적_권리_강화'})
SET     n.name = '2. 디지털 시대에 적합한 국민의 적극적 권리 강화',
    n.name_kr = '2. 디지털 시대에 적합한 국민의 적극적 권리 강화',
    n.domain = 'SE',
    n.definition = '개인정보 처리요건 정비';

MERGE (n:Concept {id: '개인정보_처리방침_평가제_도입'})
SET     n.name = '개인정보 처리방침 평가제 도입',
    n.name_kr = '개인정보 처리방침 평가제 도입',
    n.domain = 'SE',
    n.definition = '처리방침의 적정성 여부, 알기 쉽게 작성했는지 여부 등을 평가하여 필요시 개선권고 할 수 있도록 개선';

MERGE (n:Concept {id: '자동화된_결정_대응권'})
SET     n.name = '자동화된 결정 대응권',
    n.name_kr = '자동화된 결정 대응권',
    n.domain = 'SE',
    n.definition = '자동화된 결정이 정보주체의 권리·의무에 영향을 미치는 경우, 거부 및 설명 등 요구권 신설';

MERGE (n:Concept {id: '개인정보_분쟁조정'})
SET     n.name = '개인정보 분쟁조정',
    n.name_kr = '개인정보 분쟁조정',
    n.domain = 'SE',
    n.definition = '분쟁조정 의무 참여 대상을 모든 개인정보처리자로 확대하고, 사실확인이 필요한 경우 사실조사 근거 마련';

MERGE (n:Concept {id: '사적_목적_이용_금지'})
SET     n.name = '사적 목적 이용 금지',
    n.name_kr = '사적 목적 이용 금지',
    n.domain = 'SE',
    n.definition = '금지행위 규정에 정당한 권한 없이 허용된 권한을 초과하여 타인의 개인정보를 ‘이용’하는 행위 추가';

MERGE (n:Concept {id: '3._글로벌_스탠다드에_부합하는_법_제도_정비'})
SET     n.name = '3. 글로벌 스탠다드에 부합하는 법 제도 정비',
    n.name_kr = '3. 글로벌 스탠다드에 부합하는 법 제도 정비',
    n.domain = 'SE',
    n.definition = '국외이전 요건 다양화 및 중지명령권 신설';

MERGE (n:Concept {id: '과징금·벌칙_규정_정비'})
SET     n.name = '과징금·벌칙 규정 정비',
    n.name_kr = '과징금·벌칙 규정 정비',
    n.domain = 'SE',
    n.definition = '과도한 형벌 규정을 경제제재 중심으로 전환하는 대신, 과징금 상한 및 대상 확대 등을 통해 실효성 확보';

MERGE (n:Concept {id: '개정_내용'})
SET     n.name = '개정 내용',
    n.name_kr = '개정 내용',
    n.domain = 'SE',
    n.definition = '정보 주체';

MERGE (n:Concept {id: '보유기관'})
SET     n.name = '보유기관 (개인정보 처리자)',
    n.name_kr = '보유기관 (개인정보 처리자)',
    n.domain = 'SE',
    n.definition = '전송요구를 받은 개인정보처리자는 ①정보주체 본인, ②다른 개인정보처리자, ③개인정보관리 전문기관에 전송해야 할 의무를 부담 - 시간, 비용, 기술적으로 허용되는 합리적인 범위 내에서 해당 정보를 컴퓨터 등 정보처리장치로 처리 가능한 형태로 전송';

MERGE (n:Concept {id: '수신기관'})
SET     n.name = '수신기관 (개인정보 처리자)',
    n.name_kr = '수신기관 (개인정보 처리자)',
    n.domain = 'SE',
    n.definition = '개인정보를 전송받은 개인정보처리자는 정보주체와의 계약ㆍ동의를 통해 정보주체에 맞는 서비스를 제공';

MERGE (n:Concept {id: '개인정보관리_전문기관'})
SET     n.name = '개인정보관리 전문기관',
    n.name_kr = '개인정보관리 전문기관',
    n.domain = 'SE',
    n.definition = '▸정부의 지정을 받아 개인정보의 전송 요구권 행사 지원, 개인정보 전송시스템의 구축 및 표준화, 개인정보의 관리ㆍ분석 등의 업무 수행';

MERGE (n:Concept {id: '전송정보'})
SET     n.name = '전송정보',
    n.name_kr = '전송정보',
    n.domain = 'SE',
    n.definition = '모든 분야의 개인정보를 포괄하되, 동의 또는 계약에 따라 컴퓨터 등정보처리장치로 처리되는 개인정보를 대상으로 함';

MERGE (n:Concept {id: '권리_내용'})
SET     n.name = '권리 내용',
    n.name_kr = '권리 내용',
    n.domain = 'SE',
    n.definition = '정보주체의 권리 또는 의무에 중대한 영향을 미치는 자동화된 결정에 대한 거부 및 설명을 요구할 권리';

MERGE (n:Concept {id: '권리_예외'})
SET     n.name = '권리 예외',
    n.name_kr = '권리 예외',
    n.domain = 'SE',
    n.definition = '거부권 예외(설명요구 가능) ① 동의 ② 법률상 특별한 규정 ③ 계약 체결‧이행';

MERGE (n:Concept {id: '개인정보_처리자의_의무'})
SET     n.name = '개인정보 처리자의 의무',
    n.name_kr = '개인정보 처리자의 의무',
    n.domain = 'SE',
    n.definition = '거부, 설명 등 요구 시 정당한 사유가 없는 한 적용 배제, 인적 개입에 의한 재처리, 설명 등 필요한 조치 의무 부여';

MERGE (n:Concept {id: '제5조'})
SET     n.name = '제5조(국가 등의 책무)',
    n.name_kr = '제5조(국가 등의 책무)',
    n.domain = 'SE',
    n.definition = '만 14세 미만 아동의 개인정보 보호에 대한 시책마련 신설, 법령· 조례 적용 시 개인정보 보호 원칙에 부합하도록 조문 명확화';

MERGE (n:Concept {id: '제6조'})
SET     n.name = '제6조(다른 법률과 관계)',
    n.name_kr = '제6조(다른 법률과 관계)',
    n.domain = 'SE',
    n.definition = '개인정보 처리 및 보호에 관한 사항임을 명확하게 하고, 개별법 제정 시에도 개인정보 보호 원칙을 고려하도록 함';

MERGE (n:Concept {id: '제11조의2'})
SET     n.name = '제11조의2(보호 수준 평가)',
    n.name_kr = '제11조의2(보호 수준 평가)',
    n.domain = 'SE',
    n.definition = '보호위원회로 하여금 매년 공공기관의 개인정보 보호 수준을 평가하고 그 결과를 바탕으로 개선을 권고할 수 있도록 함';

MERGE (n:Concept {id: '제21조'})
SET     n.name = '제21조(개인정보 파기)',
    n.name_kr = '제21조(개인정보 파기)',
    n.domain = 'SE',
    n.definition = '가명정보도 파기의무가 적용됨을 명확히 하고, 가명정보 처리 시 처리목적 등을 고려하여 처리기간을 별도로 정할 수 있도록 함';

MERGE (n:Concept {id: '제22조'})
SET     n.name = '제22조(동의를 받는 방법)',
    n.name_kr = '제22조(동의를 받는 방법)',
    n.domain = 'SE',
    n.definition = '제22조의2 아동의 개인정보보호 조항 신설에 따른 체계 정비, ‘구분하여 각각 동의’ 받아야 하는 사항에 대한 체계 정비 등';

MERGE (n:Concept {id: '제23조'})
SET     n.name = '제23조(민감정보 처리 제한)',
    n.name_kr = '제23조(민감정보 처리 제한)',
    n.domain = 'SE',
    n.definition = '개인정보처리자가 민감정보 공개로 인해 사생활 침해의 위험성이 있다고 판단하는 경우, 사전에 민감정보의 공개 가능성 및 비공개 선택 방법을 정보주체에게 알기 쉽게 고지할 의무 규정';

MERGE (n:Concept {id: '제25조'})
SET     n.name = '제25조(고정형 영상정보처리기기의 설치/운영 제한)',
    n.name_kr = '제25조(고정형 영상정보처리기기의 설치/운영 제한)',
    n.domain = 'SE',
    n.definition = '고정형 영상정보처리기기 설치·운영 주체를 정당한 권한을 가진 자로 명확히 함 - 촬영된 영상정보를 저장하지 아니하는 경우로서 대통령령으로 정하는 경우 고정형 영상정보처리기기를 설치·운영할 수 있도록 함';

MERGE (n:Concept {id: '제26조'})
SET     n.name = '제26조(업무위탁 처리제한)',
    n.name_kr = '제26조(업무위탁 처리제한)',
    n.domain = 'SE',
    n.definition = '수탁자는 개인정보 처리 업무 재위탁 시 위탁자의 동의를 받도록 함 - 과징금(제64조의2)·벌칙(제71조~제73조)·과태료(제75조) 개별조문에서 수탁자도 적용대상에 포함됨을 명시';

MERGE (n:Concept {id: '제32조'})
SET     n.name = '제32조(개인정보 파일의 등록/공개)',
    n.name_kr = '제32조(개인정보 파일의 등록/공개)',
    n.domain = 'SE',
    n.definition = '파일 등록 예외 사유에서 ‘공공기관의 내부적 업무처리’를 공공기관에서 일회적으로 처리하는 경우 등으로 수정';

MERGE (n:Concept {id: '제39조'})
SET     n.name = '제39조(손해배상 책임)',
    n.name_kr = '제39조(손해배상 책임)',
    n.domain = 'SE',
    n.definition = '개인정보처리자의 고의 또는 중대한 과실로 인하여 개인정보가 분실·도난·유출·위조·변조 또는 훼손된 경우 손해배상책임의 한도액을 종전 3배에서 5배로 상향';

MERGE (n:Concept {id: '제39조의3_~_제39조의6_신설'})
SET     n.name = '제39조의3 ~ 제39조의6 신설',
    n.name_kr = '제39조의3 ~ 제39조의6 신설',
    n.domain = 'SE',
    n.definition = '손해배상청구소송에서 법원의 자료제출 명령, 비밀유지 명령, 소송기록 열람 등의 청구통지 등의 규정을 신설';

MERGE (n:Concept {id: '개정_상세내용'})
SET     n.name = '개정 상세내용',
    n.name_kr = '개정 상세내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '1항'})
SET     n.name = '1항',
    n.name_kr = '1항',
    n.domain = 'SE',
    n.definition = '정보 주체의 동의를 받은 경우';

MERGE (n:Concept {id: '2항'})
SET     n.name = '2항',
    n.name_kr = '2항',
    n.domain = 'SE',
    n.definition = '법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우';

MERGE (n:Concept {id: '3항'})
SET     n.name = '3항',
    n.name_kr = '3항',
    n.domain = 'SE',
    n.definition = '공공기관이 법령 등에서 정하는 소관 업무의 수행을 위하여 불가피한 경우';

MERGE (n:Concept {id: '4항'})
SET     n.name = '4항',
    n.name_kr = '4항',
    n.domain = 'SE',
    n.definition = '정보 주체와의 계약의 체결 및 이행을 위하여 불가피하게 필요한 경우';

MERGE (n:Concept {id: '5항'})
SET     n.name = '5항',
    n.name_kr = '5항',
    n.domain = 'SE',
    n.definition = '정보 주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 정보 주체 또는 제 3 자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우';

MERGE (n:Concept {id: '6항'})
SET     n.name = '6항',
    n.name_kr = '6항',
    n.domain = 'SE',
    n.definition = '개인정보처리자의 정당한 이익을 달성하기 위하여 필요한 경우로서 명백하게 정보 주체의 권리보다 우선하는 경우. 이 경우 개인정보처리자의 정당한 이익과 상당한 관련이 있고 합리적인 범위를 초과하지 아니하는 경우에 한함';

MERGE (n:Concept {id: '개인정보보호계획_측면'})
SET     n.name = '개인정보보호계획 측면',
    n.name_kr = '개인정보보호계획 측면',
    n.domain = 'SE',
    n.definition = '개인정보 보호계획 수립 시행';

MERGE (n:Law {id: '개인정보_처리방침의_수립•변경,_시행'})
SET     n.name = '개인정보 처리방침의 수립•변경, 시행',
    n.name_kr = '개인정보 처리방침의 수립•변경, 시행',
    n.domain = 'SE',
    n.definition = '개인정보보호법 제30조에 따른 개인정보 처리방침의 수립•변경 및 시행';

MERGE (n:Concept {id: '개인정보보호_교육계획_수립_및_시행'})
SET     n.name = '개인정보보호 교육계획 수립 및 시행',
    n.name_kr = '개인정보보호 교육계획 수립 및 시행',
    n.domain = 'SE',
    n.definition = '내부직원 대상 연간, 정기적 개인정보보호 교육계획 수립';

MERGE (n:Concept {id: '개인정보보호관리_측면'})
SET     n.name = '개인정보보호관리 측면',
    n.name_kr = '개인정보보호관리 측면',
    n.domain = 'SE',
    n.definition = '개인정보보호 자료의 관리';

MERGE (n:Concept {id: '수집목적이_달성된_개인정보의_파기'})
SET     n.name = '수집목적이 달성된 개인정보의 파기',
    n.name_kr = '수집목적이 달성된 개인정보의 파기',
    n.domain = 'SE',
    n.definition = '처리 목적이 달성되거나 보유기간이 지난 개인정보의 파기';

MERGE (n:Concept {id: '내부통제시스템_구축'})
SET     n.name = '내부통제시스템 구축',
    n.name_kr = '내부통제시스템 구축',
    n.domain = 'SE',
    n.definition = '정보보호 거버넌스기반 개인정보보호를 위한 내부통제 및 감사시스템 구축';

MERGE (n:Concept {id: '개인정보파일_보호_및_관리감독'})
SET     n.name = '개인정보파일 보호 및 관리감독',
    n.name_kr = '개인정보파일 보호 및 관리감독',
    n.domain = 'SE',
    n.definition = '보안성 검토, 개인정보영향평가, 암호화 조치 및 이행여부 확인 등 개인정보파일 보호';

MERGE (n:Concept {id: '개인정보보호개선측면'})
SET     n.name = '개인정보보호개선측면',
    n.name_kr = '개인정보보호개선측면',
    n.domain = 'SE',
    n.definition = '개인정보 처리실태 및 관행조사 개선';

MERGE (n:Concept {id: '불만처리_및_피해규제'})
SET     n.name = '불만처리 및 피해규제',
    n.name_kr = '불만처리 및 피해규제',
    n.domain = 'SE',
    n.definition = '개인정보처리, 보유에 따른 민원불만처리와 피해규제';

MERGE (n:Concept {id: '접근제어_측면'})
SET     n.name = '접근제어 측면',
    n.name_kr = '접근제어 측면',
    n.domain = 'SE',
    n.definition = '제11조 접근권한의 권리';

MERGE (n:Concept {id: '제12조_접근통제'})
SET     n.name = '제12조 접근통제',
    n.name_kr = '제12조 접근통제',
    n.domain = 'SE',
    n.definition = '정보통신망을 통한 불법적인 접근 및 침해사고 방지를 위한 침입차단, 침입탐지';

MERGE (n:Concept {id: '개인정보_유출_방지_측면'})
SET     n.name = '개인정보 유출 방지 측면',
    n.name_kr = '개인정보 유출 방지 측면',
    n.domain = 'SE',
    n.definition = '제13조 개인정보 암호화';

MERGE (n:Concept {id: '제15조_악성프로그램_등_방지'})
SET     n.name = '제15조 악성프로그램 등 방지',
    n.name_kr = '제15조 악성프로그램 등 방지',
    n.domain = 'SE',
    n.definition = '백신소프트웨어 등 보안 프로그램 설치, 운영 보안프로그램 최신상태로 유지 및 업데이트';

MERGE (n:Concept {id: '시스템_감사_측면'})
SET     n.name = '시스템 감사 측면',
    n.name_kr = '시스템 감사 측면',
    n.domain = 'SE',
    n.definition = '제14조 접속기록의 보관 및 점검';

MERGE (n:Concept {id: '조직관리_측면'})
SET     n.name = '조직관리 측면',
    n.name_kr = '조직관리 측면',
    n.domain = 'SE',
    n.definition = '제16조 개인정보 보호조직 구성 및 운영';

MERGE (n:Concept {id: '제19조_수탁자에_대한_관리_및_감독'})
SET     n.name = '제19조 수탁자에 대한 관리 및 감독',
    n.name_kr = '제19조 수탁자에 대한 관리 및 감독',
    n.domain = 'SE',
    n.definition = '개인정보 처리업무 위탁 시 개인정보가 분실 유출되지 않도록 수탁자 교육 및 관리감독';

MERGE (n:Concept {id: '사고대응_측면'})
SET     n.name = '사고대응 측면',
    n.name_kr = '사고대응 측면',
    n.domain = 'SE',
    n.definition = '제18조 위험도 분석 및 대응';

MERGE (n:Concept {id: '제17조_개인정보_유출사고_대응'})
SET     n.name = '제17조 개인정보 유출사고 대응',
    n.name_kr = '제17조 개인정보 유출사고 대응',
    n.domain = 'SE',
    n.definition = '긴급조치, 신고 및 통지, 피해신고 접수 및 피해구제사항 포함 대응계획 수립•시행';

// --- 관계 ---

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Concept {id: '디지털_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제공자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '관리자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '실무자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '개정내용'})
MERGE (b:Concept {id: '개정_세부내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개정내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개정_세부내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '1._신기술·신산업_등_데이터_경제_성장_견인'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '이동형_영상정보처리기기_규정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '온·오프라인_규제_일원화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '2._디지털_시대에_적합한_국민의_적극적_권리_강화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보_처리방침_평가제_도입'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '자동화된_결정_대응권'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보_분쟁조정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '사적_목적_이용_금지'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '3._글로벌_스탠다드에_부합하는_법_제도_정비'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '과징금·벌칙_규정_정비'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개정_내용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '보유기관'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '수신기관'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보관리_전문기관'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '전송정보'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '권리_내용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '권리_예외'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보_처리자의_의무'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제5조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제6조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제11조의2'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제21조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제22조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제23조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제25조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제26조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제32조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제39조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제39조의3_~_제39조의6_신설'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '개정내용'})
MERGE (b:Concept {id: '개정_상세내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개정내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개정_상세내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '1항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '2항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '3항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '4항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '5항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '6항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보보호계획_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Law {id: '개인정보_처리방침의_수립•변경,_시행'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보보호_교육계획_수립_및_시행'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보보호관리_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '수집목적이_달성된_개인정보의_파기'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '내부통제시스템_구축'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보파일_보호_및_관리감독'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보보호개선측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '불만처리_및_피해규제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '접근제어_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제12조_접근통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '개인정보_유출_방지_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제15조_악성프로그램_등_방지'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '시스템_감사_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '조직관리_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제19조_수탁자에_대한_관리_및_감독'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '사고대응_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Concept {id: '제17조_개인정보_유출사고_대응'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Document {id: 'SE_277'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제공자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실무자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_세부내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1._신기술·신산업_등_데이터_경제_성장_견인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동형_영상정보처리기기_규정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온·오프라인_규제_일원화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._디지털_시대에_적합한_국민의_적극적_권리_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_처리방침_평가제_도입'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화된_결정_대응권'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_분쟁조정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사적_목적_이용_금지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._글로벌_스탠다드에_부합하는_법_제도_정비'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과징금·벌칙_규정_정비'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보유기관'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수신기관'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보관리_전문기관'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권리_내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권리_예외'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_처리자의_의무'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제5조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제6조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제11조의2'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제21조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제22조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제23조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제25조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제26조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제32조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제39조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제39조의3_~_제39조의6_신설'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_상세내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호계획_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '개인정보_처리방침의_수립•변경,_시행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호_교육계획_수립_및_시행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호관리_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집목적이_달성된_개인정보의_파기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부통제시스템_구축'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보파일_보호_및_관리감독'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호개선측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불만처리_및_피해규제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근제어_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제12조_접근통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_유출_방지_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제15조_악성프로그램_등_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_감사_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직관리_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제19조_수탁자에_대한_관리_및_감독'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고대응_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제17조_개인정보_유출사고_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_278.1: 개인정보보호법 제30조
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Law {id: '개인정보보호법_제30조'})
SET     n.name = '개인정보보호법 제30조',
    n.name_kr = '개인정보보호법 제30조',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '처리_목적'})
SET     n.name = '처리 목적',
    n.name_kr = '처리 목적',
    n.domain = 'SE';

MERGE (n:Concept {id: '보유_기간'})
SET     n.name = '보유 기간',
    n.name_kr = '보유 기간',
    n.domain = 'SE';

MERGE (n:Concept {id: '제3자_제공사항'})
SET     n.name = '제3자 제공사항',
    n.name_kr = '제3자 제공사항',
    n.domain = 'SE';

MERGE (n:Concept {id: '위탁사항'})
SET     n.name = '위탁사항',
    n.name_kr = '위탁사항',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보주체의_권리사항'})
SET     n.name = '정보주체의 권리사항',
    n.name_kr = '정보주체의 권리사항',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '처리_목적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '보유_기간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '제3자_제공사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '위탁사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Concept {id: '정보주체의_권리사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Document {id: 'SE_278.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Law {id: '개인정보보호법_제30조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_목적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보유_기간'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제3자_제공사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위탁사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보주체의_권리사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_278.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_278.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_278.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_278.5: GDPR(General Data Protection Regulation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.5'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Law {id: 'general_data_protection_regulation'})
SET     n.name = 'General Data Protection Regulation',
    n.name_kr = 'GDPR',
    n.domain = 'SE',
    n.aliases = ['General Data Protection Regulation', 'GDPR'];

MERGE (n:Concept {id: '보안_관련_법령'})
SET     n.name = '보안 관련 법령',
    n.name_kr = '보안 관련 법령',
    n.domain = 'SE';

MERGE (n:Law {id: 'gdpr'})
SET     n.name = 'GDPR',
    n.name_kr = 'GDPR',
    n.domain = 'SE',
    n.aliases = ['GDPR'];

MERGE (n:Concept {id: '개인정보'})
SET     n.name = '개인정보',
    n.name_kr = '개인정보',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보주체'})
SET     n.name = '정보주체',
    n.name_kr = '정보주체',
    n.domain = 'SE';

MERGE (n:Concept {id: 'dpo'})
SET     n.name = 'DPO',
    n.name_kr = 'DPO',
    n.domain = 'SE',
    n.aliases = ['DPO'];

MERGE (n:Concept {id: '해외이전'})
SET     n.name = '해외이전',
    n.name_kr = '해외이전',
    n.domain = 'SE',
    n.definition = 'EU 시민 특별한 허가(승인) 없이 개인정보의 이전 가능';

MERGE (n:Concept {id: '특별_고려요인'})
SET     n.name = '특별 고려요인',
    n.name_kr = '특별 고려요인',
    n.domain = 'SE',
    n.definition = '제 3 국의 개인정보 제도 검토';

MERGE (n:Concept {id: '독립된_감독기구_존재와_실효성에_대한_검토'})
SET     n.name = '독립된 감독기구 존재와 실효성에 대한 검토',
    n.name_kr = '독립된 감독기구 존재와 실효성에 대한 검토',
    n.domain = 'SE',
    n.definition = '적절한 집행력을 가지고 있으며, 정보주체의 권리보장을 위한 지원 및 조언이 가능 등 검토';

MERGE (n:Concept {id: '개인정보_보호의_법적_구속력_있는_조약이나_문서_등_검토'})
SET     n.name = '개인정보 보호의 법적 구속력 있는 조약이나 문서 등 검토',
    n.name_kr = '개인정보 보호의 법적 구속력 있는 조약이나 문서 등 검토',
    n.domain = 'SE',
    n.definition = '개인정보의 보호와 관련하여, 제 3 국등이 관련된 국제협정, 또는 법적으로 구속력 있는 조약이나 문서, 다자간·지역적 조직에의 참여로 인한 의무 등에 대하여 검토';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'SE',
    n.definition = '정기적 검토 및 모니터링에 대한 규율';

MERGE (n:Concept {id: '철회'})
SET     n.name = '철회',
    n.name_kr = '철회',
    n.domain = 'SE',
    n.definition = '적정성 결정의 철회 등에 대한 규정';

// --- 관계 ---

MERGE (a:Law {id: 'gdpr'})
MERGE (b:Concept {id: '보안_관련_법령'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '개인정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '정보주체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: 'dpo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '해외이전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '특별_고려요인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '독립된_감독기구_존재와_실효성에_대한_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '개인정보_보호의_법적_구속력_있는_조약이나_문서_등_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Concept {id: '철회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Document {id: 'SE_278.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Law {id: 'general_data_protection_regulation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_관련_법령'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: 'gdpr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보주체'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dpo'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해외이전'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특별_고려요인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립된_감독기구_존재와_실효성에_대한_검토'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_보호의_법적_구속력_있는_조약이나_문서_등_검토'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '철회'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 266개
// 관계: 525개
// ================================================================