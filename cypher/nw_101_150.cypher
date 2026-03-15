// ================================================================
// NW 도메인 (NW_101 ~ NW_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_089: 토르(Tor) 네트워크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_089'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'tor'})
SET     n.name = '토르(Tor) 네트워크',
    n.name_kr = '토르(Tor) 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Concept {id: 'anonymity'})
SET     n.name = '익명성',
    n.name_kr = '익명성',
    n.domain = 'NW';

MERGE (n:Concept {id: 'onion_router'})
SET     n.name = 'Onion Router',
    n.name_kr = 'Onion Router',
    n.domain = 'NW',
    n.aliases = ['Onion Router'];

MERGE (n:Concept {id: 'onion_proxy'})
SET     n.name = 'Onion Proxy',
    n.name_kr = 'Onion Proxy',
    n.domain = 'NW',
    n.aliases = ['Onion Proxy'];

MERGE (n:Concept {id: 'circuit'})
SET     n.name = 'Circuit',
    n.name_kr = '서킷',
    n.domain = 'NW',
    n.aliases = ['Circuit', '서킷'];

MERGE (n:Concept {id: 'directory_authority'})
SET     n.name = 'Directory Authority',
    n.name_kr = 'Directory Authority',
    n.domain = 'NW',
    n.aliases = ['Directory Authority'];

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'NW',
    n.aliases = ['VPN'];

// --- 관계 ---

