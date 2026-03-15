// ================================================================
// SE 도메인 (SE_251 ~ SE_300) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_196: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_196'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_197: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_197'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_198.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_198.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_198.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_198.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_198.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_198.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_199.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_199.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_199.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_199.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_200: PUF(Physical Unclonable Function)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_200'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'physical_unclonable_function'})
SET     n.name = 'Physical Unclonable Function',
    n.name_kr = 'PUF',
    n.domain = 'SE',
    n.aliases = ['Physical Unclonable Function', 'PUF'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '반도체_제조_공정편차'})
SET     n.name = '반도체 제조 공정편차',
    n.name_kr = '반도체 제조 공정편차',
    n.domain = 'SE';

MERGE (n:Concept {id: '난수생성'})
SET     n.name = '난수생성',
    n.name_kr = '난수생성',
    n.domain = 'SE';

MERGE (n:Concept {id: 'mismatch_based_puf'})
SET     n.name = 'mismatch based PUF',
    n.name_kr = 'mismatch based PUF',
    n.domain = 'SE',
    n.aliases = ['mismatch based PUF'];

MERGE (n:Concept {id: 'physical_based_puf'})
SET     n.name = 'physical based PUF',
    n.name_kr = 'physical based PUF',
    n.domain = 'SE',
    n.aliases = ['physical based PUF'];

MERGE (n:Concept {id: 'randomness'})
SET     n.name = '랜덤성',
    n.name_kr = '랜덤성',
    n.domain = 'SE';

MERGE (n:Concept {id: 'reliability'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'SE';

MERGE (n:Concept {id: '성능평가_지표'})
SET     n.name = '성능평가 지표',
    n.name_kr = '성능평가 지표',
    n.domain = 'SE',
    n.definition = '랜덤성(randomness)';

// --- 관계 ---

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: '반도체_제조_공정편차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: '난수생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: 'mismatch_based_puf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: 'physical_based_puf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: 'randomness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: 'reliability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Concept {id: '성능평가_지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Document {id: 'SE_200'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'physical_unclonable_function'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반도체_제조_공정편차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '난수생성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mismatch_based_puf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'physical_based_puf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'randomness'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reliability'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능평가_지표'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_201: 보안위험관리(SRM)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_201'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'srm'})
SET     n.name = 'SRM',
    n.name_kr = '보안위험관리',
    n.domain = 'SE',
    n.aliases = ['SRM', '보안위험관리'];

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: '관리적'})
SET     n.name = '관리적',
    n.name_kr = '관리적',
    n.domain = 'SE';

MERGE (n:Concept {id: '물리적'})
SET     n.name = '물리적',
    n.name_kr = '물리적',
    n.domain = 'SE';

MERGE (n:Concept {id: '기술적'})
SET     n.name = '기술적',
    n.name_kr = '기술적',
    n.domain = 'SE';

MERGE (n:Concept {id: '정성적'})
SET     n.name = '정성적',
    n.name_kr = '정성적',
    n.domain = 'SE';

MERGE (n:Concept {id: '정량적'})
SET     n.name = '정량적',
    n.name_kr = '정량적',
    n.domain = 'SE';

MERGE (n:Concept {id: '관리적_통제'})
SET     n.name = '관리적 통제',
    n.name_kr = '관리적 통제',
    n.domain = 'SE',
    n.definition = '보안정책, 절차, 표준개발, 감시, 훈련, 데이터분류, 운용계획, 재난복구계획 등';

MERGE (n:Concept {id: '물리적_통제'})
SET     n.name = '물리적 통제',
    n.name_kr = '물리적 통제',
    n.domain = 'SE',
    n.definition = '경비시스템, 보안시설, 차단장치, CCTV 등';

MERGE (n:Technology {id: '기술적_통제'})
SET     n.name = '기술적 통제',
    n.name_kr = '기술적 통제',
    n.domain = 'SE',
    n.definition = '암호화, 방화벽, IDS/IPS 등의 자원을 보호하는 메커니즘';

MERGE (n:Concept {id: '위험관리_계획수립'})
SET     n.name = '위험관리 계획수립',
    n.name_kr = '위험관리 계획수립',
    n.domain = 'SE',
    n.definition = '위험의 식별, 정성/정량적 분석, 대응계획수립, 감시와 통제를 어떻게 수행할 것인가를 계획';

MERGE (n:Concept {id: '위험식별'})
SET     n.name = '위험식별',
    n.name_kr = '위험식별',
    n.domain = 'SE',
    n.definition = '보안과 관련된 위험을 식별';

MERGE (n:Concept {id: 'pi'})
SET     n.name = 'PI',
    n.name_kr = '위험분석',
    n.domain = 'SE',
    n.definition = '보안과 관련된 위험에 대한 분석 - 정성/정량적 우선순위 파악',
    n.aliases = ['PI', '위험분석'];

MERGE (n:Concept {id: '위험_대응계획수립'})
SET     n.name = '위험 대응계획수립',
    n.name_kr = '위험 대응계획수립',
    n.domain = 'SE',
    n.definition = '비용 대비 효과를 고려한 대응계획 수립 - 대응책 선택 (회피, 이관, 완화, 수용)';

MERGE (n:Concept {id: '위험_감시와_통제'})
SET     n.name = '위험 감시와 통제',
    n.name_kr = '위험 감시와 통제',
    n.domain = 'SE',
    n.definition = '식별된 위험의 노출을 지속적으로 모니터링하고 통제';

MERGE (n:Concept {id: '정성적_접근방법'})
SET     n.name = '정성적 접근방법',
    n.name_kr = '정성적 접근방법',
    n.domain = 'SE',
    n.definition = '개념: 위험 크기를 순위 또는 점수로 표현 - 유형: 델파이 기법, 순위결정법, 피지 행렬법 - 장점: 금액화하기 어려운 정보의 평가, 분석 시간 짧고 이해 쉬움 - 단점: 평가 결과가 주관적';

MERGE (n:Concept {id: '정량적_접근방법'})
SET     n.name = '정량적 접근방법',
    n.name_kr = '정량적 접근방법',
    n.domain = 'SE',
    n.definition = '개념: 위험 크기를 비용으로 표현(위험 발생 가능성 x 손실 크기 = 기대손실) - 유형: 수학공식 기법, 확률분포 추정법, 몬테카를로 시뮬레이션 - 장점: 비용/가치 분석, 예산 계획, 과학적 분석 - 단점: 분석의 시간, 비용이 큼';

MERGE (n:Concept {id: '기본_요소'})
SET     n.name = '기본 요소',
    n.name_kr = '기본 요소',
    n.domain = 'SE',
    n.definition = '자산(Asset)';

MERGE (n:Concept {id: '위험분석_방법론'})
SET     n.name = 'ISO/IEC 13335-1',
    n.name_kr = '위험분석 방법론',
    n.domain = 'SE',
    n.definition = '베이스라인 접근법',
    n.aliases = ['ISO/IEC 13335-1', '위험분석 방법론'];

MERGE (n:Concept {id: '위험평가_방법'})
SET     n.name = '위험평가 방법',
    n.name_kr = '위험평가 방법',
    n.domain = 'SE',
    n.definition = '정량적 방법';

// --- 관계 ---

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '관리적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '물리적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '기술적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '정성적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '정량적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '관리적_통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '물리적_통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Technology {id: '기술적_통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험관리_계획수립'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험식별'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: 'pi'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험_대응계획수립'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험_감시와_통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '정성적_접근방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '정량적_접근방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '기본_요소'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험분석_방법론'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Concept {id: '위험평가_방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Document {id: 'SE_201'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'srm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정성적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정량적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '기술적_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리_계획수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험식별'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pi'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_대응계획수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_감시와_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정성적_접근방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정량적_접근방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험분석_방법론'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험평가_방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_202: ISO/IEC 13335
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_202'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iso_iec_13335'})
SET     n.name = 'ISO/IEC 13335',
    n.name_kr = 'ISO/IEC 13335',
    n.domain = 'SE',
    n.aliases = ['ISO/IEC 13335'];

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'iso_iec13335'})
SET     n.name = 'ISO/IEC13335',
    n.name_kr = 'ISO/IEC13335',
    n.domain = 'SE',
    n.aliases = ['ISO/IEC13335'];

MERGE (n:Concept {id: '파트내용'})
SET     n.name = '파트내용',
    n.name_kr = '파트내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'iso_iec13335'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '파트내용'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'iso_iec_13335'})
