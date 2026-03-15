// ================================================================
// SE 도메인 (SE_101 ~ SE_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_087: 자동화분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_087'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '자동화분석'})
SET     n.name = '자동화분석',
    n.name_kr = '자동화분석',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_분석방법'})
SET     n.name = '악성코드 분석방법',
    n.name_kr = '악성코드 분석방법',
    n.domain = 'SE';

MERGE (n:Concept {id: '특징_도출_단계'})
SET     n.name = '특징 도출 단계',
    n.name_kr = '특징 도출 단계',
    n.domain = 'SE';

MERGE (n:Concept {id: '상호작용_단계'})
SET     n.name = '상호작용 단계',
    n.name_kr = '상호작용 단계',
    n.domain = 'SE';

MERGE (n:Concept {id: '자동화_분석_단계'})
SET     n.name = '자동화 분석 단계',
    n.name_kr = '자동화 분석 단계',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Threat {id: '악성코드_분석방법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Concept {id: '특징_도출_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Concept {id: '상호작용_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Concept {id: '자동화_분석_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Document {id: 'SE_087'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자동화분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_분석방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징_도출_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호작용_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화_분석_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_088.1: 악성코드 탐지기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_088.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: '악성코드_탐지기법'})
SET     n.name = '악성코드 탐지기법',
    n.name_kr = '악성코드 탐지기법',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_탐지기술'})
SET     n.name = '악성코드 탐지기술',
    n.name_kr = '악성코드 탐지기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'signature'})
SET     n.name = '시그니처',
    n.name_kr = '시그니처',
    n.domain = 'SE';

MERGE (n:Concept {id: 'heuristic'})
SET     n.name = '휴리스틱',
    n.name_kr = '휴리스틱',
    n.domain = 'SE';

MERGE (n:Concept {id: '행위기반_탐지기법'})
SET     n.name = '행위기반 탐지기법',
    n.name_kr = '행위기반 탐지기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '스트링_시그니처'})
SET     n.name = '스트링 시그니처',
    n.name_kr = '스트링 시그니처',
    n.domain = 'SE';

MERGE (n:Concept {id: '명령어_빈도수'})
SET     n.name = '명령어 빈도수',
    n.name_kr = '명령어 빈도수',
    n.domain = 'SE';

MERGE (n:Concept {id: 'cfg_시그니처'})
SET     n.name = 'CFG 시그니처',
    n.name_kr = 'CFG 시그니처',
    n.domain = 'SE';

MERGE (n:Concept {id: '바이트_시퀀스'})
SET     n.name = '바이트 시퀀스',
    n.name_kr = '바이트 시퀀스',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Threat {id: '악성코드_탐지기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: 'signature'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: 'heuristic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: '행위기반_탐지기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: '스트링_시그니처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: '명령어_빈도수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: 'cfg_시그니처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Concept {id: '바이트_시퀀스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Document {id: 'SE_088.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: '악성코드_탐지기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_탐지기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'signature'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heuristic'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행위기반_탐지기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스트링_시그니처'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령어_빈도수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cfg_시그니처'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바이트_시퀀스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_088.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_088.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_091: 사이버 게놈(Cyber Genome)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_091'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_genome'})
SET     n.name = 'Cyber Genome',
    n.name_kr = '사이버 게놈',
    n.domain = 'SE',
    n.aliases = ['Cyber Genome', '사이버 게놈'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '기타/시사'})
SET     n.name = '기타/시사',
    n.name_kr = '기타/시사',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_api_시퀀스_추출'})
SET     n.name = '악성코드 API 시퀀스 추출',
    n.name_kr = '악성코드 API 시퀀스 추출',
    n.domain = 'SE';

MERGE (n:Threat {id: 'api_기반의_악성코드_특성인자_추출'})
SET     n.name = 'API 기반의 악성코드 특성인자 추출',
    n.name_kr = 'API 기반의 악성코드 특성인자 추출',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sequence_alignment'})
SET     n.name = '서열 정렬',
    n.name_kr = '서열 정렬',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_유사도_분석'})
SET     n.name = '악성코드 유사도 분석',
    n.name_kr = '악성코드 유사도 분석',
    n.domain = 'SE';

MERGE (n:Concept {id: '산업계'})
SET     n.name = '산업계',
    n.name_kr = '산업계',
    n.domain = 'SE',
    n.definition = 'Invincea사에서 사이버게놈 프로젝트의 일환으로 Cynomix라는 시스템을 개발 중';

MERGE (n:Concept {id: '연구기관'})
SET     n.name = '연구기관',
    n.name_kr = '연구기관',
    n.domain = 'SE',
    n.definition = '미국의 HBGary 연구소는 새로운 형식의 행위 기반 탐지기술로 Digital DNA 기술을 개발함';

MERGE (n:Threat {id: '학계'})
SET     n.name = '학계',
    n.name_kr = '학계',
    n.domain = 'SE',
    n.definition = '컴퓨터의 16진수 헥사 값을 DNA에서 표현하는 20가지의 아미노산의 문자열로 치환한 후 개별 악성코드 프로세스의 행위를 데이터 마이닝 기법을 적용하여 탐지하는 알고리즘이 소개됨';

// --- 관계 ---

