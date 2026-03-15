// ================================================================
// AI 도메인 (AI_101 ~ AI_134) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// AI_057: 튜링테스트(Turing Test), Reverse Turing Test
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_057'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'turing_test'})
SET     n.name = '튜링테스트(Turing Test), Reverse Turing Test',
    n.name_kr = '튜링테스트(Turing Test), Reverse Turing Test',
    n.domain = 'AI';

MERGE (n:Concept {id: '딥러닝'})
SET     n.name = '딥러닝',
    n.name_kr = '딥러닝',
    n.domain = 'AI';

MERGE (n:Concept {id: 'imitation_game'})
SET     n.name = 'Imitation game',
    n.name_kr = 'Imitation game',
    n.domain = 'AI',
    n.aliases = ['Imitation game'];

MERGE (n:Threat {id: 'captcha'})
SET     n.name = 'Captcha',
    n.name_kr = 'Captcha',
    n.domain = 'AI',
    n.aliases = ['Captcha'];

MERGE (n:Concept {id: 'alicebot'})
SET     n.name = 'Alicebot',
    n.name_kr = 'Alicebot',
    n.domain = 'AI',
    n.aliases = ['Alicebot'];

MERGE (n:Concept {id: '유진_구스트만'})
SET     n.name = '유진 구스트만',
    n.name_kr = '유진 구스트만',
    n.domain = 'AI';

MERGE (n:Threat {id: '이미지_인식분야'})
SET     n.name = '이미지 인식분야',
    n.name_kr = '이미지 인식분야',
    n.domain = 'AI',
    n.definition = 'CAPTCHA';

MERGE (n:Threat {id: '구텐베르크_프로젝트'})
SET     n.name = '구텐베르크 프로젝트',
    n.name_kr = '구텐베르크 프로젝트',
    n.domain = 'AI',
    n.definition = '인류 자산인 문학작품들을 전자화 및 배포하는 프로젝트, - 전자화 과정 중에 컴퓨터 인식이 어려운 부분을 CAPTCHA 형식으로 접속 사용자에게 인식하도록 활용';

MERGE (n:Concept {id: '의료분야'})
SET     n.name = '의료분야',
    n.name_kr = '의료분야',
    n.domain = 'AI',
    n.definition = '엘리자(Eliza)';

MERGE (n:Concept {id: 'parry'})
SET     n.name = 'Parry',
    n.name_kr = '패리',
    n.domain = 'AI',
    n.definition = '1972년 정신의학자 케네스 콜비가 만든 정신분열증 환자를 모사한 프로그램 - 실제 엘리자와 서로 대화 나는 기록',
    n.aliases = ['Parry', '패리'];

MERGE (n:Concept {id: '모양'})
SET     n.name = '모양',
    n.name_kr = '모양',
    n.domain = 'AI';

MERGE (n:Concept {id: '형식'})
SET     n.name = '형식',
    n.name_kr = '형식',
    n.domain = 'AI';

