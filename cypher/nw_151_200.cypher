// ================================================================
// NW 도메인 (NW_151 ~ NW_200) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_145: MIMO (Multiple Input Multiple Output)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_145'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'multiple_input_multiple_output'})
SET     n.name = 'Multiple Input Multiple Output',
    n.name_kr = 'MIMO',
    n.domain = 'NW',
    n.aliases = ['Multiple Input Multiple Output', 'MIMO'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: 'mimo'})
SET     n.name = 'MIMO',
    n.name_kr = 'MIMO',
    n.domain = 'NW',
    n.aliases = ['MIMO'];

MERGE (n:Concept {id: 'spatial_multiplexing'})
SET     n.name = 'Spatial Multiplexing',
    n.name_kr = 'Spatial Multiplexing',
    n.domain = 'NW',
    n.aliases = ['Spatial Multiplexing'];

MERGE (n:Concept {id: 'sapce_diversity'})
SET     n.name = 'Sapce Diversity',
    n.name_kr = 'Sapce Diversity',
    n.domain = 'NW',
    n.aliases = ['Sapce Diversity'];

MERGE (n:Concept {id: 'open_loops'})
SET     n.name = 'Open Loops',
    n.name_kr = 'Open Loops',
    n.domain = 'NW',
    n.aliases = ['Open Loops'];

MERGE (n:Concept {id: 'closed_loops'})
SET     n.name = 'Closed Loops',
    n.name_kr = 'Closed Loops',
    n.domain = 'NW',
    n.aliases = ['Closed Loops'];

MERGE (n:Concept {id: 'beam_forming'})
SET     n.name = 'Beam Forming',
    n.name_kr = 'Beam Forming',
    n.domain = 'NW',
    n.aliases = ['Beam Forming'];

MERGE (n:Concept {id: 'precodig'})
SET     n.name = 'Precodig',
    n.name_kr = 'Precodig',
    n.domain = 'NW',
    n.aliases = ['Precodig'];

MERGE (n:Concept {id: 'sigle_user_mimo'})
SET     n.name = 'Sigle user MIMO',
    n.name_kr = 'Sigle user MIMO',
    n.domain = 'NW',
    n.aliases = ['Sigle user MIMO'];

MERGE (n:Concept {id: 'multi_user_mimo'})
SET     n.name = 'Multi user MIMO',
    n.name_kr = 'Multi user MIMO',
    n.domain = 'NW',
    n.aliases = ['Multi user MIMO'];

MERGE (n:Concept {id: 'massive_mimo'})
SET     n.name = 'Massive MIMO',
    n.name_kr = 'Massive MIMO',
    n.domain = 'NW',
    n.aliases = ['Massive MIMO'];

MERGE (n:Concept {id: '동일데이터_전송_여부'})
SET     n.name = '동일데이터 전송 여부',
    n.name_kr = '동일데이터 전송 여부',
    n.domain = 'NW',
    n.definition = 'Spatial Multiplexing (공간다중화)';

MERGE (n:Concept {id: 'space_diversity'})
SET     n.name = 'Space Diversity',
    n.name_kr = '공간다이버시티',
    n.domain = 'NW',
    n.definition = '시간과 공간 축으로 중복된 정보를 전송하고 수신기에서 이들 신호를 적절히 결합하여 다이버시티 이득과 부호 이득 얻어 오류율 향상',
    n.aliases = ['Space Diversity', '공간다이버시티'];

MERGE (n:Concept {id: '채널_정보_귀환_여부'})
SET     n.name = '채널 정보 귀환 여부',
    n.name_kr = '채널 정보 귀환 여부',
    n.domain = 'NW',
    n.definition = 'Open Loop';

// --- 관계 ---

MERGE (a:Technology {id: 'lte'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mimo'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'spatial_multiplexing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'sapce_diversity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'open_loops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'closed_loops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'beam_forming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'precodig'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'sigle_user_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'multi_user_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'massive_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: '동일데이터_전송_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: 'space_diversity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Concept {id: '채널_정보_귀환_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Document {id: 'NW_145'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multiple_input_multiple_output'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spatial_multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sapce_diversity'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_loops'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'closed_loops'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beam_forming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'precodig'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sigle_user_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_user_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'massive_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동일데이터_전송_여부'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'space_diversity'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '채널_정보_귀환_여부'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_146: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_146'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_147: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_147'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_148: 멀티캐리어(Multi Carrier)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_148'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'multi_carrier'})
SET     n.name = 'Multi Carrier',
    n.name_kr = '멀티캐리어',
    n.domain = 'NW',
    n.aliases = ['Multi Carrier', '멀티캐리어'];

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: 'na'})
SET     n.name = 'NA',
    n.name_kr = 'NA',
    n.domain = 'NW',
    n.aliases = ['NA'];

// --- 관계 ---

