// ================================================================
// AI 도메인 (AI_001 ~ AI_005) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// AI_001: 인공지능
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AI_001'})
SET doc.domain = 'AI';

// --- 노드 ---

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'AI';

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

MERGE (n:Concept {id: 'artificial_intelligence'})
SET     n.name = 'Artificial Intelligence',
    n.name_kr = '인공지능',
    n.domain = 'AI',
    n.definition = '인간의 지적 능력을 컴퓨터를 통해 구현하는 기술',
    n.aliases = ['Artificial Intelligence', '인공지능'];

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

MERGE (n:Concept {id: '머신러닝'})
SET     n.name = '머신러닝',
    n.name_kr = '머신러닝',
    n.domain = 'AI',
    n.definition = '그래픽 모델';

MERGE (n:Technology {id: '딥러닝'})
SET     n.name = '딥러닝',
    n.name_kr = '딥러닝',
    n.domain = 'AI',
    n.definition = '합성곱 신경망(CNN)';

// --- 관계 ---

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Technology {id: 'ibm_watson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Technology {id: 'google_alphago'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: 'artificial_intelligence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: 'machine_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: 'deep_learning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Concept {id: '머신러닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Technology {id: '딥러닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Document {id: 'AI_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인공지능'})
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

MERGE (a:Concept {id: 'artificial_intelligence'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'machine_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deep_learning'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머신러닝'})
MERGE (b:Domain {id: 'AI'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '딥러닝'})
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

// ================================================================
// AI 도메인 자동 생성 완료
// 노드: 9개
// 관계: 18개
// ================================================================