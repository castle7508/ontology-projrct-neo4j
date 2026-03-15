// ================================================================
// AI 도메인 표본 (AI_001 ~ AI_005) — 온톨로지 Cypher
// 도메인: AI (인공지능)
// 포함관계: 딥러닝 ⊂ 머신러닝 ⊂ 인공지능
// ================================================================

// ──────────────────────────────────────
// AI_001: 인공지능, 머신러닝, 딥러닝
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'artificial_intelligence'})
SET c.name = 'Artificial Intelligence',
    c.name_kr = '인공지능',
    c.domain = 'AI',
    c.definition = '인간의 지적 능력을 컴퓨터를 통해 구현하는 기술. 전문가 시스템, 규칙기반 시스템 등을 포함.',
    c.aliases = ['AI', '인공지능'],
    c.exam_frequency = 727,
    c.importance = 'high';

MERGE (c:Concept {id: 'machine_learning'})
SET c.name = 'Machine Learning',
    c.name_kr = '머신러닝',
    c.domain = 'AI',
    c.definition = '컴퓨터가 데이터를 통해 스스로 학습하여 예측이나 판단을 제공하는 기술. 결정트리, 선형회귀, 퍼셉트론 등.',
    c.aliases = ['ML', '기계학습', 'Machine Learning'],
    c.exam_frequency = 168,
    c.importance = 'high';

MERGE (c:Concept {id: 'deep_learning'})
SET c.name = 'Deep Learning',
    c.name_kr = '딥러닝',
    c.domain = 'AI',
    c.definition = '깊은 인공신경망 알고리즘을 활용하는 머신러닝 기술. CNN, RNN, 심층강화학습 등.',
    c.aliases = ['DL', '심층학습', 'Deep Learning'],
    c.importance = 'high';

MERGE (c:Concept {id: 'strong_ai'})
SET c.name = 'Strong AI',
    c.name_kr = '강한 인공지능',
    c.domain = 'AI',
    c.definition = '인간과 같은 사고와 행동이 가능한 인공지능.';

MERGE (c:Concept {id: 'weak_ai'})
SET c.name = 'Weak AI',
    c.name_kr = '약한 인공지능',
    c.domain = 'AI',
    c.definition = '논리적 사고와 행동만 가능한, 특정 영역에 한정된 인공지능.';

MERGE (c:Concept {id: 'supervised_learning'})
SET c.name = 'Supervised Learning',
    c.name_kr = '지도학습',
    c.domain = 'AI',
    c.definition = '훈련데이터로부터 하나의 함수를 유추해내기 위한 기계학습 방법. 입력 객체에 대한 속성과 원하는 결과가 표시된 데이터로 학습.';

MERGE (c:Concept {id: 'unsupervised_learning'})
SET c.name = 'Unsupervised Learning',
    c.name_kr = '비지도학습',
    c.domain = 'AI',
    c.definition = '입력 값에 대한 목표치가 주어지지 않으며, 데이터가 어떻게 구성되었는지를 알아내는 학습 방법.';

MERGE (c:Concept {id: 'reinforcement_learning'})
SET c.name = 'Reinforcement Learning',
    c.name_kr = '강화학습',
    c.domain = 'AI',
    c.definition = '데이터의 상태를 인식하고 행위에 대한 환경의 보상을 학습하여 최적 정책을 찾는 기술.';

MERGE (c:Concept {id: 'semi_supervised_learning'})
SET c.name = 'Semi-supervised Learning',
    c.name_kr = '준지도학습',
    c.domain = 'AI',
    c.definition = '지도학습과 비지도학습을 병행. 레이블 데이터로 학습 후 레이블 없는 데이터를 자율 학습.';

// --- Technology 노드 ---

MERGE (t:Technology {id: 'cnn'})
SET t.name = 'CNN',
    t.name_kr = '합성곱 신경망',
    t.category = 'algorithm',
    t.domain = 'AI',
    t.aliases = ['Convolutional Neural Network'];

MERGE (t:Technology {id: 'rnn'})
SET t.name = 'RNN',
    t.name_kr = '순환 신경망',
    t.category = 'algorithm',
    t.domain = 'AI',
    t.aliases = ['Recurrent Neural Network'];

MERGE (t:Technology {id: 'expert_system'})
SET t.name = 'Expert System',
    t.name_kr = '전문가 시스템',
    t.category = 'platform',
    t.domain = 'AI';

MERGE (t:Technology {id: 'neural_network'})
SET t.name = 'Neural Network',
    t.name_kr = '인공신경망',
    t.category = 'algorithm',
    t.domain = 'AI';

// --- Method 노드 ---