MERGE (b:Concept {id: '파트내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec_13335'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec_13335'})
MERGE (b:Document {id: 'SE_202'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iso_iec_13335'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec13335'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파트내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_203: SSL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_203'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'ssl'})
SET     n.name = 'SSL',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.aliases = ['SSL'];

MERGE (n:Concept {id: '터널링_네트워크_보안'})
SET     n.name = '터널링 네트워크 보안',
    n.name_kr = '터널링 네트워크 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '세션계층_적용'})
SET     n.name = '세션계층 적용',
    n.name_kr = '세션계층 적용',
    n.domain = 'SE';

MERGE (n:Metric {id: '기밀성_보장'})
SET     n.name = '기밀성 보장',
    n.name_kr = '기밀성 보장',
    n.domain = 'SE';

MERGE (n:Concept {id: '서버/클라이언트간_인증'})
SET     n.name = '서버/클라이언트간 인증',
    n.name_kr = '서버/클라이언트간 인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'change_cipher_spec'})
SET     n.name = 'Change Cipher Spec',
    n.name_kr = 'Change Cipher Spec',
    n.domain = 'SE',
    n.aliases = ['Change Cipher Spec'];

MERGE (n:Concept {id: 'alert_protocol'})
SET     n.name = 'Alert Protocol',
    n.name_kr = 'Alert Protocol',
    n.domain = 'SE',
    n.aliases = ['Alert Protocol'];

MERGE (n:Concept {id: 'record_protocol)'})
SET     n.name = 'Record Protocol)',
    n.name_kr = 'Record Protocol)',
    n.domain = 'SE';

MERGE (n:Concept {id: '동작방식(secure_file'})
SET     n.name = '동작방식(Secure File',
    n.name_kr = '동작방식(Secure File',
    n.domain = 'SE';

MERGE (n:Concept {id: 'public_key'})
SET     n.name = 'Public Key',
    n.name_kr = 'Public Key',
    n.domain = 'SE',
    n.aliases = ['Public Key'];

MERGE (n:Concept {id: 'message_digest'})
SET     n.name = 'Message Digest',
    n.name_kr = 'Message Digest',
    n.domain = 'SE',
    n.aliases = ['Message Digest'];

MERGE (n:Concept {id: 'x_509'})
SET     n.name = 'X.509',
    n.name_kr = 'X.509',
    n.domain = 'SE',
    n.aliases = ['X.509'];

MERGE (n:Technology {id: 'rsa)'})
SET     n.name = 'RSA)',
    n.name_kr = 'RSA)',
    n.domain = 'SE';

MERGE (n:Concept {id: '공개키_기반_인증방식'})
SET     n.name = '공개키 기반 인증방식',
    n.name_kr = '공개키 기반 인증방식',
    n.domain = 'SE',
    n.definition = 'RSA방식과 X.509 v3인증서 사용';

MERGE (n:Concept {id: '3가지_인증모드_지원'})
SET     n.name = '3가지 인증모드 지원',
    n.name_kr = '3가지 인증모드 지원',
    n.domain = 'SE',
    n.definition = '익명 인증 모드(An, Anonymous), 서버 인증 모드(SA, Server Authentication), 클라이언트-서버인증 모드(MA, Mutual authentication)';

MERGE (n:Concept {id: '다양한_암호알고리즘_지원'})
SET     n.name = '다양한 암호알고리즘 지원',
    n.name_kr = '다양한 암호알고리즘 지원',
    n.domain = 'SE',
    n.definition = '여러 알고리즘을 지원하고, 실행과정에서 이들을 선택하여 사용가능';

MERGE (n:Concept {id: '핸드쉐이크를_통한_통신'})
SET     n.name = '핸드쉐이크를 통한 통신',
    n.name_kr = '핸드쉐이크를 통한 통신',
    n.domain = 'SE',
    n.definition = '클라이언트와 서버간 핸드쉐이크 프로토콜을 통한 인증 절차 진행';

MERGE (n:Technology {id: 'secure_socket_layer'})
SET     n.name = 'Secure Socket Layer',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.definition = 'Netscape사 개발. SSL1.0, SSL2.0 - IETF에서 TLS버전 공개 이후로 버전없음',
    n.aliases = ['Secure Socket Layer', 'SSL'];

MERGE (n:Metric {id: 'transport_layer_security'})
SET     n.name = 'Transport Layer Security',
    n.name_kr = 'TLS',
    n.domain = 'SE',
    n.definition = 'IETF에 의해 설계된 SSL기반 공개버전으로 전송계층 보안 제공 - Handshake Protocol: 보안협상, 클라이언트/서버간 인증 - Data Exchange Protocol: 무결성, 기밀성 제공',
    n.aliases = ['Transport Layer Security', 'TLS'];

MERGE (n:Technology {id: '비대칭키'})
SET     n.name = '비대칭키 (공개키)',
    n.name_kr = '비대칭키 (공개키)',
    n.domain = 'SE',
    n.definition = 'DH/DHE-DSS/RSA, RSA, DH, Fortezza, 등';

MERGE (n:Technology {id: '대칭키'})
SET     n.name = '대칭키',
    n.name_kr = '대칭키',
    n.domain = 'SE',
    n.definition = 'RC4, RC5, IDEA, DES, 3DES, ChaCha20, Camellia 등';

MERGE (n:Technology {id: 'mac'})
SET     n.name = 'MAC',
    n.name_kr = 'Hash함수',
    n.domain = 'SE',
    n.definition = 'HMAC-SHA384, HMAC-md5, HMAC-SHA, 등',
    n.aliases = ['MAC', 'Hash함수'];

MERGE (n:Concept {id: '프로토콜_스택'})
SET     n.name = '프로토콜 스택',
    n.name_kr = '프로토콜 스택',
    n.domain = 'SE';

MERGE (n:Technology {id: '프로토콜'})
SET     n.name = '프로토콜',
    n.name_kr = '프로토콜',
    n.domain = 'SE',
    n.definition = 'SSL Handshake Protocol';

MERGE (n:Technology {id: 'ssl_change_cipher_spec_protocol'})
SET     n.name = 'SSL Change Cipher Spec Protocol',
    n.name_kr = 'SSL Change Cipher Spec Protocol',
    n.domain = 'SE',
    n.definition = 'Handshake Protocol로 협의한 내용이 적용됨을 클라이언트 서버 상호 간 알림 - SSL이 주고 받는 메시지 구체 내용(알고리즘과 키 관련)',
    n.aliases = ['SSL Change Cipher Spec Protocol'];

MERGE (n:Technology {id: 'ssl_alert_protocol'})
SET     n.name = 'SSL Alert Protocol',
    n.name_kr = 'SSL Alert Protocol',
    n.domain = 'SE',
    n.definition = '메시지 압축, 암호화, 인증 수행 시 오류 알림, 치명적 수준의 오류는 연결 단절 수행 - 세션의 종료 또는 오류 발생시 이를 상대방에게 알림',
    n.aliases = ['SSL Alert Protocol'];

MERGE (n:Metric {id: 'ssl_record_protocol'})
SET     n.name = 'SSL Record Protocol',
    n.name_kr = 'SSL Record Protocol',
    n.domain = 'SE',
    n.definition = '메시지의 직접적인 압축, 암호화, 인증 수행, TCP 패킷으로 변환 - 전송되는 메시지의 기밀성과 무결성 보장 - 단편화, 암호화, MAC, 압축 - 사용되는 알고리즘 비대칭 알고리즘 : RSA , 대칭 알고리즘 : DES, RC2 Hash 알고리즘 : MD5, SHA-1',
    n.aliases = ['SSL Record Protocol'];

MERGE (n:Concept {id: 'change_cipher_spec_프로토콜'})
SET     n.name = 'Change Cipher Spec 프로토콜',
    n.name_kr = 'Change Cipher Spec 프로토콜',
    n.domain = 'SE',
    n.definition = 'Handshake 프로토콜에 의해 협상된 압축, MAC, 암호화에 쓰는 방식이 이후부터 적용됨을 수신자에게 알리는 목적 - CCS: 1 byte 이며, 값 1 을 갖는 한 개의 메시지로 구성됨';

MERGE (n:Concept {id: 'alert_프로토콜'})
SET     n.name = 'Alert 프로토콜',
    n.name_kr = 'Alert 프로토콜',
    n.domain = 'SE',
    n.definition = '암호 오류, 압축 오류, 메시지 인증 오류, 인증 실패 등의 에러 발생을 수신자에게 알리는 역할 - Level: warning(1) 또는 fatal(2) - Description: handshake, 암호명세 변경, 레코드 프로토콜 수행 중 발생하는 오류 메시지를 표현';

MERGE (n:Concept {id: 'handshake_프로토콜'})
SET     n.name = 'Handshake 프로토콜',
    n.name_kr = 'Handshake 프로토콜',
    n.domain = 'SE',
    n.definition = '서버와 클라이언트 간 상호 인증과 암호 키 교환 및 암호화 알고리즘/MAC 방식/압축방식 협상 그리고 세션키 생성 역할';

MERGE (n:Metric {id: 'record_프토토콜'})
SET     n.name = 'Record 프토토콜',
    n.name_kr = 'Record 프토토콜',
    n.domain = 'SE',
    n.definition = '응용 데이터나 제어 메세지를 레코드 단위로 TCP 계층으로 안전하게 전달하는 역할 (기밀성, 무결성 제공) - Contents Type (Protocol Type) Change Cipher Spec Protocol (20), Alert Protocol (21) Handshake Protocol (22), Application Data Protocol (23';

// --- 관계 ---

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '터널링_네트워크_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '세션계층_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Metric {id: '기밀성_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '서버/클라이언트간_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'change_cipher_spec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'alert_protocol'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'record_protocol)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '동작방식(secure_file'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'public_key'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'message_digest'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'x_509'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'rsa)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '공개키_기반_인증방식'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '3가지_인증모드_지원'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '다양한_암호알고리즘_지원'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '핸드쉐이크를_통한_통신'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'secure_socket_layer'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Metric {id: 'transport_layer_security'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: '비대칭키'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: '대칭키'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'mac'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: '프로토콜_스택'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: '프로토콜'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'ssl_change_cipher_spec_protocol'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'ssl_alert_protocol'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Metric {id: 'ssl_record_protocol'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'change_cipher_spec_프로토콜'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'alert_프로토콜'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Concept {id: 'handshake_프로토콜'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Metric {id: 'record_프토토콜'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Document {id: 'SE_203'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '터널링_네트워크_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세션계층_적용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '기밀성_보장'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버/클라이언트간_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'change_cipher_spec'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alert_protocol'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'record_protocol)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식(secure_file'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public_key'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'message_digest'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'x_509'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rsa)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키_기반_인증방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3가지_인증모드_지원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_암호알고리즘_지원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핸드쉐이크를_통한_통신'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'secure_socket_layer'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'transport_layer_security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '비대칭키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '대칭키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'mac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_스택'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl_change_cipher_spec_protocol'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl_alert_protocol'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'ssl_record_protocol'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'change_cipher_spec_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alert_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'handshake_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'record_프토토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_204: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_204'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_205.1: TLS(Transport Layer Security)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_205.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'transport_layer_security'})
SET     n.name = 'Transport Layer Security',
    n.name_kr = 'TLS',
    n.domain = 'SE',
    n.aliases = ['Transport Layer Security', 'TLS'];

MERGE (n:Concept {id: '터널링_네트워크_보안'})
SET     n.name = '터널링 네트워크 보안',
    n.name_kr = '터널링 네트워크 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '전송계층보안'})
SET     n.name = '전송계층보안',
    n.name_kr = '전송계층보안',
    n.domain = 'SE';

MERGE (n:Technology {id: 'ssl'})
SET     n.name = 'SSL',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.aliases = ['SSL'];

MERGE (n:Technology {id: 'tls'})
SET     n.name = 'TLS',
    n.name_kr = 'TLS',
    n.domain = 'SE',
    n.aliases = ['TLS'];

MERGE (n:Technology {id: 'https://'})
SET     n.name = 'https://',
    n.name_kr = 'https://',
    n.domain = 'SE';

MERGE (n:Concept {id: '프로토콜_구조_및_구성'})
SET     n.name = '프로토콜 구조 및 구성',
    n.name_kr = '프로토콜 구조 및 구성',
    n.domain = 'SE';

MERGE (n:Concept {id: '3way_handshaking'})
SET     n.name = '3way handshaking',
    n.name_kr = '3way handshaking',
    n.domain = 'SE';

MERGE (n:Concept {id: '기본기능'})
SET     n.name = '기본기능',
    n.name_kr = '기본기능',
    n.domain = 'SE';

MERGE (n:Concept {id: '동작/내용'})
SET     n.name = '동작/내용',
    n.name_kr = '동작/내용',
    n.domain = 'SE';

MERGE (n:Concept {id: 'heist_공격'})
SET     n.name = 'HEIST 공격 (2016.8)',
    n.name_kr = 'HEIST 공격 (2016.8)',
    n.domain = 'SE',
    n.definition = '자바스크립트로 브라우저에 대한 사이트 채널 공격을 통해 암호문의 정확한 크기를 알아냄';

MERGE (n:Technology {id: 'drown_공격'})
SET     n.name = 'DROWN 공격 (2016.3)',
    n.name_kr = 'DROWN 공격 (2016.3)',
    n.domain = 'SE',
    n.definition = 'SSL 2.0 취약점을 이용하여 TLS 연결 해독 가능';

MERGE (n:Technology {id: 'freak_공격'})
SET     n.name = 'FREAK 공격 (2015.1)',
    n.name_kr = 'FREAK 공격 (2015.1)',
    n.domain = 'SE',
    n.definition = '수출 등급 RSA 사용을 유도하여 brute-force 공격으로 키를 얻어 냄';

MERGE (n:Technology {id: 'poodle_공격'})
SET     n.name = 'POODLE 공격 (2014.10)',
    n.name_kr = 'POODLE 공격 (2014.10)',
    n.domain = 'SE',
    n.definition = 'TLS 연결을 SSL 3.0으로 낮춰 SSL 3.0 취약점을 이용하여 암호문을 해독';

MERGE (n:Concept {id: 'heartbleed_취약점'})
SET     n.name = 'Heartbleed 취약점 (2014.4)',
    n.name_kr = 'Heartbleed 취약점 (2014.4)',
    n.domain = 'SE',
    n.definition = 'OpenSSL 라이브러리 오구현으로 웹 서버의 시스템 메모리 내용 유출';

MERGE (n:Threat {id: '보안성_강화'})
SET     n.name = '보안성 강화',
    n.name_kr = '보안성 강화',
    n.domain = 'SE',
    n.definition = 'Handshake 단계에서 인증서를 암호화하고, 무결성을 검증함으로써 중간자 공격을 통해 협상 내용을 취약하게 변경하는 다운그레이드 공격 방어 가능 불필요하고 안전하지 않은 암호화 알고리즘 제거 - 정적인 RSA와 디피-헬먼 암호화 스위트(Diffie-Hellman Cipher Suite)제거 - 핸드셰이크를 가능한 최대한 암호화 - 타원곡선 알고리즘을 기';

MERGE (n:Technology {id: '성능_강화'})
SET     n.name = '성능 강화',
    n.name_kr = '성능 강화',
    n.domain = 'SE',
    n.definition = 'TLS 1.2 이하 버전에서는 handshake 과정에서 2-RTT(Round Trip Time)를 거쳐야 했으나, TSL 1.3에서는 이 과정을 단순화시켜 1회(1-RTT)로 줄이면서 성능 향상 세션을 재개할 경우 TLS 1.2 이하에서는 1-RTT로 동작하나, TLS 1.3에서는 0-RTT로 동작하는 모드 지원';

MERGE (n:Technology {id: '프라이버시_강화'})
SET     n.name = '프라이버시 강화',
    n.name_kr = '프라이버시 강화',
    n.domain = 'SE',
    n.definition = 'TLS 1.3에서는 SNI(Server Name Indication) 정보를 암호화하는 ESNI(Encrypted SNI) ※ SNI(Server Name Indication) : TLS 확장 표준의 하나로, 동일한 IP와 포트를 사용하는 하나의 서버에서 여러 도메인을 가진 사이트를 운영할 경우 도메인 별로 각각의 인증서를 사용할 수 있게 해 주는 필드';

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'SE',
    n.definition = '공개키/개인키';

MERGE (n:Concept {id: '동작_절차'})
SET     n.name = '동작 절차',
    n.name_kr = '동작 절차',
    n.domain = 'SE',
    n.definition = '1. Client 연결 요청';

MERGE (n:Technology {id: '2._server_tls_제시'})
SET     n.name = '2. Server TLS 제시',
    n.name_kr = '2. Server TLS 제시',
    n.domain = 'SE',
    n.definition = 'Server는 Server TLS 인증서를 제시함.';

MERGE (n:Technology {id: '3._인증서_확인'})
SET     n.name = '3. 인증서 확인',
    n.name_kr = '3. 인증서 확인',
    n.domain = 'SE',
    n.definition = 'Client는 Server TLS 인증서 검증';

MERGE (n:Technology {id: '4._client_tls_제시'})
SET     n.name = '4. Client TLS 제시',
    n.name_kr = '4. Client TLS 제시',
    n.domain = 'SE',
    n.definition = 'Client는 Client TLS 인증서를 제시함';

MERGE (n:Technology {id: '5._인증서_확인'})
SET     n.name = '5. 인증서 확인',
    n.name_kr = '5. 인증서 확인',
    n.domain = 'SE',
    n.definition = 'Server는 Client TLS 인증서를 검증';

MERGE (n:Concept {id: '6._권한_부여'})
SET     n.name = '6. 권한 부여',
    n.name_kr = '6. 권한 부여',
    n.domain = 'SE',
    n.definition = 'Server가 Access 권한을 부여함';

MERGE (n:Technology {id: '7._암호_통신'})
SET     n.name = '7. 암호 통신',
    n.name_kr = '7. 암호 통신',
    n.domain = 'SE',
    n.definition = 'Client와 Server가 암호화된 TLS 연결을 통해 정보를 교환';

// --- 관계 ---

MERGE (a:Concept {id: '전송계층보안'})
MERGE (b:Concept {id: '터널링_네트워크_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'ssl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'tls'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'https://'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '프로토콜_구조_및_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '3way_handshaking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기본기능'})
MERGE (b:Concept {id: '동작/내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '기본기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '동작/내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: 'heist_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'drown_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'freak_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: 'poodle_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: 'heartbleed_취약점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Threat {id: '보안성_강화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '성능_강화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '프라이버시_강화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '동작_절차'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '2._server_tls_제시'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '3._인증서_확인'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '4._client_tls_제시'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '5._인증서_확인'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Concept {id: '6._권한_부여'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Technology {id: '7._암호_통신'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Document {id: 'SE_205.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'transport_layer_security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '터널링_네트워크_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송계층보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tls'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'https://'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_구조_및_구성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3way_handshaking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작/내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heist_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'drown_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'freak_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'poodle_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heartbleed_취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '보안성_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '성능_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '프라이버시_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '2._server_tls_제시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '3._인증서_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '4._client_tls_제시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5._인증서_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6._권한_부여'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '7._암호_통신'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_205.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_205.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_206: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_206'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_207: IP 터널링/터널링(Tunneling)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_207'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'tunneling'})
SET     n.name = 'Tunneling',
    n.name_kr = 'IP 터널링/터널링',
    n.domain = 'SE',
    n.aliases = ['Tunneling', 'IP 터널링/터널링'];

MERGE (n:Concept {id: 'ipv6'})
SET     n.name = 'IPv6',
    n.name_kr = 'IPv6',
    n.domain = 'SE',
    n.aliases = ['IPv6'];

MERGE (n:Concept {id: '캡슐화'})
SET     n.name = '캡슐화',
    n.name_kr = '캡슐화',
    n.domain = 'SE';

MERGE (n:Standard {id: '역할'})
SET     n.name = '역할',
    n.name_kr = '역할',
    n.domain = 'SE',
    n.definition = '3계층의 인증, 접근제어, 무결성, 기밀성, 재전송 방지 등을 지원 - IETF 에서 제안되어 VPN(가상 사설망)을 위한 IP 터널링 제공';

MERGE (n:Concept {id: '프로토콜'})
SET     n.name = '프로토콜',
    n.name_kr = '프로토콜',
    n.domain = 'SE',
    n.definition = 'AH';

MERGE (n:Metric {id: 'esp'})
SET     n.name = 'ESP',
    n.name_kr = 'ESP',
    n.domain = 'SE',
    n.definition = 'Encapsulation Security, 암호화로 기밀성 제공',
    n.aliases = ['ESP'];

MERGE (n:Technology {id: 'ipsec_전송_방법'})
SET     n.name = 'IPSec 전송 방법',
    n.name_kr = 'IPSec 전송 방법',
    n.domain = 'SE',
    n.definition = '터널 모드 (Tunnel Mode)';

MERGE (n:Concept {id: '설정_터널링'})
SET     n.name = '설정 터널링',
    n.name_kr = '설정 터널링',
    n.domain = 'SE',
    n.definition = '6Bone 에서 주로 사용하는 방법으로 두 라우터에서 IPv4 주로를 통해 수동으로 정적인 터널을 생성하는 방법';

MERGE (n:Concept {id: '자동_터널링'})
SET     n.name = '자동 터널링',
    n.name_kr = '자동 터널링',
    n.domain = 'SE',
    n.definition = 'IPv4 호환 주소를 이용하여 수동 설정없이 IPv4 구간을 통과할 때, IPv4 호환 주소에 내포된 IPv4 주소를 통해 자동으로 터널링 해주는 방법';

MERGE (n:Concept {id: '동작'})
SET     n.name = '동작',
    n.name_kr = '동작',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Concept {id: '캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Standard {id: '역할'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Concept {id: '프로토콜'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Metric {id: 'esp'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Technology {id: 'ipsec_전송_방법'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Concept {id: '설정_터널링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Concept {id: '자동_터널링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Concept {id: '동작'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Document {id: 'SE_207'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tunneling'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipv6'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '역할'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'esp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ipsec_전송_방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설정_터널링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동_터널링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_208: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_208'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_209: IPSec
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_209'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'ipsec'})
SET     n.name = 'IPSec',
    n.name_kr = 'IPSec',
    n.domain = 'SE',
    n.aliases = ['IPSec'];

MERGE (n:Concept {id: '네트워크_보안'})
SET     n.name = '네트워크 보안',
    n.name_kr = '네트워크 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'psec정책(spd'})
SET     n.name = 'PSec정책(SPD',
    n.name_kr = 'PSec정책(SPD',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sad)'})
SET     n.name = 'SAD)',
    n.name_kr = 'SAD)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ike'})
SET     n.name = 'IKE',
    n.name_kr = 'key관리',
    n.domain = 'SE',
    n.aliases = ['IKE', 'key관리'];

MERGE (n:Concept {id: '프로토콜(ah'})
SET     n.name = '프로토콜(AH',
    n.name_kr = '프로토콜(AH',
    n.domain = 'SE';

MERGE (n:Concept {id: 'esp)'})
SET     n.name = 'ESP)',
    n.name_kr = 'ESP)',
    n.domain = 'SE';

MERGE (n:Concept {id: '프로_토콜'})
SET     n.name = '프로 토콜',
    n.name_kr = '프로 토콜',
    n.domain = 'SE',
    n.definition = 'AH (Authentication Header)';

MERGE (n:Concept {id: 'transport'})
SET     n.name = 'Transport',
    n.name_kr = '전송모드',
    n.domain = 'SE',
    n.definition = '계층 간 캡슐화를 통해 인증 데이터 생성하여 호스트 간 메시지를 보호',
    n.aliases = ['Transport', '전송모드'];

MERGE (n:Concept {id: 'tunnel'})
SET     n.name = 'Tunnel',
    n.name_kr = '터널모드',
    n.domain = 'SE',
    n.definition = '모든 패킷 정보에 대해 인증 데이터 생성하여 호스트 간 전송경로를 보호',
    n.aliases = ['Tunnel', '터널모드'];

MERGE (n:Metric {id: 'encapsulating_security_payload'})
SET     n.name = 'Encapsulating Security Payload',
    n.name_kr = 'ESP',
    n.domain = 'SE',
    n.definition = 'IP 패킷에 암호화 기능을 추가하기 위한 프로토콜 - 무결성, 인증, 암호화, 재전송 방지',
    n.aliases = ['Encapsulating Security Payload', 'ESP'];

MERGE (n:Concept {id: '키_및_정책_관리'})
SET     n.name = '키 및 정책 관리',
    n.name_kr = '키 및 정책 관리',
    n.domain = 'SE',
    n.definition = 'IKE (Internet Key Exchange)';

MERGE (n:Technology {id: 'security_policy_database'})
SET     n.name = 'Security Policy Database',
    n.name_kr = 'SPD',
    n.domain = 'SE',
    n.definition = '패킷에 대한 보안정책(Security Policy) 데이터 베이스, 모든 트래픽 처리 시에 참조 - Incoming Traffic과 Outgoing Traffic으로 구분하여 정책을 지정함 - IPSec 적용 여부, DISCARD, RELAY 등을 적용',
    n.aliases = ['Security Policy Database', 'SPD'];

MERGE (n:Technology {id: 'security_authentication_database'})
SET     n.name = 'Security Authentication Database',
    n.name_kr = 'SAD',
    n.domain = 'SE',
    n.definition = 'SA(Security Association)관련 패러미터를 저장하는 보안연계 데이터베이스 - SAD 필드 내용: 일련번호 카운터, 재전송 공격방지 윈도우값, AH인증 알 고리즘/키, ESP 알고리즘/키, SA 유효기간, IPSEC 모드',
    n.aliases = ['Security Authentication Database', 'SAD'];

MERGE (n:Technology {id: 'packet_인터셉터'})
SET     n.name = 'Packet 인터셉터',
    n.name_kr = 'Packet 인터셉터',
    n.domain = 'SE',
    n.definition = 'TCP/IP 스택에서 패킷을 가로채서 IPSec Engine의 입력으로 사용(IP헤더, IPSec 헤더, TCP 헤더, 페이로드 포함된 패킷) - IPSec Engine의 결과인 TCP 헤더와 페이로드만 포함된 패킷을 전송 계층으로 전달';

MERGE (n:Technology {id: 'ipsec_엔진'})
SET     n.name = 'IPSec 엔진',
    n.name_kr = 'IPSec 엔진',
    n.domain = 'SE',
    n.definition = '사용자가 정의한 IPSec 정책을 Database에서 읽어 들여 Rule 기반으로 동작하며,X.509 인증서를 이용해 암호화/복호화 서비스 - 이때, 키를 교환하는 프로토콜인 IKE 사용';

MERGE (n:Technology {id: 'ssl'})
SET     n.name = 'SSL',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.aliases = ['SSL'];

// --- 관계 ---

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: '네트워크_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'psec정책(spd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'sad)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'ike'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: '프로토콜(ah'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'esp)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: '프로_토콜'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'transport'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: 'tunnel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Metric {id: 'encapsulating_security_payload'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Concept {id: '키_및_정책_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Technology {id: 'security_policy_database'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Technology {id: 'security_authentication_database'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Technology {id: 'packet_인터셉터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Technology {id: 'ipsec_엔진'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Technology {id: 'ipsec'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Technology {id: 'ssl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Document {id: 'SE_209'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psec정책(spd'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sad)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ike'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜(ah'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'esp)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로_토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transport'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tunnel'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'encapsulating_security_payload'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키_및_정책_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'security_policy_database'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'security_authentication_database'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'packet_인터셉터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ipsec_엔진'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_211: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_211'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_212.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_212.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_212.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_212.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_213.1: 망분리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_213.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '망분리'})
SET     n.name = '망분리',
    n.name_kr = '망분리',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적근거'})
SET     n.name = '법적근거',
    n.name_kr = '법적근거',
    n.domain = 'SE',
    n.definition = '공공';

MERGE (n:Concept {id: '금융'})
SET     n.name = '금융',
    n.name_kr = '금융',
    n.domain = 'SE',
    n.definition = '전자거래법 전자 금융 감독 규정 (2011.10) : 금융위원회, 금융감독원';

MERGE (n:Law {id: '통신_외'})
SET     n.name = '통신 외',
    n.name_kr = '통신 외',
    n.domain = 'SE',
    n.definition = '정보통신망법 (2012.08) : 방송통신위원회, 한국인터넷진흥원';

MERGE (n:Concept {id: '망분리_기본원칙'})
SET     n.name = '망분리 기본원칙',
    n.name_kr = '망분리 기본원칙',
    n.domain = 'SE',
    n.definition = '기본원칙';

MERGE (n:Concept {id: 'pc_보안'})
SET     n.name = 'PC 보안',
    n.name_kr = 'PC 보안',
    n.domain = 'SE',
    n.definition = '망분리';

MERGE (n:Concept {id: '이메일_보안'})
SET     n.name = '이메일 보안',
    n.name_kr = '이메일 보안',
    n.domain = 'SE',
    n.definition = '메일 솔루션';

MERGE (n:Concept {id: '패치관리시스템_보안'})
SET     n.name = '패치관리시스템 보안',
    n.name_kr = '패치관리시스템 보안',
    n.domain = 'SE',
    n.definition = 'PMS';

MERGE (n:Technology {id: '네트워크_접근_제어'})
SET     n.name = '네트워크 접근 제어',
    n.name_kr = '네트워크 접근 제어',
    n.domain = 'SE',
    n.definition = 'NAC';

MERGE (n:Concept {id: '보조기억_장치_관리'})
SET     n.name = '보조기억 장치 관리',
    n.name_kr = '보조기억 장치 관리',
    n.domain = 'SE',
    n.definition = '매체제어';

MERGE (n:Concept {id: '망간_자료_전송'})
SET     n.name = '망간 자료 전송',
    n.name_kr = '망간 자료 전송',
    n.domain = 'SE',
    n.definition = '망연계 솔루션';

MERGE (n:Concept {id: '프린터등_주변기기'})
SET     n.name = '프린터등 주변기기',
    n.name_kr = '프린터등 주변기기',
    n.domain = 'SE',
    n.definition = '프린터서버';

MERGE (n:Concept {id: '물리적_망분리'})
SET     n.name = '물리적 망분리',
    n.name_kr = '물리적 망분리',
    n.domain = 'SE';

MERGE (n:Concept {id: '논리적_망분리'})
SET     n.name = '논리적 망분리',
    n.name_kr = '논리적 망분리',
    n.domain = 'SE';

MERGE (n:Concept {id: '구축/운영_문제'})
SET     n.name = '구축/운영 문제',
    n.name_kr = '구축/운영 문제',
    n.domain = 'SE',
    n.definition = '물리적 망분리 구축/운영 문제';

MERGE (n:Concept {id: '산업혁신_저해'})
SET     n.name = '산업혁신 저해',
    n.name_kr = '산업혁신 저해',
    n.domain = 'SE',
    n.definition = '신기술 활용 불가 - 핀테크 성장 저해 - 초연결 사회 역행';

MERGE (n:Concept {id: '제도_보완'})
SET     n.name = '제도 보완',
    n.name_kr = '제도 보완',
    n.domain = 'SE',
    n.definition = '비 중요 처리시스템 클라우드 이관 가능';

MERGE (n:Concept {id: '구축/운영'})
SET     n.name = '구축/운영',
    n.name_kr = '구축/운영',
    n.domain = 'SE',
    n.definition = '데이터 단위 망분리 체계 도입';

MERGE (n:Concept {id: '산업혁신'})
SET     n.name = '산업혁신',
    n.name_kr = '산업혁신',
    n.domain = 'SE',
    n.definition = '망분리 예외 적용';

// --- 관계 ---

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '망분리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '법적근거'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '금융'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Law {id: '통신_외'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '망분리_기본원칙'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: 'pc_보안'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '이메일_보안'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '패치관리시스템_보안'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Technology {id: '네트워크_접근_제어'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '보조기억_장치_관리'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '망간_자료_전송'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '프린터등_주변기기'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '물리적_망분리'})
MERGE (b:Concept {id: '논리적_망분리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '물리적_망분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '논리적_망분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '구축/운영_문제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '산업혁신_저해'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '제도_보완'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '구축/운영'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '산업혁신'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Document {id: 'SE_213.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적근거'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '통신_외'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망분리_기본원칙'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pc_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패치관리시스템_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '네트워크_접근_제어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억_장치_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망간_자료_전송'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프린터등_주변기기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_망분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리적_망분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축/운영_문제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업혁신_저해'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도_보완'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축/운영'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업혁신'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_213.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_213.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_216: 망구성도
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_216'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '망구성도'})
SET     n.name = '망구성도',
    n.name_kr = '망구성도',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '망분리'})
SET     n.name = '망분리',
    n.name_kr = '망분리',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '망분리'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '망구성도'})
MERGE (b:Document {id: 'SE_216'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '망구성도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_217.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_217.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_217.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_217.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_218: Secure SDLC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_218'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Method {id: 'secure_sdlc'})
SET     n.name = 'Secure SDLC',
    n.name_kr = 'Secure SDLC',
    n.domain = 'SE',
    n.aliases = ['Secure SDLC'];

MERGE (n:Concept {id: 'sw개발보안'})
SET     n.name = 'SW개발보안 (시큐어 코딩)',
    n.name_kr = 'SW개발보안 (시큐어 코딩)',
    n.domain = 'SE';

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

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

MERGE (n:Concept {id: '단계_설명'})
SET     n.name = '단계 설명',
    n.name_kr = '단계 설명',
    n.domain = 'SE',
    n.definition = 'Use Cases 단계';

MERGE (n:Concept {id: '구조설계_단계'})
SET     n.name = '구조설계 단계',
    n.name_kr = '구조설계 단계',
    n.domain = 'SE',
    n.definition = '공격저항 분석 (attack resistance analysis), 모호성 분석 허점 분석 등을 통해 위험 요소를 분석함';

MERGE (n:Concept {id: '테스트_계획_단계'})
SET     n.name = '테스트 계획 단계',
    n.name_kr = '테스트 계획 단계',
    n.domain = 'SE',
    n.definition = '공격 패턴 위험 분석 결과 악용 사례를 기반으로 위험기반 보안테스트를 수행함';

MERGE (n:Concept {id: '코드_단계'})
SET     n.name = '코드 단계',
    n.name_kr = '코드 단계',
    n.domain = 'SE',
    n.definition = '구현 오류 (implementation bug) 에 중점을 두며 특히 소스코드에 존재하는 취약성을 발견할 목적으로 수행되는 코드 정적분석에 중심을 둔다';

MERGE (n:Concept {id: '테스트_및_테스트결과_단계'})
SET     n.name = '테스트 및 테스트결과 단계',
    n.name_kr = '테스트 및 테스트결과 단계',
    n.domain = 'SE',
    n.definition = '위험 분석 및 침투 테스트를 수행한다 침투테스트를 통해 실제 작동 환경 에서의 필드 소프트웨어에 대한 좋은 이해를 제공';

MERGE (n:Concept {id: '현장과의_피드백_단계'})
SET     n.name = '현장과의 피드백 단계',
    n.name_kr = '현장과의 피드백 단계',
    n.domain = 'SE',
    n.definition = '보안 운영을 통해 얻은 공격자와 공격 도구에 대한 경험과 지식은 개발자에게 다시 피드백';

MERGE (n:Concept {id: 'role_based_view'})
SET     n.name = 'Role Based View',
    n.name_kr = '역할기반 관점',
    n.domain = 'SE',
    n.definition = '프로젝트에서 24 개의 보안관련 CLASP 활동들에 대한 각 역할을 창출하고 팀의 구성원이 각자 맡게 될 역할들을 정의하여 활동평가 관점 활동구현 관점 취약성 관점에서 사용',
    n.aliases = ['Role Based View', '역할기반 관점'];

MERGE (n:Concept {id: 'activity_assessment_view'})
SET     n.name = 'Activity Assessment View',
    n.name_kr = '활동평가 관점',
    n.domain = 'SE',
    n.definition = '활동구현 관점에서의 적합성과 관련하여 보안관련 CLASP 활동들에 대해 타당성을 평가할 수 있도록 도와줌으로써 프로젝트 매니저와 프로세스 엔지니어링팀의 부담을 덜어줄 수 있음',
    n.aliases = ['Activity Assessment View', '활동평가 관점'];

MERGE (n:Concept {id: 'acitivity_implementation_view'})
SET     n.name = 'Acitivity Implementation View',
    n.name_kr = '활동구현 관점',
    n.domain = 'SE',
    n.definition = '활동평가 관점에서 선택한 24 가지 보안관련 CLASP 활동들을 수행함',
    n.aliases = ['Acitivity Implementation View', '활동구현 관점'];

MERGE (n:Concept {id: 'vulnerability_view'})
SET     n.name = 'Vulnerability View',
    n.name_kr = '취약성 관점',
    n.domain = 'SE',
    n.definition = '문제 타입에 대한 솔루션을 활동평가 관점과 활동구현 관점으로 통합',
    n.aliases = ['Vulnerability View', '취약성 관점'];

// --- 관계 ---

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'sw개발보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'clasp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'ms_sdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'bsimm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'seven_touch_point'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'open_samm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '단계_설명'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '구조설계_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '테스트_계획_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '코드_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '테스트_및_테스트결과_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: '현장과의_피드백_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'role_based_view'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'activity_assessment_view'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'acitivity_implementation_view'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Concept {id: 'vulnerability_view'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Document {id: 'SE_218'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'secure_sdlc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw개발보안'})
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

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계_설명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조설계_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_계획_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_및_테스트결과_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현장과의_피드백_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'role_based_view'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity_assessment_view'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'acitivity_implementation_view'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vulnerability_view'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_220: 컨텐츠 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_220'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '컨텐츠_보호'})
SET     n.name = '컨텐츠 보호',
    n.name_kr = '컨텐츠 보호',
    n.domain = 'SE',
    n.definition = '암호화';

MERGE (n:Concept {id: 'acl'})
SET     n.name = 'ACL',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.definition = '컨텐츠 사용권한 설정(조회/전달/복사/인쇄/변형권한)',
    n.aliases = ['ACL', '접근제어'];

MERGE (n:Concept {id: 'cas'})
SET     n.name = 'CAS',
    n.name_kr = '수신제한 기술',
    n.domain = 'SE',
    n.definition = 'Conditional Access System - 서비스 가입자가 특정 프로그램 시청하고자 할 경우, 수신 시스템이 자동으로 수신자를 인식하고, 서비스 제공 여부를 판단하여 허가된 가입자에게만 수신이 가능하도록 처리하는 기술',
    n.aliases = ['CAS', '수신제한 기술'];

MERGE (n:Threat {id: 'cdr'})
SET     n.name = 'CDR',
    n.name_kr = '컨텐츠 무해화 기술',
    n.domain = 'SE',
    n.definition = '외부에서 들어온 파일 콘텐츠의 구성요소를 검사하고 악성코드를 제거하여 안전한 요소들만 추출하고 재구성하여 내부로 반입하는 기술',
    n.aliases = ['CDR', '컨텐츠 무해화 기술'];

MERGE (n:Concept {id: 'drm'})
SET     n.name = 'DRM',
    n.name_kr = '디지털 저작권 관리 기술',
    n.domain = 'SE',
    n.definition = '디지털 컨텐츠 불법 복제 방지 및 저작권 보호를 위한 기술',
    n.aliases = ['DRM', '디지털 저작권 관리 기술'];

MERGE (n:Concept {id: '전자지문'})
SET     n.name = '전자지문',
    n.name_kr = '전자지문',
    n.domain = 'SE',
    n.definition = '전자지문은 전자문서로부터 뽑아낸 고유한 Hash 값 코드로, 고유코드를 이용하여 전자문서의 위변조 및 비밀원본증명을 위해 사용되는 기술';

MERGE (n:Concept {id: '워터마킹/포렌식마킹_기술'})
SET     n.name = '워터마킹/포렌식마킹 기술',
    n.name_kr = '워터마킹/포렌식마킹 기술',
    n.domain = 'SE',
    n.definition = '미디어 컨텐츠에 사람이 인지할 수 없는 저작권 정보를 삽입하여 추후 저작권 논쟁이 발생했을 때 저작권자를 증명하기 위한 표지로 활용하기 위한 일종의 사후적 보호기술';

MERGE (n:Concept {id: 'fingerprinting_기술'})
SET     n.name = 'Fingerprinting 기술',
    n.name_kr = 'Fingerprinting 기술',
    n.domain = 'SE',
    n.definition = '저작권 정보와 구매한 사용자의 정보를 삽입하여 컨텐츠 불법 배포자 추적을 가능하게 하는 기술';

MERGE (n:Concept {id: '컨텐츠_관리'})
SET     n.name = '컨텐츠 관리',
    n.name_kr = '컨텐츠 관리',
    n.domain = 'SE',
    n.definition = 'DOI (Digital Object Identifier)';

MERGE (n:Concept {id: 'creative_commons_license'})
SET     n.name = 'Creative Commons License',
    n.name_kr = 'CCL',
    n.domain = 'SE',
    n.definition = '저작권자가 자신의 저작물에 이용방법 및 조건을 표시하는 일종의 표준 약관이자 저작물 이용 허락표시',
    n.aliases = ['Creative Commons License', 'CCL'];

MERGE (n:Concept {id: 'indecs'})
SET     n.name = 'INDECS',
    n.name_kr = 'INDECS',
    n.domain = 'SE',
    n.definition = '전자상거래 환경에서 디지털 컨텐츠에 대한 식별정보, 내용, 특성, 저작권 정보 등을 정의한 메타데이터',
    n.aliases = ['INDECS'];

MERGE (n:Concept {id: 'deep_packet_inspection'})
SET     n.name = 'Deep Packet Inspection',
    n.name_kr = 'DPI',
    n.domain = 'SE',
    n.definition = '네트워크를 통해 전달되는 패킷을 헤더뿐 아니라 컨텐츠까지 검사하는 기술',
    n.aliases = ['Deep Packet Inspection', 'DPI'];

MERGE (n:Concept {id: 'mpeg21'})
SET     n.name = 'MPEG21',
    n.name_kr = 'MPEG21',
    n.domain = 'SE',
    n.definition = '컨텐츠 유통 배포를 관리하기 위한 디지털 컨텐츠 프레임워크',
    n.aliases = ['MPEG21'];

MERGE (n:Concept {id: '컨텐츠_배포'})
SET     n.name = '컨텐츠 배포',
    n.name_kr = '컨텐츠 배포',
    n.domain = 'SE',
    n.definition = 'PKI';

MERGE (n:Technology {id: 'sw_streaming'})
SET     n.name = 'SW Streaming',
    n.name_kr = 'SW Streaming',
    n.domain = 'SE',
    n.definition = 'FTP, RCTP, SIP, H.323 등을 이용하여 사용자에 컨텐츠 전송',
    n.aliases = ['SW Streaming'];

MERGE (n:Concept {id: 'content_delivery_network'})
SET     n.name = 'Content Delivery Network',
    n.name_kr = 'CDN',
    n.domain = 'SE',
    n.definition = '사용자의 최단 ISP의 Cache 서버를 이용하여 안정적 컨텐츠 공급',
    n.aliases = ['Content Delivery Network', 'CDN'];

// --- 관계 ---

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '컨텐츠_보호'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'acl'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'cas'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Threat {id: 'cdr'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'drm'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '전자지문'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '워터마킹/포렌식마킹_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'fingerprinting_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '컨텐츠_관리'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'creative_commons_license'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'indecs'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'deep_packet_inspection'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'mpeg21'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: '컨텐츠_배포'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Technology {id: 'sw_streaming'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Concept {id: 'content_delivery_network'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Document {id: 'SE_220'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'acl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cas'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'cdr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '워터마킹/포렌식마킹_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fingerprinting_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'creative_commons_license'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'indecs'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deep_packet_inspection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mpeg21'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_배포'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sw_streaming'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'content_delivery_network'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_221: 데이터 마스킹
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_221'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'data_masking'})
SET     n.name = 'Data Masking',
    n.name_kr = '데이터 마스킹',
    n.domain = 'SE',
    n.aliases = ['데이터 마스킹'];

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'substitution'})
SET     n.name = '치환',
    n.name_kr = '치환',
    n.domain = 'SE';

MERGE (n:Concept {id: 'shuffling'})
SET     n.name = '셔플',
    n.name_kr = '셔플',
    n.domain = 'SE';

MERGE (n:Concept {id: 'encryption'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'null처리'})
SET     n.name = 'NULL처리',
    n.name_kr = 'NULL처리',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Concept {id: 'substitution'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Concept {id: 'shuffling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Concept {id: 'null처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Document {id: 'SE_221'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_masking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'substitution'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shuffling'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'null처리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_222: 스테가노 그래피 (Steganography)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_222'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'steganography'})
SET     n.name = 'Steganography',
    n.name_kr = '스테가노 그래피',
    n.domain = 'SE',
    n.aliases = ['Steganography', '스테가노 그래피'];

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '존재_은닉'})
SET     n.name = '존재 은닉',
    n.name_kr = '존재 은닉',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'steganography'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'steganography'})
MERGE (b:Concept {id: '존재_은닉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'steganography'})
MERGE (b:Document {id: 'SE_222'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'steganography'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '존재_은닉'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_223: Water Marking
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_223'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'water_marking'})
SET     n.name = 'Water Marking',
    n.name_kr = 'Water Marking',
    n.domain = 'SE',
    n.aliases = ['Water Marking'];

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '삽입기술(공간영역'})
SET     n.name = '삽입기술(공간영역',
    n.name_kr = '삽입기술(공간영역',
    n.domain = 'SE';

MERGE (n:Concept {id: '주파수영역)'})
SET     n.name = '주파수영역)',
    n.name_kr = '주파수영역)',
    n.domain = 'SE';

MERGE (n:Concept {id: '검출기술(공개형'})
SET     n.name = '검출기술(공개형',
    n.name_kr = '검출기술(공개형',
    n.domain = 'SE';

MERGE (n:Concept {id: '비공개형)'})
SET     n.name = '비공개형)',
    n.name_kr = '비공개형)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'fidelity'})
SET     n.name = 'Fidelity',
    n.name_kr = '비인지성',
    n.domain = 'SE',
    n.definition = '컨텐츠에 워터마크 삽입시 원본 품질에 영향이 없어야 함',
    n.aliases = ['Fidelity', '비인지성'];

MERGE (n:Concept {id: 'robustness'})
SET     n.name = 'Robustness',
    n.name_kr = '견고성',
    n.domain = 'SE',
    n.definition = '다양한 비의도적/고의적 공격에 견딜수 있어야 함 - 다양한 변조에도 워터마크 인식 가능',
    n.aliases = ['Robustness', '견고성'];

MERGE (n:Concept {id: 'fragility'})
SET     n.name = 'Fragility',
    n.name_kr = '연약성',
    n.domain = 'SE',
    n.definition = '복제시 워터마크 깨트림(세종대왕 지폐)',
    n.aliases = ['Fragility', '연약성'];

MERGE (n:Concept {id: 'tamper_resistance'})
SET     n.name = 'Tamper-Resistance',
    n.name_kr = '위조방지',
    n.domain = 'SE',
    n.definition = '위조에 저항성 보유',
    n.aliases = ['Tamper-Resistance', '위조방지'];

MERGE (n:Concept {id: 'key_restriction'})
SET     n.name = 'Key-Restriction',
    n.name_kr = '키 제한',
    n.domain = 'SE',
    n.definition = '정당 권한 사용자만 워터마크 추출 가능',
    n.aliases = ['Key-Restriction', '키 제한'];

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'SE',
    n.definition = '디지털 워터마킹';

MERGE (n:Concept {id: '스테가노그래피'})
SET     n.name = '스테가노그래피',
    n.name_kr = '스테가노그래피',
    n.domain = 'SE',
    n.definition = '군사, 테러 목적으로 비밀 정보를 삽입한 워터마크 - 장점 : 메시지 은닉 전송 - 단점 : 공격이 약하고 트래킹 불가';

MERGE (n:Concept {id: '핑거프린팅'})
SET     n.name = '핑거프린팅',
    n.name_kr = '핑거프린팅',
    n.domain = 'SE',
    n.definition = 'Dual Watermark를 통해 저작자와 구매자 정보를 같이 삽입 - 장점 : 공모공격에 강하고 구매자 추적 용이 - 단점 : 공모공격 기법의 어려움';

MERGE (n:Concept {id: '강도'})
SET     n.name = '강도',
    n.name_kr = '강도',
    n.domain = 'SE',
    n.definition = '강성(Robust)';

MERGE (n:Concept {id: 'fragile'})
SET     n.name = 'Fragile',
    n.name_kr = '연성',
    n.domain = 'SE',
    n.definition = '외부공격에 워터마크가 깨져 침입여부를 판단',
    n.aliases = ['Fragile', '연성'];

MERGE (n:Concept {id: '인지여부'})
SET     n.name = '인지여부',
    n.name_kr = '인지여부',
    n.domain = 'SE',
    n.definition = '가시적';

MERGE (n:Concept {id: '비가시적'})
SET     n.name = '비가시적',
    n.name_kr = '비가시적',
    n.domain = 'SE',
    n.definition = '특별한 과정 없이는 저작권 소유자 판별이 어려움 - 육안으로 식별할 수 없는 워터마크 삽입 - 컨텐츠의 품질 저하 없이 사용 가능, 검출과정 필요';

MERGE (n:Concept {id: '저작물'})
SET     n.name = '저작물',
    n.name_kr = '저작물',
    n.domain = 'SE',
    n.definition = '이미지';

MERGE (n:Concept {id: '오디오'})
SET     n.name = '오디오',
    n.name_kr = '오디오',
    n.domain = 'SE',
    n.definition = '청각적으로 들을 수 없는 부분에 삽입';

MERGE (n:Concept {id: '비디오'})
SET     n.name = '비디오',
    n.name_kr = '비디오',
    n.domain = 'SE',
    n.definition = '동영상 파일에 워터마크 삽입';

MERGE (n:Concept {id: '벡터'})
SET     n.name = '벡터',
    n.name_kr = '벡터',
    n.domain = 'SE',
    n.definition = '벡터기반 2, 3차원 이미지 파일에 보이지 않게 저작권 정보를 삽입';

MERGE (n:Concept {id: '텍스트'})
SET     n.name = '텍스트',
    n.name_kr = '텍스트',
    n.domain = 'SE',
    n.definition = '텍스트 파일에 저작권 정보를 삽입';

MERGE (n:Concept {id: 'spatial_domain'})
SET     n.name = '공간영역 삽입(spatial domain) 기술',
    n.name_kr = '공간영역 삽입(spatial domain) 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'frequency_domain'})
SET     n.name = '주파수 영역(Frequency Domain) 기술',
    n.name_kr = '주파수 영역(Frequency Domain) 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'blind'})
SET     n.name = '공개형(Blind) 방식',
    n.name_kr = '공개형(Blind) 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'non_blind'})
SET     n.name = '비공개형(non-Blind) 방식',
    n.name_kr = '비공개형(non-Blind) 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'digital_watermarking'})
SET     n.name = 'Digital Watermarking',
    n.name_kr = 'Digital Watermarking',
    n.domain = 'SE',
    n.aliases = ['Digital Watermarking'];

MERGE (n:Concept {id: 'fingerprinting'})
SET     n.name = 'Fingerprinting',
    n.name_kr = 'Fingerprinting',
    n.domain = 'SE',
    n.aliases = ['Fingerprinting'];

// --- 관계 ---

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '삽입기술(공간영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '주파수영역)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '검출기술(공개형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '비공개형)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'fidelity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'robustness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'fragility'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'tamper_resistance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'key_restriction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '스테가노그래피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '핑거프린팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '강도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'fragile'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '인지여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '비가시적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '저작물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '오디오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '비디오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '벡터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: '텍스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spatial_domain'})
MERGE (b:Concept {id: 'frequency_domain'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'spatial_domain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'frequency_domain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blind'})
MERGE (b:Concept {id: 'non_blind'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'blind'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'non_blind'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_watermarking'})
MERGE (b:Concept {id: 'fingerprinting'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'digital_watermarking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Concept {id: 'fingerprinting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Document {id: 'SE_223'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'water_marking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입기술(공간영역'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수영역)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검출기술(공개형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비공개형)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fidelity'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'robustness'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fragility'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tamper_resistance'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'key_restriction'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스테가노그래피'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핑거프린팅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fragile'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인지여부'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비가시적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저작물'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오디오'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비디오'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벡터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '텍스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spatial_domain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'frequency_domain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blind'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_blind'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_watermarking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fingerprinting'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_224: Finger Printing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_224'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'finger_printing'})
SET     n.name = 'Finger Printing',
    n.name_kr = 'Finger Printing',
    n.domain = 'SE',
    n.aliases = ['Finger Printing'];

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '공모공격'})
SET     n.name = '공모공격',
    n.name_kr = '공모공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '대칭형/비대칭형'})
SET     n.name = '대칭형/비대칭형',
    n.name_kr = '대칭형/비대칭형',
    n.domain = 'SE';

MERGE (n:Concept {id: 'averaging_attack'})
SET     n.name = 'Averaging Attack',
    n.name_kr = '평균화 공격',
    n.domain = 'SE',
    n.definition = '핑거프린팅된 다수의 컨텐츠를 서로 평균하여 새로운 콘텐츠를 생성하는 공격법',
    n.aliases = ['Averaging Attack', '평균화 공격'];

MERGE (n:Concept {id: 'max_min_attack'})
SET     n.name = 'Max-Min Attack',
    n.name_kr = '최대최소 공격',
    n.domain = 'SE',
    n.definition = '공모에 참가한 핑거프린팅된 컨텐츠에서 최소값과 최대값을 구한 후 그 평균값으로 새로운 컨텐츠를 생성하는 공격법',
    n.aliases = ['Max-Min Attack', '최대최소 공격'];

MERGE (n:Concept {id: 'zero_correlation_attack'})
SET     n.name = 'Zero-Correlation Attack',
    n.name_kr = '상관계수 제로화 공격',
    n.domain = 'SE',
    n.definition = '상관계수 음수화 공격이 상관계수를 음수로 유도하지만 핑거프린팅 정보가 지워졌다는 의미는 아닌 반면, 제로화 공격은 상관계수를 0에 가깝게 유도하여 핑거프린팅 정보의 검출이 불가능하게 만드는 공격',
    n.aliases = ['Zero-Correlation Attack', '상관계수 제로화 공격'];

MERGE (n:Concept {id: 'mosaic_attack'})
SET     n.name = 'Mosaic Attack',
    n.name_kr = '모자이크 공격',
    n.domain = 'SE',
    n.definition = '공모에 참여한 컨텐츠의 최대, 최소값을 이용 하여 상관계수의 값을 작게 만드는 공격과는 달리 핑거프린팅된 컨텐츠를 기하학적 모양으로 작게 나누어 새로운 컨텐츠를 생성하는 공격법 - 워터마킹의 잘림(cropping) 공격과 유사 - 핑거프린팅 정보의 추출은 파일단위로 이루어 지기 때문에 웹상에서 여러 조각으로 나누어진 이미지 컨텐츠의 경우 추출이 어려워짐',
    n.aliases = ['Mosaic Attack', '모자이크 공격'];

// --- 관계 ---

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: '공모공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: '대칭형/비대칭형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: 'averaging_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: 'max_min_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: 'zero_correlation_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Concept {id: 'mosaic_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Document {id: 'SE_224'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'finger_printing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공모공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대칭형/비대칭형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'averaging_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'max_min_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_correlation_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mosaic_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_225: DOI (Digital Object Identifier, 디지털 객체 식별자)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_225'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'doi'})
SET     n.name = 'DOI',
    n.name_kr = 'Digital Object Identifier, 디지털 객체 식별자',
    n.domain = 'SE',
    n.aliases = ['DOI', 'Digital Object Identifier, 디지털 객체 식별자'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '컨텐츠보안'})
SET     n.name = '컨텐츠보안',
    n.name_kr = '컨텐츠보안',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '컨텐츠보안'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'doi'})
MERGE (b:Concept {id: '컨텐츠보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'doi'})
MERGE (b:Document {id: 'SE_225'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'doi'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_226: INDECS(INteroperability of Data in E-Commerce System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_226'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'interoperability_of_data_in_e_commerce_system'})
SET     n.name = 'INteroperability of Data in E-Commerce System',
    n.name_kr = 'INDECS',
    n.domain = 'SE',
    n.aliases = ['INteroperability of Data in E-Commerce System', 'INDECS'];

MERGE (n:Concept {id: '콘텐츠보안'})
SET     n.name = '콘텐츠보안',
    n.name_kr = '콘텐츠보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '엔_크레파_en_crepa'})
SET     n.name = '엔 크레파(스) En CRePa(스)',
    n.name_kr = '엔 크레파(스) En CRePa(스)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'interoperability_of_data_in_e_commerce_system'})
MERGE (b:Concept {id: '엔_크레파_en_crepa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interoperability_of_data_in_e_commerce_system'})
MERGE (b:Document {id: 'SE_226'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interoperability_of_data_in_e_commerce_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔_크레파_en_crepa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_227: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_227'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_228: CAS (Conditional Access System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_228'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'conditional_access_system'})
SET     n.name = 'Conditional Access System',
    n.name_kr = 'CAS',
    n.domain = 'SE',
    n.aliases = ['Conditional Access System', 'CAS'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '컨텐츠보안'})
SET     n.name = '컨텐츠보안',
    n.name_kr = '컨텐츠보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'entitlement_mng_msg'})
SET     n.name = 'Entitlement Mng Msg',
    n.name_kr = 'EMM',
    n.domain = 'SE',
    n.definition = '시청자격관리메시지(수신자격, 사용자 정보)',
    n.aliases = ['Entitlement Mng Msg', 'EMM'];

MERGE (n:Concept {id: '스마트카드'})
SET     n.name = '스마트카드',
    n.name_kr = '스마트카드',
    n.domain = 'SE',
    n.definition = '고객정보 수록, EMM에 의해서 갱신';

MERGE (n:Concept {id: 'stb'})
SET     n.name = 'STB',
    n.name_kr = 'STB',
    n.domain = 'SE',
    n.definition = '암호해독 시스템 내장, Descrambling 수행',
    n.aliases = ['STB'];

MERGE (n:Concept {id: '정보보호'})
SET     n.name = '정보보호',
    n.name_kr = '정보보호',
    n.domain = 'SE',
    n.definition = 'CSA(Common Scrambling Algorithm), Simulcrypt(CAS 다중화)';

MERGE (n:Concept {id: 'scrambling'})
SET     n.name = 'Scrambling',
    n.name_kr = 'Scrambling',
    n.domain = 'SE',
    n.definition = '인가된 사용자만 시청토록 신호변환',
    n.aliases = ['Scrambling'];

// --- 관계 ---

MERGE (a:Concept {id: '컨텐츠보안'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: '컨텐츠보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: 'entitlement_mng_msg'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: '스마트카드'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: 'stb'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: '정보보호'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Concept {id: 'scrambling'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Document {id: 'SE_228'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'conditional_access_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'entitlement_mng_msg'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트카드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stb'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scrambling'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_229: 난독화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_229'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '난독화'})
SET     n.name = '난독화',
    n.name_kr = '난독화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sw_저작권_보호'})
SET     n.name = 'SW 저작권 보호',
    n.name_kr = 'SW 저작권 보호',
    n.domain = 'SE';

MERGE (n:Concept {id: '구데집제예'})
SET     n.name = '구데집제예',
    n.name_kr = '구데집제예',
    n.domain = 'SE';

MERGE (n:Concept {id: 'layout_obfuscation'})
SET     n.name = 'layout obfuscation',
    n.name_kr = '구획 난독화',
    n.domain = 'SE',
    n.definition = '프로그램에 큰 영향을 끼치지 않는 세부적인 요소를 변화하거나 제거하여 프로그램 복원에 성공하였더라도 프로그램 내용의 상당 부분을 훼손시켜 복원할 수 있도록 막는 방법',
    n.aliases = ['layout obfuscation', '구획 난독화'];

MERGE (n:Concept {id: 'data_obfuscation'})
SET     n.name = 'data obfuscation',
    n.name_kr = '데이터 난독화',
    n.domain = 'SE',
    n.definition = '데이터를 담을 변수를 나누거나 합치거나 읽기 어렵게 하는 방향의 모든 기술',
    n.aliases = ['data obfuscation', '데이터 난독화'];

MERGE (n:Concept {id: 'aggregation_obfuscation'})
SET     n.name = 'aggregation obfuscation',
    n.name_kr = '집합 난독화',
    n.domain = 'SE',
    n.definition = '순서를 이용해서 코드를 난독화(array transformation) -> 하나의 클래스를 두 개로 분할하여 난독화 (Split a class)->',
    n.aliases = ['aggregation obfuscation', '집합 난독화'];

MERGE (n:Concept {id: 'control_obfuscation'})
SET     n.name = 'Control obfuscation',
    n.name_kr = '제어 난독화',
    n.domain = 'SE',
    n.definition = '제어를 어지럽게 하고, 문장의 묶는 단위를 조절하는 방법',
    n.aliases = ['Control obfuscation', '제어 난독화'];

MERGE (n:Concept {id: 'preventive_obfuscation'})
SET     n.name = 'Preventive obfuscation',
    n.name_kr = '예방 난독화',
    n.domain = 'SE',
    n.definition = '이미 알려진 역 난독화 방법을 알고 그 방법을 봉쇄하는 방법',
    n.aliases = ['Preventive obfuscation', '예방 난독화'];

MERGE (n:Concept {id: 'layout'})
SET     n.name = 'Layout',
    n.name_kr = 'Layout',
    n.domain = 'SE',
    n.aliases = ['Layout'];

MERGE (n:Concept {id: 'data'})
SET     n.name = 'Data',
    n.name_kr = 'Data',
    n.domain = 'SE',
    n.aliases = ['Data'];

MERGE (n:Concept {id: 'control'})
SET     n.name = 'Control',
    n.name_kr = 'Control',
    n.domain = 'SE',
    n.aliases = ['Control'];

MERGE (n:Concept {id: 'preventive'})
SET     n.name = 'Preventive',
    n.name_kr = 'Preventive',
    n.domain = 'SE',
    n.aliases = ['Preventive'];

// --- 관계 ---

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: '구데집제예'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'layout_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'data_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'aggregation_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'control_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'preventive_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'layout'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Document {id: 'SE_229'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_저작권_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구데집제예'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layout_obfuscation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_obfuscation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aggregation_obfuscation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_obfuscation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preventive_obfuscation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preventive'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_230: 전자지문
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_230'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '전자지문'})
SET     n.name = '전자지문',
    n.name_kr = '전자지문',
    n.domain = 'SE';

MERGE (n:Concept {id: '컨텐츠보안'})
SET     n.name = '컨텐츠보안',
    n.name_kr = '컨텐츠보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '위변조'})
SET     n.name = '위변조',
    n.name_kr = '위변조',
    n.domain = 'SE';

MERGE (n:Concept {id: '해시_함수'})
SET     n.name = '해시 함수',
    n.name_kr = '해시 함수',
    n.domain = 'SE';

MERGE (n:Concept {id: '개념도1'})
SET     n.name = '개념도1',
    n.name_kr = '개념도1',
    n.domain = 'SE';

MERGE (n:Concept {id: '사용_예시'})
SET     n.name = '사용 예시',
    n.name_kr = '사용 예시',
    n.domain = 'SE',
    n.definition = '기업의 비밀기술문서를 영업비밀보호센터에 보관하고, 이후 영업비밀이 유출된 경우 유출된 영업비밀내용의 원본을 원래 기업이 보유하고 있음을 입증';

MERGE (n:Concept {id: '고려_사항'})
SET     n.name = '고려 사항',
    n.name_kr = '고려 사항',
    n.domain = 'SE',
    n.definition = '(법적근거)부정경쟁방지 및 영업비밀보호에 관한 법률 제 9 조의 2(’14.1.31) (운영기관)부정경쟁방지 및 영업비밀보호에 관한 법률 제 9 조의 3';

// --- 관계 ---

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '컨텐츠보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '위변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '해시_함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '개념도1'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '사용_예시'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Concept {id: '고려_사항'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Document {id: 'SE_230'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전자지문'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨텐츠보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위변조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해시_함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도1'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용_예시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려_사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_231: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_231'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_232: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_232'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_233: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_233'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_234: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_234'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_235: 안티포렌식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_235'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'anti_forensic'})
SET     n.name = 'Anti Forensic',
    n.name_kr = '안티포렌식',
    n.domain = 'SE',
    n.aliases = ['안티포렌식'];

MERGE (n:Concept {id: '디지털_포렌식'})
SET     n.name = '디지털 포렌식',
    n.name_kr = '디지털 포렌식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'degaussing'})
SET     n.name = 'Degaussing',
    n.name_kr = 'Degaussing',
    n.domain = 'SE',
    n.aliases = ['Degaussing'];

MERGE (n:Concept {id: '대응_기술'})
SET     n.name = '대응 기술',
    n.name_kr = '대응 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'anti_forensic'})
MERGE (b:Concept {id: '디지털_포렌식'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'degaussing'})
MERGE (b:Concept {id: 'anti_forensic'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '대응_기술'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'anti_forensic'})
MERGE (b:Concept {id: '대응_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'anti_forensic'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'anti_forensic'})
MERGE (b:Document {id: 'SE_235'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'anti_forensic'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_포렌식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'degaussing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_236: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_236'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_237.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_237.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_237.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_237.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_238: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_238'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_239: e-Discovery(전자적 증거개시)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_239'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'e_discovery'})
SET     n.name = 'e-Discovery',
    n.name_kr = '전자적 증거개시',
    n.domain = 'SE',
    n.aliases = ['e-Discovery', '전자적 증거개시'];

MERGE (n:Concept {id: '방어'})
SET     n.name = '방어',
    n.name_kr = '방어',
    n.domain = 'SE';

MERGE (n:Concept {id: 'e-discovery,_경영전략'})
SET     n.name = 'e-Discovery(전자적 증거개시), 경영전략',
    n.name_kr = 'e-Discovery(전자적 증거개시), 경영전략',
    n.domain = 'SE';

MERGE (n:Concept {id: '전자기록'})
SET     n.name = '전자기록',
    n.name_kr = '전자기록',
    n.domain = 'SE';

MERGE (n:Concept {id: '식별'})
SET     n.name = '식별',
    n.name_kr = '식별',
    n.domain = 'SE';

MERGE (n:Concept {id: '보존/수집'})
SET     n.name = '보존/수집',
    n.name_kr = '보존/수집',
    n.domain = 'SE';

MERGE (n:Concept {id: '처리/검토/분석'})
SET     n.name = '처리/검토/분석',
    n.name_kr = '처리/검토/분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '산출)'})
SET     n.name = '산출)',
    n.name_kr = '산출)',
    n.domain = 'SE';

MERGE (n:Concept {id: '기업적_측면'})
SET     n.name = '기업적 측면',
    n.name_kr = '기업적 측면',
    n.domain = 'SE',
    n.definition = '저장 및 검색해야 하는 정보의 대용량화, 제출하지 못했을 경우 법적 제재의 위력을 생각할 때, 기업의 존폐를 결정할 만큼 영향력이 큼';

MERGE (n:Concept {id: '사회적_측면'})
SET     n.name = '사회적 측면',
    n.name_kr = '사회적 측면',
    n.domain = 'SE',
    n.definition = '첨단기술을 소유하고 있는 기업이 외국기업과 법적 소송 시 e-Discovery 의 준비 미비로 인한 피해로 국가경쟁력 약화';

MERGE (n:Concept {id: '소스'})
SET     n.name = '소스',
    n.name_kr = '소스',
    n.domain = 'SE',
    n.definition = '정보관리';

MERGE (n:Concept {id: '모니터링_/아카이빙'})
SET     n.name = '모니터링 /아카이빙',
    n.name_kr = '모니터링 /아카이빙',
    n.domain = 'SE',
    n.definition = '식별';

MERGE (n:Concept {id: '증거개시'})
SET     n.name = '증거개시',
    n.name_kr = '증거개시',
    n.domain = 'SE',
    n.definition = '처리';

MERGE (n:Concept {id: '보고'})
SET     n.name = '보고',
    n.name_kr = '보고',
    n.domain = 'SE',
    n.definition = '산출';

MERGE (n:Concept {id: '도입배경'})
SET     n.name = '도입배경',
    n.name_kr = '도입배경',
    n.domain = 'SE',
    n.definition = '특허 소송은 민사 소송에 비해 승소율(1/3)과 처리기간(2배)이 과다하여 제도개선 필요 - 특허기술침해 사건은 증거훼손이 용이하여 현행 증거수집제도로는 입증에 한계';

MERGE (n:Concept {id: '주요절차'})
SET     n.name = '주요절차',
    n.name_kr = '주요절차',
    n.domain = 'SE',
    n.definition = '전문가 사실조사';

MERGE (n:Concept {id: '참조모델'})
SET     n.name = '참조모델',
    n.name_kr = '참조모델',
    n.domain = 'SE',
    n.definition = '독일 (대륙법계)';

// --- 관계 ---

MERGE (a:Concept {id: 'e-discovery,_경영전략'})
MERGE (b:Concept {id: '방어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전자기록'})
MERGE (b:Concept {id: 'e-discovery,_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '전자기록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '식별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '보존/수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '처리/검토/분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '산출)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '기업적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '사회적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '소스'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '모니터링_/아카이빙'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '증거개시'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '보고'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '도입배경'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '주요절차'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Concept {id: '참조모델'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Document {id: 'SE_239'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'e_discovery'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e-discovery,_경영전략'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기록'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보존/수집'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리/검토/분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링_/아카이빙'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증거개시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보고'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도입배경'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참조모델'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_240: ISO/IEC 27000시리즈
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_240'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iso/iec_27000시리즈'})
SET     n.name = 'ISO/IEC 27000시리즈',
    n.name_kr = 'ISO/IEC 27000시리즈',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_표준_및_관리적_보안'})
SET     n.name = '보안 표준(정책) 및 관리적 보안',
    n.name_kr = '보안 표준(정책) 및 관리적 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '개관_및_어휘'})
SET     n.name = '개관 및 어휘',
    n.name_kr = '개관 및 어휘',
    n.domain = 'SE';

MERGE (n:Concept {id: '요구사항'})
SET     n.name = '요구사항',
    n.name_kr = '요구사항',
    n.domain = 'SE';

MERGE (n:Concept {id: '실무규약'})
SET     n.name = '실무규약',
    n.name_kr = '실무규약',
    n.domain = 'SE';

MERGE (n:Concept {id: '이행_가이드라인'})
SET     n.name = '이행 가이드라인',
    n.name_kr = '이행 가이드라인',
    n.domain = 'SE';

MERGE (n:Concept {id: '측정'})
SET     n.name = '측정',
    n.name_kr = '측정',
    n.domain = 'SE';

MERGE (n:Concept {id: '이행관리'})
SET     n.name = '이행관리',
    n.name_kr = '이행관리',
    n.domain = 'SE';

MERGE (n:Concept {id: 'iso_iec_27000'})
SET     n.name = 'ISO/IEC 27000',
    n.name_kr = 'ISO/IEC 27000',
    n.domain = 'SE',
    n.definition = 'Overview & Vocabulary',
    n.aliases = ['ISO/IEC 27000'];

MERGE (n:Standard {id: 'iso_iec_27001'})
SET     n.name = 'ISO/IEC 27001',
    n.name_kr = 'ISO/IEC 27001',
    n.domain = 'SE',
    n.definition = 'ISMS Requirements Standard',
    n.aliases = ['ISO/IEC 27001'];

MERGE (n:Standard {id: 'iso_iec_27002'})
SET     n.name = 'ISO/IEC 27002',
    n.name_kr = 'ISO/IEC 27002',
    n.domain = 'SE',
    n.definition = 'Code of Practice for ISMS',
    n.aliases = ['ISO/IEC 27002'];

MERGE (n:Standard {id: 'iso_iec_27003'})
SET     n.name = 'ISO/IEC 27003',
    n.name_kr = 'ISO/IEC 27003',
    n.domain = 'SE',
    n.definition = 'ISMS Implementation Guide',
    n.aliases = ['ISO/IEC 27003'];

MERGE (n:Concept {id: 'iso_iec_27004'})
SET     n.name = 'ISO/IEC 27004',
    n.name_kr = 'ISO/IEC 27004',
    n.domain = 'SE',
    n.definition = 'Measurement',
    n.aliases = ['ISO/IEC 27004'];

MERGE (n:Concept {id: 'iso_iec_27005'})
SET     n.name = 'ISO/IEC 27005',
    n.name_kr = 'ISO/IEC 27005',
    n.domain = 'SE',
    n.definition = 'Risk Management',
    n.aliases = ['ISO/IEC 27005'];

MERGE (n:Metric {id: 'iso_iec_27006'})
SET     n.name = 'ISO/IEC 27006',
    n.name_kr = 'ISO/IEC 27006',
    n.domain = 'SE',
    n.definition = 'Certification or registration Process',
    n.aliases = ['ISO/IEC 27006'];

MERGE (n:Concept {id: 'iso_iec_27011'})
SET     n.name = 'ISO/IEC 27011',
    n.name_kr = 'ISO/IEC 27011',
    n.domain = 'SE',
    n.definition = 'ISM guideline for telecommunications organizations',
    n.aliases = ['ISO/IEC 27011'];

MERGE (n:Concept {id: 'iso_iec_27033'})
SET     n.name = 'ISO/IEC 27033',
    n.name_kr = 'ISO/IEC 27033',
    n.domain = 'SE',
    n.definition = 'IT network security',
    n.aliases = ['ISO/IEC 27033'];

MERGE (n:Concept {id: 'iso_iec_27799'})
SET     n.name = 'ISO/IEC 27799',
    n.name_kr = 'ISO/IEC 27799',
    n.domain = 'SE',
    n.definition = 'Health Organizations',
    n.aliases = ['ISO/IEC 27799'];

// --- 관계 ---

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '개관_및_어휘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '실무규약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '이행_가이드라인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: '이행관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27000'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Standard {id: 'iso_iec_27001'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Standard {id: 'iso_iec_27002'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Standard {id: 'iso_iec_27003'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27004'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27005'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Metric {id: 'iso_iec_27006'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27011'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27033'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Concept {id: 'iso_iec_27799'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Document {id: 'SE_240'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iso/iec_27000시리즈'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개관_및_어휘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실무규약'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이행_가이드라인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이행관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27000'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_iec_27001'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_iec_27002'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_iec_27003'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27004'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27005'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'iso_iec_27006'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27011'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27033'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27799'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_241: ISO 27001
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_241'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_27001'})
SET     n.name = 'ISO 27001',
    n.name_kr = 'ISO 27001',
    n.domain = 'SE',
    n.aliases = ['ISO 27001'];

MERGE (n:Concept {id: '보안_표준_및_관리적_보안'})
SET     n.name = '보안 표준(정책) 및 관리적 보안',
    n.name_kr = '보안 표준(정책) 및 관리적 보안',
    n.domain = 'SE';

MERGE (n:Standard {id: 'isms_포함_정리'})
SET     n.name = 'ISMS 포함 정리',
    n.name_kr = 'ISMS 포함 정리',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증_심사'})
SET     n.name = '인증 심사',
    n.name_kr = '인증 심사',
    n.domain = 'SE',
    n.definition = '신청 및 접수';

MERGE (n:Concept {id: '인증_심사_계약'})
SET     n.name = '인증 심사 계약',
    n.name_kr = '인증 심사 계약',
    n.domain = 'SE',
    n.definition = '인증 심사 계획의 협의 및 통보';

MERGE (n:Concept {id: '문서_실사'})
SET     n.name = '문서 실사',
    n.name_kr = '문서 실사',
    n.domain = 'SE',
    n.definition = '제출 문서(정보 보호 정책서, 위험 조치 계획서 등)의 검토 및 확인';

MERGE (n:Concept {id: '본_실사'})
SET     n.name = '본 실사',
    n.name_kr = '본 실사',
    n.domain = 'SE',
    n.definition = '심사 기준에 따른 심사';

MERGE (n:Concept {id: '실사_결과_검토'})
SET     n.name = '실사 결과 검토',
    n.name_kr = '실사 결과 검토',
    n.domain = 'SE',
    n.definition = '심사 참여 심사원의 검토';

MERGE (n:Concept {id: '경부적합_사항의_조치계획'})
SET     n.name = '경부적합 사항의 조치계획',
    n.name_kr = '경부적합 사항의 조치계획',
    n.domain = 'SE',
    n.definition = '심사 시 도출된 경부적합 사항에 대하여 조치 계획을 작성하고 심사기관에 통보';

MERGE (n:Concept {id: '심사결과보고서의_작성'})
SET     n.name = '심사결과보고서의 작성',
    n.name_kr = '심사결과보고서의 작성',
    n.domain = 'SE',
    n.definition = '심사 결과 보고서 작성 및 제출';

MERGE (n:Concept {id: '인증서_발급'})
SET     n.name = '인증서 발급',
    n.name_kr = '인증서 발급',
    n.domain = 'SE',
    n.definition = '인증서 발급';

MERGE (n:Concept {id: '유효_실사'})
SET     n.name = '유효 실사',
    n.name_kr = '유효 실사',
    n.domain = 'SE',
    n.definition = '인증의 내용대로 운영되고 있는지 주기적(매 6개월 단위)로 확인';

MERGE (n:Concept {id: '갱신_심사'})
SET     n.name = '갱신 심사',
    n.name_kr = '갱신 심사',
    n.domain = 'SE',
    n.definition = '유효기간의 만료 (3년)';

MERGE (n:Concept {id: '인증_범위의_선정'})
SET     n.name = '인증 범위의 선정',
    n.name_kr = '인증 범위의 선정',
    n.domain = 'SE',
    n.definition = '조작, 업무프로세스, 기술 분야를 고려하여 한 부분에 치우치지 않고 적절한 수준에서 관리 될 수 있는 범위를 선정';

MERGE (n:Concept {id: '통제_항목의_선정'})
SET     n.name = '통제 항목의 선정',
    n.name_kr = '통제 항목의 선정',
    n.domain = 'SE',
    n.definition = '통제 항목의 의미를 해석하고 기업 환경에 적합하게 적용하여 이행 단계에서 혼선을 줄임';

MERGE (n:Concept {id: '지속적인_프로세스'})
SET     n.name = '지속적인 프로세스',
    n.name_kr = '지속적인 프로세스',
    n.domain = 'SE',
    n.definition = '인증 획득은 관리 체계 수립 및 이행 과정에서 얻어지는 결과 이외에도 지속적으로 관리/관찰 계획을 수립하고 실행 하여 정보 보호 체계를 수립';

MERGE (n:Concept {id: '사후_심사'})
SET     n.name = '사후 심사',
    n.name_kr = '사후 심사',
    n.domain = 'SE',
    n.definition = '인증 획득 후 사후관리 심사 등에 대비하여 부가적 업무에 대한 고려 필요';

// --- 관계 ---

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Standard {id: 'isms_포함_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '인증_심사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '인증_심사_계약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '문서_실사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '본_실사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '실사_결과_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '경부적합_사항의_조치계획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '심사결과보고서의_작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '인증서_발급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '유효_실사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '갱신_심사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '인증_범위의_선정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '통제_항목의_선정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '지속적인_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Concept {id: '사후_심사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Document {id: 'SE_241'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_27001'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_표준_및_관리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'isms_포함_정리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_심사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_심사_계약'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서_실사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '본_실사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실사_결과_검토'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경부적합_사항의_조치계획'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심사결과보고서의_작성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_발급'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효_실사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '갱신_심사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_범위의_선정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통제_항목의_선정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적인_프로세스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사후_심사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 311개
// 관계: 631개
// ================================================================