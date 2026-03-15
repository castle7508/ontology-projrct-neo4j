// ================================================================
// SV 도메인 (SV_351 ~ SV_400) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_326: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_326'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_327: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_327'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_328: 스마트계약의 오라클
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_328'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스마트계약의_오라클'})
SET     n.name = '스마트계약의 오라클',
    n.name_kr = '스마트계약의 오라클',
    n.domain = 'SV';

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'off_chain'})
SET     n.name = 'Off Chain',
    n.name_kr = 'Off Chain',
    n.domain = 'SV',
    n.aliases = ['Off Chain'];

MERGE (n:Concept {id: 'on_chain'})
SET     n.name = 'On Chain',
    n.name_kr = 'On Chain',
    n.domain = 'SV',
    n.aliases = ['On Chain'];

MERGE (n:Concept {id: '오라클문제'})
SET     n.name = '오라클문제',
    n.name_kr = '오라클문제',
    n.domain = 'SV';

MERGE (n:Concept {id: '소프트웨어/하드웨어_오라클'})
SET     n.name = '소프트웨어/하드웨어 오라클',
    n.name_kr = '소프트웨어/하드웨어 오라클',
    n.domain = 'SV';

MERGE (n:Concept {id: '내향성/외향성_오라클'})
SET     n.name = '내향성/외향성 오라클',
    n.name_kr = '내향성/외향성 오라클',
    n.domain = 'SV';

MERGE (n:Concept {id: '중앙화/탈중앙화_오라클'})
SET     n.name = '중앙화/탈중앙화 오라클',
    n.name_kr = '중앙화/탈중앙화 오라클',
    n.domain = 'SV';

MERGE (n:Concept {id: '오라클_패러독스'})
SET     n.name = '오라클 패러독스',
    n.name_kr = '오라클 패러독스',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념_및_사례'})
SET     n.name = '개념 및 사례',
    n.name_kr = '개념 및 사례',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SV';

MERGE (n:Concept {id: '오라클_측면'})
SET     n.name = '오라클 측면',
    n.name_kr = '오라클 측면',
    n.domain = 'SV',
    n.definition = '통합프로토콜';

MERGE (n:Concept {id: '외부_검증_측면'})
SET     n.name = '외부 검증 측면',
    n.name_kr = '외부 검증 측면',
    n.domain = 'SV',
    n.definition = '평판시스템';

// --- 관계 ---

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: 'off_chain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: 'on_chain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '오라클문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '소프트웨어/하드웨어_오라클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '내향성/외향성_오라클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '중앙화/탈중앙화_오라클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '오라클_패러독스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념_및_사례'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '개념_및_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '오라클_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Concept {id: '외부_검증_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Document {id: 'SV_328'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트계약의_오라클'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'off_chain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_chain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오라클문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어/하드웨어_오라클'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내향성/외향성_오라클'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중앙화/탈중앙화_오라클'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오라클_패러독스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념_및_사례'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오라클_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_검증_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_329: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_329'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_330: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_330'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_331: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_331'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_332: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_332'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_333: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_333'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.1: 중앙은행 디지털화폐(CBDC Central Bank Digital Currency)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cbdc_central_bank_digital_currency'})
SET     n.name = 'CBDC Central Bank Digital Currency',
    n.name_kr = '중앙은행 디지털화폐',
    n.domain = 'SV',
    n.aliases = ['CBDC Central Bank Digital Currency', '중앙은행 디지털화폐'];

MERGE (n:Concept {id: 'blockchain'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_화폐'})
SET     n.name = '디지털 화폐',
    n.name_kr = '디지털 화폐',
    n.domain = 'SV';

MERGE (n:Concept {id: '단일_원장_방식'})
SET     n.name = '단일 원장 방식',
    n.name_kr = '단일 원장 방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산_원장_방식'})
SET     n.name = '분산 원장 방식',
    n.name_kr = '분산 원장 방식',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cbdc_wallet'})
SET     n.name = 'CBDC Wallet',
    n.name_kr = '전자지갑',
    n.domain = 'SV',
    n.aliases = ['CBDC Wallet', '전자지갑'];

MERGE (n:Concept {id: '직접운영'})
SET     n.name = '직접운영',
    n.name_kr = '직접운영',
    n.domain = 'SV';

MERGE (n:Concept {id: '간접운영'})
SET     n.name = '간접운영',
    n.name_kr = '간접운영',
    n.domain = 'SV';

MERGE (n:Concept {id: '암호화폐'})
SET     n.name = '암호화폐',
    n.name_kr = '암호화폐',
    n.domain = 'SV';

MERGE (n:Concept {id: '스테이블_코인'})
SET     n.name = '스테이블 코인',
    n.name_kr = '스테이블 코인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cbdc'})
SET     n.name = 'CBDC',
    n.name_kr = 'CBDC',
    n.domain = 'SV',
    n.aliases = ['CBDC'];

MERGE (n:Concept {id: '키관리'})
SET     n.name = '키관리',
    n.name_kr = '키관리',
    n.domain = 'SV',
    n.definition = '키 도난 및 분실';

MERGE (n:Concept {id: '취약한_키_생성'})
SET     n.name = '취약한 키 생성',
    n.name_kr = '취약한 키 생성',
    n.domain = 'SV',
    n.definition = '알고리즘 취약성으로 키 생성 공격 가능시 자산 및 기밀 거래 내욕 유출 가능';

MERGE (n:Concept {id: '거래_검증_합의'})
SET     n.name = '거래 검증 합의',
    n.name_kr = '거래 검증 합의',
    n.domain = 'SV',
    n.definition = '합의 가로채기';

MERGE (n:Concept {id: '사이드_체인_내_비정상_거래'})
SET     n.name = '사이드 체인 내 비정상 거래',
    n.name_kr = '사이드 체인 내 비정상 거래',
    n.domain = 'SV',
    n.definition = '메인 체인의 유효하지 않은 자산이 사이드 체인 거래 가능';

MERGE (n:Concept {id: '참여자_권한관리'})
SET     n.name = '참여자 권한관리',
    n.name_kr = '참여자 권한관리',
    n.domain = 'SV',
    n.definition = '개인정보 침해';

MERGE (n:Concept {id: '권한_오남용'})
SET     n.name = '권한 오남용',
    n.name_kr = '권한 오남용',
    n.domain = 'SV',
    n.definition = '참여자 권한관리 부족시 내부직원에 의한 보안사고 발생';

MERGE (n:Concept {id: '블록체인_sw_보안'})
SET     n.name = '블록체인 SW 보안',
    n.name_kr = '블록체인 SW 보안',
    n.domain = 'SV',
    n.definition = '블록체인 SW 취약점';

MERGE (n:Threat {id: '스마트_컨트랙트_취약점'})
SET     n.name = '스마트 컨트랙트 취약점',
    n.name_kr = '스마트 컨트랙트 취약점',
    n.domain = 'SV',
    n.definition = '자산 유출, 개인정보 침해, DDoS 공격 악용 가능';

MERGE (n:Concept {id: '서비스_보안'})
SET     n.name = '서비스 보안',
    n.name_kr = '서비스 보안',
    n.domain = 'SV',
    n.definition = '분산 서비스 거부 공격';

MERGE (n:Metric {id: '가용성_저하'})
SET     n.name = '가용성 저하',
    n.name_kr = '가용성 저하',
    n.domain = 'SV',
    n.definition = '블록체인 처리속도 한계, 거래정보 급증으로 추가 서비스 개발 및 확대 제한';

MERGE (n:Concept {id: '비정상거래_탐지_불가'})
SET     n.name = '비정상거래 탐지 불가',
    n.name_kr = '비정상거래 탐지 불가',
    n.domain = 'SV',
    n.definition = '사기거래, 자금세탁, 이중지불 등의 거래 발생 가능';

MERGE (n:Concept {id: '상호운영성_미제공'})
SET     n.name = '상호운영성 미제공',
    n.name_kr = '상호운영성 미제공',
    n.domain = 'SV',
    n.definition = '블록체인간 자산교환, 기능확장 필요시 표준규격 및 책임주체 미흡으로 보안위협 발생 가능';

MERGE (n:Concept {id: '블록체인_기술'})
SET     n.name = '블록체인 기술',
    n.name_kr = '블록체인 기술',
    n.domain = 'SV',
    n.definition = '거래그래프 분석, 탈익명화';

MERGE (n:Concept {id: '블록_랜덤_채택'})
SET     n.name = '블록 랜덤 채택',
    n.name_kr = '블록 랜덤 채택',
    n.domain = 'SV',
    n.definition = '이기적인 채굴(채굴자들의 연합 조작) 방지';

MERGE (n:Concept {id: '보상_시스템'})
SET     n.name = '보상 시스템',
    n.name_kr = '보상 시스템',
    n.domain = 'SV',
    n.definition = '51% 이상 체굴능력 확보로 오남용 방지';

MERGE (n:Concept {id: '중앙은행_시스템'})
SET     n.name = '중앙은행 시스템',
    n.name_kr = '중앙은행 시스템',
    n.domain = 'SV',
    n.definition = '개인키 암호화, 분산 보관 키관리 솔루션 도입';

MERGE (n:Concept {id: '시큐어_코딩_적용_별도_채널_통한_인증_추가'})
SET     n.name = '시큐어 코딩 적용 별도 채널 통한 인증 추가',
    n.name_kr = '시큐어 코딩 적용 별도 채널 통한 인증 추가',
    n.domain = 'SV',
    n.definition = '거래소 Web/App 취약점 방지 - 타인 개인키, 권한 침해 발생 문제 방지';

MERGE (n:Concept {id: '운영자_권한_관리_및_정보보호_관리체계_도입'})
SET     n.name = '운영자 권한 관리 및 정보보호 관리체계 도입',
    n.name_kr = '운영자 권한 관리 및 정보보호 관리체계 도입',
    n.domain = 'SV',
    n.definition = '서버권한 관련 관리 - 내부자산, 고객 자산 피해, 개인정보 유출 방지';