MERGE (m:Method {id: 'decision_tree'})
SET m.name = 'Decision Tree',
    m.name_kr = '의사결정트리',
    m.category = 'algorithm',
    m.domain = 'AI';

MERGE (m:Method {id: 'linear_regression'})
SET m.name = 'Linear Regression',
    m.name_kr = '선형회귀',
    m.category = 'algorithm',
    m.domain = 'AI';

MERGE (m:Method {id: 'svm'})
SET m.name = 'Support Vector Machine',
    m.name_kr = 'SVM',
    m.category = 'algorithm',
    m.domain = 'AI',
    m.definition = '데이터가 사상된 공간에서 경계선과 가장 근접한 데이터(Support Vector)간의 거리가 가장 큰 경계를 식별하는 분류 알고리즘.';

MERGE (m:Method {id: 'k_means'})
SET m.name = 'K-Means',
    m.name_kr = 'K-Means',
    m.category = 'algorithm',
    m.domain = 'AI',
    m.definition = 'n개의 데이터를 K개의 군집으로 분류하기 위해 거리 기반으로 반복 계산하는 Clustering 알고리즘.';

MERGE (m:Method {id: 'knn'})
SET m.name = 'K-Nearest Neighbor',
    m.name_kr = 'KNN',
    m.category = 'algorithm',
    m.domain = 'AI';

MERGE (m:Method {id: 'naive_bayes'})
SET m.name = 'Naive Bayes',
    m.name_kr = '나이브 베이즈',
    m.category = 'algorithm',
    m.domain = 'AI';

MERGE (m:Method {id: 'pca'})
SET m.name = 'Principal Component Analysis',
    m.name_kr = '주성분분석',
    m.category = 'algorithm',
    m.domain = 'AI',
    m.definition = '데이터의 주성분을 가장 잘 표현할 수 있는 벡터를 찾아 차원을 축소하는 기법.';

MERGE (m:Method {id: 'dbscan'})
SET m.name = 'DBSCAN',
    m.name_kr = 'DBSCAN',
    m.category = 'algorithm',
    m.domain = 'AI',
    m.definition = '밀도 기반으로 군집화를 수행하는 알고리즘. 정해진 반경 내 최소 데이터 포인트 개수로 군집 판별.';

MERGE (m:Method {id: 'q_learning'})
SET m.name = 'Q-Learning',
    m.name_kr = 'Q-러닝',
    m.category = 'algorithm',
    m.domain = 'AI';

MERGE (m:Method {id: 'backpropagation'})
SET m.name = 'Backpropagation',
    m.name_kr = '역전파',
    m.category = 'algorithm',
    m.domain = 'AI';

// ──────────────────────────────────────
// AI_002: 인공지능 특이점
// ──────────────────────────────────────

MERGE (c:Concept {id: 'technological_singularity'})
SET c.name = 'Technological Singularity',
    c.name_kr = '기술적 특이점',
    c.domain = 'AI',
    c.definition = 'AI의 발전이 인간의 지능을 능가하고, 자기 개선을 통해 무한한 지능폭발을 일으켜 인간의 이해와 통제를 벗어나는 시점.';

MERGE (c:Concept {id: 'super_ai'})
SET c.name = 'Super AI',
    c.name_kr = '초인공지능',
    c.domain = 'AI',
    c.definition = '인간보다 훨씬 뛰어난 지능이나 능력을 가진 인공지능.';

MERGE (c:Concept {id: 'generative_ai'})
SET c.name = 'Generative AI',
    c.name_kr = '생성형 AI',
    c.domain = 'AI',
    c.definition = '학습된 데이터 기반으로 새로운 컨텐츠를 생성하는 인공지능 기술.',
    c.exam_frequency = 75,
    c.importance = 'high';

MERGE (c:Concept {id: 'llm'})
SET c.name = 'Large Language Model',
    c.name_kr = '대규모 언어모형',
    c.domain = 'AI',
    c.definition = '대규모 텍스트 데이터로 학습된 언어 모델. GPT 등.',
    c.aliases = ['LLM'];

MERGE (c:Concept {id: 'multimodal_ai'})
SET c.name = 'Multimodal AI',
    c.name_kr = '멀티모달 AI',
    c.domain = 'AI',
    c.definition = '텍스트, 이미지, 음성 등 다양한 모달리티를 통합 처리하는 AI 기술.';

// ──────────────────────────────────────
// 관계
// ──────────────────────────────────────

