// ================================================================
// NW 도메인 (NW_251 ~ NW_286) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_228.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_228.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_229: Home PNA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_229'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'home_pna'})
SET     n.name = 'Home PNA',
    n.name_kr = 'Home PNA',
    n.domain = 'NW',
    n.aliases = ['Home PNA'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'home_networking'})
SET     n.name = 'Home Networking',
    n.name_kr = 'Home Networking',
    n.domain = 'NW',
    n.aliases = ['Home Networking'];

MERGE (n:Concept {id: '전화선'})
SET     n.name = '전화선',
    n.name_kr = '전화선',
    n.domain = 'NW';

MERGE (n:Concept {id: 'smac_기술'})
SET     n.name = 'SMAC 기술',
    n.name_kr = 'SMAC 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'qam_fdqam'})
SET     n.name = 'QAM/FDQAM',
    n.name_kr = 'QAM/FDQAM',
    n.domain = 'NW',
    n.aliases = ['QAM/FDQAM'];

MERGE (n:Concept {id: 'h1_1'})
SET     n.name = 'H1.1',
    n.name_kr = 'H1.1',
    n.domain = 'NW',
    n.aliases = ['H1.1'];

MERGE (n:Concept {id: 'h2_0'})
SET     n.name = 'H2.0',
    n.name_kr = 'H2.0',
    n.domain = 'NW',
    n.aliases = ['H2.0'];

