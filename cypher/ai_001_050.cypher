// ================================================================
// AI 도메인 (AI_001 ~ AI_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// AI_001: 인공지능
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_001'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'artificial_intelligence'})
SET     n.name = 'Artificial Intelligence',
    n.name_kr = '인공지능',
    n.domain = 'AI',
    n.aliases = ['인공지능'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AI';

MERGE (n:Technology {id: 'ibm_watson'})
SET     n.name = 'IBM Watson',
    n.name_kr = 'IBM Watson',
    n.domain = 'AI',
    n.aliases = ['IBM Watson'];

MERGE (n:Technology {id: 'google_alphago'})
SET     n.name = 'Google AlphaGo',
    n.name_kr = 'Google AlphaGo',
    n.domain = 'AI',
    n.aliases = ['Google AlphaGo'];

MERGE (n:Concept {id: 'machine_learning'})
SET     n.name = 'Machine Learning',
    n.name_kr = '머신러닝',
    n.domain = 'AI',
    n.definition = '컴퓨터가 데이터를 통해 스스로 학습하여 예측이나 판단을 제공하는 기술',
    n.aliases = ['Machine Learning', '머신러닝'];

MERGE (n:Concept {id: 'deep_learning'})
SET     n.name = 'Deep Learning',
    n.name_kr = '딥러닝',
    n.domain = 'AI',
    n.definition = '깊은 인공신경망 알고리즘을 활용하는 머신러닝 기술',
    n.aliases = ['Deep Learning', '딥러닝'];

// --- 관계 ---

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Technology {id: 'ibm_watson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Technology {id: 'google_alphago'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'machine_learning'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Document {id: 'AI_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ibm_watson'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'google_alphago'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'machine_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_002: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_002'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_003: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_003'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_004: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_004'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_005: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_005'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_006.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_006.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_006.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_006.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_006.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_006.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_007'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_008.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_008.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_008.2: 서포트 벡터 머신 SVM(Support Vector Machine)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_008.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Method {id: 'support_vector_machine'})
SET     n.name = 'Support Vector Machine',
    n.name_kr = '서포트 벡터 머신 SVM',
    n.domain = 'AI',
    n.aliases = ['Support Vector Machine', '서포트 벡터 머신 SVM'];

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'AI';

MERGE (n:Method {id: 'svm'})
SET     n.name = 'SVM',
    n.name_kr = 'SVM',
    n.domain = 'AI',
    n.aliases = ['SVM'];

MERGE (n:Concept {id: 'support_vector'})
SET     n.name = 'Support Vector',
    n.name_kr = 'Support Vector',
    n.domain = 'AI',
    n.aliases = ['Support Vector'];

MERGE (n:Concept {id: 'margin'})
SET     n.name = 'Margin',
    n.name_kr = 'Margin',
    n.domain = 'AI',
    n.aliases = ['Margin'];

MERGE (n:Concept {id: 'hyperplane'})
SET     n.name = 'Hyperplane',
    n.name_kr = 'Hyperplane',
    n.domain = 'AI',
    n.aliases = ['Hyperplane'];

MERGE (n:Concept {id: 'kernel_trick'})
SET     n.name = 'Kernel trick',
    n.name_kr = 'Kernel trick',
    n.domain = 'AI',
    n.aliases = ['Kernel trick'];

MERGE (n:Concept {id: 'slack'})
SET     n.name = 'Slack',
    n.name_kr = 'Slack',
    n.domain = 'AI',
    n.aliases = ['Slack'];

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'AI',
    n.definition = '결정경계';

MERGE (n:Method {id: 'slack_variables'})
SET     n.name = 'Slack Variables',
    n.name_kr = '슬랙변수(여유변수)',
    n.domain = 'AI',
    n.definition = '선형적으로 분류를 위해 허용하는 오차 변수 - 소프트 마진(Soft Margin) SVM 에서 사용',
    n.aliases = ['Slack Variables', '슬랙변수(여유변수)'];

MERGE (n:Concept {id: '마이닝_수행_절차'})
SET     n.name = '마이닝 수행 절차',
    n.name_kr = '마이닝 수행 절차',
    n.domain = 'AI',
    n.definition = '데이터 전처리';

MERGE (n:Metric {id: 'feature_selection'})
SET     n.name = '변수 선택',
    n.name_kr = '변수 선택',
    n.domain = 'AI',
    n.definition = '중요한 변수(독립변수)를 찾는 과정 - 너무 많은 독립변수는 정확도에 악영향 - 적절한 변수 활용 통한 정확도, 계산속도, 모형 해석 능력 향상';

MERGE (n:Concept {id: 'classification'})
SET     n.name = '통계적 분류',
    n.name_kr = '통계적 분류',
    n.domain = 'AI',
    n.definition = '종속변수 예측 및 종속변수에 영향을 미치는 독립변수를 찾는 과정';

// --- 관계 ---

MERGE (a:Method {id: 'svm'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'support_vector'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'margin'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'hyperplane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'kernel_trick'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'slack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Method {id: 'slack_variables'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: '마이닝_수행_절차'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Metric {id: 'feature_selection'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Concept {id: 'classification'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Document {id: 'AI_008.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'svm'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'support_vector'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'margin'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hyperplane'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel_trick'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slack'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'slack_variables'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이닝_수행_절차'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'feature_selection'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'classification'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_009: KNN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_009'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Method {id: 'knn'})
SET     n.name = 'KNN',
    n.name_kr = 'KNN',
    n.domain = 'AI',
    n.aliases = ['KNN'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'AI';

MERGE (n:Method {id: 'k_nearst_neural'})
SET     n.name = 'K-Nearst Neural',
    n.name_kr = 'KNN',
    n.domain = 'AI',
    n.aliases = ['K-Nearst Neural', 'KNN'];

MERGE (n:Method {id: '망할놈의_유클리디안_knn'})
SET     n.name = '망할놈의 유클리디안 KNN',
    n.name_kr = '망할놈의 유클리디안 KNN',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Method {id: 'k_nearst_neural'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'knn'})
MERGE (b:Method {id: '망할놈의_유클리디안_knn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'knn'})
MERGE (b:Document {id: 'AI_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'knn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'k_nearst_neural'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '망할놈의_유클리디안_knn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_010: 클러스터링(Clustering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_010'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'clustering'})
SET     n.name = 'Clustering',
    n.name_kr = '클러스터링',
    n.domain = 'AI',
    n.aliases = ['Clustering', '클러스터링'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'AI';

MERGE (n:Concept {id: '비_지도학습'})
SET     n.name = '비 지도학습',
    n.name_kr = '비 지도학습',
    n.domain = 'AI';

MERGE (n:Concept {id: 'classification'})
SET     n.name = 'Classification',
    n.name_kr = '분류',
    n.domain = 'AI',
    n.aliases = ['Classification', '분류'];

MERGE (n:Concept {id: 'supervised_learning'})
SET     n.name = 'Supervised Learning',
    n.name_kr = '지도학습',
    n.domain = 'AI',
    n.definition = '분류 (Classification)',
    n.aliases = ['Supervised Learning', '지도학습'];

MERGE (n:Concept {id: 'decision_tree'})
SET     n.name = 'Decision Tree',
    n.name_kr = '의사결정나무',
    n.domain = 'AI',
    n.definition = '의사결정규칙을 트리구조로 표현하여 전체자료를 분류하거나, 예측하는 분석방법 - 분류변수와 분류 기준값 선택 중요',
    n.aliases = ['Decision Tree', '의사결정나무'];

MERGE (n:Concept {id: 'naïve_bayes'})
SET     n.name = 'Naïve Bayes',
    n.name_kr = 'Naïve Bayes',
    n.domain = 'AI',
    n.definition = '입력 값들이 모두 독립적인 것을 가정하는 베이즈 정리를 이용한 단순한 분류 알고리즘';

MERGE (n:Method {id: 'support_vector_machine'})
SET     n.name = 'Support Vector Machine',
    n.name_kr = 'SVM',
    n.domain = 'AI',
    n.definition = '학습데이터가 속한 2개의 그룹을 분류하기 위한 가장 큰 폭의 경계를 찾는 알고리즘',
    n.aliases = ['Support Vector Machine', 'SVM'];

MERGE (n:Concept {id: 'regression'})
SET     n.name = 'regression',
    n.name_kr = '회귀',
    n.domain = 'AI',
    n.definition = '선형회귀 (Linear regression)',
    n.aliases = ['regression', '회귀'];

MERGE (n:Concept {id: 'unsupervised_learning'})
SET     n.name = 'Unsupervised Learning',
    n.name_kr = '비지도학습',
    n.domain = 'AI',
    n.definition = '분할군집 (Partition-based clustering)',
    n.aliases = ['Unsupervised Learning', '비지도학습'];

MERGE (n:Method {id: 'dbscan'})
SET     n.name = 'DBSCAN',
    n.name_kr = 'DBSCAN',
    n.domain = 'AI',
    n.definition = '임의의 클러스터 중심을 이동시키며 중심으로부터 정해진 반경 거리 내에 최소 데이터 포인트 개수를 확인하며 밀도 기반으로 군집화를 수행하는 알고리즘',
    n.aliases = ['DBSCAN'];

MERGE (n:Concept {id: 'hierarchical_clustering'})
SET     n.name = 'hierarchical clustering',
    n.name_kr = '계층군집',
    n.domain = 'AI',
    n.definition = 'Dendrogram',
    n.aliases = ['hierarchical clustering', '계층군집'];

MERGE (n:Concept {id: 'em_clustering'})
SET     n.name = 'EM clustering',
    n.name_kr = 'EM clustering',
    n.domain = 'AI',
    n.definition = '정규분포기반으로 E-step과 M-step을 반복해가며, 군집화해 나가는 알고리즘',
    n.aliases = ['EM clustering'];

// --- 관계 ---

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '비_지도학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'classification'})
MERGE (b:Concept {id: 'clustering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'classification'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'supervised_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'decision_tree'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'naïve_bayes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Method {id: 'support_vector_machine'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'regression'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'unsupervised_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Method {id: 'dbscan'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'hierarchical_clustering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'em_clustering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Document {id: 'AI_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비_지도학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'classification'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'supervised_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'naïve_bayes'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'regression'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unsupervised_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'dbscan'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hierarchical_clustering'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'em_clustering'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_011: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_011'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_012: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_012'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_013: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_013'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_014: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_014'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_015: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_015'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_016: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_016'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_017: PCA (Principal Component Analysis) 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_017'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Method {id: 'principal_component_analysis'})
SET     n.name = 'PCA (Principal Component Analysis) 알고리즘',
    n.name_kr = 'PCA (Principal Component Analysis) 알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '인공지능/기계학습'})
SET     n.name = '인공지능/기계학습',
    n.name_kr = '인공지능/기계학습',
    n.domain = 'AI';

MERGE (n:Method {id: 'pca_알고리즘'})
SET     n.name = 'PCA 알고리즘',
    n.name_kr = 'PCA 알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '안면인식'})
SET     n.name = '안면인식',
    n.name_kr = '안면인식',
    n.domain = 'AI';

MERGE (n:Concept {id: '공분산_분해'})
SET     n.name = '공분산 분해',
    n.name_kr = '공분산 분해',
    n.domain = 'AI';

MERGE (n:Concept {id: '원리'})
SET     n.name = '원리',
    n.name_kr = '원리',
    n.domain = 'AI',
    n.definition = '상관도가 높은 변수들을 하나의 주성분 혹은 요인으로 축소';

MERGE (n:Concept {id: 'evd'})
SET     n.name = 'EVD',
    n.name_kr = '고유 값 분해',
    n.domain = 'AI',
    n.definition = '어떠한 행렬 A를 A의 직교 고유벡터(Orthogonal Eigenvector)와 고유값(Elgenvalue)의 곱의 합으로 분해',
    n.aliases = ['EVD', '고유 값 분해'];

MERGE (n:Concept {id: '직교_변환'})
SET     n.name = '직교 변환',
    n.name_kr = '직교 변환',
    n.domain = 'AI',
    n.definition = '고차원 공간의 표본들을 선형 연관성이 없는 저차원 공간(주성분)의 표본으로 직교 변환';

MERGE (n:Concept {id: 'covariance'})
SET     n.name = '공분산',
    n.name_kr = '공분산',
    n.domain = 'AI';

MERGE (n:Concept {id: 'eigen_vector'})
SET     n.name = 'Eigen Vector',
    n.name_kr = 'Eigen Vector',
    n.domain = 'AI',
    n.definition = '행렬 A를 선형변환한 결과가 자기 자신의 상수배가 되게 하는 벡터',
    n.aliases = ['Eigen Vector'];

MERGE (n:Concept {id: '선형_변환'})
SET     n.name = '선형 변환',
    n.name_kr = '선형 변환',
    n.domain = 'AI',
    n.definition = '여러 변수들 X = (x1, x2, x3, …, xn)을 다음과 같이 가중결합 시킨 형태 P차원의 정보를 선형적 개념에서 1차원으로 축소하는 것';

MERGE (n:Concept {id: '분석_과정'})
SET     n.name = '분석 과정',
    n.name_kr = '분석 과정',
    n.domain = 'AI',
    n.definition = '1) 데이터 특성 파악';

MERGE (n:Concept {id: '2)_가중계수_추출'})
SET     n.name = '2) 가중계수 추출',
    n.name_kr = '2) 가중계수 추출',
    n.domain = 'AI',
    n.definition = '공분산 행렬에 대한 고유값 분해 이용';

MERGE (n:Concept {id: '3)_차원_축소'})
SET     n.name = '3) 차원 축소',
    n.name_kr = '3) 차원 축소',
    n.domain = 'AI',
    n.definition = '상관계수 및 상관행렬';

MERGE (n:Concept {id: '4)_보유_주성분_개수_판정'})
SET     n.name = '4) 보유 주성분 개수 판정',
    n.name_kr = '4) 보유 주성분 개수 판정',
    n.domain = 'AI',
    n.definition = '전체변이에 대한 공헌도, 고유값 크기';

MERGE (n:Concept {id: 'linear_discriminant_analysis'})
SET     n.name = 'Linear Discriminant Analysis',
    n.name_kr = 'LDA',
    n.domain = 'AI',
    n.aliases = ['Linear Discriminant Analysis', 'LDA'];

MERGE (n:Method {id: 'pca'})
SET     n.name = 'PCA',
    n.name_kr = 'PCA',
    n.domain = 'AI',
    n.aliases = ['PCA'];

MERGE (n:Concept {id: 'fda'})
SET     n.name = 'FDA',
    n.name_kr = 'FDA',
    n.domain = 'AI',
    n.aliases = ['FDA'];

MERGE (n:Concept {id: 'ica'})
SET     n.name = 'ICA',
    n.name_kr = 'ICA',
    n.domain = 'AI',
    n.aliases = ['ICA'];

// --- 관계 ---

MERGE (a:Method {id: 'pca_알고리즘'})
MERGE (b:Concept {id: '인공지능/기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '안면인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '공분산_분해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '원리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'evd'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '직교_변환'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'covariance'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'eigen_vector'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '선형_변환'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '분석_과정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '2)_가중계수_추출'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '3)_차원_축소'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: '4)_보유_주성분_개수_판정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'linear_discriminant_analysis'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'linear_discriminant_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'pca'})
MERGE (b:Concept {id: 'fda'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'pca'})
MERGE (b:Concept {id: 'ica'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Method {id: 'pca'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fda'})
MERGE (b:Concept {id: 'ica'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'fda'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Concept {id: 'ica'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Document {id: 'AI_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'principal_component_analysis'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능/기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'pca_알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안면인식'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공분산_분해'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원리'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'evd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직교_변환'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'covariance'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eigen_vector'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형_변환'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_과정'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_가중계수_추출'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_차원_축소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_보유_주성분_개수_판정'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'linear_discriminant_analysis'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'pca'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fda'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ica'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_018: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_018'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_019: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_019'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_020: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_020'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_021: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_021'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_022.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_022.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_022.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_022.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_023: Gradient decent(경사 하강법)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_023'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'gradient_decent'})
SET     n.name = 'Gradient decent',
    n.name_kr = '경사 하강법',
    n.domain = 'AI',
    n.aliases = ['Gradient decent', '경사 하강법'];

MERGE (n:Concept {id: 'mlp'})
SET     n.name = 'MLP',
    n.name_kr = 'MLP',
    n.domain = 'AI',
    n.aliases = ['MLP'];

MERGE (n:Concept {id: 'local_minimum'})
SET     n.name = 'local minimum',
    n.name_kr = 'local minimum',
    n.domain = 'AI',
    n.aliases = ['local minimum'];

MERGE (n:Concept {id: '최적화_기법'})
SET     n.name = '최적화 기법',
    n.name_kr = '최적화 기법',
    n.domain = 'AI';

MERGE (n:Concept {id: '활성화_함수_측면'})
SET     n.name = '활성화 함수 측면',
    n.name_kr = '활성화 함수 측면',
    n.domain = 'AI',
    n.definition = '은닉층 시그모이드(Sigmoid) 함수 사용';

MERGE (n:Concept {id: '가중치_측면'})
SET     n.name = '가중치 측면',
    n.name_kr = '가중치 측면',
    n.domain = 'AI',
    n.definition = '가중치 영향';

MERGE (n:Technology {id: '학습_효율성_향상_측면'})
SET     n.name = '학습 효율성 향상 측면',
    n.name_kr = '학습 효율성 향상 측면',
    n.domain = 'AI',
    n.definition = '메모리 기억 기반 LSTM 활용';

MERGE (n:Concept {id: '사전_학습_기반_dbn_활용'})
SET     n.name = '사전 학습 기반 DBN 활용',
    n.name_kr = '사전 학습 기반 DBN 활용',
    n.domain = 'AI',
    n.definition = 'Fine Tuning 이전 Pre-Training 수행, 예측 값 정확성 개선 - RBM, Autoencoder 활용 Weight 비지도 학습';

MERGE (n:Concept {id: '활성함수_개선_측면'})
SET     n.name = '활성함수 개선 측면',
    n.name_kr = '활성함수 개선 측면',
    n.domain = 'AI',
    n.definition = '미분 값 보존 ReLU 함수 활용';

// --- 관계 ---

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: 'mlp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: 'local_minimum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: '최적화_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: '활성화_함수_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: '가중치_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Technology {id: '학습_효율성_향상_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: '사전_학습_기반_dbn_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Concept {id: '활성함수_개선_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Document {id: 'AI_023'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'gradient_decent'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mlp'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'local_minimum'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적화_기법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활성화_함수_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가중치_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '학습_효율성_향상_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전_학습_기반_dbn_활용'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활성함수_개선_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_024: 확률적경사하강법, 배치경사하강법, 미니배치경사하강법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_024'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
SET     n.name = '확률적경사하강법, 배치경사하강법, 미니배치경사하강법',
    n.name_kr = '확률적경사하강법, 배치경사하강법, 미니배치경사하강법',
    n.domain = 'AI';

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'AI';

MERGE (n:Method {id: 'sgd'})
SET     n.name = 'SGD',
    n.name_kr = '확률적경사하강법',
    n.domain = 'AI',
    n.aliases = ['SGD', '확률적경사하강법'];

MERGE (n:Concept {id: 'bgd'})
SET     n.name = 'BGD',
    n.name_kr = '배치경사하강법',
    n.domain = 'AI',
    n.aliases = ['BGD', '배치경사하강법'];

MERGE (n:Concept {id: 'msgd'})
SET     n.name = 'MSGD',
    n.name_kr = '미니배치경사하강법',
    n.domain = 'AI',
    n.aliases = ['MSGD', '미니배치경사하강법'];

// --- 관계 ---

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'sgd'})
MERGE (b:Concept {id: 'bgd'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'sgd'})
MERGE (b:Concept {id: 'msgd'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Method {id: 'sgd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bgd'})
MERGE (b:Concept {id: 'msgd'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Concept {id: 'bgd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Concept {id: 'msgd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Document {id: 'AI_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '확률적경사하강법,_배치경사하강법,_미니배치경사하강법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sgd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bgd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'msgd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_025: 배치 정규화(Batch normalization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_025'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'batch_normalization'})
SET     n.name = 'Batch normalization',
    n.name_kr = '배치 정규화',
    n.domain = 'AI',
    n.aliases = ['Batch normalization', '배치 정규화'];

MERGE (n:Concept {id: '평균_0'})
SET     n.name = '평균 0',
    n.name_kr = '평균 0',
    n.domain = 'AI';

MERGE (n:Concept {id: '분산_1'})
SET     n.name = '분산 1',
    n.name_kr = '분산 1',
    n.domain = 'AI';

MERGE (n:Concept {id: '수행절차'})
SET     n.name = '수행절차',
    n.name_kr = '수행절차',
    n.domain = 'AI';

MERGE (n:Concept {id: '기울기_소실_해결'})
SET     n.name = '기울기 소실 해결',
    n.name_kr = '기울기 소실 해결',
    n.domain = 'AI';

MERGE (n:Concept {id: '초기값_의존성_저하'})
SET     n.name = '초기값 의존성 저하',
    n.name_kr = '초기값 의존성 저하',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Concept {id: '평균_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Concept {id: '분산_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Concept {id: '수행절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Concept {id: '기울기_소실_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Concept {id: '초기값_의존성_저하'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Document {id: 'AI_025'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'batch_normalization'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_0'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_1'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행절차'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기울기_소실_해결'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기값_의존성_저하'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_026.1: 옵티마이저(Machine Learning Optimizer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_026.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'machine_learning_optimizer'})
SET     n.name = 'Machine Learning Optimizer',
    n.name_kr = '옵티마이저',
    n.domain = 'AI',
    n.aliases = ['Machine Learning Optimizer', '옵티마이저'];

MERGE (n:Concept {id: 'gd'})
SET     n.name = 'GD',
    n.name_kr = 'GD',
    n.domain = 'AI',
    n.aliases = ['GD'];

MERGE (n:Method {id: 'sgd'})
SET     n.name = 'SGD',
    n.name_kr = 'SGD',
    n.domain = 'AI',
    n.aliases = ['SGD'];

MERGE (n:Concept {id: 'momentum'})
SET     n.name = 'Momentum',
    n.name_kr = 'Momentum',
    n.domain = 'AI',
    n.aliases = ['Momentum'];

MERGE (n:Concept {id: 'adagrad'})
SET     n.name = 'AdaGrad',
    n.name_kr = 'AdaGrad',
    n.domain = 'AI',
    n.aliases = ['AdaGrad'];

MERGE (n:Concept {id: 'rmsprop'})
SET     n.name = 'RMSProp',
    n.name_kr = 'RMSProp',
    n.domain = 'AI',
    n.aliases = ['RMSProp'];

MERGE (n:Method {id: 'adam'})
SET     n.name = 'ADAM',
    n.name_kr = 'ADAM',
    n.domain = 'AI',
    n.aliases = ['ADAM'];

MERGE (n:Method {id: '기울기_기반'})
SET     n.name = '기울기 기반',
    n.name_kr = '기울기 기반',
    n.domain = 'AI',
    n.definition = 'Gradient Descent';

MERGE (n:Concept {id: 'stochastic_gd'})
SET     n.name = 'Stochastic GD',
    n.name_kr = 'Stochastic GD',
    n.domain = 'AI',
    n.definition = '손실함수 기울기 계산 후 학습률 반영, 결과 값으로 가중치 값 갱신',
    n.aliases = ['Stochastic GD'];

MERGE (n:Concept {id: '관성_기반'})
SET     n.name = '관성 기반',
    n.name_kr = '관성 기반',
    n.domain = 'AI',
    n.definition = 'Momentum';

MERGE (n:Concept {id: 'nag'})
SET     n.name = 'NAG',
    n.name_kr = 'NAG',
    n.domain = 'AI',
    n.definition = '과거 이동 방향 이동 후 기울기를 구해서 기울기만큼 추가 이동',
    n.aliases = ['NAG'];

MERGE (n:Concept {id: '학습률_기반'})
SET     n.name = '학습률 기반',
    n.name_kr = '학습률 기반',
    n.domain = 'AI',
    n.definition = 'Adagrad';

MERGE (n:Concept {id: 'adadelta'})
SET     n.name = 'AdaDelta',
    n.name_kr = 'AdaDelta',
    n.domain = 'AI',
    n.definition = 'Adagrad의 학습률 0 수렴 문제를 해결 하기 위한 방식',
    n.aliases = ['AdaDelta'];

MERGE (n:Method {id: '복합형'})
SET     n.name = '복합형',
    n.name_kr = '복합형',
    n.domain = 'AI',
    n.definition = 'ADAM';

MERGE (n:Method {id: 'nadam'})
SET     n.name = 'NADAM',
    n.name_kr = 'NADAM',
    n.domain = 'AI',
    n.definition = 'ADAM + 기울기(NAG) 반영',
    n.aliases = ['NADAM'];

MERGE (n:Concept {id: '성능_측면'})
SET     n.name = '성능 측면',
    n.name_kr = '성능 측면',
    n.domain = 'AI',
    n.definition = '절대성';

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'AI',
    n.definition = '분석 대상 데이터에 따라 옵티마이저의 성능 차이가 매우 크다';

MERGE (n:Concept {id: '최적화_측면'})
SET     n.name = '최적화 측면',
    n.name_kr = '최적화 측면',
    n.domain = 'AI',
    n.definition = '속도';

MERGE (n:Concept {id: '신뢰도'})
SET     n.name = '신뢰도',
    n.name_kr = '신뢰도',
    n.domain = 'AI',
    n.definition = '중요한 분석인 경우 높은 신뢰도 확보를 위한 옵티마이저 추가 보정';

// --- 관계 ---

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'gd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Method {id: 'sgd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'momentum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'adagrad'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'rmsprop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Method {id: 'adam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Method {id: '기울기_기반'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'stochastic_gd'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '관성_기반'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'nag'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '학습률_기반'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: 'adadelta'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Method {id: '복합형'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Method {id: 'nadam'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '성능_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '최적화_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Concept {id: '신뢰도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Document {id: 'AI_026.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'machine_learning_optimizer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sgd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'momentum'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adagrad'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rmsprop'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'adam'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '기울기_기반'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stochastic_gd'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관성_기반'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nag'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습률_기반'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adadelta'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '복합형'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'nadam'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적화_측면'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_026.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_026.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_027.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_027.1'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_027.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_027.2'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_027.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_027.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_028: 드랍아웃(Drop Out)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_028'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'drop_out'})
SET     n.name = 'Drop Out',
    n.name_kr = '드랍아웃',
    n.domain = 'AI',
    n.aliases = ['Drop Out', '드랍아웃'];

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'AI';

MERGE (n:Concept {id: 'overfitting'})
SET     n.name = 'Overfitting',
    n.name_kr = '과적합',
    n.domain = 'AI',
    n.aliases = ['Overfitting', '과적합'];

MERGE (n:Concept {id: 'drop_rate'})
SET     n.name = 'Drop Rate',
    n.name_kr = 'Drop Rate',
    n.domain = 'AI',
    n.aliases = ['Drop Rate'];

MERGE (n:Concept {id: 'feed_forward'})
SET     n.name = 'Feed Forward',
    n.name_kr = 'Feed Forward',
    n.domain = 'AI',
    n.aliases = ['Feed Forward'];

MERGE (n:Concept {id: 'back_propagation'})
SET     n.name = 'Back Propagation',
    n.name_kr = 'Back Propagation',
    n.domain = 'AI',
    n.aliases = ['Back Propagation'];

MERGE (n:Concept {id: '시간/공간_드랍아웃'})
SET     n.name = '시간/공간 드랍아웃',
    n.name_kr = '시간/공간 드랍아웃',
    n.domain = 'AI';

MERGE (n:Concept {id: 'batch_nomalization'})
SET     n.name = 'Batch Nomalization',
    n.name_kr = 'Batch Nomalization',
    n.domain = 'AI',
    n.aliases = ['Batch Nomalization'];

// --- 관계 ---

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: 'overfitting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: 'drop_rate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: 'feed_forward'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: 'back_propagation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: '시간/공간_드랍아웃'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Concept {id: 'batch_nomalization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Document {id: 'AI_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'drop_out'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'overfitting'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drop_rate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'feed_forward'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'back_propagation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간/공간_드랍아웃'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'batch_nomalization'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_029: 드롭아웃 규제화(Dropout Regulation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_029'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'dropout_regulation'})
SET     n.name = 'Dropout Regulation',
    n.name_kr = '드롭아웃 규제화',
    n.domain = 'AI',
    n.aliases = ['Dropout Regulation', '드롭아웃 규제화'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'AI';

MERGE (n:Concept {id: 'sigmoid_squash'})
SET     n.name = 'Sigmoid/Squash',
    n.name_kr = 'Sigmoid/Squash',
    n.domain = 'AI',
    n.aliases = ['Sigmoid/Squash'];

MERGE (n:Concept {id: 'relu_leaky_relu'})
SET     n.name = 'ReLU/Leaky ReLU',
    n.name_kr = 'ReLU/Leaky ReLU',
    n.domain = 'AI',
    n.aliases = ['ReLU/Leaky ReLU'];

MERGE (n:Concept {id: 'dbn/pre-training)'})
SET     n.name = 'DBN/Pre-Training)',
    n.name_kr = 'DBN/Pre-Training)',
    n.domain = 'AI';

MERGE (n:Concept {id: 'dropout(overfitting'})
SET     n.name = 'Dropout(Overfitting',
    n.name_kr = 'Dropout(Overfitting',
    n.domain = 'AI';

MERGE (n:Threat {id: 'voting_co_adaption'})
SET     n.name = 'Voting/Co-Adaption',
    n.name_kr = 'Voting/Co-Adaption',
    n.domain = 'AI',
    n.aliases = ['Voting/Co-Adaption'];

MERGE (n:Concept {id: '축소신경망'})
SET     n.name = '축소신경망',
    n.name_kr = '축소신경망',
    n.domain = 'AI';

MERGE (n:Concept {id: 'mini-batch_경사감소법)'})
SET     n.name = 'Mini-Batch 경사감소법)',
    n.name_kr = 'Mini-Batch 경사감소법)',
    n.domain = 'AI';

MERGE (n:Concept {id: '경량딥러닝_알고리즘'})
SET     n.name = '경량딥러닝 알고리즘',
    n.name_kr = '경량딥러닝 알고리즘',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: 'sigmoid_squash'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: 'relu_leaky_relu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: 'dbn/pre-training)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: 'dropout(overfitting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Threat {id: 'voting_co_adaption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: '축소신경망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: 'mini-batch_경사감소법)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Concept {id: '경량딥러닝_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Document {id: 'AI_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dropout_regulation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sigmoid_squash'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'relu_leaky_relu'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dbn/pre-training)'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dropout(overfitting'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'voting_co_adaption'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '축소신경망'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mini-batch_경사감소법)'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량딥러닝_알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_030: CNN (Convolutional Neural Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_030'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'convolutional_neural_network'})
SET     n.name = 'Convolutional Neural Network',
    n.name_kr = 'CNN',
    n.domain = 'AI',
    n.aliases = ['Convolutional Neural Network', 'CNN'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'AI';

MERGE (n:Technology {id: 'cnn'})
SET     n.name = 'CNN',
    n.name_kr = 'CNN',
    n.domain = 'AI',
    n.aliases = ['CNN'];

MERGE (n:Concept {id: 'na'})
SET     n.name = 'NA',
    n.name_kr = 'NA',
    n.domain = 'AI',
    n.aliases = ['NA'];

MERGE (n:Concept {id: 'image_classification'})
SET     n.name = 'Image classification',
    n.name_kr = 'Image classification',
    n.domain = 'AI',
    n.definition = 'computer vision 의 한 분야로 이미지 분류에 활용',
    n.aliases = ['Image classification'];

MERGE (n:Technology {id: 'rnn_연계'})
SET     n.name = 'RNN 연계',
    n.name_kr = 'RNN 연계',
    n.domain = 'AI',
    n.definition = 'CNN 과 RNN 을 이용한 이미지 센싱->분류->설명 문구 생성에 활용';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'AI';

MERGE (n:Concept {id: 'layer_구성'})
SET     n.name = 'Layer 구성',
    n.name_kr = 'Layer 구성',
    n.domain = 'AI',
    n.definition = 'Convolution layer';

MERGE (n:Concept {id: 'pooling_layer'})
SET     n.name = 'Pooling layer',
    n.name_kr = 'Pooling layer',
    n.domain = 'AI',
    n.definition = 'Sub sampling 을 통한 차원의 축소로 max-pooling, average pooling 등 활용 - 차원을 축소하는 효과를 얻을 수 있음',
    n.aliases = ['Pooling layer'];

MERGE (n:Concept {id: 'fully_connected_layer'})
SET     n.name = 'Fully connected layer',
    n.name_kr = 'Fully connected layer',
    n.domain = 'AI',
    n.definition = '이전 레이어의 모든 처리 결과를 하나로 연결 - 이미지의 특징을 구분함(Classification)',
    n.aliases = ['Fully connected layer'];

MERGE (n:Concept {id: '성능_개선'})
SET     n.name = '성능 개선',
    n.name_kr = '성능 개선',
    n.domain = 'AI',
    n.definition = 'ReLU';

MERGE (n:Concept {id: 'bigdata'})
SET     n.name = 'Bigdata',
    n.name_kr = 'Bigdata',
    n.domain = 'AI',
    n.definition = '과적합(Overfitting) 문제 해결',
    n.aliases = ['Bigdata'];

MERGE (n:Concept {id: 'dropout'})
SET     n.name = 'Dropout',
    n.name_kr = 'Dropout',
    n.domain = 'AI',
    n.definition = '인공 신경망의 Overfitting 을 방지하기 위해 특정 비율의 뉴런을 동작하지 않도록 학습을 수행하는 기법. - 히든노드 일부를 훈련시키지 않음',
    n.aliases = ['Dropout'];

MERGE (n:Concept {id: 'kernel_size'})
SET     n.name = 'Kernel Size',
    n.name_kr = 'Kernel Size',
    n.domain = 'AI',
    n.definition = 'Pixel의 개수',
    n.aliases = ['Kernel Size'];

MERGE (n:Concept {id: 'padding'})
SET     n.name = 'Padding',
    n.name_kr = 'Padding',
    n.domain = 'AI',
    n.definition = '추가되는 0의 개수',
    n.aliases = ['Padding'];

MERGE (n:Concept {id: 'stride'})
SET     n.name = 'Stride',
    n.name_kr = 'Stride',
    n.domain = 'AI',
    n.definition = '이동 Pixel의 개수',
    n.aliases = ['Stride'];

MERGE (n:Concept {id: 'number_of_filters'})
SET     n.name = 'Number of filters',
    n.name_kr = 'Number of filters',
    n.domain = 'AI',
    n.definition = 'Layer Filter 개수',
    n.aliases = ['Number of filters'];

MERGE (n:Concept {id: 'filter_size'})
SET     n.name = 'Filter size',
    n.name_kr = 'Filter size',
    n.domain = 'AI',
    n.definition = 'Filter의 크기',
    n.aliases = ['Filter size'];

MERGE (n:Concept {id: 'pooling_type_size'})
SET     n.name = 'Pooling type/size',
    n.name_kr = 'Pooling type/size',
    n.domain = 'AI',
    n.definition = 'Pooling 선택',
    n.aliases = ['Pooling type/size'];

MERGE (n:Concept {id: 'dilation'})
SET     n.name = 'Dilation',
    n.name_kr = 'Dilation',
    n.domain = 'AI',
    n.definition = 'Kernel 확장 크기',
    n.aliases = ['Dilation'];

MERGE (n:Concept {id: '파라미터_감소'})
SET     n.name = '파라미터 감소',
    n.name_kr = '파라미터 감소',
    n.domain = 'AI',
    n.definition = 'Overfitting 억제';

MERGE (n:Concept {id: '출력'})
SET     n.name = '출력',
    n.name_kr = '출력',
    n.domain = 'AI',
    n.definition = '채널 수 유지';

// --- 관계 ---

MERGE (a:Technology {id: 'cnn'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'na'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'image_classification'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Technology {id: 'rnn_연계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'layer_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'pooling_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'fully_connected_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: '성능_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'bigdata'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'dropout'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'kernel_size'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'padding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'stride'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'number_of_filters'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'filter_size'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'pooling_type_size'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: 'dilation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: '파라미터_감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Concept {id: '출력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Document {id: 'AI_030'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'convolutional_neural_network'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'cnn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'na'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'image_classification'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rnn_연계'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layer_구성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pooling_layer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fully_connected_layer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_개선'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bigdata'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dropout'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel_size'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'padding'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stride'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'number_of_filters'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'filter_size'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pooling_type_size'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dilation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파라미터_감소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_031: R-CNN (Region-based CNN), Fast RCNN, Faster RCNN, YOLO (You Only Look Once)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_031'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '다중_객체_인식'})
SET     n.name = '다중 객체 인식',
    n.name_kr = '다중 객체 인식',
    n.domain = 'AI';

MERGE (n:Concept {id: '객체_인식_속도'})
SET     n.name = '객체 인식 속도',
    n.name_kr = '객체 인식 속도',
    n.domain = 'AI';

MERGE (n:Concept {id: 'feature_map'})
SET     n.name = 'Feature map',
    n.name_kr = 'Feature map',
    n.domain = 'AI',
    n.aliases = ['Feature map'];

MERGE (n:Concept {id: 'selective_search'})
SET     n.name = 'Selective Search',
    n.name_kr = 'Selective Search',
    n.domain = 'AI',
    n.aliases = ['Selective Search'];

MERGE (n:Concept {id: 'rpn'})
SET     n.name = 'RPN',
    n.name_kr = 'RPN',
    n.domain = 'AI',
    n.aliases = ['RPN'];

MERGE (n:Concept {id: 'grid'})
SET     n.name = 'Grid',
    n.name_kr = 'Grid',
    n.domain = 'AI',
    n.aliases = ['Grid'];

MERGE (n:Concept {id: 'bounding_box'})
SET     n.name = 'Bounding Box',
    n.name_kr = 'Bounding Box',
    n.domain = 'AI',
    n.aliases = ['Bounding Box'];

MERGE (n:Concept {id: 'confidence_score'})
SET     n.name = 'Confidence Score',
    n.name_kr = 'Confidence Score',
    n.domain = 'AI',
    n.aliases = ['Confidence Score'];

MERGE (n:Concept {id: 'class_probability'})
SET     n.name = 'Class Probability',
    n.name_kr = 'Class Probability',
    n.domain = 'AI',
    n.aliases = ['Class Probability'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'AI';

MERGE (n:Concept {id: '영역_탐지_기법'})
SET     n.name = '영역 탐지 기법',
    n.name_kr = '영역 탐지 기법',
    n.domain = 'AI',
    n.definition = '절차';

MERGE (n:Concept {id: '[1_단계]_extract_region_proposals'})
SET     n.name = '[1 단계] Extract Region Proposals',
    n.name_kr = '[1 단계] Extract Region Proposals',
    n.domain = 'AI',
    n.definition = 'Selective Search';

MERGE (n:Concept {id: 'region_proposal'})
SET     n.name = 'Region Proposal',
    n.name_kr = 'Region Proposal',
    n.domain = 'AI',
    n.definition = 'Selective Search 를 통해 약 2,000 개 가량의 Region Proposal 을 추출',
    n.aliases = ['Region Proposal'];

MERGE (n:Technology {id: '[2_단계]_compute_cnn_feature'})
SET     n.name = '[2 단계] Compute CNN Feature',
    n.name_kr = '[2 단계] Compute CNN Feature',
    n.domain = 'AI',
    n.definition = 'Warping';

MERGE (n:Technology {id: 'convolution_neural_network'})
SET     n.name = 'Convolution Neural Network',
    n.name_kr = 'CNN',
    n.domain = 'AI',
    n.definition = '일정한 Size 로 변경된 Image 를 CNN 알고리즘 기반 학습을 진행하고, 이를 통해 CNN Feature Vector 획득',
    n.aliases = ['Convolution Neural Network', 'CNN'];

MERGE (n:Method {id: '[3_단계]_classify_regions'})
SET     n.name = '[3 단계] Classify Regions',
    n.name_kr = '[3 단계] Classify Regions',
    n.domain = 'AI',
    n.definition = 'SVM (Support Vector Machine)';

MERGE (n:Concept {id: 'bounding_box_regression'})
SET     n.name = 'Bounding-Box Regression',
    n.name_kr = 'Bounding-Box Regression',
    n.domain = 'AI',
    n.definition = '탐지하고자 하는 객체의 Region 과 학습된 Region 의 오차에 대해 Linear Regression Model 을 이용하여 객체 인식',
    n.aliases = ['Bounding-Box Regression'];

MERGE (n:Technology {id: '알고_리즘'})
SET     n.name = '알고 리즘',
    n.name_kr = '알고 리즘',
    n.domain = 'AI',
    n.definition = 'CNN (Convolution Neural Network)';

MERGE (n:Concept {id: 'selective_search_기반_region_proposal'})
SET     n.name = 'Selective Search 기반 Region Proposal',
    n.name_kr = 'Selective Search 기반 Region Proposal',
    n.domain = 'AI',
    n.definition = 'Selective Search 알고리즘 기반 Region Proposal 수행';

MERGE (n:Concept {id: 'roi_pooling_layer'})
SET     n.name = 'ROI Pooling Layer',
    n.name_kr = 'ROI Pooling Layer',
    n.domain = 'AI',
    n.definition = 'Feature Map 의 ROI(Regions of Interest) 영역에 대해 Pooling 수행 - 고정 길이 ROI Feature Vector 획득, Fully-Connected Layer로 전달',
    n.aliases = ['ROI Pooling Layer'];

MERGE (n:Concept {id: 'softmax_&_bounding-_box_regressor'})
SET     n.name = 'Softmax & Bounding- Box Regressor',
    n.name_kr = 'Softmax & Bounding- Box Regressor',
    n.domain = 'AI',
    n.definition = 'Softmax Classifier를 통해 객체를 분류하고, Bounding-Box를 조정';

MERGE (n:Concept {id: 'region_proposal_networks'})
SET     n.name = 'Region Proposal Networks',
    n.name_kr = 'RPN',
    n.domain = 'AI',
    n.definition = 'Feature Map을 입력받아 객체가 존재할 만한 사각형 형태의 Proposal 과 Objectness Score 출력, ROI Pooling Layer에 전달',
    n.aliases = ['Region Proposal Networks', 'RPN'];

// --- 관계 ---

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: '다중_객체_인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: '객체_인식_속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'feature_map'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'selective_search'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'rpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'bounding_box'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'confidence_score'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'class_probability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: '영역_탐지_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: '[1_단계]_extract_region_proposals'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'region_proposal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Technology {id: '[2_단계]_compute_cnn_feature'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Technology {id: 'convolution_neural_network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Method {id: '[3_단계]_classify_regions'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'bounding_box_regression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Technology {id: '알고_리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'selective_search_기반_region_proposal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'roi_pooling_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'softmax_&_bounding-_box_regressor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Concept {id: 'region_proposal_networks'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'region_based_cnn'})
MERGE (b:Document {id: 'AI_031'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '다중_객체_인식'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체_인식_속도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'feature_map'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'selective_search'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rpn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grid'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bounding_box'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'confidence_score'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'class_probability'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영역_탐지_기법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[1_단계]_extract_region_proposals'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'region_proposal'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '[2_단계]_compute_cnn_feature'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'convolution_neural_network'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '[3_단계]_classify_regions'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bounding_box_regression'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '알고_리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'selective_search_기반_region_proposal'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'roi_pooling_layer'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'softmax_&_bounding-_box_regressor'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'region_proposal_networks'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_032.1: YOLO(You Only Look Once)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_032.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'you_only_look_once'})
SET     n.name = 'You Only Look Once',
    n.name_kr = 'YOLO',
    n.domain = 'AI',
    n.aliases = ['You Only Look Once', 'YOLO'];

MERGE (n:Concept {id: 'grid'})
SET     n.name = 'Grid',
    n.name_kr = 'Grid',
    n.domain = 'AI',
    n.aliases = ['Grid'];

MERGE (n:Concept {id: 'bounding_box'})
SET     n.name = 'Bounding Box',
    n.name_kr = 'Bounding Box',
    n.domain = 'AI',
    n.aliases = ['Bounding Box'];

MERGE (n:Concept {id: 'confidence_score'})
SET     n.name = 'Confidence Score',
    n.name_kr = 'Confidence Score',
    n.domain = 'AI',
    n.aliases = ['Confidence Score'];

// --- 관계 ---

MERGE (a:Technology {id: 'you_only_look_once'})
MERGE (b:Concept {id: 'grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'you_only_look_once'})
MERGE (b:Concept {id: 'bounding_box'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'you_only_look_once'})
MERGE (b:Concept {id: 'confidence_score'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'you_only_look_once'})
MERGE (b:Document {id: 'AI_032.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'you_only_look_once'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grid'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bounding_box'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'confidence_score'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_032.2: EfficentNet, EfficentDet
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_032.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'efficentnet,_efficentdet'})
SET     n.name = 'EfficentNet, EfficentDet',
    n.name_kr = 'EfficentNet, EfficentDet',
    n.domain = 'AI';

MERGE (n:Concept {id: '딥러닝_알고리즘'})
SET     n.name = '딥러닝 알고리즘',
    n.name_kr = '딥러닝 알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: 'image_classification'})
SET     n.name = 'Image Classification',
    n.name_kr = 'Image Classification',
    n.domain = 'AI',
    n.aliases = ['Image Classification'];

MERGE (n:Concept {id: 'object_detection'})
SET     n.name = 'Object Detection',
    n.name_kr = 'Object Detection',
    n.domain = 'AI',
    n.aliases = ['Object Detection'];

MERGE (n:Concept {id: 'compound_scaling'})
SET     n.name = 'Compound Scaling',
    n.name_kr = 'Compound Scaling',
    n.domain = 'AI',
    n.aliases = ['Compound Scaling'];

MERGE (n:Concept {id: 'bifpn'})
SET     n.name = 'BiFPN',
    n.name_kr = 'BiFPN',
    n.domain = 'AI',
    n.aliases = ['BiFPN'];

MERGE (n:Concept {id: 'automl'})
SET     n.name = 'AutoML',
    n.name_kr = 'AutoML',
    n.domain = 'AI',
    n.aliases = ['AutoML'];

MERGE (n:Concept {id: 'efficientnet'})
SET     n.name = 'EfficientNet',
    n.name_kr = 'EfficientNet',
    n.domain = 'AI',
    n.definition = 'Width, Depth, Resolution 3개의 요소를 조화롭게 scaling할 수 있는 Compound scaling method를 기반으로 새롭게 제안하였다. Compound scaling method는 아래와 같은 제약조건하에서 CNN의 Width, Depth, Resolution을 함께 늘려준다.',
    n.aliases = ['EfficientNet'];

MERGE (n:Concept {id: 'efficientdet'})
SET     n.name = 'EfficientDet',
    n.name_kr = 'EfficientDet',
    n.domain = 'AI',
    n.definition = 'EfficientNet을 backbone으로 하고, BiFPN과 compound scaling method로 네트워크의 각 요소들의 scaling factor를 적절하게 조합',
    n.aliases = ['EfficientDet'];

// --- 관계 ---

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'image_classification'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'object_detection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'compound_scaling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'bifpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'automl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'efficientnet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'efficientdet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficientnet'})
MERGE (b:Concept {id: 'efficientdet'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'efficientnet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Concept {id: 'efficientdet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Document {id: 'AI_032.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'efficentnet,_efficentdet'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥러닝_알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'image_classification'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'object_detection'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compound_scaling'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bifpn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automl'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'efficientnet'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'efficientdet'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_032.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_032.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_033.1: RNN (순환신경망)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_033.1'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'rnn'})
SET     n.name = 'RNN',
    n.name_kr = '순환신경망',
    n.domain = 'AI',
    n.aliases = ['RNN', '순환신경망'];

MERGE (n:Concept {id: '기계학습_알고리즘'})
SET     n.name = '기계학습 알고리즘',
    n.name_kr = '기계학습 알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '음성인식'})
SET     n.name = '음성인식',
    n.name_kr = '음성인식',
    n.domain = 'AI';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'AI',
    n.definition = '내부에 루프를 가진 네트워크를 구성함으로써 정보의 지속성을 획득(파라미터를 공유)';

MERGE (n:Technology {id: 'rnn_구조'})
SET     n.name = 'RNN 구조',
    n.name_kr = 'RNN 구조',
    n.domain = 'AI',
    n.definition = 'one to one';

MERGE (n:Concept {id: '학습_형태'})
SET     n.name = '학습 형태',
    n.name_kr = '학습 형태',
    n.domain = 'AI',
    n.definition = 'Recurrent Weight';

MERGE (n:Concept {id: '신경망_구성'})
SET     n.name = '신경망 구성',
    n.name_kr = '신경망 구성',
    n.domain = 'AI',
    n.definition = 'Input layer';

// --- 관계 ---

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Concept {id: '음성인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Technology {id: 'rnn_구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Concept {id: '학습_형태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Concept {id: '신경망_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Document {id: 'AI_033.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'rnn'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습_알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성인식'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rnn_구조'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습_형태'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신경망_구성'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_033.2: LSTM(Long Shot Term Memory), GRU
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_033.2'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'long_shot_term_memory'})
SET     n.name = 'LSTM(Long Shot Term Memory), GRU',
    n.name_kr = 'LSTM(Long Shot Term Memory), GRU',
    n.domain = 'AI';

MERGE (n:Concept {id: '딥러닝_알고리즘'})
SET     n.name = '딥러닝 알고리즘',
    n.name_kr = '딥러닝 알고리즘',
    n.domain = 'AI';

MERGE (n:Concept {id: '장기_의존성_문제'})
SET     n.name = '장기 의존성 문제',
    n.name_kr = '장기 의존성 문제',
    n.domain = 'AI';

MERGE (n:Concept {id: 'cell_state'})
SET     n.name = 'cell-state',
    n.name_kr = 'cell-state',
    n.domain = 'AI',
    n.aliases = ['cell-state'];

MERGE (n:Concept {id: 'forget_gate'})
SET     n.name = 'forget gate',
    n.name_kr = 'forget gate',
    n.domain = 'AI',
    n.aliases = ['forget gate'];

MERGE (n:Concept {id: 'input_gate'})
SET     n.name = 'input gate',
    n.name_kr = 'input gate',
    n.domain = 'AI',
    n.aliases = ['input gate'];

MERGE (n:Concept {id: 'output_gate'})
SET     n.name = 'output gate',
    n.name_kr = 'output gate',
    n.domain = 'AI',
    n.aliases = ['output gate'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'AI',
    n.definition = '단일 뉴럴 네트워크 레이어를 가지는 대신 4 개의 상호작용 가능한 구조를 가지고 있음 - cell state, forget gate, input gate, output Gate';

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'AI',
    n.definition = 'cell state';

MERGE (n:Concept {id: 'gate'})
SET     n.name = 'Gate',
    n.name_kr = 'Gate',
    n.domain = 'AI',
    n.definition = 'cell state에 정보를 추가하거나 삭제하는 기능 - LSTM은 시그모이드 함수로 이루어진 세 개의 게이트를 통하여 정보를 통과시킬지 여부를 결정해 셀 상태를 보호하거나 제어',
    n.aliases = ['Gate'];

MERGE (n:Concept {id: '연산_과정'})
SET     n.name = '연산 과정',
    n.name_kr = '연산 과정',
    n.domain = 'AI',
    n.definition = 'Forget gate';

MERGE (n:Concept {id: 'gate_간소화'})
SET     n.name = 'Gate 간소화',
    n.name_kr = 'Gate 간소화',
    n.domain = 'AI',
    n.definition = '2 개의 Gate 사용으로 인한 처리 성능 향상 기대';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'AI',
    n.definition = 'Reset Gate';

MERGE (n:Concept {id: 'update_gate'})
SET     n.name = 'Update Gate',
    n.name_kr = 'Update Gate',
    n.domain = 'AI',
    n.definition = '이전 정보를 어느 정도만 유지하여 새로운 state 를 계산하여 결정하는 Gate',
    n.aliases = ['Update Gate'];

MERGE (n:Concept {id: 'reset_gate'})
SET     n.name = 'Reset Gate',
    n.name_kr = 'Reset Gate',
    n.domain = 'AI',
    n.aliases = ['Reset Gate'];

MERGE (n:Concept {id: 'candidate'})
SET     n.name = 'Candidate',
    n.name_kr = 'Candidate',
    n.domain = 'AI',
    n.definition = '현 시점의 정보 후보군을 계산하는 단계 - 은닉층의 정보를 그대로 이용하지 않고 리셋 게이트의 결과에 곱셈 연산하여 이용',
    n.aliases = ['Candidate'];

MERGE (n:Concept {id: 'hidden_layer_calculation'})
SET     n.name = 'Hidden Layer Calculation',
    n.name_kr = 'Hidden Layer Calculation',
    n.domain = 'AI',
    n.definition = 'update gate결과와 candidate결과를 결합',
    n.aliases = ['Hidden Layer Calculation'];

MERGE (n:Technology {id: 'lstm'})
SET     n.name = 'LSTM',
    n.name_kr = 'LSTM',
    n.domain = 'AI',
    n.aliases = ['LSTM'];

MERGE (n:Technology {id: 'gru'})
SET     n.name = 'GRU',
    n.name_kr = 'GRU',
    n.domain = 'AI',
    n.aliases = ['GRU'];

// --- 관계 ---

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: '장기_의존성_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'cell_state'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'forget_gate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'input_gate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'output_gate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'gate'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: '연산_과정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'gate_간소화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'update_gate'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'reset_gate'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'candidate'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Concept {id: 'hidden_layer_calculation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lstm'})
MERGE (b:Technology {id: 'gru'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Technology {id: 'lstm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Technology {id: 'gru'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Document {id: 'AI_033.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'long_shot_term_memory'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥러닝_알고리즘'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장기_의존성_문제'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cell_state'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'forget_gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'input_gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'output_gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산_과정'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gate_간소화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'update_gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reset_gate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'candidate'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hidden_layer_calculation'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lstm'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gru'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_033.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_033.3'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_034: 알파고 (AlphaGo)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_034'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'alphago'})
SET     n.name = 'AlphaGo',
    n.name_kr = '알파고',
    n.domain = 'AI',
    n.aliases = ['AlphaGo', '알파고'];

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'AI';

MERGE (n:Concept {id: 'deep_mind'})
SET     n.name = 'Deep Mind',
    n.name_kr = 'Deep Mind',
    n.domain = 'AI',
    n.aliases = ['Deep Mind'];

MERGE (n:Concept {id: 'mcts'})
SET     n.name = 'MCTS',
    n.name_kr = 'MCTS',
    n.domain = 'AI',
    n.aliases = ['MCTS'];

MERGE (n:Concept {id: '강화학습'})
SET     n.name = '강화학습',
    n.name_kr = '강화학습',
    n.domain = 'AI';

MERGE (n:Concept {id: '정책망/가치망'})
SET     n.name = '정책망/가치망',
    n.name_kr = '정책망/가치망',
    n.domain = 'AI';

MERGE (n:Concept {id: '딥러닝'})
SET     n.name = '딥러닝',
    n.name_kr = '딥러닝',
    n.domain = 'AI';

MERGE (n:Concept {id: 'lee'})
SET     n.name = 'Lee',
    n.name_kr = '알파고 리',
    n.domain = 'AI',
    n.aliases = ['Lee', '알파고 리'];

MERGE (n:Concept {id: '알파고_마스터'})
SET     n.name = '알파고 마스터',
    n.name_kr = '알파고 마스터',
    n.domain = 'AI';

MERGE (n:Concept {id: '알파고_제로'})
SET     n.name = '알파고 제로',
    n.name_kr = '알파고 제로',
    n.domain = 'AI';

// --- 관계 ---

MERGE (a:Concept {id: 'alphago'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: 'deep_mind'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: 'mcts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: '강화학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: '정책망/가치망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: '딥러닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lee'})
MERGE (b:Concept {id: '알파고_마스터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lee'})
MERGE (b:Concept {id: '알파고_제로'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: 'lee'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알파고_마스터'})
MERGE (b:Concept {id: '알파고_제로'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: '알파고_마스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Concept {id: '알파고_제로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Document {id: 'AI_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'alphago'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deep_mind'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcts'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강화학습'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책망/가치망'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥러닝'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lee'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알파고_마스터'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알파고_제로'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_035: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_035'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_036: GAN(Generative Adversarial Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_036'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Technology {id: 'generative_adversarial_network'})
SET     n.name = 'Generative Adversarial Network',
    n.name_kr = 'GAN',
    n.domain = 'AI',
    n.aliases = ['Generative Adversarial Network', 'GAN'];

MERGE (n:Concept {id: '2019_출제_예상_토픽'})
SET     n.name = '2019 출제 예상 토픽',
    n.name_kr = '2019 출제 예상 토픽',
    n.domain = 'AI';

MERGE (n:Technology {id: 'gan'})
SET     n.name = 'GAN',
    n.name_kr = 'GAN',
    n.domain = 'AI',
    n.aliases = ['GAN'];

MERGE (n:Concept {id: '훈련데이터'})
SET     n.name = '훈련데이터',
    n.name_kr = '훈련데이터',
    n.domain = 'AI';

MERGE (n:Concept {id: 'generator'})
SET     n.name = 'Generator',
    n.name_kr = 'Generator',
    n.domain = 'AI',
    n.aliases = ['Generator'];

MERGE (n:Concept {id: 'discrimiator'})
SET     n.name = 'Discrimiator',
    n.name_kr = 'Discrimiator',
    n.domain = 'AI',
    n.aliases = ['Discrimiator'];

MERGE (n:Concept {id: 'noise'})
SET     n.name = 'Noise',
    n.name_kr = 'Noise',
    n.domain = 'AI',
    n.aliases = ['Noise'];

MERGE (n:Concept {id: '생성자'})
SET     n.name = '생성자',
    n.name_kr = '생성자',
    n.domain = 'AI',
    n.definition = 'D(G(z)) = 1';

MERGE (n:Concept {id: '판별자'})
SET     n.name = '판별자',
    n.name_kr = '판별자',
    n.domain = 'AI',
    n.definition = 'D(x) = 1, D(G(z)) = 0';

MERGE (n:Concept {id: '학습데이터'})
SET     n.name = '학습데이터',
    n.name_kr = '학습데이터',
    n.domain = 'AI',
    n.definition = 'X(Real Data)';

MERGE (n:Concept {id: 'loss_function'})
SET     n.name = 'Loss Function',
    n.name_kr = 'Loss Function',
    n.domain = 'AI',
    n.aliases = ['Loss Function'];

MERGE (n:Concept {id: '긍정적_부정적_이슈'})
SET     n.name = '긍정적 부정적 이슈',
    n.name_kr = '긍정적 부정적 이슈',
    n.domain = 'AI',
    n.definition = '1)부정이슈 - 가짜로 생성된 이미지에 대해 가짜로 판별할 수 없음 - 소셜미디어의 가짜뉴스 문제 2)긍정이슈 - 지도학습과 라벨이 없는 데이터 분야의 진전 단서 제공 (AI개발의 가장 큰 걸림돌에 대한 해결책임)';

// --- 관계 ---

MERGE (a:Technology {id: 'gan'})
MERGE (b:Concept {id: '2019_출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: '훈련데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: 'generator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: 'discrimiator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: 'noise'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: '생성자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: '판별자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: '학습데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: 'loss_function'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Concept {id: '긍정적_부정적_이슈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Document {id: 'AI_036'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'generative_adversarial_network'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2019_출제_예상_토픽'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'gan'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '훈련데이터'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generator'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'discrimiator'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'noise'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성자'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판별자'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습데이터'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'loss_function'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긍정적_부정적_이슈'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_037: DCGAN (Deep Convolutional Generative Adversarial Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_037'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: 'deep_convolutional_generative_adversarial_network'})
SET     n.name = 'Deep Convolutional Generative Adversarial Network',
    n.name_kr = 'DCGAN',
    n.domain = 'AI',
    n.aliases = ['Deep Convolutional Generative Adversarial Network', 'DCGAN'];

MERGE (n:Concept {id: 'dcgan'})
SET     n.name = 'DCGAN',
    n.name_kr = 'DCGAN',
    n.domain = 'AI',
    n.aliases = ['DCGAN'];

MERGE (n:Concept {id: '네트워크구조'})
SET     n.name = '네트워크구조',
    n.name_kr = '네트워크구조',
    n.domain = 'AI',
    n.definition = 'Convolution';

MERGE (n:Concept {id: '배치정규화'})
SET     n.name = '배치정규화',
    n.name_kr = '배치정규화',
    n.domain = 'AI',
    n.definition = '활성화 함수 값의 정규분포화(평균 0, 분산 1) - 기울기감소 해결, 학습 안정화 효과';

MERGE (n:Concept {id: 'fractional_strided_convolutions'})
SET     n.name = 'Fractional-strided Convolutions',
    n.name_kr = 'Fractional-strided Convolutions',
    n.domain = 'AI',
    n.definition = '이미지 Upscaling 수행 - Input Padding 이후 Convolution 수행',
    n.aliases = ['Fractional-strided Convolutions'];

MERGE (n:Concept {id: '활성화_함수'})
SET     n.name = '활성화 함수',
    n.name_kr = '활성화 함수',
    n.domain = 'AI',
    n.definition = 'ReLU';

MERGE (n:Concept {id: 'tanh'})
SET     n.name = 'Tanh',
    n.name_kr = 'Tanh',
    n.domain = 'AI',
    n.definition = '마지막 결과 도출 시 Tanh 사용',
    n.aliases = ['Tanh'];

MERGE (n:Concept {id: 'leaky_relu'})
SET     n.name = 'Leaky ReLU',
    n.name_kr = 'Leaky ReLU',
    n.domain = 'AI',
    n.definition = '판별자 모든 층 Leaky ReLU 사용 - f(x) = max(0.01x, x)',
    n.aliases = ['Leaky ReLU'];

MERGE (n:Concept {id: 'structure_변화'})
SET     n.name = 'Structure 변화',
    n.name_kr = 'Structure 변화',
    n.domain = 'AI',
    n.definition = 'Convolution Neural Nwtwork';

MERGE (n:Concept {id: 'generator'})
SET     n.name = 'Generator',
    n.name_kr = 'Generator',
    n.domain = 'AI',
    n.definition = 'Relu 함수 Tanh 함수',
    n.aliases = ['Generator'];

MERGE (n:Concept {id: 'discriminator'})
SET     n.name = 'Discriminator',
    n.name_kr = 'Discriminator',
    n.domain = 'AI',
    n.definition = 'Leaky Relu Batch Normalization',
    n.aliases = ['Discriminator'];

MERGE (n:Concept {id: 'performance'})
SET     n.name = 'Performance',
    n.name_kr = 'Performance',
    n.domain = 'AI',
    n.definition = 'High Resolution Image',
    n.aliases = ['Performance'];

// --- 관계 ---

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: '네트워크구조'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: '배치정규화'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'fractional_strided_convolutions'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: '활성화_함수'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'tanh'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'leaky_relu'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'structure_변화'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'generator'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'discriminator'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Concept {id: 'performance'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Document {id: 'AI_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deep_convolutional_generative_adversarial_network'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dcgan'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크구조'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치정규화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fractional_strided_convolutions'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활성화_함수'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tanh'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'leaky_relu'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'structure_변화'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generator'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'discriminator'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'performance'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AI_038: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_038'})
SET doc.domain = 'AI';

// ──────────────────────────────────────
// AI_039: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_039'})
SET doc.domain = 'AI';

// ================================================================
// AI 도메인 자동 생성 완료
// 노드: 229개
// 관계: 470개
// ================================================================