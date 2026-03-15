// ================================================================
// SE 도메인 (SE_201 ~ SE_250) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_157: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_157'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_158.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_158.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_158.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_158.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_159: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_159'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_160: 코드서명
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_160'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'code_signing'})
SET     n.name = 'Code Signing',
    n.name_kr = '코드서명',
    n.domain = 'SE',
    n.aliases = ['코드서명'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증서'})
SET     n.name = '인증서',
    n.name_kr = '인증서',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pki'})
SET     n.name = 'PKI',
    n.name_kr = 'PKI',
    n.domain = 'SE',
    n.aliases = ['PKI'];

MERGE (n:Concept {id: 'hash_비교'})
SET     n.name = 'Hash 비교',
    n.name_kr = 'Hash 비교',
    n.domain = 'SE';

MERGE (n:Concept {id: '배포기관'})
SET     n.name = '배포기관 (코드서명 생성)',
    n.name_kr = '배포기관 (코드서명 생성)',
    n.domain = 'SE',
    n.definition = '코드서명 인증서 발급';

MERGE (n:Metric {id: '사용자'})
SET     n.name = '사용자 (무결성 검증)',
    n.name_kr = '사용자 (무결성 검증)',
    n.domain = 'SE',
    n.definition = '인증서 검증';

MERGE (n:Metric {id: '인증서_관리'})
SET     n.name = '인증서 관리',
    n.name_kr = '인증서 관리',
    n.domain = 'SE',
    n.definition = '별도 인증서 관리 시스템 운영 - 망분리 - 인증서의 주기적 무결성 점검';

MERGE (n:Metric {id: '인증서_관리_시스템_보안_강화'})
SET     n.name = '인증서 관리 시스템 보안 강화',
    n.name_kr = '인증서 관리 시스템 보안 강화',
    n.domain = 'SE',
    n.definition = 'Password 관리(복잡도 설정, 주기적 변경 등) - 공용 계정 삭제 - 최소 권한의 원칙 적용(불필요 서비스 삭제, 최소한의 관리자 계정 등)';

MERGE (n:Metric {id: '보안_업데이트_체계_관리'})
SET     n.name = '보안 업데이트 체계 관리',
    n.name_kr = '보안 업데이트 체계 관리',
    n.domain = 'SE',
    n.definition = '안전한 무결성 검증 기술 사용 - 보안 업데이트 서버의 IP, URL 변조 확인 - 업데이트 서버 및 클라이언트 상호 인증 적용 - 클라이언트 원격 업데이트 포트 상시 개방 제한';

MERGE (n:Concept {id: '사고대응_체계_마련'})
SET     n.name = '사고대응 체계 마련',
    n.name_kr = '사고대응 체계 마련',
    n.domain = 'SE',
    n.definition = '인증서 폐기절차 마련 - 비상연락망 구축 - 로그 관리';

MERGE (n:Concept {id: '시스템_망_분리'})
SET     n.name = '시스템 망 분리',
    n.name_kr = '시스템 망 분리',
    n.domain = 'SE',
    n.definition = '서명 작업 수행 시스템 망 분리 필요. 모든 포트를 차단';

MERGE (n:Concept {id: '인증서_보관의_안정성'})
SET     n.name = '인증서 보관의 안정성',
    n.name_kr = '인증서 보관의 안정성',
    n.domain = 'SE',
    n.definition = '인증서는 별도의 안전한 매체에 저장 및 패스워드 설정';

MERGE (n:Concept {id: '인증서_관리_시스템'})
SET     n.name = '인증서 관리 시스템',
    n.name_kr = '인증서 관리 시스템',
    n.domain = 'SE',
    n.definition = '인터넷 접속 차단';

MERGE (n:Concept {id: '공용_계정_삭제'})
SET     n.name = '공용 계정 삭제',
    n.name_kr = '공용 계정 삭제',
    n.domain = 'SE',
    n.definition = '관리자가 사용하는 계정은 다른 직원과 공용으로 사용하면 안 됨';

MERGE (n:Concept {id: '최신_패치_적용'})
SET     n.name = '최신 패치 적용',
    n.name_kr = '최신 패치 적용',
    n.domain = 'SE',
    n.definition = '시스템에 설치된 소프트웨어 버전을 최신버전으로 유지';

MERGE (n:Concept {id: '사고대응체계'})
SET     n.name = '사고대응체계',
    n.name_kr = '사고대응체계',
    n.domain = 'SE',
    n.definition = '인증서 폐기 절차 마련';

MERGE (n:Concept {id: '비상연락망_구축'})
SET     n.name = '비상연락망 구축',
    n.name_kr = '비상연락망 구축',
    n.domain = 'SE',
    n.definition = '사고 발생 시 대응 연락망을 구축하여 신속한 대응 가능하도록 함';

MERGE (n:Concept {id: '로그_관리'})
SET     n.name = '로그 관리',
    n.name_kr = '로그 관리',
    n.domain = 'SE',
    n.definition = '서명 작업 시스템 및 인증서 관리 시스템 로그는 6개월 이상 보관';

// --- 관계 ---

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '인증서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: 'pki'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: 'hash_비교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '배포기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Metric {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Metric {id: '인증서_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Metric {id: '인증서_관리_시스템_보안_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Metric {id: '보안_업데이트_체계_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '사고대응_체계_마련'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '시스템_망_분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '인증서_보관의_안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '인증서_관리_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '공용_계정_삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '최신_패치_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '사고대응체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '비상연락망_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Concept {id: '로그_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Document {id: 'SE_160'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'code_signing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pki'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hash_비교'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배포기관'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '사용자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '인증서_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '인증서_관리_시스템_보안_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '보안_업데이트_체계_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고대응_체계_마련'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_망_분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_보관의_안정성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_관리_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공용_계정_삭제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최신_패치_적용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고대응체계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비상연락망_구축'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로그_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_161: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_161'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_162: OTC(One Time Card)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_162'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'one_time_card'})
SET     n.name = 'One Time Card',
    n.name_kr = 'OTC',
    n.domain = 'SE',
    n.aliases = ['One Time Card', 'OTC'];

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'otc'})
SET     n.name = 'OTC',
    n.name_kr = 'OTC',
    n.domain = 'SE',
    n.aliases = ['OTC'];

MERGE (n:Concept {id: '토큰_보안_방식'})
SET     n.name = '토큰 보안 방식',
    n.name_kr = '토큰 보안 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '고정_토큰_방식'})
SET     n.name = '고정 토큰 방식',
    n.name_kr = '고정 토큰 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '삼성페이'})
SET     n.name = '삼성페이',
    n.name_kr = '삼성페이',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'otc'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'one_time_card'})