MERGE (n:Concept {id: 'hot_wallet'})
SET     n.name = '지갑',
    n.name_kr = '지갑',
    n.domain = 'SV',
    n.definition = 'HW 지갑(Cold Wallet)사용';

MERGE (n:Concept {id: 'puf,_via_puf_적용'})
SET     n.name = 'PuF, via PUF 적용',
    n.name_kr = 'PuF, via PUF 적용',
    n.domain = 'SV',
    n.definition = '반도체의 물리적인 특성을 이용하여 유일 ID로 구동 보안';

// --- 관계 ---

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '디지털_화폐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '단일_원장_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '분산_원장_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: 'cbdc_wallet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '직접운영'})
MERGE (b:Concept {id: '간접운영'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '직접운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '간접운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암호화폐'})
MERGE (b:Concept {id: '스테이블_코인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '암호화폐'})
MERGE (b:Concept {id: 'cbdc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '암호화폐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스테이블_코인'})
MERGE (b:Concept {id: 'cbdc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '스테이블_코인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: 'cbdc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암호화폐'})
MERGE (b:Concept {id: 'cbdc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '암호화폐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: 'cbdc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '키관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '취약한_키_생성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '거래_검증_합의'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '사이드_체인_내_비정상_거래'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '참여자_권한관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '권한_오남용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '블록체인_sw_보안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Threat {id: '스마트_컨트랙트_취약점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '서비스_보안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Metric {id: '가용성_저하'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '비정상거래_탐지_불가'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '상호운영성_미제공'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '블록체인_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '블록_랜덤_채택'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '보상_시스템'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '중앙은행_시스템'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '시큐어_코딩_적용_별도_채널_통한_인증_추가'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: '운영자_권한_관리_및_정보보호_관리체계_도입'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: 'hot_wallet'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Concept {id: 'puf,_via_puf_적용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Document {id: 'SV_334.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cbdc_central_bank_digital_currency'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blockchain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_화폐'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_원장_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_원장_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbdc_wallet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접운영'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간접운영'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화폐'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스테이블_코인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbdc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약한_키_생성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래_검증_합의'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이드_체인_내_비정상_거래'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여자_권한관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한_오남용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인_sw_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '스마트_컨트랙트_취약점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성_저하'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비정상거래_탐지_불가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운영성_미제공'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록_랜덤_채택'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보상_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중앙은행_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시큐어_코딩_적용_별도_채널_통한_인증_추가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영자_권한_관리_및_정보보호_관리체계_도입'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hot_wallet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'puf,_via_puf_적용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_334.2: 대체불가토큰(NFT, Non-Fungible Token)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'nft,_non_fungible_token'})
SET     n.name = 'NFT, Non-Fungible Token',
    n.name_kr = '대체불가토큰',
    n.domain = 'SV',
    n.aliases = ['NFT, Non-Fungible Token', '대체불가토큰'];

MERGE (n:Concept {id: 'block_chain'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '대체불가'})
SET     n.name = '대체불가',
    n.name_kr = '대체불가',
    n.domain = 'SV';

MERGE (n:Concept {id: '부분소유권'})
SET     n.name = '부분소유권',
    n.name_kr = '부분소유권',
    n.domain = 'SV';

MERGE (n:Concept {id: '위조불가'})
SET     n.name = '위조불가',
    n.name_kr = '위조불가',
    n.domain = 'SV';

MERGE (n:Concept {id: '순환증가'})
SET     n.name = '순환증가',
    n.name_kr = '순환증가',
    n.domain = 'SV';

MERGE (n:Concept {id: 'erc_721'})
SET     n.name = 'ERC-721',
    n.name_kr = 'ERC-721',
    n.domain = 'SV',
    n.aliases = ['ERC-721'];

MERGE (n:Concept {id: 'on_chain'})
SET     n.name = 'On-Chain',
    n.name_kr = 'On-Chain',
    n.domain = 'SV',
    n.definition = 'ERC-721',
    n.aliases = ['On-Chain'];

MERGE (n:Concept {id: 'erc_721_contract'})
SET     n.name = 'ERC-721 Contract',
    n.name_kr = 'ERC-721 Contract',
    n.domain = 'SV',
    n.definition = '소유자의 주소 정보 획득',
    n.aliases = ['ERC-721 Contract'];

MERGE (n:Concept {id: 'metadata'})
SET     n.name = 'Metadata',
    n.name_kr = 'Metadata',
    n.domain = 'SV',
    n.definition = '토큰의 콘텐츠에 대한 상세 TAG',
    n.aliases = ['Metadata'];

MERGE (n:Concept {id: 'off_chain'})
SET     n.name = 'Off-Chain',
    n.name_kr = 'Off-Chain',
    n.domain = 'SV',
    n.definition = 'Oracle',
    n.aliases = ['Off-Chain'];

MERGE (n:Concept {id: 'ipfs'})
SET     n.name = 'IPFS',
    n.name_kr = 'IPFS',
    n.domain = 'SV',
    n.definition = '분산환경에서 데이터를 저장하기 위한 파일 시스템',
    n.aliases = ['IPFS'];

MERGE (n:Concept {id: 'nft_owner_creator'})
SET     n.name = 'NFT Owner/Creator',
    n.name_kr = 'NFT Owner/Creator',
    n.domain = 'SV',
    n.definition = '디지털 자산 소유자와 생성자',
    n.aliases = ['NFT Owner/Creator'];

MERGE (n:Concept {id: 'nft_buyer'})
SET     n.name = 'NFT Buyer',
    n.name_kr = 'NFT Buyer',
    n.domain = 'SV',
    n.definition = '디지털 자산 구매자',
    n.aliases = ['NFT Buyer'];

MERGE (n:Concept {id: '기반기술'})
SET     n.name = '기반기술',
    n.name_kr = '기반기술',
    n.domain = 'SV',
    n.definition = 'P2P 네트워크';

MERGE (n:Concept {id: '분산_원장'})
SET     n.name = '분산 원장',
    n.name_kr = '분산 원장',
    n.domain = 'SV',
    n.definition = '네트워크 참여자들 사이에서 검증·합의된 블록이 업로드되어 기존 블록과 연결된 후 공유';

MERGE (n:Concept {id: '합의_알고리즘'})
SET     n.name = '합의 알고리즘',
    n.name_kr = '합의 알고리즘',
    n.domain = 'SV',
    n.definition = '새로운 거래가 이루어져 블록이 생성되었을 때, 해당 블록에 대한 참여자들의 합의 방식';

MERGE (n:Concept {id: '데이터_암호화'})
SET     n.name = '데이터 암호화',
    n.name_kr = '데이터 암호화',
    n.domain = 'SV',
    n.definition = '블록에 작성·저장된 데이터를 공개키 기반으로 암호화';

MERGE (n:Concept {id: '표준'})
SET     n.name = '표준',
    n.name_kr = '표준',
    n.domain = 'SV',
    n.definition = 'ERC-721';

MERGE (n:Concept {id: 'erc_998'})
SET     n.name = 'ERC-998',
    n.name_kr = 'ERC-998',
    n.domain = 'SV',
    n.definition = '조합 가능한(Composable) 자산 규약 - 여러 ERC-721과 ERC-20의 토큰으로 구성 가능 - NFT를 작은 단위로 분해 가능(현재 Draft단계)',
    n.aliases = ['ERC-998'];

MERGE (n:Concept {id: 'erc_1155'})
SET     n.name = 'ERC-1155',
    n.name_kr = 'ERC-1155',
    n.domain = 'SV',
    n.definition = 'ERC-20과 ERC-721의 장점을 혼합하여 두 토큰이 연동하여 거래할 수 있도록 설계된 프로토콜 - 하나의 트랜잭션을 이용해 한 명 이상의 수신자에게 두 개 이상의 토큰을 보낼 수 있는 멀티 전송(Multi-transfers)이 가능',
    n.aliases = ['ERC-1155'];

MERGE (n:Concept {id: '프로토콜'})
SET     n.name = '프로토콜',
    n.name_kr = '프로토콜',
    n.domain = 'SV',
    n.definition = 'NFT Digitize';

MERGE (n:Concept {id: 'nft_store'})
SET     n.name = 'NFT Store',
    n.name_kr = 'NFT Store',
    n.domain = 'SV',
    n.definition = 'NFT 소유자는 블록체인 외부의 DB에 raw data를 저장함',
    n.aliases = ['NFT Store'];

MERGE (n:Concept {id: 'nft_sign'})
SET     n.name = 'NFT Sign',
    n.name_kr = 'NFT Sign',
    n.domain = 'SV',
    n.definition = 'NFT 소유자는 NFT 데이터를 포함한 거래내역에 서명 - 스마트컨트랙트에 거래내역 전송',
    n.aliases = ['NFT Sign'];

MERGE (n:Concept {id: 'nft_mint'})
SET     n.name = 'NFT Mint',
    n.name_kr = 'NFT Mint',
    n.domain = 'SV',
    n.definition = '스마트컨트랙트는 NFT 데이터가 담긴 거래내역을 받아 NFT 발행 - NFT의 내부 기능은 토큰 표준에서 정의',
    n.aliases = ['NFT Mint'];

MERGE (n:Concept {id: 'nft_confirm'})
SET     n.name = 'NFT Confirm',
    n.name_kr = 'NFT Confirm',
    n.domain = 'SV',
    n.definition = '발행 프로세스는 한 번 거래내역이 확인되면 완료됨 - NFT는 영속적인 증거(Proof)로서 유일한 블록체인 주소와 연결됨',
    n.aliases = ['NFT Confirm'];

MERGE (n:Concept {id: 'erc_token'})
SET     n.name = 'ERC Token',
    n.name_kr = 'ERC Token',
    n.domain = 'SV',
    n.definition = 'Ethereum Request for Comments',
    n.aliases = ['ERC Token'];

MERGE (n:Concept {id: 'erc_20'})
SET     n.name = 'ERC-20',
    n.name_kr = 'ERC-20',
    n.domain = 'SV',
    n.definition = 'Fungible Token (대체 가능 토큰)',
    n.aliases = ['ERC-20'];

MERGE (n:Concept {id: 'erc_777'})
SET     n.name = 'ERC-777',
    n.name_kr = 'ERC-777',
    n.domain = 'SV',
    n.definition = 'Token Standard (토큰 표준)',
    n.aliases = ['ERC-777'];

MERGE (n:Concept {id: 'erc_918'})
SET     n.name = 'ERC-918',
    n.name_kr = 'ERC-918',
    n.domain = 'SV',
    n.definition = 'Mineable Token Standard (채굴 가능 토큰 표준)',
    n.aliases = ['ERC-918'];

MERGE (n:Concept {id: '오픈형'})
SET     n.name = '오픈형',
    n.name_kr = '오픈형',
    n.domain = 'SV',
    n.definition = '누구나 발행 - 빠른 생성';

MERGE (n:Concept {id: '큐레이션형'})
SET     n.name = '큐레이션형',
    n.name_kr = '큐레이션형',
    n.domain = 'SV',
    n.definition = '플랫폼 승인필요 - 마케팅 지원';

MERGE (n:Concept {id: '컬렉션형'})
SET     n.name = '컬렉션형',
    n.name_kr = '컬렉션형',
    n.domain = 'SV',
    n.definition = '컬렉터 수집 - 특정 Fan 상품위주';

MERGE (n:Concept {id: '프로토콜형'})
SET     n.name = '프로토콜형',
    n.name_kr = '프로토콜형',
    n.domain = 'SV',
    n.definition = 'NFT 호환성 - 중계 플랫폼';

MERGE (n:Concept {id: '디지털패션형'})
SET     n.name = '디지털패션형',
    n.name_kr = '디지털패션형',
    n.domain = 'SV',
    n.definition = '실생활 접목 - 메타버스 활용';

MERGE (n:Concept {id: '프로그램_가능형'})
SET     n.name = '프로그램 가능형',
    n.name_kr = '프로그램 가능형',
    n.domain = 'SV',
    n.definition = '변화하는 NFT - NFT에 코딩가능';

MERGE (n:Concept {id: '환경_측면'})
SET     n.name = '환경 측면',
    n.name_kr = '환경 측면',
    n.domain = 'SV',
    n.definition = '변동성이 높은 가상자산 기반의 거래환경 부재 - 거래시장 사이의 정보 소통 부재';

MERGE (n:Concept {id: '법･제도_측면'})
SET     n.name = '법･제도 측면',
    n.name_kr = '법･제도 측면',
    n.domain = 'SV',
    n.definition = '의무와 권한이 행사될 수 있는 제도 부재 - NFT 발행 절차 및 진본 확인을 위한 제도적 수단 필요';

MERGE (n:Concept {id: '상생_측면'})
SET     n.name = '상생 측면',
    n.name_kr = '상생 측면',
    n.domain = 'SV',
    n.definition = '실물경제에 주는 거부감 - 기존 질서의 파괴';

MERGE (n:Concept {id: '수집'})
SET     n.name = '수집',
    n.name_kr = '수집',
    n.domain = 'SV',
    n.definition = '디지털 아트';

MERGE (n:Concept {id: '수집품'})
SET     n.name = '수집품',
    n.name_kr = '수집품',
    n.domain = 'SV',
    n.definition = '카드 컬렉션등의 수집품 형태로 활용';

MERGE (n:Concept {id: '엔터테인먼트'})
SET     n.name = '엔터테인먼트',
    n.name_kr = '엔터테인먼트',
    n.domain = 'SV',
    n.definition = '게임자산';

MERGE (n:Concept {id: '음악'})
SET     n.name = '음악',
    n.name_kr = '음악',
    n.domain = 'SV',
    n.definition = '음악가는 자신의 작품을 토큰화 하고 게시하여 수익 창출';

MERGE (n:Concept {id: '영화산업'})
SET     n.name = '영화산업',
    n.name_kr = '영화산업',
    n.domain = 'SV',
    n.definition = '대용량의 영화는 작은 크기의 블록체인 기술에 적용이 어려워 NFT 사업에 참여가 늦은 특징';

MERGE (n:Concept {id: '스포츠'})
SET     n.name = '스포츠',
    n.name_kr = '스포츠',
    n.domain = 'SV',
    n.definition = '계약을 토큰화 하거나, 디지털 하이라이트 영상 등을 활용';

MERGE (n:Concept {id: 'fungible_token'})
SET     n.name = 'Fungible Token',
    n.name_kr = 'FT',
    n.domain = 'SV',
    n.aliases = ['Fungible Token', 'FT'];

MERGE (n:Concept {id: 'non_fungible_token'})
SET     n.name = 'Non Fungible Token',
    n.name_kr = 'NFT',
    n.domain = 'SV',
    n.aliases = ['Non Fungible Token', 'NFT'];

MERGE (n:Concept {id: '게임체인저'})
SET     n.name = '게임체인저',
    n.name_kr = '게임체인저',
    n.domain = 'SV',
    n.definition = '﻿메타버스가 NFT와 결합되어 게임 등의 좁은 영역을 넘어 전 산업과 사회 분야로 확산 및 적용되어 영향력 확대 전망';

MERGE (n:Concept {id: '디바이스_확대'})
SET     n.name = '디바이스 확대',
    n.name_kr = '디바이스 확대',
    n.domain = 'SV',
    n.definition = '﻿﻿NFT와의 결합을 통해 손목밴드, 반지, 장갑 등 다양한 메타버스 경험 기기들이 지속적으로 개발/출시되면서 혁신이 가속화될 전망';

MERGE (n:Concept {id: '디지털휴먼_성장'})
SET     n.name = '디지털휴먼 성장',
    n.name_kr = '디지털휴먼 성장',
    n.domain = 'SV',
    n.definition = '﻿NFT와의 시너지를 통해 디지털 휴먼이 엔터테인먼트, 유통, 교육, 금융, 방송, 교 육 등 전 산업으로 확대될 전망';

MERGE (n:Concept {id: '지식재산권_확장'})
SET     n.name = '지식재산권 확장',
    n.name_kr = '지식재산권 확장',
    n.domain = 'SV',
    n.definition = '﻿ NFT와의 연계를 통해 메타버스 플랫폼 기업들은 여러 지식재산권(Intellectual Property) 사업자와 제휴/협력 관계를 맺으면서 사업 분야를 급속히 확장 중';

MERGE (n:Concept {id: '디지털_저작권'})
SET     n.name = '디지털 저작권',
    n.name_kr = '디지털 저작권',
    n.domain = 'SV',
    n.definition = '﻿NFT를 통해 다양한 사용자 창작 콘텐츠(User Generated Contents)에 희소성/소유 권 부여가 가능';

MERGE (n:Concept {id: '관련_규정'})
SET     n.name = '관련 규정',
    n.name_kr = '관련 규정',
    n.domain = 'SV',
    n.definition = '신고 의무';

MERGE (n:Concept {id: '조치_의무'})
SET     n.name = '조치 의무',
    n.name_kr = '조치 의무',
    n.domain = 'SV',
    n.definition = '불법 재산 등으로 의심되는 거래 보고 등(특정금융정보법 제4조제1항) - 금융회사 등의 고액 현금거래 보고(특정금융정보법 제4조의2) - 위의 사항에 따른 보고의무 이행 등을 위하여 고객별 거래내역을 분리하여 관리하여야 함(특정금융정보법 제8조)';

MERGE (n:Concept {id: 'nft_가상자산_여부'})
SET     n.name = 'NFT 가상자산 여부',
    n.name_kr = 'NFT 가상자산 여부',
    n.domain = 'SV',
    n.definition = '규정의 내용';

MERGE (n:Concept {id: '납세'})
SET     n.name = '납세',
    n.name_kr = '납세',
    n.domain = 'SV',
    n.definition = '납세 항목';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SV',
    n.definition = '신고, 등록 의무';

MERGE (n:Concept {id: '검토사항'})
SET     n.name = '검토사항',
    n.name_kr = '검토사항',
    n.domain = 'SV',
    n.definition = '증권 성격 여부';

MERGE (n:Law {id: '저작권_미확보_nft_취득'})
SET     n.name = '저작권 미확보 NFT 취득',
    n.name_kr = '저작권 미확보 NFT 취득',
    n.domain = 'SV',
    n.definition = '저작물을 제대로 활용할 수 없고, 만약 무단으로 저작물을 활용할 경우 저작권법 위반 문제가 발생할 수 있음';

MERGE (n:Concept {id: '해결_방안'})
SET     n.name = '해결 방안',
    n.name_kr = '해결 방안',
    n.domain = 'SV',
    n.definition = '발행자 입장';

MERGE (n:Concept {id: '양도_시'})
SET     n.name = '양도 시',
    n.name_kr = '양도 시',
    n.domain = 'SV',
    n.definition = '저작물의 저작권까지 양도하는 방식으로 거래';

// --- 관계 ---

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'block_chain'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '대체불가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '부분소유권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '위조불가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '순환증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_721'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'on_chain'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_721_contract'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'metadata'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'off_chain'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'ipfs'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_owner_creator'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_buyer'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '기반기술'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '분산_원장'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '합의_알고리즘'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '데이터_암호화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '표준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_998'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_1155'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '프로토콜'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_store'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_sign'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_mint'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_confirm'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_token'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_20'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_777'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'erc_918'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '오픈형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '큐레이션형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '컬렉션형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '프로토콜형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '디지털패션형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '프로그램_가능형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '환경_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '법･제도_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '상생_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '수집'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '수집품'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '엔터테인먼트'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '음악'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '영화산업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '스포츠'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fungible_token'})
MERGE (b:Concept {id: 'non_fungible_token'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'fungible_token'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'non_fungible_token'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '게임체인저'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '디바이스_확대'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '디지털휴먼_성장'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '지식재산권_확장'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '디지털_저작권'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '관련_규정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '조치_의무'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: 'nft_가상자산_여부'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '납세'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '검토사항'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Law {id: '저작권_미확보_nft_취득'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Concept {id: '양도_시'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Document {id: 'SV_334.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'nft,_non_fungible_token'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대체불가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분소유권'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위조불가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순환증가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_721'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_chain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_721_contract'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'metadata'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'off_chain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipfs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_owner_creator'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_buyer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_원장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합의_알고리즘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_998'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_1155'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_store'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_sign'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_mint'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_confirm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_token'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_20'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_777'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erc_918'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '큐레이션형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컬렉션형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털패션형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램_가능형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법･제도_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상생_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집품'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔터테인먼트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음악'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영화산업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스포츠'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fungible_token'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_fungible_token'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게임체인저'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디바이스_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털휴먼_성장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식재산권_확장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_저작권'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관련_규정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조치_의무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nft_가상자산_여부'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '납세'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검토사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '저작권_미확보_nft_취득'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양도_시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_334.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.5'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.6'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.7'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.8'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_334.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_334.9'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_335: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_335'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_336: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_336'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_337: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_337'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_338.1: 오픈뱅킹
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_338.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '오픈뱅킹'})
SET     n.name = '오픈뱅킹',
    n.name_kr = '오픈뱅킹',
    n.domain = 'SV';

MERGE (n:Concept {id: '출제_예상_토픽'})
SET     n.name = '출제 예상 토픽',
    n.name_kr = '출제 예상 토픽',
    n.domain = 'SV';

MERGE (n:Concept {id: '오픈_api'})
SET     n.name = '오픈 API',
    n.name_kr = '오픈 API',
    n.domain = 'SV';

MERGE (n:Concept {id: '테스트베드'})
SET     n.name = '테스트베드',
    n.name_kr = '테스트베드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'psd2'})
SET     n.name = 'PSD2',
    n.name_kr = 'PSD2',
    n.domain = 'SV',
    n.aliases = ['PSD2'];

MERGE (n:Law {id: 'gdpr'})
SET     n.name = 'GDPR',
    n.name_kr = 'GDPR',
    n.domain = 'SV',
    n.aliases = ['GDPR'];

MERGE (n:Concept {id: '마이데이터'})
SET     n.name = '마이데이터',
    n.name_kr = '마이데이터',
    n.domain = 'SV';

MERGE (n:Concept {id: '핀테크'})
SET     n.name = '핀테크',
    n.name_kr = '핀테크',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보주체_자기_결정권_강화'})
SET     n.name = '정보주체 자기 결정권 강화',
    n.name_kr = '정보주체 자기 결정권 강화',
    n.domain = 'SV';

MERGE (n:Concept {id: '사용자'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'SV',
    n.definition = '금융 편의성 증대';

MERGE (n:Concept {id: '핀테크사'})
SET     n.name = '핀테크사',
    n.name_kr = '핀테크사',
    n.domain = 'SV',
    n.definition = '개발 비용절감';

MERGE (n:Concept {id: '은행'})
SET     n.name = '은행',
    n.name_kr = '은행',
    n.domain = 'SV',
    n.definition = '종합금융플랫폼 구축';

MERGE (n:Concept {id: '국가'})
SET     n.name = '국가',
    n.name_kr = '국가',
    n.domain = 'SV',
    n.definition = '마이데이터 활성화';

MERGE (n:Concept {id: '신규_비즈니스'})
SET     n.name = '신규 비즈니스',
    n.name_kr = '신규 비즈니스',
    n.domain = 'SV',
    n.definition = '개인 최적화 서비스';

MERGE (n:Concept {id: '법_제도_개선'})
SET     n.name = '법 제도 개선',
    n.name_kr = '법 제도 개선',
    n.domain = 'SV',
    n.definition = '스몰라이선스 핀테크';

MERGE (n:Concept {id: '보안강화'})
SET     n.name = '보안강화',
    n.name_kr = '보안강화',
    n.domain = 'SV',
    n.definition = '핀테크사 보안 강화';

// --- 관계 ---

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '오픈_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '테스트베드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: 'psd2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Law {id: 'gdpr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '마이데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '핀테크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '정보주체_자기_결정권_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '핀테크사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '은행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '국가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '신규_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '법_제도_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Concept {id: '보안강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Document {id: 'SV_338.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '오픈뱅킹'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제_예상_토픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈_api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트베드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psd2'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: 'gdpr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보주체_자기_결정권_강화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크사'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '은행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_비즈니스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법_제도_개선'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안강화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_338.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_338.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_339: 디파이(De-fi)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_339'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'de_fi'})
SET     n.name = 'De-fi',
    n.name_kr = '디파이',
    n.domain = 'SV',
    n.aliases = ['De-fi', '디파이'];

MERGE (n:Concept {id: '금융+기술'})
SET     n.name = '금융+기술',
    n.name_kr = '금융+기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '탈중앙화'})
SET     n.name = '탈중앙화',
    n.name_kr = '탈중앙화',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산금융'})
SET     n.name = '분산금융',
    n.name_kr = '분산금융',
    n.domain = 'SV';

MERGE (n:Concept {id: '이더리움'})
SET     n.name = '이더리움',
    n.name_kr = '이더리움',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방형_블록체인'})
SET     n.name = '개방형 블록체인',
    n.name_kr = '개방형 블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: '스테이블_코인'})
SET     n.name = '스테이블 코인',
    n.name_kr = '스테이블 코인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sto'})
SET     n.name = 'STO',
    n.name_kr = 'STO',
    n.domain = 'SV',
    n.aliases = ['STO'];

MERGE (n:Concept {id: 'dex'})
SET     n.name = 'DEX',
    n.name_kr = 'DEX',
    n.domain = 'SV',
    n.aliases = ['DEX'];

MERGE (n:Concept {id: 'cefi'})
SET     n.name = 'CeFi',
    n.name_kr = 'CeFi',
    n.domain = 'SV',
    n.aliases = ['CeFi'];

MERGE (n:Concept {id: '대출,_예금'})
SET     n.name = '대출, 예금',
    n.name_kr = '대출, 예금',
    n.domain = 'SV',
    n.definition = '암호화폐를 담보로 대출 또는 예금 - 대표 플랫폼 메이커다오(MakerDAO), 컴파운드(Compound)';

MERGE (n:Concept {id: 'decentralized_exchange'})
SET     n.name = 'Decentralized Exchange',
    n.name_kr = '탈중앙거래소',
    n.domain = 'SV',
    n.definition = '개인이 직접 자산을 관리하기 때문에 거래소 해킹 및 부정거래로부터 안전함',
    n.aliases = ['Decentralized Exchange', '탈중앙거래소'];

MERGE (n:Concept {id: '다양한_금융서비스'})
SET     n.name = '다양한 금융서비스',
    n.name_kr = '다양한 금융서비스',
    n.domain = 'SV',
    n.definition = '결제, 파생, 자산관리, 보험';

MERGE (n:Concept {id: '해결_과제'})
SET     n.name = '해결 과제',
    n.name_kr = '해결 과제',
    n.domain = 'SV',
    n.definition = '금융 리스크';

MERGE (n:Concept {id: '기술적_문제'})
SET     n.name = '기술적 문제',
    n.name_kr = '기술적 문제',
    n.domain = 'SV',
    n.definition = '합의 과정 거래 처리 지연 - 스마트컨트랙트 자체 코딩 오류 또는 해킹 가능성';

// --- 관계 ---

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '금융+기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '탈중앙화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '분산금융'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '이더리움'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '개방형_블록체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '스테이블_코인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: 'sto'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: 'dex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: 'cefi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '대출,_예금'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: 'decentralized_exchange'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '다양한_금융서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '해결_과제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Concept {id: '기술적_문제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Document {id: 'SV_339'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'de_fi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융+기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈중앙화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산금융'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이더리움'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형_블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스테이블_코인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sto'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dex'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cefi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대출,_예금'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decentralized_exchange'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_금융서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_과제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_340: 지급지시전달업(MyPayment)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_340'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mypayment'})
SET     n.name = 'MyPayment',
    n.name_kr = '지급지시전달업',
    n.domain = 'SV',
    n.aliases = ['MyPayment', '지급지시전달업'];

MERGE (n:Concept {id: '금융+기술'})
SET     n.name = '금융+기술',
    n.name_kr = '금융+기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '지급지시'})
SET     n.name = '지급지시',
    n.name_kr = '지급지시',
    n.domain = 'SV';

MERGE (n:Concept {id: '오픈api'})
SET     n.name = '오픈API',
    n.name_kr = '오픈API',
    n.domain = 'SV';

MERGE (n:Concept {id: 'small_license'})
SET     n.name = '스몰라이선스(소규모 인허가)',
    n.name_kr = '스몰라이선스(소규모 인허가)',
    n.domain = 'SV';

MERGE (n:Concept {id: '수수료절감'})
SET     n.name = '수수료절감',
    n.name_kr = '수수료절감',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mydata'})
SET     n.name = '마이데이터',
    n.name_kr = '마이데이터',
    n.domain = 'SV';

MERGE (n:Concept {id: '효과'})
SET     n.name = '효과',
    n.name_kr = '효과',
    n.domain = 'SV';

MERGE (n:Concept {id: '효과_설명'})
SET     n.name = '효과 설명',
    n.name_kr = '효과 설명',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '금융+기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '지급지시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '오픈api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: 'small_license'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '수수료절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: 'mydata'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '효과'})
MERGE (b:Concept {id: '효과_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '효과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Concept {id: '효과_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Document {id: 'SV_340'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mypayment'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융+기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지급지시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'small_license'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수수료절감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효과'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효과_설명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_341: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_341'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_342: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_342'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_343: 바코드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_343'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'barcode'})
SET     n.name = 'Barcode',
    n.name_kr = '바코드',
    n.domain = 'SV',
    n.aliases = ['바코드'];

MERGE (n:Concept {id: 'quick_response_code'})
SET     n.name = '코드',
    n.name_kr = '코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '1d'})
SET     n.name = '1D',
    n.name_kr = '1D',
    n.domain = 'SV';

MERGE (n:Concept {id: '2d'})
SET     n.name = '2D',
    n.name_kr = '2D',
    n.domain = 'SV';

MERGE (n:Concept {id: '3d_barcode'})
SET     n.name = '3D Barcode',
    n.name_kr = '3D Barcode',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SV';

MERGE (n:Concept {id: '제조사번호'})
SET     n.name = '제조사번호',
    n.name_kr = '제조사번호',
    n.domain = 'SV',
    n.definition = '제조사에 부여하는 코드로 각 업체를 식별하는 코드';

MERGE (n:Concept {id: '상품번호'})
SET     n.name = '상품번호',
    n.name_kr = '상품번호',
    n.domain = 'SV',
    n.definition = '업체에서 자사의 상품별로 식별하여 부여하는 코드';

MERGE (n:Concept {id: '오류검증번호'})
SET     n.name = '오류검증번호',
    n.name_kr = '오류검증번호',
    n.domain = 'SV',
    n.definition = '바코드 오류 검증 코드로 앞의 숫자를 조합하여 생성';

MERGE (n:Concept {id: '다층형_바코드'})
SET     n.name = '다층형 바코드',
    n.name_kr = '다층형 바코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '매트릭스형_바코드'})
SET     n.name = '매트릭스형 바코드',
    n.name_kr = '매트릭스형 바코드',
    n.domain = 'SV',
    n.definition = '정방형의 동일한 폭의 흑백 요소를 모자이크식으로 배열하여 데이터를 구성 - 심볼은 체크무늬 형태이며 스캐너는 각 셀의 흑백을 판단하여 데이터의 비트로 인식 - 판독방식이 단순하고 오차가 적어 많이 사용됨';

MERGE (n:Concept {id: 'pdf_417'})
SET     n.name = 'PDF 417',
    n.name_kr = 'PDF 417',
    n.domain = 'SV',
    n.aliases = ['PDF 417'];

MERGE (n:Concept {id: 'datamatrix_코드'})
SET     n.name = 'DataMatrix 코드',
    n.name_kr = 'DataMatrix 코드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'maxi_matrix'})
SET     n.name = 'Maxi Matrix',
    n.name_kr = 'Maxi Matrix',
    n.domain = 'SV',
    n.aliases = ['Maxi Matrix'];

MERGE (n:Concept {id: 'qr_코드'})
SET     n.name = 'QR 코드',
    n.name_kr = 'QR 코드',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'quick_response_code'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '1d'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '2d'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '3d_barcode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '제조사번호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '상품번호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '오류검증번호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '다층형_바코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: '매트릭스형_바코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pdf_417'})
MERGE (b:Concept {id: 'datamatrix_코드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pdf_417'})
MERGE (b:Concept {id: 'maxi_matrix'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pdf_417'})
MERGE (b:Concept {id: 'qr_코드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'pdf_417'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'datamatrix_코드'})
MERGE (b:Concept {id: 'maxi_matrix'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'datamatrix_코드'})
MERGE (b:Concept {id: 'qr_코드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'datamatrix_코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'maxi_matrix'})
MERGE (b:Concept {id: 'qr_코드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'maxi_matrix'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'qr_코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Document {id: 'SV_343'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quick_response_code'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1d'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2d'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_barcode'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제조사번호'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상품번호'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류검증번호'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다층형_바코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매트릭스형_바코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdf_417'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'datamatrix_코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maxi_matrix'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qr_코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_344: QR코드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_344'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'qr코드'})
SET     n.name = 'QR코드',
    n.name_kr = 'QR코드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'quick_response_code'})
SET     n.name = '코드',
    n.name_kr = '코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '이차원_바코드'})
SET     n.name = '이차원 바코드',
    n.name_kr = '이차원 바코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '대용량_문자데이터'})
SET     n.name = '대용량 문자데이터',
    n.name_kr = '대용량 문자데이터',
    n.domain = 'SV';

MERGE (n:Concept {id: 'barcode'})
SET     n.name = 'Barcode',
    n.name_kr = '바코드',
    n.domain = 'SV',
    n.aliases = ['Barcode', '바코드'];

MERGE (n:Concept {id: 'function_pattern'})
SET     n.name = 'Function pattern',
    n.name_kr = '기능 패턴',
    n.domain = 'SV',
    n.definition = 'Quiet Zone',
    n.aliases = ['Function pattern', '기능 패턴'];

MERGE (n:Concept {id: 'timing_patern'})
SET     n.name = 'Timing Patern',
    n.name_kr = 'Timing Patern',
    n.domain = 'SV',
    n.definition = '왜곡 대비한 행렬의 셀 위치 기준점.',
    n.aliases = ['Timing Patern'];

MERGE (n:Concept {id: 'alignment_pattern'})
SET     n.name = 'Alignment Pattern',
    n.name_kr = '정렬 패턴',
    n.domain = 'SV',
    n.definition = '왜곡 대비한 정렬 기준점.',
    n.aliases = ['Alignment Pattern', '정렬 패턴'];

MERGE (n:Concept {id: '인코딩_영역'})
SET     n.name = '인코딩 영역',
    n.name_kr = '인코딩 영역',
    n.domain = 'SV',
    n.definition = '포맷 정보';

MERGE (n:Concept {id: 'version'})
SET     n.name = '버전 정보',
    n.name_kr = '버전 정보',
    n.domain = 'SV',
    n.definition = '버전 7 이상인 경우의 버전정보, BCH Bit 등';

MERGE (n:Concept {id: '데이터,_오류교정_영역'})
SET     n.name = '데이터, 오류교정 영역',
    n.name_kr = '데이터, 오류교정 영역',
    n.domain = 'SV',
    n.definition = '블록 단위로 해석되는 데이터와 오류 교정 정보 표기 영역';

// --- 관계 ---

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'quick_response_code'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: '이차원_바코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: '대용량_문자데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Concept {id: 'quick_response_code'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'barcode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'quick_response_code'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'function_pattern'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'timing_patern'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'alignment_pattern'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: '인코딩_영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: 'version'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Concept {id: '데이터,_오류교정_영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Document {id: 'SV_344'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quick_response_code'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이차원_바코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대용량_문자데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'barcode'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'function_pattern'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timing_patern'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alignment_pattern'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인코딩_영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'version'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터,_오류교정_영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_345: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_345'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_346: 스마트카드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_346'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'smart_card'})
SET     n.name = 'Smart Card',
    n.name_kr = '스마트카드',
    n.domain = 'SV',
    n.aliases = ['스마트카드'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'smart_card'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smart_card'})
MERGE (b:Document {id: 'SV_346'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smart_card'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_347: 간편결제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_347'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '간편결제'})
SET     n.name = '간편결제',
    n.name_kr = '간편결제',
    n.domain = 'SV';

MERGE (n:Concept {id: '결제'})
SET     n.name = '(간편)결제',
    n.name_kr = '(간편)결제',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mst'})
SET     n.name = 'MST',
    n.name_kr = 'MST',
    n.domain = 'SV',
    n.aliases = ['MST'];

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'SV',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: 'se'})
SET     n.name = 'SE',
    n.name_kr = 'SE',
    n.domain = 'SV',
    n.aliases = ['SE'];

MERGE (n:Concept {id: 'hce'})
SET     n.name = 'HCE',
    n.name_kr = 'HCE',
    n.domain = 'SV',
    n.aliases = ['HCE'];

MERGE (n:Concept {id: 'qr'})
SET     n.name = 'QR',
    n.name_kr = 'QR',
    n.domain = 'SV',
    n.aliases = ['QR'];

MERGE (n:Concept {id: '생체_인식'})
SET     n.name = '생체 인식',
    n.name_kr = '생체 인식',
    n.domain = 'SV';

MERGE (n:Concept {id: 'fido2_0'})
SET     n.name = 'FIDO2.0',
    n.name_kr = 'FIDO2.0',
    n.domain = 'SV',
    n.aliases = ['FIDO2.0'];

MERGE (n:Concept {id: 'tee'})
SET     n.name = 'TEE',
    n.name_kr = 'TEE',
    n.domain = 'SV',
    n.aliases = ['TEE'];

MERGE (n:Concept {id: '토큰화_기술'})
SET     n.name = '토큰화 기술',
    n.name_kr = '토큰화 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '결제_방식'})
SET     n.name = '결제 방식',
    n.name_kr = '결제 방식',
    n.domain = 'SV',
    n.definition = 'MST';

MERGE (n:Concept {id: '앱카드'})
SET     n.name = '앱카드',
    n.name_kr = '앱카드',
    n.domain = 'SV',
    n.definition = '바코드 리더기로 1 회용 가상 카드 번호 사용 QR 코드, 바코드 이용';

MERGE (n:Concept {id: '인식_및_인증_기술'})
SET     n.name = '인식 및 인증 기술',
    n.name_kr = '인식 및 인증 기술',
    n.domain = 'SV',
    n.definition = '지문 인식';

MERGE (n:Metric {id: '홍채_인식'})
SET     n.name = '홍채 인식',
    n.name_kr = '홍채 인식',
    n.domain = 'SV',
    n.definition = '266 개 고유 홍채 패턴정보 이용 높은 정확도, 비접촉 방식, 높은 시스템 가격';

MERGE (n:Concept {id: '정맥_인식'})
SET     n.name = '정맥 인식',
    n.name_kr = '정맥 인식',
    n.domain = 'SV',
    n.definition = '눈에 보이지 않는 혈관을 적외선 조명으로 패턴 추출';

MERGE (n:Concept {id: '중요_정보_저장_기술'})
SET     n.name = '중요 정보 저장 기술',
    n.name_kr = '중요 정보 저장 기술',
    n.domain = 'SV',
    n.definition = 'SE (Secure Element)';

MERGE (n:Metric {id: 'tee_신뢰실행환경'})
SET     n.name = 'TEE 신뢰실행환경',
    n.name_kr = 'TEE 신뢰실행환경',
    n.domain = 'SV',
    n.definition = '실행환경을 Normal(일반응용)과 Secure(보안응용)로 구분 정보 교환 통제 및 OS 앱 무결성 확인 CPU 에 존재해 추가적으로 설치비용이 없음';

MERGE (n:Concept {id: '의사난수_생성'})
SET     n.name = '의사난수 생성',
    n.name_kr = '의사난수 생성',
    n.domain = 'SV',
    n.definition = '최고 안전한 토큰 생성, 설계 구현 및 생성 효율성 어려움';

MERGE (n:Concept {id: 'fpe'})
SET     n.name = 'FPE',
    n.name_kr = '형태보존암호화',
    n.domain = 'SV',
    n.definition = 'Prefix cipher, Cycle-walking, Generalized-Fiestel Cipher',
    n.aliases = ['FPE', '형태보존암호화'];

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SV';

MERGE (n:Concept {id: '개선점'})
SET     n.name = '개선점',
    n.name_kr = '개선점',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '결제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'mst'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'se'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'hce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'qr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '생체_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'fido2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'tee'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '토큰화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '결제_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '앱카드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '인식_및_인증_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Metric {id: '홍채_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '정맥_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '중요_정보_저장_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Metric {id: 'tee_신뢰실행환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '의사난수_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: 'fpe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '개선점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '개선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Document {id: 'SV_347'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mst'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'se'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hce'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체_인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fido2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tee'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토큰화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앱카드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인식_및_인증_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '홍채_인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정맥_인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요_정보_저장_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'tee_신뢰실행환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사난수_생성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fpe'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_348: 마그네틱 보안 전송 (MST, Magnetic Secure Transmission)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_348'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mst,_magnetic_secure_transmission'})
SET     n.name = 'MST, Magnetic Secure Transmission',
    n.name_kr = '마그네틱 보안 전송',
    n.domain = 'SV',
    n.aliases = ['MST, Magnetic Secure Transmission', '마그네틱 보안 전송'];

MERGE (n:Concept {id: '결제'})
SET     n.name = '(간편) 결제',
    n.name_kr = '(간편) 결제',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mst'})
SET     n.name = 'MST',
    n.name_kr = 'MST',
    n.domain = 'SV',
    n.aliases = ['MST'];

MERGE (n:Concept {id: '자기장'})
SET     n.name = '자기장',
    n.name_kr = '자기장',
    n.domain = 'SV';

MERGE (n:Concept {id: '마그네틱_방식'})
SET     n.name = '마그네틱 방식',
    n.name_kr = '마그네틱 방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '기존_인프라'})
SET     n.name = '기존 인프라',
    n.name_kr = '기존 인프라',
    n.domain = 'SV';

MERGE (n:Concept {id: '삼성페이'})
SET     n.name = '삼성페이',
    n.name_kr = '삼성페이',
    n.domain = 'SV';

MERGE (n:Concept {id: '루프페이'})
SET     n.name = '루프페이',
    n.name_kr = '루프페이',
    n.domain = 'SV';

MERGE (n:Concept {id: '결제방식'})
SET     n.name = '결제방식',
    n.name_kr = '결제방식',
    n.domain = 'SV',
    n.definition = '평소 사용하고 있는 신용카드(마그네틱 카드)를 카드 리더기에 긁게 되면 카드에 내장된 카드번호와 유효기간 등의 정보가 자기장으로 변환되어 카드 결제 시스템으로 전송됩니다. 그리고 이 정보를 받은 카드사가 이를 승인하여 결제가 이뤄지는 방식, 미국 루프페이(LoopPay)사가 개발한 기술 애플리케이션에 가상 카드 정보를 생성하고 이 정보를 바탕으로 자기장을';

// --- 관계 ---

MERGE (a:Concept {id: 'mst'})
MERGE (b:Concept {id: '결제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '자기장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '마그네틱_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '기존_인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '삼성페이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '루프페이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Concept {id: '결제방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Document {id: 'SV_348'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mst,_magnetic_secure_transmission'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mst'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마그네틱_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_인프라'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '루프페이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_349: 옴니페이
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_349'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'omni_payment'})
SET     n.name = 'Omni Payment',
    n.name_kr = '옴니페이',
    n.domain = 'SV',
    n.aliases = ['옴니페이'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '결제'})
SET     n.name = '결제',
    n.name_kr = '결제',
    n.domain = 'SV';

MERGE (n:Concept {id: '다중_결재_기술'})
SET     n.name = '다중 결재 기술',
    n.name_kr = '다중 결재 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mst'})
SET     n.name = 'MST',
    n.name_kr = 'MST',
    n.domain = 'SV',
    n.aliases = ['MST'];

MERGE (n:Concept {id: 'nfcc'})
SET     n.name = 'NFCC',
    n.name_kr = 'NFCC',
    n.domain = 'SV',
    n.aliases = ['NFCC'];

MERGE (n:Concept {id: 'beacon'})
SET     n.name = '비콘',
    n.name_kr = '비콘',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일_인증'})
SET     n.name = '모바일 인증',
    n.name_kr = '모바일 인증',
    n.domain = 'SV';

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = '근거리 무선통신',
    n.domain = 'SV',
    n.definition = '10m 이내 혹은 접촉식 방식 사용 인식강도 양호',
    n.aliases = ['NFC', '근거리 무선통신'];

MERGE (n:Concept {id: '생체인증_기술'})
SET     n.name = '생체인증 기술',
    n.name_kr = '생체인증 기술',
    n.domain = 'SV',
    n.definition = '지문인식 동공(홍체)인식 안면인식';

MERGE (n:Concept {id: '오프라인_가맹점'})
SET     n.name = '오프라인 가맹점',
    n.name_kr = '오프라인 가맹점',
    n.domain = 'SV',
    n.definition = 'MST, 비콘, NFC';

MERGE (n:Concept {id: 'e_commerce'})
SET     n.name = 'e-Commerce',
    n.name_kr = 'e-Commerce',
    n.domain = 'SV',
    n.definition = 'HTML5, 생체인식,다중인증기술',
    n.aliases = ['e-Commerce'];

MERGE (n:Concept {id: '모바일_결제'})
SET     n.name = '모바일 결제',
    n.name_kr = '모바일 결제',
    n.domain = 'SV',
    n.definition = 'NFC, 유심, MST, 어플리케이션별 특화 보안기술';

// --- 관계 ---

MERGE (a:Concept {id: '결제'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '결제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '다중_결재_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: 'mst'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: 'nfcc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: 'beacon'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '모바일_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '생체인증_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '오프라인_가맹점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: 'e_commerce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Concept {id: '모바일_결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Document {id: 'SV_349'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'omni_payment'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_결재_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mst'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfcc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beacon'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체인증_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오프라인_가맹점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_commerce'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_350: 제로페이(zero-pay)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_350'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'zero_pay'})
SET     n.name = 'zero-pay',
    n.name_kr = '제로페이',
    n.domain = 'SV',
    n.aliases = ['zero-pay', '제로페이'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '간편결제'})
SET     n.name = '간편결제',
    n.name_kr = '간편결제',
    n.domain = 'SV';

MERGE (n:Concept {id: 'qr코드'})
SET     n.name = 'QR코드',
    n.name_kr = 'QR코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '앱투앱'})
SET     n.name = '앱투앱(고정형QR)',
    n.name_kr = '앱투앱(고정형QR)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'pos'})
SET     n.name = 'POS',
    n.name_kr = '변동형QR',
    n.domain = 'SV',
    n.aliases = ['POS', '변동형QR'];

MERGE (n:Concept {id: '고객'})
SET     n.name = '고객',
    n.name_kr = '고객',
    n.domain = 'SV',
    n.definition = '고객 유인책 부족 - 자영업자 살리기 명분에 의존';

MERGE (n:Concept {id: '가맹점'})
SET     n.name = '가맹점',
    n.name_kr = '가맹점',
    n.domain = 'SV',
    n.definition = '가맹점주의 결제 소요시간 증가';

MERGE (n:Concept {id: '제도_측면'})
SET     n.name = '제도 측면',
    n.name_kr = '제도 측면',
    n.domain = 'SV',
    n.definition = '제로페이 멤버십 제도';

MERGE (n:Concept {id: '고객_체험_강화_측면'})
SET     n.name = '고객 체험 강화 측면',
    n.name_kr = '고객 체험 강화 측면',
    n.domain = 'SV',
    n.definition = '은행앱의 제로페이 모드 준비';

MERGE (n:Concept {id: '혜택_측면'})
SET     n.name = '혜택 측면',
    n.name_kr = '혜택 측면',
    n.domain = 'SV',
    n.definition = '가맹점주 CRM 지원';

MERGE (n:Concept {id: '신용카드사,_페이코_등'})
SET     n.name = '신용카드사, 페이코 등',
    n.name_kr = '신용카드사, 페이코 등',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '간편결제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: 'qr코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '앱투앱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: 'pos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '고객'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '가맹점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '제도_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '고객_체험_강화_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '혜택_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '신용카드사,_페이코_등'})
MERGE (b:Concept {id: 'zero_pay'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Concept {id: '신용카드사,_페이코_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Document {id: 'SV_350'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'zero_pay'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앱투앱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가맹점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_체험_강화_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혜택_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신용카드사,_페이코_등'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_351: 삼성페이
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_351'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '삼성페이'})
SET     n.name = '삼성페이',
    n.name_kr = '삼성페이',
    n.domain = 'SV';

MERGE (n:Concept {id: '결재'})
SET     n.name = '결재',
    n.name_kr = '결재',
    n.domain = 'SV';

MERGE (n:Concept {id: '루프페이'})
SET     n.name = '루프페이',
    n.name_kr = '루프페이',
    n.domain = 'SV';

MERGE (n:Concept {id: '주요기술'})
SET     n.name = '주요기술',
    n.name_kr = '주요기술',
    n.domain = 'SV',
    n.definition = '카드정보 입력';

MERGE (n:Concept {id: '지문인증'})
SET     n.name = '지문인증',
    n.name_kr = '지문인증',
    n.domain = 'SV',
    n.definition = '임시카드번호 생성 (토큰 + 인증 값)';

MERGE (n:Concept {id: '통신방식'})
SET     n.name = '통신방식',
    n.name_kr = '통신방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안모듈'})
SET     n.name = '보안모듈',
    n.name_kr = '보안모듈',
    n.domain = 'SV',
    n.definition = 'Knox플랫폼에 저장되어 일반 앱과 구분되며, 토큰과 인증 seed값은 칩 제조사인 ARM이 고안한 trust zone내에 저장';

MERGE (n:Concept {id: 'mst'})
SET     n.name = 'MST',
    n.name_kr = 'MST',
    n.domain = 'SV',
    n.definition = '마그네틱 신용카드를 긁게되면 생기는 자기장을 카드단말기가 인식해서 결제가 이루어지는데 삼성페이는 이 과정에서 마그네틱 카드 대신 휴대폰에서 자체적으로 자기장을 만들어 카드단말기에 전달하며 결제가 진행',
    n.aliases = ['MST'];

MERGE (n:Concept {id: '결제유형'})
SET     n.name = '결제유형',
    n.name_kr = '결제유형',
    n.domain = 'SV',
    n.definition = '일반 카드 리더기 유형';

MERGE (n:Concept {id: 'pos_카드_리더기_유형'})
SET     n.name = 'POS 카드 리더기 유형',
    n.name_kr = 'POS 카드 리더기 유형',
    n.domain = 'SV',
    n.definition = 'POS기기 리더기에도 사용 가능(일부 구형 모델 제외)';

MERGE (n:Concept {id: '서명패드_유형'})
SET     n.name = '서명패드 유형',
    n.name_kr = '서명패드 유형',
    n.domain = 'SV',
    n.definition = '삼성페이 지원 서명패드 사용 가능';

MERGE (n:Concept {id: '중분류'})
SET     n.name = '중분류',
    n.name_kr = '중분류',
    n.domain = 'SV';

MERGE (n:Concept {id: '애플페이'})
SET     n.name = '애플페이',
    n.name_kr = '애플페이',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '결재'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '루프페이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '주요기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '지문인증'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '통신방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '보안모듈'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: 'mst'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '결제유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: 'pos_카드_리더기_유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '서명패드_유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '중분류'})
MERGE (b:Concept {id: '애플페이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '중분류'})
MERGE (b:Concept {id: '삼성페이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '중분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '애플페이'})
MERGE (b:Concept {id: '삼성페이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Concept {id: '애플페이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Document {id: 'SV_351'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결재'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '루프페이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지문인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mst'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제유형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pos_카드_리더기_유형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서명패드_유형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중분류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플페이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_352: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_352'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_353.1: IDX (Intelligent Digital X-formation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_353.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'intelligent_digital_x_formation'})
SET     n.name = 'Intelligent Digital X-formation',
    n.name_kr = 'IDX',
    n.domain = 'SV',
    n.aliases = ['Intelligent Digital X-formation', 'IDX'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: 'idx'})
SET     n.name = 'IDX',
    n.name_kr = 'IDX',
    n.domain = 'SV',
    n.aliases = ['IDX'];

// --- 관계 ---

MERGE (a:Concept {id: 'idx'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'intelligent_digital_x_formation'})
MERGE (b:Document {id: 'SV_353.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'intelligent_digital_x_formation'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'idx'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_353.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_353.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_353.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_353.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_353.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_353.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_354: Digital Convergence
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_354'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_convergence'})
SET     n.name = 'Digital Convergence',
    n.name_kr = 'Digital Convergence',
    n.domain = 'SV',
    n.aliases = ['Digital Convergence'];

MERGE (n:Concept {id: '디지털융합'})
SET     n.name = '디지털융합',
    n.name_kr = '디지털융합',
    n.domain = 'SV';

MERGE (n:Concept {id: 'all_ip'})
SET     n.name = 'All IP',
    n.name_kr = 'All IP',
    n.domain = 'SV',
    n.aliases = ['All IP'];

MERGE (n:Concept {id: 'bcn'})
SET     n.name = 'BcN',
    n.name_kr = 'BcN',
    n.domain = 'SV',
    n.aliases = ['BcN'];

MERGE (n:Concept {id: '콘텐츠_융합'})
SET     n.name = '콘텐츠 융합',
    n.name_kr = '콘텐츠 융합',
    n.domain = 'SV';

MERGE (n:Concept {id: '미디어_융합'})
SET     n.name = '미디어 융합',
    n.name_kr = '미디어 융합',
    n.domain = 'SV';

MERGE (n:Concept {id: '기기_융합'})
SET     n.name = '기기 융합',
    n.name_kr = '기기 융합',
    n.domain = 'SV';

MERGE (n:Concept {id: '기술_융합'})
SET     n.name = '기술 융합',
    n.name_kr = '기술 융합',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: '디지털융합'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: 'all_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: 'bcn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: '콘텐츠_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: '미디어_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: '기기_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Concept {id: '기술_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Document {id: 'SV_354'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_convergence'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'all_ip'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠_융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미디어_융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기기_융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_융합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_355: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_355'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_356: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_356'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_357: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_357'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_359: O2O(Online to Offline)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_359'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'online_to_offline'})
SET     n.name = 'Online to Offline',
    n.name_kr = 'O2O',
    n.domain = 'SV',
    n.aliases = ['Online to Offline', 'O2O'];

MERGE (n:Concept {id: 'o2o'})
SET     n.name = 'O2O',
    n.name_kr = 'O2O',
    n.domain = 'SV',
    n.aliases = ['O2O'];

MERGE (n:Concept {id: '쇼핑유형:_쇼루밍'})
SET     n.name = '쇼핑유형: 쇼루밍',
    n.name_kr = '쇼핑유형: 쇼루밍',
    n.domain = 'SV';

MERGE (n:Concept {id: '역소루밍'})
SET     n.name = '역소루밍',
    n.name_kr = '역소루밍',
    n.domain = 'SV';

MERGE (n:Concept {id: '옴니쇼핑'})
SET     n.name = '옴니쇼핑',
    n.name_kr = '옴니쇼핑',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일쇼핑'})
SET     n.name = '모바일쇼핑',
    n.name_kr = '모바일쇼핑',
    n.domain = 'SV';

MERGE (n:Concept {id: 'uber_/카카오_택시'})
SET     n.name = 'UBER /카카오 택시',
    n.name_kr = 'UBER /카카오 택시',
    n.domain = 'SV';

MERGE (n:Concept {id: 'beacon'})
SET     n.name = 'Beacon',
    n.name_kr = '비콘',
    n.domain = 'SV',
    n.aliases = ['Beacon', '비콘'];

MERGE (n:Concept {id: 'geo_fencing'})
SET     n.name = 'Geo-fencing',
    n.name_kr = '지오펜싱',
    n.domain = 'SV',
    n.aliases = ['Geo-fencing', '지오펜싱'];

MERGE (n:Concept {id: 'ble'})
SET     n.name = 'BLE',
    n.name_kr = 'BLE',
    n.domain = 'SV',
    n.aliases = ['BLE'];

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'SV',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: '간편결제'})
SET     n.name = '간편결제',
    n.name_kr = '간편결제',
    n.domain = 'SV';

MERGE (n:Concept {id: 'lbs'})
SET     n.name = 'LBS',
    n.name_kr = 'LBS',
    n.domain = 'SV',
    n.aliases = ['LBS'];

MERGE (n:Concept {id: 'gps'})
SET     n.name = 'GPS',
    n.name_kr = 'GPS',
    n.domain = 'SV',
    n.aliases = ['GPS'];

MERGE (n:Concept {id: '이동통신기'})
SET     n.name = '이동통신기',
    n.name_kr = '이동통신기',
    n.domain = 'SV';

MERGE (n:Technology {id: 'wi_fi'})
SET     n.name = 'Wi-Fi',
    n.name_kr = '와이파이',
    n.domain = 'SV',
    n.definition = '와이파이 접속 화면을 통해 앱 설치 없이도 매장으로 고객을 방문하게 하는 정보 전달 기능',
    n.aliases = ['Wi-Fi', '와이파이'];

// --- 관계 ---

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Concept {id: 'o2o'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '쇼핑유형:_쇼루밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '역소루밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '옴니쇼핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '모바일쇼핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'uber_/카카오_택시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'beacon'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'geo_fencing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'ble'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '간편결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'lbs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: 'gps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Concept {id: '이동통신기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Technology {id: 'wi_fi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Document {id: 'SV_359'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'online_to_offline'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쇼핑유형:_쇼루밍'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역소루밍'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '옴니쇼핑'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일쇼핑'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uber_/카카오_택시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beacon'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'geo_fencing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ble'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gps'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통신기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'wi_fi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_360: O4O(Online for Offline)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_360'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'online_for_offline'})
SET     n.name = 'Online for Offline',
    n.name_kr = 'O4O',
    n.domain = 'SV',
    n.aliases = ['Online for Offline', 'O4O'];

MERGE (n:Concept {id: 'o2o'})
SET     n.name = 'O2O',
    n.name_kr = 'O2O',
    n.domain = 'SV',
    n.aliases = ['O2O'];

MERGE (n:Concept {id: 'o4o'})
SET     n.name = 'O4O',
    n.name_kr = 'O4O',
    n.domain = 'SV',
    n.aliases = ['O4O'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'SV',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: '이미지/얼굴_인식'})
SET     n.name = '이미지/얼굴 인식',
    n.name_kr = '이미지/얼굴 인식',
    n.domain = 'SV';

MERGE (n:Concept {id: '지오펜싱'})
SET     n.name = '지오펜싱',
    n.name_kr = '지오펜싱',
    n.domain = 'SV';

MERGE (n:Concept {id: '비콘'})
SET     n.name = '비콘',
    n.name_kr = '비콘',
    n.domain = 'SV';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'SV';

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'SV';

MERGE (n:Concept {id: 'amazon_go'})
SET     n.name = '아마존고',
    n.name_kr = '아마존고',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'o4o'})
MERGE (b:Concept {id: 'o2o'})
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
MERGE (b:Document {id: 'SV_360'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'online_for_offline'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o2o'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o4o'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지/얼굴_인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지오펜싱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비콘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'amazon_go'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_363: 디지털 리테일(Digital Retail)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_363'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_retail'})
SET     n.name = 'Digital Retail',
    n.name_kr = '디지털 리테일',
    n.domain = 'SV',
    n.aliases = ['Digital Retail', '디지털 리테일'];

MERGE (n:Concept {id: '융합서비스'})
SET     n.name = '융합서비스',
    n.name_kr = '융합서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'SV',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: 'cloud'})
SET     n.name = 'Cloud',
    n.name_kr = 'Cloud',
    n.domain = 'SV',
    n.aliases = ['Cloud'];

MERGE (n:Concept {id: 'mobile'})
SET     n.name = 'Mobile',
    n.name_kr = 'Mobile',
    n.domain = 'SV',
    n.aliases = ['Mobile'];

MERGE (n:Concept {id: 'ai'})
SET     n.name = 'AI',
    n.name_kr = 'AI',
    n.domain = 'SV',
    n.aliases = ['AI'];

MERGE (n:Concept {id: 'xr'})
SET     n.name = 'XR',
    n.name_kr = 'XR',
    n.domain = 'SV',
    n.aliases = ['XR'];

MERGE (n:Concept {id: '생산/유통'})
SET     n.name = '생산/유통',
    n.name_kr = '생산/유통',
    n.domain = 'SV',
    n.definition = '스마트 팩토리';

MERGE (n:Concept {id: '드론'})
SET     n.name = '드론',
    n.name_kr = '드론',
    n.domain = 'SV',
    n.definition = '배송 비용 절감 및 유통 경로 다양화를 위한 기술';

MERGE (n:Concept {id: '로보틱스'})
SET     n.name = '로보틱스',
    n.name_kr = '로보틱스',
    n.domain = 'SV',
    n.definition = '생산 프로세스 최적화, 위험 작업 대행, 단순 반복 작업 지원';

MERGE (n:Concept {id: '영업/마케팅'})
SET     n.name = '영업/마케팅',
    n.name_kr = '영업/마케팅',
    n.domain = 'SV',
    n.definition = '스마트 사이니지';

MERGE (n:Concept {id: 'mixed_reality'})
SET     n.name = 'Mixed Reality',
    n.name_kr = 'MR',
    n.domain = 'SV',
    n.definition = '고객 참여 및 관계 몰입을 통한 고객 충성도 향상 방안',
    n.aliases = ['Mixed Reality', 'MR'];

MERGE (n:Concept {id: '라이브_커머스'})
SET     n.name = '라이브 커머스',
    n.name_kr = '라이브 커머스',
    n.domain = 'SV',
    n.definition = '고객의 상품에 대한 접근 경로 다양화를 통한 매출 향상';

MERGE (n:Concept {id: '결제/관리'})
SET     n.name = '결제/관리',
    n.name_kr = '결제/관리',
    n.domain = 'SV',
    n.definition = '블록체인';

MERGE (n:Concept {id: '간편결제'})
SET     n.name = '간편결제',
    n.name_kr = '간편결제',
    n.domain = 'SV',
    n.definition = '생체 인식, 스마트 월렛 등의 지원을 통한 고객 편의성 확보';

MERGE (n:Concept {id: '스마트_비콘'})
SET     n.name = '스마트 비콘',
    n.name_kr = '스마트 비콘',
    n.domain = 'SV',
    n.definition = '모바일 디바이스 연결을 통한 실시간 고객 관리 지원';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '융합서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'mobile'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'ai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'xr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '생산/유통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '드론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '로보틱스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '영업/마케팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: 'mixed_reality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '라이브_커머스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '결제/관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '간편결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Concept {id: '스마트_비콘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Document {id: 'SV_363'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_retail'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '융합서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mobile'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산/유통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '드론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로보틱스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영업/마케팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mixed_reality'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이브_커머스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결제/관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간편결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_비콘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_364: AI 콜센터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_364'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ai_콜센터'})
SET     n.name = 'AI 콜센터',
    n.name_kr = 'AI 콜센터',
    n.domain = 'SV';

MERGE (n:Concept {id: '융합서비스'})
SET     n.name = '융합서비스',
    n.name_kr = '융합서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'stt'})
SET     n.name = 'STT',
    n.name_kr = 'STT',
    n.domain = 'SV',
    n.aliases = ['STT'];

MERGE (n:Concept {id: 'tts'})
SET     n.name = 'TTS',
    n.name_kr = 'TTS',
    n.domain = 'SV',
    n.aliases = ['TTS'];

MERGE (n:Concept {id: '고객이탈'})
SET     n.name = '고객이탈',
    n.name_kr = '고객이탈',
    n.domain = 'SV';

MERGE (n:Concept {id: '챗봇'})
SET     n.name = '챗봇',
    n.name_kr = '챗봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '심층_질의응답'})
SET     n.name = '심층 질의응답',
    n.name_kr = '심층 질의응답',
    n.domain = 'SV';

MERGE (n:Concept {id: '인바운드'})
SET     n.name = '인바운드',
    n.name_kr = '인바운드',
    n.domain = 'SV';

MERGE (n:Concept {id: '아웃바운드'})
SET     n.name = '아웃바운드',
    n.name_kr = '아웃바운드',
    n.domain = 'SV';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'SV';

MERGE (n:Concept {id: '녹취시스템'})
SET     n.name = '녹취시스템',
    n.name_kr = '녹취시스템',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '언어_인식_및_합성_기술'})
SET     n.name = '언어 인식 및 합성 기술',
    n.name_kr = '언어 인식 및 합성 기술',
    n.domain = 'SV',
    n.definition = 'STT(Speech to Text)';

MERGE (n:Concept {id: '상담도우미시스템'})
SET     n.name = '상담도우미시스템',
    n.name_kr = '상담도우미시스템',
    n.domain = 'SV',
    n.definition = 'AI엔진';

MERGE (n:Concept {id: '질의_응답_기술'})
SET     n.name = '질의 응답 기술',
    n.name_kr = '질의 응답 기술',
    n.domain = 'SV',
    n.definition = '고객의 질의에 알맞은 답변을 찾는 기술, 언어를 이해하고 지식을 학습하여 사용자의 질문에 정확한 답을 제시하는 기술 - 좀더 고도화된 답을 위해서는 온톨로지 지식베이스 기반 및 딥러닝 기술을 접목시켜야 함.';

MERGE (n:Concept {id: '음성_인식_기술'})
SET     n.name = '음성 인식 기술',
    n.name_kr = '음성 인식 기술',
    n.domain = 'SV',
    n.definition = '전통적인 음성 인식 기술은 음절과 어절을 생성하는 음향모델과 생성된 어절을 통계적으로 보정하는 언어 모델로 구성됨.';

MERGE (n:Concept {id: 'ai'})
SET     n.name = '인공지능(AI) 상담사',
    n.name_kr = '인공지능(AI) 상담사',
    n.domain = 'SV',
    n.definition = '고객질의에 대한 명확한 인공지능 상담 - 실시간 STT 수행, 질문/의도(intent) 분석 - 지식DB 학습, 색인, 검색, 응답문 생성/발화';

MERGE (n:Concept {id: '고려사항'})
SET     n.name = '고려사항',
    n.name_kr = '고려사항',
    n.domain = 'SV';

MERGE (n:Concept {id: '핵심사항'})
SET     n.name = '핵심사항',
    n.name_kr = '핵심사항',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '융합서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: 'stt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: 'tts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '고객이탈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '챗봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '심층_질의응답'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '인바운드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '아웃바운드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '녹취시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '언어_인식_및_합성_기술'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '상담도우미시스템'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '질의_응답_기술'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '음성_인식_기술'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: 'ai'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Concept {id: '핵심사항'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Concept {id: '핵심사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Document {id: 'SV_364'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ai_콜센터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '융합서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stt'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tts'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객이탈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '챗봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심층_질의응답'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인바운드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃바운드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '녹취시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언어_인식_및_합성_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상담도우미시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '질의_응답_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성_인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_365: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_365'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_366: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_366'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 315개
// 관계: 653개
// ================================================================