MERGE (a:Concept {id: '기타/시사'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Concept {id: '기타/시사'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Threat {id: '악성코드_api_시퀀스_추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Threat {id: 'api_기반의_악성코드_특성인자_추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Concept {id: 'sequence_alignment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Threat {id: '악성코드_유사도_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Concept {id: '산업계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Concept {id: '연구기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Threat {id: '학계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Document {id: 'SE_091'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_genome'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타/시사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_api_시퀀스_추출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'api_기반의_악성코드_특성인자_추출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence_alignment'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_유사도_분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구기관'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '학계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_092.1: OWASP Top 10
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_092.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'owasp_top_10'})
SET     n.name = 'OWASP Top 10',
    n.name_kr = 'OWASP Top 10',
    n.domain = 'SE',
    n.aliases = ['OWASP Top 10'];

MERGE (n:Concept {id: 'broken_access_control'})
SET     n.name = '취약한 접근 통제',
    n.name_kr = '취약한 접근 통제',
    n.domain = 'SE';

MERGE (n:Concept {id: 'cryptographic_failures'})
SET     n.name = '암호학적 실패',
    n.name_kr = '암호학적 실패',
    n.domain = 'SE';

MERGE (n:Concept {id: 'injection'})
SET     n.name = '인젝션',
    n.name_kr = '인젝션',
    n.domain = 'SE';

MERGE (n:Concept {id: 'insecure_design'})
SET     n.name = '안전하지 않은 설계',
    n.name_kr = '안전하지 않은 설계',
    n.domain = 'SE';

MERGE (n:Concept {id: 'security_misconfiguration'})
SET     n.name = '보안 설정 오류',
    n.name_kr = '보안 설정 오류',
    n.domain = 'SE';

MERGE (n:Concept {id: 'vulnerable_and_outdated_components'})
SET     n.name = '취약하고 오래된 컴포넌트',
    n.name_kr = '취약하고 오래된 컴포넌트',
    n.domain = 'SE';

MERGE (n:Concept {id: 'identification_and_authentication_failures'})
SET     n.name = '식별 및 인증 실패',
    n.name_kr = '식별 및 인증 실패',
    n.domain = 'SE';

MERGE (n:Metric {id: 'software_and_data_integrity_failures'})
SET     n.name = '소프트웨어와 데이터 무결성 실패',
    n.name_kr = '소프트웨어와 데이터 무결성 실패',
    n.domain = 'SE';

MERGE (n:Concept {id: 'server_side_request_forgery'})
SET     n.name = '서버 사이드 요청 변조',
    n.name_kr = '서버 사이드 요청 변조',
    n.domain = 'SE';

MERGE (n:Concept {id: '개발자_측면'})
SET     n.name = '개발자 측면',
    n.name_kr = '개발자 측면',
    n.domain = 'SE',
    n.definition = '어플리케이션 보안 요구 사항';

MERGE (n:Concept {id: '어플리케이션_보안_아키텍처'})
SET     n.name = '어플리케이션 보안 아키텍처',
    n.name_kr = '어플리케이션 보안 아키텍처',
    n.domain = 'SE',
    n.definition = '설계 초기부터 보안을 고려한 설계 - OWASP 개발자 가이드 활용';

MERGE (n:Concept {id: '표준_보완_통제'})
SET     n.name = '표준 보완 통제',
    n.name_kr = '표준 보완 통제',
    n.domain = 'SE',
    n.definition = '표준화된 보안 통제 모델을 개발자에게 제공하여 개발을 단순화 - OWASP 기업 보안 API (ESAPI) 참조';

MERGE (n:Concept {id: '보안_개발_생명_주기'})
SET     n.name = '보안 개발 생명 주기',
    n.name_kr = '보안 개발 생명 주기',
    n.domain = 'SE',
    n.definition = '특정한 위험에 맞는 소프트웨어 보안 전략 도출 및 구현';

MERGE (n:Concept {id: '어플리케이션_보안_교육'})
SET     n.name = '어플리케이션 보안 교육',
    n.name_kr = '어플리케이션 보안 교육',
    n.domain = 'SE',
    n.definition = '웹 개발자를 대상으로 한 보안 교육 선행';

MERGE (n:Concept {id: '검증자_측면'})
SET     n.name = '검증자 측면',
    n.name_kr = '검증자 측면',
    n.domain = 'SE',
    n.definition = '보안 검증 프로세스 정립';

MERGE (n:Concept {id: '조직_측면'})
SET     n.name = '조직 측면',
    n.name_kr = '조직 측면',
    n.domain = 'SE',
    n.definition = '시작단계';

MERGE (n:Concept {id: '위험_기반_포트폴리오_접근_방식'})
SET     n.name = '위험 기반 포트폴리오 접근 방식',
    n.name_kr = '위험 기반 포트폴리오 접근 방식',
    n.domain = 'SE',
    n.definition = '포트폴리오를 식별하고 우선 순위 결정 - 어플리케이션 위험 분류 모델 개발 - 위험 등급 모델 수립';

MERGE (n:Concept {id: '강력한_기반_수립'})
SET     n.name = '강력한 기반 수립',
    n.name_kr = '강력한 기반 수립',
    n.domain = 'SE',
    n.definition = '모든 어플리케이션 보안 기준선을 제공하는 정책과 표준 수립 - 설계와 개발 가이드를 제공할 수 있는 보안 통제의 정의';

MERGE (n:Concept {id: '기존_프로세스로_보안_통합'})
SET     n.name = '기존 프로세스로 보안 통합',
    n.name_kr = '기존 프로세스로 보안 통합',
    n.domain = 'SE',
    n.definition = '보안 구현과 검증 활동을 기존 개발, 운영 프로세스와 통합 - 성공적으로 수행할 수 있는 전문가 지원과 서비스 제공';

MERGE (n:Concept {id: '경영진_가시성_확보'})
SET     n.name = '경영진 가시성 확보',
    n.name_kr = '경영진 가시성 확보',
    n.domain = 'SE',
    n.definition = '수집된 데이터에 대한 분석과 평가 지수를 기반으로 개선과 투자 결정을 주도 - 전략적이고 체계적인 개선 사항을 주도하기 위해 주원인과 취약성 패턴 분석 (구현과 검증 활동)';

// --- 관계 ---

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'owasp_top_10'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'broken_access_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'cryptographic_failures'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'injection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'insecure_design'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'security_misconfiguration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'vulnerable_and_outdated_components'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'identification_and_authentication_failures'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Metric {id: 'software_and_data_integrity_failures'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'server_side_request_forgery'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '개발자_측면'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '어플리케이션_보안_아키텍처'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '표준_보완_통제'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '보안_개발_생명_주기'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '어플리케이션_보안_교육'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '검증자_측면'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '조직_측면'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '위험_기반_포트폴리오_접근_방식'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '강력한_기반_수립'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '기존_프로세스로_보안_통합'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: '경영진_가시성_확보'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Document {id: 'SE_092.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'broken_access_control'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cryptographic_failures'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'injection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'insecure_design'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security_misconfiguration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vulnerable_and_outdated_components'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'identification_and_authentication_failures'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'software_and_data_integrity_failures'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'server_side_request_forgery'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_보안_아키텍처'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_보완_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_개발_생명_주기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_보안_교육'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검증자_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_기반_포트폴리오_접근_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강력한_기반_수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_프로세스로_보안_통합'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영진_가시성_확보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_092.2: OWASP API Security top 10
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_092.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'owasp_api_security_top_10'})
SET     n.name = 'OWASP API Security top 10',
    n.name_kr = 'OWASP API Security top 10',
    n.domain = 'SE',
    n.aliases = ['OWASP API Security top 10'];

MERGE (n:Concept {id: 'owasp_top_10'})
SET     n.name = 'OWASP Top 10',
    n.name_kr = 'OWASP Top 10',
    n.domain = 'SE',
    n.aliases = ['OWASP Top 10'];

MERGE (n:Concept {id: 'api1_broken_object_level_authorization'})
SET     n.name = 'API1. Broken object level authorization',
    n.name_kr = 'API1. Broken object level authorization',
    n.domain = 'SE',
    n.aliases = ['API1. Broken object level authorization'];

MERGE (n:Concept {id: 'api2_broken_authentication'})
SET     n.name = 'API2. Broken authentication',
    n.name_kr = 'API2. Broken authentication',
    n.domain = 'SE',
    n.definition = '인증이 잘못 구현된 경우, 공격자는 API 사용자를 사칭하여 기밀 데이터에 액세스 가능 - URL에 포함된 자격 증명 및 키 - 무차별 대입 공격 및 크리덴셜 스터핑에 취약한 인증 - 액세스 토큰 유효성 검사 부족',
    n.aliases = ['API2. Broken authentication'];

MERGE (n:Concept {id: 'api3_excessive_data_exposure'})
SET     n.name = 'API3. Excessive data exposure',
    n.name_kr = 'API3. Excessive data exposure',
    n.domain = 'SE',
    n.definition = '많은 API가 데이터를 노출하는 과정에서 오류를 범하며, 데이터를 적절하게 필터링하기 위해 API 사용자에게 의존 - 권한이 없는 사람이 데이터를 볼 수 있음.',
    n.aliases = ['API3. Excessive data exposure'];

MERGE (n:Concept {id: 'api6_mass_assignment'})
SET     n.name = 'API6. Mass assignment',
    n.name_kr = 'API6. Mass assignment',
    n.domain = 'SE',
    n.aliases = ['API6. Mass assignment'];

MERGE (n:Technology {id: 'api7_security_misconfiguration'})
SET     n.name = 'API7. Security misconfiguration',
    n.name_kr = 'API7. Security misconfiguration',
    n.domain = 'SE',
    n.definition = '잘못 설정된 HTTP 헤더, 불필요한 HTTP 메서드, 중요한 정보가 포함된 "장황한 오류 메시지 등 API 설정 시 발생하는 다양한 실수가 포함됨',
    n.aliases = ['API7. Security misconfiguration'];

MERGE (n:Threat {id: 'api8_injection'})
SET     n.name = 'API8. Injection',
    n.name_kr = 'API8. Injection',
    n.domain = 'SE',
    n.definition = '공격자는 API에 특수 명령을 보내 데이터를 노출하거나 다른 예기치 않은 작업을 실행하도록 함. - 대표적으로 SQL Injection 공격이 있음',
    n.aliases = ['API8. Injection'];

MERGE (n:Concept {id: 'api9_improper_assets_management'})
SET     n.name = 'API9. Improper assets management',
    n.name_kr = 'API9. Improper assets management',
    n.domain = 'SE',
    n.definition = 'Production API와 더 이상 사용되지 않는 API를 모두 추적하지 않을 때 발생',
    n.aliases = ['API9. Improper assets management'];

// --- 관계 ---

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Concept {id: 'owasp_top_10'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Concept {id: 'api1_broken_object_level_authorization'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Concept {id: 'api2_broken_authentication'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Concept {id: 'api3_excessive_data_exposure'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Concept {id: 'api6_mass_assignment'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Technology {id: 'api7_security_misconfiguration'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Threat {id: 'api8_injection'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Concept {id: 'api9_improper_assets_management'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Document {id: 'SE_092.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'owasp_api_security_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api1_broken_object_level_authorization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api2_broken_authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api3_excessive_data_exposure'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api6_mass_assignment'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'api7_security_misconfiguration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'api8_injection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api9_improper_assets_management'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_093.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_093.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_093.2: SQL Injection
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_093.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'sql_injection'})
SET     n.name = 'SQL Injection',
    n.name_kr = 'SQL Injection',
    n.domain = 'SE',
    n.aliases = ['SQL Injection'];

MERGE (n:Concept {id: 'owasp_top_10'})
SET     n.name = 'OWASP Top 10',
    n.name_kr = '2017',
    n.domain = 'SE',
    n.aliases = ['OWASP Top 10', '2017'];

MERGE (n:Concept {id: '파라메터_변조'})
SET     n.name = '파라메터 변조',
    n.name_kr = '파라메터 변조',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sql_query_조작/변경'})
SET     n.name = 'SQL Query 조작/변경',
    n.name_kr = 'SQL Query 조작/변경',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증우회'})
SET     n.name = '인증우회',
    n.name_kr = '인증우회',
    n.domain = 'SE',
    n.definition = '인증을 처리하는 모듈이 입력 값에 대해 적절히 검사하지 않았을 때 공격자는 비정상적인 SQL Query를 삽입할 수 있고 이를 이용해 사용중인 데이터베이스에 영향을 줄 수 있음 -주로 로그인 창에 적용되는 기법, 이용자 아이디와 패스워드를 몰라도 로그인 할 수 있게 해줌';

MERGE (n:Threat {id: '권한상승'})
SET     n.name = '권한상승',
    n.name_kr = '권한상승',
    n.domain = 'SE',
    n.definition = '공격자가 DB의 시스템 권한을 획득한다면, SQL에서 기본적으로 제공하는 확장 프로시저를 이용하여 악성코드를 삽입하거나 DB를 변경하는 등의 여러 가지 시스템 명령어를 실행시켜 악용 - xp_cmdshell: 임의의 명령 실행을 허가하는 내장된 저장 프로시저 - 기타 저장 프로시저 xp_servicecontrol 프로시저는 사용자가 작동, 정지, 일시정지';

MERGE (n:Concept {id: '시스템_에러_이용'})
SET     n.name = '시스템 에러 이용',
    n.name_kr = '시스템 에러 이용',
    n.domain = 'SE',
    n.definition = '에러메시지를 통하여 정보 얻기 - 조작된 URL을 요청하게 되면 홈페이지는 에러 메시지들을 발생 - 에러 메시지는 공격자에게 유용한 정보를 제공하여 쉽게 DB 열람 및 시스템 명령어를 수행할 수 있음';

MERGE (n:Threat {id: '데이터베이스에_저장된_데이터의_열람/조작'})
SET     n.name = '데이터베이스에 저장된 데이터의 열람/조작',
    n.name_kr = '데이터베이스에 저장된 데이터의 열람/조작',
    n.domain = 'SE',
    n.definition = 'Error-Based Injection, Blind SQL Injection 등의 기법을 통해 주요 데이터의 조회, 테이블 생성 등 데이터베이스에 대한 다양한 공격 가능';

MERGE (n:Concept {id: 'db_확인'})
SET     n.name = 'DB 확인',
    n.name_kr = 'DB 확인',
    n.domain = 'SE',
    n.definition = '임시테이블이나 이용자 계정으로 확인 - HDSI 툴에 의한 침입 : T_Jiaozhu, jiaozhu, comd_list, xiaopan, Reg_Arrt 등의 테이블을 생성 - D-SQL에 의한 침입: D99_Tmp라는 테이블 생성';

MERGE (n:Concept {id: 'web_log_확인'})
SET     n.name = 'Web Log 확인',
    n.name_kr = 'Web Log 확인',
    n.domain = 'SE',
    n.definition = '테이블 관련한 Create나 Select 구문이 없는지를 확인 - 확장 저장 프로시저에 대한 로그가 존재 - 검색 할 문자열 : XP_CMDSHELL, Net, user, Update, Insert, drop table 등';

MERGE (n:Threat {id: '수동확인_방법'})
SET     n.name = '수동확인 방법',
    n.name_kr = '수동확인 방법',
    n.domain = 'SE',
    n.definition = 'SQL Injection공격에 취약한지 검사하는 방법으로 자신의 사이트가 SQL Injection 취약점에 노출되어 있는지 간단히 점검해 볼 수 있음 - GET 방식 SQL 주입 공격 탐색 - POST 방식 SQL 주입공격 탐색 - 테스트 문자열 ① ‘ or 1=1-- ② “ or 1=1-- ③ or 1=1-- ④ ‘ or ‘a’=’a ⑤ “ or “a”=';

MERGE (n:Threat {id: '자동확인_방법'})
SET     n.name = '자동확인 방법',
    n.name_kr = '자동확인 방법',
    n.domain = 'SE',
    n.definition = '빠른 시간 내에 SQL Injection 문제점들을 찾기 위해서는 자동화된 도구를 이용 - Paros Proxy를 이용한 자동 검색 : 서핑을 완료한 페이지에 대하여만 SQL Injection 취약점이 존재하는지 점검 가능 - nikto web CGI스캐너 : 기존에 잘 알려진 SQL Injection취약점에 대해서만 검색 가능하나 실제 서버의 응답결과를';

// --- 관계 ---

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: 'owasp_top_10'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: '파라메터_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: 'sql_query_조작/변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: '인증우회'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Threat {id: '권한상승'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: '시스템_에러_이용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Threat {id: '데이터베이스에_저장된_데이터의_열람/조작'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: 'db_확인'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Concept {id: 'web_log_확인'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Threat {id: '수동확인_방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Threat {id: '자동확인_방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Document {id: 'SE_093.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'sql_injection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파라메터_변조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql_query_조작/변경'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증우회'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '권한상승'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_에러_이용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '데이터베이스에_저장된_데이터의_열람/조작'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_log_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '수동확인_방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '자동확인_방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_094: XSS (Cross Site Script)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_094'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'cross_site_script'})
SET     n.name = 'Cross Site Script',
    n.name_kr = 'XSS',
    n.domain = 'SE',
    n.aliases = ['Cross Site Script', 'XSS'];

MERGE (n:Concept {id: 'owasp_top_10'})
SET     n.name = 'OWASP Top 10',
    n.name_kr = '2017',
    n.domain = 'SE',
    n.aliases = ['OWASP Top 10', '2017'];

MERGE (n:Threat {id: 'xss'})
SET     n.name = 'XSS',
    n.name_kr = 'XSS',
    n.domain = 'SE',
    n.aliases = ['XSS'];

MERGE (n:Concept {id: '스크립트_변조'})
SET     n.name = '스크립트 변조',
    n.name_kr = '스크립트 변조',
    n.domain = 'SE';

MERGE (n:Concept {id: 'session_hijack'})
SET     n.name = 'Session hijack',
    n.name_kr = 'Session hijack',
    n.domain = 'SE',
    n.aliases = ['Session hijack'];

MERGE (n:Threat {id: 'stored_xss'})
SET     n.name = 'Stored XSS',
    n.name_kr = 'Stored XSS',
    n.domain = 'SE',
    n.aliases = ['Stored XSS'];

MERGE (n:Threat {id: 'reflected_xss'})
SET     n.name = 'Reflected XSS',
    n.name_kr = 'Reflected XSS',
    n.domain = 'SE',
    n.aliases = ['Reflected XSS'];

MERGE (n:Threat {id: 'dom_xss'})
SET     n.name = 'DOM XSS',
    n.name_kr = 'DOM XSS',
    n.domain = 'SE',
    n.aliases = ['DOM XSS'];

// --- 관계 ---

MERGE (a:Threat {id: 'xss'})
MERGE (b:Concept {id: 'owasp_top_10'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Concept {id: '스크립트_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Concept {id: 'session_hijack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Threat {id: 'stored_xss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Threat {id: 'reflected_xss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Threat {id: 'dom_xss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Document {id: 'SE_094'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'cross_site_script'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'xss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스크립트_변조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'session_hijack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'stored_xss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'reflected_xss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'dom_xss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_095: CSRF
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_095'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'csrf'})
SET     n.name = 'CSRF',
    n.name_kr = 'CSRF',
    n.domain = 'SE',
    n.aliases = ['CSRF'];

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Threat {id: 'xss'})
SET     n.name = 'XSS',
    n.name_kr = 'XSS',
    n.domain = 'SE',
    n.aliases = ['XSS'];

MERGE (n:Concept {id: 'one_click_attack'})
SET     n.name = 'One-click attack',
    n.name_kr = 'One-click attack',
    n.domain = 'SE',
    n.aliases = ['One-click attack'];

MERGE (n:Concept {id: 'zero_click_attack'})
SET     n.name = 'zero-click attack',
    n.name_kr = 'zero-click attack',
    n.domain = 'SE',
    n.aliases = ['zero-click attack'];

MERGE (n:Concept {id: '피해유형'})
SET     n.name = '피해유형',
    n.name_kr = '피해유형',
    n.domain = 'SE',
    n.definition = '정보 노출';

MERGE (n:Concept {id: '동일_작업_반복'})
SET     n.name = '동일 작업 반복',
    n.name_kr = '동일 작업 반복',
    n.domain = 'SE',
    n.definition = '게시물 클릭 시 공격자가 원하는 동작 수행';

MERGE (n:Concept {id: '대응방법'})
SET     n.name = '대응방법',
    n.name_kr = '대응방법',
    n.domain = 'SE',
    n.definition = '일회성 세션인증';

MERGE (n:Concept {id: '코드_검증'})
SET     n.name = '코드 검증',
    n.name_kr = '코드 검증',
    n.domain = 'SE',
    n.definition = 'HTML을 사용할 경우 태그 내에 html, & 등이 포함되지 않도록 작성하고 검증은 반드시 서버에서 수행';

// --- 관계 ---

MERGE (a:Threat {id: 'xss'})
MERGE (b:Concept {id: '해킹'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: 'one_click_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: 'zero_click_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: '피해유형'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: '동일_작업_반복'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: '대응방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Concept {id: '코드_검증'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Threat {id: 'xss'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Threat {id: 'xss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Document {id: 'SE_095'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'csrf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'xss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_click_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_click_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해유형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동일_작업_반복'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_096: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_096'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_097: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_097'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_098.1: XXE(XML eXternal Entities)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_098.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'xml_external_entities'})
SET     n.name = 'XML eXternal Entities',
    n.name_kr = 'XXE',
    n.domain = 'SE',
    n.aliases = ['XML eXternal Entities', 'XXE'];

MERGE (n:Concept {id: 'owasp_top_10'})
SET     n.name = 'OWASP Top 10',
    n.name_kr = 'OWASP Top 10',
    n.domain = 'SE',
    n.aliases = ['OWASP Top 10'];

MERGE (n:Concept {id: 'xml_parser'})
SET     n.name = 'XML Parser',
    n.name_kr = 'XML Parser',
    n.domain = 'SE',
    n.aliases = ['XML Parser'];

MERGE (n:Concept {id: 'external_entity'})
SET     n.name = 'External Entity',
    n.name_kr = 'External Entity',
    n.domain = 'SE',
    n.aliases = ['External Entity'];

MERGE (n:Concept {id: 'dtd'})
SET     n.name = 'DTD',
    n.name_kr = 'DTD',
    n.domain = 'SE',
    n.aliases = ['DTD'];

MERGE (n:Concept {id: '외부_url'})
SET     n.name = '외부 URL',
    n.name_kr = '외부 URL',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Concept {id: 'owasp_top_10'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Concept {id: 'xml_parser'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Concept {id: 'external_entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Concept {id: 'dtd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Concept {id: '외부_url'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Document {id: 'SE_098.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xml_external_entities'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owasp_top_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml_parser'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external_entity'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dtd'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_url'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_098.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_098.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_100: 보안약점, 취약점 (Vulnerability)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_100'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'vulnerability'})
SET     n.name = 'Vulnerability',
    n.name_kr = '보안약점, 취약점',
    n.domain = 'SE',
    n.aliases = ['Vulnerability', '보안약점, 취약점'];

MERGE (n:Concept {id: '보안_취약점_및_대응기술'})
SET     n.name = '보안 취약점 및 대응기술',
    n.name_kr = '보안 취약점 및 대응기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안약점_제거방법'})
SET     n.name = '보안약점 제거방법',
    n.name_kr = '보안약점 제거방법',
    n.domain = 'SE',
    n.definition = '설계/코드 검토';

MERGE (n:Concept {id: '시큐어_코딩'})
SET     n.name = '시큐어 코딩',
    n.name_kr = '시큐어 코딩',
    n.domain = 'SE',
    n.definition = '보안 약점 유형에 따른 개발 보안 가이드 참고';

MERGE (n:Concept {id: '보안_약점_진단'})
SET     n.name = '보안 약점 진단',
    n.name_kr = '보안 약점 진단',
    n.domain = 'SE',
    n.definition = '정적분석 기반의 진단도구 활용(FindBugs, PMD, JUint 등)';

MERGE (n:Concept {id: '보안취약점_탐지방법'})
SET     n.name = '보안취약점 탐지방법',
    n.name_kr = '보안취약점 탐지방법',
    n.domain = 'SE',
    n.definition = '주기적 취약점 점검';

MERGE (n:Concept {id: '동적_분석'})
SET     n.name = '동적 분석',
    n.name_kr = '동적 분석',
    n.domain = 'SE',
    n.definition = '디버깅, 스트레스 테스트, 모의해킹, 역공학, 화이트해커, 웹 스캔 등';

MERGE (n:Concept {id: '보안약점'})
SET     n.name = '보안약점',
    n.name_kr = '보안약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안취약점'})
SET     n.name = '보안취약점',
    n.name_kr = '보안취약점',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안_취약점_및_대응기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안약점_제거방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '시큐어_코딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안_약점_진단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안취약점_탐지방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '동적_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '보안약점'})
MERGE (b:Concept {id: '보안취약점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Concept {id: '보안취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Document {id: 'SE_100'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vulnerability'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안약점_제거방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시큐어_코딩'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_약점_진단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안취약점_탐지방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적_분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_101: 위협(Threat)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_101'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'threat'})
SET     n.name = 'Threat',
    n.name_kr = '위협',
    n.domain = 'SE',
    n.aliases = ['Threat', '위협'];

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Threat {id: '의도적_위협'})
SET     n.name = '의도적 위협',
    n.name_kr = '의도적 위협',
    n.domain = 'SE',
    n.definition = '고의적인 침해 행위를 통해 부당한 정보 획득, 변조, 파괴를 시도하는 경우 - 행위자 : 침입자(intruder), 크래커(cracker), 해커(hacker) - 적극적(active) 위협 . 대상이 지정된 경우 . 특정 시스템의 정보 삭제, 변조, 서비스 방해 등 - 소극적(passive) 위협 . 대상이 지정되지 않는 경우 . 컴퓨터 바이러스, 인터넷';

MERGE (n:Concept {id: '비의도적_위협'})
SET     n.name = '비의도적 위협',
    n.name_kr = '비의도적 위협',
    n.domain = 'SE',
    n.definition = '하드웨어나 소프트웨어의 장애나 사고 - 자연재해 - 운영자의 실수';

MERGE (n:Concept {id: '취약점'})
SET     n.name = '취약점',
    n.name_kr = '취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '대응기술'})
SET     n.name = '대응기술',
    n.name_kr = '대응기술',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'threat'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Threat {id: '의도적_위협'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Concept {id: '비의도적_위협'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Concept {id: 'threat'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Concept {id: '대응기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Concept {id: '취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Concept {id: '대응기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Concept {id: '대응기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Document {id: 'SE_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'threat'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '의도적_위협'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비의도적_위협'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_102: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_102'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_103: DB 보안 취약점 및 대응기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_103'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'db_보안_취약점_및_대응기술'})
SET     n.name = 'DB 보안 취약점 및 대응기술',
    n.name_kr = 'DB 보안 취약점 및 대응기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '불법_접근'})
SET     n.name = '불법 접근',
    n.name_kr = '불법 접근',
    n.domain = 'SE',
    n.definition = '비인가자의 DB 접근, 인가자의 인가범위 이외의 데이터 접근';

MERGE (n:Metric {id: 'disclosure'})
SET     n.name = 'Disclosure',
    n.name_kr = '데이터 노출',
    n.domain = 'SE',
    n.definition = '기밀성의 반대 개념 - 정보의 일부 또는 전체가 데이터 소유자나 관리자의 의사에 반하여 고의적으로 공유 또는 공개되는 경우를 의미 - Aggregation(조합, 집단화) : 낮은 보안등급의 정보조각을 통해 높은 등급의 정보 획득 - Inference(추론) : 보안등급이 없는 일반 사용자가 보안으로 분류되지 않은 정보에 정당하게 접근하여 기밀정보를 유추하',
    n.aliases = ['Disclosure', '데이터 노출'];

MERGE (n:Concept {id: 'modification'})
SET     n.name = 'Modification',
    n.name_kr = '부적절한 변경',
    n.domain = 'SE',
    n.definition = '데이터가 부당한 방법이나 절차에 의해 고의적 또는 악의적으로 변경',
    n.aliases = ['Modification', '부적절한 변경'];

MERGE (n:Threat {id: 'dos,_denial_of_service'})
SET     n.name = 'DoS, Denial of Service',
    n.name_kr = '서비스 거부',
    n.domain = 'SE',
    n.definition = 'DB 세션 자원을 소진시켜 DB에 대한 더 이상의 접속을 못하게 하거나, 옵티마이저의 오동작을 유발시키고 작동 불능 상태를 유발함으로써 DB를 shutdown시키거나 무한정의 대기 상태를 유발',
    n.aliases = ['DoS, Denial of Service', '서비스 거부'];

MERGE (n:Concept {id: '정당한_사용자의_데이터_접근_보장'})
SET     n.name = '정당한 사용자의 데이터 접근 보장',
    n.name_kr = '정당한 사용자의 데이터 접근 보장',
    n.domain = 'SE',
    n.definition = '정당하게 권한을 부여 받은 사용자에게만 DB 접근 허용 - 접근제어는 레코드, 속성, 값들과 같은 더 작은 정보 단위의 객체에까지 적용되어야 함';

MERGE (n:Metric {id: '추론_방지'})
SET     n.name = '추론 방지',
    n.name_kr = '추론 방지',
    n.domain = 'SE',
    n.definition = '기밀성이 없는 데이터로부터 기밀정보를 추적하지 못하도록 해야 함';

MERGE (n:Threat {id: 'integrity'})
SET     n.name = '데이터의 무결성(Integrity) 유지',
    n.name_kr = '데이터의 무결성(Integrity) 유지',
    n.domain = 'SE',
    n.definition = '비권한 접근에 의한 데이터 수정, 오류나 바이러스에 의한 데이터 손상으로부터의 DB 보호 - 백업 및 복구 프로세스, 비정상 종료된 트랜잭션의 롤백';

MERGE (n:Metric {id: 'semantic_integrity'})
SET     n.name = '데이터의 의미 무결성(Semantic Integrity) 유지',
    n.name_kr = '데이터의 의미 무결성(Semantic Integrity) 유지',
    n.domain = 'SE',
    n.definition = '허용된 범위의 제어 데이터 값을 유지하여 수정될 데이터의 논리적 일치성을 보장 - Primary Key, Foreign Key, Unique, Check, Not Null Constraint 등';

MERGE (n:Concept {id: '시스템_감사_지원'})
SET     n.name = '시스템 감사 지원',
    n.name_kr = '시스템 감사 지원',
    n.domain = 'SE',
    n.definition = '데이터에 대한 분류를 통해 중요 정보에 대해 감사 기록을 유지하여 중요 데이터에 대한 비인가 또는 비정상적 접근을 효과적으로 기록하고 감지';

MERGE (n:Concept {id: '사용자_인증'})
SET     n.name = '사용자 인증',
    n.name_kr = '사용자 인증',
    n.domain = 'SE',
    n.definition = 'DB 사용자를 유일하게 식별할 수 있어야 함';

MERGE (n:Concept {id: '기밀_데이터_관리와_보호'})
SET     n.name = '기밀 데이터 관리와 보호',
    n.name_kr = '기밀 데이터 관리와 보호',
    n.domain = 'SE',
    n.definition = '기밀 데이터 접근 권한을 부여 받은 사용자는 이 권한을 전파할 수 없어야 하며, 권한 부여 사용자라도 기밀 데이터로의 동시 접근 통제';

MERGE (n:Concept {id: 'multilevel_protection'})
SET     n.name = 'Multilevel Protection',
    n.name_kr = '다단계 보호',
    n.domain = 'SE',
    n.definition = '정보를 다양한 보호등급(Level)으로 분류하고, 정보항목에 분류등급을 할당하고, 분류등급에 따라 다양한 접근 수준 할당',
    n.aliases = ['Multilevel Protection', '다단계 보호'];

MERGE (n:Concept {id: 'access_control'})
SET     n.name = 'Access Control',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.definition = '허가 받지 않는 사용자의 DB 자체에 대한 접근을 방지, 예) 계정&암호, RBAC - 강제적 접근제어(MAC, Mandatory Access Control), 임의적 접근제어(DAC, Discretionary Access Control), 역할 기반 보안 모델(RBAC, Role Based Access Control) - DB에 대해 발생한 각종 조작에',
    n.aliases = ['Access Control', '접근제어'];

MERGE (n:Concept {id: 'authorization_rules'})
SET     n.name = 'Authorization Rules',
    n.name_kr = '허가 규칙',
    n.domain = 'SE',
    n.definition = '정당한 절차를 통해 DBMS내로 들어온 사용자라 하더라도, 허가 받지 않은 데이터에 접근하는 것을 방지하기 위한 기능',
    n.aliases = ['Authorization Rules', '허가 규칙'];

MERGE (n:Concept {id: 'views'})
SET     n.name = 'Views',
    n.name_kr = '가상 테이블',
    n.domain = 'SE',
    n.definition = '가상 테이블을 이용하여 전체 DB 중 자신이 허가 받은 사용자 관점만 볼 수 있도록 한정',
    n.aliases = ['Views', '가상 테이블'];

MERGE (n:Concept {id: 'encryption'})
SET     n.name = 'Encryption',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '데이터를 암호화하여 비록 그 데이터에 접근하더라도 알 수 없는 형태로 변형시키는 것 - API 방식, Plug-in 방식(Filter 방식), 하이브리드 방식, 커널방식, Secure-Proxy 방식',
    n.aliases = ['Encryption', '암호화'];

MERGE (n:Concept {id: 'api_방식'})
SET     n.name = 'API 방식',
    n.name_kr = 'API 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'plug-in_방식'})
SET     n.name = 'Plug-In 방식',
    n.name_kr = 'Plug-In 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '하이브리드_방식'})
SET     n.name = '하이브리드 방식',
    n.name_kr = '하이브리드 방식',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '불법_접근'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Metric {id: 'disclosure'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'modification'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Threat {id: 'dos,_denial_of_service'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '정당한_사용자의_데이터_접근_보장'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Metric {id: '추론_방지'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Threat {id: 'integrity'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Metric {id: 'semantic_integrity'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '시스템_감사_지원'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '사용자_인증'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '기밀_데이터_관리와_보호'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'multilevel_protection'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'access_control'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'authorization_rules'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'views'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'api_방식'})
MERGE (b:Concept {id: 'plug-in_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'api_방식'})
MERGE (b:Concept {id: '하이브리드_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'api_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plug-in_방식'})
MERGE (b:Concept {id: '하이브리드_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: 'plug-in_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Concept {id: '하이브리드_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Document {id: 'SE_103'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'db_보안_취약점_및_대응기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불법_접근'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'disclosure'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modification'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'dos,_denial_of_service'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정당한_사용자의_데이터_접근_보장'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '추론_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'integrity'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'semantic_integrity'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_감사_지원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기밀_데이터_관리와_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multilevel_protection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access_control'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authorization_rules'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'views'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plug-in_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_104: Big Data 보안 취약점 및 대응
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_104'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'big_data_보안_취약점_및_대응'})
SET     n.name = 'Big Data 보안 취약점 및 대응',
    n.name_kr = 'Big Data 보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '도청_및_가로채기'})
SET     n.name = '도청 및 가로채기',
    n.name_kr = '도청 및 가로채기',
    n.domain = 'SE';

MERGE (n:Concept {id: '비도덕적_행위_혹은_오남용'})
SET     n.name = '비도덕적 행위 혹은 오남용',
    n.name_kr = '비도덕적 행위 혹은 오남용',
    n.domain = 'SE';

MERGE (n:Concept {id: '법률_위반_행위'})
SET     n.name = '법률 위반 행위',
    n.name_kr = '법률 위반 행위',
    n.domain = 'SE';

MERGE (n:Concept {id: '기능적_장애'})
SET     n.name = '기능적 장애',
    n.name_kr = '기능적 장애',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Concept {id: '도청_및_가로채기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Concept {id: '비도덕적_행위_혹은_오남용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Concept {id: '법률_위반_행위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Concept {id: '기능적_장애'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Document {id: 'SE_104'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'big_data_보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도청_및_가로채기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비도덕적_행위_혹은_오남용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법률_위반_행위'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능적_장애'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_105.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_105.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_105.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_105.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_106: CASB(Cloud Access Security Broker)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_106'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cloud_access_security_broker'})
SET     n.name = 'Cloud Access Security Broker',
    n.name_kr = 'CASB',
    n.domain = 'SE',
    n.aliases = ['Cloud Access Security Broker', 'CASB'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'sw_형'})
SET     n.name = 'SW 형',
    n.name_kr = 'SW 형',
    n.domain = 'SE',
    n.definition = '에이전트 형 CASB';

MERGE (n:Concept {id: 'api형_casb'})
SET     n.name = 'API형 CASB',
    n.name_kr = 'API형 CASB',
    n.domain = 'SE',
    n.definition = '클라우드 서비스 앱 개발사가 직접 적용';

MERGE (n:Concept {id: 'hw_형'})
SET     n.name = 'HW 형',
    n.name_kr = 'HW 형',
    n.domain = 'SE',
    n.definition = '프라이빗 CASB';

MERGE (n:Concept {id: '퍼블릭_casb'})
SET     n.name = '퍼블릭 CASB',
    n.name_kr = '퍼블릭 CASB',
    n.domain = 'SE',
    n.definition = '클라우드 서비스 플랫폼 내부에 설치';

MERGE (n:Concept {id: '에이전트형'})
SET     n.name = '에이전트형',
    n.name_kr = '에이전트형',
    n.domain = 'SE';

MERGE (n:Concept {id: '프라이빗_형'})
SET     n.name = '프라이빗 형',
    n.name_kr = '프라이빗 형',
    n.domain = 'SE';

MERGE (n:Concept {id: '퍼블릭_형'})
SET     n.name = '퍼블릭 형',
    n.name_kr = '퍼블릭 형',
    n.domain = 'SE';

MERGE (n:Concept {id: 'api형'})
SET     n.name = 'API형',
    n.name_kr = 'API형',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: 'sw_형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: 'api형_casb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: 'hw_형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: '퍼블릭_casb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '에이전트형'})
MERGE (b:Concept {id: '프라이빗_형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '에이전트형'})
MERGE (b:Concept {id: '퍼블릭_형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '에이전트형'})
MERGE (b:Concept {id: 'api형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: '에이전트형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프라이빗_형'})
MERGE (b:Concept {id: '퍼블릭_형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프라이빗_형'})
MERGE (b:Concept {id: 'api형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: '프라이빗_형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '퍼블릭_형'})
MERGE (b:Concept {id: 'api형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: '퍼블릭_형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Concept {id: 'api형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Document {id: 'SE_106'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api형_casb'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼블릭_casb'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에이전트형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이빗_형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼블릭_형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_107.1: CSPM, CWPP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_107.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cspm,_cwpp'})
SET     n.name = 'CSPM, CWPP',
    n.name_kr = 'CSPM, CWPP',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'casb'})
SET     n.name = 'CASB',
    n.name_kr = 'CASB',
    n.domain = 'SE',
    n.aliases = ['CASB'];

MERGE (n:Concept {id: 'cwpp'})
SET     n.name = 'CWPP',
    n.name_kr = 'CWPP',
    n.domain = 'SE',
    n.aliases = ['CWPP'];

MERGE (n:Concept {id: 'cspm'})
SET     n.name = 'CSPM',
    n.name_kr = 'CSPM',
    n.domain = 'SE',
    n.aliases = ['CSPM'];

MERGE (n:Concept {id: 'devsecops'})
SET     n.name = 'DevSecOps',
    n.name_kr = 'DevSecOps',
    n.domain = 'SE',
    n.aliases = ['DevSecOps'];

MERGE (n:Concept {id: 'secaas'})
SET     n.name = 'SECaaS',
    n.name_kr = 'SECaaS',
    n.domain = 'SE',
    n.aliases = ['SECaaS'];

MERGE (n:Concept {id: 'ueba'})
SET     n.name = 'UEBA',
    n.name_kr = 'UEBA',
    n.domain = 'SE',
    n.aliases = ['UEBA'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

MERGE (n:Concept {id: '핵심기능'})
SET     n.name = '핵심기능',
    n.name_kr = '핵심기능',
    n.domain = 'SE',
    n.definition = '지속성';

MERGE (n:Concept {id: '가시성'})
SET     n.name = '가시성',
    n.name_kr = '가시성',
    n.domain = 'SE',
    n.definition = '하나 이상의 Account 혹은 멀티 클라우드를 통합하여 한눈에 볼 수 있도록 자산 가시성 제공';

MERGE (n:Concept {id: '신속성'})
SET     n.name = '신속성',
    n.name_kr = '신속성',
    n.domain = 'SE',
    n.definition = '컴플라이언스 준수 위반이 발생했을 때 신속한 자동 대응';

MERGE (n:Concept {id: 'user'})
SET     n.name = 'User',
    n.name_kr = 'User',
    n.domain = 'SE',
    n.definition = 'Dashboard',
    n.aliases = ['User'];

MERGE (n:Concept {id: 'alert_message'})
SET     n.name = 'Alert Message',
    n.name_kr = 'Alert Message',
    n.domain = 'SE',
    n.definition = '주요 이벤트 발생 시 사용자 SMS, Talk을 통해 전송',
    n.aliases = ['Alert Message'];

MERGE (n:Concept {id: '운영_모니터링'})
SET     n.name = '운영 모니터링',
    n.name_kr = '운영 모니터링',
    n.domain = 'SE',
    n.definition = 'PaaS, SaaS 등 사용하는 Cloud에 대한 운영 데이터 모니터링';

MERGE (n:Concept {id: 'devsecops_통합'})
SET     n.name = 'DevSecOps 통합',
    n.name_kr = 'DevSecOps 통합',
    n.domain = 'SE',
    n.definition = '기업 내부 Cloud를 활용하여 DevOps를 구현한 기업에 보안 요소를 추가하여 DevSecOps를 완성';

MERGE (n:Concept {id: '위험_판별'})
SET     n.name = '위험 판별',
    n.name_kr = '위험 판별',
    n.domain = 'SE',
    n.definition = '클라우드에서 발생 가능한 주요 위험에 대한 식별 및 관리';

MERGE (n:Concept {id: '정책_적용'})
SET     n.name = '정책 적용',
    n.name_kr = '정책 적용',
    n.domain = 'SE',
    n.definition = '기업에서 요구하는 클라우드 보안 정책 적용 및 수행';

MERGE (n:Concept {id: '위협_보호'})
SET     n.name = '위협 보호',
    n.name_kr = '위협 보호',
    n.domain = 'SE',
    n.definition = '내/외부 클라우드를 위협하는 요소에 대한 제거';

MERGE (n:Concept {id: 'operational_monitoring'})
SET     n.name = 'Operational Monitoring',
    n.name_kr = 'Operational Monitoring',
    n.domain = 'SE',
    n.definition = '클라우드 보안 정상적인 운영 여부 모니터링',
    n.aliases = ['Operational Monitoring'];

MERGE (n:Concept {id: 'policy_enforcement'})
SET     n.name = 'Policy Enforcement',
    n.name_kr = 'Policy Enforcement',
    n.domain = 'SE',
    n.definition = 'Configuration 환경에서 정책 적용 및 변경',
    n.aliases = ['Policy Enforcement'];

MERGE (n:Concept {id: 'risk_identification'})
SET     n.name = 'Risk Identification',
    n.name_kr = 'Risk Identification',
    n.domain = 'SE',
    n.definition = '클라우드 인프라의 위협 요소 판별을 위한 기술',
    n.aliases = ['Risk Identification'];

MERGE (n:Concept {id: 'threat_protection'})
SET     n.name = 'Threat Protection',
    n.name_kr = 'Threat Protection',
    n.domain = 'SE',
    n.definition = '클라우드 인프라 내외부에서 발생 가능한 침해 대응',
    n.aliases = ['Threat Protection'];

MERGE (n:Concept {id: '시스템_모니터링'})
SET     n.name = '시스템 모니터링',
    n.name_kr = '시스템 모니터링',
    n.domain = 'SE',
    n.definition = '통합 관리 시스템의 모니터링 진행';

MERGE (n:Concept {id: '어플리케이션_화이트리스트'})
SET     n.name = '어플리케이션 화이트리스트',
    n.name_kr = '어플리케이션 화이트리스트',
    n.domain = 'SE',
    n.definition = '현재 승인, 사용 중인 어플리케이션의 기준 준수 여부 확인';

MERGE (n:Concept {id: '워크로드_구성'})
SET     n.name = '워크로드 구성',
    n.name_kr = '워크로드 구성',
    n.domain = 'SE',
    n.definition = '클라우드 서버 워크로드 설정 통한 위협 요소 대응';

MERGE (n:Concept {id: 'network_세그멘테이션'})
SET     n.name = 'Network 세그멘테이션',
    n.name_kr = 'Network 세그멘테이션',
    n.domain = 'SE',
    n.definition = '클라우드 서비스 제공 네트워크 분할 통한 위협 대응';

// --- 관계 ---

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'casb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'cwpp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'cspm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'devsecops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'secaas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'ueba'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '핵심기능'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '가시성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '신속성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'alert_message'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '운영_모니터링'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'devsecops_통합'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '위험_판별'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '정책_적용'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '위협_보호'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'operational_monitoring'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'policy_enforcement'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'risk_identification'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'threat_protection'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '시스템_모니터링'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '어플리케이션_화이트리스트'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: '워크로드_구성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'network_세그멘테이션'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'cspm'})
MERGE (b:Concept {id: 'cwpp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cspm'})
MERGE (b:Concept {id: 'casb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'cspm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cwpp'})
MERGE (b:Concept {id: 'casb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'cwpp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Concept {id: 'casb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Document {id: 'SE_107.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cspm,_cwpp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'casb'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwpp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cspm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'devsecops'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secaas'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ueba'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심기능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가시성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신속성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alert_message'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_모니터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'devsecops_통합'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_판별'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책_적용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위협_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operational_monitoring'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'policy_enforcement'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risk_identification'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'threat_protection'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_모니터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_화이트리스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '워크로드_구성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_세그멘테이션'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_107.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_107.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_108.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_108.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_108.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_108.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_109.1: IoT 보안 위협
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_109.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iot_보안_위협'})
SET     n.name = 'IoT 보안 위협',
    n.name_kr = 'IoT 보안 위협',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드'})
SET     n.name = '악성코드',
    n.name_kr = '악성코드',
    n.domain = 'SE';

MERGE (n:Concept {id: '포트_보안'})
SET     n.name = '포트 보안',
    n.name_kr = '포트 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '주기적_보안_업데이트'})
SET     n.name = '주기적 보안 업데이트',
    n.name_kr = '주기적 보안 업데이트',
    n.domain = 'SE';

MERGE (n:Concept {id: '패스워드_설정_등'})
SET     n.name = '패스워드 설정 등',
    n.name_kr = '패스워드 설정 등',
    n.domain = 'SE';

MERGE (n:Concept {id: '공급자'})
SET     n.name = '공급자',
    n.name_kr = '공급자',
    n.domain = 'SE',
    n.definition = '시스템';

MERGE (n:Concept {id: '기기,_인프라'})
SET     n.name = '기기, 인프라',
    n.name_kr = '기기, 인프라',
    n.domain = 'SE',
    n.definition = '보안 패치 미적용에 따른 보안 위협 - 저사양 기기, 낮은 버전의 운영체제 또는 S/W 사용 등에 따른 보안 취약점 - 물리적 보안 취약점 - 기기, 인프라 내 관리자, 사용자 인증키 노출 위협 등';

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'SE',
    n.definition = '개인정보 유출, 데이터 위변조 등';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'SE',
    n.definition = '송수신 과정에서 데이터 유출 및 변조, 탈취';

MERGE (n:Concept {id: '이용자'})
SET     n.name = '이용자',
    n.name_kr = '이용자',
    n.domain = 'SE',
    n.definition = '서비스 이용 보안이슈';

// --- 관계 ---

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Threat {id: '악성코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '포트_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '주기적_보안_업데이트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '패스워드_설정_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '공급자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '기기,_인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Concept {id: '이용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Document {id: 'SE_109.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iot_보안_위협'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포트_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주기적_보안_업데이트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패스워드_설정_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공급자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기기,_인프라'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_109.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_109.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_110.1: IoT 보안인증제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_110.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iot_보안인증제'})
SET     n.name = 'IoT 보안인증제',
    n.name_kr = 'IoT 보안인증제',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Law {id: '근거법률'})
SET     n.name = '근거법률',
    n.name_kr = '근거법률',
    n.domain = 'SE',
    n.definition = '정보통신망법 제48조의6(정보통신망연결기기등에 관한 인증)';

MERGE (n:Concept {id: '인증대상'})
SET     n.name = '인증대상',
    n.name_kr = '인증대상',
    n.domain = 'SE',
    n.definition = 'IoT 제품 및 제품과 연동되는 모바일 앱 - 계통적, 유기적으로 구성된 네트워크에 연결되어 감지, 제어, 중계, 촬영, 관리, 운행 등의 기능을 수행하는 기기를 총칭(모듈 포함)';

MERGE (n:Concept {id: 'lite'})
SET     n.name = 'Lite',
    n.name_kr = '라이트',
    n.domain = 'SE',
    n.aliases = ['Lite', '라이트'];

MERGE (n:Concept {id: 'basic'})
SET     n.name = 'Basic',
    n.name_kr = '베이직',
    n.domain = 'SE',
    n.aliases = ['Basic', '베이직'];

MERGE (n:Concept {id: 'standard'})
SET     n.name = 'Standard',
    n.name_kr = '스탠다드',
    n.domain = 'SE',
    n.aliases = ['Standard', '스탠다드'];

MERGE (n:Concept {id: '인증_혜택'})
SET     n.name = '인증 혜택',
    n.name_kr = '인증 혜택',
    n.domain = 'SE',
    n.definition = '신뢰성 향상 - 제품 홍보 - 무료제공';

// --- 관계 ---

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Law {id: '근거법률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: '인증대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lite'})
MERGE (b:Concept {id: 'basic'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lite'})
MERGE (b:Concept {id: 'standard'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: 'lite'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'basic'})
MERGE (b:Concept {id: 'standard'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: 'basic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: 'standard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Concept {id: '인증_혜택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Document {id: 'SE_110.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iot_보안인증제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '근거법률'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lite'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'basic'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'standard'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_혜택'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_110.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_110.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_111: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_111'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_112.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_112.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_112.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_112.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_113.1: 스턱스넷(Stuxnet)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_113.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'stuxnet'})
SET     n.name = 'Stuxnet',
    n.name_kr = '스턱스넷',
    n.domain = 'SE',
    n.aliases = ['Stuxnet', '스턱스넷'];

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: 'scada'})
SET     n.name = 'SCADA',
    n.name_kr = 'SCADA',
    n.domain = 'SE',
    n.aliases = ['SCADA'];

MERGE (n:Concept {id: 'windows'})
SET     n.name = 'Windows',
    n.name_kr = '운영체제감염',
    n.domain = 'SE',
    n.aliases = ['Windows', '운영체제감염'];

MERGE (n:Concept {id: 'step7_sw감염'})
SET     n.name = 'Step7 SW감염',
    n.name_kr = 'Step7 SW감염',
    n.domain = 'SE';

MERGE (n:Concept {id: 'plc감염'})
SET     n.name = 'PLC감염',
    n.name_kr = 'PLC감염',
    n.domain = 'SE';

MERGE (n:Threat {id: '제로데이어택'})
SET     n.name = '제로데이어택',
    n.name_kr = '제로데이어택',
    n.domain = 'SE';

MERGE (n:Concept {id: '망분리'})
SET     n.name = '망분리',
    n.name_kr = '망분리',
    n.domain = 'SE';

MERGE (n:Concept {id: '폐쇄망_운영_대규모_산업시설'})
SET     n.name = '폐쇄망 운영 대규모 산업시설',
    n.name_kr = '폐쇄망 운영 대규모 산업시설',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안요소'})
SET     n.name = '보안요소',
    n.name_kr = '보안요소',
    n.domain = 'SE';

MERGE (n:Concept {id: '주요내용'})
SET     n.name = '주요내용',
    n.name_kr = '주요내용',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: 'scada'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: 'windows'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: 'step7_sw감염'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: 'plc감염'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Threat {id: '제로데이어택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: '망분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: '폐쇄망_운영_대규모_산업시설'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '보안요소'})
MERGE (b:Concept {id: '주요내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: '보안요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Concept {id: '주요내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Document {id: 'SE_113.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stuxnet'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scada'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'windows'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'step7_sw감염'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plc감염'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '제로데이어택'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '폐쇄망_운영_대규모_산업시설'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_113.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_113.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_113.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_113.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_114: 스마트팩토리 취약점 및 대응방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_114'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '스마트팩토리_취약점_및_대응방안'})
SET     n.name = '스마트팩토리 취약점 및 대응방안',
    n.name_kr = '스마트팩토리 취약점 및 대응방안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '접근통제'})
SET     n.name = '접근통제',
    n.name_kr = '접근통제',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터보호'})
SET     n.name = '데이터보호',
    n.name_kr = '데이터보호',
    n.domain = 'SE';

MERGE (n:Concept {id: '안전상태'})
SET     n.name = '안전상태',
    n.name_kr = '안전상태',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보보안_운영정책_및_절차'})
SET     n.name = '정보보안 운영정책 및 절차',
    n.name_kr = '정보보안 운영정책 및 절차',
    n.domain = 'SE';

MERGE (n:Concept {id: '자산관리'})
SET     n.name = '자산관리',
    n.name_kr = '자산관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안사고_예방_대응'})
SET     n.name = '보안사고 예방 대응',
    n.name_kr = '보안사고 예방 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'it_보안'})
SET     n.name = 'IT 보안',
    n.name_kr = 'IT 보안',
    n.domain = 'SE',
    n.definition = '네트워크 영역분리';

MERGE (n:Concept {id: '사용자_식별_및_인증'})
SET     n.name = '사용자 식별 및 인증',
    n.name_kr = '사용자 식별 및 인증',
    n.domain = 'SE',
    n.definition = '계정, 패스워드 관리와 신원 검증의 강화';

MERGE (n:Concept {id: 'ot_보안'})
SET     n.name = 'OT 보안',
    n.name_kr = 'OT 보안',
    n.domain = 'SE',
    n.definition = 'ICS 망 인증 강화';

MERGE (n:Concept {id: 'usb_메모리_통제'})
SET     n.name = 'USB 메모리 통제',
    n.name_kr = 'USB 메모리 통제',
    n.domain = 'SE',
    n.definition = 'USB Guard 도구 또는 USB 메모리 사용 금지';

MERGE (n:Concept {id: 'iot_보안'})
SET     n.name = 'IoT 보안',
    n.name_kr = 'IoT 보안',
    n.domain = 'SE',
    n.definition = '보안 유지보수 채널';

MERGE (n:Threat {id: '노트북_악성코드_통제'})
SET     n.name = '노트북 악성코드 통제',
    n.name_kr = '노트북 악성코드 통제',
    n.domain = 'SE',
    n.definition = '백신 또는 보안 도구를 통한 노트북 보안성 통제';

MERGE (n:Concept {id: '물리_보안'})
SET     n.name = '물리 보안',
    n.name_kr = '물리 보안',
    n.domain = 'SE',
    n.definition = '물리적 접근 포트 통제';

MERGE (n:Concept {id: '전원_이중화_및_무중단'})
SET     n.name = '전원 이중화 및 무중단',
    n.name_kr = '전원 이중화 및 무중단',
    n.domain = 'SE',
    n.definition = '입력전원 이중화 및 무중단 전원공급 방안 요구';

MERGE (n:Concept {id: '사용자_관리_보안정책'})
SET     n.name = '사용자 관리 보안정책',
    n.name_kr = '사용자 관리 보안정책',
    n.domain = 'SE',
    n.definition = '조직의 보안 정책 수립 후 R&R 따른 사용자 관리';

MERGE (n:Concept {id: '데이터_암호화'})
SET     n.name = '데이터 암호화',
    n.name_kr = '데이터 암호화',
    n.domain = 'SE',
    n.definition = '보안 USB 메모리 솔루션 및 중요 데이터 암호화';

MERGE (n:Threat {id: 'pc_검역소_운영'})
SET     n.name = 'PC 검역소 운영',
    n.name_kr = 'PC 검역소 운영',
    n.domain = 'SE',
    n.definition = '설비 PC, 반입 PC 검역소 운영을 통한 악성코드 방지';

MERGE (n:Concept {id: 'ups_및_설비_이중화'})
SET     n.name = 'UPS 및 설비 이중화',
    n.name_kr = 'UPS 및 설비 이중화',
    n.domain = 'SE',
    n.definition = 'UPS 및 설비 이중화로 물리 인프라 위협 대응';

MERGE (n:Concept {id: '제어_자동화'})
SET     n.name = '제어 자동화',
    n.name_kr = '제어 자동화',
    n.domain = 'SE',
    n.definition = '사이버물리시스템';

MERGE (n:Concept {id: '현장_자동화'})
SET     n.name = '현장 자동화',
    n.name_kr = '현장 자동화',
    n.domain = 'SE',
    n.definition = 'IoT 및 사물통신';

MERGE (n:Concept {id: '분석_기술'})
SET     n.name = '분석 기술',
    n.name_kr = '분석 기술',
    n.domain = 'SE',
    n.definition = '빅데이터 플랫폼';

MERGE (n:Concept {id: '생산_기술'})
SET     n.name = '생산 기술',
    n.name_kr = '생산 기술',
    n.domain = 'SE',
    n.definition = '적층제조/3D 프린팅';

MERGE (n:Concept {id: '응용sw'})
SET     n.name = '응용SW',
    n.name_kr = '응용SW',
    n.domain = 'SE',
    n.definition = '클라우드 기반 애플리케이션';

MERGE (n:Technology {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'SE',
    n.definition = '5G, 6G';

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '접근통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '데이터보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '안전상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '정보보안_운영정책_및_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '자산관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '보안사고_예방_대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: 'it_보안'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '사용자_식별_및_인증'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: 'ot_보안'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: 'usb_메모리_통제'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: 'iot_보안'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Threat {id: '노트북_악성코드_통제'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '물리_보안'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '전원_이중화_및_무중단'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '사용자_관리_보안정책'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '데이터_암호화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Threat {id: 'pc_검역소_운영'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: 'ups_및_설비_이중화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '제어_자동화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '현장_자동화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '분석_기술'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '생산_기술'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Concept {id: '응용sw'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Technology {id: '네트워크'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Document {id: 'SE_114'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트팩토리_취약점_및_대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전상태'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보안_운영정책_및_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자산관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안사고_예방_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_식별_및_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ot_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_메모리_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '노트북_악성코드_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전원_이중화_및_무중단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_관리_보안정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'pc_검역소_운영'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ups_및_설비_이중화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어_자동화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현장_자동화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용sw'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_115: 스마트시티 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_115'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '스마트시티_보안'})
SET     n.name = '스마트시티 보안',
    n.name_kr = '스마트시티 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티법'})
SET     n.name = '스마트시티법',
    n.name_kr = '스마트시티법',
    n.domain = 'SE';

MERGE (n:Concept {id: 'onem2m'})
SET     n.name = 'oneM2M',
    n.name_kr = 'oneM2M',
    n.domain = 'SE',
    n.aliases = ['oneM2M'];

MERGE (n:Concept {id: 'ocf'})
SET     n.name = 'OCF',
    n.name_kr = 'OCF',
    n.domain = 'SE',
    n.aliases = ['OCF'];

MERGE (n:Technology {id: 'zigbee'})
SET     n.name = 'Zigbee',
    n.name_kr = 'Zigbee',
    n.domain = 'SE',
    n.aliases = ['Zigbee'];

MERGE (n:Concept {id: 'opc_ua'})
SET     n.name = 'OPC-UA',
    n.name_kr = 'OPC-UA',
    n.domain = 'SE',
    n.aliases = ['OPC-UA'];

MERGE (n:Threat {id: 'ddos'})
SET     n.name = 'DDoS',
    n.name_kr = 'DDoS',
    n.domain = 'SE',
    n.aliases = ['DDoS'];

MERGE (n:Concept {id: 'bems'})
SET     n.name = 'BEMS',
    n.name_kr = 'BEMS',
    n.domain = 'SE',
    n.aliases = ['BEMS'];

MERGE (n:Concept {id: '지속가능_성장'})
SET     n.name = '지속가능 성장',
    n.name_kr = '지속가능 성장',
    n.domain = 'SE';

MERGE (n:Concept {id: '도시문제_해결'})
SET     n.name = '도시문제 해결',
    n.name_kr = '도시문제 해결',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티_인프라'})
SET     n.name = '스마트시티 인프라',
    n.name_kr = '스마트시티 인프라',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티_통합플랫폼'})
SET     n.name = '스마트시티 통합플랫폼',
    n.name_kr = '스마트시티 통합플랫폼',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티_디바이스'})
SET     n.name = '스마트시티 디바이스',
    n.name_kr = '스마트시티 디바이스',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티_보안관리'})
SET     n.name = '스마트시티 보안관리',
    n.name_kr = '스마트시티 보안관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트시티_서비스'})
SET     n.name = '스마트시티 서비스',
    n.name_kr = '스마트시티 서비스',
    n.domain = 'SE';

MERGE (n:Concept {id: '기반기술'})
SET     n.name = '기반기술',
    n.name_kr = '기반기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '세부기술'})
SET     n.name = '세부기술',
    n.name_kr = '세부기술',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: 'onem2m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: 'ocf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Technology {id: 'zigbee'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: 'opc_ua'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Threat {id: 'ddos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: 'bems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '지속가능_성장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '도시문제_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티_인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티_통합플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티_디바이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티_보안관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '스마트시티_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기반기술'})
MERGE (b:Concept {id: '세부기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '기반기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Concept {id: '세부기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Document {id: 'SE_115'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트시티_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onem2m'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ocf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'zigbee'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opc_ua'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속가능_성장'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도시문제_해결'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티_인프라'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티_디바이스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티_보안관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티_서비스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_116.1: 5G 네트워크 보안 위협과 대응방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_116.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
SET     n.name = '5G 네트워크 보안 위협과 대응방안',
    n.name_kr = '5G 네트워크 보안 위협과 대응방안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '주간기술동향'})
SET     n.name = '주간기술동향',
    n.name_kr = '주간기술동향',
    n.domain = 'SE';

MERGE (n:Concept {id: '2019_10'})
SET     n.name = '2019.10',
    n.name_kr = '2019.10',
    n.domain = 'SE';

MERGE (n:Technology {id: '5g_보안_국제표준화_동향'})
SET     n.name = '5G 보안 국제표준화 동향',
    n.name_kr = '5G 보안 국제표준화 동향',
    n.domain = 'SE';

MERGE (n:Concept {id: 'tta_저널'})
SET     n.name = 'TTA 저널',
    n.name_kr = 'TTA 저널',
    n.domain = 'SE';

MERGE (n:Concept {id: 'horizontal_security'})
SET     n.name = 'Horizontal Security',
    n.name_kr = '종단 간 보안',
    n.domain = 'SE',
    n.definition = '수평적 통신 경로 보안 고려',
    n.aliases = ['Horizontal Security', '종단 간 보안'];

MERGE (n:Concept {id: 'vertical_security'})
SET     n.name = 'Vertical Security',
    n.name_kr = '계층 간 보안',
    n.domain = 'SE',
    n.definition = '수직적 보안 통합 프레임워크 설계',
    n.aliases = ['Vertical Security', '계층 간 보안'];

MERGE (n:Concept {id: 'domain_security'})
SET     n.name = 'Domain Security',
    n.name_kr = '도메인 간 보안',
    n.domain = 'SE',
    n.definition = '도메인 별 또는 멀티 도메인 간 보안 솔루션 상호 연계',
    n.aliases = ['Domain Security', '도메인 간 보안'];

MERGE (n:Concept {id: 'security_by_design'})
SET     n.name = 'Security by design',
    n.name_kr = '보안 내제화',
    n.domain = 'SE',
    n.definition = '표준화 단계부터 장비/네트워크 설계 초기에 보안 고려',
    n.aliases = ['Security by design', '보안 내제화'];

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: '주간기술동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: '2019_10'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Technology {id: '5g_보안_국제표준화_동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: 'tta_저널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: 'horizontal_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: 'vertical_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: 'domain_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Concept {id: 'security_by_design'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Document {id: 'SE_116.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: '5g_네트워크_보안_위협과_대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주간기술동향'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2019_10'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g_보안_국제표준화_동향'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tta_저널'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'horizontal_security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vertical_security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'domain_security'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security_by_design'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_116.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_116.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_117: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_117'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.5'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_118.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_118.6'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_119: 드론 취약점 및 대응
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_119'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '드론_취약점_및_대응'})
SET     n.name = '드론 취약점 및 대응',
    n.name_kr = '드론 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안취약점_및_대응'})
SET     n.name = '보안취약점 및 대응',
    n.name_kr = '보안취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안위협'})
SET     n.name = '보안위협',
    n.name_kr = '보안위협',
    n.domain = 'SE';

MERGE (n:Concept {id: '피해자산'})
SET     n.name = '피해자산',
    n.name_kr = '피해자산',
    n.domain = 'SE';

MERGE (n:Concept {id: '위협시나리오'})
SET     n.name = '위협시나리오',
    n.name_kr = '위협시나리오',
    n.domain = 'SE';

MERGE (n:Concept {id: '대응방안'})
SET     n.name = '대응방안',
    n.name_kr = '대응방안',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Concept {id: '보안취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '보안위협'})
MERGE (b:Concept {id: '피해자산'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Concept {id: '보안위협'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Concept {id: '피해자산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위협시나리오'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Concept {id: '위협시나리오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Document {id: 'SE_119'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '드론_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안위협'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해자산'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위협시나리오'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_120: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_120'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_121.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_121.1'})
SET doc.domain = 'SE';

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 261개
// 관계: 548개
// ================================================================