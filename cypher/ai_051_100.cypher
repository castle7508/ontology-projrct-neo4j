// ================================================================
// AI 도메인 (AI_051 ~ AI_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// AI_040.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_040.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_040.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_040.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_041.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_041.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_041.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_041.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_041.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_041.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_042.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_042.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_042.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_042.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_042.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_042.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.1: AutoML(Automatic Machine Learning)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'automatic_machine_learning'})
SET     n.name = 'Automatic Machine Learning',
    n.name_kr = 'AutoML',
    n.domain = 'AI',
    n.aliases = ['Automatic Machine Learning', 'AutoML'];

MERGE (n:Concept {id: '인공지능_학습'})
SET     n.name = '인공지능 학습',
    n.name_kr = '인공지능 학습',
    n.domain = 'AI';

MERGE (n:Concept {id: 'automl'})
SET     n.name = 'AutoML',
    n.name_kr = 'AutoML',
    n.domain = 'AI',
    n.aliases = ['AutoML'];

MERGE (n:Concept {id: '적용분야'})
SET     n.name = '적용분야',
    n.name_kr = '적용분야',
    n.domain = 'AI',
    n.definition = '분류(Classification)';

MERGE (n:Concept {id: 'regression'})
SET     n.name = 'Regression',
    n.name_kr = '회귀',
    n.domain = 'AI',
    n.definition = 'CPU 성능 및 재질 내구성 예측에 적용',
    n.aliases = ['Regression', '회귀'];

MERGE (n:Concept {id: 'time_series'})
SET     n.name = 'Time series',
    n.name_kr = '시계열',
    n.domain = 'AI',
    n.definition = '상품의 수요와 판매를 예측',
    n.aliases = ['Time series', '시계열'];

MERGE (n:Concept {id: '향후전망'})
SET     n.name = '향후전망',
    n.name_kr = '향후전망',
    n.domain = 'AI',
    n.definition = '인력 및 비용 절감';

MERGE (n:Concept {id: '데이터과학자의_직무와_수요의_변화'})
SET     n.name = '데이터과학자의 직무와 수요의 변화',
    n.name_kr = '데이터과학자의 직무와 수요의 변화',
    n.domain = 'AI',
    n.definition = '모델링, 튜닝 등 숙련된 데이터과학자의 직무까지 자동화될 전망 - 소스코드(Snippet)를 공개함으로써 기계 학습의 자동화를 지원 AutoML의 발전과 확산은 데이터과학자의 직무와 수요에 변화를 줄 전망 - 비즈니스 전문가들이 보다 쉽게 데이터 과학을 학습하고 활용할 수 있는 기회 증가';

// --- 관계 ---