// 포함관계: 딥러닝 ⊂ 머신러닝 ⊂ 인공지능
MERGE (a:Concept {id: 'machine_learning'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// AI 유형
MERGE (a:Concept {id: 'strong_ai'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'weak_ai'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'super_ai'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:HAS_TYPE]->(b);

// 학습 유형 → 머신러닝
MERGE (a:Concept {id: 'supervised_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'unsupervised_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'reinforcement_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'semi_supervised_learning'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_TYPE]->(b);

// 딥러닝 기술 → 딥러닝 INSTANCE_OF
MERGE (a:Technology {id: 'cnn'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:INSTANCE_OF]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:INSTANCE_OF]->(b);

MERGE (a:Technology {id: 'neural_network'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:INSTANCE_OF]->(b);

MERGE (a:Technology {id: 'expert_system'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:INSTANCE_OF]->(b);

// 지도학습 알고리즘
MERGE (a:Method {id: 'decision_tree'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'linear_regression'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'svm'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'knn'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'naive_bayes'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'backpropagation'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 비지도학습 알고리즘
MERGE (a:Method {id: 'k_means'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'dbscan'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'pca'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 강화학습 알고리즘
MERGE (a:Method {id: 'q_learning'})
MERGE (b:Concept {id: 'reinforcement_learning'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 특이점 관계
MERGE (a:Concept {id: 'technological_singularity'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'technological_singularity'})
MERGE (b:Concept {id: 'super_ai'})
MERGE (a)-[:EVOLVED_FROM]->(b);

// 생성형 AI 관계
MERGE (a:Concept {id: 'generative_ai'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'llm'})
MERGE (b:Concept {id: 'generative_ai'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'multimodal_ai'})
MERGE (b:Concept {id: 'generative_ai'})
MERGE (a)-[:HAS_TYPE]->(b);

// 지도학습 vs 비지도학습 비교
MERGE (a:Concept {id: 'supervised_learning'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['데이터 레이블', '알고리즘', '활용사례'],
    summary: '지도학습은 레이블 있는 데이터로 분류/예측, 비지도학습은 레이블 없이 군집/차원축소'
}]->(b);

// --- Domain 연결 ---

MATCH (n) WHERE n.domain = 'AI' AND (n:Concept OR n:Technology OR n:Method)
MERGE (d:Domain {id: 'AI'})
MERGE (n)-[:BELONGS_TO]->(d);

// --- Document 추적 ---

MERGE (doc:Document {id: 'AI_001'})
SET doc.filename = 'AI_001_인공지능.docx', doc.domain = 'AI', doc.format = 'docx';

MERGE (doc:Document {id: 'AI_002'})
SET doc.filename = 'AI_002_인공지능 특이점, 역사.doc', doc.domain = 'AI', doc.format = 'doc';

MERGE (doc:Document {id: 'AI_003'})
SET doc.filename = 'AI_003_기계학습.doc', doc.domain = 'AI', doc.format = 'doc';

MERGE (doc:Document {id: 'AI_004'})
SET doc.filename = 'AI_004_감독학습.doc', doc.domain = 'AI', doc.format = 'doc';

MERGE (doc:Document {id: 'AI_005'})
SET doc.filename = 'AI_005_무감독학습.doc', doc.domain = 'AI', doc.format = 'doc';

// AI_001 문서에 언급된 개념
MERGE (c:Concept {id: 'artificial_intelligence'}) MERGE (doc:Document {id: 'AI_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'machine_learning'}) MERGE (doc:Document {id: 'AI_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'deep_learning'}) MERGE (doc:Document {id: 'AI_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// AI_002 문서에 언급된 개념
MERGE (c:Concept {id: 'technological_singularity'}) MERGE (doc:Document {id: 'AI_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'generative_ai'}) MERGE (doc:Document {id: 'AI_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// AI_003 문서에 언급된 개념
MERGE (c:Concept {id: 'machine_learning'}) MERGE (doc:Document {id: 'AI_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'supervised_learning'}) MERGE (doc:Document {id: 'AI_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'unsupervised_learning'}) MERGE (doc:Document {id: 'AI_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'reinforcement_learning'}) MERGE (doc:Document {id: 'AI_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// AI_004 문서에 언급된 개념
MERGE (c:Concept {id: 'supervised_learning'}) MERGE (doc:Document {id: 'AI_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// AI_005 문서에 언급된 개념
MERGE (c:Concept {id: 'unsupervised_learning'}) MERGE (doc:Document {id: 'AI_005'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// ================================================================
// AI 도메인 표본 완료
// 노드: Concept 14개, Technology 4개, Method 12개, Document 5개
// 관계: SUBCLASS_OF, HAS_TYPE, INSTANCE_OF, IMPLEMENTS,
//       COMPARED_WITH, DEPENDS_ON, EVOLVED_FROM,
//       BELONGS_TO, MENTIONED_IN
// ================================================================