MERGE (b:Concept {id: '토큰_보안_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'one_time_card'})
MERGE (b:Concept {id: '고정_토큰_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'one_time_card'})
MERGE (b:Concept {id: '삼성페이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'one_time_card'})
MERGE (b:Document {id: 'SE_162'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'one_time_card'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'otc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토큰_보안_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정_토큰_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삼성페이'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_163: 스마트OTP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_163'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '스마트otp'})
SET     n.name = '스마트OTP',
    n.name_kr = '스마트OTP',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'nfc'})
SET     n.name = 'NFC',
    n.name_kr = 'NFC',
    n.domain = 'SE',
    n.aliases = ['NFC'];

MERGE (n:Concept {id: 'ic카드'})
SET     n.name = 'IC카드',
    n.name_kr = 'IC카드',
    n.domain = 'SE';

MERGE (n:Concept {id: '태깅'})
SET     n.name = '태깅',
    n.name_kr = '태깅',
    n.domain = 'SE';

MERGE (n:Concept {id: '모바일app'})
SET     n.name = '모바일App',
    n.name_kr = '모바일App',
    n.domain = 'SE';

MERGE (n:Concept {id: 'otp_생성'})
SET     n.name = 'OTP 생성',
    n.name_kr = 'OTP 생성',
    n.domain = 'SE';

MERGE (n:Concept {id: '추출'})
SET     n.name = '추출',
    n.name_kr = '추출',
    n.domain = 'SE';

MERGE (n:Concept {id: '자체보안우수'})
SET     n.name = '자체보안우수',
    n.name_kr = '자체보안우수',
    n.domain = 'SE';

MERGE (n:Concept {id: 'otp_생성_기술'})
SET     n.name = 'OTP 생성 기술',
    n.name_kr = 'OTP 생성 기술',
    n.domain = 'SE',
    n.definition = 'OTP 생성/추출 알고리즘';

MERGE (n:Concept {id: 'otp_동기화_생성_기술'})
SET     n.name = 'OTP 동기화 생성 기술',
    n.name_kr = 'OTP 동기화 생성 기술',
    n.domain = 'SE',
    n.definition = 'OTP 기기와 인증서버간에 시간 동기화 또는 이벤트 기반 동기화, 또는 조합 동기화 방식을 통한 정보 동기화 방법';

MERGE (n:Concept {id: 'nfc_관련기술'})
SET     n.name = 'NFC 관련기술',
    n.name_kr = 'NFC 관련기술',
    n.domain = 'SE',
    n.definition = 'NFC 통신 기술';

MERGE (n:Concept {id: 'ic형_otp_생성기_탑재_기술'})
SET     n.name = 'IC형 OTP 생성기 탑재 기술',
    n.name_kr = 'IC형 OTP 생성기 탑재 기술',
    n.domain = 'SE',
    n.definition = '배터리 없이 NFC 통신을 이용한 전력 공급에 의해 OTP 생성 알고리즘을 수행하는 IC 카드 형태 컨트롤러 기술';

MERGE (n:Concept {id: '서비스_기술'})
SET     n.name = '서비스 기술',
    n.name_kr = '서비스 기술',
    n.domain = 'SE',
    n.definition = '스마트폰 App과의 연동 기술';

MERGE (n:Concept {id: '일반_otp'})
SET     n.name = '일반 OTP',
    n.name_kr = '일반 OTP',
    n.domain = 'SE';

MERGE (n:Concept {id: '거래연동_otp'})
SET     n.name = '거래연동 OTP',
    n.name_kr = '거래연동 OTP',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트_otp'})
SET     n.name = '스마트 OTP',
    n.name_kr = '스마트 OTP',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'nfc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'ic카드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '태깅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '모바일app'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'otp_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '자체보안우수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'otp_생성_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'otp_동기화_생성_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'nfc_관련기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: 'ic형_otp_생성기_탑재_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '서비스_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '일반_otp'})
MERGE (b:Concept {id: '거래연동_otp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '일반_otp'})
MERGE (b:Concept {id: '스마트_otp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '일반_otp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '거래연동_otp'})
MERGE (b:Concept {id: '스마트_otp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '거래연동_otp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Concept {id: '스마트_otp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Document {id: 'SE_163'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트otp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ic카드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태깅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일app'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'otp_생성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자체보안우수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'otp_생성_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'otp_동기화_생성_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfc_관련기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ic형_otp_생성기_탑재_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반_otp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래연동_otp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_otp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_164: Challenge-Response 방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_164'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'challenge-response_방식'})
SET     n.name = 'Challenge-Response 방식',
    n.name_kr = 'Challenge-Response 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'challenge_response'})
SET     n.name = 'Challenge-Response',
    n.name_kr = 'Challenge-Response',
    n.domain = 'SE',
    n.aliases = ['Challenge-Response'];

MERGE (n:Concept {id: '일회성_인증_추가"'})
SET     n.name = '일회성 인증 추가"',
    n.name_kr = '일회성 인증 추가"',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'challenge_response'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'challenge-response_방식'})
MERGE (b:Concept {id: '일회성_인증_추가"'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'challenge-response_방식'})
MERGE (b:Document {id: 'SE_164'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'challenge-response_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'challenge_response'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일회성_인증_추가"'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_165: PIN 비밀번호
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_165'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pin_비밀번호'})
SET     n.name = 'PIN 비밀번호',
    n.name_kr = 'PIN 비밀번호',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '기타/시사'})
SET     n.name = '기타/시사',
    n.name_kr = '기타/시사',
    n.domain = 'SE';

MERGE (n:Concept {id: '09_간편'})
SET     n.name = '09 간편',
    n.name_kr = '09 간편',
    n.domain = 'SE';

MERGE (n:Concept {id: '사회공학해킹'})
SET     n.name = '사회공학해킹',
    n.name_kr = '사회공학해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: '2factor_인증'})
SET     n.name = '2factor 인증',
    n.name_kr = '2factor 인증',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '기타/시사'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Concept {id: '기타/시사'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Concept {id: '09_간편'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Concept {id: '사회공학해킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Concept {id: '2factor_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Document {id: 'SE_165'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pin_비밀번호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타/시사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '09_간편'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회공학해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2factor_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_166.1: I-PIN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_166.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'i_pin'})
SET     n.name = 'I-PIN',
    n.name_kr = 'I-PIN',
    n.domain = 'SE',
    n.aliases = ['I-PIN'];

MERGE (n:Concept {id: 'authentication'})
SET     n.name = 'Authentication',
    n.name_kr = '인증',
    n.domain = 'SE',
    n.aliases = ['Authentication', '인증'];

// --- 관계 ---

MERGE (a:Concept {id: 'i_pin'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'i_pin'})
MERGE (b:Document {id: 'SE_166.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'i_pin'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_166.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_166.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_167.1: 생체인식기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_167.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '생체인식기술'})
SET     n.name = '생체인식기술',
    n.name_kr = '생체인식기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'far'})
SET     n.name = 'FAR',
    n.name_kr = 'FAR',
    n.domain = 'SE',
    n.aliases = ['FAR'];

MERGE (n:Concept {id: 'frr'})
SET     n.name = 'FRR',
    n.name_kr = 'FRR',
    n.domain = 'SE',
    n.aliases = ['FRR'];

MERGE (n:Concept {id: 'cer'})
SET     n.name = 'CER',
    n.name_kr = 'CER',
    n.domain = 'SE',
    n.aliases = ['CER'];

MERGE (n:Concept {id: 'eer'})
SET     n.name = 'EER',
    n.name_kr = 'EER',
    n.domain = 'SE',
    n.aliases = ['EER'];

MERGE (n:Concept {id: 'university'})
SET     n.name = 'University',
    n.name_kr = '보편성',
    n.domain = 'SE',
    n.definition = '모든 대상자들이 보편적으로 지니고 있어야 함',
    n.aliases = ['University', '보편성'];

MERGE (n:Concept {id: 'uniqueness'})
SET     n.name = 'Uniqueness',
    n.name_kr = '유일성',
    n.domain = 'SE',
    n.definition = '개인별 특징이 확연히 구별되어야 함',
    n.aliases = ['Uniqueness', '유일성'];

MERGE (n:Concept {id: 'permanence'})
SET     n.name = 'Permanence',
    n.name_kr = '영구성',
    n.domain = 'SE',
    n.definition = '발생된 특징은 그 특성을 영속해야 함',
    n.aliases = ['Permanence', '영구성'];

MERGE (n:Concept {id: 'collectability'})
SET     n.name = 'Collectability',
    n.name_kr = '획득성',
    n.domain = 'SE',
    n.definition = '센서로부터 생체 특성정보를 추출, 계측 가능해야 함',
    n.aliases = ['Collectability', '획득성'];

MERGE (n:Concept {id: 'performance'})
SET     n.name = 'Performance',
    n.name_kr = '성능',
    n.domain = 'SE',
    n.definition = '개인 확인 및 인식성이 우수해야 함',
    n.aliases = ['Performance', '성능'];

MERGE (n:Concept {id: 'acceptance'})
SET     n.name = 'Acceptance',
    n.name_kr = '수용성',
    n.domain = 'SE',
    n.definition = '거부감이 없어야 함',
    n.aliases = ['Acceptance', '수용성'];

MERGE (n:Concept {id: '오인식율과_오거부율'})
SET     n.name = '오인식율과 오거부율',
    n.name_kr = '오인식율과 오거부율',
    n.domain = 'SE',
    n.definition = '오인식율(정당한 사용자로 인식)을 최소화 오거부율(정당한 사용자를 미인식)보다 오인식율 최소화';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: '생체인식기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'far'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'frr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'cer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'eer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'university'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'uniqueness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'permanence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'collectability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'performance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: 'acceptance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: '오인식율과_오거부율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Document {id: 'SE_167.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'far'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'frr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cer'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eer'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'university'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uniqueness'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'permanence'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'collectability'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'performance'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'acceptance'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오인식율과_오거부율'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_167.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_167.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_168: FIDO 2.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_168'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'fido_2_0'})
SET     n.name = 'FIDO 2.0',
    n.name_kr = 'FIDO 2.0',
    n.domain = 'SE',
    n.aliases = ['FIDO 2.0'];

MERGE (n:Concept {id: '생체인식기술'})
SET     n.name = '생체인식기술',
    n.name_kr = '생체인식기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'fido'})
SET     n.name = 'FIDO',
    n.name_kr = 'FIDO',
    n.domain = 'SE',
    n.aliases = ['FIDO'];

MERGE (n:Concept {id: 'uaf_u2f'})
SET     n.name = 'UAF /U2F',
    n.name_kr = 'UAF /U2F',
    n.domain = 'SE',
    n.aliases = ['UAF /U2F'];

MERGE (n:Concept {id: 'fido_서버/클라이언트'})
SET     n.name = 'FIDO 서버/클라이언트',
    n.name_kr = 'FIDO 서버/클라이언트',
    n.domain = 'SE';

MERGE (n:Concept {id: 'uaf_프로토콜'})
SET     n.name = 'UAF 프로토콜',
    n.name_kr = 'UAF 프로토콜',
    n.domain = 'SE';

MERGE (n:Concept {id: 'u2f_프로토콜'})
SET     n.name = 'U2F 프로토콜',
    n.name_kr = 'U2F 프로토콜',
    n.domain = 'SE',
    n.definition = 'Universal Second Factor - UAF 방식으로 1차 인증한 뒤 별도로 인증이 가능한 USB 단말기로 2차 인증을 받는 방식';

MERGE (n:Concept {id: 'registration'})
SET     n.name = 'Registration',
    n.name_kr = '1. 등록',
    n.domain = 'SE',
    n.definition = '사용자의 인증토큰과 공개키를 등록하는 과정 ①FIDO 클라이언트가 FIDO 서버에 로그인 시도 ②FIDO 서버는 클라이언트에게 로그인시에 사용 가능한 인증토큰 리스트 보냄 ③사용자화면은 원하는 인증토큰을 선택, 본인인증 수행 후 키 쌍을 생성 서명 후 서버전송 ④FIDO 서버는 사용자가 선택한 인증토큰과 공개키를 등록, 향후 인증/전자서명 검증',
    n.aliases = ['Registration', '1. 등록'];

MERGE (n:Concept {id: 'authentication'})
SET     n.name = 'Authentication',
    n.name_kr = '2. FIDO 인증',
    n.domain = 'SE',
    n.definition = '사용자의 인증토큰과 공개키를 등록하는 과정 ①FIDO 서버는 인증에 필요한 Challenge 값인 난수와 인증토큰을 보내 인증 요청 ②클라이언트에서는 디바이스에서 등록된 인증토큰으로 사용자를 인증 ③비밀키를 이용, 서버에서 보내온 요청 메시지에 대한 응답으로 전자서명을 생성하여 전송 ④서버는 클라이언트가 보내온 전자서명을 등록된 공개키로 검증하여 사용자 인',
    n.aliases = ['Authentication', '2. FIDO 인증'];

MERGE (n:Concept {id: 'vaildation'})
SET     n.name = 'Vaildation',
    n.name_kr = '3. 확인',
    n.domain = 'SE',
    n.aliases = ['Vaildation', '3. 확인'];

MERGE (n:Concept {id: 'fido_1_0'})
SET     n.name = 'FIDO 1.0',
    n.name_kr = 'FIDO 1.0',
    n.domain = 'SE',
    n.aliases = ['FIDO 1.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'fido'})
MERGE (b:Concept {id: '생체인식기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'uaf_u2f'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'fido_서버/클라이언트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'uaf_프로토콜'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'u2f_프로토콜'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'registration'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'vaildation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_1_0'})
MERGE (b:Concept {id: 'fido_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'fido_1_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_1_0'})
MERGE (b:Concept {id: 'fido_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'fido_1_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_1_0'})
MERGE (b:Concept {id: 'fido_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'fido_1_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_1_0'})
MERGE (b:Concept {id: 'fido_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Concept {id: 'fido_1_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Document {id: 'SE_168'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fido_2_0'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체인식기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fido'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uaf_u2f'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fido_서버/클라이언트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uaf_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'u2f_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'registration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vaildation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fido_1_0'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_169: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_169'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_170: 패턴기반 인증(스마트폰)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_170'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '패턴기반_인증'})
SET     n.name = '패턴기반 인증(스마트폰)',
    n.name_kr = '패턴기반 인증(스마트폰)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.aliases = ['AC', '접근제어'];

MERGE (n:Concept {id: 'pattern_recognition'})
SET     n.name = '패턴인식',
    n.name_kr = '패턴인식',
    n.domain = 'SE';

MERGE (n:Concept {id: '처리_단계'})
SET     n.name = '처리 단계',
    n.name_kr = '처리 단계',
    n.domain = 'SE';

MERGE (n:Concept {id: 'deterministic_approach'})
SET     n.name = '결정이론적 방법',
    n.name_kr = '결정이론적 방법',
    n.domain = 'SE';

MERGE (n:Concept {id: '언어이론적_방법'})
SET     n.name = '언어이론적 방법',
    n.name_kr = '언어이론적 방법',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Concept {id: 'pattern_recognition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Concept {id: '처리_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Concept {id: 'deterministic_approach'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Concept {id: '언어이론적_방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Document {id: 'SE_170'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '패턴기반_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pattern_recognition'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deterministic_approach'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언어이론적_방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_171: 비대면실명확인
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_171'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '비대면실명확인'})
SET     n.name = '비대면실명확인',
    n.name_kr = '비대면실명확인',
    n.domain = 'SE';

MERGE (n:Concept {id: '출제_예상'})
SET     n.name = '출제 예상',
    n.name_kr = '출제 예상',
    n.domain = 'SE';

MERGE (n:Concept {id: '비대면_실명확인'})
SET     n.name = '비대면 실명확인',
    n.name_kr = '비대면 실명확인',
    n.domain = 'SE';

MERGE (n:Concept {id: '소지_기반'})
SET     n.name = '소지 기반',
    n.name_kr = '소지 기반',
    n.domain = 'SE',
    n.definition = 'SMS, 음성, e-Mail, OTP토큰, 스마트카드';

MERGE (n:Concept {id: '생체_기반'})
SET     n.name = '생체 기반',
    n.name_kr = '생체 기반',
    n.domain = 'SE',
    n.definition = '지문, 홍채, 망막, 정맥, 손금, 얼굴, 목소리, 필체, 체형, 걸음걸이, 행동';

MERGE (n:Concept {id: '지식_기반'})
SET     n.name = '지식 기반',
    n.name_kr = '지식 기반',
    n.domain = 'SE',
    n.definition = '비밀번호, 이미지, 동작';

MERGE (n:Concept {id: '특징_기반'})
SET     n.name = '특징 기반',
    n.name_kr = '특징 기반',
    n.domain = 'SE',
    n.definition = 'Q&A, 상황정보(기기설정, 위치, 접근기록)';

// --- 관계 ---

MERGE (a:Concept {id: '비대면_실명확인'})
MERGE (b:Concept {id: '출제_예상'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Concept {id: '소지_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Concept {id: '생체_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Concept {id: '지식_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Concept {id: '특징_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Document {id: 'SE_171'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '비대면실명확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제_예상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_실명확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소지_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_172: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_172'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_173.1: 고객 확인(KYC: Know Your Customer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_173.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '고객_확인'})
SET     n.name = '고객 확인(KYC: Know Your Customer)',
    n.name_kr = '고객 확인(KYC: Know Your Customer)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '고객_확인'})
MERGE (b:Document {id: 'SE_173.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '고객_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_173.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_173.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_174: Firewall
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_174'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'firewall'})
SET     n.name = 'Firewall',
    n.name_kr = 'Firewall',
    n.domain = 'SE',
    n.aliases = ['Firewall'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'na'})
SET     n.name = 'NA',
    n.name_kr = 'NA',
    n.domain = 'SE',
    n.aliases = ['NA'];

MERGE (n:Technology {id: 'waf'})
SET     n.name = 'WAF',
    n.name_kr = 'WAF',
    n.domain = 'SE',
    n.aliases = ['WAF'];

MERGE (n:Technology {id: 'ips'})
SET     n.name = 'IPS',
    n.name_kr = '침입방지 시스템',
    n.domain = 'SE',
    n.aliases = ['IPS', '침입방지 시스템'];

// --- 관계 ---

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Concept {id: 'na'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'ips'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Document {id: 'SE_174'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'na'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'waf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_175.1: Web Firewall(웹방화벽)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_175.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'web_firewall'})
SET     n.name = 'Web Firewall',
    n.name_kr = '웹방화벽',
    n.domain = 'SE',
    n.aliases = ['Web Firewall', '웹방화벽'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '필터링'})
SET     n.name = '필터링',
    n.name_kr = '필터링',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안관리'})
SET     n.name = '보안관리',
    n.name_kr = '보안관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '요청검사'})
SET     n.name = '요청검사',
    n.name_kr = '요청검사',
    n.domain = 'SE';

MERGE (n:Concept {id: '컨텐츠보호'})
SET     n.name = '컨텐츠보호',
    n.name_kr = '컨텐츠보호',
    n.domain = 'SE';

MERGE (n:Concept {id: '적응학습'})
SET     n.name = '적응학습',
    n.name_kr = '적응학습',
    n.domain = 'SE';

MERGE (n:Concept {id: '위장'})
SET     n.name = '위장',
    n.name_kr = '위장',
    n.domain = 'SE';

MERGE (n:Concept {id: 'proxy'})
SET     n.name = 'Proxy',
    n.name_kr = 'Proxy',
    n.domain = 'SE',
    n.aliases = ['Proxy'];

MERGE (n:Concept {id: 'reverse_proxy'})
SET     n.name = 'Reverse Proxy',
    n.name_kr = 'Reverse Proxy',
    n.domain = 'SE',
    n.aliases = ['Reverse Proxy'];

MERGE (n:Technology {id: 'full_ssl_inspection'})
SET     n.name = 'Full SSL Inspection',
    n.name_kr = 'Full SSL Inspection',
    n.domain = 'SE',
    n.aliases = ['Full SSL Inspection'];

MERGE (n:Concept {id: '사용자_요청_검사'})
SET     n.name = '사용자 요청 검사',
    n.name_kr = '사용자 요청 검사',
    n.domain = 'SE',
    n.definition = '어플리케이션 접근 제어';

MERGE (n:Threat {id: 'web_dos_제어'})
SET     n.name = 'Web Dos 제어',
    n.name_kr = 'Web Dos 제어',
    n.domain = 'SE',
    n.definition = '과도한 리소스 사용 차단';

MERGE (n:Threat {id: '업로드_파일/요청_형식_검사'})
SET     n.name = '업로드 파일/요청 형식 검사',
    n.name_kr = '업로드 파일/요청 형식 검사',
    n.domain = 'SE',
    n.definition = '바이러스 및 악성 파일 업로드 검사';

MERGE (n:Threat {id: '버퍼오버플로우./스크립트_차단'})
SET     n.name = '버퍼오버플로우./스크립트 차단',
    n.name_kr = '버퍼오버플로우./스크립트 차단',
    n.domain = 'SE',
    n.definition = 'XSS, SQL Injection 등의 웹 공격 차단';

MERGE (n:Concept {id: '컨텐츠_보호'})
SET     n.name = '컨텐츠 보호',
    n.name_kr = '컨텐츠 보호',
    n.domain = 'SE',
    n.definition = '정보 유출 차단';

MERGE (n:Concept {id: '웹_변조_방지'})
SET     n.name = '웹 변조 방지',
    n.name_kr = '웹 변조 방지',
    n.domain = 'SE',
    n.definition = '응답 형식 검사 및 코드 노출 차단 기반 변조 식별';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE',
    n.definition = 'URL 및 서버 위장';

MERGE (n:Technology {id: 'ssl/tls_지원'})
SET     n.name = 'SSL/TLS 지원',
    n.name_kr = 'SSL/TLS 지원',
    n.domain = 'SE',
    n.definition = 'HTTPS 웹 트래픽 암호화 기능 제공';

MERGE (n:Concept {id: '자료분석위치'})
SET     n.name = '자료분석위치',
    n.name_kr = '자료분석위치',
    n.domain = 'SE',
    n.definition = '네트워크 기반';

MERGE (n:Concept {id: '웹서버_기반'})
SET     n.name = '웹서버 기반',
    n.name_kr = '웹서버 기반',
    n.domain = 'SE',
    n.definition = '웹 서버가 제공하는 API 기반으로 구현 -해당 웹서버(IIS/아파치)의 플러그인 형식 탑재';

MERGE (n:Concept {id: '보안정책'})
SET     n.name = '보안정책',
    n.name_kr = '보안정책',
    n.domain = 'SE',
    n.definition = '포지티브 시큐리티 모델';

MERGE (n:Concept {id: '네거티브_시큐리티_모델'})
SET     n.name = '네거티브 시큐리티 모델',
    n.name_kr = '네거티브 시큐리티 모델',
    n.domain = 'SE',
    n.definition = '위험하다는 것만 거부하고 나머지는 모두 허용 -패턴매칭, 입력값 검증, 비정상 침입탐지 기능 구현';

MERGE (n:Concept {id: '설치위치'})
SET     n.name = '설치위치',
    n.name_kr = '설치위치',
    n.domain = 'SE',
    n.definition = '프록시모드';

MERGE (n:Concept {id: '트랜스페어런트_모드'})
SET     n.name = '트랜스페어런트 모드',
    n.name_kr = '트랜스페어런트 모드',
    n.domain = 'SE',
    n.definition = '물리적으로 웹서버 앞에 위치 -장애시 웹 방화벽 제거, 바이패스 기능으로 웹서비스 가능 - 가장 많이 사용되는 구성 형태';

MERGE (n:Concept {id: '라우팅_모드'})
SET     n.name = '라우팅 모드',
    n.name_kr = '라우팅 모드',
    n.domain = 'SE',
    n.definition = '웹 서버 앞에 위치, 서로 다른 네트워크 사이에 구성되어 라우터 역할 -웹 서버 네트워크에서 볼때는 게이트웨어 역할 -물리적 구성은 트랜스페어런트와 동일';

MERGE (n:Concept {id: '방화벽'})
SET     n.name = '방화벽',
    n.name_kr = '방화벽',
    n.domain = 'SE';

MERGE (n:Technology {id: 'waf'})
SET     n.name = 'WAF',
    n.name_kr = 'WAF',
    n.domain = 'SE',
    n.aliases = ['WAF'];

MERGE (n:Concept {id: '웹_애플리케이션_방화벽을_운영할_조직_또는_담당자_지정'})
SET     n.name = '웹 애플리케이션 방화벽을 운영할 조직 또는 담당자 지정',
    n.name_kr = '웹 애플리케이션 방화벽을 운영할 조직 또는 담당자 지정',
    n.domain = 'SE',
    n.definition = '구축 이전에 운영 담당자가 지정되어 이후 설치과정에서 발생하는 모든 이슈에 대해 업체와 함께 협의 필요';

MERGE (n:Concept {id: '네트워크_환경_고려'})
SET     n.name = '네트워크 환경 고려',
    n.name_kr = '네트워크 환경 고려',
    n.domain = 'SE',
    n.definition = '운영 담당자는 회사의 네트워크 운영 환경 및 보호 대상 웹 서버의 위치에 따라서 다양하게 웹 애플리케이션 방화벽을 구성 - 웹 애플리케이션 방화벽은 다음과 같은 형태로 네트워크 상에 구성';

MERGE (n:Concept {id: '보호_대상_웹_서버_선정과_보안_정책_설정'})
SET     n.name = '보호 대상 웹 서버 선정과 보안 정책 설정',
    n.name_kr = '보호 대상 웹 서버 선정과 보안 정책 설정',
    n.domain = 'SE',
    n.definition = '보호 대상 웹 서버를 선정하고 보호 대상 웹 서버의 웹 취약점 확인 - 크게는 조직의 보안정책에 따라서, 또는 보호 대상 웹 서버의 웹 취약점에 따라서 어떤 보안 정책을 설정할 것인지 고려';

MERGE (n:Concept {id: '안정화_기간'})
SET     n.name = '안정화 기간',
    n.name_kr = '안정화 기간',
    n.domain = 'SE',
    n.definition = '보안 정책 수립 후 운영 담당자는 안정화 기간을 고려해야 하며, 운영 담당자는 안정화 기간 동안 오탐을 최대한 수정';

MERGE (n:Concept {id: '장애_시_대응방안'})
SET     n.name = '장애 시 대응방안',
    n.name_kr = '장애 시 대응방안',
    n.domain = 'SE',
    n.definition = '웹 애플리케이션 방화벽은 물리적으로든 논리적으로든 항상 웹 서버 앞단에 위치하여 잠재적인 장애 포인트로 작용 - 운영 담당자는 보안적인 측면과 서비스 측면에서 우선순위를 고려하여 장애 대응 정책을 수립';

MERGE (n:Technology {id: '퍼블릭_클라우드'})
SET     n.name = '퍼블릭 클라우드',
    n.name_kr = '퍼블릭 클라우드',
    n.domain = 'SE',
    n.definition = 'AWS';

MERGE (n:Concept {id: 'google_cloud'})
SET     n.name = 'Google Cloud',
    n.name_kr = 'Google Cloud',
    n.domain = 'SE',
    n.definition = '여러 보안 업체 솔루션(AlterLogic, CloudFlare, ETC)의 보안 솔루션 서비스 제공',
    n.aliases = ['Google Cloud'];

MERGE (n:Technology {id: 'ncloud'})
SET     n.name = 'NCloud',
    n.name_kr = 'NCloud',
    n.domain = 'SE',
    n.definition = '보안 강화 인프라(Secure Zone)을 두어 중요 정보 보관 및 WAF 기능 제공',
    n.aliases = ['NCloud'];

MERGE (n:Concept {id: '프라이빗_클라우드'})
SET     n.name = '프라이빗 클라우드',
    n.name_kr = '프라이빗 클라우드',
    n.domain = 'SE',
    n.definition = '어플라이언스 서버';

MERGE (n:Technology {id: 'waf_솔루션_및_컨설팅'})
SET     n.name = 'WAF 솔루션 및 컨설팅',
    n.name_kr = 'WAF 솔루션 및 컨설팅',
    n.domain = 'SE',
    n.definition = 'CloudFlare, Akamai 등 WAF 솔루션 기반 구축';

// --- 관계 ---

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '필터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '보안관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '요청검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '컨텐츠보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '적응학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '위장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: 'proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: 'reverse_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: 'full_ssl_inspection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '사용자_요청_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Threat {id: 'web_dos_제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Threat {id: '업로드_파일/요청_형식_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Threat {id: '버퍼오버플로우./스크립트_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '컨텐츠_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '웹_변조_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: 'ssl/tls_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '자료분석위치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '웹서버_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '보안정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '네거티브_시큐리티_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '설치위치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '트랜스페어런트_모드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '라우팅_모드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '방화벽'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '방화벽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '웹_애플리케이션_방화벽을_운영할_조직_또는_담당자_지정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '네트워크_환경_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '보호_대상_웹_서버_선정과_보안_정책_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '안정화_기간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '장애_시_대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: '퍼블릭_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: 'google_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: 'ncloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Concept {id: '프라이빗_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Technology {id: 'waf_솔루션_및_컨설팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Document {id: 'SE_175.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_firewall'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요청검사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적응학습'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위장'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'full_ssl_inspection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_요청_검사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'web_dos_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '업로드_파일/요청_형식_검사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '버퍼오버플로우./스크립트_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_변조_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl/tls_지원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료분석위치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹서버_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네거티브_시큐리티_모델'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설치위치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜스페어런트_모드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_모드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방화벽'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'waf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_애플리케이션_방화벽을_운영할_조직_또는_담당자_지정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_환경_고려'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보호_대상_웹_서버_선정과_보안_정책_설정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정화_기간'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애_시_대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '퍼블릭_클라우드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'google_cloud'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ncloud'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이빗_클라우드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'waf_솔루션_및_컨설팅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_176: IDS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_176'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'ids'})
SET     n.name = 'IDS',
    n.name_kr = 'IDS',
    n.domain = 'SE',
    n.aliases = ['IDS'];

MERGE (n:Concept {id: '기업보안_시스템'})
SET     n.name = '기업보안 시스템(기술적보안)',
    n.name_kr = '기업보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '방화벽_침임탐지_시스템'})
SET     n.name = '방화벽 침임탐지 시스템',
    n.name_kr = '방화벽 침임탐지 시스템',
    n.domain = 'SE';

MERGE (n:Concept {id: '오용침입탐지'})
SET     n.name = '오용침입탐지(알려진패턴)',
    n.name_kr = '오용침입탐지(알려진패턴)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Technology {id: 'ids'})
MERGE (b:Concept {id: '기업보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Concept {id: '방화벽_침임탐지_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Concept {id: '오용침입탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Document {id: 'SE_176'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방화벽_침임탐지_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오용침입탐지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_177.1: IPS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_177.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'ips'})
SET     n.name = 'IPS',
    n.name_kr = 'IPS',
    n.domain = 'SE',
    n.aliases = ['IPS'];

MERGE (n:Concept {id: '기업보안_시스템'})
SET     n.name = '기업보안 시스템(기술적보안)',
    n.name_kr = '기업보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '탐지'})
SET     n.name = '탐지',
    n.name_kr = '탐지',
    n.domain = 'SE';

MERGE (n:Concept {id: '차단'})
SET     n.name = '차단',
    n.name_kr = '차단',
    n.domain = 'SE';

MERGE (n:Concept {id: '유형-hips'})
SET     n.name = '유형-HIPS',
    n.name_kr = '유형-HIPS',
    n.domain = 'SE';

MERGE (n:Concept {id: 'nips'})
SET     n.name = 'NIPS',
    n.name_kr = 'NIPS',
    n.domain = 'SE',
    n.aliases = ['NIPS'];

MERGE (n:Technology {id: 'hips'})
SET     n.name = 'HIPS',
    n.name_kr = '호스트 기반 IPS',
    n.domain = 'SE',
    n.aliases = ['HIPS', '호스트 기반 IPS'];

MERGE (n:Technology {id: 'ids'})
SET     n.name = 'IDS',
    n.name_kr = 'IDS',
    n.domain = 'SE',
    n.aliases = ['IDS'];

MERGE (n:Concept {id: 'firewall'})
SET     n.name = 'Firewall',
    n.name_kr = 'Firewall',
    n.domain = 'SE',
    n.aliases = ['Firewall'];

MERGE (n:Concept {id: '특징및기능'})
SET     n.name = '특징및기능',
    n.name_kr = '특징및기능',
    n.domain = 'SE';

MERGE (n:Concept {id: '탐지유형'})
SET     n.name = '탐지유형',
    n.name_kr = '탐지유형',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '기업보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '유형-hips'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'nips'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'hips'})
MERGE (b:Concept {id: 'nips'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'hips'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'nips'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Technology {id: 'ips'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Technology {id: 'ips'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Technology {id: 'ips'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Technology {id: 'ips'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Technology {id: 'ids'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '특징및기능'})
MERGE (b:Concept {id: '탐지유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '특징및기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '탐지유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Document {id: 'SE_177.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형-hips'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nips'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'hips'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징및기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐지유형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_177.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_177.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_177.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_177.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_180: Honey Pot(허니팟)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_180'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'honey_pot'})
SET     n.name = 'Honey Pot',
    n.name_kr = '허니팟',
    n.domain = 'SE',
    n.aliases = ['Honey Pot', '허니팟'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템',
    n.name_kr = '기업 보안 시스템',
    n.domain = 'SE';

MERGE (n:Concept {id: '침입_패턴_분석'})
SET     n.name = '침입 패턴 분석',
    n.name_kr = '침입 패턴 분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '로깅'})
SET     n.name = '로깅',
    n.name_kr = '로깅',
    n.domain = 'SE';

MERGE (n:Concept {id: '(방화벽_내부'})
SET     n.name = '(방화벽 내부',
    n.name_kr = '(방화벽 내부',
    n.domain = 'SE';

MERGE (n:Concept {id: 'honeynet'})
SET     n.name = '허니넷',
    n.name_kr = '허니넷',
    n.domain = 'SE';

MERGE (n:Concept {id: '요구_기술'})
SET     n.name = '요구 기술',
    n.name_kr = '요구 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '주요_역할'})
SET     n.name = '주요 역할',
    n.name_kr = '주요 역할',
    n.domain = 'SE';

MERGE (n:Concept {id: 'gen-ⅰ'})
SET     n.name = 'Gen-Ⅰ',
    n.name_kr = 'Gen-Ⅰ',
    n.domain = 'SE';

MERGE (n:Technology {id: 'gen-ⅱ'})
SET     n.name = 'Gen-Ⅱ',
    n.name_kr = 'Gen-Ⅱ',
    n.domain = 'SE',
    n.definition = '∙ 2002년부터 설계되었으며, 2년 계획으로 연구 허니넷 센서(HoneyNet Sensor)로 Hogwash(호그와쉬)라는 2계층의 IDS 게이트웨이 추가 설치 ∙ IDS 게이트웨이는 Snort를 이용해 공격으로 탐지되는 패킷을 2계층에서 차단 가능 ∙ 라우팅 정보의 변경을 통한 접근 제어를 하지 않으며, 방화벽의 필터링 기능과 IDS의 침입 탐지 기능을';

MERGE (n:Concept {id: 'gen-ⅲ'})
SET     n.name = 'Gen-Ⅲ',
    n.name_kr = 'Gen-Ⅲ',
    n.domain = 'SE',
    n.definition = '∙ 2003년부터 시작되었으며, 2005년 여름에 발표 ∙ 기본 구조 등은 Gen-II와 같음 ∙ Gen-II에서 사용하던 Hogwash 대신 Roo(루)라는 허니월(HoneyWall)을 사용 Roo를 이용하여 데이터를 좀 더 효과적으로 수집하고 분석';

// --- 관계 ---

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '침입_패턴_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '로깅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '(방화벽_내부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: 'honeynet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구_기술'})
MERGE (b:Concept {id: '주요_역할'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '요구_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: '주요_역할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: 'gen-ⅰ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Technology {id: 'gen-ⅱ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Concept {id: 'gen-ⅲ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Document {id: 'SE_180'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'honey_pot'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침입_패턴_분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로깅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(방화벽_내부'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'honeynet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_역할'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gen-ⅰ'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gen-ⅱ'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gen-ⅲ'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_181.1: 사이버디셉션(Cyber Deception)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_181.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_deception'})
SET     n.name = 'Cyber Deception',
    n.name_kr = '사이버디셉션',
    n.domain = 'SE',
    n.aliases = ['Cyber Deception', '사이버디셉션'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템 (기술적 보안)',
    n.name_kr = '기업 보안 시스템 (기술적 보안)',
    n.domain = 'SE';

MERGE (n:Method {id: 'secure_sdlc'})
SET     n.name = 'Secure SDLC',
    n.name_kr = 'Secure SDLC',
    n.domain = 'SE',
    n.aliases = ['Secure SDLC'];

MERGE (n:Concept {id: 'clasp'})
SET     n.name = 'CLASP',
    n.name_kr = 'CLASP',
    n.domain = 'SE',
    n.aliases = ['CLASP'];

MERGE (n:Concept {id: 'ms_sdl'})
SET     n.name = 'MS-SDL',
    n.name_kr = 'MS-SDL',
    n.domain = 'SE',
    n.aliases = ['MS-SDL'];

MERGE (n:Concept {id: 'bsimm'})
SET     n.name = 'BSIMM',
    n.name_kr = 'BSIMM',
    n.domain = 'SE',
    n.aliases = ['BSIMM'];

MERGE (n:Concept {id: 'seven_touch_point'})
SET     n.name = 'Seven-Touch point',
    n.name_kr = 'Seven-Touch point',
    n.domain = 'SE',
    n.aliases = ['Seven-Touch point'];

MERGE (n:Concept {id: 'open_samm'})
SET     n.name = 'Open SAMM',
    n.name_kr = 'Open SAMM',
    n.domain = 'SE',
    n.aliases = ['Open SAMM'];

MERGE (n:Concept {id: 'decoy'})
SET     n.name = 'Decoy',
    n.name_kr = '미끼',
    n.domain = 'SE',
    n.definition = '쿠키',
    n.aliases = ['Decoy', '미끼'];

MERGE (n:Concept {id: 'trap'})
SET     n.name = 'Trap',
    n.name_kr = '함정',
    n.domain = 'SE',
    n.definition = 'EndPoint',
    n.aliases = ['Trap', '함정'];

MERGE (n:Concept {id: 'deception_system'})
SET     n.name = 'Deception System',
    n.name_kr = 'Deception System',
    n.domain = 'SE',
    n.definition = 'NW탐지',
    n.aliases = ['Deception System'];

MERGE (n:Concept {id: '허니팟'})
SET     n.name = '허니팟',
    n.name_kr = '허니팟',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Method {id: 'secure_sdlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'clasp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'ms_sdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'bsimm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'seven_touch_point'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'open_samm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'decoy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'trap'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: 'deception_system'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: '허니팟'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Concept {id: '허니팟'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Document {id: 'SE_181.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_deception'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clasp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ms_sdl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bsimm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'seven_touch_point'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_samm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decoy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trap'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deception_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '허니팟'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_181.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_181.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_182: ESM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_182'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'esm'})
SET     n.name = 'ESM',
    n.name_kr = 'ESM',
    n.domain = 'SE',
    n.aliases = ['ESM'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '통합_보안_관리_시스템'})
SET     n.name = '통합 보안 관리 시스템',
    n.name_kr = '통합 보안 관리 시스템',
    n.domain = 'SE';

MERGE (n:Concept {id: 'core_기술'})
SET     n.name = 'Core 기술',
    n.name_kr = 'Core 기술',
    n.domain = 'SE',
    n.definition = 'ESM Master Server';

MERGE (n:Concept {id: '기존_보안_기술'})
SET     n.name = '기존 보안 기술',
    n.name_kr = '기존 보안 기술',
    n.domain = 'SE',
    n.definition = 'Firewall';

MERGE (n:Concept {id: '대응'})
SET     n.name = '대응',
    n.name_kr = '대응',
    n.domain = 'SE',
    n.definition = '대응 정책 관리';

// --- 관계 ---

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Concept {id: '통합_보안_관리_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Concept {id: 'core_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Concept {id: '기존_보안_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Concept {id: '대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Document {id: 'SE_182'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합_보안_관리_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_보안_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_183: SIEM(Security Information Event Management)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_183'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'security_information_event_management'})
SET     n.name = 'Security Information Event Management',
    n.name_kr = 'SIEM',
    n.domain = 'SE',
    n.aliases = ['Security Information Event Management', 'SIEM'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템 (기술적 보안)',
    n.name_kr = '기업 보안 시스템 (기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '빅데이터_기반'})
SET     n.name = '빅데이터 기반',
    n.name_kr = '빅데이터 기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '이벤트기반'})
SET     n.name = '이벤트기반',
    n.name_kr = '이벤트기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '예측분석'})
SET     n.name = '예측분석',
    n.name_kr = '예측분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '상관분석'})
SET     n.name = '상관분석',
    n.name_kr = '상관분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '포렌식'})
SET     n.name = '포렌식',
    n.name_kr = '포렌식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'esm'})
SET     n.name = 'ESM',
    n.name_kr = 'ESM',
    n.domain = 'SE',
    n.aliases = ['ESM'];

MERGE (n:Concept {id: 'soar'})
SET     n.name = 'SOAR',
    n.name_kr = 'SOAR',
    n.domain = 'SE',
    n.aliases = ['SOAR'];

MERGE (n:Technology {id: 'input'})
SET     n.name = 'Input',
    n.name_kr = 'Input',
    n.domain = 'SE',
    n.definition = 'EDR',
    n.aliases = ['Input'];

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'SE',
    n.definition = '인터넷 연결과 온라인 개인 정보 보호 서비스인 가상 사설망',
    n.aliases = ['VPN'];

MERGE (n:Concept {id: 'threat_intelligence'})
SET     n.name = 'Threat Intelligence',
    n.name_kr = 'Threat Intelligence',
    n.domain = 'SE',
    n.definition = '위협 발생 여부 지능화 대응 솔루션, 시스템',
    n.aliases = ['Threat Intelligence'];

MERGE (n:Concept {id: 'middleware'})
SET     n.name = 'Middleware',
    n.name_kr = 'Middleware',
    n.domain = 'SE',
    n.definition = 'Indexing',
    n.aliases = ['Middleware'];

MERGE (n:Concept {id: 'correlation'})
SET     n.name = 'Correlation',
    n.name_kr = 'Correlation',
    n.domain = 'SE',
    n.definition = '기존에 정의되어 있는 룰에 따라 상관 분석 통한 위협 탐지',
    n.aliases = ['Correlation'];

MERGE (n:Concept {id: 'advanced_analytics'})
SET     n.name = 'Advanced Analytics',
    n.name_kr = 'Advanced Analytics',
    n.domain = 'SE',
    n.definition = '단순 네트워크 트래픽 분석에 AI/ML 등을 활용한 고급 분석',
    n.aliases = ['Advanced Analytics'];

MERGE (n:Concept {id: 'prioritization'})
SET     n.name = 'Prioritization',
    n.name_kr = 'Prioritization',
    n.domain = 'SE',
    n.definition = '위협 요소에 대한 우선 순위를 지정하여 대응 효율화 달성',
    n.aliases = ['Prioritization'];

MERGE (n:Concept {id: 'output'})
SET     n.name = 'Output',
    n.name_kr = 'Output',
    n.domain = 'SE',
    n.definition = 'Reporting',
    n.aliases = ['Output'];

MERGE (n:Concept {id: 'search'})
SET     n.name = 'Search',
    n.name_kr = 'Search',
    n.domain = 'SE',
    n.definition = '필요 요소에 대한 Index, Category 기반 신속 검색 기능 제공',
    n.aliases = ['Search'];

MERGE (n:Concept {id: 'alert'})
SET     n.name = 'Alert',
    n.name_kr = 'Alert',
    n.domain = 'SE',
    n.definition = '특정 이벤트가 발생하는 경우 SMS, 경고음 등을 통한 알림',
    n.aliases = ['Alert'];

MERGE (n:Concept {id: 'visualization'})
SET     n.name = 'Visualization',
    n.name_kr = 'Visualization',
    n.domain = 'SE',
    n.definition = 'Input, Middleware, Output에서 발생하는 모든 정보 가시화',
    n.aliases = ['Visualization'];

MERGE (n:Concept {id: '준비단계'})
SET     n.name = '준비단계',
    n.name_kr = '준비단계',
    n.domain = 'SE',
    n.definition = '대상위협 정의';

MERGE (n:Concept {id: '탐지방법_정의'})
SET     n.name = '탐지방법 정의',
    n.name_kr = '탐지방법 정의',
    n.domain = 'SE',
    n.definition = '보안 장비들의 데이터 필드를 확인하고 분석하여 시나리오를 생성';

MERGE (n:Concept {id: '적용패턴_수립'})
SET     n.name = '적용패턴 수립',
    n.name_kr = '적용패턴 수립',
    n.domain = 'SE',
    n.definition = '시나리오 정의서 작성';

MERGE (n:Concept {id: '적용단계'})
SET     n.name = '적용단계',
    n.name_kr = '적용단계',
    n.domain = 'SE',
    n.definition = '관제 시스템 적용';

MERGE (n:Concept {id: '가상공격_수행_및_탐지확인'})
SET     n.name = '가상공격 수행 및 탐지확인',
    n.name_kr = '가상공격 수행 및 탐지확인',
    n.domain = 'SE',
    n.definition = '시나리오에 해당되는 데이터 필드에 임의 값을 넣어 룰이 발생하는지 확인(시나리오의 이벤트 발생 검증)';

MERGE (n:Concept {id: '검증단계'})
SET     n.name = '검증단계',
    n.name_kr = '검증단계',
    n.domain = 'SE',
    n.definition = '유효성 재검증';

MERGE (n:Concept {id: '정책검증'})
SET     n.name = '정책검증',
    n.name_kr = '정책검증',
    n.domain = 'SE',
    n.definition = '내부 세미나 등을 통해 정책에 대한 검증 수행';

MERGE (n:Technology {id: 'siem'})
SET     n.name = 'SIEM',
    n.name_kr = 'SIEM',
    n.domain = 'SE',
    n.aliases = ['SIEM'];

// --- 관계 ---

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '빅데이터_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '이벤트기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '예측분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '상관분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '포렌식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'esm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'soar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Technology {id: 'input'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'threat_intelligence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'middleware'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'correlation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'advanced_analytics'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'prioritization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'output'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'search'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'alert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'visualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '준비단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '탐지방법_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '적용패턴_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '적용단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '가상공격_수행_및_탐지확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '검증단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: '정책검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'siem'})
MERGE (b:Concept {id: 'esm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Technology {id: 'siem'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Concept {id: 'esm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Document {id: 'SE_183'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'security_information_event_management'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이벤트기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예측분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상관분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포렌식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'esm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soar'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'input'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'threat_intelligence'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'middleware'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correlation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'advanced_analytics'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prioritization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'output'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'search'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alert'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'visualization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준비단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐지방법_정의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용패턴_수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상공격_수행_및_탐지확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검증단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'siem'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_184: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_184'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_185: SDP(Software-Defined Perimeter)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_185'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'software_defined_perimeter'})
SET     n.name = 'Software-Defined Perimeter',
    n.name_kr = 'SDP',
    n.domain = 'SE',
    n.aliases = ['Software-Defined Perimeter', 'SDP'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적보안)',
    n.name_kr = '기업 보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '선_인증'})
SET     n.name = '선 인증',
    n.name_kr = '선 인증',
    n.domain = 'SE';

MERGE (n:Concept {id: '후_연결'})
SET     n.name = '후 연결',
    n.name_kr = '후 연결',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sdp_controller'})
SET     n.name = 'SDP Controller',
    n.name_kr = 'SDP Controller',
    n.domain = 'SE',
    n.aliases = ['SDP Controller'];

MERGE (n:Concept {id: 'sdp_agent'})
SET     n.name = 'SDP Agent',
    n.name_kr = 'SDP Agent',
    n.domain = 'SE',
    n.aliases = ['SDP Agent'];

MERGE (n:Concept {id: 'sdp_gateway'})
SET     n.name = 'SDP Gateway',
    n.name_kr = 'SDP Gateway',
    n.domain = 'SE',
    n.aliases = ['SDP Gateway'];

MERGE (n:Concept {id: '신원중심'})
SET     n.name = '신원중심',
    n.name_kr = '신원중심',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sdp'})
SET     n.name = 'SDP',
    n.name_kr = 'SDP',
    n.domain = 'SE',
    n.aliases = ['SDP'];

MERGE (n:Technology {id: 'site_to_site_vpn'})
SET     n.name = 'Site to Site VPN',
    n.name_kr = 'Site to Site VPN',
    n.domain = 'SE',
    n.aliases = ['Site to Site VPN'];

MERGE (n:Technology {id: 'remote_access_vpn'})
SET     n.name = 'Remote Access VPN',
    n.name_kr = 'Remote Access VPN',
    n.domain = 'SE',
    n.aliases = ['Remote Access VPN'];

// --- 관계 ---

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: '선_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: '후_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: 'sdp_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: 'sdp_agent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: 'sdp_gateway'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: '신원중심'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sdp'})
MERGE (b:Technology {id: 'site_to_site_vpn'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sdp'})
MERGE (b:Technology {id: 'remote_access_vpn'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Concept {id: 'sdp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'site_to_site_vpn'})
MERGE (b:Technology {id: 'remote_access_vpn'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Technology {id: 'site_to_site_vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Technology {id: 'remote_access_vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Document {id: 'SE_185'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'software_defined_perimeter'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후_연결'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp_controller'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp_agent'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp_gateway'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신원중심'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'site_to_site_vpn'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'remote_access_vpn'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_186: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_186'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_187: ITS(Intrusion Tolerance System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_187'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'intrusion_tolerance_system'})
SET     n.name = 'Intrusion Tolerance System',
    n.name_kr = 'ITS',
    n.domain = 'SE',
    n.aliases = ['Intrusion Tolerance System', 'ITS'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'its'})
SET     n.name = 'ITS',
    n.name_kr = 'ITS',
    n.domain = 'SE',
    n.aliases = ['ITS'];

// --- 관계 ---

MERGE (a:Concept {id: 'its'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'intrusion_tolerance_system'})
MERGE (b:Document {id: 'SE_187'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'intrusion_tolerance_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'its'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_188: DLP(Data Loss Prevention)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_188'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'data_loss_prevention'})
SET     n.name = 'Data Loss Prevention',
    n.name_kr = 'DLP',
    n.domain = 'SE',
    n.aliases = ['Data Loss Prevention', 'DLP'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Technology {id: 'dlp'})
SET     n.name = 'DLP',
    n.name_kr = 'DLP',
    n.domain = 'SE',
    n.aliases = ['DLP'];

MERGE (n:Concept {id: '데이터_분류_및_흐름_감시'})
SET     n.name = '데이터 분류 및 흐름 감시',
    n.name_kr = '데이터 분류 및 흐름 감시',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터센터'})
SET     n.name = '데이터센터',
    n.name_kr = '데이터센터',
    n.domain = 'SE';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'SE';

MERGE (n:Concept {id: '엔드포인트'})
SET     n.name = '엔드포인트',
    n.name_kr = '엔드포인트',
    n.domain = 'SE';

MERGE (n:Technology {id: 'dlp_관리자'})
SET     n.name = 'DLP 관리자',
    n.name_kr = 'DLP 관리자',
    n.domain = 'SE',
    n.definition = '정책 관리';

MERGE (n:Concept {id: '시스템_관리'})
SET     n.name = '시스템 관리',
    n.name_kr = '시스템 관리',
    n.domain = 'SE',
    n.definition = '백엔드 및 핵심 기업정보 시스템 접근 사용자 권한 관리';

MERGE (n:Concept {id: '상황_워크플로'})
SET     n.name = '상황 워크플로',
    n.name_kr = '상황 워크플로',
    n.domain = 'SE',
    n.definition = '모든 포인트별 접근제어 및 워크플로우를 통한 프로세스 관리';

MERGE (n:Concept {id: '보고_및_대시보드'})
SET     n.name = '보고 및 대시보드',
    n.name_kr = '보고 및 대시보드',
    n.domain = 'SE',
    n.definition = '내/외부 유출 시도의 빈도수 및 심각도 체크 및 보고';

MERGE (n:Technology {id: 'dlp_데이터_센터'})
SET     n.name = 'DLP 데이터 센터',
    n.name_kr = 'DLP 데이터 센터',
    n.domain = 'SE',
    n.definition = '민감데이터 탐색';

MERGE (n:Concept {id: '민감데이터_통제'})
SET     n.name = '민감데이터 통제',
    n.name_kr = '민감데이터 통제',
    n.domain = 'SE',
    n.definition = '데이터의 중요도에 따라 단계별 접근 통제';

MERGE (n:Technology {id: 'dlp_네트워크'})
SET     n.name = 'DLP 네트워크',
    n.name_kr = 'DLP 네트워크',
    n.domain = 'SE',
    n.definition = '모니터링';

MERGE (n:Concept {id: '데이터_전송_통제'})
SET     n.name = '데이터 전송 통제',
    n.name_kr = '데이터 전송 통제',
    n.domain = 'SE',
    n.definition = '외부망의 접근 및 파일유출 시도를 통제';

MERGE (n:Technology {id: 'dlp_엔드포인트'})
SET     n.name = 'DLP 엔드포인트',
    n.name_kr = 'DLP 엔드포인트',
    n.domain = 'SE',
    n.definition = '사용자 활동 감시';

MERGE (n:Concept {id: '데이터_암호화'})
SET     n.name = '데이터 암호화',
    n.name_kr = '데이터 암호화',
    n.domain = 'SE',
    n.definition = 'DRM 모듈 탑재, 모바일/데스크탑 Device에 강제 적용';

MERGE (n:Concept {id: 'rbac,_mac,_dac'})
SET     n.name = '접근 제어',
    n.name_kr = '접근 제어',
    n.domain = 'SE',
    n.definition = 'RBAC';

MERGE (n:Concept {id: 'xacml'})
SET     n.name = 'XACML',
    n.name_kr = 'XACML',
    n.domain = 'SE',
    n.definition = '공유된 자원 및 시스템에 대한 사용자의 접근권한 명시',
    n.aliases = ['XACML'];

MERGE (n:Technology {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = 'AES';

MERGE (n:Technology {id: 'rsa'})
SET     n.name = 'RSA',
    n.name_kr = 'RSA',
    n.domain = 'SE',
    n.definition = '소인수분해 이용, 1024/2048 키 길이 적용, 공개키 암호화 표준',
    n.aliases = ['RSA'];

MERGE (n:Concept {id: '필터링'})
SET     n.name = '필터링',
    n.name_kr = '필터링',
    n.domain = 'SE',
    n.definition = '트래픽 제어';

MERGE (n:Concept {id: 'pdf,_doc,_xls'})
SET     n.name = '컨텐츠 제어',
    n.name_kr = '컨텐츠 제어',
    n.domain = 'SE',
    n.definition = '여러 가지 경로로 외부에 송신되는 정보에 대해서 자동 검사, 발송 여부를 판단하여 수행';

MERGE (n:Concept {id: '활동감시'})
SET     n.name = '활동감시',
    n.name_kr = '활동감시',
    n.domain = 'SE',
    n.definition = '사전 관리';

MERGE (n:Concept {id: '사후_관리'})
SET     n.name = '사후 관리',
    n.name_kr = '사후 관리',
    n.domain = 'SE',
    n.definition = '외부에 송신되는 정보를 아카이빙 기반으로 모두 로깅';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Technology {id: 'dlp'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '데이터_분류_및_흐름_감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '데이터센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '엔드포인트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: 'dlp_관리자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '시스템_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '상황_워크플로'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '보고_및_대시보드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: 'dlp_데이터_센터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '민감데이터_통제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: 'dlp_네트워크'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '데이터_전송_통제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: 'dlp_엔드포인트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '데이터_암호화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: 'rbac,_mac,_dac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: 'xacml'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: '암호화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '필터링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: 'pdf,_doc,_xls'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '활동감시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '사후_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Document {id: 'SE_188'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'data_loss_prevention'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분류_및_흐름_감시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터센터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔드포인트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp_관리자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황_워크플로'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보고_및_대시보드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp_데이터_센터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민감데이터_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp_네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_전송_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp_엔드포인트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rbac,_mac,_dac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xacml'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdf,_doc,_xls'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동감시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사후_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_189.1: CDR(Content Disarm & Reconstruction)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_189.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cdr'})
SET     n.name = 'CDR',
    n.name_kr = 'Content Disarm & Reconstruction',
    n.domain = 'SE',
    n.aliases = ['CDR', 'Content Disarm & Reconstruction'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적보안)',
    n.name_kr = '기업 보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '클린_콘텐츠'})
SET     n.name = '클린 콘텐츠',
    n.name_kr = '클린 콘텐츠',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터_살균'})
SET     n.name = '데이터 살균',
    n.name_kr = '데이터 살균',
    n.domain = 'SE';

MERGE (n:Concept {id: '위협추출'})
SET     n.name = '위협추출',
    n.name_kr = '위협추출',
    n.domain = 'SE';

MERGE (n:Concept {id: '재구성'})
SET     n.name = '재구성',
    n.name_kr = '재구성',
    n.domain = 'SE';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

MERGE (n:Concept {id: '매체_제어'})
SET     n.name = '매체 제어',
    n.name_kr = '매체 제어',
    n.domain = 'SE',
    n.definition = '로컬 저장 금지';

MERGE (n:Concept {id: 'usb_및_외장하드_장치_제어'})
SET     n.name = 'USB 및 외장하드 장치 제어',
    n.name_kr = 'USB 및 외장하드 장치 제어',
    n.domain = 'SE',
    n.definition = '외부 HW 매체를 통한 정보 유출 금지';

MERGE (n:Concept {id: '메일/_메신저_파일첨부_제어'})
SET     n.name = '메일/ 메신저 파일첨부 제어',
    n.name_kr = '메일/ 메신저 파일첨부 제어',
    n.domain = 'SE',
    n.definition = '미결재 파일 반출 금지, 문서 보안';

MERGE (n:Concept {id: '사용자_기능'})
SET     n.name = '사용자 기능',
    n.name_kr = '사용자 기능',
    n.domain = 'SE',
    n.definition = '윈도 탐색기 기반 UI';

MERGE (n:Concept {id: '개인함/공유함'})
SET     n.name = '개인함/공유함',
    n.name_kr = '개인함/공유함',
    n.domain = 'SE',
    n.definition = '개인 파일 관리 및 공유 폴더 구분 제공';

MERGE (n:Concept {id: '파일_로그_조회'})
SET     n.name = '파일 로그 조회',
    n.name_kr = '파일 로그 조회',
    n.domain = 'SE',
    n.definition = '개인 파일에 대한 이력조회 및 형상관리';

MERGE (n:Concept {id: '결재_기능'})
SET     n.name = '결재 기능',
    n.name_kr = '결재 기능',
    n.domain = 'SE',
    n.definition = '문서 반출을 위한 결재 기능, 워크 플로우 지원';

MERGE (n:Concept {id: '로컬_보안_폴더'})
SET     n.name = '로컬 보안 폴더',
    n.name_kr = '로컬 보안 폴더',
    n.domain = 'SE',
    n.definition = 'CAD 및 대용량 파일 관리를 위한 영역 제공';

MERGE (n:Concept {id: '오프라인_모드'})
SET     n.name = '오프라인 모드',
    n.name_kr = '오프라인 모드',
    n.domain = 'SE',
    n.definition = '네트워크 단절 시 파일 생성 기능 및 업로드';

MERGE (n:Concept {id: '관리자_기능'})
SET     n.name = '관리자 기능',
    n.name_kr = '관리자 기능',
    n.domain = 'SE',
    n.definition = '파일 관리';

MERGE (n:Concept {id: '사용자_관리'})
SET     n.name = '사용자 관리',
    n.name_kr = '사용자 관리',
    n.domain = 'SE',
    n.definition = '조직도 연동을 통한 유연한 사용자 관리, 권한 체크';

MERGE (n:Concept {id: '중간관리자_설정'})
SET     n.name = '중간관리자 설정',
    n.name_kr = '중간관리자 설정',
    n.domain = 'SE',
    n.definition = '관리기능 별 관리 권한 분할, 기능별 접근 제어';

MERGE (n:Concept {id: '보안_기능'})
SET     n.name = '보안 기능',
    n.name_kr = '보안 기능',
    n.domain = 'SE',
    n.definition = '문서 필터';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '저장되는 파일 암호화 및 통신 구간 암호화';

MERGE (n:Concept {id: '원격접속_및_출력물_제어'})
SET     n.name = '원격접속 및 출력물 제어',
    n.name_kr = '원격접속 및 출력물 제어',
    n.domain = 'SE',
    n.definition = 'PC 원격 차단 및 출력물 (워터마크 등) 보안';

MERGE (n:Concept {id: '편의_기능'})
SET     n.name = '편의 기능',
    n.name_kr = '편의 기능',
    n.domain = 'SE',
    n.definition = '검색기능';

MERGE (n:Concept {id: '태그_/_메모_기능'})
SET     n.name = '태그 / 메모 기능',
    n.name_kr = '태그 / 메모 기능',
    n.domain = 'SE',
    n.definition = '문서 속성에 태그 / 메모 Flag';

// --- 관계 ---

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '클린_콘텐츠'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '데이터_살균'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '위협추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '재구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '매체_제어'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: 'usb_및_외장하드_장치_제어'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '메일/_메신저_파일첨부_제어'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '사용자_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '개인함/공유함'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '파일_로그_조회'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '결재_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '로컬_보안_폴더'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '오프라인_모드'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '관리자_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '사용자_관리'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '중간관리자_설정'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '보안_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '원격접속_및_출력물_제어'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '편의_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Concept {id: '태그_/_메모_기능'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Document {id: 'SE_189.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cdr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클린_콘텐츠'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_살균'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위협추출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재구성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매체_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_및_외장하드_장치_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메일/_메신저_파일첨부_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인함/공유함'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파일_로그_조회'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결재_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로컬_보안_폴더'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오프라인_모드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중간관리자_설정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격접속_및_출력물_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편의_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태그_/_메모_기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_189.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_189.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_189.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_189.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_190.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_190.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_190.2: FDS(Fraud Dection System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_190.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'fraud_dection_system'})
SET     n.name = 'Fraud Dection System',
    n.name_kr = 'FDS',
    n.domain = 'SE',
    n.aliases = ['Fraud Dection System', 'FDS'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적 보안)',
    n.name_kr = '기업 보안 시스템(기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'fds'})
SET     n.name = 'FDS',
    n.name_kr = 'FDS',
    n.domain = 'SE',
    n.aliases = ['FDS'];

MERGE (n:Concept {id: '수집/탐지분석/대응/모니터링_감시'})
SET     n.name = '수집/탐지분석/대응/모니터링 감시',
    n.name_kr = '수집/탐지분석/대응/모니터링 감시',
    n.domain = 'SE';

MERGE (n:Concept {id: '오용/이상탐지'})
SET     n.name = '오용/이상탐지',
    n.name_kr = '오용/이상탐지',
    n.domain = 'SE';

MERGE (n:Concept {id: '패턴/상태전이/통계/데이터마이닝모델'})
SET     n.name = '패턴/상태전이/통계/데이터마이닝모델',
    n.name_kr = '패턴/상태전이/통계/데이터마이닝모델',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보수집'})
SET     n.name = '정보수집',
    n.name_kr = '정보수집',
    n.domain = 'SE',
    n.definition = '이용자 정보';

MERGE (n:Concept {id: '분석_및_탐지'})
SET     n.name = '분석 및 탐지',
    n.name_kr = '분석 및 탐지',
    n.domain = 'SE',
    n.definition = '오용 탐지';

MERGE (n:Concept {id: '대응'})
SET     n.name = '대응',
    n.name_kr = '대응',
    n.domain = 'SE',
    n.definition = '거래차단';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'SE',
    n.definition = '모니터링';

MERGE (n:Concept {id: '정책적'})
SET     n.name = '정책적',
    n.name_kr = '정책적',
    n.domain = 'SE',
    n.definition = '가상자산 제도화 추진';

MERGE (n:Concept {id: '경제적'})
SET     n.name = '경제적',
    n.name_kr = '경제적',
    n.domain = 'SE',
    n.definition = '가상자산 피해 예방';

MERGE (n:Concept {id: '사회적'})
SET     n.name = '사회적',
    n.name_kr = '사회적',
    n.domain = 'SE',
    n.definition = '건전한 금융질서 확립';

MERGE (n:Concept {id: '기술적'})
SET     n.name = '기술적',
    n.name_kr = '기술적',
    n.domain = 'SE',
    n.definition = '거래소 보안 강화';

// --- 관계 ---

MERGE (a:Concept {id: 'fds'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '수집/탐지분석/대응/모니터링_감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '오용/이상탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '패턴/상태전이/통계/데이터마이닝모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '정보수집'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '분석_및_탐지'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '대응'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '정책적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '경제적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '사회적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Concept {id: '기술적'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Document {id: 'SE_190.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fraud_dection_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fds'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집/탐지분석/대응/모니터링_감시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오용/이상탐지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패턴/상태전이/통계/데이터마이닝모델'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보수집'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_및_탐지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경제적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_191: CARTA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_191'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'carta'})
SET     n.name = 'CARTA',
    n.name_kr = 'CARTA',
    n.domain = 'SE',
    n.aliases = ['CARTA'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적보안)',
    n.name_kr = '기업 보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '데브시크옵스'})
SET     n.name = '데브시크옵스',
    n.name_kr = '데브시크옵스',
    n.domain = 'SE';

MERGE (n:Concept {id: '지속적'})
SET     n.name = '지속적',
    n.name_kr = '지속적',
    n.domain = 'SE';

MERGE (n:Concept {id: '적응형'})
SET     n.name = '적응형',
    n.name_kr = '적응형',
    n.domain = 'SE';

MERGE (n:Concept {id: '위험'})
SET     n.name = '위험',
    n.name_kr = '위험',
    n.domain = 'SE';

MERGE (n:Concept {id: '신뢰'})
SET     n.name = '신뢰',
    n.name_kr = '신뢰',
    n.domain = 'SE';

MERGE (n:Concept {id: '평가'})
SET     n.name = '평가',
    n.name_kr = '평가',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '데브시크옵스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '지속적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '적응형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '위험'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '신뢰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Concept {id: '평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Document {id: 'SE_191'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'carta'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데브시크옵스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적응형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_192: EDR(Endpoint Detection and Response)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_192'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'endpoint_detection_and_response'})
SET     n.name = 'Endpoint Detection and Response',
    n.name_kr = 'EDR',
    n.domain = 'SE',
    n.aliases = ['Endpoint Detection and Response', 'EDR'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템 (기술적 보안)',
    n.name_kr = '기업 보안 시스템 (기술적 보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'predict'})
SET     n.name = '예측',
    n.name_kr = '예측',
    n.domain = 'SE';

MERGE (n:Concept {id: 'prevent'})
SET     n.name = '예방',
    n.name_kr = '예방',
    n.domain = 'SE';

MERGE (n:Concept {id: 'detect'})
SET     n.name = '탐지',
    n.name_kr = '탐지',
    n.domain = 'SE';

MERGE (n:Concept {id: 'response'})
SET     n.name = '대응',
    n.name_kr = '대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ioc'})
SET     n.name = 'IOC',
    n.name_kr = 'IOC',
    n.domain = 'SE',
    n.aliases = ['IOC'];

MERGE (n:Concept {id: 'anticipate_threats'})
SET     n.name = 'Anticipate Threats',
    n.name_kr = '위협 예측',
    n.domain = 'SE',
    n.definition = '네트워크, 엔드포인트등 제어지점 전반 침투상관관계 분석 - 엔드포인트 활동 캡쳐, 재연 및 지속적 모니터링',
    n.aliases = ['Anticipate Threats', '위협 예측'];

MERGE (n:Concept {id: 'risk_assessment'})
SET     n.name = 'Risk Assessment',
    n.name_kr = '위험 평가',
    n.domain = 'SE',
    n.definition = '머신러닝 및 행위분석 적용하여 활동 탐지 및 규명 - 침해사고 우선순위 지정',
    n.aliases = ['Risk Assessment', '위험 평가'];

MERGE (n:Concept {id: 'isolate_system'})
SET     n.name = 'Isolate System',
    n.name_kr = '시스템 격리',
    n.domain = 'SE',
    n.definition = '감염 가능성 있는 엔드포인트 차단 및 격리 - 공격받은 엔드포인트내 악성파일 및 관련아티팩트삭제',
    n.aliases = ['Isolate System', '시스템 격리'];

MERGE (n:Concept {id: 'prevent_attacks'})
SET     n.name = 'Prevent Attacks',
    n.name_kr = '공격 방지',
    n.domain = 'SE',
    n.definition = '비정상적 사용자, 메모리, 네트워크 패턴탐지 - FlowChart, DashBoard등을 이용한 공격 경로 가시화',
    n.aliases = ['Prevent Attacks', '공격 방지'];

MERGE (n:Concept {id: 'contain_incidents'})
SET     n.name = 'Contain Incidents',
    n.name_kr = '사건 포함',
    n.domain = 'SE',
    n.definition = '공격받은 엔드포인트에 악성파일 및 관련아티팩트 삭제 - 수집 분석된 이벤트 정보 저장 및 인덱싱 수행',
    n.aliases = ['Contain Incidents', '사건 포함'];

MERGE (n:Concept {id: '자동화_침해사고_대응'})
SET     n.name = '자동화 침해사고 대응',
    n.name_kr = '자동화 침해사고 대응',
    n.domain = 'SE',
    n.definition = '엔드포인트 가시성 확보 - 자동화된 방식으로 보안위협을 추적하며 침해 사고에 대응';

// --- 관계 ---

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'predict'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'prevent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'detect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'response'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'ioc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'anticipate_threats'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'risk_assessment'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'isolate_system'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'prevent_attacks'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: 'contain_incidents'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Concept {id: '자동화_침해사고_대응'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Document {id: 'SE_192'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'endpoint_detection_and_response'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'predict'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prevent'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'detect'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'response'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ioc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anticipate_threats'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risk_assessment'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isolate_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prevent_attacks'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'contain_incidents'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화_침해사고_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_193: 제로 트러스트(Zero-Trust)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_193'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'zero_trust'})
SET     n.name = 'Zero-Trust',
    n.name_kr = '제로 트러스트',
    n.domain = 'SE',
    n.aliases = ['Zero-Trust', '제로 트러스트'];

MERGE (n:Concept {id: '기업_보안_시스템'})
SET     n.name = '기업 보안 시스템(기술적보안)',
    n.name_kr = '기업 보안 시스템(기술적보안)',
    n.domain = 'SE';

MERGE (n:Concept {id: '무신뢰_기반'})
SET     n.name = '무신뢰 기반',
    n.name_kr = '무신뢰 기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '자산/데이터_식별_단위'})
SET     n.name = '자산/데이터 식별 단위',
    n.name_kr = '자산/데이터 식별 단위',
    n.domain = 'SE';

MERGE (n:Technology {id: 'waf'})
SET     n.name = 'WAF',
    n.name_kr = 'WAF',
    n.domain = 'SE',
    n.aliases = ['WAF'];

MERGE (n:Concept {id: 'orchestration'})
SET     n.name = 'Orchestration',
    n.name_kr = 'Orchestration',
    n.domain = 'SE',
    n.aliases = ['Orchestration'];

MERGE (n:Concept {id: 'secure_sso'})
SET     n.name = 'Secure SSO',
    n.name_kr = 'Secure SSO',
    n.domain = 'SE',
    n.aliases = ['Secure SSO'];

MERGE (n:Concept {id: 'mfa'})
SET     n.name = 'MFA',
    n.name_kr = 'MFA',
    n.domain = 'SE',
    n.aliases = ['MFA'];

MERGE (n:Technology {id: '보안강도'})
SET     n.name = '보안강도',
    n.name_kr = '보안강도',
    n.domain = 'SE',
    n.definition = '지능형 WAF';

MERGE (n:Concept {id: 'devsecops'})
SET     n.name = 'DevSecOps',
    n.name_kr = 'DevSecOps',
    n.domain = 'SE',
    n.definition = 'IaaS/PaaS/SaaS 환경의 배포, 서비스 보안 강화',
    n.aliases = ['DevSecOps'];

MERGE (n:Technology {id: 'siem'})
SET     n.name = 'SIEM',
    n.name_kr = 'SIEM',
    n.domain = 'SE',
    n.definition = '로그, 이벤트 데이터 수집, 중앙 집중식 통합',
    n.aliases = ['SIEM'];

MERGE (n:Concept {id: '사용성'})
SET     n.name = '사용성',
    n.name_kr = '사용성',
    n.domain = 'SE',
    n.definition = 'Secure SSO';

MERGE (n:Concept {id: 'column_단위_암호화'})
SET     n.name = 'Column 단위 암호화',
    n.name_kr = 'Column 단위 암호화',
    n.domain = 'SE',
    n.definition = '데이터 암호화 범위를 컬럼 단위로 제한';

MERGE (n:Concept {id: '정책'})
SET     n.name = '정책',
    n.name_kr = '정책',
    n.domain = 'SE',
    n.definition = 'SDP (SW Defined Perimeter)';

MERGE (n:Technology {id: 'nw_access_control'})
SET     n.name = 'NW Access Control',
    n.name_kr = 'NAC',
    n.domain = 'SE',
    n.definition = 'Endpoint의 NW 접근시 사전 승인여부, 보안정책여부 확인',
    n.aliases = ['NW Access Control', 'NAC'];

// --- 관계 ---

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: '기업_보안_시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: '무신뢰_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: '자산/데이터_식별_단위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Technology {id: 'waf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: 'orchestration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: 'secure_sso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: 'mfa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Technology {id: '보안강도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: 'devsecops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Technology {id: 'siem'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: '사용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: 'column_단위_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Concept {id: '정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Technology {id: 'nw_access_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Document {id: 'SE_193'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'zero_trust'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_보안_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무신뢰_기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자산/데이터_식별_단위'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'waf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'orchestration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secure_sso'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mfa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안강도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'siem'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'column_단위_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'nw_access_control'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_194.1: DevSecOps
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_194.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'devsecops'})
SET     n.name = 'DevSecOps',
    n.name_kr = 'DevSecOps',
    n.domain = 'SE',
    n.aliases = ['DevSecOps'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SE';

MERGE (n:Concept {id: 'development'})
SET     n.name = 'Development',
    n.name_kr = 'Development',
    n.domain = 'SE',
    n.aliases = ['Development'];

MERGE (n:Concept {id: 'operation'})
SET     n.name = 'Operation',
    n.name_kr = 'Operation',
    n.domain = 'SE',
    n.aliases = ['Operation'];

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = 'Security',
    n.domain = 'SE',
    n.aliases = ['Security'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'SE',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: 'visualization'})
SET     n.name = 'Visualization',
    n.name_kr = 'Visualization',
    n.domain = 'SE',
    n.aliases = ['Visualization'];

MERGE (n:Concept {id: 'fmea'})
SET     n.name = 'FMEA',
    n.name_kr = 'FMEA',
    n.domain = 'SE',
    n.aliases = ['FMEA'];

MERGE (n:Concept {id: 'rasp'})
SET     n.name = 'RASP',
    n.name_kr = 'RASP',
    n.domain = 'SE',
    n.aliases = ['RASP'];

MERGE (n:Method {id: 'devops'})
SET     n.name = 'DevOps',
    n.name_kr = 'DevOps',
    n.domain = 'SE',
    n.definition = '개발(Development)과 운영(Opereations)의 합성어로 가트너에서는 시스템 중심의 접근 방식에서 신속하고 간결한 IT 서비스 제공에 중점을 둔 IT 문화의 변화',
    n.aliases = ['DevOps'];

MERGE (n:Concept {id: '워크플로우'})
SET     n.name = '워크플로우',
    n.name_kr = '워크플로우',
    n.domain = 'SE',
    n.definition = '코드 작성 및 저장';

MERGE (n:Concept {id: '정적_분석'})
SET     n.name = '정적 분석',
    n.name_kr = '정적 분석',
    n.domain = 'SE',
    n.definition = '저장소로부터 이 코드를 받아 코드 품질을 분석 - 자동화된 도구를 활용 일반적인 품질 체크, 보안 위협, 버그 등 분석';

MERGE (n:Concept {id: '테스트_구성_및_배포'})
SET     n.name = '테스트 구성 및 배포',
    n.name_kr = '테스트 구성 및 배포',
    n.domain = 'SE',
    n.definition = '실행환경을 생성하여 애플리케이션을 배포하고 동시에 보안을 위해 필요한 구성 요소를 시스템에 적용 - 실행환경 자동 생성을 위해 IaC(Infrastructure as code)도구가 사용';

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SE',
    n.definition = '새로 배포된 애플리케이션에 대해 테스트를 수행 - 테스트케이스를 모아 자동으로 수행할 수 있는 도구를 활용 - 백엔드에서 수행되는 비즈니스 로직과 UI, 보안 및 API 테스트 수행';

MERGE (n:Concept {id: '실_배포_및_모니터링'})
SET     n.name = '실 배포 및 모니터링',
    n.name_kr = '실 배포 및 모니터링',
    n.domain = 'SE',
    n.definition = '애플리케이션이 테스트를 통과하면 자동화된 배포 도구를 이용해 프로덕션 환경에서 실 배포 - 실 배포한 애플리케이션을 계속 모니터링하며 시스템에 대한 보안 위협요소를 탐지';

MERGE (n:Concept {id: '도구'})
SET     n.name = '도구',
    n.name_kr = '도구',
    n.domain = 'SE',
    n.definition = '경고 알림';

MERGE (n:Concept {id: '자동화'})
SET     n.name = '자동화',
    n.name_kr = '자동화',
    n.domain = 'SE',
    n.definition = '스캔 후 문제가 발견될 경우 이를 수정해 주는 도구로, 특정 조건이나 이벤트가 발생하면 그에 따라 개발자가 지정한 보안 관련 작업을 자동으로 수행';

MERGE (n:Concept {id: '대시보드'})
SET     n.name = '대시보드',
    n.name_kr = '대시보드',
    n.domain = 'SE',
    n.definition = '개발 프로세스상에서 보안 위협 가시성을 확보';

MERGE (n:Concept {id: '보안_위협_모델링'})
SET     n.name = '보안 위협 모델링',
    n.name_kr = '보안 위협 모델링',
    n.domain = 'SE',
    n.definition = '애플리케이션 리스크를 식별하고 분석';

MERGE (n:Concept {id: '테스팅'})
SET     n.name = '테스팅',
    n.name_kr = '테스팅',
    n.domain = 'SE',
    n.definition = '프로덕션 배포 전 보안 약점을 발견하기 위한 테스팅 도구';

MERGE (n:Concept {id: '코드_분석'})
SET     n.name = '코드 분석',
    n.name_kr = '코드 분석',
    n.domain = 'SE',
    n.definition = '정적분석을 통해 코드 품질 점수를 매기거나 오픈소스 관련 지적 재산권 침해 요소를 확인하고, 또한 향후 문제의 소지가 있는 코드 냄새(code smell) 등을 탐지';

MERGE (n:Method {id: 'sdlc'})
SET     n.name = 'SDLC',
    n.name_kr = 'SDLC',
    n.domain = 'SE',
    n.aliases = ['SDLC'];

MERGE (n:Concept {id: '도구_및_기술'})
SET     n.name = '도구 및 기술',
    n.name_kr = '도구 및 기술',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'development'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'visualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'fmea'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: 'rasp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Method {id: 'devops'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '워크플로우'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '정적_분석'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '테스트_구성_및_배포'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '실_배포_및_모니터링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '도구'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '자동화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '대시보드'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '보안_위협_모델링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '테스팅'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '코드_분석'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Concept {id: '도구_및_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Method {id: 'sdlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Concept {id: '도구_및_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Document {id: 'SE_194.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'development'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'visualization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rasp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '워크플로우'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적_분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_구성_및_배포'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실_배포_및_모니터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도구'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대시보드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_위협_모델링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스팅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드_분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도구_및_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_194.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_194.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_194.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_194.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_194.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_194.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_195: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_195'})
SET doc.domain = 'SE';

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 346개
// 관계: 728개
// ================================================================