MERGE (n:Concept {id: 'h3_0'})
SET     n.name = 'H3.0',
    n.name_kr = 'H3.0',
    n.domain = 'NW',
    n.aliases = ['H3.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'home_networking'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'home_networking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: '전화선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'smac_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'qam_fdqam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'h1_1'})
MERGE (b:Concept {id: 'h2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'h1_1'})
MERGE (b:Concept {id: 'h3_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'h1_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'h2_0'})
MERGE (b:Concept {id: 'h3_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'h2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Concept {id: 'h3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Document {id: 'NW_229'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'home_pna'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'home_networking'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전화선'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smac_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qam_fdqam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h1_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h2_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h3_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_230: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_230'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_231: PLC(Power Line Communication)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_231'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'power_line_communication'})
SET     n.name = 'Power Line Communication',
    n.name_kr = 'PLC',
    n.domain = 'NW',
    n.aliases = ['Power Line Communication', 'PLC'];

MERGE (n:Concept {id: '스마트홈'})
SET     n.name = '스마트홈',
    n.name_kr = '스마트홈',
    n.domain = 'NW';

MERGE (n:Concept {id: 'plc'})
SET     n.name = 'PLC',
    n.name_kr = 'PLC',
    n.domain = 'NW',
    n.aliases = ['PLC'];

// --- 관계 ---

MERGE (a:Concept {id: 'plc'})
MERGE (b:Concept {id: '스마트홈'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'power_line_communication'})
MERGE (b:Document {id: 'NW_231'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'power_line_communication'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트홈'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_232: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_232'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_233: DOCSIS(Data over Cable Interface Specification)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_233'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'data_over_cable_interface_specification'})
SET     n.name = 'Data over Cable Interface Specification',
    n.name_kr = 'DOCSIS',
    n.domain = 'NW',
    n.aliases = ['Data over Cable Interface Specification', 'DOCSIS'];

MERGE (n:Concept {id: '스마트홈'})
SET     n.name = '스마트홈',
    n.name_kr = '스마트홈',
    n.domain = 'NW';

MERGE (n:Concept {id: 'docsis'})
SET     n.name = 'DOCSIS',
    n.name_kr = 'DOCSIS',
    n.domain = 'NW',
    n.aliases = ['DOCSIS'];

MERGE (n:Concept {id: '산업_플랜트'})
SET     n.name = '산업 플랜트',
    n.name_kr = '산업 플랜트',
    n.domain = 'NW';

MERGE (n:Concept {id: '자동제어'})
SET     n.name = '자동제어',
    n.name_kr = '자동제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '감시'})
SET     n.name = '감시',
    n.name_kr = '감시',
    n.domain = 'NW';

MERGE (n:Concept {id: '논리연산'})
SET     n.name = '논리연산',
    n.name_kr = '논리연산',
    n.domain = 'NW';

MERGE (n:Concept {id: 'sequence'})
SET     n.name = 'Sequence',
    n.name_kr = 'Sequence',
    n.domain = 'NW',
    n.aliases = ['Sequence'];

MERGE (n:Concept {id: '프로그램'})
SET     n.name = '프로그램',
    n.name_kr = '프로그램',
    n.domain = 'NW';

MERGE (n:Concept {id: '입력'})
SET     n.name = '입력',
    n.name_kr = '입력',
    n.domain = 'NW';

MERGE (n:Concept {id: '출력'})
SET     n.name = '출력',
    n.name_kr = '출력',
    n.domain = 'NW';

MERGE (n:Concept {id: '연산'})
SET     n.name = '연산',
    n.name_kr = '연산',
    n.domain = 'NW';

MERGE (n:Concept {id: '기억'})
SET     n.name = '기억',
    n.name_kr = '기억',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'docsis'})
MERGE (b:Concept {id: '스마트홈'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '산업_플랜트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '자동제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '논리연산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: 'sequence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '프로그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '입력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '출력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '연산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Concept {id: '기억'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Document {id: 'NW_233'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_over_cable_interface_specification'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트홈'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'docsis'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업_플랜트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감시'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리연산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입력'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기억'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_234: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_234'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_235: OSGi
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_235'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'osgi'})
SET     n.name = 'OSGi',
    n.name_kr = 'OSGi',
    n.domain = 'NW',
    n.aliases = ['OSGi'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준_동향'})
SET     n.name = '표준 동향',
    n.name_kr = '표준 동향',
    n.domain = 'NW';

MERGE (n:Concept {id: 'bundles'})
SET     n.name = 'Bundles',
    n.name_kr = 'Bundles',
    n.domain = 'NW',
    n.aliases = ['Bundles'];

MERGE (n:Concept {id: 'services'})
SET     n.name = 'Services',
    n.name_kr = 'Services',
    n.domain = 'NW',
    n.aliases = ['Services'];

MERGE (n:Concept {id: 'life_cycle'})
SET     n.name = 'Life-Cycle',
    n.name_kr = 'Life-Cycle',
    n.domain = 'NW',
    n.aliases = ['Life-Cycle'];

MERGE (n:Concept {id: 'moudles'})
SET     n.name = 'Moudles',
    n.name_kr = 'Moudles',
    n.domain = 'NW',
    n.aliases = ['Moudles'];

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = 'Security',
    n.domain = 'NW',
    n.aliases = ['Security'];

// --- 관계 ---

MERGE (a:Concept {id: '표준_동향'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: '표준_동향'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: 'bundles'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: 'services'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: 'life_cycle'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: 'moudles'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Document {id: 'NW_235'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'osgi'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bundles'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'services'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'life_cycle'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'moudles'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_237: VoIP (Voice Over Internet Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_237'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'voice_over_internet_protocol'})
SET     n.name = 'Voice Over Internet Protocol',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['Voice Over Internet Protocol', 'VoIP'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

MERGE (n:Concept {id: 'h_323'})
SET     n.name = 'H.323',
    n.name_kr = 'H.323',
    n.domain = 'NW',
    n.aliases = ['H.323'];

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.aliases = ['SIP'];

MERGE (n:Concept {id: 'rtp'})
SET     n.name = 'RTP',
    n.name_kr = 'RTP',
    n.domain = 'NW',
    n.aliases = ['RTP'];

MERGE (n:Concept {id: 'rtcp'})
SET     n.name = 'RTCP',
    n.name_kr = 'RTCP',
    n.domain = 'NW',
    n.aliases = ['RTCP'];

MERGE (n:Concept {id: 'g_711'})
SET     n.name = 'G.711',
    n.name_kr = 'G.711',
    n.domain = 'NW',
    n.aliases = ['G.711'];

MERGE (n:Concept {id: 'enum'})
SET     n.name = 'ENUM',
    n.name_kr = 'ENUM',
    n.domain = 'NW',
    n.aliases = ['ENUM'];

MERGE (n:Concept {id: 'mcu'})
SET     n.name = 'MCU',
    n.name_kr = 'MCU',
    n.domain = 'NW',
    n.aliases = ['MCU'];

MERGE (n:Concept {id: 'mvoip'})
SET     n.name = 'mVoIP',
    n.name_kr = 'mVoIP',
    n.domain = 'NW',
    n.aliases = ['mVoIP'];

// --- 관계 ---

MERGE (a:Concept {id: 'voip'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'h_323'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'rtp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'rtcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'g_711'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'enum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'mcu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Concept {id: 'mvoip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Document {id: 'NW_237'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'voice_over_internet_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h_323'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g_711'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enum'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcu'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mvoip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_238: H.323
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_238'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'h_323'})
SET     n.name = 'H.323',
    n.name_kr = 'H.323',
    n.domain = 'NW',
    n.aliases = ['H.323'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

// --- 관계 ---

MERGE (a:Concept {id: 'h_323'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'h_323'})
MERGE (b:Document {id: 'NW_238'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'h_323'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_239: SIP(Session Initiation Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_239'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'session_initiation_protocol'})
SET     n.name = 'Session Initiation Protocol',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.aliases = ['Session Initiation Protocol', 'SIP'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.aliases = ['SIP'];

MERGE (n:Concept {id: 'uac'})
SET     n.name = 'UAC',
    n.name_kr = 'UAC',
    n.domain = 'NW',
    n.aliases = ['UAC'];

MERGE (n:Concept {id: 'uas'})
SET     n.name = 'UAS',
    n.name_kr = 'UAS',
    n.domain = 'NW',
    n.aliases = ['UAS'];

MERGE (n:Concept {id: 'proxy'})
SET     n.name = 'Proxy',
    n.name_kr = 'Proxy',
    n.domain = 'NW',
    n.aliases = ['Proxy'];

MERGE (n:Concept {id: 'registrar'})
SET     n.name = 'Registrar',
    n.name_kr = 'Registrar',
    n.domain = 'NW',
    n.aliases = ['Registrar'];

MERGE (n:Concept {id: '기존_음성망_+_음성_+_영상_추가'})
SET     n.name = '기존 음성망 + 음성 + 영상 추가',
    n.name_kr = '기존 음성망 + 음성 + 영상 추가',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'sip'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Concept {id: 'uac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Concept {id: 'uas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Concept {id: 'proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Concept {id: 'registrar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Concept {id: '기존_음성망_+_음성_+_영상_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Document {id: 'NW_239'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'session_initiation_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uas'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'registrar'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_음성망_+_음성_+_영상_추가'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_240: MCU(Multipoint Control Unit)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_240'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'multipoint_control_unit'})
SET     n.name = 'Multipoint Control Unit',
    n.name_kr = 'MCU',
    n.domain = 'NW',
    n.aliases = ['Multipoint Control Unit', 'MCU'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

MERGE (n:Concept {id: '보이스_트래픽'})
SET     n.name = '보이스 트래픽',
    n.name_kr = '보이스 트래픽',
    n.domain = 'NW';

MERGE (n:Concept {id: '코덱'})
SET     n.name = '코덱',
    n.name_kr = '코덱',
    n.domain = 'NW';

MERGE (n:Concept {id: 'multipoint_connection구축'})
SET     n.name = 'Multipoint Connection구축',
    n.name_kr = 'Multipoint Connection구축',
    n.domain = 'NW',
    n.definition = 'MC는 컨퍼런스 참여자들에 대해 Multipoint Connection을 구축해 주는 역할';

MERGE (n:Concept {id: 'decentralized_multipoint모드'})
SET     n.name = 'Decentralized Multipoint모드',
    n.name_kr = 'Decentralized Multipoint모드',
    n.domain = 'NW',
    n.definition = '동일한 코덱의 사용자들간에 컨퍼런스를 구축할 때 Decentralized Multipoint 모드 사용';

MERGE (n:Metric {id: 'multipoint_processor'})
SET     n.name = 'Multipoint Processor',
    n.name_kr = 'MP',
    n.domain = 'NW',
    n.definition = '컨퍼런스 에 참여한 구성요소들간의 코덱이 다를 경우 음성 또는 비디오 트래픽 코덱을 서로간에 일치하도록 변환(Translation) 하는 역할을 수행 - 하드웨어적으로 구성, 전송속도가 다를 경우 트래픽의 속도도 조절 기능',
    n.aliases = ['Multipoint Processor', 'MP'];

MERGE (n:Concept {id: 'multipoint_controller'})
SET     n.name = 'Multipoint Controller',
    n.name_kr = 'MC',
    n.domain = 'NW',
    n.definition = '컨퍼런스에 참여한 구성요소들간의 세션을 구축하는 일을 담당 - 소프트웨어 모듈로서 게이트웨이나 게이트키퍼 또는 터미널에 존재',
    n.aliases = ['Multipoint Controller', 'MC'];

// --- 관계 ---

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Concept {id: '보이스_트래픽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Concept {id: '코덱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Concept {id: 'multipoint_connection구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Concept {id: 'decentralized_multipoint모드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Metric {id: 'multipoint_processor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Concept {id: 'multipoint_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Document {id: 'NW_240'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multipoint_control_unit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보이스_트래픽'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코덱'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multipoint_connection구축'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decentralized_multipoint모드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'multipoint_processor'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multipoint_controller'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_241: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_241'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_242: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_242'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_243: IMS ( IP Multimedia Subsystem)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_243'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ims'})
SET     n.name = 'IMS',
    n.name_kr = 'IP Multimedia Subsystem',
    n.domain = 'NW',
    n.aliases = ['IMS', 'IP Multimedia Subsystem'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

MERGE (n:Concept {id: 'ip_multimedia_subsystem'})
SET     n.name = 'IP Multimedia Subsystem',
    n.name_kr = 'IMS',
    n.domain = 'NW',
    n.aliases = ['IP Multimedia Subsystem', 'IMS'];

MERGE (n:Concept {id: '멀티_ip전송_프로토콜'})
SET     n.name = '멀티 IP전송 프로토콜',
    n.name_kr = '멀티 IP전송 프로토콜',
    n.domain = 'NW';

MERGE (n:Concept {id: '상호운용'})
SET     n.name = '상호운용',
    n.name_kr = '상호운용',
    n.domain = 'NW';

MERGE (n:Concept {id: 'all_ip'})
SET     n.name = 'ALL-IP',
    n.name_kr = 'ALL-IP',
    n.domain = 'NW',
    n.aliases = ['ALL-IP'];

MERGE (n:Concept {id: '신속서비스'})
SET     n.name = '신속서비스',
    n.name_kr = '신속서비스',
    n.domain = 'NW';

MERGE (n:Concept {id: '구성-_sip'})
SET     n.name = '구성- SIP',
    n.name_kr = '구성- SIP',
    n.domain = 'NW';

MERGE (n:Concept {id: 'cscf'})
SET     n.name = 'CSCF',
    n.name_kr = 'CSCF',
    n.domain = 'NW',
    n.aliases = ['CSCF'];

MERGE (n:Technology {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'Session Initiation Protocol',
    n.domain = 'NW',
    n.definition = '인터넷전화, 멀티미디어의 배포 등 세션(session)을 생성하고, 수정하며, 종료 작업을 위한 프로토콜 - 전달계층과 독립적이며, TCP/UDP에서 구동',
    n.aliases = ['SIP', 'Session Initiation Protocol'];

MERGE (n:Concept {id: 'hss'})
SET     n.name = 'HSS',
    n.name_kr = 'Home Subscriber Server',
    n.domain = 'NW',
    n.definition = '이동통신 HLR ( Home Location Register)에서 발전한 것으로 가입자 정보를 관리하는 중앙화된 데이터베이스 - 사용자 등록 및 변경 관리, 인증, 권한 부여, 로케이션, 세션 라우팅, 과금 등의 기능을 수행 (사인권 로라과금 기능 )',
    n.aliases = ['HSS', 'Home Subscriber Server'];

// --- 관계 ---

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: '멀티_ip전송_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: '상호운용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: 'all_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: '신속서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: '구성-_sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: 'cscf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Technology {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Concept {id: 'hss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Document {id: 'NW_243'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티_ip전송_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'all_ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신속서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성-_sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cscf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_244: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_244'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_245: PoE(Power over Ethernet)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_245'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'power_over_ethernet'})
SET     n.name = 'Power over Ethernet',
    n.name_kr = 'PoE',
    n.domain = 'NW',
    n.aliases = ['Power over Ethernet', 'PoE'];

MERGE (n:Concept {id: '유선통신기술'})
SET     n.name = '유선통신기술',
    n.name_kr = '유선통신기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'poe'})
SET     n.name = 'PoE',
    n.name_kr = 'PoE',
    n.domain = 'NW',
    n.aliases = ['PoE'];

MERGE (n:Concept {id: '표준'})
SET     n.name = '표준',
    n.name_kr = '표준',
    n.domain = 'NW',
    n.definition = 'Type 1';

MERGE (n:Standard {id: 'type_2'})
SET     n.name = 'Type 2',
    n.name_kr = 'Type 2',
    n.domain = 'NW',
    n.definition = 'IEEE 802.3at - 2009',
    n.aliases = ['Type 2'];

MERGE (n:Standard {id: 'type_3,_4'})
SET     n.name = 'Type 3, 4',
    n.name_kr = 'Type 3, 4',
    n.domain = 'NW',
    n.definition = 'IEEE 802.3bt - 2018';

MERGE (n:Concept {id: '비용절감'})
SET     n.name = '비용절감',
    n.name_kr = '비용절감',
    n.domain = 'NW',
    n.definition = '별도의 전원장비 또는 전원선 포설 비용이 절감됨';

MERGE (n:Concept {id: '설치용이'})
SET     n.name = '설치용이',
    n.name_kr = '설치용이',
    n.domain = 'NW',
    n.definition = '전원과 상관없이 제품 설치가 가능';

MERGE (n:Concept {id: '신뢰성'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'NW',
    n.definition = 'UPS를 Ethernet스위치와 사용할 경우 주 전원이 중단되어도 동작 가능';

MERGE (n:Concept {id: 'type_1'})
SET     n.name = 'Type 1',
    n.name_kr = 'Spare Pair Feed',
    n.domain = 'NW',
    n.definition = '개념',
    n.aliases = ['Type 1', 'Spare Pair Feed'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'NW';

MERGE (n:Concept {id: '연결_케이블'})
SET     n.name = '연결 케이블',
    n.name_kr = '연결 케이블',
    n.domain = 'NW',
    n.definition = 'Cat 3, 5e';

MERGE (n:Concept {id: '전력등급수준'})
SET     n.name = '전력등급수준',
    n.name_kr = '전력등급수준',
    n.domain = 'NW',
    n.definition = '필요한 전력 수준을 기준으로 디바이스 클래스를 지원(레벨 5~8)';

MERGE (n:Concept {id: '전원공급장치_시그니처'})
SET     n.name = '전원공급장치 시그니처',
    n.name_kr = '전원공급장치 시그니처',
    n.domain = 'NW',
    n.definition = 'PD(Power Powered Device)에 전력을 공급하기 전에 PD에 대한 시그니처 탐지를 통해 전력 수신 상태, Type 유형등을 검사하여 전력 공급';

MERGE (n:Concept {id: 'lldp_전원_협상'})
SET     n.name = 'LLDP 전원 협상',
    n.name_kr = 'LLDP 전원 협상',
    n.domain = 'NW',
    n.definition = 'LLDP(Link Layer Discovery Protocol)를 사용하여 향상된 전력 협상을 지원 - LLDP 전원 협상을 통해 PSE는 PD에 필요한 최대 전력 양에 대한 정보를 교환하여 전원 할당';

MERGE (n:Concept {id: '자동분류'})
SET     n.name = '자동분류',
    n.name_kr = '자동분류',
    n.domain = 'NW',
    n.definition = '자동 클래스 기능을 통해 PSE(Power Sourcing Equipment)는 PD의 실제 최대 전력을 측정하고 측정값을 기반으로 PSE는 PD의 최대 전원 출력을 설정';

// --- 관계 ---

MERGE (a:Concept {id: 'poe'})
MERGE (b:Concept {id: '유선통신기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Standard {id: 'type_2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Standard {id: 'type_3,_4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '비용절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '설치용이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: 'type_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '연결_케이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '전력등급수준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '전원공급장치_시그니처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: 'lldp_전원_협상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Concept {id: '자동분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Document {id: 'NW_245'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'power_over_ethernet'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유선통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'poe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'type_2'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'type_3,_4'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용절감'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설치용이'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'type_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결_케이블'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력등급수준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전원공급장치_시그니처'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lldp_전원_협상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동분류'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_246: 무선충전기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_246'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '무선충전기술'})
SET     n.name = '무선충전기술',
    n.name_kr = '무선충전기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '자기유도'})
SET     n.name = '자기유도',
    n.name_kr = '자기유도',
    n.domain = 'NW';

MERGE (n:Concept {id: '전자기파'})
SET     n.name = '전자기파',
    n.name_kr = '전자기파',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '주파수'})
SET     n.name = '주파수',
    n.name_kr = '주파수',
    n.domain = 'NW',
    n.definition = '125KHz, 13.56MHz';

MERGE (n:Concept {id: '전송거리'})
SET     n.name = '전송거리',
    n.name_kr = '전송거리',
    n.domain = 'NW',
    n.definition = '근접형(수cm 이내)';

MERGE (n:Concept {id: '적용'})
SET     n.name = '적용',
    n.name_kr = '적용',
    n.domain = 'NW',
    n.definition = '휴대폰, 노트북, 전기 자동차, 스마트 기기, 웨어러블 기기';

MERGE (n:Concept {id: '자기유도_방식'})
SET     n.name = '자기유도 방식',
    n.name_kr = '자기유도 방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '자기공명_방식'})
SET     n.name = '자기공명 방식',
    n.name_kr = '자기공명 방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '전자기파_방식'})
SET     n.name = '전자기파 방식',
    n.name_kr = '전자기파 방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준화_기구'})
SET     n.name = '표준화 기구',
    n.name_kr = '표준화 기구',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준화_현황'})
SET     n.name = '표준화 현황',
    n.name_kr = '표준화 현황',
    n.domain = 'NW';

MERGE (n:Threat {id: '근접_무선충전'})
SET     n.name = '근접 무선충전',
    n.name_kr = '근접 무선충전',
    n.domain = 'NW',
    n.definition = '기기 스니핑';

MERGE (n:Concept {id: '기기_도청'})
SET     n.name = '기기 도청',
    n.name_kr = '기기 도청',
    n.domain = 'NW',
    n.definition = '외부 장소 충전 시 발생하는 충전 기기에 대한 인증부재';

MERGE (n:Concept {id: '인체_유해성_악용'})
SET     n.name = '인체 유해성 악용',
    n.name_kr = '인체 유해성 악용',
    n.domain = 'NW',
    n.definition = '급속 충전 시 전자기파에 의한 인체 유해성';

MERGE (n:Threat {id: '프라이버시_침해'})
SET     n.name = '프라이버시 침해',
    n.name_kr = '프라이버시 침해',
    n.domain = 'NW',
    n.definition = '악성코드 삽입에 따른 프라이버시 정보 노출';

MERGE (n:Threat {id: '중간자_공격'})
SET     n.name = '중간자 공격',
    n.name_kr = '중간자 공격',
    n.domain = 'NW',
    n.definition = '무선 충전 시 기기간의 중간자 공격 위협';

MERGE (n:Concept {id: '주차_시_무선충전'})
SET     n.name = '주차 시 무선충전',
    n.name_kr = '주차 시 무선충전',
    n.domain = 'NW',
    n.definition = '인증 위변조';

MERGE (n:Threat {id: 'dos_공격'})
SET     n.name = 'DoS 공격',
    n.name_kr = 'DoS 공격',
    n.domain = 'NW',
    n.definition = '무선에서 발생할 수 있는 다양한 DoS 공격';

MERGE (n:Threat {id: '악성코드_삽입'})
SET     n.name = '악성코드 삽입',
    n.name_kr = '악성코드 삽입',
    n.domain = 'NW',
    n.definition = '무선 충전 시 불법 침투, 바이러스, 웜, 트로이목마 공격';

MERGE (n:Threat {id: '시스템_위협'})
SET     n.name = '시스템 위협',
    n.name_kr = '시스템 위협',
    n.domain = 'NW',
    n.definition = '차량의 악성코드에 의한 시스템 전이에 의한 위협';

MERGE (n:Concept {id: '과다_부가_비용'})
SET     n.name = '과다 부가 비용',
    n.name_kr = '과다 부가 비용',
    n.domain = 'NW',
    n.definition = '불법 인증으로 그에 따른 충전 비용 잘못 부과';

MERGE (n:Concept {id: '주행_중_무선충전'})
SET     n.name = '주행 중 무선충전',
    n.name_kr = '주행 중 무선충전',
    n.domain = 'NW',
    n.definition = '사용자 간 인증 위변조';

MERGE (n:Concept {id: 'forgery_위협'})
SET     n.name = 'Forgery 위협',
    n.name_kr = 'Forgery 위협',
    n.domain = 'NW',
    n.definition = '네트워크 영역 안에 있는 다른 차량에게 거짓 정보 전송';

MERGE (n:Concept {id: '신호_jamming_공격'})
SET     n.name = '신호 Jamming 공격',
    n.name_kr = '신호 Jamming 공격',
    n.domain = 'NW',
    n.definition = '다른 차량의 통신에 장애를 가하는 신호 발생 시킴';

MERGE (n:Concept {id: '센싱_정보_위변조_공격'})
SET     n.name = '센싱 정보 위변조 공격',
    n.name_kr = '센싱 정보 위변조 공격',
    n.domain = 'NW',
    n.definition = '차량 전장 부분의 상태, 각종 센성 정보 위변조 공격';

MERGE (n:Concept {id: '표준번호'})
SET     n.name = '표준번호',
    n.name_kr = '표준번호',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준명'})
SET     n.name = '표준명',
    n.name_kr = '표준명',
    n.domain = 'NW';

MERGE (n:Concept {id: '제안국'})
SET     n.name = '제안국',
    n.name_kr = '제안국',
    n.domain = 'NW';

MERGE (n:Concept {id: '제안시기'})
SET     n.name = '제안시기',
    n.name_kr = '제안시기',
    n.domain = 'NW';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'NW',
    n.definition = 'KAIST';

MERGE (n:Concept {id: 'keri'})
SET     n.name = 'KERI',
    n.name_kr = 'KERI',
    n.domain = 'NW',
    n.definition = '한국전기연구원(KERI)에서 송신 공진기와 중계 공진기를 서로 수직으로 배치하고 900kHz 공진 주파수를 사용하여 1m거리에서 에너지 중계 가능한 기술',
    n.aliases = ['KERI'];

MERGE (n:Concept {id: '국외'})
SET     n.name = '국외',
    n.name_kr = '국외',
    n.domain = 'NW',
    n.definition = 'MIT';

MERGE (n:Concept {id: '기본컨셉'})
SET     n.name = '기본컨셉',
    n.name_kr = '기본컨셉',
    n.domain = 'NW';

MERGE (n:Concept {id: 'dynamic_wpt'})
SET     n.name = 'Dynamic WPT',
    n.name_kr = '다이내믹 무선전력전송',
    n.domain = 'NW',
    n.definition = '일반 도로 또는 주요 고속도로에 WPT를 이용한 송수전 시스템을 설치. - 도로 주행 중 신호로 인해 정차하게 되는 동안 충전하는 방식과, 달리면서 전기를 공급받는 방식으로 구분',
    n.aliases = ['Dynamic WPT', '다이내믹 무선전력전송'];

// --- 관계 ---

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '자기유도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '전자기파'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '주파수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '전송거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자기유도_방식'})
MERGE (b:Concept {id: '자기공명_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '자기유도_방식'})
MERGE (b:Concept {id: '전자기파_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '자기유도_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자기공명_방식'})
MERGE (b:Concept {id: '전자기파_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '자기공명_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '전자기파_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준화_기구'})
MERGE (b:Concept {id: '표준화_현황'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '표준화_기구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '표준화_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: '근접_무선충전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '기기_도청'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '인체_유해성_악용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: '프라이버시_침해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: '중간자_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '주차_시_무선충전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: 'dos_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: '악성코드_삽입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Threat {id: '시스템_위협'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '과다_부가_비용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '주행_중_무선충전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: 'forgery_위협'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '신호_jamming_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '센싱_정보_위변조_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준번호'})
MERGE (b:Concept {id: '표준명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '표준번호'})
MERGE (b:Concept {id: '제안국'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '표준번호'})
MERGE (b:Concept {id: '제안시기'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '표준번호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준명'})
MERGE (b:Concept {id: '제안국'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '표준명'})
MERGE (b:Concept {id: '제안시기'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '표준명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '제안국'})
MERGE (b:Concept {id: '제안시기'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '제안국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '제안시기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: 'keri'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '국외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: '기본컨셉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Concept {id: 'dynamic_wpt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Document {id: 'NW_246'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기유도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기파'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송거리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기유도_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기공명_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기파_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화_기구'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화_현황'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '근접_무선충전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기기_도청'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인체_유해성_악용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '프라이버시_침해'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '중간자_공격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주차_시_무선충전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'dos_공격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_삽입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '시스템_위협'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과다_부가_비용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주행_중_무선충전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'forgery_위협'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신호_jamming_공격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센싱_정보_위변조_공격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준번호'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제안국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제안시기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keri'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국외'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본컨셉'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic_wpt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_250: Qi(치)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_250'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '무선충전기술'})
SET     n.name = '무선충전기술',
    n.name_kr = '무선충전기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '표쥰'})
SET     n.name = '표쥰',
    n.name_kr = '표쥰',
    n.domain = 'NW';

MERGE (n:Concept {id: '무선충전_규격'})
SET     n.name = '무선충전 규격',
    n.name_kr = '무선충전 규격',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '표쥰'})
MERGE (b:Concept {id: '무선충전기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qi'})
MERGE (b:Concept {id: '무선충전_규격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qi'})
MERGE (b:Document {id: 'NW_250'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '무선충전기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표쥰'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선충전_규격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_252: 실내 위치 측위 기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_252'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '실내_위치_측위_기술'})
SET     n.name = '실내 위치 측위 기술',
    n.name_kr = '실내 위치 측위 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'wireless LAN',
    n.name_kr = 'wireless LAN',
    n.domain = 'NW',
    n.aliases = ['wireless LAN'];

MERGE (n:Concept {id: 'ble'})
SET     n.name = 'BLE',
    n.name_kr = 'BLE',
    n.domain = 'NW',
    n.aliases = ['BLE'];

MERGE (n:Concept {id: 'uwb_적용'})
SET     n.name = 'UWB 적용',
    n.name_kr = 'UWB 적용',
    n.domain = 'NW';

MERGE (n:Concept {id: '2._실외_위치_측위_기술:_gps'})
SET     n.name = '2. 실외 위치 측위 기술: GPS',
    n.name_kr = '2. 실외 위치 측위 기술: GPS',
    n.domain = 'NW';

MERGE (n:Concept {id: '3g_기지국_이용'})
SET     n.name = '3G 기지국 이용',
    n.name_kr = '3G 기지국 이용',
    n.domain = 'NW';

MERGE (n:Concept {id: '3._gps:_실내'})
SET     n.name = '3. GPS: 실내',
    n.name_kr = '3. GPS: 실내',
    n.domain = 'NW';

MERGE (n:Concept {id: '지하로_들어가면_신호_처리_어려움'})
SET     n.name = '지하로 들어가면 신호 처리 어려움',
    n.name_kr = '지하로 들어가면 신호 처리 어려움',
    n.domain = 'NW';

MERGE (n:Concept {id: '실외_모두_측위가_가능함.'})
SET     n.name = '실외 모두 측위가 가능함.',
    n.name_kr = '실외 모두 측위가 가능함.',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: 'ble'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: 'uwb_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '2._실외_위치_측위_기술:_gps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '3g_기지국_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '3._gps:_실내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '지하로_들어가면_신호_처리_어려움'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '실외_모두_측위가_가능함.'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Document {id: 'NW_252'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ble'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uwb_적용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._실외_위치_측위_기술:_gps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3g_기지국_이용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._gps:_실내'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지하로_들어가면_신호_처리_어려움'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실외_모두_측위가_가능함.'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_253: 실내 위치 측위 기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_253'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '실내_위치_측위_기술'})
SET     n.name = '실내 위치 측위 기술',
    n.name_kr = '실내 위치 측위 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '측위기술'})
SET     n.name = '측위기술',
    n.name_kr = '측위기술',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '측위기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Document {id: 'NW_253'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측위기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_254: IPS(Indoor Positioning System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_254'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'indoor_positioning_system'})
SET     n.name = 'Indoor Positioning System',
    n.name_kr = 'IPS',
    n.domain = 'NW',
    n.aliases = ['Indoor Positioning System', 'IPS'];

MERGE (n:Concept {id: '측위기술'})
SET     n.name = '측위기술',
    n.name_kr = '측위기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '실내_위치_측위_기술'})
SET     n.name = '실내 위치 측위 기술',
    n.name_kr = '실내 위치 측위 기술',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Concept {id: '측위기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Document {id: 'NW_254'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측위기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실내_위치_측위_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_255: 실외 위치 측위기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_255'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '실외_위치_측위기술'})
SET     n.name = '실외 위치 측위기술',
    n.name_kr = '실외 위치 측위기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '측위기술'})
SET     n.name = '측위기술',
    n.name_kr = '측위기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '실외_위치_측위_기술'})
SET     n.name = '실외 위치 측위 기술',
    n.name_kr = '실외 위치 측위 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크_방식'})
SET     n.name = '네트워크 방식 (이동통신)',
    n.name_kr = '네트워크 방식 (이동통신)',
    n.domain = 'NW',
    n.definition = 'Cell ID';

MERGE (n:Metric {id: 'enhanced_cell_id'})
SET     n.name = 'Enhanced Cell ID',
    n.name_kr = 'Enhanced Cell ID',
    n.domain = 'NW',
    n.definition = 'Cell ID 방식에 기지국과 단말기 사이의 거리 정보를 추가하여 정확도를 개선',
    n.aliases = ['Enhanced Cell ID'];

MERGE (n:Concept {id: 'angle_of_arrival'})
SET     n.name = 'Angle Of Arrival',
    n.name_kr = 'AOA',
    n.domain = 'NW',
    n.definition = '단말기의 신호를 수신한 3개의 기지국에서 신호 수신 각도의 차이를 이용',
    n.aliases = ['Angle Of Arrival', 'AOA'];

MERGE (n:Concept {id: 'time_of_arrival'})
SET     n.name = 'Time Of Arrival',
    n.name_kr = 'TOA',
    n.domain = 'NW',
    n.definition = '한 개의 기지국과 2개의 주변 기지국들 사이의 신호 도달 시간의 차이를 이용',
    n.aliases = ['Time Of Arrival', 'TOA'];

MERGE (n:Concept {id: 'time_difference_of_arrival'})
SET     n.name = 'Time Difference Of Arrival',
    n.name_kr = 'TDOA',
    n.domain = 'NW',
    n.definition = '기지국 신호를 기준으로 인접 기지국들의 신호지연을 측정',
    n.aliases = ['Time Difference Of Arrival', 'TDOA'];

MERGE (n:Concept {id: '단말기_방식'})
SET     n.name = '단말기 방식',
    n.name_kr = '단말기 방식',
    n.domain = 'NW',
    n.definition = 'A-GPS (Assisted-GPS)';

MERGE (n:Concept {id: 'differential_gps'})
SET     n.name = 'Differential GPS',
    n.name_kr = 'D-GPS',
    n.domain = 'NW',
    n.definition = '지상의 기준 수신기로부터 보정신호를 받아 위성으로부터 수신된 위치신호의 오차를 보정',
    n.aliases = ['Differential GPS', 'D-GPS'];

MERGE (n:Concept {id: '하이브리드'})
SET     n.name = '하이브리드',
    n.name_kr = '하이브리드',
    n.domain = 'NW',
    n.definition = 'E-OTD (Enhanced Observed Time Difference)';

// --- 관계 ---

MERGE (a:Concept {id: '실외_위치_측위_기술'})
MERGE (b:Concept {id: '측위기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: '네트워크_방식'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Metric {id: 'enhanced_cell_id'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: 'angle_of_arrival'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: 'time_of_arrival'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: 'time_difference_of_arrival'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: '단말기_방식'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: 'differential_gps'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Concept {id: '하이브리드'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Document {id: 'NW_255'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '실외_위치_측위기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측위기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실외_위치_측위_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'enhanced_cell_id'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'angle_of_arrival'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_of_arrival'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_difference_of_arrival'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단말기_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'differential_gps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_256: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_256'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_258: NMS(Network Management System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_258'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network_management_system'})
SET     n.name = 'Network Management System',
    n.name_kr = 'NMS',
    n.domain = 'NW',
    n.aliases = ['Network Management System', 'NMS'];

MERGE (n:Concept {id: 'nms'})
SET     n.name = 'NMS',
    n.name_kr = 'NMS',
    n.domain = 'NW',
    n.aliases = ['NMS'];

MERGE (n:Concept {id: '구성_:_repository'})
SET     n.name = '구성 : Repository',
    n.name_kr = '구성 : Repository',
    n.domain = 'NW';

MERGE (n:Concept {id: 'agent'})
SET     n.name = 'Agent',
    n.name_kr = 'Agent',
    n.domain = 'NW',
    n.aliases = ['Agent'];

MERGE (n:Concept {id: 'mib'})
SET     n.name = 'MIB',
    n.name_kr = 'MIB',
    n.domain = 'NW',
    n.aliases = ['MIB'];

MERGE (n:Concept {id: 'snmp'})
SET     n.name = 'SNMP',
    n.name_kr = 'SNMP',
    n.domain = 'NW',
    n.aliases = ['SNMP'];

MERGE (n:Concept {id: '네트워크_매니저'})
SET     n.name = '네트워크 매니저',
    n.name_kr = '네트워크 매니저',
    n.domain = 'NW';

MERGE (n:Concept {id: '기능_:_구성관리'})
SET     n.name = '기능 : 구성관리',
    n.name_kr = '기능 : 구성관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '장애관리'})
SET     n.name = '장애관리',
    n.name_kr = '장애관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '성능관리'})
SET     n.name = '성능관리',
    n.name_kr = '성능관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '보안관리'})
SET     n.name = '보안관리',
    n.name_kr = '보안관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '계정관리'})
SET     n.name = '계정관리',
    n.name_kr = '계정관리',
    n.domain = 'NW';

MERGE (n:Technology {id: 'ip_망_관리'})
SET     n.name = 'IP 망 관리',
    n.name_kr = 'IP 망 관리',
    n.domain = 'NW',
    n.definition = 'TCP/IP 기반의 로컬 네트워크 또는 인터넷에 위치한 서버 및 네트워크 장비의 관리를 주 목적으로 함';

MERGE (n:Concept {id: '통신망_관리'})
SET     n.name = '통신망 관리',
    n.name_kr = '통신망 관리',
    n.domain = 'NW',
    n.definition = '유무선 통신망의 성능을 최적화하기 위한 실시간 망 감시 및 제어 목적';

MERGE (n:Concept {id: '전송망_관리'})
SET     n.name = '전송망 관리',
    n.name_kr = '전송망 관리',
    n.domain = 'NW',
    n.definition = '데이터 전송망을 구성하는 다양한 장비 및 전송 설비로부터 망 운용 및 유지보수에 필요한 망 사용정보를 수집하여 정상적인 망 운용을 지원하는 목적';

MERGE (n:Concept {id: '주요기능'})
SET     n.name = '주요기능',
    n.name_kr = '주요기능',
    n.domain = 'NW',
    n.definition = '구성관리';

MERGE (n:Concept {id: 'icmp'})
SET     n.name = 'ICMP',
    n.name_kr = 'ICMP',
    n.domain = 'NW',
    n.definition = 'Internet Control Message Protocol -1970년대 말부터 사용된 프로토콜로 네트워크상에서의 여러 가지 문제점들에 대한 피드백을 제공하기 위해 사용됨. -라우터나 호스트들 사이에 제어 메시지(echo/echo-reply)를 전달함 -현재 ping, traceroute 등을 통해 널리 사용되고 있음.',
    n.aliases = ['ICMP'];

MERGE (n:Concept {id: 'hems'})
SET     n.name = 'HEMS',
    n.name_kr = 'HEMS',
    n.domain = 'NW',
    n.definition = 'High Level Entity Management System - 호스트를 모니터링 하는데 사용했던 HMP(Host Monitoring Protocol)를 네트워크 관리에 맞게 발 전시킨 프로토콜',
    n.aliases = ['HEMS'];

MERGE (n:Technology {id: 'cmot'})
SET     n.name = 'CMOT',
    n.name_kr = 'CMOT',
    n.domain = 'NW',
    n.definition = 'CMIP Over TCP/IP - OSI 관리체제인 CMIP를 TCP/IP 위에서 동작하도록 만든 것. SNMP를 대체할 목적으로 제안되었지만, 너무 복잡한 구조로 인해 현재는 SNMP에 밀려 사양길에 접어듬',
    n.aliases = ['CMOT'];

// --- 관계 ---

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'nms'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '구성_:_repository'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'agent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'mib'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'snmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '네트워크_매니저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '기능_:_구성관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '장애관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '성능관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '보안관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '계정관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Technology {id: 'ip_망_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '통신망_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '전송망_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: '주요기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'icmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Concept {id: 'hems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Technology {id: 'cmot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Document {id: 'NW_258'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network_management_system'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nms'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_:_repository'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mib'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snmp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_매니저'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_:_구성관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계정관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ip_망_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신망_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송망_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'icmp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hems'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'cmot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_259.1: 네트워크 운영체제(Network Operation System : NOS)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_259.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '기본'})
SET     n.name = '기본',
    n.name_kr = '기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'network_operation_system'})
SET     n.name = '네트워크 운영체제',
    n.name_kr = '네트워크 운영체제',
    n.domain = 'NW';

MERGE (n:Concept {id: 'n2os'})
SET     n.name = 'N2OS',
    n.name_kr = 'N2OS',
    n.domain = 'NW',
    n.aliases = ['N2OS'];

MERGE (n:Concept {id: 'management_plane'})
SET     n.name = 'Management Plane',
    n.name_kr = 'Management Plane',
    n.domain = 'NW',
    n.aliases = ['Management Plane'];

MERGE (n:Concept {id: 'control_plane'})
SET     n.name = 'Control Plane',
    n.name_kr = 'Control Plane',
    n.domain = 'NW',
    n.aliases = ['Control Plane'];

MERGE (n:Concept {id: 'data_plane'})
SET     n.name = 'Data Plane',
    n.name_kr = 'Data Plane',
    n.domain = 'NW',
    n.aliases = ['Data Plane'];

// --- 관계 ---

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Concept {id: '기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Concept {id: 'n2os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Concept {id: 'management_plane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Concept {id: 'control_plane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Concept {id: 'data_plane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Document {id: 'NW_259.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_operation_system'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n2os'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'management_plane'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_plane'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_plane'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_259.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_259.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_260: MCN(Multi Channel Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_260'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'multi_channel_network'})
SET     n.name = 'Multi Channel Network',
    n.name_kr = 'MCN',
    n.domain = 'NW',
    n.aliases = ['Multi Channel Network', 'MCN'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '1인_창작자'})
SET     n.name = '1인 창작자',
    n.name_kr = '1인 창작자',
    n.domain = 'NW';

MERGE (n:Concept {id: '수익_쉐어'})
SET     n.name = '수익 쉐어',
    n.name_kr = '수익 쉐어',
    n.domain = 'NW';

MERGE (n:Concept {id: '파트너/저작권_관리'})
SET     n.name = '파트너/저작권 관리',
    n.name_kr = '파트너/저작권 관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'NW',
    n.definition = '구글의 동영상 플랫폼 유튜브 시작';

MERGE (n:Concept {id: '1인_창작자를_위한_사업'})
SET     n.name = '1인 창작자를 위한 사업',
    n.name_kr = '1인 창작자를 위한 사업',
    n.domain = 'NW',
    n.definition = '다양한 1인 창작자들을 위한 지원 및 수익 공유(광고기반)';

MERGE (n:Concept {id: '제작자'})
SET     n.name = '제작자',
    n.name_kr = '제작자',
    n.domain = 'NW',
    n.definition = '제작 수준 한계';

MERGE (n:Concept {id: '수익쉐어'})
SET     n.name = '수익쉐어',
    n.name_kr = '수익쉐어',
    n.domain = 'NW',
    n.definition = '동영상의 영향력에 따라서 다양한 혜택과 수익을 쉐어';

MERGE (n:Concept {id: '창작자의_인큐베이션'})
SET     n.name = '창작자의 인큐베이션',
    n.name_kr = '창작자의 인큐베이션',
    n.domain = 'NW',
    n.definition = '신규 창작자 발굴';

MERGE (n:Concept {id: '장비_등_제작_지원'})
SET     n.name = '장비 등 제작 지원',
    n.name_kr = '장비 등 제작 지원',
    n.domain = 'NW',
    n.definition = '촬영 및 컨텐츠 제작을 위한 장비 등의 지원';

MERGE (n:Concept {id: '마케팅_커뮤니케이션'})
SET     n.name = '마케팅 커뮤니케이션',
    n.name_kr = '마케팅 커뮤니케이션',
    n.domain = 'NW',
    n.definition = '제품 및 프로그램기획';

MERGE (n:Concept {id: '프로모션진행'})
SET     n.name = '프로모션진행',
    n.name_kr = '프로모션진행',
    n.domain = 'NW',
    n.definition = '다양한 수익 관련 프로모션 진행';

MERGE (n:Concept {id: '비즈니스지원'})
SET     n.name = '비즈니스지원',
    n.name_kr = '비즈니스지원',
    n.domain = 'NW',
    n.definition = '저작권관리';

MERGE (n:Concept {id: '파트너_관리'})
SET     n.name = '파트너 관리',
    n.name_kr = '파트너 관리',
    n.domain = 'NW',
    n.definition = '다양한 1인 창작자들의 관리 및 광고 관련 파트너 관리';

MERGE (n:Concept {id: '신규_컨텐츠_및_창출_지원'})
SET     n.name = '신규 컨텐츠 및 창출 지원',
    n.name_kr = '신규 컨텐츠 및 창출 지원',
    n.domain = 'NW',
    n.definition = '새로운 컨텐츠 영역 발굴 및 수익 모델 창출 지원';

MERGE (n:Concept {id: '국외'})
SET     n.name = '국외',
    n.name_kr = '국외',
    n.domain = 'NW',
    n.definition = 'AweSomnessTV';

MERGE (n:Concept {id: 'maker_studio'})
SET     n.name = 'Maker Studio',
    n.name_kr = 'Maker Studio',
    n.domain = 'NW',
    n.definition = '게임 ,스포츠, 뷰티, 패션, 화 등을 중심으로 10대에 머물지 않고, 미시족까지 폭넓은 계층을 대상으로 하는 채널 제공 -개인 창작자 대상 교육, 스튜디오, 홍보 및 광고 영업 등을 지원하면서',
    n.aliases = ['Maker Studio'];

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'NW',
    n.definition = '아프리카TV';

MERGE (n:Concept {id: '판도라tv'})
SET     n.name = '판도라TV',
    n.name_kr = '판도라TV',
    n.domain = 'NW',
    n.definition = '판도라 TV를 비롯한 소셜 비디오 콘텐츠 플랫폼에 창작자가 작품을 확산 지원 -바이럴(입소문) 영상을 제작해 수익을 도모하는 것도 중요한 목표 -창작자에겐 다양한 창작 기회를 제공해 연결 고리 플랫폼 목표';

// --- 관계 ---

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '1인_창작자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '수익_쉐어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '파트너/저작권_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '1인_창작자를_위한_사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '제작자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '수익쉐어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '창작자의_인큐베이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '장비_등_제작_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '마케팅_커뮤니케이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '프로모션진행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '비즈니스지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '파트너_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '신규_컨텐츠_및_창출_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '국외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: 'maker_studio'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Concept {id: '판도라tv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Document {id: 'NW_260'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multi_channel_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1인_창작자'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익_쉐어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파트너/저작권_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1인_창작자를_위한_사업'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제작자'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익쉐어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '창작자의_인큐베이션'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비_등_제작_지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마케팅_커뮤니케이션'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로모션진행'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파트너_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_컨텐츠_및_창출_지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국외'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maker_studio'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판도라tv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_261: 방송통신설비의 기술기준
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_261'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '방송통신설비의_기술기준'})
SET     n.name = '방송통신설비의 기술기준',
    n.name_kr = '방송통신설비의 기술기준',
    n.domain = 'NW';

MERGE (n:Concept {id: '방송'})
SET     n.name = '방송',
    n.name_kr = '방송',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '방송통신설비의_기술기준'})
MERGE (b:Concept {id: '방송'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '방송통신설비의_기술기준'})
MERGE (b:Document {id: 'NW_261'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '방송통신설비의_기술기준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_262: 방송통신 융합
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_262'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '방송통신_융합'})
SET     n.name = '방송통신 융합',
    n.name_kr = '방송통신 융합',
    n.domain = 'NW';

MERGE (n:Concept {id: '방송'})
SET     n.name = '방송',
    n.name_kr = '방송',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '방송통신_융합'})
MERGE (b:Concept {id: '방송'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '방송통신_융합'})
MERGE (b:Document {id: 'NW_262'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '방송통신_융합'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_263: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_263'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_264: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_264'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_265: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_265'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_270: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_270'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_271: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_271'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_34.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_34.2'})
SET doc.domain = 'NW';

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 200개
// 관계: 405개
// ================================================================