MERGE (a:Concept {id: 'multi_carrier'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'multi_carrier'})
MERGE (b:Concept {id: 'na'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_carrier'})
MERGE (b:Document {id: 'NW_148'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multi_carrier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'na'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_149: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_149'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_150: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_150'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_151: TDD-LTE(Time Division Duplexing-LTE), FDD-LTE(Frequency Division Duplexing-LTE)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_151'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: '시분할'})
SET     n.name = '시분할',
    n.name_kr = '시분할',
    n.domain = 'NW';

MERGE (n:Concept {id: 'unpaired방식'})
SET     n.name = 'unpaired방식',
    n.name_kr = 'unpaired방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '같은_주파수_이용'})
SET     n.name = '같은 주파수 이용',
    n.name_kr = '같은 주파수 이용',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tdd_lte'})
SET     n.name = 'TDD-LTE',
    n.name_kr = 'TDD-LTE',
    n.domain = 'NW',
    n.aliases = ['TDD-LTE'];

MERGE (n:Technology {id: 'fdd_lte'})
SET     n.name = 'FDD-LTE',
    n.name_kr = 'FDD-LTE',
    n.domain = 'NW',
    n.aliases = ['FDD-LTE'];

// --- 관계 ---

MERGE (a:Technology {id: 'lte'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Concept {id: '시분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Concept {id: 'unpaired방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Concept {id: '같은_주파수_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tdd_lte'})
MERGE (b:Technology {id: 'fdd_lte'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Technology {id: 'tdd_lte'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Technology {id: 'fdd_lte'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'time_division_duplexing_lte'})
MERGE (b:Document {id: 'NW_151'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시분할'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unpaired방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '같은_주파수_이용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tdd_lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'fdd_lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_152: VOLTE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_152'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'volte'})
SET     n.name = 'VOLTE',
    n.name_kr = 'VOLTE',
    n.domain = 'NW',
    n.aliases = ['VOLTE'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: 'ip기반'})
SET     n.name = 'IP기반',
    n.name_kr = 'IP기반',
    n.domain = 'NW';

MERGE (n:Concept {id: '4g'})
SET     n.name = '4G',
    n.name_kr = '4G',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mmtel'})
SET     n.name = 'MMTel',
    n.name_kr = 'MMTel',
    n.domain = 'NW',
    n.aliases = ['MMTel'];

MERGE (n:Concept {id: 'ims'})
SET     n.name = 'IMS',
    n.name_kr = 'IMS',
    n.domain = 'NW',
    n.aliases = ['IMS'];

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.aliases = ['SIP'];

MERGE (n:Concept {id: 'sr_vcc'})
SET     n.name = 'SR-VCC',
    n.name_kr = 'SR-VCC',
    n.domain = 'NW',
    n.aliases = ['SR-VCC'];

MERGE (n:Concept {id: 'ipv6'})
SET     n.name = 'IPv6',
    n.name_kr = 'IPv6',
    n.domain = 'NW',
    n.aliases = ['IPv6'];

MERGE (n:Concept {id: '3g'})
SET     n.name = '3G',
    n.name_kr = '3G',
    n.domain = 'NW';

MERGE (n:Concept {id: 'enodeb'})
SET     n.name = 'eNodeB',
    n.name_kr = 'eNodeB',
    n.domain = 'NW',
    n.definition = '공격 단말과 연결되어 있는 eNodeB 통계정보를 활용하여 특정 호스트가 과도한 트래픽을 요청하는 경우 차단',
    n.aliases = ['eNodeB'];

MERGE (n:Concept {id: '공격대상_서버_및_단말'})
SET     n.name = '공격대상 서버 및 단말',
    n.name_kr = '공격대상 서버 및 단말',
    n.domain = 'NW',
    n.definition = 'SIP REGISTER 공격차단';

MERGE (n:Concept {id: 'sip_invite_공격_차단'})
SET     n.name = 'SIP INVITE 공격 차단',
    n.name_kr = 'SIP INVITE 공격 차단',
    n.domain = 'NW',
    n.definition = '호 연결 타이머를 두어 특정 사용자가 지속적인 INVITE 메시지를 보낼 경우 해당 사용자의 요청 차단';

MERGE (n:Metric {id: 'rpt_공격_차단'})
SET     n.name = 'RPT 공격 차단',
    n.name_kr = 'RPT 공격 차단',
    n.domain = 'NW',
    n.definition = '데이터 무결성을 보장해주는 SRTP(Secure RTP)를 사용 허가된 단말에게만 데이터를 수신';

// --- 관계 ---

MERGE (a:Technology {id: 'lte'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'ip기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: '4g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'mmtel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'ims'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'sr_vcc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'ipv6'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: '3g'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: '3g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'enodeb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: '공격대상_서버_및_단말'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Concept {id: 'sip_invite_공격_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Metric {id: 'rpt_공격_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Document {id: 'NW_152'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'volte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip기반'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mmtel'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sr_vcc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipv6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enodeb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격대상_서버_및_단말'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip_invite_공격_차단'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'rpt_공격_차단'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_153: IMS(IP Multimedia Subsystem)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_153'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ip_multimedia_subsystem'})
SET     n.name = 'IP Multimedia Subsystem',
    n.name_kr = 'IMS',
    n.domain = 'NW',
    n.aliases = ['IP Multimedia Subsystem', 'IMS'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

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

MERGE (n:Technology {id: 'session_initiation_protocol'})
SET     n.name = 'Session Initiation Protocol',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.definition = '인터넷전화, 멀티미디어의 배포 등 세션(session)을 생성하고, 수정하며, 종료 작업을 위한 프로토콜 전달계층과 독립적이며, TCP/UDP에서 구동',
    n.aliases = ['Session Initiation Protocol', 'SIP'];

MERGE (n:Concept {id: 'call_session_control_function'})
SET     n.name = 'Call Session Control Function',
    n.name_kr = 'CSCF',
    n.domain = 'NW',
    n.definition = '사용자 단말기를 등록하고 SIP(Session Initiation Protocol) 시그널링을 적절한 서버로 라우팅 하는 역할',
    n.aliases = ['Call Session Control Function', 'CSCF'];

MERGE (n:Concept {id: 'home_subscriber_server'})
SET     n.name = 'Home Subscriber Server',
    n.name_kr = 'HSS',
    n.domain = 'NW',
    n.definition = '이동통신 HLR(Home Location Register)에서 발전한 것으로 가입자 정보를 관리하는 중앙화된 데이터베이스 사용자 등록 및 변경 관리, 인증, 권한 부여, 로케이션, 세션 라우팅, 과금 등의 기능을 수행 ( 사인권 로라과금 기능 )',
    n.aliases = ['Home Subscriber Server', 'HSS'];

// --- 관계 ---

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: '멀티_ip전송_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: '상호운용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'all_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: '신속서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: '구성-_sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'cscf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Technology {id: 'session_initiation_protocol'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'call_session_control_function'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Concept {id: 'home_subscriber_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Document {id: 'NW_153'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ip_multimedia_subsystem'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
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

MERGE (a:Technology {id: 'session_initiation_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'call_session_control_function'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'home_subscriber_server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_154: LTE-A(Long term evolution-advanced)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_154'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'long_term_evolution_advanced'})
SET     n.name = 'Long term evolution-advanced',
    n.name_kr = 'LTE-A',
    n.domain = 'NW',
    n.aliases = ['Long term evolution-advanced', 'LTE-A'];

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Technology {id: 'lte_a'})
SET     n.name = 'LTE-A',
    n.name_kr = 'LTE-A',
    n.domain = 'NW',
    n.aliases = ['LTE-A'];

MERGE (n:Concept {id: 'multi_carrier'})
SET     n.name = '멀티캐리어',
    n.name_kr = '멀티캐리어',
    n.domain = 'NW';

MERGE (n:Concept {id: 'advanced_mimo'})
SET     n.name = 'Advanced-MIMO',
    n.name_kr = 'Advanced-MIMO',
    n.domain = 'NW',
    n.aliases = ['Advanced-MIMO'];

MERGE (n:Concept {id: '다이나믹_셀렉션'})
SET     n.name = '다이나믹 셀렉션',
    n.name_kr = '다이나믹 셀렉션',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준'})
SET     n.name = '표준',
    n.name_kr = '표준',
    n.domain = 'NW',
    n.definition = '3GPP Release 10~12에 명시';

MERGE (n:Technology {id: '전송속도'})
SET     n.name = '전송속도',
    n.name_kr = '전송속도',
    n.domain = 'NW',
    n.definition = '기존 LTE 대비 2배의 전송속도';

MERGE (n:Technology {id: '주파수효율'})
SET     n.name = '주파수효율',
    n.name_kr = '주파수효율',
    n.domain = 'NW',
    n.definition = 'LTE 대비 평균 40~60% 향상';

MERGE (n:Concept {id: '호환성'})
SET     n.name = '호환성',
    n.name_kr = '호환성',
    n.domain = 'NW',
    n.definition = '기존 LTE망에 업그레이드를 통한 호환';

MERGE (n:Technology {id: 'release8'})
SET     n.name = 'Release8',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['Release8', 'LTE'];

MERGE (n:Technology {id: 'release10'})
SET     n.name = 'Release10',
    n.name_kr = 'LTE-Advanced',
    n.domain = 'NW',
    n.aliases = ['Release10', 'LTE-Advanced'];

// --- 관계 ---

MERGE (a:Technology {id: 'lte_a'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Concept {id: 'multi_carrier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Concept {id: 'advanced_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Concept {id: '다이나믹_셀렉션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Concept {id: '표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Technology {id: '전송속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Technology {id: '주파수효율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Concept {id: '호환성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'release8'})
MERGE (b:Technology {id: 'release10'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Technology {id: 'release8'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Technology {id: 'release10'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Document {id: 'NW_154'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'long_term_evolution_advanced'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_a'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_carrier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'advanced_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이나믹_셀렉션'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '전송속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '주파수효율'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호환성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'release8'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'release10'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_155: LTE-U
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_155'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'lte_u'})
SET     n.name = 'LTE-U',
    n.name_kr = 'LTE-U',
    n.domain = 'NW',
    n.aliases = ['LTE-U'];

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: '비면허_대역'})
SET     n.name = '비면허 대역',
    n.name_kr = '비면허 대역',
    n.domain = 'NW';

MERGE (n:Concept {id: '5ghz'})
SET     n.name = '5GHz',
    n.name_kr = '5GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: 'carrier_aggregation'})
SET     n.name = 'Carrier Aggregation',
    n.name_kr = 'Carrier Aggregation',
    n.domain = 'NW',
    n.aliases = ['Carrier Aggregation'];

MERGE (n:Concept {id: 'listen_before_talk'})
SET     n.name = 'Listen Before Talk',
    n.name_kr = 'Listen Before Talk',
    n.domain = 'NW',
    n.aliases = ['Listen Before Talk'];

// --- 관계 ---

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Concept {id: '비면허_대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Concept {id: '5ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Concept {id: 'carrier_aggregation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Concept {id: 'listen_before_talk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Document {id: 'NW_155'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'lte_u'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비면허_대역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'carrier_aggregation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'listen_before_talk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_156: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_156'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_157: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_157'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_158: LTE-X 사업
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_158'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'lte-x_사업'})
SET     n.name = 'LTE-X 사업',
    n.name_kr = 'LTE-X 사업',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte_x'})
SET     n.name = 'LTE-X',
    n.name_kr = 'LTE-X',
    n.domain = 'NW',
    n.aliases = ['LTE-X'];

MERGE (n:Concept {id: '공공안전통신망_포럼'})
SET     n.name = '공공안전통신망 포럼',
    n.name_kr = '공공안전통신망 포럼',
    n.domain = 'NW';

MERGE (n:Concept {id: '주파수간섭'})
SET     n.name = '주파수간섭',
    n.name_kr = '주파수간섭',
    n.domain = 'NW';

MERGE (n:Concept {id: '700mhz'})
SET     n.name = '700MHz',
    n.name_kr = '700MHz',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mcptt'})
SET     n.name = 'MCPTT',
    n.name_kr = 'MCPTT',
    n.domain = 'NW',
    n.aliases = ['MCPTT'];

MERGE (n:Technology {id: 'lte-r_코어망'})
SET     n.name = 'LTE-R 코어망',
    n.name_kr = 'LTE-R 코어망',
    n.domain = 'NW';

MERGE (n:Concept {id: 'e_navigation'})
SET     n.name = 'e-Navigation',
    n.name_kr = 'e-Navigation',
    n.domain = 'NW',
    n.aliases = ['e-Navigation'];

MERGE (n:Concept {id: '주파수'})
SET     n.name = '주파수',
    n.name_kr = '주파수',
    n.domain = 'NW';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '사업_현황_및_전망'})
SET     n.name = '사업 현황 및 전망',
    n.name_kr = '사업 현황 및 전망',
    n.domain = 'NW';

MERGE (n:Concept {id: '사업규모'})
SET     n.name = '사업규모',
    n.name_kr = '사업규모',
    n.domain = 'NW';

MERGE (n:Concept {id: '주요관심'})
SET     n.name = '주요관심',
    n.name_kr = '주요관심',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Technology {id: 'lte_x'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '공공안전통신망_포럼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '주파수간섭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '700mhz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: 'mcptt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Technology {id: 'lte-r_코어망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: 'e_navigation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주파수'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '주파수'})
MERGE (b:Concept {id: '사업_현황_및_전망'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '주파수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Concept {id: '사업_현황_및_전망'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '사업_현황_및_전망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Concept {id: '사업규모'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Concept {id: '주요관심'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사업규모'})
MERGE (b:Concept {id: '주요관심'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '사업규모'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Concept {id: '주요관심'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Document {id: 'NW_158'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'lte-x_사업'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_x'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공안전통신망_포럼'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수간섭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '700mhz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcptt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte-r_코어망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업_현황_및_전망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업규모'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요관심'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_159: 국가재난안전통신망(PS-LTE)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_159'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'ps_lte'})
SET     n.name = 'PS-LTE',
    n.name_kr = '국가재난안전통신망',
    n.domain = 'NW',
    n.aliases = ['PS-LTE', '국가재난안전통신망'];

MERGE (n:Concept {id: 'd2d'})
SET     n.name = 'D2D',
    n.name_kr = 'ProSE',
    n.domain = 'NW',
    n.aliases = ['D2D', 'ProSE'];

MERGE (n:Concept {id: 'iops'})
SET     n.name = 'IOPS',
    n.name_kr = 'IOPS',
    n.domain = 'NW',
    n.aliases = ['IOPS'];

MERGE (n:Concept {id: 'gcse'})
SET     n.name = 'GCSE',
    n.name_kr = 'GCSE',
    n.domain = 'NW',
    n.aliases = ['GCSE'];

MERGE (n:Concept {id: 'mcptt'})
SET     n.name = 'MCPTT',
    n.name_kr = 'MCPTT',
    n.domain = 'NW',
    n.aliases = ['MCPTT'];

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'NW',
    n.definition = '관제센터';

MERGE (n:Technology {id: 'core_망'})
SET     n.name = 'Core 망',
    n.name_kr = 'Core 망',
    n.domain = 'NW',
    n.definition = 'HSS : 이동성 관리, 통화 및 세션 확립 지원, 사용자 인증 - IMS : IP기반 멀티미디어 서비스를 위한 서브 시스템 - eMBMS : 1:N을 지원하는 LTE 기반 동영상 전송 서비스 - EPC : LTE 교환기, 연동 G/W';

MERGE (n:Technology {id: 'lte_access'})
SET     n.name = 'LTE Access',
    n.name_kr = '가입자망',
    n.domain = 'NW',
    n.definition = 'LTE 사용망, 타 연동망(LTE-R), LTE-TDD, TETRA/TRS/VHF 접속망',
    n.aliases = ['LTE Access', '가입자망'];

MERGE (n:Concept {id: '단말기'})
SET     n.name = '단말기',
    n.name_kr = '단말기',
    n.domain = 'NW',
    n.definition = '휴대형, 고정형, 선박형, 철도형, 기존 단말기';

MERGE (n:Concept {id: '주요_기술'})
SET     n.name = '주요 기술',
    n.name_kr = '주요 기술',
    n.domain = 'NW',
    n.definition = 'D2D, ProSe';

MERGE (n:Concept {id: 'mission_critical_push_to_talk'})
SET     n.name = 'Mission Critical Push to Talk',
    n.name_kr = 'MCPTT',
    n.domain = 'NW',
    n.definition = '무전기와 같이 스위치를 누르는 동작만으로 대기시간 (0.3초이내)을 최소화하여 일대일 또는 그룹통화가 가능한 기술',
    n.aliases = ['Mission Critical Push to Talk', 'MCPTT'];

MERGE (n:Concept {id: 'ran_sharing'})
SET     n.name = 'RAN-Sharing',
    n.name_kr = '기지국 공유기술',
    n.domain = 'NW',
    n.definition = '700MHz 대역 공용 주파수(전파)를 사용하는 해상망, 철도망 등 통합공공망과 상호운영성을 확보하고 커버리지를 확대하였으며, 상용망(KT, SKT)을 백업망으로 구성',
    n.aliases = ['RAN-Sharing', '기지국 공유기술'];

MERGE (n:Concept {id: 'all_ipv6'})
SET     n.name = 'ALL-IPv6',
    n.name_kr = 'ALL-IPv6',
    n.domain = 'NW',
    n.definition = '넓은 확장성을 갖출 수 있도록 고품질의 서비스 제공을 위해 구성되었으며 및 타 기관 시스템(IPv4)과의 연계가 가능하도록 세계 최초 구성',
    n.aliases = ['ALL-IPv6'];

MERGE (n:Concept {id: 'embms'})
SET     n.name = 'eMBMS',
    n.name_kr = 'eMBMS',
    n.domain = 'NW',
    n.definition = '재난발생시 밀집되어 있는 다수의 사용자들에게 영상을 송출하는 기능으로, 자원할당을 통한 트래픽 증가 없이도 여러 사용자들에게 영상 송수신 가능',
    n.aliases = ['eMBMS'];

MERGE (n:Concept {id: '드론_영상_스트리밍'})
SET     n.name = '드론 영상 스트리밍',
    n.name_kr = '드론 영상 스트리밍',
    n.domain = 'NW',
    n.definition = '현장 영상 신속 확보/정확한 현장 대응의 드론 영상 스트리밍 서비스를 제공하여 재난관련기관이 재난현장 영상정보 서비스 구현';

MERGE (n:Concept {id: '확장가능_인프라'})
SET     n.name = '확장가능 인프라',
    n.name_kr = '확장가능 인프라',
    n.domain = 'NW',
    n.definition = '다양한 서비스를 추가하여 확장할 수 있도록 플랫폼(C-IoT, AI, Big-Data 등) 서비스를 수용 가능한 시스템이 구성되어 있으며, 추후 3GPP Rel. 15 등 코어시스템 업그레이드 확장 예정';

MERGE (n:Concept {id: '정보관리'})
SET     n.name = '정보관리',
    n.name_kr = '정보관리',
    n.domain = 'NW',
    n.definition = '기관간 동시/다중 상황전파';

MERGE (n:Concept {id: '자원관리'})
SET     n.name = '자원관리',
    n.name_kr = '자원관리',
    n.domain = 'NW',
    n.definition = '현장 통합 지휘';

// --- 관계 ---

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Technology {id: 'ps_lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'd2d'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'iops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'gcse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'mcptt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Technology {id: 'core_망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Technology {id: 'lte_access'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '단말기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'mission_critical_push_to_talk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'ran_sharing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'all_ipv6'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: 'embms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '드론_영상_스트리밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '확장가능_인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '정보관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Concept {id: '자원관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Document {id: 'NW_159'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'd2d'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iops'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gcse'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcptt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'core_망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_access'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단말기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mission_critical_push_to_talk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ran_sharing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'all_ipv6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embms'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '드론_영상_스트리밍'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장가능_인프라'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_160: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_160'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_161: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_161'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_162: e내비게이션(e-Navigation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_162'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'e_navigation'})
SET     n.name = 'e-Navigation',
    n.name_kr = 'e내비게이션',
    n.domain = 'NW',
    n.aliases = ['e-Navigation', 'e내비게이션'];

MERGE (n:Technology {id: 'lte_x'})
SET     n.name = 'LTE-X',
    n.name_kr = 'LTE-X',
    n.domain = 'NW',
    n.aliases = ['LTE-X'];

MERGE (n:Concept {id: '항법시스템'})
SET     n.name = '항법시스템',
    n.name_kr = '항법시스템',
    n.domain = 'NW';

MERGE (n:Concept {id: '전자해도'})
SET     n.name = '전자해도',
    n.name_kr = '전자해도',
    n.domain = 'NW';

MERGE (n:Concept {id: '항법체계'})
SET     n.name = '항법체계',
    n.name_kr = '항법체계',
    n.domain = 'NW';

MERGE (n:Concept {id: '운항시스템'})
SET     n.name = '운항시스템',
    n.name_kr = '운항시스템',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ais'})
SET     n.name = 'AIS',
    n.name_kr = '선박자동식별기술',
    n.domain = 'NW',
    n.aliases = ['AIS', '선박자동식별기술'];

MERGE (n:Concept {id: 'gmdss'})
SET     n.name = 'GMDSS',
    n.name_kr = '해상조난안전시스템',
    n.domain = 'NW',
    n.aliases = ['GMDSS', '해상조난안전시스템'];

MERGE (n:Concept {id: 'pnt통합'})
SET     n.name = 'PNT통합',
    n.name_kr = 'PNT통합',
    n.domain = 'NW';

MERGE (n:Concept {id: '스마트네비게이션'})
SET     n.name = '스마트네비게이션',
    n.name_kr = '스마트네비게이션',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Technology {id: 'lte_x'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: '항법시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: '전자해도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: '항법체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: '운항시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: 'ais'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: 'gmdss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: 'pnt통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Concept {id: '스마트네비게이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Document {id: 'NW_162'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'e_navigation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_x'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '항법시스템'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자해도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '항법체계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운항시스템'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ais'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gmdss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pnt통합'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트네비게이션'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_163: TRS(TE-TRA, IDEN)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_163'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'trs'})
SET     n.name = 'TE-TRA, IDEN',
    n.name_kr = 'TRS',
    n.domain = 'NW',
    n.aliases = ['TE-TRA, IDEN', 'TRS'];

MERGE (n:Concept {id: 'trs:_기존_경찰청에서_사용하는_안전통신망'})
SET     n.name = 'TRS(TE-TRA, IDEN): 기존 경찰청에서 사용하는 안전통신망',
    n.name_kr = 'TRS(TE-TRA, IDEN): 기존 경찰청에서 사용하는 안전통신망',
    n.domain = 'NW';

MERGE (n:Technology {id: '국가재난안전망_ps-lte_:_700_mhz_와_상호운영성'})
SET     n.name = '국가재난안전(통합)망 PS-LTE : 700 MHz 와 상호운영성',
    n.name_kr = '국가재난안전(통합)망 PS-LTE : 700 MHz 와 상호운영성',
    n.domain = 'NW';

MERGE (n:Concept {id: 'trunked'})
SET     n.name = 'Trunked',
    n.name_kr = '트렁크',
    n.domain = 'NW',
    n.aliases = ['Trunked', '트렁크'];

MERGE (n:Concept {id: 'tetra'})
SET     n.name = 'TETRA',
    n.name_kr = 'TETRA',
    n.domain = 'NW',
    n.aliases = ['TETRA'];

MERGE (n:Concept {id: 'iden'})
SET     n.name = 'iDEN',
    n.name_kr = 'iDEN',
    n.domain = 'NW',
    n.aliases = ['iDEN'];

// --- 관계 ---

MERGE (a:Technology {id: '국가재난안전망_ps-lte_:_700_mhz_와_상호운영성'})
MERGE (b:Concept {id: 'trs:_기존_경찰청에서_사용하는_안전통신망'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'trs'})
MERGE (b:Concept {id: 'trunked'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trs'})
MERGE (b:Concept {id: 'tetra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trs'})
MERGE (b:Concept {id: 'iden'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trs'})
MERGE (b:Document {id: 'NW_163'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'trs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trs:_기존_경찰청에서_사용하는_안전통신망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '국가재난안전망_ps-lte_:_700_mhz_와_상호운영성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trunked'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tetra'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iden'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_164.1: 상호운용성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_164.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '상호운용성'})
SET     n.name = '상호운용성',
    n.name_kr = '상호운용성',
    n.domain = 'NW';

MERGE (n:Technology {id: 'ps_lte'})
SET     n.name = 'PS-LTE',
    n.name_kr = 'PS-LTE',
    n.domain = 'NW',
    n.aliases = ['PS-LTE'];

MERGE (n:Concept {id: '국가재난안전통신망'})
SET     n.name = '국가재난안전통신망',
    n.name_kr = '국가재난안전통신망',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte_r'})
SET     n.name = 'LTE-R',
    n.name_kr = 'LTE-R',
    n.domain = 'NW',
    n.aliases = ['LTE-R'];

// --- 관계 ---

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Technology {id: 'ps_lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Concept {id: '국가재난안전통신망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Technology {id: 'lte_r'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Document {id: 'NW_164.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ps_lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가재난안전통신망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_r'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_164.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_164.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_164.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_164.3'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_164.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_164.4'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_165: 5G(IMT-2020)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_165'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'imt_2020'})
SET     n.name = 'IMT-2020',
    n.name_kr = '5G',
    n.domain = 'NW',
    n.aliases = ['IMT-2020', '5G'];

MERGE (n:Concept {id: '전체주고지연에면'})
SET     n.name = '전체주고지연에면',
    n.name_kr = '전체주고지연에면',
    n.domain = 'NW';

MERGE (n:Concept {id: 'imt_advanced'})
SET     n.name = 'IMT-Advanced',
    n.name_kr = '4G',
    n.domain = 'NW',
    n.aliases = ['IMT-Advanced', '4G'];

MERGE (n:Concept {id: '기술적_특징'})
SET     n.name = '기술적 특징',
    n.name_kr = '기술적 특징',
    n.domain = 'NW';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'NW';

MERGE (n:Concept {id: '주요국_정책동향'})
SET     n.name = '주요국 정책동향',
    n.name_kr = '주요국 정책동향',
    n.domain = 'NW',
    n.definition = '미국 National Broadband Plan';

MERGE (n:Technology {id: '연구개발_동향'})
SET     n.name = '연구개발 동향',
    n.name_kr = '연구개발 동향',
    n.domain = 'NW',
    n.definition = '유럽 5G PPP - 일본 5GMF';

MERGE (n:Concept {id: '시범서비스_추진동향'})
SET     n.name = '시범서비스 추진동향',
    n.name_kr = '시범서비스 추진동향',
    n.domain = 'NW',
    n.definition = '미국 - 일본';

MERGE (n:Technology {id: '기술_및_주파수_동향'})
SET     n.name = '기술 및 주파수 동향',
    n.name_kr = '기술 및 주파수 동향',
    n.domain = 'NW',
    n.definition = 'LTE-A와 New RAT 융합';

MERGE (n:Concept {id: 'embb'})
SET     n.name = 'eMBB',
    n.name_kr = 'eMBB',
    n.domain = 'NW',
    n.definition = 'Massive MIMO',
    n.aliases = ['eMBB'];

MERGE (n:Concept {id: 'non_embb'})
SET     n.name = 'Non-eMBB',
    n.name_kr = 'Non-eMBB',
    n.domain = 'NW',
    n.definition = 'Positioning',
    n.aliases = ['Non-eMBB'];

MERGE (n:Concept {id: 'cross_funtionalities'})
SET     n.name = 'Cross-Funtionalities',
    n.name_kr = 'Cross-Funtionalities',
    n.domain = 'NW',
    n.definition = 'Full Duplex',
    n.aliases = ['Cross-Funtionalities'];

// --- 관계 ---

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: '전체주고지연에면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'imt_advanced'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: 'imt_advanced'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술적_특징'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: '기술적_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: '주요국_정책동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Technology {id: '연구개발_동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: '시범서비스_추진동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Technology {id: '기술_및_주파수_동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: 'embb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: 'non_embb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Concept {id: 'cross_funtionalities'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Document {id: 'NW_165'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전체주고지연에면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'imt_advanced'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_특징'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요국_정책동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '연구개발_동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시범서비스_추진동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '기술_및_주파수_동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_embb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cross_funtionalities'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_166.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_166.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_166.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_166.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_167: 5G+ 전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_167'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: '5g+_전략'})
SET     n.name = '5G+ 전략',
    n.name_kr = '5G+ 전략',
    n.domain = 'NW';

MERGE (n:Technology {id: 'imt_2020'})
SET     n.name = 'IMT-2020',
    n.name_kr = '5G',
    n.domain = 'NW',
    n.aliases = ['IMT-2020', '5G'];

MERGE (n:Technology {id: '비전'})
SET     n.name = '비전',
    n.name_kr = '비전',
    n.domain = 'NW',
    n.definition = '5G+를 통한 혁신성장 실현';

MERGE (n:Concept {id: '수출증대'})
SET     n.name = '수출증대',
    n.name_kr = '수출증대',
    n.domain = 'NW',
    n.definition = '$100억 -> $730억';

MERGE (n:Concept {id: '이용자보호'})
SET     n.name = '이용자보호',
    n.name_kr = '이용자보호',
    n.domain = 'NW',
    n.definition = '안전한 이용환경 조성';

MERGE (n:Concept {id: '고용창출'})
SET     n.name = '고용창출',
    n.name_kr = '고용창출',
    n.domain = 'NW',
    n.definition = '10만->60만';

MERGE (n:Concept {id: '전략산업육성'})
SET     n.name = '전략산업육성',
    n.name_kr = '전략산업육성',
    n.domain = 'NW',
    n.definition = '10대 핵심산업 + 5대 핵심서비스';

MERGE (n:Technology {id: '추진방향'})
SET     n.name = '추진방향',
    n.name_kr = '추진방향',
    n.domain = 'NW',
    n.definition = '5G+ 전략산업 집중 지원체계 구축';

MERGE (n:Concept {id: '민․관_협력_기반_전‧후방_산업_동반성장_모델_구축'})
SET     n.name = '민․관 협력 기반 전‧후방 산업 동반성장 모델 구축',
    n.name_kr = '민․관 협력 기반 전‧후방 산업 동반성장 모델 구축',
    n.domain = 'NW',
    n.definition = '민.관협력을 통해, ‘인프라 조기 구축’ → ‘새로운 서비스 및 디바이스 도입 확산’ → ‘시장 활성화’의 선순환 산업 생태계 조성';

MERGE (n:Technology {id: '5g_서비스_활성화를_위한_안전한_이용환경_조성'})
SET     n.name = '5G 서비스 활성화를 위한 안전한 이용환경 조성',
    n.name_kr = '5G 서비스 활성화를 위한 안전한 이용환경 조성',
    n.domain = 'NW',
    n.definition = '5G 기반 초연결 환경에서 가장 안전한 5G 이용환경 구축을 위해 사이버보안 위협, 통신재난에 대한 예방·대응체계 강화';

// --- 관계 ---

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Technology {id: '비전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Concept {id: '수출증대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Concept {id: '이용자보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Concept {id: '고용창출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Concept {id: '전략산업육성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Technology {id: '추진방향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Concept {id: '민․관_협력_기반_전‧후방_산업_동반성장_모델_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Technology {id: '5g_서비스_활성화를_위한_안전한_이용환경_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Document {id: 'NW_167'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: '5g+_전략'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '비전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수출증대'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용자보호'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고용창출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략산업육성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '추진방향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민․관_협력_기반_전‧후방_산업_동반성장_모델_구축'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g_서비스_활성화를_위한_안전한_이용환경_조성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_168.1: 6G
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_168.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '6g'})
SET     n.name = '6G',
    n.name_kr = '6G',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '100gbps'})
SET     n.name = '100Gbps',
    n.name_kr = '100Gbps',
    n.domain = 'NW';

MERGE (n:Concept {id: 'thz_대역'})
SET     n.name = 'THz 대역',
    n.name_kr = 'THz 대역',
    n.domain = 'NW';

MERGE (n:Concept {id: '수중통신'})
SET     n.name = '수중통신',
    n.name_kr = '수중통신',
    n.domain = 'NW';

MERGE (n:Concept {id: '분야'})
SET     n.name = '분야',
    n.name_kr = '분야',
    n.domain = 'NW';

MERGE (n:Concept {id: '과제'})
SET     n.name = '과제',
    n.name_kr = '과제',
    n.domain = 'NW';

MERGE (n:Concept {id: '한국'})
SET     n.name = '한국',
    n.name_kr = '한국',
    n.domain = 'NW',
    n.definition = '2028~2030년 상용화를 목표로 2단계 국가 R&D실행 - 삼성전자, LG전자, KT, SKT 등 주요 DJQ쳬뜰이 6G 연구센터를 설립, 협업강화';

MERGE (n:Concept {id: '미국'})
SET     n.name = '미국',
    n.name_kr = '미국',
    n.domain = 'NW',
    n.definition = '연방통신위원회(FCC) 2019년 3월 6G, 7G용도로 95GHz~3THz 대역을 연구용으로 개방 - DARPA주도 6G기술과 인프라 조성 및 민간 중심 넥스트 G 얼라이언스 출범';

MERGE (n:Concept {id: '유럽'})
SET     n.name = '유럽',
    n.name_kr = '유럽',
    n.domain = 'NW',
    n.definition = '유럽연합 집행위원회 (EC), 포괄적인 산업전략을 위한 기본 구상에 6G 관련 내용 포함 - 2030년 6G생태계 조성을 목표로 6G 플래그십 프로젝트 추진 - 핀란드 오울루대 등 민간 연구기관 연구 활발, 주도권 확보 선포';

MERGE (n:Technology {id: '일본'})
SET     n.name = '일본',
    n.name_kr = '일본',
    n.domain = 'NW',
    n.definition = '민관 연구회 발족 후 ‘비욘드 5G 추진전략발표’ - 글로벌퍼스트, 혁신을 창출하는 에코시스템 구축, 자원의 집중투자 등 3대 전략 목표 수립 - 국가 종합경제 대책에 5G의 다음 세대에 해당하는 ‘포스트 5G’ 지원방안을 포함';

MERGE (n:Technology {id: '중국'})
SET     n.name = '중국',
    n.name_kr = '중국',
    n.domain = 'NW',
    n.definition = '중국 공업 정보화부 IMT-2020(5G) 추진팀에서 2020년부터 6G 본격개발 착수 - 2019년 국가 6G 기술 연구개발 추진팀 출범하여 국가주도 6G 연구개발 본격화 - 2030년 상용화를 목표로 화훼이 등은 국/내외 6G 개발 연구소 설립';

MERGE (n:Concept {id: '시사점'})
SET     n.name = '시사점',
    n.name_kr = '시사점',
    n.domain = 'NW',
    n.definition = '6G 최고 기술력 확보';

MERGE (n:Concept {id: '국제표준_선점'})
SET     n.name = '국제표준 선점',
    n.name_kr = '국제표준 선점',
    n.domain = 'NW',
    n.definition = '해외 주요국은 ‘21년부터 시작되는 6G 표준일정 (’30년 경 상용화 예상)에 맞추어 표준 후보기술 개발을 추진 중으로';

MERGE (n:Technology {id: '조기안착_기반마련'})
SET     n.name = '조기안착 기반마련',
    n.name_kr = '조기안착 기반마련',
    n.domain = 'NW',
    n.definition = '5G 상용화 초기 겪었던 이용자 체감성능 저하와 B2B 융합서비스 확산 저조를 6G에서는 극복할 필요';

MERGE (n:Technology {id: '강소기업․고급인력_양성'})
SET     n.name = '강소기업․고급인력 양성',
    n.name_kr = '강소기업․고급인력 양성',
    n.domain = 'NW',
    n.definition = '6G에는 국내 5G 강소기업이 6G 소부장 핵심기술을 효과적으로 확보할 수 있도록 조기에 지원하고, 6G 융합 R&D 전문인력을 양성하여 튼튼한 산업 성장 토양을 조성';

MERGE (n:Concept {id: '산업경제'})
SET     n.name = '산업경제',
    n.name_kr = '산업경제',
    n.domain = 'NW',
    n.definition = '소재부품 장비산업 주도권 확보 - 보안산업활성화 및 신 융합서비스 발굴 - 중소기업의 경제 주역화 및 해외시장 진출 도모';

MERGE (n:Concept {id: '사회문화'})
SET     n.name = '사회문화',
    n.name_kr = '사회문화',
    n.domain = 'NW',
    n.definition = '중소기업 동반성장 및 산업생태계 변화 - 선순환적 경제성 구조 정착 및 중소기업의 R&D 생산성 향상 - 기술개발주체 간 수평적 관계로 변화';

MERGE (n:Concept {id: '주요_특징'})
SET     n.name = '주요 특징',
    n.name_kr = '주요 특징',
    n.domain = 'NW';

MERGE (n:Concept {id: '주요_특징_설명'})
SET     n.name = '주요 특징 설명',
    n.name_kr = '주요 특징 설명',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '100gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: 'thz_대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '수중통신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분야'})
MERGE (b:Concept {id: '과제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '과제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '한국'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '미국'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '유럽'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Technology {id: '일본'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Technology {id: '중국'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '시사점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '국제표준_선점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Technology {id: '조기안착_기반마련'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Technology {id: '강소기업․고급인력_양성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '산업경제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '사회문화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '주요_특징'})
MERGE (b:Concept {id: '주요_특징_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '주요_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Concept {id: '주요_특징_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Document {id: 'NW_168.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '6g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '100gbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'thz_대역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수중통신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분야'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유럽'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '일본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '중국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시사점'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국제표준_선점'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '조기안착_기반마련'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '강소기업․고급인력_양성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업경제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회문화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_특징'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_특징_설명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_168.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_168.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_169: Mobile Edge Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_169'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'mobile_edge_computing'})
SET     n.name = 'Mobile Edge Computing',
    n.name_kr = 'Mobile Edge Computing',
    n.domain = 'NW',
    n.aliases = ['Mobile Edge Computing'];

MERGE (n:Technology {id: 'imt_2020'})
SET     n.name = 'IMT-2020',
    n.name_kr = '5G',
    n.domain = 'NW',
    n.aliases = ['IMT-2020', '5G'];

MERGE (n:Concept {id: '비용_절감'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'NW',
    n.definition = '데이터의 소스 가까이서 데이터를 분석/처리하여 엣지와 클라우드 간 데이터 전송을 줄임으로써 이상적인 솔루션으로 대두';

MERGE (n:Concept {id: '스마트_애플리케이션의_증가'})
SET     n.name = '스마트 애플리케이션의 증가',
    n.name_kr = '스마트 애플리케이션의 증가',
    n.domain = 'NW',
    n.definition = '대량의 데이터가 생성/저장/분석/처리 되어야 하는데, 엣지 컴퓨팅은 시간에 민감한 IoT 애플리케이션의 요구 사항을 충족하기 위해 엣지에서 데이터를 처리하는 등 요구 사항을 충족시키기에 적합';

MERGE (n:Concept {id: '보안_및_개인정보_보호'})
SET     n.name = '보안 및 개인정보 보호',
    n.name_kr = '보안 및 개인정보 보호',
    n.domain = 'NW',
    n.definition = '데이터 소스에 가까운 엣지(Edge) 단에서 데이터를 처리함으로써 데이터센터와 센서 간 데이터 교환을 줄여 보안 위험을 차단';

MERGE (n:Concept {id: '데이터_해킹에_대한_문제'})
SET     n.name = '데이터 해킹에 대한 문제',
    n.name_kr = '데이터 해킹에 대한 문제',
    n.domain = 'NW',
    n.definition = '엣지 컴퓨팅에 사용에 필요한 사물인터넷(IoT), 네트워크 연결장치 및 내장 컴퓨터가 추가 됨에 따라 여러 장치를 통해 악의적인 공격 및 해커가 침투하여 중요한 데이터를 액세스 할 수 있는 방법이 증가';

MERGE (n:Concept {id: '대량화에_대한_문제'})
SET     n.name = '대량화에 대한 문제',
    n.name_kr = '대량화에 대한 문제',
    n.domain = 'NW',
    n.definition = '규모가 큰 엣지 컴퓨팅은 더 많은 로컬 하드웨어가 필요';

MERGE (n:Concept {id: 'mec호스팅인프라'})
SET     n.name = 'MEC호스팅인프라',
    n.name_kr = 'MEC호스팅인프라',
    n.domain = 'NW',
    n.definition = '하드웨어 자원';

MERGE (n:Concept {id: '가상화_레이어'})
SET     n.name = '가상화 레이어',
    n.name_kr = '가상화 레이어',
    n.domain = 'NW',
    n.definition = '하드웨어 자원의 가상화를 통하여 플랫폼상 호스트 되는 Application에게 추상화 제공';

MERGE (n:Concept {id: 'mec응용플랫폼'})
SET     n.name = 'MEC응용플랫폼',
    n.name_kr = 'MEC응용플랫폼',
    n.domain = 'NW',
    n.definition = '가상화 관리자';

MERGE (n:Concept {id: '응용플랫폼_서비스'})
SET     n.name = '응용플랫폼 서비스',
    n.name_kr = '응용플랫폼 서비스',
    n.domain = 'NW',
    n.definition = '미들웨어 서비스들과 인프라 서비스 제공, MEC 서버내 서비스 들을 연결하는 의사소통 서비스';

MERGE (n:Concept {id: 'mec응용'})
SET     n.name = 'MEC응용',
    n.name_kr = 'MEC응용',
    n.domain = 'NW',
    n.definition = 'MEC 응용 서비스';

MERGE (n:Concept {id: '데이터_입력_처리'})
SET     n.name = '데이터 입력 처리',
    n.name_kr = '데이터 입력 처리',
    n.domain = 'NW',
    n.definition = 'Rest 사용';

MERGE (n:Concept {id: 'api_제공'})
SET     n.name = 'API 제공',
    n.name_kr = 'API 제공',
    n.domain = 'NW',
    n.definition = 'MEC 제공하는 외부 기능';

MERGE (n:Concept {id: 'mec_핵심_컴포넌트'})
SET     n.name = 'MEC 핵심 컴포넌트',
    n.name_kr = 'MEC 핵심 컴포넌트',
    n.domain = 'NW',
    n.definition = '데이터 Caching';

MERGE (n:Technology {id: '영상인식'})
SET     n.name = '영상인식',
    n.name_kr = '영상인식',
    n.domain = 'NW',
    n.definition = '5G 저지연 기술 활용 극대화';

MERGE (n:Concept {id: '빅데이터_분석'})
SET     n.name = '빅데이터 분석',
    n.name_kr = '빅데이터 분석',
    n.domain = 'NW',
    n.definition = '데이터 분석의 효율성 향상';

MERGE (n:Concept {id: 'ai_computing'})
SET     n.name = 'AI Computing',
    n.name_kr = 'AI Computing',
    n.domain = 'NW',
    n.definition = '고속네트워크 기반 연산처리 제공',
    n.aliases = ['AI Computing'];

MERGE (n:Concept {id: 'virtual_infra'})
SET     n.name = 'Virtual Infra',
    n.name_kr = 'Virtual Infra',
    n.domain = 'NW',
    n.definition = 'Virtualization Infrastructure Manager',
    n.aliases = ['Virtual Infra'];

MERGE (n:Concept {id: 'mec_host'})
SET     n.name = 'MEC Host',
    n.name_kr = 'MEC Host',
    n.domain = 'NW',
    n.definition = 'MEC Application',
    n.aliases = ['MEC Host'];

MERGE (n:Concept {id: 'mec_platform_manager'})
SET     n.name = 'MEC Platform Manager',
    n.name_kr = 'MEC Platform Manager',
    n.domain = 'NW',
    n.definition = 'MEC App Lifecycle Mgmt.',
    n.aliases = ['MEC Platform Manager'];

MERGE (n:Concept {id: 'multi_access'})
SET     n.name = 'Multi-access',
    n.name_kr = 'Multi-access',
    n.domain = 'NW',
    n.definition = 'Multi-access Edge Orchestrator',
    n.aliases = ['Multi-access'];

MERGE (n:Concept {id: 'h/w_기술'})
SET     n.name = 'H/W 기술',
    n.name_kr = 'H/W 기술',
    n.domain = 'NW',
    n.definition = '클라우드 및 가상화 기술';

MERGE (n:Concept {id: '대용량_표준_서버_기술'})
SET     n.name = '대용량 표준 서버 기술',
    n.name_kr = '대용량 표준 서버 기술',
    n.domain = 'NW',
    n.definition = '10 ~ 40Gbps 이상 제공 장비 통한 대용량 처리 필요';

MERGE (n:Concept {id: 'echo_system'})
SET     n.name = 'Echo System',
    n.name_kr = 'Echo System',
    n.domain = 'NW',
    n.definition = '개방형 표준 및 API',
    n.aliases = ['Echo System'];

MERGE (n:Concept {id: '프로그래밍_모델_및_도구'})
SET     n.name = '프로그래밍 모델 및 도구',
    n.name_kr = '프로그래밍 모델 및 도구',
    n.domain = 'NW',
    n.definition = '생태계 조성을 위한 지원 프로그래밍 모델 및 도구 필요';

MERGE (n:Concept {id: '비대면_서비스'})
SET     n.name = '비대면 서비스',
    n.name_kr = '비대면 서비스',
    n.domain = 'NW',
    n.definition = '비대면 학습';

MERGE (n:Concept {id: '비대면_의료'})
SET     n.name = '비대면 의료',
    n.name_kr = '비대면 의료',
    n.domain = 'NW',
    n.definition = 'MEC 를 통한 취약지역 의료정보 실시간 분석 및 예방 등 비대면 공공의료 제공';

MERGE (n:Concept {id: '비대면_방역'})
SET     n.name = '비대면 방역',
    n.name_kr = '비대면 방역',
    n.domain = 'NW',
    n.definition = 'MEC 를 통해 CCTV 영상을 실시간 분석하여 방역 관련 특이사항 통보 및 대응';

MERGE (n:Concept {id: '비대면_안전'})
SET     n.name = '비대면 안전',
    n.name_kr = '비대면 안전',
    n.domain = 'NW',
    n.definition = 'CCTV 및 로봇 영상을 MEC 에서 실시간 분석, 처리하여 위험시설물 안전/방범 등 제공';

MERGE (n:Technology {id: '비대면_제어'})
SET     n.name = '비대면 제어',
    n.name_kr = '비대면 제어',
    n.domain = 'NW',
    n.definition = 'MEC 와 5G 로봇으로 산업·재난현장 등을 원격으로 안전하게 통제/제어';

MERGE (n:Concept {id: '산업_발전_서비스'})
SET     n.name = '산업 발전 서비스',
    n.name_kr = '산업 발전 서비스',
    n.domain = 'NW',
    n.definition = '초저지연 교통';

MERGE (n:Technology {id: '초저지연_물류'})
SET     n.name = '초저지연 물류',
    n.name_kr = '초저지연 물류',
    n.domain = 'NW',
    n.definition = '유통, 농림·축산 창고 등을 MEC 와 5G 로봇으로 안전하고 지연없이 통제·제어';

MERGE (n:Concept {id: '주요_특징'})
SET     n.name = '주요 특징',
    n.name_kr = '주요 특징',
    n.domain = 'NW';

MERGE (n:Concept {id: '주요_사례'})
SET     n.name = '주요 사례',
    n.name_kr = '주요 사례',
    n.domain = 'NW';

MERGE (n:Concept {id: '보안_대책'})
SET     n.name = '보안 대책',
    n.name_kr = '보안 대책',
    n.domain = 'NW';

MERGE (n:Concept {id: '보안_기능'})
SET     n.name = '보안 기능',
    n.name_kr = '보안 기능',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '비용_절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '스마트_애플리케이션의_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '보안_및_개인정보_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '데이터_해킹에_대한_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '대량화에_대한_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec호스팅인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '가상화_레이어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec응용플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '응용플랫폼_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec응용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '데이터_입력_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'api_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec_핵심_컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Technology {id: '영상인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '빅데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'ai_computing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'virtual_infra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec_host'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'mec_platform_manager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'multi_access'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'h/w_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '대용량_표준_서버_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: 'echo_system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '프로그래밍_모델_및_도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '비대면_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '비대면_의료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '비대면_방역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '비대면_안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Technology {id: '비대면_제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '산업_발전_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Technology {id: '초저지연_물류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요_특징'})
MERGE (b:Concept {id: '주요_사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '주요_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '주요_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요_특징'})
MERGE (b:Concept {id: '주요_사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '주요_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '주요_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '보안_대책'})
MERGE (b:Concept {id: '보안_기능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '보안_대책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Concept {id: '보안_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Document {id: 'NW_169'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mobile_edge_computing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_절감'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_애플리케이션의_증가'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_및_개인정보_보호'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_해킹에_대한_문제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대량화에_대한_문제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec호스팅인프라'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화_레이어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec응용플랫폼'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용플랫폼_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec응용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_입력_처리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_제공'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec_핵심_컴포넌트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '영상인식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_분석'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_computing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_infra'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec_host'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec_platform_manager'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_access'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h/w_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대용량_표준_서버_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'echo_system'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그래밍_모델_및_도구'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_의료'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_방역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_안전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '비대면_제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업_발전_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '초저지연_물류'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_특징'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_사례'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_대책'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_기능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_170.1: Network Slicing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_170.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network_slicing'})
SET     n.name = 'Network Slicing',
    n.name_kr = 'Network Slicing',
    n.domain = 'NW',
    n.aliases = ['Network Slicing'];

MERGE (n:Technology {id: 'imt_2020'})
SET     n.name = 'IMT-2020',
    n.name_kr = '5G',
    n.domain = 'NW',
    n.aliases = ['IMT-2020', '5G'];

MERGE (n:Concept {id: 'nfvi'})
SET     n.name = 'NFVI',
    n.name_kr = 'NFVI',
    n.domain = 'NW',
    n.aliases = ['NFVI'];

MERGE (n:Concept {id: 'nfvs'})
SET     n.name = 'NFVs',
    n.name_kr = 'NFVs',
    n.domain = 'NW',
    n.aliases = ['NFVs'];

MERGE (n:Concept {id: 'mano'})
SET     n.name = 'MANO',
    n.name_kr = 'MANO',
    n.domain = 'NW',
    n.aliases = ['MANO'];

MERGE (n:Concept {id: 'e2e_networking'})
SET     n.name = 'E2E Networking',
    n.name_kr = 'E2E Networking',
    n.domain = 'NW',
    n.aliases = ['E2E Networking'];

// --- 관계 ---

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Concept {id: 'nfvi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Concept {id: 'nfvs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Concept {id: 'mano'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Concept {id: 'e2e_networking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Document {id: 'NW_170.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network_slicing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfvi'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfvs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mano'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e2e_networking'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_170.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_170.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_170.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_170.3'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_170.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_170.4'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_171: NR/NR-MIMO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_171'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'nr_nr_mimo'})
SET     n.name = 'NR/NR-MIMO',
    n.name_kr = 'NR/NR-MIMO',
    n.domain = 'NW',
    n.aliases = ['NR/NR-MIMO'];

MERGE (n:Technology {id: 'imt_2020'})
SET     n.name = 'IMT-2020',
    n.name_kr = '5G',
    n.domain = 'NW',
    n.aliases = ['IMT-2020', '5G'];

// --- 관계 ---

MERGE (a:Concept {id: 'nr_nr_mimo'})
MERGE (b:Technology {id: 'imt_2020'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'nr_nr_mimo'})
MERGE (b:Document {id: 'NW_171'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'nr_nr_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'imt_2020'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_172: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_172'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_173.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_173.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_173.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_173.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_174: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_174'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_175: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_175'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_177: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_177'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_178: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_178'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_179: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_179'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_180: NFV
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_180'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'nfv'})
SET     n.name = 'NFV',
    n.name_kr = 'NFV',
    n.domain = 'NW',
    n.aliases = ['NFV'];

MERGE (n:Concept {id: 'sdx'})
SET     n.name = 'SDx',
    n.name_kr = 'SDx',
    n.domain = 'NW',
    n.aliases = ['SDx'];

MERGE (n:Concept {id: 'oss'})
SET     n.name = 'OSS',
    n.name_kr = 'OSS',
    n.domain = 'NW',
    n.aliases = ['OSS'];

MERGE (n:Concept {id: 'bss'})
SET     n.name = 'BSS',
    n.name_kr = 'BSS',
    n.domain = 'NW',
    n.aliases = ['BSS'];

MERGE (n:Concept {id: 'vnf'})
SET     n.name = 'VNF',
    n.name_kr = 'VNF',
    n.domain = 'NW',
    n.aliases = ['VNF'];

MERGE (n:Concept {id: 'nfvi(스토리지'})
SET     n.name = 'NFVI(스토리지',
    n.name_kr = 'NFVI(스토리지',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크)'})
SET     n.name = '네트워크)',
    n.name_kr = '네트워크)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'operations'})
SET     n.name = 'Operations',
    n.name_kr = 'Operations',
    n.domain = 'NW',
    n.definition = 'OSS',
    n.aliases = ['Operations'];

MERGE (n:Concept {id: 'applications_&_service'})
SET     n.name = 'Applications & Service',
    n.name_kr = 'Applications & Service',
    n.domain = 'NW',
    n.definition = 'VNF';

MERGE (n:Concept {id: 'ems'})
SET     n.name = 'EMS',
    n.name_kr = 'EMS',
    n.domain = 'NW',
    n.definition = 'Element Management System - VNF에 대해 FCAPS(Fault, Configuration, Accounting, Performance, Security) 기능 수행, 관리 시스템',
    n.aliases = ['EMS'];

MERGE (n:Concept {id: 'infrastructure'})
SET     n.name = 'Infrastructure',
    n.name_kr = 'Infrastructure',
    n.domain = 'NW',
    n.definition = 'NFVI',
    n.aliases = ['Infrastructure'];

MERGE (n:Technology {id: 'nfv_mano'})
SET     n.name = 'NFV-MANO',
    n.name_kr = 'Management & Orchestration',
    n.domain = 'NW',
    n.definition = 'Virtualized Infrastructure Manager',
    n.aliases = ['NFV-MANO', 'Management & Orchestration'];

MERGE (n:Concept {id: 'orchestrator'})
SET     n.name = 'Orchestrator',
    n.name_kr = 'Orchestrator',
    n.domain = 'NW',
    n.definition = '멀티 NFVI 환경에서 전체적인 네트워크 오케스트레이션 및 관리기능 수행',
    n.aliases = ['Orchestrator'];

MERGE (n:Concept {id: 'vnf_관리자'})
SET     n.name = 'VNF 관리자',
    n.name_kr = 'VNF 관리자',
    n.domain = 'NW',
    n.definition = 'VNF 들의 라이프 싸이클 관리기능 수행';

MERGE (n:Technology {id: 'sdn'})
SET     n.name = 'SDN',
    n.name_kr = 'SDN',
    n.domain = 'NW',
    n.aliases = ['SDN'];

// --- 관계 ---

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'sdx'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'oss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'bss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'vnf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'nfvi(스토리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: '네트워크)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'operations'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'applications_&_service'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'ems'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'infrastructure'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Technology {id: 'nfv_mano'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'orchestrator'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Concept {id: 'vnf_관리자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'sdn'})
MERGE (b:Technology {id: 'nfv'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Technology {id: 'sdn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Document {id: 'NW_180'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'nfv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vnf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nfvi(스토리지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operations'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'applications_&_service'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ems'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infrastructure'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'nfv_mano'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'orchestrator'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vnf_관리자'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sdn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_181: OPNFV(Open Platform for Network Functions Virtualization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_181'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'open_platform_for_network_functions_virtualization'})
SET     n.name = 'Open Platform for Network Functions Virtualization',
    n.name_kr = 'OPNFV',
    n.domain = 'NW',
    n.aliases = ['Open Platform for Network Functions Virtualization', 'OPNFV'];

MERGE (n:Concept {id: 'sdx'})
SET     n.name = 'SDx',
    n.name_kr = 'SDx',
    n.domain = 'NW',
    n.aliases = ['SDx'];

MERGE (n:Concept {id: 'opnfv'})
SET     n.name = 'OPNFV',
    n.name_kr = 'OPNFV',
    n.domain = 'NW',
    n.aliases = ['OPNFV'];

MERGE (n:Concept {id: '인프라'})
SET     n.name = '인프라',
    n.name_kr = '인프라',
    n.domain = 'NW',
    n.definition = 'NFVI';

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'NW',
    n.definition = 'VIM';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'NW',
    n.definition = 'Vl-Ha 인터페이스';

MERGE (n:Concept {id: 'vn-nf_인터페이스'})
SET     n.name = 'Vn-Nf 인터페이스',
    n.name_kr = 'Vn-Nf 인터페이스',
    n.domain = 'NW',
    n.definition = '응용 애플리케이션이 가상 인프라를 실행하기위한 Vn-Nf 인터페이스 - 응용 프로그램에 대한 OPNFV의 첫 번째 인터페이스로서, 호스트 기능과 플랫폼에서 실행되는 소프트웨어에 대한 통합된 인터페이스를 제공';

MERGE (n:Concept {id: 'nf-vi_인터페이스'})
SET     n.name = 'Nf-Vi 인터페이스',
    n.name_kr = 'Nf-Vi 인터페이스',
    n.domain = 'NW',
    n.definition = '가상 인프라스트럭처와 VIM 간의 인터페이스로 시스템 운영 및 유지 보수를 포함하는 중요 기능을 활성화하기 위하여 활용';

MERGE (n:Concept {id: 'or-vi_및_vi-vnfm_인터페이스'})
SET     n.name = 'Or-Vi 및 Vi-Vnfm 인터페이스',
    n.name_kr = 'Or-Vi 및 Vi-Vnfm 인터페이스',
    n.domain = 'NW',
    n.definition = '가상 인프라 관리자와 상호 작용하는 애플리케이션관리 시스템 및 편성 시스템의 기능을 제공하는 인터페이스 - 가상 시스템의 동작 및 상태에 대한 가시성(visibility)을 제공';

// --- 관계 ---

MERGE (a:Concept {id: 'opnfv'})
MERGE (b:Concept {id: 'sdx'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: '인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: 'vn-nf_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: 'nf-vi_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Concept {id: 'or-vi_및_vi-vnfm_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Document {id: 'NW_181'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_platform_for_network_functions_virtualization'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opnfv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vn-nf_인터페이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nf-vi_인터페이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'or-vi_및_vi-vnfm_인터페이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_182: SDE(Software Defined Everything)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_182'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'software_defined_everything'})
SET     n.name = 'Software Defined Everything',
    n.name_kr = 'SDE',
    n.domain = 'NW',
    n.aliases = ['Software Defined Everything', 'SDE'];

MERGE (n:Concept {id: 'sdx'})
SET     n.name = 'SDx',
    n.name_kr = 'SDx',
    n.domain = 'NW',
    n.aliases = ['SDx'];

MERGE (n:Concept {id: 'sde'})
SET     n.name = 'SDE',
    n.name_kr = 'SDE',
    n.domain = 'NW',
    n.aliases = ['SDE'];

MERGE (n:Technology {id: 'sdn'})
SET     n.name = 'SDN',
    n.name_kr = 'SDN',
    n.domain = 'NW',
    n.aliases = ['SDN'];

MERGE (n:Concept {id: 'sds'})
SET     n.name = 'SDS',
    n.name_kr = 'SDS',
    n.domain = 'NW',
    n.aliases = ['SDS'];

MERGE (n:Concept {id: 'sddc'})
SET     n.name = 'SDDC',
    n.name_kr = 'SDDC',
    n.domain = 'NW',
    n.aliases = ['SDDC'];

MERGE (n:Concept {id: 'vdc'})
SET     n.name = 'VDC',
    n.name_kr = 'VDC',
    n.domain = 'NW',
    n.aliases = ['VDC'];

MERGE (n:Concept {id: 'is'})
SET     n.name = 'IS',
    n.name_kr = 'IS',
    n.domain = 'NW',
    n.aliases = ['IS'];

MERGE (n:Concept {id: 'open_stack'})
SET     n.name = 'Open Stack',
    n.name_kr = 'Open Stack',
    n.domain = 'NW',
    n.aliases = ['Open Stack'];

MERGE (n:Concept {id: 'flex_fabric'})
SET     n.name = 'Flex Fabric',
    n.name_kr = 'Flex Fabric',
    n.domain = 'NW',
    n.aliases = ['Flex Fabric'];

MERGE (n:Concept {id: 'nw_convergence'})
SET     n.name = 'NW Convergence',
    n.name_kr = 'NW Convergence',
    n.domain = 'NW',
    n.aliases = ['NW Convergence'];

MERGE (n:Concept {id: 'prototyping_engine'})
SET     n.name = 'Prototyping Engine',
    n.name_kr = 'Prototyping Engine',
    n.domain = 'NW',
    n.aliases = ['Prototyping Engine'];

MERGE (n:Concept {id: '성능개선'})
SET     n.name = '성능개선',
    n.name_kr = '성능개선',
    n.domain = 'NW',
    n.definition = '전체 IT 성능 속도와 효율성 증대';

MERGE (n:Concept {id: '수익창출'})
SET     n.name = '수익창출',
    n.name_kr = '수익창출',
    n.domain = 'NW',
    n.definition = '소프트웨어 구성요소를 극대화, 소프트웨어 서비스의 속도와 효율성으로 수익';

MERGE (n:Concept {id: 'network_convergence'})
SET     n.name = 'Network Convergence',
    n.name_kr = '네트워크 융합',
    n.domain = 'NW',
    n.definition = 'SDE는 네트워크나 데이터 센터, 애플리케이션 전달 네트워크 등 하드웨어 구성 요소를 완전히 대체할 수 있는 기술로 비쳐짐 네트워크 융합 기술들의 혁신은 어떤 하드웨어 구성요소와도 융합을 가능케 해, 오직 소프트웨어만으로 완벽하게 구성할 수 있도록 도와줌',
    n.aliases = ['Network Convergence', '네트워크 융합'];

MERGE (n:Concept {id: '애플리케이션_프로그래밍_인터페이스_소프트웨어'})
SET     n.name = '애플리케이션 프로그래밍 인터페이스 소프트웨어',
    n.name_kr = '애플리케이션 프로그래밍 인터페이스 소프트웨어',
    n.domain = 'NW',
    n.definition = 'SDE 솔루션에서는 모든 비즈니스와 구성, 보안, 네트워크 애플리케이션이 관리되어야 하고 수익이 창출되어야 함 SDE는 비교적 신생 분야에 속하기 때문에 소프트웨어 정의 환경을 지원할 수 있는 애플리케이션 관리 솔루션이 부족함';

MERGE (n:Concept {id: '기존_인프라와의_호환성'})
SET     n.name = '기존 인프라와의 호환성',
    n.name_kr = '기존 인프라와의 호환성',
    n.domain = 'NW',
    n.definition = '소프트웨어 정의 구성요소들의 투입이 용이하도록 기존의 인프라를 늘리기 위해서는 기관들의 상당한 투자가 필요함 소프트웨어 정의 솔루션과 인프라간의 상호 운용성에 대한 업계 관심이 높음';

MERGE (n:Concept {id: '보안_문제'})
SET     n.name = '보안 문제',
    n.name_kr = '보안 문제',
    n.domain = 'NW',
    n.definition = 'SDE 환경은 실사용자들에게 네트워크 방화벽과 같은 자신만의 제품을 구축할 수 있는 권한을 부여함. 반대로소프트웨어 정의 접근방식은 공격자들이 침입할 수 있는 여지가 많음';

MERGE (n:Concept {id: '표준화'})
SET     n.name = '표준화',
    n.name_kr = '표준화',
    n.domain = 'NW',
    n.definition = '애플리케이션들이 더욱 더 진화함에 따라, SDE는 역시도 계속 진화하고 있고 알아가고 있는 단계임 SDE 시스템 표준화가 필요함. 그래야만 정보 위반의 우려가 적어지고 신뢰가 생김';

MERGE (n:Concept {id: '책임'})
SET     n.name = '책임',
    n.name_kr = '책임',
    n.domain = 'NW',
    n.definition = 'SDE의 복잡한 성질로 인해 네트워크 오류 및 임시 중단을 대비해 소프트웨어 및 하드웨어 문제를 전문으로 다루는다양한 전문가들이 필요할 수 있음. 이는 소프트웨어와 하드웨어간의 서로 밀접하게 연결되어 있기 때문임';

// --- 관계 ---

MERGE (a:Concept {id: 'sde'})
MERGE (b:Concept {id: 'sdx'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Technology {id: 'sdn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'sds'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'sddc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'vdc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'is'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'open_stack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'flex_fabric'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'nw_convergence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'prototyping_engine'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '성능개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '수익창출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: 'network_convergence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '애플리케이션_프로그래밍_인터페이스_소프트웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '기존_인프라와의_호환성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '보안_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Concept {id: '책임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Document {id: 'NW_182'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'software_defined_everything'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sde'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sdn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sds'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'is'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_stack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flex_fabric'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw_convergence'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prototyping_engine'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능개선'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익창출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_convergence'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션_프로그래밍_인터페이스_소프트웨어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_인프라와의_호환성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_문제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '책임'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_183: SDDC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_183'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'sddc'})
SET     n.name = 'SDDC',
    n.name_kr = 'SDDC',
    n.domain = 'NW',
    n.aliases = ['SDDC'];

MERGE (n:Concept {id: 'sdx'})
SET     n.name = 'SDx',
    n.name_kr = 'SDx',
    n.domain = 'NW',
    n.aliases = ['SDx'];

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'NW',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: 'memory_같은_계산을_위한_영역'})
SET     n.name = 'Memory 같은 계산을 위한 영역',
    n.name_kr = 'Memory 같은 계산을 위한 영역',
    n.domain = 'NW';

MERGE (n:Concept {id: 'storage'})
SET     n.name = 'Storage',
    n.name_kr = 'Storage',
    n.domain = 'NW',
    n.aliases = ['Storage'];

MERGE (n:Concept {id: 'nw'})
SET     n.name = 'NW',
    n.name_kr = 'NW',
    n.domain = 'NW',
    n.aliases = ['NW'];

MERGE (n:Concept {id: 'facility_부분'})
SET     n.name = 'Facility 부분',
    n.name_kr = 'Facility 부분',
    n.domain = 'NW';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'NW';

MERGE (n:Technology {id: 'sdn'})
SET     n.name = 'SDN',
    n.name_kr = 'SDN',
    n.domain = 'NW',
    n.aliases = ['SDN'];

MERGE (n:Concept {id: 'sds'})
SET     n.name = 'SDS',
    n.name_kr = 'SDS',
    n.domain = 'NW',
    n.aliases = ['SDS'];

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'NW';

MERGE (n:Concept {id: '프로비저닝'})
SET     n.name = '프로비저닝',
    n.name_kr = '프로비저닝',
    n.domain = 'NW';

MERGE (n:Concept {id: '오케스트레이션'})
SET     n.name = '오케스트레이션',
    n.name_kr = '오케스트레이션',
    n.domain = 'NW';

MERGE (n:Concept {id: '오토스케일링'})
SET     n.name = '오토스케일링',
    n.name_kr = '오토스케일링',
    n.domain = 'NW';

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'NW';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'NW';

MERGE (n:Concept {id: '데이터_센터'})
SET     n.name = '데이터 센터',
    n.name_kr = '데이터 센터',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'sdx'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'memory_같은_계산을_위한_영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'nw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'facility_부분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Technology {id: 'sdn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: 'sds'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '프로비저닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '오케스트레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '오토스케일링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '데이터_센터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Concept {id: '데이터_센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Document {id: 'NW_183'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sddc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'memory_같은_계산을_위한_영역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'facility_부분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sdn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sds'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로비저닝'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오케스트레이션'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오토스케일링'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_센터'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_184: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_184'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_185: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_185'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_186: IX 정산소((Internet eXchange),
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_186'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'internet_exchange'})
SET     n.name = 'IX 정산소((Internet eXchange),',
    n.name_kr = 'IX 정산소((Internet eXchange),',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '표준인터넷_접속_조건'})
SET     n.name = '(주요세부) 표준인터넷 접속 조건',
    n.name_kr = '(주요세부) 표준인터넷 접속 조건',
    n.domain = 'NW';

MERGE (n:Concept {id: '산정공식'})
SET     n.name = '산정공식(트래픽 X 단가)',
    n.name_kr = '산정공식(트래픽 X 단가)',
    n.domain = 'NW';

MERGE (n:Concept {id: '망이중화'})
SET     n.name = '망이중화',
    n.name_kr = '망이중화',
    n.domain = 'NW';

MERGE (n:Concept {id: '무선통신_편입'})
SET     n.name = '무선통신 편입',
    n.name_kr = '무선통신 편입',
    n.domain = 'NW';

MERGE (n:Concept {id: '인터넷_상호접속제도'})
SET     n.name = '(핵심연관) 인터넷 상호접속제도',
    n.name_kr = '(핵심연관) 인터넷 상호접속제도',
    n.domain = 'NW';

MERGE (n:Concept {id: 'all_ip'})
SET     n.name = 'All-IP',
    n.name_kr = 'All-IP',
    n.domain = 'NW',
    n.aliases = ['All-IP'];

MERGE (n:Concept {id: 'internet_exhange'})
SET     n.name = 'Internet eXhange',
    n.name_kr = 'IX',
    n.domain = 'NW',
    n.definition = '트래픽을 완화하기 위해서 서로 다른 인터넷 서비스 제공자들(ISP) 간에 인터넷을 연동하는 서비스',
    n.aliases = ['Internet eXhange', 'IX'];

MERGE (n:Technology {id: '수집'})
SET     n.name = '수집',
    n.name_kr = '수집',
    n.domain = 'NW',
    n.definition = '연동된 IX라우터로부터 SNMP/BGP/FLOW정보 수집';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'NW',
    n.definition = '수집된 정보를 분석하여 트래픽량/트래픽유형 분석';

MERGE (n:Concept {id: '정산'})
SET     n.name = '정산',
    n.name_kr = '정산',
    n.domain = 'NW',
    n.definition = '트래픽 유형별 정산데이터와 검증정보 제공';

MERGE (n:Concept {id: '통계'})
SET     n.name = '통계',
    n.name_kr = '통계',
    n.domain = 'NW',
    n.definition = '사업자별 / AS별 / 장비별 각종 통계 데이터 생성';

MERGE (n:Concept {id: '상호접속범위_확대'})
SET     n.name = '상호접속범위 확대',
    n.name_kr = '상호접속범위 확대',
    n.domain = 'NW',
    n.definition = '이동통신사도 범주에 편입 접속이중화, 차단금지 등 의무화 적용';

MERGE (n:Concept {id: '표준_접속조건_도입'})
SET     n.name = '표준 접속조건 도입',
    n.name_kr = '표준 접속조건 도입',
    n.domain = 'NW',
    n.definition = '사업자별 등급기준에 따라 3계위를 정의 통신망규모, 가입자수, 트래픽교환비율 기준으로 계위 정함';

MERGE (n:Concept {id: '정산방식_변경'})
SET     n.name = '정산방식 변경',
    n.name_kr = '정산방식 변경',
    n.domain = 'NW',
    n.definition = '동일등급간 무정산, 상위등급에 정산 관행 철폐 -> 동일계위도 무정산에서 상호정산';

MERGE (n:Concept {id: '접속통신료_산정'})
SET     n.name = '접속통신료 산정',
    n.name_kr = '접속통신료 산정',
    n.domain = 'NW',
    n.definition = '관련자간 상호 협의 -> 데이터 트래픽 X 단가';

MERGE (n:Concept {id: '트래픽_측정'})
SET     n.name = '트래픽 측정',
    n.name_kr = '트래픽 측정',
    n.domain = 'NW',
    n.definition = '트래픽 측정시스템 도입, 정산소 운영';

// --- 관계 ---

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '표준인터넷_접속_조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '산정공식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '망이중화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '무선통신_편입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '인터넷_상호접속제도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: 'all_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: 'internet_exhange'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Technology {id: '수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '정산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '통계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '상호접속범위_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '표준_접속조건_도입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '정산방식_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '접속통신료_산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Concept {id: '트래픽_측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Document {id: 'NW_186'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'internet_exchange'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준인터넷_접속_조건'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산정공식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망이중화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선통신_편입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_상호접속제도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'all_ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internet_exhange'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '수집'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호접속범위_확대'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_접속조건_도입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정산방식_변경'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속통신료_산정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트래픽_측정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 286개
// 관계: 591개
// ================================================================