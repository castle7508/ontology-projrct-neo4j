// ================================================================
// CA_001_멧칼프 법칙.docx — 온톨로지 Cypher
// 도메인: CA (컴퓨터구조) > 법칙 일반
// ================================================================

// --- Concept 노드 ---

MERGE (c:Concept {id: 'metcalfe_law'})
SET c.name = "Metcalfe's Law",
    c.name_kr = '멧칼프의 법칙',
    c.domain = 'CA',
    c.definition = '네트워크의 가치는 참여자 수의 제곱에 비례한다는 법칙. 네트워크 규모에 따른 비용은 직선적으로 증가하지만 가치는 기하급수적으로 증가.',
    c.aliases = ["Metcalfe's Law", '멧칼프 법칙'],
    c.exam_frequency = 2,
    c.importance = 'medium';

MERGE (c:Concept {id: 'moore_law'})
SET c.name = "Moore's Law",
    c.name_kr = '무어의 법칙',
    c.domain = 'CA',
    c.definition = '마이크로 칩의 처리능력이 18~24개월마다 2배로 증가한다는 법칙. 1965년 인텔의 고든 무어가 제시.',
    c.importance = 'high';

MERGE (c:Concept {id: 'network_value'})
SET c.name = 'Network Value',
    c.name_kr = '네트워크 가치',
    c.domain = 'CA',
    c.definition = '네트워크에 연결된 참여자 수에 따라 결정되는 네트워크의 유용성 및 경제적 가치.';

MERGE (c:Concept {id: 'critical_mass'})
SET c.name = 'Critical Mass',
    c.name_kr = '임계값',
    c.domain = 'CA',
    c.definition = '네트워크 사용자 증가율이 이 값에 도달하면 기하급수적 가치 상승이 시작되는 임계점.';

MERGE (c:Concept {id: 'knowledge_based_society'})
SET c.name = 'Knowledge-based Society',
    c.name_kr = '지식기반사회',
    c.domain = 'MG',
    c.definition = '정보의 생성, 공유 등을 통해 가치가 커지는 사회. 컴퓨터와 인터넷의 보급으로 빠르게 확산.';

// --- Technology 노드 ---

MERGE (t:Technology {id: 'ethernet'})
SET t.name = 'Ethernet',
    t.name_kr = '이더넷',
    t.category = 'protocol',
    t.domain = 'NW';

// --- Metric 노드 ---

MERGE (m:Metric {id: 'network_value_formula'})
SET m.name = 'Network Value = N^2',
    m.name_kr = '네트워크 가치 공식',
    m.unit = 'N^2',
    m.domain = 'CA';

// --- 관계 ---

// 멧칼프 법칙 → 네트워크 가치 (측정 대상)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Concept {id: 'network_value'})
MERGE (a)-[:HAS_COMPONENT]->(b);

// 멧칼프 법칙 → 임계값 (핵심 개념)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Concept {id: 'critical_mass'})
MERGE (a)-[:HAS_COMPONENT]->(b);

// 멧칼프 법칙 → 이더넷 (관련 기술)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Technology {id: 'ethernet'})
MERGE (a)-[:DEPENDS_ON]->(b);

// 멧칼프 법칙 → 무어의 법칙 (비교)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Concept {id: 'moore_law'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['대상', '연도/제시자', '적용사례', '시사점'],
    summary: '멧칼프는 네트워크 유용성, 무어는 칩 처리능력. 둘 다 기하급수적 성장 법칙.'
}]->(b);

// 멧칼프 법칙 → 지식기반사회 (적용/영향)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Concept {id: 'knowledge_based_society'})
MERGE (a)-[:DEPENDS_ON]->(b);

// 멧칼프 법칙 → N^2 공식 (측정)
MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (b:Metric {id: 'network_value_formula'})
MERGE (a)-[:MEASURED_BY]->(b);

// --- Domain 연결 ---

MERGE (a:Concept {id: 'metcalfe_law'})
MERGE (d:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(d);

MERGE (a:Concept {id: 'moore_law'})
MERGE (d:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(d);

MERGE (a:Concept {id: 'network_value'})
MERGE (d:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(d);

MERGE (a:Technology {id: 'ethernet'})
MERGE (d:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(d);

// --- Document 추적 ---

MERGE (doc:Document {id: 'CA_001'})
SET doc.filename = 'CA_001_멧칼프 법칙.docx',
    doc.domain = 'CA',
    doc.format = 'docx',
    doc.path = 'documents/12.CA/CA_001_멧칼프 법칙.docx';

MERGE (c:Concept {id: 'metcalfe_law'})
MERGE (doc:Document {id: 'CA_001'})
MERGE (c)-[:MENTIONED_IN]->(doc);

MERGE (c:Concept {id: 'moore_law'})
MERGE (doc:Document {id: 'CA_001'})
MERGE (c)-[:MENTIONED_IN]->(doc);