MERGE (a:Concept {id: '기타'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: 'anonymity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: 'onion_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: 'onion_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: 'circuit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Concept {id: 'directory_authority'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Concept {id: 'tor'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Document {id: 'NW_089'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tor'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anonymity'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onion_router'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onion_proxy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'circuit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'directory_authority'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_090: 라우팅 프로토콜
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_090'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'routing_protocol'})
SET     n.name = 'Routing Protocol',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW',
    n.aliases = ['라우팅 프로토콜'];

MERGE (n:Concept {id: 'static'})
SET     n.name = 'Static',
    n.name_kr = 'Static',
    n.domain = 'NW',
    n.aliases = ['Static'];

MERGE (n:Concept {id: 'dynamic'})
SET     n.name = 'dynamic',
    n.name_kr = 'dynamic',
    n.domain = 'NW',
    n.aliases = ['dynamic'];

MERGE (n:Technology {id: 'rip'})
SET     n.name = 'RIP',
    n.name_kr = 'RIP',
    n.domain = 'NW',
    n.aliases = ['RIP'];

MERGE (n:Concept {id: 'igrp'})
SET     n.name = 'IGRP',
    n.name_kr = 'IGRP',
    n.domain = 'NW',
    n.aliases = ['IGRP'];

MERGE (n:Technology {id: 'ospf'})
SET     n.name = 'OSPF',
    n.name_kr = 'OSPF',
    n.domain = 'NW',
    n.aliases = ['OSPF'];

MERGE (n:Technology {id: 'eigrp'})
SET     n.name = 'EIGRP',
    n.name_kr = 'EIGRP',
    n.domain = 'NW',
    n.aliases = ['EIGRP'];

MERGE (n:Concept {id: 'ibgp'})
SET     n.name = 'iBGP',
    n.name_kr = 'iBGP',
    n.domain = 'NW',
    n.definition = '동일 AS 내에서 라우팅 정보 교환을 위한 프로토콜',
    n.aliases = ['iBGP'];

MERGE (n:Concept {id: 'as'})
SET     n.name = 'AS',
    n.name_kr = 'AS',
    n.domain = 'NW',
    n.definition = '동일한 라우팅 정책으로 하나의 관리자에 의하여 운영되는 네트워크',
    n.aliases = ['AS'];

MERGE (n:Concept {id: 'protocol_message'})
SET     n.name = 'Protocol Message',
    n.name_kr = 'Protocol Message',
    n.domain = 'NW',
    n.definition = 'Open, Update, KeepAlive, Notification',
    n.aliases = ['Protocol Message'];

MERGE (n:Concept {id: '프로토콜_메시지'})
SET     n.name = '프로토콜 메시지',
    n.name_kr = '프로토콜 메시지',
    n.domain = 'NW',
    n.definition = 'Open';

MERGE (n:Concept {id: 'update'})
SET     n.name = 'Update',
    n.name_kr = 'Update',
    n.domain = 'NW',
    n.definition = '라우팅 관련 정보를 전달 - NLRI(Network Layer Reachable Information), 새로운 NW 정보 - Withdrawn Routes, 제거할 NW 정보',
    n.aliases = ['Update'];

MERGE (n:Concept {id: 'keepalive'})
SET     n.name = 'KeepAlive',
    n.name_kr = 'KeepAlive',
    n.domain = 'NW',
    n.definition = 'Open 메시지에 대한 응답 및 주기적인 Relationship 확인 - 기본 60 초 간격 수행, Hold Time 의 1/3 시간 사용',
    n.aliases = ['KeepAlive'];

MERGE (n:Concept {id: 'notification'})
SET     n.name = 'Notification',
    n.name_kr = 'Notification',
    n.domain = 'NW',
    n.definition = '오류 상태 체크 및 오류 상태 통보 - Message Header Error, Open Message Error - Update Message Error, Hold Timer Expired, Session Rease',
    n.aliases = ['Notification'];

MERGE (n:Technology {id: 'route_refresh'})
SET     n.name = 'Route-Refresh',
    n.name_kr = 'Route-Refresh',
    n.domain = 'NW',
    n.definition = 'BGP Neighbor 라우터 정보 재확인 목적',
    n.aliases = ['Route-Refresh'];

MERGE (n:Concept {id: '경로_속성'})
SET     n.name = '경로 속성',
    n.name_kr = '경로 속성',
    n.domain = 'NW',
    n.definition = 'Next-Hop';

MERGE (n:Concept {id: 'local_preference'})
SET     n.name = 'Local Preference',
    n.name_kr = 'Local Preference',
    n.domain = 'NW',
    n.definition = '외부로 나가는 경로의 우선 순위 값(기본값 100)',
    n.aliases = ['Local Preference'];

MERGE (n:Concept {id: 'as_path'})
SET     n.name = 'AS-Path',
    n.name_kr = 'AS-Path',
    n.domain = 'NW',
    n.definition = '해당 목적지 AS 도착시 경유되는 AS 번호들 - 개수가 작을수록 짧은 경로로 판단되어 선택',
    n.aliases = ['AS-Path'];

MERGE (n:Concept {id: 'med'})
SET     n.name = 'MED',
    n.name_kr = 'MED',
    n.domain = 'NW',
    n.definition = 'Multi-Exit-Discriminator - 인입 경로 다중일 경우 우선 순위 값',
    n.aliases = ['MED'];

MERGE (n:Metric {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'NW',
    n.definition = '무결성, 상호인증 불가';

MERGE (n:Concept {id: '권한'})
SET     n.name = '권한',
    n.name_kr = '권한',
    n.domain = 'NW',
    n.definition = '권한 증명 메커니즘 미비';

MERGE (n:Concept {id: '속성'})
SET     n.name = '속성',
    n.name_kr = '속성',
    n.domain = 'NW',
    n.definition = '경로 속성의 신뢰성 결여';

MERGE (n:Concept {id: '메시지'})
SET     n.name = '메시지',
    n.name_kr = '메시지',
    n.domain = 'NW',
    n.definition = '메시지 삽입';

MERGE (n:Concept {id: '공격'})
SET     n.name = '공격',
    n.name_kr = '공격',
    n.domain = 'NW',
    n.definition = 'MITM';

MERGE (n:Concept {id: '오류'})
SET     n.name = '오류',
    n.name_kr = '오류',
    n.domain = 'NW',
    n.definition = '운영자의 설정 실수';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'NW',
    n.definition = 'AS 번호 인증';

MERGE (n:Concept {id: '트래픽_기반'})
SET     n.name = '트래픽 기반',
    n.name_kr = '트래픽 기반',
    n.domain = 'NW',
    n.definition = '대역폭(Bandwidth, Capacity, Throughput)';

MERGE (n:Concept {id: 'delay'})
SET     n.name = 'Delay',
    n.name_kr = '지연',
    n.domain = 'NW',
    n.definition = '패킷 처리 지연, 대기열 지연, 전송 지연, 전파 지연',
    n.aliases = ['Delay', '지연'];

MERGE (n:Concept {id: 'jitter'})
SET     n.name = 'Jitter',
    n.name_kr = '지터',
    n.domain = 'NW',
    n.definition = '원하는 신호와 실제 신호간 발생하는 불안정한 신호 차이',
    n.aliases = ['Jitter', '지터'];

MERGE (n:Concept {id: 'queue_length'})
SET     n.name = 'Queue Length',
    n.name_kr = '큐 길이',
    n.domain = 'NW',
    n.definition = '라우터의 혼잡 상태를 나타내는 지표 - 큐가 가득 찬 경우 패킷 Drop 발생',
    n.aliases = ['Queue Length', '큐 길이'];

MERGE (n:Concept {id: '패킷손실_비율'})
SET     n.name = '패킷손실 비율',
    n.name_kr = '패킷손실 비율',
    n.domain = 'NW',
    n.definition = '패킷 전송 시, 패킷의 유실 발생 비율';

MERGE (n:Concept {id: '패킷_재정렬_비율'})
SET     n.name = '패킷 재정렬 비율',
    n.name_kr = '패킷 재정렬 비율',
    n.domain = 'NW',
    n.definition = '전송 패킷이 이전 패킷보다 먼저 도착하여 발생하는 수치';

MERGE (n:Concept {id: '무선_기반'})
SET     n.name = '무선 기반',
    n.name_kr = '무선 기반',
    n.domain = 'NW',
    n.definition = '신호 세기';

MERGE (n:Concept {id: 'medium_time_metric'})
SET     n.name = 'Medium Time Metric',
    n.name_kr = 'MTM',
    n.domain = 'NW',
    n.definition = '패킷 오버헤드, 대역폭, 패킷 사이즈로부터 도출되는 성능 수치',
    n.aliases = ['Medium Time Metric', 'MTM'];

MERGE (n:Concept {id: 'topology'})
SET     n.name = '토폴로지 (Topology) 기반',
    n.name_kr = '토폴로지 (Topology) 기반',
    n.domain = 'NW',
    n.definition = '이웃 노드 수';

MERGE (n:Concept {id: '노드에_대한_경로_수'})
SET     n.name = '노드에 대한 경로 수',
    n.name_kr = '노드에 대한 경로 수',
    n.domain = 'NW',
    n.definition = '특정 노드에 대해 도달할 수 있는 다중 경로';

MERGE (n:Concept {id: 'hop_count'})
SET     n.name = 'Hop Count',
    n.name_kr = '홉 수',
    n.domain = 'NW',
    n.definition = '데이터가 통과하는 네트워크 장치 수 - 라우터는 패킷 수신 시 TTL(Time to Live)을 1 감소시킨 후 다음 라우터로 전달',
    n.aliases = ['Hop Count', '홉 수'];

MERGE (n:Concept {id: 'mobility'})
SET     n.name = '이동성(Mobility) 기반',
    n.name_kr = '이동성(Mobility) 기반',
    n.domain = 'NW',
    n.definition = '지리적 거리';

MERGE (n:Concept {id: '노드의_이동_속도'})
SET     n.name = '노드의 이동 속도',
    n.name_kr = '노드의 이동 속도',
    n.domain = 'NW',
    n.definition = '노드가 빠르게 움직일수록 연결이 끊어질 확률 증가';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW',
    n.definition = 'MTU(Maximum Transmission Unit)';

MERGE (n:Concept {id: '노드의_자원'})
SET     n.name = '노드의 자원',
    n.name_kr = '노드의 자원',
    n.domain = 'NW',
    n.definition = '노드의 사용 가능한 메모리/자원/인터페이스 등';

// --- 관계 ---

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'static'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'dynamic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Technology {id: 'rip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'igrp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Technology {id: 'ospf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Technology {id: 'eigrp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'ibgp'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'as'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'protocol_message'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '프로토콜_메시지'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'update'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'keepalive'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'notification'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Technology {id: 'route_refresh'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '경로_속성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'local_preference'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'as_path'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'med'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Metric {id: '보안'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '권한'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '속성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '메시지'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '공격'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '오류'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '트래픽_기반'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'delay'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'jitter'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'queue_length'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '패킷손실_비율'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '패킷_재정렬_비율'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '무선_기반'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'medium_time_metric'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'topology'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '노드에_대한_경로_수'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'hop_count'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: 'mobility'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '노드의_이동_속도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '노드의_자원'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Document {id: 'NW_090'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'static'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'igrp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ospf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'eigrp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ibgp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'as'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'protocol_message'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_메시지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'update'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keepalive'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'notification'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'route_refresh'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경로_속성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'local_preference'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'as_path'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'med'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '보안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트래픽_기반'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delay'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jitter'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'queue_length'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷손실_비율'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷_재정렬_비율'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선_기반'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'medium_time_metric'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'topology'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노드에_대한_경로_수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hop_count'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mobility'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노드의_이동_속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노드의_자원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_091: Routed Protocol
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_091'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'routed_protocol'})
SET     n.name = 'Routed Protocol',
    n.name_kr = 'Routed Protocol',
    n.domain = 'NW',
    n.aliases = ['Routed Protocol'];

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우터에탄_승객(ip'})
SET     n.name = '라우터에탄 승객(IP',
    n.name_kr = '라우터에탄 승객(IP',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ipx'})
SET     n.name = 'IPX',
    n.name_kr = 'IPX',
    n.domain = 'NW',
    n.aliases = ['IPX'];

MERGE (n:Concept {id: 'appletalk'})
SET     n.name = 'AppleTalk',
    n.name_kr = 'AppleTalk',
    n.domain = 'NW',
    n.aliases = ['AppleTalk'];

MERGE (n:Concept {id: 'decnet_등)'})
SET     n.name = 'DECnet 등)',
    n.name_kr = 'DECnet 등)',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Concept {id: '라우터에탄_승객(ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Concept {id: 'ipx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Concept {id: 'appletalk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Concept {id: 'decnet_등)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Document {id: 'NW_091'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'routed_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우터에탄_승객(ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'appletalk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decnet_등)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_092: 라우팅 경로고정
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_092'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '라우팅_경로고정'})
SET     n.name = '라우팅 경로고정',
    n.name_kr = '라우팅 경로고정',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우팅_경로_고정'})
SET     n.name = '라우팅 경로 고정',
    n.name_kr = '라우팅 경로 고정',
    n.domain = 'NW';

MERGE (n:Technology {id: 'ospf'})
SET     n.name = 'OSPF',
    n.name_kr = 'OSPF',
    n.domain = 'NW',
    n.aliases = ['OSPF'];

MERGE (n:Technology {id: 'bgp'})
SET     n.name = 'BGP',
    n.name_kr = 'BGP',
    n.domain = 'NW',
    n.aliases = ['BGP'];

MERGE (n:Concept {id: 'static_route'})
SET     n.name = 'Static route',
    n.name_kr = 'Static route',
    n.domain = 'NW',
    n.definition = '라우팅 테이블에 등록시킬 목적지를 직접 설정',
    n.aliases = ['Static route'];

MERGE (n:Concept {id: 'default_route'})
SET     n.name = 'Default route',
    n.name_kr = 'Default route',
    n.domain = 'NW',
    n.definition = '경로 정보가 없을 경우 자동 기본 경로 지정',
    n.aliases = ['Default route'];

// --- 관계 ---

MERGE (a:Concept {id: '라우팅_경로_고정'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Technology {id: 'ospf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Technology {id: 'bgp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Concept {id: 'static_route'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Concept {id: 'default_route'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Document {id: 'NW_092'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '라우팅_경로고정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_경로_고정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ospf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bgp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'static_route'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'default_route'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_093: 내/외부 관점 라우팅
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_093'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '내/외부_관점_라우팅'})
SET     n.name = '내/외부 관점 라우팅',
    n.name_kr = '내/외부 관점 라우팅',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Concept {id: 'igp'})
SET     n.name = 'IGP',
    n.name_kr = 'IGP',
    n.domain = 'NW',
    n.aliases = ['IGP'];

MERGE (n:Concept {id: 'egp'})
SET     n.name = 'EGP',
    n.name_kr = 'EGP',
    n.domain = 'NW',
    n.aliases = ['EGP'];

// --- 관계 ---

MERGE (a:Concept {id: '내/외부_관점_라우팅'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'igp'})
MERGE (b:Concept {id: 'egp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '내/외부_관점_라우팅'})
MERGE (b:Concept {id: 'igp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '내/외부_관점_라우팅'})
MERGE (b:Concept {id: 'egp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '내/외부_관점_라우팅'})
MERGE (b:Document {id: 'NW_093'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '내/외부_관점_라우팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'igp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'egp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_095: Distance Vector Algorithm (거리벡터알고리즘)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_095'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'distance_vector_algorithm'})
SET     n.name = 'Distance Vector Algorithm',
    n.name_kr = '거리벡터알고리즘',
    n.domain = 'NW',
    n.aliases = ['Distance Vector Algorithm', '거리벡터알고리즘'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Technology {id: 'rip'})
SET     n.name = 'RIP',
    n.name_kr = 'RIP',
    n.domain = 'NW',
    n.aliases = ['RIP'];

MERGE (n:Concept {id: 'igrp'})
SET     n.name = 'IGRP',
    n.name_kr = 'IGRP',
    n.domain = 'NW',
    n.aliases = ['IGRP'];

MERGE (n:Concept {id: '동작방식'})
SET     n.name = '동작방식',
    n.name_kr = '동작방식',
    n.domain = 'NW',
    n.definition = '①';

MERGE (n:Technology {id: '프로토콜'})
SET     n.name = '프로토콜',
    n.name_kr = '프로토콜',
    n.domain = 'NW',
    n.definition = 'RIP';

MERGE (n:Concept {id: 'distance_vector'})
SET     n.name = 'Distance vector',
    n.name_kr = 'Distance vector',
    n.domain = 'NW',
    n.aliases = ['Distance vector'];

MERGE (n:Concept {id: 'link_state'})
SET     n.name = 'Link State',
    n.name_kr = 'Link State',
    n.domain = 'NW',
    n.aliases = ['Link State'];

// --- 관계 ---

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Technology {id: 'rip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Concept {id: 'igrp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Concept {id: '동작방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Technology {id: '프로토콜'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'distance_vector'})
MERGE (b:Concept {id: 'link_state'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Concept {id: 'distance_vector'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Concept {id: 'link_state'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Document {id: 'NW_095'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'distance_vector_algorithm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'igrp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'distance_vector'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link_state'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_096: Link State Algorithm
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_096'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'link_state_algorithm'})
SET     n.name = 'Link State Algorithm',
    n.name_kr = 'Link State Algorithm',
    n.domain = 'NW',
    n.aliases = ['Link State Algorithm'];

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Technology {id: 'ospf'})
SET     n.name = 'OSPF',
    n.name_kr = 'OSPF',
    n.domain = 'NW',
    n.aliases = ['OSPF'];

MERGE (n:Concept {id: '다익스트라_알고리즘'})
SET     n.name = '다익스트라 알고리즘',
    n.name_kr = '다익스트라 알고리즘',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '동작방식'})
SET     n.name = '동작방식',
    n.name_kr = '동작방식',
    n.domain = 'NW',
    n.definition = '라우터가 목적지까지 최단 경로 알고리즘 통해 라우팅 테이블에 기록 - 네트워크 전반 정보 유지, 개별 라우터는 자신을 루트로 하고 모든 목적지까지 도달 가능한 최단거리 spanning tree 계산 (다익스트라 알고리즘 이용) - 확실한 전송 정보(자신과 직접 연결된 링크 상태)만을 전송';

// --- 관계 ---

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Technology {id: 'ospf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Concept {id: '다익스트라_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Concept {id: '동작방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Document {id: 'NW_096'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'link_state_algorithm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ospf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다익스트라_알고리즘'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_097: Routing Information Protocol
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_097'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'routing_information_protocol'})
SET     n.name = 'Routing Information Protocol',
    n.name_kr = 'Routing Information Protocol',
    n.domain = 'NW',
    n.aliases = ['Routing Information Protocol'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'routing_protocol'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Technology {id: 'rip'})
SET     n.name = 'RIP',
    n.name_kr = 'RIP',
    n.domain = 'NW',
    n.aliases = ['RIP'];

MERGE (n:Concept {id: '거리벡터_라우팅'})
SET     n.name = '거리벡터 라우팅',
    n.name_kr = '거리벡터 라우팅',
    n.domain = 'NW';

MERGE (n:Concept {id: '최대_홉_크기_15'})
SET     n.name = '최대 홉 크기 15',
    n.name_kr = '최대 홉 크기 15',
    n.domain = 'NW';

MERGE (n:Concept {id: '30초_마다_broadcasting'})
SET     n.name = '30초 마다 Broadcasting',
    n.name_kr = '30초 마다 Broadcasting',
    n.domain = 'NW';

MERGE (n:Concept {id: '벨만-포드'})
SET     n.name = '벨만-포드',
    n.name_kr = '벨만-포드',
    n.domain = 'NW';

MERGE (n:Technology {id: 'open_shortest_path_first'})
SET     n.name = 'Open Shortest Path First',
    n.name_kr = 'OSPF',
    n.domain = 'NW',
    n.aliases = ['Open Shortest Path First', 'OSPF'];

// --- 관계 ---

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'rip'})
MERGE (b:Concept {id: 'routing_protocol'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Concept {id: '거리벡터_라우팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Concept {id: '최대_홉_크기_15'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Concept {id: '30초_마다_broadcasting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Concept {id: '벨만-포드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'routing_information_protocol'})
MERGE (b:Technology {id: 'open_shortest_path_first'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Technology {id: 'open_shortest_path_first'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Document {id: 'NW_097'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'routing_information_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'routing_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거리벡터_라우팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_홉_크기_15'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '30초_마다_broadcasting'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벨만-포드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'open_shortest_path_first'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_098: Open Shortest Path First
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_098'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'open_shortest_path_first'})
SET     n.name = 'Open Shortest Path First',
    n.name_kr = 'Open Shortest Path First',
    n.domain = 'NW',
    n.aliases = ['Open Shortest Path First'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '라우팅_프로토콜'})
SET     n.name = '라우팅 프로토콜',
    n.name_kr = '라우팅 프로토콜',
    n.domain = 'NW';

MERGE (n:Technology {id: 'ospf'})
SET     n.name = 'OSPF',
    n.name_kr = 'OSPF',
    n.domain = 'NW',
    n.aliases = ['OSPF'];

MERGE (n:Concept {id: 'link_state_routing'})
SET     n.name = '링크 상태 라우팅',
    n.name_kr = '링크 상태 라우팅',
    n.domain = 'NW';

MERGE (n:Concept {id: '대규모'})
SET     n.name = '대규모',
    n.name_kr = '대규모',
    n.domain = 'NW';

MERGE (n:Concept {id: '다익스트라_알고리즘'})
SET     n.name = '다익스트라 알고리즘',
    n.name_kr = '다익스트라 알고리즘',
    n.domain = 'NW';

MERGE (n:Concept {id: 'internal_router'})
SET     n.name = 'Internal Router',
    n.name_kr = 'Internal Router',
    n.domain = 'NW',
    n.definition = '어떤 한 AREA에 속한 라우터',
    n.aliases = ['Internal Router'];

MERGE (n:Concept {id: 'area_border_router'})
SET     n.name = 'Area Border Router',
    n.name_kr = 'ABR',
    n.domain = 'NW',
    n.definition = 'AREA와 백본 AREA을 연결시켜주는 라우터',
    n.aliases = ['Area Border Router', 'ABR'];

MERGE (n:Concept {id: 'as_boundary_router'})
SET     n.name = 'AS Boundary Router',
    n.name_kr = 'ASBR',
    n.domain = 'NW',
    n.definition = 'AS 내부 지역 중, 모든 지역이 연결되어 있는 특별한 지역 - 백본 라우터: 백본 내부에 있는 라우터',
    n.aliases = ['AS Boundary Router', 'ASBR'];

MERGE (n:Concept {id: 'designated_router'})
SET     n.name = 'Designated Router',
    n.name_kr = 'DR',
    n.domain = 'NW',
    n.definition = 'Area내의 마스터 라우터 역할',
    n.aliases = ['Designated Router', 'DR'];

MERGE (n:Concept {id: 'backup_dr'})
SET     n.name = 'Backup DR',
    n.name_kr = 'BDR',
    n.domain = 'NW',
    n.definition = 'DR의 장애를 대비한 백업 라우터',
    n.aliases = ['Backup DR', 'BDR'];

// --- 관계 ---

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'ospf'})
MERGE (b:Concept {id: '라우팅_프로토콜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'link_state_routing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: '대규모'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: '다익스트라_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'internal_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'area_border_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'as_boundary_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'designated_router'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Concept {id: 'backup_dr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Document {id: 'NW_098'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_shortest_path_first'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ospf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link_state_routing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대규모'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다익스트라_알고리즘'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internal_router'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'area_border_router'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'as_boundary_router'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'designated_router'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backup_dr'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_099: 센서 라우팅
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_099'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '센서_라우팅'})
SET     n.name = '센서 라우팅',
    n.name_kr = '센서 라우팅',
    n.domain = 'NW';

MERGE (n:Concept {id: '사물지능인터넷/iot'})
SET     n.name = '사물지능인터넷/IoT',
    n.name_kr = '사물지능인터넷/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '평계위'})
SET     n.name = '평계위',
    n.name_kr = '평계위',
    n.domain = 'NW';

MERGE (n:Concept {id: '프로토콜_구분'})
SET     n.name = '프로토콜 구분',
    n.name_kr = '프로토콜 구분',
    n.domain = 'NW';

MERGE (n:Concept {id: '주요_프로토콜'})
SET     n.name = '주요 프로토콜',
    n.name_kr = '주요 프로토콜',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Concept {id: '사물지능인터넷/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Concept {id: '평계위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토콜_구분'})
MERGE (b:Concept {id: '주요_프로토콜'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Concept {id: '프로토콜_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Concept {id: '주요_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Document {id: 'NW_099'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '센서_라우팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능인터넷/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평계위'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_구분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_100: Itinerary Routing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_100'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'itinerary_routing'})
SET     n.name = 'Itinerary Routing',
    n.name_kr = 'Itinerary Routing',
    n.domain = 'NW',
    n.aliases = ['Itinerary Routing'];

MERGE (n:Concept {id: '기가인터넷'})
SET     n.name = '기가인터넷',
    n.name_kr = '기가인터넷',
    n.domain = 'NW';

MERGE (n:Concept {id: '무선_센서_환경'})
SET     n.name = '무선 센서 환경',
    n.name_kr = '무선 센서 환경',
    n.domain = 'NW';

MERGE (n:Concept {id: 'gcf'})
SET     n.name = 'GCF',
    n.name_kr = 'GCF',
    n.domain = 'NW',
    n.aliases = ['GCF'];

MERGE (n:Concept {id: 'lcf'})
SET     n.name = 'LCF',
    n.name_kr = 'LCF',
    n.domain = 'NW',
    n.aliases = ['LCF'];

MERGE (n:Concept {id: 'tbid(트리'})
SET     n.name = 'TBID(트리',
    n.name_kr = 'TBID(트리',
    n.domain = 'NW';

MERGE (n:Concept {id: '다중)'})
SET     n.name = '다중)',
    n.name_kr = '다중)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'lcf_기반_기법-_iema'})
SET     n.name = 'LCF 기반 기법- IEMA',
    n.name_kr = 'LCF 기반 기법- IEMA',
    n.domain = 'NW';

MERGE (n:Concept {id: 'iemf'})
SET     n.name = 'IEMF',
    n.name_kr = 'IEMF',
    n.domain = 'NW',
    n.aliases = ['IEMF'];

MERGE (n:Concept {id: 'madd'})
SET     n.name = 'MADD',
    n.name_kr = 'MADD',
    n.domain = 'NW',
    n.aliases = ['MADD'];

// --- 관계 ---

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: '기가인터넷'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: '무선_센서_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'gcf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'lcf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'tbid(트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: '다중)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'lcf_기반_기법-_iema'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'iemf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Concept {id: 'madd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Document {id: 'NW_100'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'itinerary_routing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기가인터넷'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선_센서_환경'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gcf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lcf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tbid(트리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lcf_기반_기법-_iema'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iemf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'madd'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_101: VRRP (Virtual Router Redundancy Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_101'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'virtual_router_redundancy_protocol'})
SET     n.name = 'Virtual Router Redundancy Protocol',
    n.name_kr = 'VRRP',
    n.domain = 'NW',
    n.aliases = ['Virtual Router Redundancy Protocol', 'VRRP'];

MERGE (n:Concept {id: '2019_출제_예상_토픽'})
SET     n.name = '2019 출제 예상 토픽',
    n.name_kr = '2019 출제 예상 토픽',
    n.domain = 'NW';

MERGE (n:Concept {id: 'vrrp'})
SET     n.name = 'VRRP',
    n.name_kr = 'VRRP',
    n.domain = 'NW',
    n.aliases = ['VRRP'];

// --- 관계 ---

MERGE (a:Concept {id: 'vrrp'})
MERGE (b:Concept {id: '2019_출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'virtual_router_redundancy_protocol'})
MERGE (b:Document {id: 'NW_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'virtual_router_redundancy_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2019_출제_예상_토픽'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vrrp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_102: QoS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_102'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '대지패지'})
SET     n.name = '대지패지',
    n.name_kr = '대지패지',
    n.domain = 'NW';

MERGE (n:Concept {id: '데트혼수_q'})
SET     n.name = '데트혼수 Q',
    n.name_kr = '데트혼수 Q',
    n.domain = 'NW';

MERGE (n:Concept {id: 'c_압멀트'})
SET     n.name = 'C 압멀트',
    n.name_kr = 'C 압멀트',
    n.domain = 'NW';

MERGE (n:Concept {id: '현상_기준'})
SET     n.name = '현상 기준',
    n.name_kr = '현상 기준',
    n.domain = 'NW',
    n.definition = '지연';

MERGE (n:Concept {id: '처리_능력'})
SET     n.name = '처리 능력',
    n.name_kr = '처리 능력',
    n.domain = 'NW',
    n.definition = '대역폭';

MERGE (n:Concept {id: '트래픽'})
SET     n.name = '트래픽',
    n.name_kr = '트래픽',
    n.domain = 'NW',
    n.definition = '트래픽 우선 순위';

MERGE (n:Concept {id: '회선_변경'})
SET     n.name = '회선 변경',
    n.name_kr = '회선 변경',
    n.domain = 'NW',
    n.definition = '셀 손실율';

// --- 관계 ---

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '대지패지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '데트혼수_q'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: 'c_압멀트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '현상_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '처리_능력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '트래픽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '회선_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Document {id: 'NW_102'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대지패지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데트혼수_q'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c_압멀트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현상_기준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_능력'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트래픽'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회선_변경'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_103: Queue 관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_103'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'queue_관리'})
SET     n.name = 'Queue 관리',
    n.name_kr = 'Queue 관리',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: '대지패지'})
SET     n.name = '대지패지',
    n.name_kr = '대지패지',
    n.domain = 'NW';

MERGE (n:Concept {id: '데트혼수_q'})
SET     n.name = '데트혼수 Q',
    n.name_kr = '데트혼수 Q',
    n.domain = 'NW';

MERGE (n:Concept {id: 'c_압멀트'})
SET     n.name = 'C 압멀트',
    n.name_kr = 'C 압멀트',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'qos'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Concept {id: '대지패지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Concept {id: '데트혼수_q'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Concept {id: 'c_압멀트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Document {id: 'NW_103'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'queue_관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대지패지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데트혼수_q'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c_압멀트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_104: Traffic Policing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_104'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'traffic_policing'})
SET     n.name = 'Traffic Policing',
    n.name_kr = 'Traffic Policing',
    n.domain = 'NW',
    n.aliases = ['Traffic Policing'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'drop'})
SET     n.name = 'Drop',
    n.name_kr = 'Drop',
    n.domain = 'NW',
    n.aliases = ['Drop'];

MERGE (n:Concept {id: 'bps'})
SET     n.name = 'bps',
    n.name_kr = 'Meter',
    n.domain = 'NW',
    n.aliases = ['bps', 'Meter'];

MERGE (n:Concept {id: 'mark'})
SET     n.name = 'Mark',
    n.name_kr = 'Mark',
    n.domain = 'NW',
    n.aliases = ['Mark'];

MERGE (n:Concept {id: 'leaky_bucket'})
SET     n.name = 'Leaky Bucket',
    n.name_kr = 'Leaky Bucket',
    n.domain = 'NW',
    n.aliases = ['Leaky Bucket'];

MERGE (n:Concept {id: 'token_bucket'})
SET     n.name = 'Token Bucket',
    n.name_kr = 'Token Bucket',
    n.domain = 'NW',
    n.aliases = ['Token Bucket'];

MERGE (n:Concept {id: 'traffic_shaping'})
SET     n.name = 'Traffic Shaping',
    n.name_kr = 'Traffic Shaping',
    n.domain = 'NW',
    n.aliases = ['Traffic Shaping'];

// --- 관계 ---

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'drop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'bps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'mark'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'leaky_bucket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'token_bucket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'traffic_shaping'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Concept {id: 'traffic_shaping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Document {id: 'NW_104'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'traffic_policing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drop'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mark'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'leaky_bucket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'token_bucket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_105: Traffic Shaping
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_105'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'traffic_shaping'})
SET     n.name = 'Traffic Shaping',
    n.name_kr = 'Traffic Shaping',
    n.domain = 'NW',
    n.aliases = ['Traffic Shaping'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'diffserv'})
SET     n.name = 'DiffServ',
    n.name_kr = 'DiffServ',
    n.domain = 'NW',
    n.aliases = ['DiffServ'];

MERGE (n:Concept {id: 'shaping'})
SET     n.name = 'Shaping',
    n.name_kr = '트래픽 쉐이핑',
    n.domain = 'NW',
    n.aliases = ['Shaping', '트래픽 쉐이핑'];

MERGE (n:Concept {id: 'policing'})
SET     n.name = 'Policing',
    n.name_kr = 'Policing',
    n.domain = 'NW',
    n.aliases = ['Policing'];

MERGE (n:Concept {id: 'leaky_bucket'})
SET     n.name = 'Leaky Bucket',
    n.name_kr = 'Leaky Bucket',
    n.domain = 'NW',
    n.aliases = ['Leaky Bucket'];

MERGE (n:Concept {id: 'tocken_bucke'})
SET     n.name = 'Tocken Bucke',
    n.name_kr = 'Tocken Bucke',
    n.domain = 'NW',
    n.aliases = ['Tocken Bucke'];

// --- 관계 ---

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'diffserv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'shaping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'policing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'leaky_bucket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Concept {id: 'tocken_bucke'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Document {id: 'NW_105'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'traffic_shaping'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'diffserv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shaping'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'policing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'leaky_bucket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tocken_bucke'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_106: 사전 패킷 폐기
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_106'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'proactive_packet_discard'})
SET     n.name = 'Proactive Packet Discard',
    n.name_kr = '사전 패킷 폐기',
    n.domain = 'NW',
    n.aliases = ['사전 패킷 폐기'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'red'})
SET     n.name = 'RED',
    n.name_kr = 'RED',
    n.domain = 'NW',
    n.aliases = ['RED'];

MERGE (n:Concept {id: 'wred'})
SET     n.name = 'WRED',
    n.name_kr = 'WRED',
    n.domain = 'NW',
    n.aliases = ['WRED'];

MERGE (n:Concept {id: 'taildrop'})
SET     n.name = 'TailDrop',
    n.name_kr = 'TailDrop',
    n.domain = 'NW',
    n.aliases = ['TailDrop'];

// --- 관계 ---

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Concept {id: 'red'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Concept {id: 'wred'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Concept {id: 'taildrop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Document {id: 'NW_106'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'proactive_packet_discard'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'red'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wred'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'taildrop'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_108: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_108'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_109: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_109'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_110: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_110'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_111: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_111'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_112: QoE(Quality of Experience)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_112'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'quality_of_experience'})
SET     n.name = 'Quality of Experience',
    n.name_kr = 'QoE',
    n.domain = 'NW',
    n.aliases = ['Quality of Experience', 'QoE'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: '기대값'})
SET     n.name = '기대값',
    n.name_kr = '기대값',
    n.domain = 'NW';

MERGE (n:Concept {id: '품질_지표'})
SET     n.name = '품질 지표',
    n.name_kr = '품질 지표',
    n.domain = 'NW';

MERGE (n:Concept {id: '품질_관리방법'})
SET     n.name = '품질 관리방법',
    n.name_kr = '품질 관리방법',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mos'})
SET     n.name = 'MoS',
    n.name_kr = 'MoS',
    n.domain = 'NW',
    n.aliases = ['MoS'];

MERGE (n:Concept {id: 'pexq'})
SET     n.name = 'PExQ',
    n.name_kr = 'PExQ',
    n.domain = 'NW',
    n.aliases = ['PExQ'];

// --- 관계 ---

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: '기대값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: '품질_지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: '품질_관리방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: 'mos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: 'pexq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Document {id: 'NW_112'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기대값'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_지표'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_관리방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pexq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_113: NP(Network Performance)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_113'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network_performance'})
SET     n.name = 'Network Performance',
    n.name_kr = 'NP',
    n.domain = 'NW',
    n.aliases = ['Network Performance', 'NP'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'qoe'})
SET     n.name = 'QoE',
    n.name_kr = 'QoE',
    n.domain = 'NW',
    n.aliases = ['QoE'];

MERGE (n:Concept {id: 'np'})
SET     n.name = 'NP',
    n.name_kr = 'NP',
    n.domain = 'NW',
    n.aliases = ['NP'];

MERGE (n:Concept {id: 'quality_of_service'})
SET     n.name = 'Quality of Service',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['Quality of Service', 'QoS'];

MERGE (n:Concept {id: 'quality_of_experience'})
SET     n.name = 'Quality of Experience',
    n.name_kr = 'QoE',
    n.domain = 'NW',
    n.aliases = ['Quality of Experience', 'QoE'];

// --- 관계 ---

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Concept {id: 'qoe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Concept {id: 'np'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_service'})
MERGE (b:Concept {id: 'quality_of_experience'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quality_of_service'})
MERGE (b:Concept {id: 'network_performance'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Concept {id: 'quality_of_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Concept {id: 'network_performance'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Concept {id: 'quality_of_experience'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Document {id: 'NW_113'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network_performance'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qoe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'np'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality_of_service'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality_of_experience'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_114: CDN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_114'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'cdn'})
SET     n.name = 'CDN',
    n.name_kr = 'CDN',
    n.domain = 'NW',
    n.aliases = ['CDN'];

MERGE (n:Concept {id: 'middle_mile'})
SET     n.name = 'Middle Mile',
    n.name_kr = 'Middle Mile',
    n.domain = 'NW',
    n.aliases = ['Middle Mile'];

MERGE (n:Concept {id: 'cdn_sp'})
SET     n.name = 'CDN SP',
    n.name_kr = 'CDN SP',
    n.domain = 'NW',
    n.aliases = ['CDN SP'];

MERGE (n:Concept {id: 'cp'})
SET     n.name = 'CP',
    n.name_kr = 'CP',
    n.domain = 'NW',
    n.aliases = ['CP'];

MERGE (n:Concept {id: 'isp'})
SET     n.name = 'ISP',
    n.name_kr = 'ISP',
    n.domain = 'NW',
    n.aliases = ['ISP'];

MERGE (n:Concept {id: 'user'})
SET     n.name = 'User',
    n.name_kr = 'User',
    n.domain = 'NW',
    n.aliases = ['User'];

MERGE (n:Concept {id: 'pop'})
SET     n.name = 'POP',
    n.name_kr = 'POP',
    n.domain = 'NW',
    n.aliases = ['POP'];

MERGE (n:Concept {id: 'ix'})
SET     n.name = 'IX',
    n.name_kr = 'IX',
    n.domain = 'NW',
    n.aliases = ['IX'];

MERGE (n:Concept {id: '콘텐츠_전송속도'})
SET     n.name = '콘텐츠 전송속도',
    n.name_kr = '콘텐츠 전송속도',
    n.domain = 'NW',
    n.definition = 'Middle Mile을 경유하지 않으므로 전송속도 향상 - 가입자망에서 분배형 구조로 Traffic busting시에도 전송속도 지연방지';

MERGE (n:Concept {id: '콘텐츠_전송의_안정성'})
SET     n.name = '콘텐츠 전송의 안정성',
    n.name_kr = '콘텐츠 전송의 안정성',
    n.domain = 'NW',
    n.definition = 'Traffic Overflow 방지, 스트리밍서비스 단절해소, Qos 향상';

MERGE (n:Concept {id: '경제성'})
SET     n.name = '경제성',
    n.name_kr = '경제성',
    n.domain = 'NW',
    n.definition = '웹호스팅 비용절감(공급자측면) - 시간비용 절감(수요자 측면) - 관련 산업이 발전(네트워크 장비, 스토리 등)';

MERGE (n:Concept {id: '네트워크_효율성'})
SET     n.name = '네트워크 효율성',
    n.name_kr = '네트워크 효율성',
    n.domain = 'NW',
    n.definition = 'middle mile 에서의 트래픽 부담완화, CP간 설비공유';

// --- 관계 ---

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'cdn'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'middle_mile'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'cdn_sp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'pop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: 'ix'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: '콘텐츠_전송속도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: '콘텐츠_전송의_안정성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: '경제성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Concept {id: '네트워크_효율성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Document {id: 'NW_114'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'middle_mile'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdn_sp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pop'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ix'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠_전송속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠_전송의_안정성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경제성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_효율성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_115: ADN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_115'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'adn'})
SET     n.name = 'ADN',
    n.name_kr = 'ADN',
    n.domain = 'NW',
    n.aliases = ['ADN'];

MERGE (n:Concept {id: 'cdn'})
SET     n.name = 'CDN',
    n.name_kr = 'CDN',
    n.domain = 'NW',
    n.aliases = ['CDN'];

MERGE (n:Concept {id: 'downtime'})
SET     n.name = 'DownTime',
    n.name_kr = 'DownTime',
    n.domain = 'NW',
    n.aliases = ['DownTime'];

MERGE (n:Concept {id: 'adn_application_delivery_network'})
SET     n.name = 'ADN Application Delivery Network',
    n.name_kr = 'ADN Application Delivery Network',
    n.domain = 'NW',
    n.aliases = ['ADN Application Delivery Network'];

MERGE (n:Concept {id: 'cdn_content_delivery_network'})
SET     n.name = 'CDN Content Delivery Network',
    n.name_kr = 'CDN Content Delivery Network',
    n.domain = 'NW',
    n.aliases = ['CDN Content Delivery Network'];

// --- 관계 ---

MERGE (a:Concept {id: 'adn'})
MERGE (b:Concept {id: 'cdn'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'adn'})
MERGE (b:Concept {id: 'downtime'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'adn_application_delivery_network'})
MERGE (b:Concept {id: 'cdn_content_delivery_network'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'adn'})
MERGE (b:Concept {id: 'adn_application_delivery_network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'adn'})
MERGE (b:Concept {id: 'cdn_content_delivery_network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'adn'})
MERGE (b:Document {id: 'NW_115'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'adn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'downtime'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adn_application_delivery_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdn_content_delivery_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_116: NDN(Named Data Networking) (= CCN:Content Centric Networking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_116'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ndn'})
SET     n.name = 'NDN',
    n.name_kr = 'NDN',
    n.domain = 'NW',
    n.aliases = ['NDN'];

MERGE (n:Concept {id: '콘텐츠'})
SET     n.name = '콘텐츠',
    n.name_kr = '콘텐츠',
    n.domain = 'NW';

MERGE (n:Concept {id: '데이터_중심'})
SET     n.name = '데이터 중심',
    n.name_kr = '데이터 중심',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ccn'})
SET     n.name = 'CCN',
    n.name_kr = 'CCN',
    n.domain = 'NW',
    n.aliases = ['CCN'];

MERGE (n:Concept {id: 'content_chunks'})
SET     n.name = 'Content chunks',
    n.name_kr = 'Content chunks',
    n.domain = 'NW',
    n.aliases = ['Content chunks'];

MERGE (n:Concept {id: 'cs'})
SET     n.name = 'CS',
    n.name_kr = 'CS',
    n.domain = 'NW',
    n.aliases = ['CS'];

MERGE (n:Concept {id: 'pit'})
SET     n.name = 'PIT',
    n.name_kr = 'PIT',
    n.domain = 'NW',
    n.aliases = ['PIT'];

MERGE (n:Concept {id: 'fib'})
SET     n.name = 'FIB',
    n.name_kr = 'FIB',
    n.domain = 'NW',
    n.aliases = ['FIB'];

// --- 관계 ---

MERGE (a:Concept {id: '기타'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ndn'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: '콘텐츠'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: '데이터_중심'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: 'ccn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: 'content_chunks'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: 'cs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: 'pit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Concept {id: 'fib'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'named_data_networking'})
MERGE (b:Document {id: 'NW_116'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ndn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_중심'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ccn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'content_chunks'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fib'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_123: Wireless LAN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_123'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: '유선랜'})
SET     n.name = '유선랜',
    n.name_kr = '유선랜',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11_ssid'})
SET     n.name = '802.11. SSID',
    n.name_kr = '802.11. SSID',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wep'})
SET     n.name = 'WEP',
    n.name_kr = 'WEP',
    n.domain = 'NW',
    n.aliases = ['WEP'];

MERGE (n:Concept {id: 'roaming'})
SET     n.name = 'Roaming',
    n.name_kr = 'AP 간 로밍',
    n.domain = 'NW',
    n.aliases = ['Roaming', 'AP 간 로밍'];

MERGE (n:Concept {id: '802_11b'})
SET     n.name = '802.11b',
    n.name_kr = '802.11b',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11a'})
SET     n.name = '802.11a',
    n.name_kr = '802.11a',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11g'})
SET     n.name = '802.11g',
    n.name_kr = '802.11g',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11n'})
SET     n.name = '802.11n',
    n.name_kr = '802.11n',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11ac'})
SET     n.name = '802.11ac',
    n.name_kr = '802.11ac',
    n.domain = 'NW';

MERGE (n:Concept {id: 'homerf'})
SET     n.name = 'HomeRF',
    n.name_kr = 'HomeRF',
    n.domain = 'NW',
    n.aliases = ['HomeRF'];

MERGE (n:Technology {id: 'bluetooth'})
SET     n.name = 'Bluetooth',
    n.name_kr = 'Bluetooth',
    n.domain = 'NW',
    n.aliases = ['Bluetooth'];

MERGE (n:Concept {id: 'wlan'})
SET     n.name = 'WLAN',
    n.name_kr = 'WLAN',
    n.domain = 'NW',
    n.aliases = ['WLAN'];

MERGE (n:Concept {id: 'uwb'})
SET     n.name = 'UWB',
    n.name_kr = 'UWB',
    n.domain = 'NW',
    n.aliases = ['UWB'];

MERGE (n:Concept {id: 'wireless_1394'})
SET     n.name = 'Wireless 1394',
    n.name_kr = 'Wireless 1394',
    n.domain = 'NW',
    n.aliases = ['Wireless 1394'];

MERGE (n:Concept {id: 'wired_equivalent_privacy'})
SET     n.name = 'Wired Equivalent Privacy',
    n.name_kr = 'WEP',
    n.domain = 'NW',
    n.definition = '속도가 빠른 RC4 암호화 알고리즘을 사용하여 무선LAN 통신에 대한 암호화(64 또는 128bit 키를 사용)',
    n.aliases = ['Wired Equivalent Privacy', 'WEP'];

MERGE (n:Concept {id: 'mac_address_filtering'})
SET     n.name = 'MAC Address Filtering',
    n.name_kr = 'MAC Address Filtering',
    n.domain = 'NW',
    n.definition = 'AP에 접속할 수 있는 무선LAN 단말의 MAC을 지정하여 접속제한 - MAC 필터링 우회가 가능한 단점이 있음',
    n.aliases = ['MAC Address Filtering'];

MERGE (n:Concept {id: 'service_set_id'})
SET     n.name = 'SSID(Service Set ID) 설정',
    n.name_kr = 'SSID(Service Set ID) 설정',
    n.domain = 'NW',
    n.definition = 'AP와 동일한 SSID를 설정한 무선LAN 단말만 접속 - Default SSID 변경 및 Broadcast SSID 제거';

MERGE (n:Standard {id: 'ieee_802.1x_인증'})
SET     n.name = 'IEEE 802.1x 인증',
    n.name_kr = 'IEEE 802.1x 인증',
    n.domain = 'NW',
    n.definition = 'IEEE802.1x에 대응한 무선LAN 단말과 AP, 인증서버(RADIUS)를 이용하여 사용자 인증과 개별암호화 키 배포';

MERGE (n:Concept {id: 'wpa-psk_방식'})
SET     n.name = 'WPA-PSK 방식',
    n.name_kr = 'WPA-PSK 방식',
    n.domain = 'NW',
    n.definition = 'AP와 통신해야 할 단말의 공통의 문자열을 등록해 두고, 그 문자열로부터 생성된 128bit PSK에 의해 단말을 인증 - 별도의 인증서버 없이 보안을 강화할 수 있음';

MERGE (n:Standard {id: 'wpa_epa'})
SET     n.name = 'WPA-EPA',
    n.name_kr = 'WPA-EPA',
    n.domain = 'NW',
    n.definition = '기업이나 공중 무선LAN에서 주로 사용 - IEEE 802.1x와 TKIP 등을 조합해 구성 - 인증서버에 의해 단말마다 서로 다른 키를 안전하게 배포 - 인증서버 등의 설치가 필요',
    n.aliases = ['WPA-EPA'];

MERGE (n:Concept {id: '취약성'})
SET     n.name = '취약성',
    n.name_kr = '취약성',
    n.domain = 'NW';

MERGE (n:Concept {id: '대응방안'})
SET     n.name = '대응방안',
    n.name_kr = '대응방안',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '유선랜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11_ssid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'wep'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'roaming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_11b'})
MERGE (b:Concept {id: '802_11a'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11b'})
MERGE (b:Concept {id: '802_11g'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11b'})
MERGE (b:Concept {id: '802_11n'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11b'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11b'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_11a'})
MERGE (b:Concept {id: '802_11g'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11a'})
MERGE (b:Concept {id: '802_11n'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11a'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11a'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_11g'})
MERGE (b:Concept {id: '802_11n'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11g'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_11n'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11n'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'homerf'})
MERGE (b:Technology {id: 'bluetooth'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'homerf'})
MERGE (b:Concept {id: 'wlan'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'homerf'})
MERGE (b:Concept {id: 'uwb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'homerf'})
MERGE (b:Concept {id: 'wireless_1394'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'homerf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bluetooth'})
MERGE (b:Concept {id: 'wlan'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth'})
MERGE (b:Concept {id: 'uwb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth'})
MERGE (b:Concept {id: 'wireless_1394'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Technology {id: 'bluetooth'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wlan'})
MERGE (b:Concept {id: 'uwb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wlan'})
MERGE (b:Concept {id: 'wireless_1394'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'wlan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uwb'})
MERGE (b:Concept {id: 'wireless_1394'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'uwb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'wireless_1394'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'wired_equivalent_privacy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'mac_address_filtering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'service_set_id'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Standard {id: 'ieee_802.1x_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: 'wpa-psk_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Standard {id: 'wpa_epa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '취약성'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '취약성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Document {id: 'NW_123'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유선랜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11_ssid'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wep'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'roaming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11b'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11a'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11n'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11ac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'homerf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bluetooth'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wlan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uwb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_1394'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wired_equivalent_privacy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_address_filtering'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_set_id'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802.1x_인증'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpa-psk_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'wpa_epa'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_124: IEEE 802.11ac
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_124'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11ac'})
SET     n.name = 'IEEE 802.11ac',
    n.name_kr = 'IEEE 802.11ac',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ac'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: 'mu_mimo'})
SET     n.name = 'MU-MIMO',
    n.name_kr = 'MU-MIMO',
    n.domain = 'NW',
    n.aliases = ['MU-MIMO'];

MERGE (n:Concept {id: 'channel_bonding'})
SET     n.name = 'Channel Bonding',
    n.name_kr = 'Channel Bonding',
    n.domain = 'NW',
    n.aliases = ['Channel Bonding'];

MERGE (n:Concept {id: '256_qam'})
SET     n.name = '256 QAM',
    n.name_kr = '256 QAM',
    n.domain = 'NW';

MERGE (n:Concept {id: 'spatial_stream'})
SET     n.name = 'Spatial Stream',
    n.name_kr = 'Spatial Stream',
    n.domain = 'NW',
    n.aliases = ['Spatial Stream'];

MERGE (n:Concept {id: 'a_mpdu'})
SET     n.name = 'A-MPDU',
    n.name_kr = 'A-MPDU',
    n.domain = 'NW',
    n.aliases = ['A-MPDU'];

MERGE (n:Concept {id: '속도증가'})
SET     n.name = '속도증가',
    n.name_kr = '속도증가',
    n.domain = 'NW',
    n.definition = '수요 급증하는 초고화질 영상 전송을 위한 1Gbps 이상 지원';

MERGE (n:Concept {id: '상호호환_제한'})
SET     n.name = '상호호환 제한',
    n.name_kr = '상호호환 제한',
    n.domain = 'NW',
    n.definition = '80MHz 대역폭의 효율적 사용을 위해 기존 2.4GHz 기술 (802.11n/ 802.11g)과의 호환성 포기';

MERGE (n:Concept {id: '기술_향상'})
SET     n.name = '기술 향상',
    n.name_kr = '기술 향상',
    n.domain = 'NW',
    n.definition = '주파수 효율 및 변복조 기술개선으로 다중 사용자 동시접속이 가능하고 높은 QoS(Quality of Service)수준 제공';

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: 'mu_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: 'channel_bonding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: '256_qam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: 'spatial_stream'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: 'a_mpdu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: '속도증가'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: '상호호환_제한'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Concept {id: '기술_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Document {id: 'NW_124'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mu_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'channel_bonding'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '256_qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spatial_stream'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'a_mpdu'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속도증가'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호호환_제한'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_향상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_125: IEEE 802.11ac
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_125'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11ac'})
SET     n.name = 'IEEE 802.11ac',
    n.name_kr = 'IEEE 802.11ac',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ac'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Standard {id: 'ieee_802_11ac_wave_1'})
SET     n.name = 'IEEE 802.11ac Wave 1',
    n.name_kr = 'IEEE 802.11ac Wave 1',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ac Wave 1'];

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11ac_wave_1'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Document {id: 'NW_125'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_11ac_wave_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_126: IEEE 802.11ad
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_126'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11ad'})
SET     n.name = 'IEEE 802.11ad',
    n.name_kr = 'IEEE 802.11ad',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ad'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: '1~7gbps_전송속도'})
SET     n.name = '1~7Gbps 전송속도',
    n.name_kr = '1~7Gbps 전송속도',
    n.domain = 'NW';

MERGE (n:Concept {id: '비면허대역사용'})
SET     n.name = '비면허대역사용',
    n.name_kr = '비면허대역사용',
    n.domain = 'NW';

MERGE (n:Concept {id: '빔포밍_방식'})
SET     n.name = '빔포밍 방식',
    n.name_kr = '빔포밍 방식',
    n.domain = 'NW';

MERGE (n:Standard {id: '기존_와이파이_지원'})
SET     n.name = '기존 와이파이 지원',
    n.name_kr = '기존 와이파이 지원',
    n.domain = 'NW',
    n.definition = 'IEEE 802.11을 기반으로 기존의 와이파이를 지원하고 2.4GHz, 5GHz, 60GHz 주파수 대역에서 동작하는 장치들 간 통신을 지원';

MERGE (n:Technology {id: '향상된_보안기능_제공'})
SET     n.name = '향상된 보안기능 제공',
    n.name_kr = '향상된 보안기능 제공',
    n.domain = 'NW',
    n.definition = 'AES(Advanced Encryption Standard)암호화 알고리즘의 Galois/Counter 모드를 이용한 향상된 보안 기능 제공';

MERGE (n:Concept {id: 'beamforming'})
SET     n.name = 'Beamforming',
    n.name_kr = 'Beamforming',
    n.domain = 'NW',
    n.definition = 'Beamforming과 신호 세기의 최대화의 지원으로 10미터 이내의 전송거리에서 안정적인 통신을 제공',
    n.aliases = ['Beamforming'];

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Concept {id: '1~7gbps_전송속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Concept {id: '비면허대역사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Concept {id: '빔포밍_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Standard {id: '기존_와이파이_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Technology {id: '향상된_보안기능_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Concept {id: 'beamforming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Document {id: 'NW_126'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11ad'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1~7gbps_전송속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비면허대역사용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빔포밍_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '기존_와이파이_지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '향상된_보안기능_제공'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_127: IEEE 802.11af
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_127'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11af'})
SET     n.name = 'IEEE 802.11af',
    n.name_kr = 'IEEE 802.11af',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11af'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: 'ofdm'})
SET     n.name = 'OFDM',
    n.name_kr = 'OFDM',
    n.domain = 'NW',
    n.aliases = ['OFDM'];

MERGE (n:Concept {id: 'mu_mimo'})
SET     n.name = 'MU-MIMO',
    n.name_kr = 'MU-MIMO',
    n.domain = 'NW',
    n.aliases = ['MU-MIMO'];

MERGE (n:Concept {id: '384_mbps'})
SET     n.name = '384 Mbps',
    n.name_kr = '384 Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: '아프리카tv'})
SET     n.name = '아프리카TV',
    n.name_kr = '아프리카TV',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Concept {id: 'ofdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Concept {id: 'mu_mimo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Concept {id: '384_mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Concept {id: '아프리카tv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Document {id: 'NW_127'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11af'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mu_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '384_mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아프리카tv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_128: IEEE 802.11ah
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_128'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11ah'})
SET     n.name = 'IEEE 802.11ah',
    n.name_kr = 'IEEE 802.11ah',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ah'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: '917_923_5_mhz'})
SET     n.name = '917 - 923.5 MHz',
    n.name_kr = '917 - 923.5 MHz',
    n.domain = 'NW';

MERGE (n:Concept {id: 'protocol_overhead_축소'})
SET     n.name = 'Protocol Overhead 축소',
    n.name_kr = 'Protocol Overhead 축소',
    n.domain = 'NW';

MERGE (n:Concept {id: '채널_액세스_방식_제안'})
SET     n.name = '채널 액세스 방식 제안',
    n.name_kr = '채널 액세스 방식 제안',
    n.domain = 'NW';

MERGE (n:Standard {id: '802_11ac_down_clocking'})
SET     n.name = '802.11ac Down-Clocking',
    n.name_kr = '802.11ac Down-Clocking',
    n.domain = 'NW',
    n.definition = 'IEEE 802.11ac OFDM PHY 을 1/10 Down-Clocking 한 형태 - 8 us Cyclic Prefix 와 40 us OFDM Symbol Duration 을 가짐';

MERGE (n:Concept {id: '802_11ac'})
SET     n.name = '802.11ac',
    n.name_kr = '802.11ac',
    n.domain = 'NW';

MERGE (n:Concept {id: '802_11ah'})
SET     n.name = '802.11ah',
    n.name_kr = '802.11ah',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: '917_923_5_mhz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: 'protocol_overhead_축소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: '채널_액세스_방식_제안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Standard {id: '802_11ac_down_clocking'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '802_11ac'})
MERGE (b:Concept {id: '802_11ah'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: '802_11ac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Concept {id: '802_11ah'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Document {id: 'NW_128'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11ah'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '917_923_5_mhz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'protocol_overhead_축소'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '채널_액세스_방식_제안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '802_11ac_down_clocking'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11ac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11ah'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_129: IEEE 802.11i
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_129'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_802_11i'})
SET     n.name = 'IEEE 802.11i',
    n.name_kr = 'IEEE 802.11i',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11i'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: '무선랜_보안'})
SET     n.name = '무선랜 보안',
    n.name_kr = '무선랜 보안',
    n.domain = 'NW';

MERGE (n:Concept {id: '키교환_인증'})
SET     n.name = '키교환 인증',
    n.name_kr = '키교환 인증',
    n.domain = 'NW';

MERGE (n:Concept {id: '접근제어'})
SET     n.name = '접근제어',
    n.name_kr = '접근제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '권한검증'})
SET     n.name = '권한검증',
    n.name_kr = '권한검증',
    n.domain = 'NW';

MERGE (n:Metric {id: '무결성'})
SET     n.name = '무결성',
    n.name_kr = '무결성',
    n.domain = 'NW';

MERGE (n:Concept {id: '부인방지'})
SET     n.name = '부인방지',
    n.name_kr = '부인방지',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: '무선랜_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: '키교환_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: '접근제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: '권한검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Metric {id: '무결성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Concept {id: '부인방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Document {id: 'NW_129'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_802_11i'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선랜_보안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키교환_인증'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한검증'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '무결성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부인방지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_130: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_130'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_131.1: WiFi 6
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_131.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'wifi_6'})
SET     n.name = 'WiFi 6',
    n.name_kr = 'WiFi 6',
    n.domain = 'NW',
    n.aliases = ['WiFi 6'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'wireless LAN',
    n.name_kr = 'wireless LAN',
    n.domain = 'NW',
    n.aliases = ['wireless LAN'];

MERGE (n:Standard {id: 'ieee_802_11ax_hew'})
SET     n.name = 'IEEE 802.11ax HEW',
    n.name_kr = 'IEEE 802.11ax HEW',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11ax HEW'];

MERGE (n:Concept {id: '1024qam'})
SET     n.name = '1024QAM',
    n.name_kr = '1024QAM',
    n.domain = 'NW';

MERGE (n:Concept {id: '9607mbps'})
SET     n.name = '9607Mbps',
    n.name_kr = '9607Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mu_mino'})
SET     n.name = 'MU-MINO',
    n.name_kr = 'MU-MINO',
    n.domain = 'NW',
    n.aliases = ['MU-MINO'];

MERGE (n:Concept {id: 'ofdma'})
SET     n.name = 'OFDMA',
    n.name_kr = 'OFDMA',
    n.domain = 'NW',
    n.aliases = ['OFDMA'];

MERGE (n:Concept {id: '빔포밍'})
SET     n.name = '빔포밍',
    n.name_kr = '빔포밍',
    n.domain = 'NW';

MERGE (n:Concept {id: 'multi_user'})
SET     n.name = '다중 사용 (Multi User) 주요 기술',
    n.name_kr = '다중 사용 (Multi User) 주요 기술',
    n.domain = 'NW',
    n.definition = 'OFDMA';

MERGE (n:Concept {id: 'mu_mimo'})
SET     n.name = 'MU-MIMO',
    n.name_kr = 'MU-MIMO',
    n.domain = 'NW',
    n.definition = '빔포밍 기술을 사용하여 공간적으로 분산된 사용자들에게 패킷을 동시에 전달',
    n.aliases = ['MU-MIMO'];

MERGE (n:Concept {id: 'downlink/uplink_mu_전송_시퀀스'})
SET     n.name = 'Downlink/Uplink MU 전송 시퀀스',
    n.name_kr = 'Downlink/Uplink MU 전송 시퀀스',
    n.domain = 'NW',
    n.definition = '다수 단말 MU 동시 전송 유도';

MERGE (n:Concept {id: 'spatial_reuse'})
SET     n.name = '공간 재활용 (Spatial Reuse) 주요 기술',
    n.name_kr = '공간 재활용 (Spatial Reuse) 주요 기술',
    n.domain = 'NW',
    n.definition = 'CCA 레벨 제어 기술';

MERGE (n:Concept {id: 'bss_color_기술'})
SET     n.name = 'BSS Color 기술',
    n.name_kr = 'BSS Color 기술',
    n.domain = 'NW',
    n.definition = '자신이 속한 AP 관할 BSS 인지 기술';

MERGE (n:Concept {id: 'physical_layer'})
SET     n.name = '물리 계층 (Physical Layer) 주요 기술',
    n.name_kr = '물리 계층 (Physical Layer) 주요 기술',
    n.domain = 'NW',
    n.definition = '256FFT 기반 OFDM 파라미터 기술';

MERGE (n:Concept {id: '빔_포밍'})
SET     n.name = '빔 포밍',
    n.name_kr = '빔 포밍',
    n.domain = 'NW',
    n.definition = '단일 측량 및 피드백 이용 집중 영역 Transmission 기술';

MERGE (n:Concept {id: 'mac_layer'})
SET     n.name = '매체접속 제어계층 (MAC Layer) 주요 기술',
    n.name_kr = '매체접속 제어계층 (MAC Layer) 주요 기술',
    n.domain = 'NW',
    n.definition = 'Trigger Frame';

MERGE (n:Concept {id: 'infra_bss_regular_navs'})
SET     n.name = 'Infra-BSS/Regular Navs',
    n.name_kr = 'Infra-BSS/Regular Navs',
    n.domain = 'NW',
    n.definition = '각 단말이 자신의 BSS에 관련된 Infra-BSS NAV와 그 이외의 BSS에 관련된 Regular NAV를 별도로 구분 관리하는 기술',
    n.aliases = ['Infra-BSS/Regular Navs'];

// --- 관계 ---

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Standard {id: 'ieee_802_11ax_hew'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: '1024qam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: '9607mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'mu_mino'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'ofdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: '빔포밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'multi_user'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'mu_mimo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'downlink/uplink_mu_전송_시퀀스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'spatial_reuse'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'bss_color_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'physical_layer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: '빔_포밍'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'mac_layer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Concept {id: 'infra_bss_regular_navs'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Document {id: 'NW_131.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'wifi_6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_11ax_hew'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1024qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '9607mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mu_mino'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빔포밍'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_user'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mu_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'downlink/uplink_mu_전송_시퀀스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spatial_reuse'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bss_color_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'physical_layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빔_포밍'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infra_bss_regular_navs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_131.2: WiFi 6E
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_131.2'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'wifi_6e'})
SET     n.name = 'WiFi 6E',
    n.name_kr = 'WiFi 6E',
    n.domain = 'NW',
    n.aliases = ['WiFi 6E'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'wireless LAN',
    n.name_kr = 'wireless LAN',
    n.domain = 'NW',
    n.aliases = ['wireless LAN'];

MERGE (n:Concept {id: '2_4ghz'})
SET     n.name = '2.4GHz',
    n.name_kr = '2.4GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '5ghz'})
SET     n.name = '5GHz',
    n.name_kr = '5GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '6ghz'})
SET     n.name = '6GHz',
    n.name_kr = '6GHz',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ieee802_11ax'})
SET     n.name = 'IEEE802.11ax',
    n.name_kr = 'IEEE802.11ax',
    n.domain = 'NW',
    n.aliases = ['IEEE802.11ax'];

MERGE (n:Concept {id: '저지연'})
SET     n.name = '저지연',
    n.name_kr = '저지연',
    n.domain = 'NW';

MERGE (n:Technology {id: '5g'})
SET     n.name = '5G',
    n.name_kr = '5G',
    n.domain = 'NW';

MERGE (n:Concept {id: 'phy'})
SET     n.name = 'PHY',
    n.name_kr = 'PHY',
    n.domain = 'NW',
    n.definition = 'OFDMA',
    n.aliases = ['PHY'];

MERGE (n:Concept {id: 'mac'})
SET     n.name = 'MAC',
    n.name_kr = 'MAC',
    n.domain = 'NW',
    n.definition = 'BSS Color',
    n.aliases = ['MAC'];

// --- 관계 ---

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: '2_4ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: '5ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: '6ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Standard {id: 'ieee802_11ax'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: '저지연'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Technology {id: '5g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: 'phy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Concept {id: 'mac'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Document {id: 'NW_131.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'wifi_6e'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_4ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee802_11ax'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저지연'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'phy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_132.1: WiFi 7 (IEEE 802.11be (EHT, Extremely High Throughput)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_132.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Standard {id: 'wifi_7'})
SET     n.name = 'EHT, Extremely High Throughput',
    n.name_kr = 'WiFi 7 (IEEE 802.11be',
    n.domain = 'NW',
    n.aliases = ['EHT, Extremely High Throughput', 'WiFi 7 (IEEE 802.11be'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'wireless LAN',
    n.name_kr = 'wireless LAN',
    n.domain = 'NW',
    n.aliases = ['wireless LAN'];

MERGE (n:Standard {id: 'ieee_802_11be'})
SET     n.name = 'IEEE 802.11be',
    n.name_kr = 'IEEE 802.11be',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.11be'];

MERGE (n:Concept {id: '30gbps'})
SET     n.name = '30Gbps',
    n.name_kr = '30Gbps',
    n.domain = 'NW';

MERGE (n:Concept {id: '2_4ghz'})
SET     n.name = '2.4GHz',
    n.name_kr = '2.4GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '5ghz'})
SET     n.name = '5GHz',
    n.name_kr = '5GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '6ghz'})
SET     n.name = '6GHz',
    n.name_kr = '6GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '최대_속도'})
SET     n.name = '최대 속도',
    n.name_kr = '최대 속도',
    n.domain = 'NW',
    n.definition = '30Gbps 이상';

MERGE (n:Concept {id: '최대_대역폭'})
SET     n.name = '최대 대역폭',
    n.name_kr = '최대 대역폭',
    n.domain = 'NW',
    n.definition = '320Mhz 이상';

MERGE (n:Concept {id: '지원_주파수'})
SET     n.name = '지원 주파수',
    n.name_kr = '지원 주파수',
    n.domain = 'NW',
    n.definition = '2.4Ghz, 5Ghz, 6Ghz';

MERGE (n:Standard {id: '하위_호환성'})
SET     n.name = '하위 호환성',
    n.name_kr = '하위 호환성',
    n.domain = 'NW',
    n.definition = '기존 IEEE 802.11 장비 지원';

MERGE (n:Standard {id: '기술명'})
SET     n.name = '기술명',
    n.name_kr = '기술명',
    n.domain = 'NW',
    n.definition = 'IEEE 802.11 be';

MERGE (n:Concept {id: '멀티플렉싱'})
SET     n.name = '멀티플렉싱',
    n.name_kr = '멀티플렉싱',
    n.domain = 'NW',
    n.definition = 'In-Band Full-Duplex Multiplexing';

MERGE (n:Concept {id: '지연시간'})
SET     n.name = '지연시간',
    n.name_kr = '지연시간',
    n.domain = 'NW',
    n.definition = '5ms 이하';

MERGE (n:Concept {id: 'media_access_control'})
SET     n.name = 'Media Access Control',
    n.name_kr = 'MAC',
    n.domain = 'NW',
    n.definition = '무선공유기(AP)간 다중협력통신',
    n.aliases = ['Media Access Control', 'MAC'];

MERGE (n:Concept {id: '채널당_최대_320mhz_대역폭'})
SET     n.name = '채널당 최대 320Mhz 대역폭',
    n.name_kr = '채널당 최대 320Mhz 대역폭',
    n.domain = 'NW',
    n.definition = '320MHz 대역폭 및 비연속 스펙트럼의 효율적인 이용';

MERGE (n:Concept {id: '16x16_mimo'})
SET     n.name = '16x16 MIMO',
    n.name_kr = '16x16 MIMO',
    n.domain = 'NW',
    n.definition = '최대 16개의 공간 스트림 네트워크 용량 증대 및 늘어난 스트림 오버헤드 개선';

MERGE (n:Concept {id: '하이브리드_arq'})
SET     n.name = '하이브리드 ARQ',
    n.name_kr = '하이브리드 ARQ',
    n.domain = 'NW',
    n.definition = '향상된 복호화 수행을 위한 추가 패리티를 통한 재전송 프로토콜 이용';

MERGE (n:Concept {id: 'physical_layer'})
SET     n.name = 'Physical layer',
    n.name_kr = 'PHY',
    n.domain = 'NW',
    n.definition = '혼합 빔포밍',
    n.aliases = ['Physical layer', 'PHY'];

MERGE (n:Concept {id: '4096_qam'})
SET     n.name = '4096 QAM',
    n.name_kr = '4096 QAM',
    n.domain = 'NW',
    n.definition = '12bit 반송파 변조를 통해 기존 1024 QAM 보다 20% 향상';

// --- 관계 ---

MERGE (a:Technology {id: 'wifi_7'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Standard {id: 'ieee_802_11be'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '30gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '2_4ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '5ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '6ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '최대_속도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '최대_대역폭'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '지원_주파수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Standard {id: '하위_호환성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Standard {id: '기술명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '멀티플렉싱'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '지연시간'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: 'media_access_control'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '채널당_최대_320mhz_대역폭'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '16x16_mimo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '하이브리드_arq'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: 'physical_layer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Concept {id: '4096_qam'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Document {id: 'NW_132.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'wifi_7'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_11be'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '30gbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_4ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_대역폭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원_주파수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '하위_호환성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '기술명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티플렉싱'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지연시간'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'media_access_control'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '채널당_최대_320mhz_대역폭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '16x16_mimo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'physical_layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4096_qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_132.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_132.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_132.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_132.3'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_132.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_132.4'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_133: WPA3
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_133'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wpa3'})
SET     n.name = 'WPA3',
    n.name_kr = 'WPA3',
    n.domain = 'NW',
    n.aliases = ['WPA3'];

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'wireless LAN',
    n.name_kr = 'wireless LAN',
    n.domain = 'NW',
    n.aliases = ['wireless LAN'];

MERGE (n:Technology {id: 'ecc_192bit_mode_적용'})
SET     n.name = 'ECC 192bit mode 적용',
    n.name_kr = 'ECC 192bit mode 적용',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wpa3_enterprise'})
SET     n.name = 'WPA3-Enterprise',
    n.name_kr = 'WPA3-Enterprise',
    n.domain = 'NW',
    n.aliases = ['WPA3-Enterprise'];

MERGE (n:Technology {id: 'wifi_easy_connect'})
SET     n.name = 'WiFi Easy Connect',
    n.name_kr = 'WiFi Easy Connect',
    n.domain = 'NW',
    n.aliases = ['WiFi Easy Connect'];

MERGE (n:Metric {id: 'sha-2의_무결성_검증_사용'})
SET     n.name = 'SHA-2의 무결성 검증 사용',
    n.name_kr = 'SHA-2의 무결성 검증 사용',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Technology {id: 'ecc_192bit_mode_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Concept {id: 'wpa3_enterprise'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Technology {id: 'wifi_easy_connect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Metric {id: 'sha-2의_무결성_검증_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Document {id: 'NW_133'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ecc_192bit_mode_적용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpa3_enterprise'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'wifi_easy_connect'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sha-2의_무결성_검증_사용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_134: 네트워크 고밀도화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_134'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '네트워크_고밀도화'})
SET     n.name = '네트워크 고밀도화',
    n.name_kr = '네트워크 고밀도화',
    n.domain = 'NW';

MERGE (n:Concept {id: '이동통싱기술_공통'})
SET     n.name = '이동통싱기술 공통',
    n.name_kr = '이동통싱기술 공통',
    n.domain = 'NW';

MERGE (n:Technology {id: '5g'})
SET     n.name = '5G',
    n.name_kr = '5G',
    n.domain = 'NW';

MERGE (n:Concept {id: '스몰셀'})
SET     n.name = '스몰셀',
    n.name_kr = '스몰셀',
    n.domain = 'NW';

MERGE (n:Concept {id: '펨토셀'})
SET     n.name = '펨토셀',
    n.name_kr = '펨토셀',
    n.domain = 'NW';

MERGE (n:Concept {id: '망연동'})
SET     n.name = '망연동',
    n.name_kr = '망연동',
    n.domain = 'NW';

MERGE (n:Concept {id: '소형셀/펨토셀'})
SET     n.name = '소형셀/펨토셀',
    n.name_kr = '소형셀/펨토셀',
    n.domain = 'NW',
    n.definition = 'UMA 형';

MERGE (n:Concept {id: 'ims/sip형'})
SET     n.name = 'IMS/SIP형',
    n.name_kr = 'IMS/SIP형',
    n.domain = 'NW',
    n.definition = 'Femtocell 을 Core 망으로 통합하기 위해 ISM을 사용하는 형태 - Femtocell 이 SIP서버와 통신할수 있도록 함';

MERGE (n:Concept {id: 'lub_interaction_이용'})
SET     n.name = 'Lub Interaction 이용',
    n.name_kr = 'Lub Interaction 이용',
    n.domain = 'NW',
    n.definition = 'BSC/RCN(Based Station Controller/Radio Network Controller)를 통하여 Femtocell 기지국과 연결 -lub:기지국과 무선통신망 controller사이의 인터페이스';

MERGE (n:Concept {id: 'concentrator_이용'})
SET     n.name = 'Concentrator 이용',
    n.name_kr = 'Concentrator 이용',
    n.domain = 'NW',
    n.definition = 'Concentrator 이용한 연결 -이동통신 회선망 연결방식';

MERGE (n:Concept {id: '요구기술'})
SET     n.name = '요구기술',
    n.name_kr = '요구기술',
    n.domain = 'NW',
    n.definition = 'Handover';

MERGE (n:Concept {id: '가입자관리'})
SET     n.name = '가입자관리',
    n.name_kr = '가입자관리',
    n.domain = 'NW',
    n.definition = 'Home eNode B의 가입자, 그룹, 인증, 위치관리';

MERGE (n:Concept {id: '고속_데이터_qos_제어기술'})
SET     n.name = '고속 데이터 QoS 제어기술',
    n.name_kr = '고속 데이터 QoS 제어기술',
    n.domain = 'NW',
    n.definition = '유선망과의 접속에 고속데이터 전송서비스';

MERGE (n:Concept {id: '고속전송_간섭완화기술'})
SET     n.name = '고속전송 간섭완화기술',
    n.name_kr = '고속전송 간섭완화기술',
    n.domain = 'NW',
    n.definition = 'Macro-Micro-Pico cell 간의 간섭완화 및 자원분배 기술';

MERGE (n:Concept {id: 'son기술'})
SET     n.name = 'SON기술',
    n.name_kr = 'SON기술',
    n.domain = 'NW',
    n.definition = '자동 설치, 최적화, 치유, 관리, 서비스등 고속통신의 적응 및 방해제거';

// --- 관계 ---

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '이동통싱기술_공통'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Technology {id: '5g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '스몰셀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '펨토셀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '망연동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '소형셀/펨토셀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: 'ims/sip형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: 'lub_interaction_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: 'concentrator_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '요구기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '가입자관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '고속_데이터_qos_제어기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: '고속전송_간섭완화기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Concept {id: 'son기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Document {id: 'NW_134'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '네트워크_고밀도화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통싱기술_공통'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스몰셀'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '펨토셀'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '망연동'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소형셀/펨토셀'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ims/sip형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lub_interaction_이용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concentrator_이용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가입자관리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고속_데이터_qos_제어기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고속전송_간섭완화기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'son기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_135: 펨토셀
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_135'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'femtocell'})
SET     n.name = 'Femtocell',
    n.name_kr = '펨토셀',
    n.domain = 'NW',
    n.aliases = ['펨토셀'];

MERGE (n:Concept {id: '이동통신기술'})
SET     n.name = '이동통신기술',
    n.name_kr = '이동통신기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '피코셀'})
SET     n.name = '피코셀',
    n.name_kr = '피코셀',
    n.domain = 'NW';

MERGE (n:Concept {id: '메트로/마이크로_셀'})
SET     n.name = '메트로/마이크로 셀',
    n.name_kr = '메트로/마이크로 셀',
    n.domain = 'NW';

MERGE (n:Technology {id: '5g_지원_시나리오'})
SET     n.name = '5G 지원 시나리오',
    n.name_kr = '5G 지원 시나리오',
    n.domain = 'NW',
    n.definition = 'Residential';

MERGE (n:Concept {id: 'outdoor_public'})
SET     n.name = 'Suburban/Rural',
    n.name_kr = 'Outdoor Public',
    n.domain = 'NW',
    n.definition = '농지, 산간, 사막, 도로, 해상, 섬 지역 등 실외의 비교적 넓은 지역에 사용자 수가 많지 않은 곳에 낮은 비용으로 서비스를 제공',
    n.aliases = ['Suburban/Rural', 'Outdoor Public'];

MERGE (n:Concept {id: '융합_서비스'})
SET     n.name = '융합 서비스',
    n.name_kr = '융합 서비스',
    n.domain = 'NW',
    n.definition = '스마트 공장';

MERGE (n:Technology {id: '재난_안전'})
SET     n.name = '재난 안전',
    n.name_kr = '재난 안전',
    n.domain = 'NW',
    n.definition = '현재 재난통신망에서는 LTE 스몰셀 활용하나, 차후 5G 스몰셀로 확대';

MERGE (n:Concept {id: 'mec'})
SET     n.name = 'MEC',
    n.name_kr = 'MEC',
    n.domain = 'NW',
    n.definition = '스몰셀을 이용한 엣지 원 박스를 확장하여 엣지컴퓨팅 구성 가능',
    n.aliases = ['MEC'];

MERGE (n:Concept {id: 'son'})
SET     n.name = 'SON',
    n.name_kr = 'SON',
    n.domain = 'NW',
    n.definition = 'Self-configuration',
    n.aliases = ['SON'];

MERGE (n:Concept {id: 'self_optimization'})
SET     n.name = 'Self-optimization',
    n.name_kr = 'Self-optimization',
    n.domain = 'NW',
    n.definition = '인접 기지국간 신호 및 트래픽 유형 정보를 활용하여 기지국 신호 세기를 제어하고 핸드오버 파라미터를 최적화',
    n.aliases = ['Self-optimization'];

MERGE (n:Concept {id: 'handover'})
SET     n.name = 'Handover',
    n.name_kr = 'Handover',
    n.domain = 'NW',
    n.definition = 'Hand-in/hand-out',
    n.aliases = ['Handover'];

MERGE (n:Concept {id: '간섭제어'})
SET     n.name = '간섭제어',
    n.name_kr = '간섭제어',
    n.domain = 'NW',
    n.definition = '자원분배 및 스케줄링';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'NW',
    n.definition = 'Access Control';

MERGE (n:Concept {id: '접속모드_구분'})
SET     n.name = '접속모드 구분',
    n.name_kr = '접속모드 구분',
    n.domain = 'NW',
    n.definition = '개방형';

MERGE (n:Concept {id: '폐쇄형'})
SET     n.name = '폐쇄형',
    n.name_kr = '폐쇄형',
    n.domain = 'NW',
    n.definition = '폐쇄된 가입자군으로 분류된 사용자 만 접속 가능';

MERGE (n:Concept {id: '복합형'})
SET     n.name = '복합형',
    n.name_kr = '복합형',
    n.domain = 'NW',
    n.definition = '개방형 및 폐쇄형의 중간격';

MERGE (n:Concept {id: '핸드오프_구분'})
SET     n.name = '핸드오프 구분',
    n.name_kr = '핸드오프 구분',
    n.domain = 'NW',
    n.definition = '핸드아웃';

MERGE (n:Concept {id: '핸드인'})
SET     n.name = '핸드인',
    n.name_kr = '핸드인',
    n.domain = 'NW',
    n.definition = '매크로셀로부터 펨토셀로 핸드오프';

MERGE (n:Concept {id: '핸드오프'})
SET     n.name = '핸드오프',
    n.name_kr = '핸드오프',
    n.domain = 'NW',
    n.definition = '펨토셀에서 인접 펨토셀로 핸드오프';

// --- 관계 ---

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '이동통신기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '피코셀'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '메트로/마이크로_셀'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '피코셀'})
MERGE (b:Concept {id: '메트로/마이크로_셀'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '피코셀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '메트로/마이크로_셀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Technology {id: '5g_지원_시나리오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: 'outdoor_public'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '융합_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Technology {id: '재난_안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: 'mec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: 'son'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: 'self_optimization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: 'handover'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '간섭제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '접속모드_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '폐쇄형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '복합형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '핸드오프_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '핸드인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Concept {id: '핸드오프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Document {id: 'NW_135'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'femtocell'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피코셀'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메트로/마이크로_셀'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g_지원_시나리오'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'outdoor_public'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '융합_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '재난_안전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mec'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'son'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_optimization'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'handover'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간섭제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속모드_구분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '폐쇄형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복합형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핸드오프_구분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핸드인'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핸드오프'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_136: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_136'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_139: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_139'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_140: SON (Self Organization Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_140'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'self_organization_network'})
SET     n.name = 'Self Organization Network',
    n.name_kr = 'SON',
    n.domain = 'NW',
    n.aliases = ['Self Organization Network', 'SON'];

MERGE (n:Concept {id: '표준_동향'})
SET     n.name = '표준 동향',
    n.name_kr = '표준 동향',
    n.domain = 'NW';

MERGE (n:Concept {id: 'son'})
SET     n.name = 'SON',
    n.name_kr = 'SON',
    n.domain = 'NW',
    n.aliases = ['SON'];

MERGE (n:Concept {id: 'self_configuration'})
SET     n.name = 'Self-Configuration',
    n.name_kr = 'Self-Configuration',
    n.domain = 'NW',
    n.aliases = ['Self-Configuration'];

MERGE (n:Concept {id: 'self_optimization'})
SET     n.name = 'Self Optimization',
    n.name_kr = 'Self Optimization',
    n.domain = 'NW',
    n.aliases = ['Self Optimization'];

MERGE (n:Concept {id: 'self_healing'})
SET     n.name = 'Self-Healing',
    n.name_kr = 'Self-Healing',
    n.domain = 'NW',
    n.aliases = ['Self-Healing'];

MERGE (n:Concept {id: 'self_planning'})
SET     n.name = 'Self Planning',
    n.name_kr = 'Self Planning',
    n.domain = 'NW',
    n.aliases = ['Self Planning'];

// --- 관계 ---

MERGE (a:Concept {id: 'son'})
MERGE (b:Concept {id: '표준_동향'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Concept {id: 'self_configuration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Concept {id: 'self_optimization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Concept {id: 'self_healing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Concept {id: 'self_planning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Document {id: 'NW_140'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'self_organization_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'son'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_configuration'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_optimization'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_healing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_planning'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_141: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_141'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_142: 와이파이 콜링(Wi-Fi Calling) 서비스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_142'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'wi_fi_calling'})
SET     n.name = '와이파이 콜링(Wi-Fi Calling) 서비스',
    n.name_kr = '와이파이 콜링(Wi-Fi Calling) 서비스',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wireless_lan'})
SET     n.name = 'Wireless LAN',
    n.name_kr = 'Wireless LAN',
    n.domain = 'NW',
    n.aliases = ['Wireless LAN'];

MERGE (n:Concept {id: '와이파이_콜링_서비스'})
SET     n.name = '와이파이 콜링 서비스',
    n.name_kr = '와이파이 콜링 서비스',
    n.domain = 'NW';

MERGE (n:Concept {id: 'epc'})
SET     n.name = 'EPC',
    n.name_kr = 'EPC',
    n.domain = 'NW',
    n.aliases = ['EPC'];

MERGE (n:Concept {id: 'ims'})
SET     n.name = 'IMS',
    n.name_kr = 'IMS',
    n.domain = 'NW',
    n.aliases = ['IMS'];

MERGE (n:Concept {id: 'epdg'})
SET     n.name = 'ePDG',
    n.name_kr = 'ePDG',
    n.domain = 'NW',
    n.aliases = ['ePDG'];

MERGE (n:Concept {id: 'm_voip'})
SET     n.name = 'm-VoIP',
    n.name_kr = 'm-VoIP',
    n.domain = 'NW',
    n.aliases = ['m-VoIP'];

MERGE (n:Concept {id: '이동통신'})
SET     n.name = '이동통신',
    n.name_kr = '이동통신',
    n.domain = 'NW';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'NW',
    n.definition = '올레 와이파이 콜';

MERGE (n:Concept {id: '스마트_070'})
SET     n.name = '스마트 070',
    n.name_kr = '스마트 070',
    n.domain = 'NW',
    n.definition = 'LGU+의 스마트070 서비스는 스마트폰으로 Wi-Fi네트워크 환경에서 인터넷전화 서비스를 이용할 수 있는 앱으로 기본료 월 2,000원에 가입자 간 무료로 통화할 수 있으며, 타 통신사 가입자도 이용 가능하다. 단, 미가입자와 통화 시 국내(시내/외) 38원/3분, 휴대폰 11.7원/10초를 과금';

MERGE (n:Concept {id: '국외'})
SET     n.name = '국외',
    n.name_kr = '국외',
    n.domain = 'NW',
    n.definition = '미국의 T-Mobile US';

// --- 관계 ---

MERGE (a:Concept {id: '와이파이_콜링_서비스'})
MERGE (b:Concept {id: 'wireless_lan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: 'epc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: 'ims'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: 'epdg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wi_fi_calling'})
MERGE (b:Concept {id: 'm_voip'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wi_fi_calling'})
MERGE (b:Concept {id: '이동통신'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'm_voip'})
MERGE (b:Concept {id: '이동통신'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: 'm_voip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: '이동통신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: '스마트_070'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Concept {id: '국외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Document {id: 'NW_142'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'wi_fi_calling'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wireless_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '와이파이_콜링_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'epc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ims'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'epdg'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm_voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_070'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국외'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_143: OFDM (Orthogonal Frequency Division Multiplexing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_143'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'orthogonal_frequency_division_multiplexing'})
SET     n.name = 'Orthogonal Frequency Division Multiplexing',
    n.name_kr = 'OFDM',
    n.domain = 'NW',
    n.aliases = ['Orthogonal Frequency Division Multiplexing', 'OFDM'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte'})
SET     n.name = 'LTE',
    n.name_kr = 'LTE',
    n.domain = 'NW',
    n.aliases = ['LTE'];

MERGE (n:Concept {id: 'ofdm'})
SET     n.name = 'OFDM',
    n.name_kr = 'OFDM',
    n.domain = 'NW',
    n.aliases = ['OFDM'];

MERGE (n:Concept {id: '직교'})
SET     n.name = '직교',
    n.name_kr = '직교',
    n.domain = 'NW';

MERGE (n:Concept {id: 'fft'})
SET     n.name = 'FFT',
    n.name_kr = 'FFT',
    n.domain = 'NW',
    n.aliases = ['FFT'];

MERGE (n:Concept {id: 'sub_carrier'})
SET     n.name = 'Sub-carrier',
    n.name_kr = 'Sub-carrier',
    n.domain = 'NW',
    n.aliases = ['Sub-carrier'];

MERGE (n:Concept {id: 'ofdm_tdma'})
SET     n.name = 'OFDM-TDMA',
    n.name_kr = 'OFDM-TDMA',
    n.domain = 'NW',
    n.aliases = ['OFDM-TDMA'];

MERGE (n:Concept {id: 'ofdm_cdma'})
SET     n.name = 'OFDM-CDMA',
    n.name_kr = 'OFDM-CDMA',
    n.domain = 'NW',
    n.aliases = ['OFDM-CDMA'];

MERGE (n:Concept {id: 'ofdm_fdma'})
SET     n.name = 'OFDM-FDMA',
    n.name_kr = 'OFDM-FDMA',
    n.domain = 'NW',
    n.aliases = ['OFDM-FDMA'];

MERGE (n:Concept {id: '직교성'})
SET     n.name = '직교성',
    n.name_kr = '직교성',
    n.domain = 'NW',
    n.definition = '부반송파 파형은 90도의 위상 차이';

MERGE (n:Concept {id: '분할'})
SET     n.name = '분할',
    n.name_kr = '분할',
    n.domain = 'NW',
    n.definition = '보통 수 백 개의 부반송파를 이용';

MERGE (n:Concept {id: '변조_및_다중화'})
SET     n.name = '변조 및 다중화',
    n.name_kr = '변조 및 다중화',
    n.domain = 'NW',
    n.definition = 'FFT (Fast Fourier Transform)';

MERGE (n:Concept {id: 'ofdma'})
SET     n.name = 'OFDMA',
    n.name_kr = 'OFDM/FDMA',
    n.domain = 'NW',
    n.definition = '한 사용자가 모든 유효 부반송파를 독점하는 것이 아니라, 여러 사용자가 가능한 유효 부 반송파의 집합을 서로 분할하여 사용 - 즉, 시간 및 주파수 영역에서 2차원적으로 자원을 할당 . 부 반송파들의 일부 집단을 하나의 집합으로 구성하며, 이를 두고 부 채널(Subchannel)이라고 함 - OFDMA는 매우 유연한 다원접속 방식임',
    n.aliases = ['OFDMA', 'OFDM/FDMA'];

MERGE (n:Concept {id: 'mc_cdma'})
SET     n.name = 'MC-CDMA',
    n.name_kr = 'OFDM/CDMA',
    n.domain = 'NW',
    n.definition = '각 사용자에게 고유의 확산부호 할당, - 모든 사용자가 모든 시간과 부채널을 함께 사용토록 함 - 다른 사용자와의 구별을 위해 직교 또는 이와 유사한 확산부호를 사용',
    n.aliases = ['MC-CDMA', 'OFDM/CDMA'];

// --- 관계 ---

MERGE (a:Technology {id: 'lte'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ofdm'})
MERGE (b:Technology {id: 'lte'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: '직교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'fft'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'sub_carrier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdm_tdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdm_cdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdm_fdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: '직교성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: '분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: '변조_및_다중화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'mc_cdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ofdm'})
MERGE (b:Concept {id: 'ofdma'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Concept {id: 'ofdma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Document {id: 'NW_143'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'orthogonal_frequency_division_multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직교'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fft'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sub_carrier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdm_tdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdm_cdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdm_fdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직교성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변조_및_다중화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ofdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mc_cdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_144: Beamforming
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_144'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'beamforming'})
SET     n.name = 'Beamforming',
    n.name_kr = 'Beamforming',
    n.domain = 'NW',
    n.aliases = ['Beamforming'];

MERGE (n:Concept {id: '이동통신기술'})
SET     n.name = '이동통신기술',
    n.name_kr = '이동통신기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '고정/동적에_따라'})
SET     n.name = '고정/동적에 따라',
    n.name_kr = '고정/동적에 따라',
    n.domain = 'NW',
    n.definition = '고정형 빔 포밍';

MERGE (n:Concept {id: '적응형_빔_포밍'})
SET     n.name = '적응형 빔 포밍',
    n.name_kr = '적응형 빔 포밍',
    n.domain = 'NW',
    n.definition = '스마트 안테나/MIMO 등';

MERGE (n:Concept {id: '구현_방식에_따라'})
SET     n.name = '구현 방식에 따라',
    n.name_kr = '구현 방식에 따라',
    n.domain = 'NW',
    n.definition = '단일 안테나에 의한 구현';

MERGE (n:Concept {id: '배열_안테나에_의한_구현'})
SET     n.name = '배열 안테나에 의한 구현',
    n.name_kr = '배열 안테나에 의한 구현',
    n.domain = 'NW',
    n.definition = '2 이상의 안테나 소자들을 동시에 사용하여 지향성을 높임';

MERGE (n:Concept {id: 'array_gain'})
SET     n.name = 'Array Gain',
    n.name_kr = '어레이 이득',
    n.domain = 'NW',
    n.definition = '채널상태 정보에 따라 여러 송신기 중 가장 이득이 높은 채널 송신기로 송신하는 등 채널 정보를 알고서 공간 신호처리를 통해, 다중 채널로 전송되는 신호 중 원하는 수신 신호의 SNR를 최대화 가능 - 전송채널 상태 정보(CSI)의 송신기 쪽으로 귀환되는지 여부에 따라, 개루프 방식/폐루프 방식으로 구분',
    n.aliases = ['Array Gain', '어레이 이득'];

// --- 관계 ---

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: '이동통신기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: '고정/동적에_따라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: '적응형_빔_포밍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: '구현_방식에_따라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: '배열_안테나에_의한_구현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Concept {id: 'array_gain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Document {id: 'NW_144'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'beamforming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정/동적에_따라'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적응형_빔_포밍'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현_방식에_따라'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배열_안테나에_의한_구현'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'array_gain'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 390개
// 관계: 813개
// ================================================================