MERGE (n:Concept {id: '라이선스_주체'})
SET     n.name = '라이선스 주체',
    n.name_kr = '라이선스 주체',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: 'imitation_game'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Threat {id: 'captcha'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: 'alicebot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: '유진_구스트만'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Threat {id: '이미지_인식분야'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Threat {id: '구텐베르크_프로젝트'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: '의료분야'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: 'parry'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '모양'})
MERGE (b:Concept {id: '형식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '모양'})
MERGE (b:Concept {id: '라이선스_주체'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: '모양'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '형식'})
MERGE (b:Concept {id: '라이선스_주체'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: '형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Concept {id: '라이선스_주체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Document {id: 'AI_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'turing_test'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥러닝'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'imitation_game'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'captcha'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alicebot'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유진_구스트만'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '이미지_인식분야'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '구텐베르크_프로젝트'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료분야'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'parry'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모양'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형식'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이선스_주체'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_058: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_058'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.4'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.5'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.6'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_059.7: 로봇 저널리즘(Robot Journalism)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_059.7'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'robot_journalism'})
SET     n.name = 'Robot Journalism',
    n.name_kr = '로봇 저널리즘',
    n.domain = 'AI',
    n.aliases = ['Robot Journalism', '로봇 저널리즘'];

MERGE (n:Concept {id: '응용'})
SET     n.name = '응용',
    n.name_kr = '응용',
    n.domain = 'AI';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '텍스트_마이닝'})
SET     n.name = '텍스트 마이닝',
    n.name_kr = '텍스트 마이닝',
    n.domain = 'AI';

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'AI';

MERGE (n:Concept {id: '감성분석'})
SET     n.name = '감성분석',
    n.name_kr = '감성분석',
    n.domain = 'AI';

MERGE (n:Concept {id: '상황인지'})
SET     n.name = '상황인지',
    n.name_kr = '상황인지',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '응용'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '텍스트_마이닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '감성분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Concept {id: '상황인지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Document {id: 'AI_059.7'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'robot_journalism'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '텍스트_마이닝'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감성분석'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인지'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_060.10: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.10'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_060.2: AI 옵스(AIOps)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'aiops'})
SET     n.name = 'AIOps',
    n.name_kr = 'AI 옵스',
    n.domain = 'AI',
    n.aliases = ['AIOps', 'AI 옵스'];

MERGE (n:Concept {id: '응용'})
SET     n.name = '응용',
    n.name_kr = '응용',
    n.domain = 'AI';

MERGE (n:Concept {id: 'operation'})
SET     n.name = 'Operation',
    n.name_kr = '운영',
    n.domain = 'AI',
    n.aliases = ['Operation', '운영'];

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big Data',
    n.name_kr = '빅데이터',
    n.domain = 'AI',
    n.aliases = ['Big Data', '빅데이터'];

MERGE (n:Concept {id: 'presentation_layer'})
SET     n.name = 'Presentation Layer',
    n.name_kr = 'Presentation Layer',
    n.domain = 'AI',
    n.definition = '대시 보드',
    n.aliases = ['Presentation Layer'];

MERGE (n:Concept {id: 'ai_layer'})
SET     n.name = 'AI Layer',
    n.name_kr = 'AI Layer',
    n.domain = 'AI',
    n.definition = 'API 수집',
    n.aliases = ['AI Layer'];

// --- 관계 ---

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Concept {id: '응용'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Concept {id: 'operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Concept {id: 'presentation_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Concept {id: 'ai_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Document {id: 'AI_060.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'aiops'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'presentation_layer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_layer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_060.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_060.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.4'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_060.5: AIaaS(AI as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.5'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'ai_as_a_service'})
SET     n.name = 'AI as a Service',
    n.name_kr = 'AIaaS',
    n.domain = 'AI',
    n.aliases = ['AI as a Service', 'AIaaS'];

MERGE (n:Concept {id: '응용'})
SET     n.name = '응용',
    n.name_kr = '응용',
    n.domain = 'AI';

MERGE (n:Concept {id: 'ai_모델링'})
SET     n.name = 'AI 모델링',
    n.name_kr = 'AI 모델링',
    n.domain = 'AI';

MERGE (n:Concept {id: '데이터_가공/분석'})
SET     n.name = '데이터 가공/분석',
    n.name_kr = '데이터 가공/분석',
    n.domain = 'AI';

MERGE (n:Concept {id: 'api_엔진'})
SET     n.name = 'API 엔진',
    n.name_kr = 'API 엔진',
    n.domain = 'AI';

MERGE (n:Concept {id: 'ai_학습모델'})
SET     n.name = 'AI 학습모델',
    n.name_kr = 'AI 학습모델',
    n.domain = 'AI';

MERGE (n:Concept {id: '머신러닝_프레임워크'})
SET     n.name = '머신러닝 프레임워크',
    n.name_kr = '머신러닝 프레임워크',
    n.domain = 'AI';

MERGE (n:Concept {id: 'gpu'})
SET     n.name = 'GPU',
    n.name_kr = 'GPU',
    n.domain = 'AI',
    n.aliases = ['GPU'];

MERGE (n:Concept {id: 'iaas'})
SET     n.name = 'IaaS',
    n.name_kr = 'IaaS',
    n.domain = 'AI',
    n.aliases = ['IaaS'];

MERGE (n:Concept {id: 'paas'})
SET     n.name = 'PaaS',
    n.name_kr = 'PaaS',
    n.domain = 'AI',
    n.aliases = ['PaaS'];

MERGE (n:Concept {id: '②_편의성'})
SET     n.name = '② 편의성',
    n.name_kr = '② 편의성',
    n.domain = 'AI',
    n.definition = 'AI 기술 개발에 필요한 다양한 서비스들을 체계적으로 제공';

MERGE (n:Concept {id: '③_운영_효율성'})
SET     n.name = '③ 운영 효율성',
    n.name_kr = '③ 운영 효율성',
    n.domain = 'AI',
    n.definition = '사용량에 대해서만 비용을 부과';

MERGE (n:Concept {id: '④_접근성'})
SET     n.name = '④ 접근성',
    n.name_kr = '④ 접근성',
    n.domain = 'AI',
    n.definition = '단말 기기의 성능과 관계없이 AI 서비스를 이용 가능';

MERGE (n:Concept {id: '②_의존성_및_종속성'})
SET     n.name = '② 의존성 및 종속성',
    n.name_kr = '② 의존성 및 종속성',
    n.domain = 'AI',
    n.definition = 'AIaaS 업체의 서비스를 기반으로 AI 서비스를 구현하는 경우, 서비스의 의존성 및 종속성 문제가 발생';

MERGE (n:Concept {id: '③_보안성'})
SET     n.name = '③ 보안성',
    n.name_kr = '③ 보안성',
    n.domain = 'AI',
    n.definition = '제공 업체의 보안 이슈, 업데이트 등에 영향을 받음';

MERGE (n:Concept {id: '④_대응성'})
SET     n.name = '④ 대응성',
    n.name_kr = '④ 대응성',
    n.domain = 'AI',
    n.definition = '서비스 장애 혹은 네트워크 장애가 발생하는 경우, 일시적 혹은 장기적으로 서비스를 사용하지 못하는 문제가 발생할 수 있음.';

MERGE (n:Concept {id: '⑤_데이터_거버넌스'})
SET     n.name = '⑤ 데이터 거버넌스',
    n.name_kr = '⑤ 데이터 거버넌스',
    n.domain = 'AI',
    n.definition = '은행 또는 의료 등 데이터 활용 규제가 엄격한 분야의 경우, 데이터의 클라우드 저장 및 활용이 제한적';

MERGE (n:Concept {id: '서비스_측면'})
SET     n.name = '서비스 측면',
    n.name_kr = '서비스 측면',
    n.domain = 'AI',
    n.definition = 'H/W 인프라 서비스';

MERGE (n:Concept {id: '비즈니스_측면'})
SET     n.name = '비즈니스 측면',
    n.name_kr = '비즈니스 측면',
    n.domain = 'AI',
    n.definition = '높은 비용 효율';

MERGE (n:Concept {id: '인공지능_기능_측면'})
SET     n.name = '인공지능 기능 측면',
    n.name_kr = '인공지능 기능 측면',
    n.domain = 'AI',
    n.definition = '인공지능 API 엔진 서비스';

MERGE (n:Concept {id: '머신러닝_프레임워크_서비스'})
SET     n.name = '머신러닝 프레임워크 서비스',
    n.name_kr = '머신러닝 프레임워크 서비스',
    n.domain = 'AI',
    n.definition = '실제 데이터로 인공지능 엔진 학습 위한 프레임워크 제공 - 데이터 수집 및 전처리, 패턴 분석, 빅데이터 분석 서비스';

MERGE (n:Concept {id: 'ai_어플리케이션_서비스'})
SET     n.name = 'AI 어플리케이션 서비스',
    n.name_kr = 'AI 어플리케이션 서비스',
    n.domain = 'AI',
    n.definition = '다양한 인공지능 엔진을 조합하여 AI 소프트웨어로 제공 - 최종 사용자용 맞춤형 AI 모델, 사용자 정의 AI 템플릿';

MERGE (n:Concept {id: '클라우드_서비스_측면'})
SET     n.name = '클라우드 서비스 측면',
    n.name_kr = '클라우드 서비스 측면',
    n.domain = 'AI',
    n.definition = 'IaaS 기반 AI용 HW 인프라 서비스';

MERGE (n:Concept {id: 'paas_기반_학습모델_개발_환경_서비스'})
SET     n.name = 'PaaS 기반 학습모델 개발 환경 서비스',
    n.name_kr = 'PaaS 기반 학습모델 개발 환경 서비스',
    n.domain = 'AI',
    n.definition = '하드웨어 기반 환경에 AI 개발 도구 및 플랫폼 제공 - 정형정보 추출, Feature Engineering, 모델 학습/검증 서비스';

MERGE (n:Concept {id: 'saas_기반_인공지능_api_서비스'})
SET     n.name = 'SaaS 기반 인공지능 API 서비스',
    n.name_kr = 'SaaS 기반 인공지능 API 서비스',
    n.domain = 'AI',
    n.definition = '이미 만들어진 AI 소프트웨어와 연동하는 API 형태로 제공 - 머신러닝 모델 API/SDK 서비스 키 생성 및 연계 서비스';

MERGE (n:Concept {id: 'aiaas_단점_보완_측면'})
SET     n.name = 'AIaaS 단점 보완 측면',
    n.name_kr = 'AIaaS 단점 보완 측면',
    n.domain = 'AI',
    n.definition = '클라우드 및 AI 보안성 향상';

MERGE (n:Law {id: '데이터_거버넌스_및_법률_준수'})
SET     n.name = '데이터 거버넌스 및 법률 준수',
    n.name_kr = '데이터 거버넌스 및 법률 준수',
    n.domain = 'AI',
    n.definition = '마스터데이터 별도 관리, 데이터 온톨로지/리터리시 적용 - EU-GDPR, 전자의무기록 관리/보존법, 개인정보보호법 준수';

MERGE (n:Concept {id: 'aiaas_사용에_따른_경쟁력_강화_측면'})
SET     n.name = 'AIaaS 사용에 따른 경쟁력 강화 측면',
    n.name_kr = 'AIaaS 사용에 따른 경쟁력 강화 측면',
    n.domain = 'AI',
    n.definition = '국가 산업 혁신 위한 융합 프로젝트 강화';

MERGE (n:Concept {id: 'ai_인프라_강화를_위한_기업_간_협업'})
SET     n.name = 'AI 인프라 강화를 위한 기업 간 협업',
    n.name_kr = 'AI 인프라 강화를 위한 기업 간 협업',
    n.domain = 'AI',
    n.definition = '기업 단독으로 AI, IoT 등 많은 SW개발은 역부족이므로 뛰어난 기술 보유한 대중소 기업 협업 Alliance 체계 강화';

MERGE (n:Concept {id: '지원_서비스'})
SET     n.name = '지원 서비스',
    n.name_kr = '지원 서비스',
    n.domain = 'AI',
    n.definition = 'Compute';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'AI';

MERGE (n:Concept {id: '사용사례'})
SET     n.name = '사용사례',
    n.name_kr = '사용사례',
    n.domain = 'AI',
    n.definition = '가상 상담원 및 음성 도우미 구축';

MERGE (n:Concept {id: 'ai_도입_어려운_이유'})
SET     n.name = 'AI 도입 어려운 이유',
    n.name_kr = 'AI 도입 어려운 이유',
    n.domain = 'AI';

MERGE (n:Concept {id: '상세_이유'})
SET     n.name = '상세 이유',
    n.name_kr = '상세 이유',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '응용'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'ai_모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '데이터_가공/분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'api_엔진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'ai_학습모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '머신러닝_프레임워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'gpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'iaas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'paas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '②_편의성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '③_운영_효율성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '④_접근성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '②_의존성_및_종속성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '③_보안성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '④_대응성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '⑤_데이터_거버넌스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '서비스_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '비즈니스_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '인공지능_기능_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '머신러닝_프레임워크_서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'ai_어플리케이션_서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '클라우드_서비스_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'paas_기반_학습모델_개발_환경_서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'saas_기반_인공지능_api_서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'aiaas_단점_보완_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Law {id: '데이터_거버넌스_및_법률_준수'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'aiaas_사용에_따른_경쟁력_강화_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'ai_인프라_강화를_위한_기업_간_협업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '지원_서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '사용사례'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ai_도입_어려운_이유'})
MERGE (b:Concept {id: '상세_이유'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: 'ai_도입_어려운_이유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Concept {id: '상세_이유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Document {id: 'AI_060.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ai_as_a_service'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_모델링'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_가공/분석'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_엔진'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_학습모델'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머신러닝_프레임워크'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iaas'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_편의성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_운영_효율성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_접근성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_의존성_및_종속성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_보안성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_대응성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_데이터_거버넌스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_기능_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머신러닝_프레임워크_서비스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_어플리케이션_서비스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_서비스_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas_기반_학습모델_개발_환경_서비스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'saas_기반_인공지능_api_서비스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aiaas_단점_보완_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '데이터_거버넌스_및_법률_준수'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aiaas_사용에_따른_경쟁력_강화_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_인프라_강화를_위한_기업_간_협업'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원_서비스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용사례'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_도입_어려운_이유'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_이유'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_060.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.8'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_060.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_060.9'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_061.1: 인공지능 오류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_061.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_오류'})
SET     n.name = '인공지능 오류',
    n.name_kr = '인공지능 오류',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_문제점'})
SET     n.name = '인공지능 문제점',
    n.name_kr = '인공지능 문제점',
    n.domain = 'AI';

MERGE (n:Concept {id: '데이터_측면'})
SET     n.name = '데이터 측면',
    n.name_kr = '데이터 측면',
    n.domain = 'AI',
    n.definition = '데이터 부적합';

MERGE (n:Concept {id: '오버피팅'})
SET     n.name = '오버피팅',
    n.name_kr = '오버피팅',
    n.domain = 'AI',
    n.definition = '모델이 트레이닝 데이터 셋과 일치하여 오버피팅 발생';

MERGE (n:Concept {id: '언더피팅'})
SET     n.name = '언더피팅',
    n.name_kr = '언더피팅',
    n.domain = 'AI',
    n.definition = '데이터 가공으로 인한 모델 단순화로 언더피팅 발생';

MERGE (n:Concept {id: '모델_측면'})
SET     n.name = '모델 측면',
    n.name_kr = '모델 측면',
    n.domain = 'AI',
    n.definition = '잘못된 모델 선택';

MERGE (n:Concept {id: '모델_검증_부족'})
SET     n.name = '모델 검증 부족',
    n.name_kr = '모델 검증 부족',
    n.domain = 'AI',
    n.definition = '모델의 성능에 대한 검증이 충분하지 않아 오류 발생';

MERGE (n:Concept {id: '강화_데이터_편향'})
SET     n.name = '강화 데이터 편향',
    n.name_kr = '강화 데이터 편향',
    n.domain = 'AI',
    n.definition = '추천 시스템의 구매 성향에 치우친 해석으로 필터버블';

MERGE (n:Concept {id: '환경_측면'})
SET     n.name = '환경 측면',
    n.name_kr = '환경 측면',
    n.domain = 'AI',
    n.definition = '하드웨어 자원 부족';

MERGE (n:Concept {id: '베이스라인_부족'})
SET     n.name = '베이스라인 부족',
    n.name_kr = '베이스라인 부족',
    n.domain = 'AI',
    n.definition = '머신러닝 모델 성능에 대한 기준 지표 설정 미흡';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '인공지능_문제점'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '데이터_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '오버피팅'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '언더피팅'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '모델_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '모델_검증_부족'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '강화_데이터_편향'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '환경_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Concept {id: '베이스라인_부족'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Document {id: 'AI_061.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_오류'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_문제점'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오버피팅'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언더피팅'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델_검증_부족'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강화_데이터_편향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베이스라인_부족'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_061.2: 편향(biased)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_061.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'biased'})
SET     n.name = 'biased',
    n.name_kr = '편향',
    n.domain = 'AI',
    n.aliases = ['biased', '편향'];

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'AI';

MERGE (n:Concept {id: '편향된_데이터_학습'})
SET     n.name = '편향된 데이터 학습',
    n.name_kr = '편향된 데이터 학습',
    n.domain = 'AI';

MERGE (n:Concept {id: 'data_관점'})
SET     n.name = 'Data 관점',
    n.name_kr = 'Data 관점',
    n.domain = 'AI',
    n.definition = '인간의 편향 (Human Bias)';

MERGE (n:Concept {id: 'hidden_bias'})
SET     n.name = 'Hidden Bias',
    n.name_kr = '숨겨진 편향',
    n.domain = 'AI',
    n.definition = '가장 발견하기 어려운 편향으로 절대 보거나 발견될 수 없는 의도하지 않은 편향',
    n.aliases = ['Hidden Bias', '숨겨진 편향'];

MERGE (n:Concept {id: 'data_sampling_bias'})
SET     n.name = 'Data Sampling Bias',
    n.name_kr = '데이터 표본 편향',
    n.domain = 'AI',
    n.definition = 'AI 시스템에 공급되는 데이터 샘플링 편향에 기인한 편향',
    n.aliases = ['Data Sampling Bias', '데이터 표본 편향'];

MERGE (n:Metric {id: 'process_관점'})
SET     n.name = 'Process 관점',
    n.name_kr = 'Process 관점',
    n.domain = 'AI',
    n.definition = '롱테일 편향 (Long-tail Bias)';

MERGE (n:Concept {id: 'intentional_bias'})
SET     n.name = 'Intentional Bias',
    n.name_kr = '고의적 편향',
    n.domain = 'AI',
    n.definition = '해킹 공격을 통해 AI 가 의도적으로 편향되며, 이러한 편향들은 발견이 어렵게 숨겨지므로 더 위험함',
    n.aliases = ['Intentional Bias', '고의적 편향'];

MERGE (n:Concept {id: '정부_측면'})
SET     n.name = '정부 측면',
    n.name_kr = '정부 측면',
    n.domain = 'AI',
    n.definition = '① 설명을 요구할 권리 규정';

MERGE (n:Concept {id: '②자동화된_의사_결정을_제한할_권리'})
SET     n.name = '②자동화된 의사 결정을 제한할 권리',
    n.name_kr = '②자동화된 의사 결정을 제한할 권리',
    n.domain = 'AI',
    n.definition = '자동화된 처리 (프로파일링 포함) 에만 근거한 결정의 대상이 되지 않을 권리';

MERGE (n:Concept {id: '기업_측면'})
SET     n.name = '기업 측면',
    n.name_kr = '기업 측면',
    n.domain = 'AI',
    n.definition = '① 기업 AI 윤리 수립';

MERGE (n:Standard {id: '②_정보_품질_진단과_감리'})
SET     n.name = '② 정보 품질 진단과 감리',
    n.name_kr = '② 정보 품질 진단과 감리',
    n.domain = 'AI',
    n.definition = '알고리즘 투명성 제고 위해 품질 관리시스템 인증 (ISO9001) - 감독원의 권한을 부여, 필요 시 감사/검사 수행';

MERGE (n:Concept {id: '③_설명가능_ai_의_개발_및_설계'})
SET     n.name = '③ 설명가능 AI 의 개발 및 설계',
    n.name_kr = '③ 설명가능 AI 의 개발 및 설계',
    n.domain = 'AI',
    n.definition = '알고리즘 최종 결과를 어떻게 도출했는지 사람이 이해 가능하도록 설명가능 AI(XAI) 알고리즘 개발, 설계';

MERGE (n:Concept {id: '④_biased인식_알고리즘_개발'})
SET     n.name = '④ biased인식 알고리즘 개발',
    n.name_kr = '④ biased인식 알고리즘 개발',
    n.domain = 'AI',
    n.definition = '훈련 데이터에서 biased 패턴을 찾고, biased 데이터셋에 biased 가 없는 알고리즘을 개발 - 훈련데이터에 대한 회귀모형을 만들고 인종, 설명 등과 같은 biased 특징의 회귀 계수를 관찰';

// --- 관계 ---

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '편향된_데이터_학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: 'data_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: 'hidden_bias'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: 'data_sampling_bias'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Metric {id: 'process_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: 'intentional_bias'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '정부_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '②자동화된_의사_결정을_제한할_권리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '기업_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Standard {id: '②_정보_품질_진단과_감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '③_설명가능_ai_의_개발_및_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Concept {id: '④_biased인식_알고리즘_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Document {id: 'AI_061.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'biased'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편향된_데이터_학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관점'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hidden_bias'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_sampling_bias'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process_관점'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intentional_bias'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②자동화된_의사_결정을_제한할_권리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '②_정보_품질_진단과_감리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_설명가능_ai_의_개발_및_설계'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_biased인식_알고리즘_개발'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_061.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_061.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_061.4: 딥페이크 (Deep Fake)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_061.4'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'deep_fake'})
SET     n.name = 'Deep Fake',
    n.name_kr = '딥페이크',
    n.domain = 'AI',
    n.aliases = ['Deep Fake', '딥페이크'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'AI';

MERGE (n:Concept {id: 'deep_learning'})
SET     n.name = '딥러닝',
    n.name_kr = '딥러닝',
    n.domain = 'AI';

MERGE (n:Technology {id: 'gan'})
SET     n.name = 'GAN',
    n.name_kr = 'GAN',
    n.domain = 'AI',
    n.aliases = ['GAN'];

MERGE (n:Technology {id: 'lstm'})
SET     n.name = 'LSTM',
    n.name_kr = 'LSTM',
    n.domain = 'AI',
    n.aliases = ['LSTM'];

MERGE (n:Concept {id: '학습과_합성'})
SET     n.name = '학습과 합성',
    n.name_kr = '학습과 합성',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Technology {id: 'gan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Technology {id: 'lstm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Concept {id: '학습과_합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Document {id: 'AI_061.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deep_fake'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gan'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lstm'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습과_합성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_062.1: 인공지능 윤리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_062.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_윤리'})
SET     n.name = '인공지능 윤리',
    n.name_kr = '인공지능 윤리',
    n.domain = 'AI';

MERGE (n:Concept {id: '기타_<_인공지능_윤리'})
SET     n.name = '기타 < 인공지능 윤리',
    n.name_kr = '기타 < 인공지능 윤리',
    n.domain = 'AI';

MERGE (n:Concept {id: '트롤리_딜레마'})
SET     n.name = '트롤리 딜레마',
    n.name_kr = '트롤리 딜레마',
    n.domain = 'AI';

MERGE (n:Concept {id: '알고리즘_편향성'})
SET     n.name = '알고리즘 편향성',
    n.name_kr = '알고리즘 편향성',
    n.domain = 'AI';

MERGE (n:Concept {id: '인간의_편향성'})
SET     n.name = '인간의 편향성',
    n.name_kr = '인간의 편향성',
    n.domain = 'AI';

MERGE (n:Concept {id: '죄수의_딜레마'})
SET     n.name = '죄수의 딜레마',
    n.name_kr = '죄수의 딜레마',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공적_도덕_행위자_(ama'})
SET     n.name = '인공적 도덕 행위자 (AMA',
    n.name_kr = '인공적 도덕 행위자 (AMA',
    n.domain = 'AI';

MERGE (n:Concept {id: '로봇규제_가이드라인'})
SET     n.name = '로봇규제 가이드라인',
    n.name_kr = '로봇규제 가이드라인',
    n.domain = 'AI';

MERGE (n:Concept {id: '파급효과'})
SET     n.name = '파급효과',
    n.name_kr = '파급효과',
    n.domain = 'AI',
    n.definition = '일자리 상실의 우려';

MERGE (n:Concept {id: '인간관계의_퇴화,_인간성_상실'})
SET     n.name = '인간관계의 퇴화, 인간성 상실',
    n.name_kr = '인간관계의 퇴화, 인간성 상실',
    n.domain = 'AI',
    n.definition = '실제 인간보다는 기계와 빈번히 접촉 및 교감으로 외부와 단절한 상태에서 오로지 기계와 소통';

MERGE (n:Concept {id: '편향성,_차별성의_폐해'})
SET     n.name = '편향성, 차별성의 폐해',
    n.name_kr = '편향성, 차별성의 폐해',
    n.domain = 'AI',
    n.definition = '인공지능 알고리즘이 처리한 결과가 인종이나 성별에 대한 차별성을 보여 사회적으로 반향을 일으킴 - 대표적 사례가 범죄예측 시스템이 흑인에게 불리한 결과';

MERGE (n:Concept {id: 'artificial_stupidity'})
SET     n.name = 'Artificial stupidity',
    n.name_kr = '인공지능의 불완전성',
    n.domain = 'AI',
    n.definition = '훈련 과정이 실제 세계의 가능한 모든 경우를 대비하긴 어려움. - 인간이라면 도저히 할 수 없 는 어리석은 행동을 야기',
    n.aliases = ['Artificial stupidity', '인공지능의 불완전성'];

MERGE (n:Concept {id: '위험_요소'})
SET     n.name = '위험 요소',
    n.name_kr = '위험 요소',
    n.domain = 'AI',
    n.definition = '편견과 차별';

MERGE (n:Concept {id: '이미_발생한_사건에_근거한_필요성'})
SET     n.name = '이미 발생한 사건에 근거한 필요성',
    n.name_kr = '이미 발생한 사건에 근거한 필요성',
    n.domain = 'AI',
    n.definition = '이미 발생한 여러 사례(자율주행자동차 사고, 로보어드바이저의 주식투자손실, 인공지능 편견 사건 등)를 통해 인공지능 윤리 구축에 대한 필요성이 강조되고 있다는 점';

MERGE (n:Concept {id: '인터넷_윤리의_연장선으로의_필요성'})
SET     n.name = '인터넷 윤리의 연장선으로의 필요성',
    n.name_kr = '인터넷 윤리의 연장선으로의 필요성',
    n.domain = 'AI',
    n.definition = '인공지능이 취득한 개인정보와 사생활 정보에 대한 유출이나 인공지능 서비스 이용에 대한 빈익빈 부익부 현상 등 인공지능 윤리적 이슈는 현재의 인터넷 윤리가 심화되고 확산되는 형태를 취함';

MERGE (n:Concept {id: '경쟁력_확보'})
SET     n.name = '경쟁력 확보',
    n.name_kr = '경쟁력 확보',
    n.domain = 'AI',
    n.definition = '글로벌 경쟁에 있어 ‘글로벌 표준화’에 우리 기업과 사회가 어떻게 준비하고 대응하고 있는지에 따라 경쟁력에 대한 희비가 갈릴 수 있음';

MERGE (n:Concept {id: '정부주도'})
SET     n.name = '정부주도',
    n.name_kr = '정부주도',
    n.domain = 'AI',
    n.definition = 'AI 국가전략 주요 과제';

MERGE (n:Concept {id: '지능정보화_기본법'})
SET     n.name = '지능정보화 기본법',
    n.name_kr = '지능정보화 기본법',
    n.domain = 'AI',
    n.definition = '지능정보화사회를 지원하기 위한 법제 토대 마련 - 지능정보사회 윤리 연구, 개발, 준칙 재정, 보급, 교육';

MERGE (n:Concept {id: '사회영향'})
SET     n.name = '사회영향',
    n.name_kr = '사회영향',
    n.domain = 'AI',
    n.definition = 'AI 발전에 따른 부정적 영향';

MERGE (n:Concept {id: 'ai_영향도_증가'})
SET     n.name = 'AI 영향도 증가',
    n.name_kr = 'AI 영향도 증가',
    n.domain = 'AI',
    n.definition = 'AI 기술의 다양한 산업(의료, 교통등) 융합 - AI 발전에 따른 일자리 등 사회의 근본적 변화 발생';

MERGE (n:Concept {id: '3대_기본원칙'})
SET     n.name = '3대 기본원칙',
    n.name_kr = '3대 기본원칙',
    n.domain = 'AI',
    n.definition = '인간 존엄성 원칙';

MERGE (n:Concept {id: '10대_핵심요건'})
SET     n.name = '10대 핵심요건',
    n.name_kr = '10대 핵심요건',
    n.domain = 'AI',
    n.definition = '인권보장';

MERGE (n:Concept {id: '법적'})
SET     n.name = '법적',
    n.name_kr = '법적',
    n.domain = 'AI',
    n.definition = '행위의 양태에 대한 고려';

MERGE (n:Concept {id: '사회적_규범에_대한_고려'})
SET     n.name = '사회적 규범에 대한 고려',
    n.name_kr = '사회적 규범에 대한 고려',
    n.domain = 'AI',
    n.definition = '윤리는 사회적 합의의 산물로 구체적 윤리 규범 형성 이전 사회적 규범에 대한 고려 필요';

MERGE (n:Concept {id: '법적_구속력_고려'})
SET     n.name = '법적 구속력 고려',
    n.name_kr = '법적 구속력 고려',
    n.domain = 'AI',
    n.definition = '법적 구속에 따른 자율성이 사라지지 않도록 유의해야 함';

MERGE (n:Concept {id: '사용자'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'AI',
    n.definition = '서비스 이용자 고려';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'AI',
    n.definition = '인공지능 기술 발전 속도';

MERGE (n:Concept {id: '인공지능_기술의_생애주기에_따른_윤리_이슈_고려'})
SET     n.name = '인공지능 기술의 생애주기에 따른 윤리 이슈 고려',
    n.name_kr = '인공지능 기술의 생애주기에 따른 윤리 이슈 고려',
    n.domain = 'AI',
    n.definition = '인공지능 기술의 수용은 기술의 생산과 소비 두단계로 이루어지며 윤리는 이 두 단계 모두 의미를 지님 - 따라서 인공지능 기술 생애 주기 별 이슈 수집 및 검토';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '트롤리_딜레마'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '알고리즘_편향성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '인간의_편향성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '죄수의_딜레마'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '인공적_도덕_행위자_(ama'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '로봇규제_가이드라인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '파급효과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '인간관계의_퇴화,_인간성_상실'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '편향성,_차별성의_폐해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: 'artificial_stupidity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '위험_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '이미_발생한_사건에_근거한_필요성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '인터넷_윤리의_연장선으로의_필요성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '경쟁력_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '정부주도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '지능정보화_기본법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '사회영향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: 'ai_영향도_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '3대_기본원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '10대_핵심요건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '법적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '사회적_규범에_대한_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '법적_구속력_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Concept {id: '인공지능_기술의_생애주기에_따른_윤리_이슈_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Document {id: 'AI_062.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_윤리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_<_인공지능_윤리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트롤리_딜레마'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘_편향성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인간의_편향성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '죄수의_딜레마'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공적_도덕_행위자_(ama'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로봇규제_가이드라인'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파급효과'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인간관계의_퇴화,_인간성_상실'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편향성,_차별성의_폐해'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'artificial_stupidity'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_요소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미_발생한_사건에_근거한_필요성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_윤리의_연장선으로의_필요성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경쟁력_확보'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부주도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회영향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_영향도_증가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3대_기본원칙'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10대_핵심요건'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적_규범에_대한_고려'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_구속력_고려'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_기술의_생애주기에_따른_윤리_이슈_고려'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_062.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_062.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_062.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_062.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_062.4: 인공지능의 역기능
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_062.4'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능의_역기능'})
SET     n.name = '인공지능의 역기능',
    n.name_kr = '인공지능의 역기능',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능의_문제점'})
SET     n.name = '인공지능의 문제점',
    n.name_kr = '인공지능의 문제점',
    n.domain = 'AI';

MERGE (n:Concept {id: 'deepfake'})
SET     n.name = '딥페이크',
    n.name_kr = '딥페이크',
    n.domain = 'AI';

MERGE (n:Concept {id: 'infodemic'})
SET     n.name = '인포데믹',
    n.name_kr = '인포데믹',
    n.domain = 'AI';

MERGE (n:Concept {id: '사이버_위협'})
SET     n.name = '사이버 위협',
    n.name_kr = '사이버 위협',
    n.domain = 'AI';

MERGE (n:Concept {id: '사이버_테러'})
SET     n.name = '사이버 테러',
    n.name_kr = '사이버 테러',
    n.domain = 'AI';

MERGE (n:Concept {id: '편향성'})
SET     n.name = '편향성',
    n.name_kr = '편향성',
    n.domain = 'AI';

MERGE (n:Concept {id: 'ai_보안관기술'})
SET     n.name = 'AI 보안관기술',
    n.name_kr = 'AI 보안관기술',
    n.domain = 'AI';

MERGE (n:Concept {id: '정보보안/보호기술'})
SET     n.name = '정보보안/보호기술',
    n.name_kr = '정보보안/보호기술',
    n.domain = 'AI';

MERGE (n:Concept {id: '윤리적_ai개발_가이드라인'})
SET     n.name = '윤리적 AI개발 가이드라인',
    n.name_kr = '윤리적 AI개발 가이드라인',
    n.domain = 'AI';

MERGE (n:Concept {id: '긍정적_영향'})
SET     n.name = '긍정적 영향',
    n.name_kr = '긍정적 영향',
    n.domain = 'AI',
    n.definition = '교통';

MERGE (n:Concept {id: '의료'})
SET     n.name = '의료',
    n.name_kr = '의료',
    n.domain = 'AI',
    n.definition = '의료 서비스 품질 향상 및 삶의 질 개선';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육',
    n.name_kr = '교육',
    n.domain = 'AI',
    n.definition = '교육용 로봇, 지능형학습시스템 통한 양질의 교육 제공';

MERGE (n:Concept {id: '공공안전'})
SET     n.name = '공공안전',
    n.name_kr = '공공안전',
    n.domain = 'AI',
    n.definition = '예측형 치안 활동, 금융사기 탐지 등';

MERGE (n:Concept {id: '빈공지역'})
SET     n.name = '빈공지역',
    n.name_kr = '빈공지역',
    n.domain = 'AI',
    n.definition = '빈곤, 기아감소, 식수위생 개선 등에 활용';

MERGE (n:Concept {id: '환경'})
SET     n.name = '환경',
    n.name_kr = '환경',
    n.domain = 'AI',
    n.definition = '지속가능 에너지 접근성 향상, 환경문제 해결';

MERGE (n:Concept {id: '부정적_영향'})
SET     n.name = '부정적 영향',
    n.name_kr = '부정적 영향',
    n.domain = 'AI',
    n.definition = '오용';

MERGE (n:Concept {id: '사이버_침해'})
SET     n.name = '사이버 침해',
    n.name_kr = '사이버 침해',
    n.domain = 'AI',
    n.definition = 'AI 시스템에 대한 악의적 공격 발생, 개인 프라이버시 문제';

MERGE (n:Concept {id: '불평등'})
SET     n.name = '불평등',
    n.name_kr = '불평등',
    n.domain = 'AI',
    n.definition = '국가간, 기업간 AI 접근서에 대한 차이 발생 - 고학력자에 비해 저학력자가 해고 위험 노출';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '인공지능의_문제점'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: 'deepfake'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: 'infodemic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '사이버_위협'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '사이버_테러'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '편향성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: 'ai_보안관기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '정보보안/보호기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '윤리적_ai개발_가이드라인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '긍정적_영향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '의료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '공공안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '빈공지역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '부정적_영향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '사이버_침해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Concept {id: '불평등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Document {id: 'AI_062.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능의_역기능'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능의_문제점'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deepfake'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infodemic'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_위협'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_테러'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편향성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_보안관기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보안/보호기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '윤리적_ai개발_가이드라인'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긍정적_영향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공안전'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빈공지역'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정적_영향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_침해'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불평등'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_063: 인공지능 산업 문제 및 해결방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_063'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_산업_문제_및_해결방안'})
SET     n.name = '인공지능 산업 문제 및 해결방안',
    n.name_kr = '인공지능 산업 문제 및 해결방안',
    n.domain = 'AI';

MERGE (n:Concept {id: '기타_<_인공지능_산업_문제_및_해결방안'})
SET     n.name = '기타 < 인공지능 산업 문제 및 해결방안',
    n.name_kr = '기타 < 인공지능 산업 문제 및 해결방안',
    n.domain = 'AI';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'AI',
    n.definition = '( 뇌-기계 인터페이스(BMI) 차세대 AI 기술 선도, 타 분야 혁신 시너지 확보 )';

MERGE (n:Concept {id: '인재'})
SET     n.name = '인재',
    n.name_kr = '인재',
    n.domain = 'AI',
    n.definition = '(MOOC 통한 인재양성, 산업간 연계 AI 전문가 양성)';

MERGE (n:Concept {id: '인프라'})
SET     n.name = '인프라',
    n.name_kr = '인프라',
    n.domain = 'AI',
    n.definition = '(플랫폼 구축, AI오픈이노베이션, AI브레인랩 지정 운영 )';

MERGE (n:Concept {id: '제도개선'})
SET     n.name = '제도개선',
    n.name_kr = '제도개선',
    n.domain = 'AI',
    n.definition = '(오픈소스, 챌린지 플랫폼 보상금 제도 도입, 윤리족 AI기반 아키텍처 연구 )';

MERGE (n:Concept {id: '오용'})
SET     n.name = '오용',
    n.name_kr = '오용',
    n.domain = 'AI',
    n.definition = '딥페이크, 가짜뉴스 등으로 사회적 문제 발생';

MERGE (n:Concept {id: '사이버_침해'})
SET     n.name = '사이버 침해',
    n.name_kr = '사이버 침해',
    n.domain = 'AI',
    n.definition = '인공지능 시스템에 대한 악의적 공격 발생, 개인 프라이버시 문제';

MERGE (n:Concept {id: '불평등'})
SET     n.name = '불평등',
    n.name_kr = '불평등',
    n.domain = 'AI',
    n.definition = '국가간, 기업간 인공지능 접근성에 대한 차이 발생, 저학력자 해고 위험 노출';

MERGE (n:Concept {id: '편향성'})
SET     n.name = '편향성',
    n.name_kr = '편향성',
    n.domain = 'AI',
    n.definition = '소수자 차별 등 AI알고리즘의 편향성 발생, 정치적 양극화로 인한 사회 응집력 감소';

MERGE (n:Concept {id: '환경'})
SET     n.name = '환경',
    n.name_kr = '환경',
    n.domain = 'AI',
    n.definition = 'AI시스템이 에너지를 많이 사용하여 환경에 부정적 영향 미침';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '인재'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '인프라'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '제도개선'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '오용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '사이버_침해'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '불평등'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '편향성'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Concept {id: '환경'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Document {id: 'AI_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_산업_문제_및_해결방안'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_<_인공지능_산업_문제_및_해결방안'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인재'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도개선'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오용'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_침해'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불평등'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편향성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_064: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_064'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_065: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_065'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_066: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_066'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_068.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_068.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_068.2: 국가지능화(χ+AI)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_068.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '국가지능화'})
SET     n.name = '국가지능화(χ+AI)',
    n.name_kr = '국가지능화(χ+AI)',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_정책/동향'})
SET     n.name = '인공지능 정책/동향',
    n.name_kr = '인공지능 정책/동향',
    n.domain = 'AI';

MERGE (n:Concept {id: '개인의_지능화'})
SET     n.name = '개인의 지능화',
    n.name_kr = '개인의 지능화',
    n.domain = 'AI';

MERGE (n:Concept {id: '사회의_지능화'})
SET     n.name = '사회의 지능화',
    n.name_kr = '사회의 지능화',
    n.domain = 'AI';

MERGE (n:Concept {id: '산업의_지능화'})
SET     n.name = '산업의 지능화',
    n.name_kr = '산업의 지능화',
    n.domain = 'AI';

MERGE (n:Concept {id: '공공의_지능화'})
SET     n.name = '공공의 지능화',
    n.name_kr = '공공의 지능화',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Concept {id: '인공지능_정책/동향'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Concept {id: '개인의_지능화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Concept {id: '사회의_지능화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Concept {id: '산업의_지능화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Concept {id: '공공의_지능화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Document {id: 'AI_068.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '국가지능화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_정책/동향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인의_지능화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회의_지능화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업의_지능화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공의_지능화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_068.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_068.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_069: 인공지능 시대 법 제도 규제 로드맵
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_069'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
SET     n.name = '인공지능 시대 법 제도 규제 로드맵',
    n.name_kr = '인공지능 시대 법 제도 규제 로드맵',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_정책/동향'})
SET     n.name = '인공지능 정책/동향',
    n.name_kr = '인공지능 정책/동향',
    n.domain = 'AI';

MERGE (n:Concept {id: '활용)'})
SET     n.name = '활용)',
    n.name_kr = '활용)',
    n.domain = 'AI';

MERGE (n:Concept {id: '11개_분야'})
SET     n.name = '11개 분야',
    n.name_kr = '11개 분야',
    n.domain = 'AI';

MERGE (n:Concept {id: '주요_항목'})
SET     n.name = '주요 항목',
    n.name_kr = '주요 항목',
    n.domain = 'AI';

MERGE (n:Concept {id: '주요내용_상세설명'})
SET     n.name = '주요내용 상세설명',
    n.name_kr = '주요내용 상세설명',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Concept {id: '인공지능_정책/동향'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Concept {id: '활용)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Concept {id: '11개_분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요_항목'})
MERGE (b:Concept {id: '주요내용_상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Concept {id: '주요_항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Concept {id: '주요내용_상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Document {id: 'AI_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_시대_법_제도_규제_로드맵'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_정책/동향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용)'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '11개_분야'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_항목'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요내용_상세설명'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_070: 인공지능 활성화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_070'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_활성화'})
SET     n.name = '인공지능 활성화',
    n.name_kr = '인공지능 활성화',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_정책/동향'})
SET     n.name = '인공지능 정책/동향',
    n.name_kr = '인공지능 정책/동향',
    n.domain = 'AI';

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'AI';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '컴퓨팅파워'})
SET     n.name = '컴퓨팅파워',
    n.name_kr = '컴퓨팅파워',
    n.domain = 'AI';

MERGE (n:Metric {id: '정확도'})
SET     n.name = '정확도',
    n.name_kr = '정확도',
    n.domain = 'AI';

MERGE (n:Concept {id: '비용감소'})
SET     n.name = '비용감소',
    n.name_kr = '비용감소',
    n.domain = 'AI';

MERGE (n:Concept {id: '시간감소'})
SET     n.name = '시간감소',
    n.name_kr = '시간감소',
    n.domain = 'AI';

MERGE (n:Concept {id: '컴퓨팅_파워'})
SET     n.name = '컴퓨팅 파워',
    n.name_kr = '컴퓨팅 파워',
    n.domain = 'AI',
    n.definition = '대규모 연산';

MERGE (n:Concept {id: '정책_측면'})
SET     n.name = '정책 측면',
    n.name_kr = '정책 측면',
    n.domain = 'AI',
    n.definition = '산업‧기술별 로드맵 수립';

MERGE (n:Concept {id: '환경_측면'})
SET     n.name = '환경 측면',
    n.name_kr = '환경 측면',
    n.domain = 'AI',
    n.definition = '커뮤니티 형식의 자원 지원 체계 필요';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '인공지능_정책/동향'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '컴퓨팅파워'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Metric {id: '정확도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '비용감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '시간감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '컴퓨팅_파워'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '정책_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Concept {id: '환경_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Document {id: 'AI_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_활성화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_정책/동향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅파워'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '정확도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용감소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간감소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅_파워'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_072: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_072'})
SET doc.domain = 'AI';

// ================================================================
// AI 도메인 자동 생성 완료
// 노드: 171개
// 관계: 343개
// ================================================================