MERGE (a:Concept {id: 'automl'})
MERGE (b:Concept {id: '인공지능_학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Concept {id: '적용분야'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Concept {id: 'regression'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Concept {id: 'time_series'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Concept {id: '향후전망'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Concept {id: '데이터과학자의_직무와_수요의_변화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Document {id: 'AI_043.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'automatic_machine_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automl'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용분야'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'regression'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_series'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '향후전망'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터과학자의_직무와_수요의_변화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_043.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.3: 지식 증류(Knowledge Distillation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.3'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'knowledge_distillation'})
SET     n.name = 'Knowledge Distillation',
    n.name_kr = '지식 증류',
    n.domain = 'AI',
    n.aliases = ['Knowledge Distillation', '지식 증류'];

MERGE (n:Concept {id: '인공지능_학습'})
SET     n.name = '인공지능 학습',
    n.name_kr = '인공지능 학습',
    n.domain = 'AI';

MERGE (n:Concept {id: 'teacher_model'})
SET     n.name = 'Teacher Model',
    n.name_kr = 'Teacher Model',
    n.domain = 'AI',
    n.aliases = ['Teacher Model'];

MERGE (n:Concept {id: 'student_modelz'})
SET     n.name = 'Student Modelz',
    n.name_kr = 'Student Modelz',
    n.domain = 'AI',
    n.aliases = ['Student Modelz'];

MERGE (n:Concept {id: 'model'})
SET     n.name = 'Model',
    n.name_kr = 'Model',
    n.domain = 'AI',
    n.definition = 'Teacher Model',
    n.aliases = ['Model'];

MERGE (n:Concept {id: 'function'})
SET     n.name = 'Function',
    n.name_kr = 'Function',
    n.domain = 'AI',
    n.definition = '활성화 함수',
    n.aliases = ['Function'];

// --- 관계 ---

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Concept {id: '인공지능_학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Concept {id: 'teacher_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Concept {id: 'student_modelz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Concept {id: 'model'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Concept {id: 'function'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Document {id: 'AI_043.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'knowledge_distillation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'teacher_model'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'student_modelz'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'model'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'function'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_043.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.4'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.5'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.6'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.7'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_043.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_043.8'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_044: 전문가시스템
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_044'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '전문가시스템'})
SET     n.name = '전문가시스템',
    n.name_kr = '전문가시스템',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능/기계학습'})
SET     n.name = '인공지능/기계학습',
    n.name_kr = '인공지능/기계학습',
    n.domain = 'AI';

MERGE (n:Concept {id: 'if-then_구조'})
SET     n.name = 'IF-THEN 구조',
    n.name_kr = 'IF-THEN 구조',
    n.domain = 'AI';

MERGE (n:Concept {id: '전방향/역방향_추론'})
SET     n.name = '전방향/역방향 추론',
    n.name_kr = '전방향/역방향 추론',
    n.domain = 'AI';

MERGE (n:Concept {id: '휴리스틱'})
SET     n.name = '휴리스틱',
    n.name_kr = '휴리스틱',
    n.domain = 'AI';

MERGE (n:Concept {id: '지식베이스'})
SET     n.name = '지식베이스',
    n.name_kr = '지식베이스',
    n.domain = 'AI';

MERGE (n:Concept {id: '추론기관'})
SET     n.name = '추론기관',
    n.name_kr = '추론기관',
    n.domain = 'AI';

MERGE (n:Concept {id: '설명부_시스템'})
SET     n.name = '설명부 시스템',
    n.name_kr = '설명부 시스템',
    n.domain = 'AI';

MERGE (n:Concept {id: '충돌_해법'})
SET     n.name = '충돌 해법',
    n.name_kr = '충돌 해법',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '인공지능/기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: 'if-then_구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '전방향/역방향_추론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '휴리스틱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '지식베이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '추론기관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '설명부_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Concept {id: '충돌_해법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Document {id: 'AI_044'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전문가시스템'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능/기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'if-then_구조'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전방향/역방향_추론'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '휴리스틱'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식베이스'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추론기관'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설명부_시스템'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '충돌_해법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_045.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_045.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_045.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_045.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_046: 자연어 처리 기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_046'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '자연어_처리_기술'})
SET     n.name = '자연어 처리 기술',
    n.name_kr = '자연어 처리 기술',
    n.domain = 'AI';

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'AI';

MERGE (n:Concept {id: 'nlp'})
SET     n.name = 'NLP',
    n.name_kr = 'NLP',
    n.domain = 'AI',
    n.aliases = ['NLP'];

MERGE (n:Concept {id: 'nlg'})
SET     n.name = 'NLG',
    n.name_kr = 'NLG',
    n.domain = 'AI',
    n.aliases = ['NLG'];

MERGE (n:Concept {id: 'nlu'})
SET     n.name = 'NLU',
    n.name_kr = 'NLU',
    n.domain = 'AI',
    n.aliases = ['NLU'];

MERGE (n:Concept {id: '대화관리'})
SET     n.name = '대화관리',
    n.name_kr = '대화관리',
    n.domain = 'AI';

MERGE (n:Concept {id: '음성변환'})
SET     n.name = '음성변환',
    n.name_kr = '음성변환',
    n.domain = 'AI',
    n.definition = '음성인식(STT, Speech-to-Text)';

MERGE (n:Concept {id: '언어처리'})
SET     n.name = '언어처리',
    n.name_kr = '언어처리',
    n.domain = 'AI',
    n.definition = '언어이해(NLU, Natural Language Understanding)';

MERGE (n:Technology {id: 'bert'})
SET     n.name = 'BERT',
    n.name_kr = 'BERT',
    n.domain = 'AI',
    n.aliases = ['BERT'];

MERGE (n:Technology {id: 'gpt_3'})
SET     n.name = 'GPT-3',
    n.name_kr = 'GPT-3',
    n.domain = 'AI',
    n.aliases = ['GPT-3'];

MERGE (n:Concept {id: '주요_기술'})
SET     n.name = '주요 기술',
    n.name_kr = '주요 기술',
    n.domain = 'AI',
    n.definition = 'EPD';

MERGE (n:Concept {id: '전처리_기술'})
SET     n.name = '전처리 기술',
    n.name_kr = '전처리 기술',
    n.domain = 'AI',
    n.definition = '음성신호의 주파수 특성을 잡음환경에서도 뚜렷하게 분석 추출하는 기술';

MERGE (n:Concept {id: '후처리_기술'})
SET     n.name = '후처리 기술',
    n.name_kr = '후처리 기술',
    n.domain = 'AI',
    n.definition = '숫자나 영문, 문장부호를 복원하는 기술';

MERGE (n:Concept {id: '주요_모델'})
SET     n.name = '주요 모델',
    n.name_kr = '주요 모델',
    n.domain = 'AI',
    n.definition = '음향모델';

MERGE (n:Concept {id: '발음사전'})
SET     n.name = '발음사전',
    n.name_kr = '발음사전',
    n.domain = 'AI',
    n.definition = '단어의 다양한 발음패턴을 기억하는 사전';

MERGE (n:Concept {id: '언어모델'})
SET     n.name = '언어모델',
    n.name_kr = '언어모델',
    n.domain = 'AI',
    n.definition = '단어 간의 관계 또는 문법을 학습하는 모델';

MERGE (n:Concept {id: '기술동향'})
SET     n.name = '기술동향',
    n.name_kr = '기술동향',
    n.domain = 'AI',
    n.definition = '종단형 음성인식';

MERGE (n:Concept {id: 'generative_adversarial_network'})
SET     n.name = '비지도 학습',
    n.name_kr = '비지도 학습',
    n.domain = 'AI',
    n.definition = '종단형 음성인식의 경우, 학습에 소요되는 데이터가 기존 대비 몇 곱절 이상 필요함에 따라 데이터 증강(Data Augmentation), 자기 지도학습(Self-supervised) 기반 비지도 학습 등 새로운 방법론 도입 필요 - BERT와 유사한 비지도 학습 방식인 Wav2Vec, HuBERT 방식 등 제안';

MERGE (n:Concept {id: '다국어_음성인식'})
SET     n.name = '다국어 음성인식',
    n.name_kr = '다국어 음성인식',
    n.domain = 'AI',
    n.definition = '자연어 음성인식 기술의 국제경쟁력 확보의 일환으로 주요 언어 외 주변국으로의 다국어 확장이 필요하며 이 경우 low resource 문제 발생 - 동남아어, 동유럽어, 아랍어권 등 주변국 언어의 경우, 현실적으로 대량의 데이터 확보가 매우 어려움.';

MERGE (n:Concept {id: '국내외_산업계_현황'})
SET     n.name = '국내외 산업계 현황',
    n.name_kr = '국내외 산업계 현황',
    n.domain = 'AI',
    n.definition = '인공지능 스피커 대중화';

MERGE (n:Concept {id: '개발플랫폼_지원_및_생태계_구축'})
SET     n.name = '개발플랫폼 지원 및 생태계 구축',
    n.name_kr = '개발플랫폼 지원 및 생태계 구축',
    n.domain = 'AI',
    n.definition = 'B2B 차원의 인공지능 스피커 생태계 확장을 위한 개발플랫폼 지원';

MERGE (n:Concept {id: '가정_내_ai_허브_전략'})
SET     n.name = '가정 내 AI 허브 전략',
    n.name_kr = '가정 내 AI 허브 전략',
    n.domain = 'AI',
    n.definition = '인공지능 비서(스피커, 스마트TV)를 가정내 모든 가전 기기를 연동할 수 있는 AI 허브로 만들려는 가전업체, 포털업체, 통신업체간 주도권 싸움이 치열';

// --- 관계 ---

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: 'nlp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: 'nlg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: 'nlu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '대화관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '음성변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '언어처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bert'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Technology {id: 'bert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '전처리_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '후처리_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '주요_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '발음사전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '언어모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '기술동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: 'generative_adversarial_network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '다국어_음성인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '국내외_산업계_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '개발플랫폼_지원_및_생태계_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Concept {id: '가정_내_ai_허브_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Document {id: 'AI_046'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자연어_처리_기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nlp'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nlg'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nlu'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화관리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성변환'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언어처리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bert'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gpt_3'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전처리_기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후처리_기술'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_모델'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발음사전'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언어모델'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술동향'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generative_adversarial_network'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다국어_음성인식'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내외_산업계_현황'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발플랫폼_지원_및_생태계_구축'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가정_내_ai_허브_전략'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_047.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.10: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.10'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.11: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.11'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.4'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.5: BERT와 GPT-3
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.5'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'bert와_gpt-3'})
SET     n.name = 'BERT와 GPT-3',
    n.name_kr = 'BERT와 GPT-3',
    n.domain = 'AI';

MERGE (n:Concept {id: '자연어'})
SET     n.name = '자연어',
    n.name_kr = '자연어',
    n.domain = 'AI';

MERGE (n:Technology {id: 'bert'})
SET     n.name = 'BERT',
    n.name_kr = 'BERT',
    n.domain = 'AI',
    n.aliases = ['BERT'];

MERGE (n:Technology {id: 'gpt_3'})
SET     n.name = 'GPT-3',
    n.name_kr = 'GPT-3',
    n.domain = 'AI',
    n.aliases = ['GPT-3'];

// --- 관계 ---

MERGE (a:Technology {id: 'bert'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Technology {id: 'bert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bert'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Technology {id: 'bert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Technology {id: 'gpt_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Document {id: 'AI_047.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'bert와_gpt-3'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자연어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bert'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gpt_3'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_047.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.6'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.7'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.8'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_047.9: TF-IDF(Term Frequency - Inverse Document Frequency)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_047.9'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'term_frequency_inverse_document_frequency'})
SET     n.name = 'Term Frequency - Inverse Document Frequency',
    n.name_kr = 'TF-IDF',
    n.domain = 'AI',
    n.aliases = ['Term Frequency - Inverse Document Frequency', 'TF-IDF'];

MERGE (n:Concept {id: '자연어'})
SET     n.name = '자연어',
    n.name_kr = '자연어',
    n.domain = 'AI';

MERGE (n:Concept {id: 'tf'})
SET     n.name = 'TF',
    n.name_kr = 'TF',
    n.domain = 'AI',
    n.definition = '불린(Boolean) 빈도',
    n.aliases = ['TF'];

MERGE (n:Concept {id: 'df'})
SET     n.name = 'DF',
    n.name_kr = 'DF',
    n.domain = 'AI',
    n.definition = '단어 등장 빈도 계산',
    n.aliases = ['DF'];

MERGE (n:Concept {id: 'idf'})
SET     n.name = 'IDF',
    n.name_kr = 'IDF',
    n.domain = 'AI',
    n.definition = 'DF 값의 역수 계산',
    n.aliases = ['IDF'];

MERGE (n:Concept {id: 'tf_idf'})
SET     n.name = 'TF-IDF',
    n.name_kr = 'TF-IDF',
    n.domain = 'AI',
    n.definition = 'TF 값 x IDF 값',
    n.aliases = ['TF-IDF'];

// --- 관계 ---

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Concept {id: 'tf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Concept {id: 'df'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Concept {id: 'idf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Concept {id: 'tf_idf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Document {id: 'AI_047.9'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'term_frequency_inverse_document_frequency'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자연어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tf'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'df'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'idf'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tf_idf'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_048: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_048'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_049: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_049'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_050: 텐서플로(TensorFlow)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_050'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'tensorflow'})
SET     n.name = 'TensorFlow',
    n.name_kr = '텐서플로',
    n.domain = 'AI',
    n.aliases = ['TensorFlow', '텐서플로'];

MERGE (n:Concept {id: 'tensors'})
SET     n.name = 'tensors',
    n.name_kr = 'tensors',
    n.domain = 'AI',
    n.aliases = ['tensors'];

MERGE (n:Concept {id: 'operation'})
SET     n.name = 'operation',
    n.name_kr = 'operation',
    n.domain = 'AI',
    n.aliases = ['operation'];

MERGE (n:Concept {id: 'kernel'})
SET     n.name = 'kernel',
    n.name_kr = 'kernel',
    n.domain = 'AI',
    n.aliases = ['kernel'];

MERGE (n:Concept {id: 'session'})
SET     n.name = 'session',
    n.name_kr = 'session',
    n.domain = 'AI',
    n.aliases = ['session'];

MERGE (n:Concept {id: 'node'})
SET     n.name = 'node',
    n.name_kr = 'node',
    n.domain = 'AI',
    n.aliases = ['node'];

MERGE (n:Concept {id: 'pytorch'})
SET     n.name = 'PyTorch',
    n.name_kr = '파이토치',
    n.domain = 'AI',
    n.aliases = ['PyTorch', '파이토치'];

// --- 관계 ---

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'tensors'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'kernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'session'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'pytorch'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'pytorch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'pytorch'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Concept {id: 'pytorch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Document {id: 'AI_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tensorflow'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tensors'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'session'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'node'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pytorch'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_051.1: NPU(Neural Processing Unit)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Metric {id: 'neural_processing_unit'})
SET     n.name = 'Neural Processing Unit',
    n.name_kr = 'NPU',
    n.domain = 'AI',
    n.aliases = ['Neural Processing Unit', 'NPU'];

MERGE (n:Concept {id: '120회_출제예상문제'})
SET     n.name = '120회 출제예상문제',
    n.name_kr = '120회 출제예상문제',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Metric {id: 'neural_processing_unit'})
MERGE (b:Document {id: 'AI_051.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'neural_processing_unit'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '120회_출제예상문제'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_051.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.4'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.5'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.6'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.7: 인공지능 데이터 품질
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.7'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_데이터_품질'})
SET     n.name = '인공지능 데이터 품질',
    n.name_kr = '인공지능 데이터 품질',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_구현'})
SET     n.name = '인공지능 구현',
    n.name_kr = '인공지능 구현',
    n.domain = 'AI';

MERGE (n:Concept {id: '원시_데이터_품질'})
SET     n.name = '원시 데이터 품질',
    n.name_kr = '원시 데이터 품질',
    n.domain = 'AI',
    n.definition = '기준 적합성';

MERGE (n:Concept {id: '기술_적합성'})
SET     n.name = '기술 적합성',
    n.name_kr = '기술 적합성',
    n.domain = 'AI';

MERGE (n:Concept {id: '데이터_라벨링_품질'})
SET     n.name = '데이터 라벨링 품질',
    n.name_kr = '데이터 라벨링 품질',
    n.domain = 'AI',
    n.definition = '라벨링 정확성';

MERGE (n:Concept {id: '인공지능_활용_품질'})
SET     n.name = '인공지능 활용 품질',
    n.name_kr = '인공지능 활용 품질',
    n.domain = 'AI',
    n.definition = '유효성';

MERGE (n:Concept {id: '데이터_획득'})
SET     n.name = '데이터 획득',
    n.name_kr = '데이터 획득',
    n.domain = 'AI',
    n.definition = '법/제도 준수, 획득 환경, 획득 대상';

MERGE (n:Concept {id: '데이터_정제'})
SET     n.name = '데이터 정제',
    n.name_kr = '데이터 정제',
    n.domain = 'AI',
    n.definition = '정제 기준, 비식별화, 중복성 방지';

MERGE (n:Concept {id: '데이터_가공'})
SET     n.name = '데이터 가공(라벨링)',
    n.name_kr = '데이터 가공(라벨링)',
    n.domain = 'AI',
    n.definition = '라벨링 포맷, 라벨링 도구, 작업 방식';

MERGE (n:Concept {id: '데이터_품질검수'})
SET     n.name = '데이터 품질검수',
    n.name_kr = '데이터 품질검수',
    n.domain = 'AI',
    n.definition = '검수 기준, 검수 방법';

MERGE (n:Concept {id: '구축_공정'})
SET     n.name = '구축 공정',
    n.name_kr = '구축 공정',
    n.domain = 'AI',
    n.definition = '준비성';

MERGE (n:Concept {id: '완전성'})
SET     n.name = '완전성',
    n.name_kr = '완전성',
    n.domain = 'AI',
    n.definition = '인공지능 학습용 데이터를 구축함에 있어 물리적인 구조를 갖추고, 정의한 데이 터 형식 및 입력값 범위에 맞게 데이터가 저장되도록 설계･구축 되었는지를 검사하는 지표';

MERGE (n:Concept {id: '유용성'})
SET     n.name = '유용성',
    n.name_kr = '유용성',
    n.domain = 'AI',
    n.definition = '발주기관(수요자)의 요구사항이 충분히 반영되었는지, 임무정의에 적합한 인공 지능 학습용 데이터의 범위와 상세화 정도를 충족시키는지를 검사하는 지표';

MERGE (n:Concept {id: '데이터_적합성'})
SET     n.name = '데이터 적합성',
    n.name_kr = '데이터 적합성',
    n.domain = 'AI',
    n.definition = '기준 적합성';

MERGE (n:Concept {id: '통계적_다양성'})
SET     n.name = '통계적 다양성',
    n.name_kr = '통계적 다양성',
    n.domain = 'AI',
    n.definition = '데이터의 편향성을 방지하기 위해, 클래스 분포도, 인스턴스 분포도, 문장길이, 어휘개수 등을 측정하는 지표';

MERGE (n:Concept {id: '데이터_정확성'})
SET     n.name = '데이터 정확성',
    n.name_kr = '데이터 정확성',
    n.domain = 'AI',
    n.definition = '의미 정확성';

MERGE (n:Concept {id: '구문_정확성'})
SET     n.name = '구문 정확성',
    n.name_kr = '구문 정확성',
    n.domain = 'AI',
    n.definition = '어노테이션 데이터를 구성하는 속성 값들과 원래 정의한 데이터 형식 및 입력 값 범위와의 일치성을 측정하는 지표';

MERGE (n:Concept {id: '학습모델'})
SET     n.name = '학습모델',
    n.name_kr = '학습모델',
    n.domain = 'AI',
    n.definition = '알고리즘 적정성';

MERGE (n:Concept {id: '유효성'})
SET     n.name = '유효성',
    n.name_kr = '유효성',
    n.domain = 'AI',
    n.definition = '학습용 데이터로 훈련시키는데 적합한 인공지능 알고리즘의 유효성을 측정하는 지표';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '인공지능_구현'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '원시_데이터_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '기술_적합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_라벨링_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '인공지능_활용_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_획득'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_정제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_가공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_품질검수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '구축_공정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '완전성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '유용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_적합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '통계적_다양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '데이터_정확성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '구문_정확성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '학습모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Concept {id: '유효성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Document {id: 'AI_051.7'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_데이터_품질'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_구현'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원시_데이터_품질'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_적합성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_라벨링_품질'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_활용_품질'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_획득'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_정제'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_가공'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질검수'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축_공정'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완전성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유용성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_적합성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계적_다양성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_정확성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구문_정확성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습모델'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_051.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.8'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_051.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_051.9'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_052: 머신러닝 모델 평가
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_052'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '머신러닝_모델_평가'})
SET     n.name = '머신러닝 모델 평가',
    n.name_kr = '머신러닝 모델 평가',
    n.domain = 'AI';

MERGE (n:Concept {id: '기타_<_머신러닝_모델_평가'})
SET     n.name = '기타 < 머신러닝 모델 평가',
    n.name_kr = '기타 < 머신러닝 모델 평가',
    n.domain = 'AI';

MERGE (n:Concept {id: 'k라운드_횟수_교차'})
SET     n.name = 'k라운드 횟수 교차',
    n.name_kr = 'k라운드 횟수 교차',
    n.domain = 'AI';

MERGE (n:Concept {id: 'confusion_matrix'})
SET     n.name = '혼동행렬',
    n.name_kr = '혼동행렬',
    n.domain = 'AI';

MERGE (n:Concept {id: 'rmse'})
SET     n.name = 'RMSE',
    n.name_kr = 'RMSE',
    n.domain = 'AI',
    n.aliases = ['RMSE'];

MERGE (n:Concept {id: 'dunn\'s_index'})
SET     n.name = 'Dunn\'s Index',
    n.name_kr = 'Dunn\'s Index',
    n.domain = 'AI';

MERGE (n:Metric {id: 'roc_auc'})
SET     n.name = 'ROC/AUC',
    n.name_kr = 'ROC/AUC',
    n.domain = 'AI',
    n.aliases = ['ROC/AUC'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'AI';

MERGE (n:Concept {id: '최적모델_생성'})
SET     n.name = '최적모델 생성',
    n.name_kr = '최적모델 생성',
    n.domain = 'AI',
    n.definition = '한번에 더 많은 데이터 셋을 학습하여, 최적의 모델 생성';

// --- 관계 ---

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: 'k라운드_횟수_교차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: 'confusion_matrix'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: 'rmse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: 'dunn\'s_index'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Metric {id: 'roc_auc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Concept {id: '최적모델_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Document {id: 'AI_052'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '머신러닝_모델_평가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_<_머신러닝_모델_평가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'k라운드_횟수_교차'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'confusion_matrix'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rmse'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dunn\'s_index'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'roc_auc'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적모델_생성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_053: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_053'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_054: F1-Score
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_054'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Metric {id: 'f1_score'})
SET     n.name = 'F1-Score',
    n.name_kr = 'F1-Score',
    n.domain = 'AI',
    n.aliases = ['F1-Score'];

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'AI';

MERGE (n:Concept {id: 'precison'})
SET     n.name = 'Precison',
    n.name_kr = 'Precison',
    n.domain = 'AI',
    n.aliases = ['Precison'];

MERGE (n:Concept {id: 'recall'})
SET     n.name = 'Recall',
    n.name_kr = 'Recall',
    n.domain = 'AI',
    n.aliases = ['Recall'];

MERGE (n:Concept {id: 'true_positive'})
SET     n.name = 'True Positive',
    n.name_kr = 'True Positive',
    n.domain = 'AI',
    n.aliases = ['True Positive'];

MERGE (n:Concept {id: 'false_positive'})
SET     n.name = 'False Positive',
    n.name_kr = 'False Positive',
    n.domain = 'AI',
    n.aliases = ['False Positive'];

MERGE (n:Concept {id: 'true_negative'})
SET     n.name = 'True Negative',
    n.name_kr = 'True Negative',
    n.domain = 'AI',
    n.aliases = ['True Negative'];

MERGE (n:Concept {id: 'false_negative'})
SET     n.name = 'False Negative',
    n.name_kr = 'False Negative',
    n.domain = 'AI',
    n.aliases = ['False Negative'];

MERGE (n:Metric {id: 'precision'})
SET     n.name = 'Precision',
    n.name_kr = '정밀도',
    n.domain = 'AI',
    n.definition = '모델이 True라고 분류한 것 중에서 실제 True인 비율 - 예측 값들 중에서 제대로 예측했는지에 대한 척도 - Precision = TP / (TP + FP)',
    n.aliases = ['Precision', '정밀도'];

MERGE (n:Metric {id: 'accuracy'})
SET     n.name = 'Accuracy',
    n.name_kr = '정확도',
    n.domain = 'AI',
    n.definition = '가장 직관적으로 모델의 성능을 나타낼 수 있는 평가 지표 - Domain Bias 문제 고려 필요 - Accuracy = (TP + TN) / (TP + FN + FP + TN)',
    n.aliases = ['Accuracy', '정확도'];

MERGE (n:Metric {id: 'fall_out'})
SET     n.name = 'Fall-out',
    n.name_kr = 'Fall-out',
    n.domain = 'AI',
    n.definition = 'FPR(False Positive Rate) - 실제 False인 Data중에서 모델이 True라고 예측한 비율 - FPR = FP/(TN+FP)',
    n.aliases = ['Fall-out'];

MERGE (n:Metric {id: 'roc'})
SET     n.name = 'ROC',
    n.name_kr = 'ROC',
    n.domain = 'AI',
    n.definition = 'Receiver Operating Characteristic Curve - 여러 임계 값들 기준으로 Recall-Fallout 변화 시각화 - Curve가 왼쪽 위 모서리에 가까울수록 모델성능 우수',
    n.aliases = ['ROC'];

MERGE (n:Metric {id: 'auc'})
SET     n.name = 'AUC',
    n.name_kr = 'AUC',
    n.domain = 'AI',
    n.definition = 'Area Under Curve - ROC Curve 아래의 면적 값을 이용한 비교 - 최대값 : 1, 좋은 모델(Fall-out < Recall)일수록 1에 가까운 값 수렴',
    n.aliases = ['AUC'];

// --- 관계 ---

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'precison'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'recall'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'true_positive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'false_positive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'true_negative'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Concept {id: 'false_negative'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Metric {id: 'precision'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Metric {id: 'accuracy'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Metric {id: 'fall_out'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Metric {id: 'roc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Metric {id: 'auc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Document {id: 'AI_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'precison'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recall'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'true_positive'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'false_positive'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'true_negative'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'false_negative'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'precision'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'accuracy'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'fall_out'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'roc'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'auc'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_055.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_055.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_055.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_055.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_055.3: 클래스 불균형(Class Imbalance) 문제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_055.3'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'class_imbalance'})
SET     n.name = '클래스 불균형(Class Imbalance) 문제',
    n.name_kr = '클래스 불균형(Class Imbalance) 문제',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능_평가'})
SET     n.name = '인공지능 평가',
    n.name_kr = '인공지능 평가',
    n.domain = 'AI';

MERGE (n:Concept {id: 'resampling'})
SET     n.name = 'Resampling',
    n.name_kr = 'Resampling',
    n.domain = 'AI',
    n.aliases = ['Resampling'];

MERGE (n:Concept {id: 'under_sampling'})
SET     n.name = 'under sampling',
    n.name_kr = 'under sampling',
    n.domain = 'AI',
    n.aliases = ['under sampling'];

MERGE (n:Concept {id: 'over_sampling'})
SET     n.name = 'over sampling',
    n.name_kr = 'over sampling',
    n.domain = 'AI',
    n.aliases = ['over sampling'];

MERGE (n:Metric {id: 'f1_score'})
SET     n.name = 'F1 score',
    n.name_kr = 'F1 score',
    n.domain = 'AI',
    n.aliases = ['F1 score'];

MERGE (n:Metric {id: 'roc_curve'})
SET     n.name = 'ROC curve',
    n.name_kr = 'ROC curve',
    n.domain = 'AI',
    n.aliases = ['ROC curve'];

MERGE (n:Metric {id: 'auc'})
SET     n.name = 'AUC',
    n.name_kr = 'AUC',
    n.domain = 'AI',
    n.aliases = ['AUC'];

MERGE (n:Concept {id: '클래스_불균형_개념'})
SET     n.name = '클래스 불균형 개념',
    n.name_kr = '클래스 불균형 개념',
    n.domain = 'AI',
    n.definition = '다수 클래스(majority class)의 수가 소수 클래스(minority class)의 수보다 월등히 많은 학습 상황을 의미 - 클래스 불균형 데이터는 의료, 반도체, 보험, 텍스트 등 여려 분야에 걸쳐서 발생하고 있는 문제';

MERGE (n:Concept {id: '클래스_불균형_사례'})
SET     n.name = '클래스 불균형 사례',
    n.name_kr = '클래스 불균형 사례',
    n.domain = 'AI';

MERGE (n:Metric {id: '클래스_불균형_데이터의_문제'})
SET     n.name = '클래스 불균형 데이터의 문제',
    n.name_kr = '클래스 불균형 데이터의 문제',
    n.domain = 'AI',
    n.definition = '모델이 소수의 데이터를 무시하는 경향 발생 - 과적합 문제 발생 가능 - 정확도(accuracy)가 높아도 데이터 개수가 적은 클래스의 재현율(recall-rate)이 급격히 작아지는 현상이 발생 - 예측 threshold 값(기본 0.5)이 달라져야 하는 문제가 생김.';

MERGE (n:Concept {id: '해결_방안'})
SET     n.name = '해결 방안',
    n.name_kr = '해결 방안',
    n.domain = 'AI',
    n.definition = 'Resampling method : 오버샘플링(Over-Sampling), 언더샘플링(Under-Sampling), 복합샘플링(Combining Over-and Under-Sampling) - Cost-sensitive learning : Class의 오분류에 대한 cost의 가중치를 조절하여 학습하는 방법';

MERGE (n:Technology {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'AI',
    n.definition = '이미지 출처: https://www.kdnuggets.com/2019/05/fix-unbalanced-dataset.html';

MERGE (n:Concept {id: '장/단점'})
SET     n.name = '장/단점',
    n.name_kr = '장/단점',
    n.domain = 'AI',
    n.definition = '학습에 필요하지 않은 데이터를 제거하여 줄임으로써 학습 속도 향상을 가져올 수 있음 - 임의적으로 뽑은 샘플의 편향(biased) 가능성과 모집단을 대표하지 않을 가능성 존재, 이로 인해 test set에서는 부정확한 결과 초래 가능';

MERGE (n:Concept {id: 'weighted_cross_entropy'})
SET     n.name = 'Weighted Cross Entropy',
    n.name_kr = 'Weighted Cross Entropy',
    n.domain = 'AI',
    n.definition = '분류 문제의 손실함수 중 하나인 cross entropy에 가중치를 부여하는 방법 - 부족한 클래스의 데이터가 들어올 때 가중치를 곱해 Loss 값을 높여주는 방식 (ex: 데이터의 비율이 A : B = 3 : 1이면 A에 1을, B에 3을 곱해주는 방식)',
    n.aliases = ['Weighted Cross Entropy'];

MERGE (n:Concept {id: 'focal_loss'})
SET     n.name = 'Focal Loss',
    n.name_kr = 'Focal Loss',
    n.domain = 'AI',
    n.definition = 'Cross Entropy에 Gamma와 Weight를 추가해 잘 맞추는 클래스에 대한 Loss 값을 줄여 갱신 속도를 늦춰주는 손실함수',
    n.aliases = ['Focal Loss'];

// --- 관계 ---

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: '인공지능_평가'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: 'resampling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: 'under_sampling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: 'over_sampling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Metric {id: 'f1_score'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Metric {id: 'roc_curve'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Metric {id: 'auc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: '클래스_불균형_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: '클래스_불균형_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Metric {id: '클래스_불균형_데이터의_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Technology {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: '장/단점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: 'weighted_cross_entropy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Concept {id: 'focal_loss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Document {id: 'AI_055.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'class_imbalance'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_평가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resampling'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'under_sampling'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'over_sampling'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'f1_score'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'roc_curve'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'auc'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클래스_불균형_개념'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클래스_불균형_사례'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '클래스_불균형_데이터의_문제'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '개념도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장/단점'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'weighted_cross_entropy'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'focal_loss'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_056: 인공지능 데이터 평가
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_056'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능_데이터_평가'})
SET     n.name = '인공지능 데이터 평가',
    n.name_kr = '인공지능 데이터 평가',
    n.domain = 'AI';

MERGE (n:Concept {id: '기타_<_인공지능_데이터_평가'})
SET     n.name = '기타 < 인공지능 데이터 평가',
    n.name_kr = '기타 < 인공지능 데이터 평가',
    n.domain = 'AI';

MERGE (n:Concept {id: '응집성'})
SET     n.name = '응집성',
    n.name_kr = '응집성',
    n.domain = 'AI';

MERGE (n:Concept {id: '다양성'})
SET     n.name = '다양성',
    n.name_kr = '다양성',
    n.domain = 'AI';

MERGE (n:Concept {id: '분류성'})
SET     n.name = '분류성',
    n.name_kr = '분류성',
    n.domain = 'AI';

MERGE (n:Concept {id: '계산량'})
SET     n.name = '계산량',
    n.name_kr = '계산량',
    n.domain = 'AI';

MERGE (n:Concept {id: '어노테이션'})
SET     n.name = '어노테이션',
    n.name_kr = '어노테이션',
    n.domain = 'AI';

MERGE (n:Concept {id: '전처리'})
SET     n.name = '전처리',
    n.name_kr = '전처리',
    n.domain = 'AI';

MERGE (n:Concept {id: '중복제거'})
SET     n.name = '중복제거',
    n.name_kr = '중복제거',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '응집성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '다양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '분류성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '계산량'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '어노테이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '전처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Concept {id: '중복제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Document {id: 'AI_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능_데이터_평가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_<_인공지능_데이터_평가'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응집성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분류성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산량'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어노테이션'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전처리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복제거'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// AI 도메인 자동 생성 완료
// 노드: 130개
// 관계: 262개
// ================================================================