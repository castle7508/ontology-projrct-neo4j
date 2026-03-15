// ================================================================
// NW 도메인 (NW_051 ~ NW_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_038.2: QUIC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_038.2'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'quic'})
SET     n.name = 'QUIC',
    n.name_kr = 'QUIC',
    n.domain = 'NW',
    n.aliases = ['QUIC'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp_대신에_udp_사용'})
SET     n.name = 'TCP 대신에 UDP 사용',
    n.name_kr = 'TCP 대신에 UDP 사용',
    n.domain = 'NW';

MERGE (n:Concept {id: '0_rtt'})
SET     n.name = '0 RTT',
    n.name_kr = '0 RTT',
    n.domain = 'NW';

MERGE (n:Technology {id: '보안성_향상'})
SET     n.name = '보안성 향상',
    n.name_kr = '보안성 향상',
    n.domain = 'NW',
    n.definition = 'TLS 적용';

MERGE (n:Concept {id: '유연한_기능_제공'})
SET     n.name = '유연한 기능 제공',
    n.name_kr = '유연한 기능 제공',
    n.domain = 'NW',
    n.definition = '흐름제어';

MERGE (n:Concept {id: '전송속도_향상'})
SET     n.name = '전송속도 향상',
    n.name_kr = '전송속도 향상',
    n.domain = 'NW',
    n.definition = 'HOL 블로킹 문제 해결';

MERGE (n:Concept {id: '연결_설정'})
SET     n.name = '연결 설정',
    n.name_kr = '연결 설정',
    n.domain = 'NW',
    n.definition = 'QUIC Handshake';

MERGE (n:Technology {id: '혼잡_제어'})
SET     n.name = '혼잡 제어',
    n.name_kr = '혼잡 제어',
    n.domain = 'NW',
    n.definition = 'TCP Cubic 적용';

MERGE (n:Concept {id: '흐름_제어'})
SET     n.name = '흐름 제어',
    n.name_kr = '흐름 제어',
    n.domain = 'NW',
    n.definition = '전진 오류 수정(FEC)';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'NW',
    n.definition = '패킷 암호화';

// --- 관계 ---

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Technology {id: 'tcp_대신에_udp_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '0_rtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Technology {id: '보안성_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '유연한_기능_제공'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '전송속도_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '연결_설정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Technology {id: '혼잡_제어'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '흐름_제어'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Document {id: 'NW_038.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_대신에_udp_사용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0_rtt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안성_향상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연한_기능_제공'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송속도_향상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결_설정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '혼잡_제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '흐름_제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_038.3: HTTP/3
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_038.3'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'http_3'})
SET     n.name = 'HTTP/3',
    n.name_kr = 'HTTP/3',
    n.domain = 'NW',
    n.aliases = ['HTTP/3'];

MERGE (n:Concept {id: '디지털_네트워크'})
SET     n.name = '디지털 네트워크',
    n.name_kr = '디지털 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'osi_7_layers'})
SET     n.name = 'OSI 7 Layers',
    n.name_kr = 'OSI 7 Layers',
    n.domain = 'NW',
    n.aliases = ['OSI 7 Layers'];

MERGE (n:Technology {id: 'udp'})
SET     n.name = 'UDP',
    n.name_kr = 'UDP',
    n.domain = 'NW',
    n.aliases = ['UDP'];

MERGE (n:Technology {id: 'tls_1_3'})
SET     n.name = 'TLS 1.3',
    n.name_kr = 'TLS 1.3',
    n.domain = 'NW',
    n.aliases = ['TLS 1.3'];

MERGE (n:Concept {id: '1_rtt'})
SET     n.name = '1-RTT',
    n.name_kr = '1-RTT',
    n.domain = 'NW';

MERGE (n:Concept {id: '0_rtt'})
SET     n.name = '0-RTT',
    n.name_kr = '0-RTT',
    n.domain = 'NW';

MERGE (n:Concept {id: 'quic'})
SET     n.name = 'QUIC',
    n.name_kr = 'QUIC',
    n.domain = 'NW',
    n.aliases = ['QUIC'];

MERGE (n:Concept {id: 'hol블로킹_해결'})
SET     n.name = 'HOL블로킹 해결',
    n.name_kr = 'HOL블로킹 해결',
    n.domain = 'NW';

MERGE (n:Technology {id: '전송_방식'})
SET     n.name = '전송 방식',
    n.name_kr = '전송 방식',
    n.domain = 'NW',
    n.definition = 'QUIC 전송 프로토콜과 HTTP/ 2와 유사한 내부 프레이밍 계층 사용 - QUIC는 프로토콜 협상, Stream 기반 Multiplexing 및 흐름 제어를 제공';

MERGE (n:Technology {id: 'frame'})
SET     n.name = 'frame',
    n.name_kr = 'frame',
    n.domain = 'NW',
    n.definition = '각 Stream 내에서 HTTP/3 통신의 기본 단위는 Frame임 - HTTP 요청 및 응답 기초 형성 - HEADERS 및 DATA 프레임 - 스트림 간 전체 연결 및 관계 관리 - SETTINGS, PRIORITY 및 GOAWAY 프레임',
    n.aliases = ['frame'];

MERGE (n:Concept {id: '요청_다중화'})
SET     n.name = '요청 다중화',
    n.name_kr = '요청 다중화',
    n.domain = 'NW',
    n.definition = 'QUIC Stream 추상화를 사용하여 수행되며 각 요청 및 응답은 단일 QUIC Stream을 소비 - 개별 Stream은 서로 독립적이므로 차단되거나 패킷 손실이 있는 하나의 Stream이 다른 Stream의 진행을 방해하지 않음';

MERGE (n:Technology {id: 'server_push'})
SET     n.name = 'Server Push',
    n.name_kr = '서버 푸시',
    n.domain = 'NW',
    n.definition = 'HTTP/2 에서 소개된 상호작용 모드로 , 서버가 표시된 요청을 하는 클라이언트를 예상하여 클라이언트로 요청(잠재적인 대기시간 증가에 대비하여 네트워크 사용을 차단) - PUSH_PROMISE, DUPLICATE_PUSH, MAX_PUSH_ID 및 CANCEL_PUSH와 같은 Server Push를 관리하는 데 여러 HTTP/3 Frame이 사용',
    n.aliases = ['Server Push', '서버 푸시'];

MERGE (n:Technology {id: '요청_및_응답_헤더_압축'})
SET     n.name = '요청 및 응답 헤더 압축',
    n.name_kr = '요청 및 응답 헤더 압축',
    n.domain = 'NW',
    n.definition = 'HTTP/2에서처럼 전송을 위해 압축하지만 HPACK은 압축 헤더 블록의 순서대로 전송 (QUIC에서 제공하지 않는 보증)에 의존 하기 때문에 HTTP/3은 HPACK을 QPACK으로 변경 - QPACK은 별도의 단방향 Stream을 사용하여 헤더 테이블 상태를 수정하고 추적하며, 헤더 블록은 수정하지 않고 테이블 상태를 참조';

MERGE (n:Technology {id: '0-rtt_및_1-rtt_연결'})
SET     n.name = '0-RTT 및 1-RTT 연결',
    n.name_kr = '0-RTT 및 1-RTT 연결',
    n.domain = 'NW',
    n.definition = 'UDP 기반 이전 연결의 캐시된 자격 증명을 사용';

MERGE (n:Concept {id: 'hol_블로킹_해결'})
SET     n.name = 'HOL 블로킹 해결',
    n.name_kr = 'HOL 블로킹 해결',
    n.domain = 'NW',
    n.definition = '다중 Stream 제공 및 개별 Stream 내에서 흐름 제어 제공-';

MERGE (n:Concept {id: '멀티스트리밍_전송'})
SET     n.name = '멀티스트리밍 전송',
    n.name_kr = '멀티스트리밍 전송',
    n.domain = 'NW',
    n.definition = '멀티 플렉싱된 스트림을 제공 통해 트래픽 손실 최소화';

MERGE (n:Concept {id: 'sack'})
SET     n.name = 'SACK',
    n.name_kr = 'Selective ACK',
    n.domain = 'NW',
    n.definition = '오류 발생시 재전송 통해 에러를 복구하는 ARQ 방식 사용',
    n.aliases = ['SACK', 'Selective ACK'];

MERGE (n:Concept {id: 'seamless_connection'})
SET     n.name = 'Seamless Connection',
    n.name_kr = 'Seamless Connection',
    n.domain = 'NW',
    n.definition = 'Connection ID사용 IP, Port 변경 시 에도 지속적 연결 유지',
    n.aliases = ['Seamless Connection'];

MERGE (n:Concept {id: '보안성_강화'})
SET     n.name = '보안성 강화',
    n.name_kr = '보안성 강화',
    n.domain = 'NW',
    n.definition = '두 번째 패킷부터 0-RTT, 1개의 패킷 전달을 통해 암호화된 연결 설정함';

MERGE (n:Concept {id: '최초_연결'})
SET     n.name = '최초 연결',
    n.name_kr = '최초 연결',
    n.domain = 'NW',
    n.definition = '1-RTT Connection';

MERGE (n:Concept {id: '연결_유지'})
SET     n.name = '연결 유지',
    n.name_kr = '연결 유지',
    n.domain = 'NW',
    n.definition = '0-RTT Connection';

MERGE (n:Concept {id: '성능_향상'})
SET     n.name = '성능 향상',
    n.name_kr = '성능 향상',
    n.domain = 'NW',
    n.definition = '멀티스트리밍 전송';

MERGE (n:Technology {id: '보안_기능'})
SET     n.name = '보안 기능',
    n.name_kr = '보안 기능',
    n.domain = 'NW',
    n.definition = 'TLS 기본 적용';

MERGE (n:Concept {id: 'ip_변조_및_재생_공격_방지'})
SET     n.name = 'IP 변조 및 재생 공격 방지',
    n.name_kr = 'IP 변조 및 재생 공격 방지',
    n.domain = 'NW',
    n.definition = 'Source Address Token을 발급 출발지 IP 변조 및 재생 공격 대한 검증을 수행';

MERGE (n:Technology {id: 'http_3_0'})
SET     n.name = 'HTTP 3.0',
    n.name_kr = 'HTTP 3.0',
    n.domain = 'NW',
    n.aliases = ['HTTP 3.0'];

MERGE (n:Technology {id: 'http_2_0'})
SET     n.name = 'HTTP 2.0',
    n.name_kr = 'HTTP 2.0',
    n.domain = 'NW',
    n.aliases = ['HTTP 2.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Concept {id: '디지털_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'tls_1_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '1_rtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '0_rtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'quic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'hol블로킹_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: '전송_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'frame'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '요청_다중화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'server_push'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: '요청_및_응답_헤더_압축'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: '0-rtt_및_1-rtt_연결'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'hol_블로킹_해결'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '멀티스트리밍_전송'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'sack'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'seamless_connection'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '보안성_강화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '최초_연결'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '연결_유지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: '성능_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: '보안_기능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Concept {id: 'ip_변조_및_재생_공격_방지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3_0'})
MERGE (b:Technology {id: 'http_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'http_3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'http_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3_0'})
MERGE (b:Technology {id: 'http_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'http_3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Technology {id: 'http_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Document {id: 'NW_038.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'http_3'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tls_1_3'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_rtt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0_rtt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quic'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hol블로킹_해결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '전송_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'frame'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요청_다중화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'server_push'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '요청_및_응답_헤더_압축'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '0-rtt_및_1-rtt_연결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hol_블로킹_해결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티스트리밍_전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'seamless_connection'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안성_강화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최초_연결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결_유지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_향상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안_기능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_변조_및_재생_공격_방지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_3_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_2_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_039: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_039'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_040: TCP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_040'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'tcp'})
SET     n.name = 'TCP',
    n.name_kr = 'TCP',
    n.domain = 'NW',
    n.aliases = ['TCP'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'isn'})
SET     n.name = 'ISN',
    n.name_kr = 'ISN',
    n.domain = 'NW',
    n.aliases = ['ISN'];

MERGE (n:Technology {id: 'tcp_half_open'})
SET     n.name = 'TCP Half Open',
    n.name_kr = 'TCP Half Open',
    n.domain = 'NW',
    n.aliases = ['TCP Half Open'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '초기연결시도'})
SET     n.name = '초기연결시도',
    n.name_kr = '초기연결시도',
    n.domain = 'NW',
    n.definition = 'Client는 접속하고자 하는 서버의 포트번호와 클라이언트의 초기순서번호(Init Sequence Number)를 지정한 SYN 세그먼트를 전송';

MERGE (n:Concept {id: '서버응답'})
SET     n.name = '서버응답',
    n.name_kr = '서버응답',
    n.domain = 'NW',
    n.definition = '서버의 초기순서번호(ISN)를 포함한 자신의 SYN세그먼트로 응답 - 클라이언트의 ISN + 1 ACK를 보냄으로써 클라이언트의 SYN에 확인 응답';

MERGE (n:Concept {id: '클라이언트_응답'})
SET     n.name = '클라이언트 응답',
    n.name_kr = '클라이언트 응답',
    n.domain = 'NW',
    n.definition = '클라이언트는 서버로부터 보내온 SYN에 대하여 서버의 ISN + 1 ACK로 확인응답을 전송';

MERGE (n:Concept {id: '연결종료_요청'})
SET     n.name = '연결종료 요청',
    n.name_kr = '연결종료 요청',
    n.domain = 'NW',
    n.definition = 'client가 Server에게 연결 종료를 요청';

MERGE (n:Concept {id: '서버_ack_신호'})
SET     n.name = '서버 ACK 신호',
    n.name_kr = '서버 ACK 신호',
    n.domain = 'NW',
    n.definition = '서버는 바로 종료하지 않고 ACK를 전송해 CLOSE_WAIT 상태로 넘어감';

MERGE (n:Concept {id: '서버_fin_신호'})
SET     n.name = '서버 FIN 신호',
    n.name_kr = '서버 FIN 신호',
    n.domain = 'NW',
    n.definition = '잔여 작업 종료후 서버는 FIN 신호를 보내고 연결 종료 시도';

MERGE (n:Concept {id: '클라이언트_ack'})
SET     n.name = '클라이언트 ACK',
    n.name_kr = '클라이언트 ACK',
    n.domain = 'NW',
    n.definition = '클라이언트는 서버의의 FIN을 잘 받았다는 ACK를 서버에게 보내고, 클라이언트의 ACK를 받으면 서버는 종료';

MERGE (n:Concept {id: '상태'})
SET     n.name = '상태',
    n.name_kr = '상태',
    n.domain = 'NW',
    n.definition = 'Fin-WAIT-1';

MERGE (n:Concept {id: 'fin_wait_2'})
SET     n.name = 'Fin-WAIT-2',
    n.name_kr = 'Fin-WAIT-2',
    n.domain = 'NW',
    n.definition = '클라이언트가 서버로부터 ACK 신호 수신 후 서버로부터 Fin 신호(연결을 종료할 준비가 됐다는 신호)대기중인 상태',
    n.aliases = ['Fin-WAIT-2'];

MERGE (n:Concept {id: 'time_wait'})
SET     n.name = 'TIME-WAIT',
    n.name_kr = 'TIME-WAIT',
    n.domain = 'NW',
    n.definition = '클라이언트가 FIN신호 수신 후, 서버에 ACK 신호 전송한 상태',
    n.aliases = ['TIME-WAIT'];

MERGE (n:Concept {id: 'closed'})
SET     n.name = 'CLOSED',
    n.name_kr = 'CLOSED',
    n.domain = 'NW',
    n.definition = '서버와 클라이언트의 연결이 종료된 상태',
    n.aliases = ['CLOSED'];

MERGE (n:Technology {id: 'udp'})
SET     n.name = 'UDP',
    n.name_kr = 'UDP',
    n.domain = 'NW',
    n.aliases = ['UDP'];

// --- 관계 ---

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: 'isn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'tcp_half_open'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '초기연결시도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '서버응답'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '클라이언트_응답'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '연결종료_요청'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '서버_ack_신호'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '서버_fin_신호'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '클라이언트_ack'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: '상태'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: 'fin_wait_2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: 'time_wait'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Concept {id: 'closed'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Document {id: 'NW_040'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_half_open'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기연결시도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버응답'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트_응답'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결종료_요청'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버_ack_신호'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버_fin_신호'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트_ack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fin_wait_2'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_wait'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'closed'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_041: UDP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_041'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'udp'})
SET     n.name = 'UDP',
    n.name_kr = 'UDP',
    n.domain = 'NW',
    n.aliases = ['UDP'];

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'connectionless'})
SET     n.name = 'Connectionless',
    n.name_kr = 'Connectionless',
    n.domain = 'NW',
    n.aliases = ['Connectionless'];

MERGE (n:Concept {id: '무관계_서비스'})
SET     n.name = '무관계 서비스',
    n.name_kr = '무관계 서비스',
    n.domain = 'NW';

MERGE (n:Concept {id: '빠른_전송_속도'})
SET     n.name = '빠른 전송 속도',
    n.name_kr = '빠른 전송 속도',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp'})
SET     n.name = 'TCP',
    n.name_kr = 'TCP',
    n.domain = 'NW',
    n.aliases = ['TCP'];

// --- 관계 ---

MERGE (a:Technology {id: 'udp'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Concept {id: 'connectionless'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Concept {id: '무관계_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Concept {id: '빠른_전송_속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Technology {id: 'tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Technology {id: 'tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Technology {id: 'tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Document {id: 'NW_041'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'connectionless'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무관계_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빠른_전송_속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_042: MPTCP (Multipath TCP)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_042'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'multipath_tcp'})
SET     n.name = 'Multipath TCP',
    n.name_kr = 'MPTCP',
    n.domain = 'NW',
    n.aliases = ['Multipath TCP', 'MPTCP'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mptcp'})
SET     n.name = 'MPTCP',
    n.name_kr = 'MPTCP',
    n.domain = 'NW',
    n.aliases = ['MPTCP'];

MERGE (n:Concept {id: '다중경로'})
SET     n.name = '다중경로',
    n.name_kr = '다중경로',
    n.domain = 'NW';

MERGE (n:Technology {id: 'sub_flow_tcp'})
SET     n.name = 'Sub-flow TCP',
    n.name_kr = 'Sub-flow TCP',
    n.domain = 'NW',
    n.aliases = ['Sub-flow TCP'];

MERGE (n:Concept {id: '멀티_ip'})
SET     n.name = '멀티 IP',
    n.name_kr = '멀티 IP',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mptcp_proxy'})
SET     n.name = 'MPTCP Proxy',
    n.name_kr = 'MPTCP Proxy',
    n.domain = 'NW',
    n.aliases = ['MPTCP Proxy'];

MERGE (n:Concept {id: 'mp_capable'})
SET     n.name = 'MP_CAPABLE',
    n.name_kr = 'MP_CAPABLE',
    n.domain = 'NW';

MERGE (n:Concept {id: 'sctp'})
SET     n.name = 'SCTP',
    n.name_kr = 'SCTP',
    n.domain = 'NW',
    n.aliases = ['SCTP'];

// --- 관계 ---

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mptcp'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: '다중경로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Technology {id: 'sub_flow_tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: '멀티_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: 'mptcp_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: 'mp_capable'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mptcp'})
MERGE (b:Concept {id: 'sctp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: 'mptcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Concept {id: 'sctp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Document {id: 'NW_042'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'multipath_tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mptcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중경로'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sub_flow_tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티_ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mptcp_proxy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mp_capable'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sctp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_043: SCTP(Stream Control Transmission Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_043'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'stream_control_transmission_protocol'})
SET     n.name = 'Stream Control Transmission Protocol',
    n.name_kr = 'SCTP',
    n.domain = 'NW',
    n.aliases = ['Stream Control Transmission Protocol', 'SCTP'];

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: '전송계층'})
SET     n.name = '전송계층',
    n.name_kr = '전송계층',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp+udp'})
SET     n.name = 'TCP+UDP',
    n.name_kr = 'TCP+UDP',
    n.domain = 'NW';

MERGE (n:Concept {id: 'multi_homing'})
SET     n.name = '멀티호밍',
    n.name_kr = '멀티호밍',
    n.domain = 'NW';

MERGE (n:Concept {id: 'multi_streaming'})
SET     n.name = '멀티스트리밍',
    n.name_kr = '멀티스트리밍',
    n.domain = 'NW';

MERGE (n:Concept {id: 'sack'})
SET     n.name = 'SACK',
    n.name_kr = 'SACK',
    n.domain = 'NW',
    n.aliases = ['SACK'];

MERGE (n:Concept {id: 'heatbeat'})
SET     n.name = 'HEATBEAT',
    n.name_kr = 'HEATBEAT',
    n.domain = 'NW',
    n.aliases = ['HEATBEAT'];

// --- 관계 ---

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Concept {id: '전송계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Technology {id: 'tcp+udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Concept {id: 'multi_homing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Concept {id: 'multi_streaming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Concept {id: 'sack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Concept {id: 'heatbeat'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Document {id: 'NW_043'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stream_control_transmission_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp+udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_homing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_streaming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heatbeat'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_047: IP(인터넷 프로토콜)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_047'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ip'})
SET     n.name = 'IP',
    n.name_kr = '인터넷 프로토콜',
    n.domain = 'NW',
    n.aliases = ['IP', '인터넷 프로토콜'];

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'a~d_class'})
SET     n.name = 'A~D Class',
    n.name_kr = 'A~D Class',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mac_address'})
SET     n.name = 'MAC Address',
    n.name_kr = 'MAC Address',
    n.domain = 'NW',
    n.aliases = ['MAC Address'];

MERGE (n:Concept {id: 'arp'})
SET     n.name = 'ARP',
    n.name_kr = 'ARP',
    n.domain = 'NW',
    n.aliases = ['ARP'];

MERGE (n:Concept {id: 'dns'})
SET     n.name = 'DNS',
    n.name_kr = 'DNS',
    n.domain = 'NW',
    n.aliases = ['DNS'];

MERGE (n:Concept {id: 'ip_address'})
SET     n.name = 'IP address',
    n.name_kr = 'IP address',
    n.domain = 'NW',
    n.aliases = ['IP address'];

MERGE (n:Concept {id: 'physical_address)'})
SET     n.name = 'Physical address)',
    n.name_kr = 'Physical address)',
    n.domain = 'NW';

MERGE (n:Concept {id: '주소공간_고갈'})
SET     n.name = '주소공간 고갈',
    n.name_kr = '주소공간 고갈',
    n.domain = 'NW',
    n.definition = '32비트의 체계를 가지고 있어, 주소의 수량 대한 한계가 있음 국내의 IPv4 할당은 약 79% 이고, 2011년 9월에 신규 할당이 중단됨';

MERGE (n:Technology {id: '암호화와_인증기능_미_제공'})
SET     n.name = '암호화와 인증기능 미 제공',
    n.name_kr = '암호화와 인증기능 미 제공',
    n.domain = 'NW',
    n.definition = '보안과 인증에 대한 미 제공 IPSec 등의 보안 기술을 적용에 많은 노력 필요';

MERGE (n:Concept {id: '이동성에_대한_지원_미비'})
SET     n.name = '이동성에 대한 지원 미비',
    n.name_kr = '이동성에 대한 지원 미비',
    n.domain = 'NW',
    n.definition = '이동성에 대한 별도의 설계가 없기 때문에 Mobile IP를 지원하지 않음 Mobile IP 지원을 위한 삼각 라우팅 기법의 한계점';

MERGE (n:Concept {id: '품질관리_미비'})
SET     n.name = '품질관리 미비',
    n.name_kr = '품질관리 미비',
    n.domain = 'NW',
    n.definition = '최소지연과 자원예약 등 QoS 등의 품질관리가 불가능함';

MERGE (n:Concept {id: '웹캐스팅의_한계'})
SET     n.name = '웹캐스팅의 한계',
    n.name_kr = '웹캐스팅의 한계',
    n.domain = 'NW',
    n.definition = 'AnyCast, UniCast 등의 지원이 불가능';

MERGE (n:Concept {id: 'ipv4'})
SET     n.name = 'IPv4',
    n.name_kr = 'IPv4',
    n.domain = 'NW',
    n.aliases = ['IPv4'];

MERGE (n:Concept {id: 'ipv6'})
SET     n.name = 'IPv6',
    n.name_kr = 'IPv6',
    n.domain = 'NW',
    n.aliases = ['IPv6'];

// --- 관계 ---

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'a~d_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'mac_address'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'arp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'dns'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'ip_address'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'physical_address)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: '주소공간_고갈'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Technology {id: '암호화와_인증기능_미_제공'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: '이동성에_대한_지원_미비'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: '품질관리_미비'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: '웹캐스팅의_한계'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ipv4'})
MERGE (b:Concept {id: 'ipv6'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'ipv4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Concept {id: 'ipv6'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Document {id: 'NW_047'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'a~d_class'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_address'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dns'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_address'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'physical_address)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소공간_고갈'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '암호화와_인증기능_미_제공'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동성에_대한_지원_미비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리_미비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹캐스팅의_한계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipv4'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipv6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_048: Subnetting
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_048'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'subnetting'})
SET     n.name = 'Subnetting',
    n.name_kr = 'Subnetting',
    n.domain = 'NW',
    n.aliases = ['Subnetting'];

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'subnetting'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'subnetting'})
MERGE (b:Document {id: 'NW_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'subnetting'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_049: Supernetting
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_049'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'supernetting'})
SET     n.name = 'Supernetting',
    n.name_kr = 'Supernetting',
    n.domain = 'NW',
    n.aliases = ['Supernetting'];

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'subnetting의_반대_개념'})
SET     n.name = 'Subnetting의 반대 개념',
    n.name_kr = 'Subnetting의 반대 개념',
    n.domain = 'NW';

MERGE (n:Concept {id: '클래스'})
SET     n.name = '클래스',
    n.name_kr = '클래스',
    n.domain = 'NW',
    n.definition = '192.0.0.0~223.255.255.255에 포함되어 C 클래스에 해당';

MERGE (n:Concept {id: 'nw_id'})
SET     n.name = 'NW ID',
    n.name_kr = 'NW ID',
    n.domain = 'NW',
    n.definition = 'C 클래스는 상위 24bit(/24)가 NW bit',
    n.aliases = ['NW ID'];

MERGE (n:Concept {id: 'subnet_mask'})
SET     n.name = 'Subnet Mask',
    n.name_kr = 'Subnet Mask',
    n.domain = 'NW',
    n.definition = '255.255.255.0',
    n.aliases = ['Subnet Mask'];

MERGE (n:Concept {id: '유효_ip_호스트_수'})
SET     n.name = '유효 IP 호스트 수',
    n.name_kr = '유효 IP 호스트 수',
    n.domain = 'NW',
    n.definition = '[192.168.4.0], [192.168.5.0], [192.168.6.0], [192.168.7.0] 각각의 유효 IP 호스트 수는 2^8-2=254개';

MERGE (n:Concept {id: 'nw_id_도출'})
SET     n.name = 'NW ID 도출',
    n.name_kr = 'NW ID 도출',
    n.domain = 'NW',
    n.definition = '공통bit도출';

MERGE (n:Concept {id: '최종_nw_id'})
SET     n.name = '최종 NW ID',
    n.name_kr = '최종 NW ID',
    n.domain = 'NW',
    n.definition = '첫 22bit을 제외한 나머지 10bit는 0으로 set되어 192.168.4.0이 최종 NW ID (192.16.4.0 = 11000000.10101000.00000100.00000000)';

MERGE (n:Concept {id: 'subnet_mask_도출'})
SET     n.name = 'Subnet Mask 도출',
    n.name_kr = 'Subnet Mask 도출',
    n.domain = 'NW',
    n.definition = 'NW ID 식별';

MERGE (n:Concept {id: '최종_subnet_mask'})
SET     n.name = '최종 Subnet Mask',
    n.name_kr = '최종 Subnet Mask',
    n.domain = 'NW',
    n.definition = '최종 255.255.252.0이 슈퍼네팅된 subnet mask';

MERGE (n:Concept {id: '유효_ip_호스트_수_도출'})
SET     n.name = '유효 IP 호스트 수 도출',
    n.name_kr = '유효 IP 호스트 수 도출',
    n.domain = 'NW',
    n.definition = '호스트 bit 식별';

MERGE (n:Concept {id: '최종_유효_ip호스트_수'})
SET     n.name = '최종 유효 IP호스트 수',
    n.name_kr = '최종 유효 IP호스트 수',
    n.domain = 'NW',
    n.definition = '192.168.4.0~255(256) 192.168.5.0~255(256) 192.168.6.0~255(256) 192.168.7.0~255(256) 2^10 -2 = 1022개(256*4-2)가 최종 유효 IP호스트 개수';

// --- 관계 ---

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: 'subnetting의_반대_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '클래스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: 'nw_id'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: 'subnet_mask'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '유효_ip_호스트_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: 'nw_id_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '최종_nw_id'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: 'subnet_mask_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '최종_subnet_mask'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '유효_ip_호스트_수_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Concept {id: '최종_유효_ip호스트_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Document {id: 'NW_049'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'supernetting'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subnetting의_반대_개념'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클래스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw_id'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subnet_mask'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효_ip_호스트_수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw_id_도출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종_nw_id'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subnet_mask_도출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종_subnet_mask'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효_ip_호스트_수_도출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종_유효_ip호스트_수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_050: CIDR(Classless inter-domain routing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_050'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'classless_inter_domain_routing'})
SET     n.name = 'Classless inter-domain routing',
    n.name_kr = 'CIDR',
    n.domain = 'NW',
    n.aliases = ['Classless inter-domain routing', 'CIDR'];

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: '슈퍼네팅'})
SET     n.name = '슈퍼네팅 (사수라고 암기)',
    n.name_kr = '슈퍼네팅 (사수라고 암기)',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'classless_inter_domain_routing'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'classless_inter_domain_routing'})
MERGE (b:Concept {id: '슈퍼네팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'classless_inter_domain_routing'})
MERGE (b:Document {id: 'NW_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'classless_inter_domain_routing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슈퍼네팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_051: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_051'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_052: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_052'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_053: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_053'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_054: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_054'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_055: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_055'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_056: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_056'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_057: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_057'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_058: ICMPv6
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_058'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'icmpv6'})
SET     n.name = 'ICMPv6',
    n.name_kr = 'ICMPv6',
    n.domain = 'NW',
    n.aliases = ['ICMPv6'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ipv6'})
SET     n.name = 'IPv6',
    n.name_kr = 'IPv6',
    n.domain = 'NW',
    n.aliases = ['IPv6'];

// --- 관계 ---

MERGE (a:Concept {id: 'ipv6'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'icmpv6'})
MERGE (b:Concept {id: 'ipv6'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'icmpv6'})
MERGE (b:Document {id: 'NW_058'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'icmpv6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipv6'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_059: IPv6의 보안 문제점 해결방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_059'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ipv6의_보안_문제점_해결방안'})
SET     n.name = 'IPv6의 보안 문제점 해결방안',
    n.name_kr = 'IPv6의 보안 문제점 해결방안',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'ipv6의_보안_문제점_해결방안'})
MERGE (b:Document {id: 'NW_059'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ipv6의_보안_문제점_해결방안'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_060: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_060'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_061: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_061'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_062: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_062'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_063: Web Socket
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_063'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'web_socket'})
SET     n.name = 'Web Socket',
    n.name_kr = 'Web Socket',
    n.domain = 'NW',
    n.aliases = ['Web Socket'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'NW';

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'NW',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '실시간'})
SET     n.name = '실시간',
    n.name_kr = '실시간',
    n.domain = 'NW';

MERGE (n:Concept {id: '양방향'})
SET     n.name = '양방향',
    n.name_kr = '양방향',
    n.domain = 'NW';

MERGE (n:Concept {id: 'html5_api'})
SET     n.name = 'HTML5 API',
    n.name_kr = 'HTML5 API',
    n.domain = 'NW',
    n.aliases = ['HTML5 API'];

MERGE (n:Concept {id: 'websoecket_send'})
SET     n.name = 'WebSoecket.send',
    n.name_kr = 'WebSoecket.send',
    n.domain = 'NW',
    n.aliases = ['WebSoecket.send'];

MERGE (n:Concept {id: 'websocket_onmessage'})
SET     n.name = 'WebSocket.onMessage',
    n.name_kr = 'WebSocket.onMessage',
    n.domain = 'NW',
    n.aliases = ['WebSocket.onMessage'];

MERGE (n:Concept {id: '웹_브라우저'})
SET     n.name = '웹 브라우저',
    n.name_kr = '웹 브라우저',
    n.domain = 'NW',
    n.definition = 'WebSocket';

MERGE (n:Concept {id: 'send'})
SET     n.name = 'send',
    n.name_kr = 'send',
    n.domain = 'NW',
    n.definition = '데이터송신, 예) wSocket.send("송신 메시지");',
    n.aliases = ['send'];

MERGE (n:Concept {id: 'onmessage'})
SET     n.name = 'onMessage',
    n.name_kr = 'onMessage',
    n.domain = 'NW',
    n.definition = '데이터수신, 예) wSocket.onmessage = function(e);',
    n.aliases = ['onMessage'];

MERGE (n:Concept {id: 'onopen'})
SET     n.name = 'onopen',
    n.name_kr = 'onopen',
    n.domain = 'NW',
    n.definition = '연결설정, 예) wSocket.onopen = function(e){ alert("서버 연결 완료");',
    n.aliases = ['onopen'];

MERGE (n:Concept {id: 'onclose'})
SET     n.name = 'onclose',
    n.name_kr = 'onclose',
    n.domain = 'NW',
    n.definition = '연결해제, 예) wSocket.onclose = function(e){ alert("서버 연결 종료");',
    n.aliases = ['onclose'];

MERGE (n:Concept {id: '웹서버'})
SET     n.name = '웹서버',
    n.name_kr = '웹서버',
    n.domain = 'NW',
    n.definition = '웹소켓서버';

MERGE (n:Concept {id: 'websocket'})
SET     n.name = 'webSocket',
    n.name_kr = 'webSocket',
    n.domain = 'NW',
    n.aliases = ['webSocket'];

MERGE (n:Technology {id: 'tcp_socket'})
SET     n.name = 'TCP Socket',
    n.name_kr = 'TCP Socket',
    n.domain = 'NW',
    n.aliases = ['TCP Socket'];

MERGE (n:Technology {id: 'http_polling'})
SET     n.name = 'HTTP Polling',
    n.name_kr = 'HTTP Polling',
    n.domain = 'NW',
    n.aliases = ['HTTP Polling'];

MERGE (n:Concept {id: '동작_방식'})
SET     n.name = '동작 방식',
    n.name_kr = '동작 방식',
    n.domain = 'NW',
    n.definition = '일정 주기 간격으로 신규 Connection을 생성, 데이터 요청, 해제 과정을 반복';

MERGE (n:Technology {id: 'http_long_polling'})
SET     n.name = 'HTTP Long Polling',
    n.name_kr = 'HTTP Long Polling',
    n.domain = 'NW',
    n.definition = '클라이언트가 HTTP 요청을 서 버로 전송하면 서버가 이벤트 가 발생했을 때, 데이터를 전송하는 기법',
    n.aliases = ['HTTP Long Polling'];

MERGE (n:Technology {id: 'http_streaming'})
SET     n.name = 'HTTP Streaming',
    n.name_kr = 'HTTP Streaming',
    n.domain = 'NW',
    n.definition = '클라이언트가 HTTP 요청하면 서버는 클라이언트에게 발생 이벤트를 지속 전송하는 방식',
    n.aliases = ['HTTP Streaming'];

// --- 관계 ---

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '실시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '양방향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'html5_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websoecket_send'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websocket_onmessage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '웹_브라우저'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'send'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onmessage'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onopen'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onclose'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '웹서버'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'websocket'})
MERGE (b:Technology {id: 'tcp_socket'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websocket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Technology {id: 'tcp_socket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Technology {id: 'http_polling'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '동작_방식'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Technology {id: 'http_long_polling'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Technology {id: 'http_streaming'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Document {id: 'NW_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5_api'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websoecket_send'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websocket_onmessage'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_브라우저'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'send'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onmessage'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onopen'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onclose'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹서버'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websocket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_socket'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_polling'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_long_polling'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_streaming'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_064: P2P
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_064'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'p2p'})
SET     n.name = 'P2P',
    n.name_kr = 'P2P',
    n.domain = 'NW',
    n.aliases = ['P2P'];

MERGE (n:Concept {id: '기본'})
SET     n.name = '기본',
    n.name_kr = '기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW',
    n.definition = '중앙서버가 다운되어도 네트워크는 Active 상태이며 다른 Peer를 찾기 쉬움';

// --- 관계 ---

MERGE (a:Concept {id: 'p2p'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'p2p'})
MERGE (b:Document {id: 'NW_064'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'p2p'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_065: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_065'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_066: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_066'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_067: RTP(Real-time Transport Protocol), RTSP(Real-time Streaming Protocol), RTCP(Realtime Transport Control Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_067'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'rtp,_rtsp,_rtcp'})
SET     n.name = 'RTP, RTSP, RTCP',
    n.name_kr = 'RTP, RTSP, RTCP',
    n.domain = 'NW';

MERGE (n:Concept {id: '실시간_스트림_데이터_전송'})
SET     n.name = '실시간 스트림 데이터 전송',
    n.name_kr = '실시간 스트림 데이터 전송',
    n.domain = 'NW';

MERGE (n:Concept {id: '응용계층_프로토콜'})
SET     n.name = '응용계층 프로토콜',
    n.name_kr = '응용계층 프로토콜',
    n.domain = 'NW';

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'sdp'})
SET     n.name = 'SDP',
    n.name_kr = 'SDP',
    n.domain = 'NW',
    n.aliases = ['SDP'];

MERGE (n:Technology {id: 'udp'})
SET     n.name = 'UDP',
    n.name_kr = 'UDP',
    n.domain = 'NW',
    n.aliases = ['UDP'];

MERGE (n:Concept {id: 'rtp'})
SET     n.name = 'RTP',
    n.name_kr = 'RTP',
    n.domain = 'NW',
    n.definition = '멀티캐스트 또는 유니캐스트 상에서 음성, 화상, 또는 모의 데이터와 같은 실시간 데이터 전송하는 응용에 적합한 end-to-end 트랜스포트 기능 제공 - 실시간 데이터의 특성에 중점 두어 제정한 표준',
    n.aliases = ['RTP'];

// --- 관계 ---

MERGE (a:Concept {id: 'rtp,_rtsp,_rtcp'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Concept {id: '실시간_스트림_데이터_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Concept {id: '응용계층_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Concept {id: 'sdp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Concept {id: 'rtp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_transport_protocol'})
MERGE (b:Document {id: 'NW_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtp,_rtsp,_rtcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_스트림_데이터_전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용계층_프로토콜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_068: ARP(Address Resolution Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_068'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'address_resolution_protocol'})
SET     n.name = 'Address Resolution Protocol',
    n.name_kr = 'ARP',
    n.domain = 'NW',
    n.aliases = ['Address Resolution Protocol', 'ARP'];

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'arp_cache_table'})
SET     n.name = 'ARP Cache Table',
    n.name_kr = 'ARP Cache Table',
    n.domain = 'NW',
    n.aliases = ['ARP Cache Table'];

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'NW',
    n.definition = '총 48비트 길이로 8자리마다 하이픈(-), 콜론(:), 점(.)으로 구분해 표기 - 00-00-00-00-00-00 또는 00:00:00:00:00:00 또는 0000.0000.000 - 유니크한 주소로 딱 하나만 존재하는 주소';

MERGE (n:Concept {id: '호스트식별자'})
SET     n.name = '호스트식별자 ( 뒤 6개 주소 )',
    n.name_kr = '호스트식별자 ( 뒤 6개 주소 )',
    n.domain = 'NW',
    n.definition = '제조사에서 지정한 기기별 임의 번호 ( 시리얼넘버 )';

MERGE (n:Concept {id: 'mac_address_요청'})
SET     n.name = 'MAC Address 요청',
    n.name_kr = 'MAC Address 요청',
    n.domain = 'NW',
    n.definition = '1단계: Host A가 D의 IP주소 인지한 상태에서 D와의 통신 위해 D의 MAC주소 획득 필요 - 2단계: Host A는 ARP Request 패킷 생성하고 Source MAC과 IP주소를 자신의 주소로 채우고, Destination IP 주소는 D의 IP주소로, Destination의 MAC주소는 0으로 지정 - 3단계: 호스트 A는 생성된 ARP 패';

MERGE (n:Concept {id: 'mac_address_회신'})
SET     n.name = 'MAC Address 회신',
    n.name_kr = 'MAC Address 회신',
    n.domain = 'NW',
    n.definition = '1단계: 호스트 D는 수신 받은 ARP Request에서 Destination IP주소가 자신인 것임을 확인하고 ARP 처리로 넘김 - 2단계: 호스트 D는 ARP Replay 패킷 생성하고 Destination IP와 MAC주소는 ARP Request의 Source IP와 MAC주소로 설정하고, Source IP와 MAC주소를 자신의 주소로 채워 넣음 -';

// --- 관계 ---

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: 'arp_cache_table'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: '호스트식별자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: 'mac_address_요청'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Concept {id: 'mac_address_회신'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Document {id: 'NW_068'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'address_resolution_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_cache_table'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스트식별자'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_address_요청'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_address_회신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_069: RARP(Reverse Address Resolution Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_069'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'reverse_address_resolution_protocol'})
SET     n.name = 'Reverse Address Resolution Protocol',
    n.name_kr = 'RARP',
    n.domain = 'NW',
    n.aliases = ['Reverse Address Resolution Protocol', 'RARP'];

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'rarp_server'})
SET     n.name = 'RARP Server',
    n.name_kr = 'RARP Server',
    n.domain = 'NW',
    n.aliases = ['RARP Server'];

// --- 관계 ---

MERGE (a:Concept {id: 'reverse_address_resolution_protocol'})
MERGE (b:Concept {id: 'rarp_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_address_resolution_protocol'})
MERGE (b:Document {id: 'NW_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'reverse_address_resolution_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rarp_server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_070: IGMP (Internet Group Management Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_070'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'internet_group_management_protocol'})
SET     n.name = 'Internet Group Management Protocol',
    n.name_kr = 'IGMP',
    n.domain = 'NW',
    n.aliases = ['Internet Group Management Protocol', 'IGMP'];

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'igmp'})
SET     n.name = 'IGMP',
    n.name_kr = 'IGMP',
    n.domain = 'NW',
    n.aliases = ['IGMP'];

MERGE (n:Concept {id: '그룹가입'})
SET     n.name = '그룹가입',
    n.name_kr = '그룹가입',
    n.domain = 'NW';

MERGE (n:Concept {id: '멤버십_감시'})
SET     n.name = '멤버십 감시',
    n.name_kr = '멤버십 감시',
    n.domain = 'NW';

MERGE (n:Concept {id: '멤버십_응답'})
SET     n.name = '멤버십 응답',
    n.name_kr = '멤버십 응답',
    n.domain = 'NW';

MERGE (n:Concept {id: '멤버십_탈퇴'})
SET     n.name = '멤버십 탈퇴',
    n.name_kr = '멤버십 탈퇴',
    n.domain = 'NW';

MERGE (n:Concept {id: '(단'})
SET     n.name = '(단',
    n.name_kr = '(단',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'igmp'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Concept {id: '그룹가입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Concept {id: '멤버십_감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Concept {id: '멤버십_응답'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Concept {id: '멤버십_탈퇴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Concept {id: '(단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Document {id: 'NW_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'internet_group_management_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'igmp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그룹가입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멤버십_감시'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멤버십_응답'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멤버십_탈퇴'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(단'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_071: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_071'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_073: NTP(Network Time Protocol)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_073'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network_time_protocol'})
SET     n.name = 'Network Time Protocol',
    n.name_kr = 'NTP',
    n.domain = 'NW',
    n.aliases = ['Network Time Protocol', 'NTP'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ntp'})
SET     n.name = 'NTP',
    n.name_kr = 'NTP',
    n.domain = 'NW',
    n.aliases = ['NTP'];

MERGE (n:Concept {id: 'monlist'})
SET     n.name = 'monlist',
    n.name_kr = '몬리스트',
    n.domain = 'NW',
    n.aliases = ['monlist', '몬리스트'];

MERGE (n:Technology {id: 'udp_123포트'})
SET     n.name = 'UDP 123포트',
    n.name_kr = 'UDP 123포트',
    n.domain = 'NW';

MERGE (n:Concept {id: '사전'})
SET     n.name = '사전',
    n.name_kr = '사전',
    n.domain = 'NW',
    n.definition = 'NTP 서버의 서비스(nptd) 버전을 4.2.7 이후로 업데이트';

MERGE (n:Threat {id: '사후'})
SET     n.name = '사후',
    n.name_kr = '사후',
    n.domain = 'NW',
    n.definition = '한국인터넷진흥원의 DDoS 사이버대피소 활용';

// --- 관계 ---

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ntp'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Concept {id: 'monlist'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Technology {id: 'udp_123포트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Concept {id: '사전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Threat {id: '사후'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Document {id: 'NW_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network_time_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ntp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monlist'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp_123포트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '사후'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_074: HDLC (High-level Data Link Control)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_074'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'high_level_data_link_control'})
SET     n.name = 'High-level Data Link Control',
    n.name_kr = 'HDLC',
    n.domain = 'NW',
    n.aliases = ['High-level Data Link Control', 'HDLC'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'NW';

MERGE (n:Concept {id: 'hdlc'})
SET     n.name = 'HDLC',
    n.name_kr = 'HDLC',
    n.domain = 'NW',
    n.aliases = ['HDLC'];

// --- 관계 ---

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hdlc'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'high_level_data_link_control'})
MERGE (b:Document {id: 'NW_074'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'high_level_data_link_control'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hdlc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_075: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_075'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_076: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_076'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_077: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_077'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_078: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_078'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_079: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_079'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_080: LAN (Local Area Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_080'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'local_area_network'})
SET     n.name = 'Local Area Network',
    n.name_kr = 'LAN',
    n.domain = 'NW',
    n.aliases = ['Local Area Network', 'LAN'];

MERGE (n:Concept {id: '유/무선_네트워크_형태'})
SET     n.name = '유/무선 네트워크 형태',
    n.name_kr = '유/무선 네트워크 형태',
    n.domain = 'NW';

MERGE (n:Concept {id: 'lan'})
SET     n.name = 'LAN',
    n.name_kr = 'LAN',
    n.domain = 'NW',
    n.aliases = ['LAN'];

MERGE (n:Concept {id: '위상_topology'})
SET     n.name = '위상 Topology',
    n.name_kr = '위상 Topology',
    n.domain = 'NW',
    n.definition = '방사형 위상 LAN';

MERGE (n:Concept {id: 'bus_위상_lan'})
SET     n.name = 'Bus 위상 LAN',
    n.name_kr = 'Bus 위상 LAN',
    n.domain = 'NW',
    n.definition = '버스라고 부르는 공통 배선을 두고 이 버스에 시스템의 모든 요소를 연결';

MERGE (n:Concept {id: '링_위상_lan'})
SET     n.name = '링 위상 LAN',
    n.name_kr = '링 위상 LAN',
    n.domain = 'NW',
    n.definition = '단 방향 점 대 점 형태가 되고 노드의 연결';

MERGE (n:Concept {id: '전송매체_cable'})
SET     n.name = '전송매체 Cable',
    n.name_kr = '전송매체 Cable',
    n.domain = 'NW',
    n.definition = '트위스티드페어(Twisted Pair)';

MERGE (n:Concept {id: 'coaxial_cable'})
SET     n.name = 'Coaxial cable',
    n.name_kr = '동축케이블',
    n.domain = 'NW',
    n.definition = '장거리 전송, 잡음의 영향을 받지 않음',
    n.aliases = ['Coaxial cable', '동축케이블'];

MERGE (n:Concept {id: 'fiber_optics'})
SET     n.name = 'Fiber Optics',
    n.name_kr = '광섬유',
    n.domain = 'NW',
    n.definition = '전기적인 형태의 신호를 빛의 형태로 전송 굴절율이 높은 유리(코어)를 굴절율이 높은 유리(클래딩)으로 둘러싼 구조',
    n.aliases = ['Fiber Optics', '광섬유'];

MERGE (n:Concept {id: 'access'})
SET     n.name = 'Access',
    n.name_kr = 'Access',
    n.domain = 'NW',
    n.definition = 'CSMA/CD',
    n.aliases = ['Access'];

MERGE (n:Concept {id: 'token'})
SET     n.name = 'Token',
    n.name_kr = 'Token',
    n.domain = 'NW',
    n.definition = 'Token Passing, Token Ring, Token Bus 방법으로 나뉨',
    n.aliases = ['Token'];

MERGE (n:Concept {id: 'cable_규격'})
SET     n.name = 'Cable 규격',
    n.name_kr = 'Cable 규격',
    n.domain = 'NW',
    n.definition = '10 BASE-T';

MERGE (n:Concept {id: '10_base-2,'})
SET     n.name = '10 BASE-2,',
    n.name_kr = '10 BASE-2,',
    n.domain = 'NW',
    n.definition = '얇은 동축케이블을 사용하는 이더넷 구성 방법 -전송속도가 10 Mbps, BASE는 베이스 밴드방식, 최장거리가 약 200M -설치가 용이, 설치 비용이 저렴 -케이블의 안정성이 떨어지고, 전송매체 단절 시 전 네트워크가 마비될 문제 야기';

MERGE (n:Concept {id: '10_base_5'})
SET     n.name = '10 BASE-5',
    n.name_kr = '10 BASE-5',
    n.domain = 'NW',
    n.definition = '굵은 동축케이블을 사용하는 이더넷 구성 방법 -전송속도 10 Mbps, BASE는 베이스 밴드 방식, 최장거리가 500M -안전성 있는 데이터 전송과 긴 전송 거리를 보장 -각 노드마다 트랜시버를 설치';

MERGE (n:Concept {id: '광케이블'})
SET     n.name = '광케이블',
    n.name_kr = '광케이블',
    n.domain = 'NW',
    n.definition = '레이저광을 이용하는 유리섬유 케이블로써 빛을 통해 신호를 전달 -외부의 전자기적 간섭에 전혀 영향을 받지 않아 신뢰성이 대단히 높음 -먼 거리까지 신호를 보낼 수 있으며, 높은 속도의 통신이 가능하다. -고압선 근처를 통과, 비교적 먼 거리 통신 또는 대용량의 정보를 전송할 때 사용';

MERGE (n:Concept {id: '스타형'})
SET     n.name = '스타형',
    n.name_kr = '스타형',
    n.domain = 'NW';

MERGE (n:Concept {id: '링형'})
SET     n.name = '링형',
    n.name_kr = '링형',
    n.domain = 'NW',
    n.definition = 'RIU(Ring Interface Unit)에 결정된 포인트 투 포인트 전송링크로 구성되며 RIUs는 데이터 소스에 가깝게 위치하여 짧은 액세스선로에 의해 기기에 연결 여기에서 정보는 RIU를 거쳐 단일방향, 즉 링방향으로 순환';

MERGE (n:Concept {id: '버스형'})
SET     n.name = '버스형',
    n.name_kr = '버스형',
    n.domain = 'NW',
    n.definition = '하나의 길다란 전송 채널 이루어지고 자연스럽게 전송되며, 각 기기는 BIU(BUS Interface Unit)를 통해 접속 버스형 구조는 다수의 노드들에 의하여 공유되는 단일 선로 링과 마찬가지로 버스형 구조는 근거리 통신망에서 분산제어 처리를 위하여 가장 많이 쓰임';

MERGE (n:Concept {id: '허브형_트리형'})
SET     n.name = '허브형 트리형',
    n.name_kr = '허브형 트리형',
    n.domain = 'NW',
    n.definition = '상호 연결된 전송링크로 구성되며 Head End를 향해 한 방향으로 모든 데이터 정보를 전송 그 때 Head End는 마찬가지로 각 연결된 기기로부터 전송된 정보를 처리하여 똑같은 루트를 통하여 각 기기로 보냄';

MERGE (n:Concept {id: '베이스밴드_방식'})
SET     n.name = '베이스밴드 방식',
    n.name_kr = '베이스밴드 방식',
    n.domain = 'NW',
    n.definition = '디지탈전송방식으로 데이타를 변조하지 않은 상태로 "0", "1"을 직류 펄스상태로 전송 모뎀 대신 간단한 tranceiver사용 중계기 없이 사용거리 1-2km 간단하고 저렴, 거리가 짧음 맨체스터 부호화(Manchester encoding)/차등 맨체스터 부호화(differential Manchester encoding)';

MERGE (n:Concept {id: '브로드밴드_방식'})
SET     n.name = '브로드밴드 방식',
    n.name_kr = '브로드밴드 방식',
    n.domain = 'NW',
    n.definition = '아날로그전송방식 베이스밴드보다 비싸나 중계거리가 김';

MERGE (n:Concept {id: 'csma_cd'})
SET     n.name = 'CSMA/CD',
    n.name_kr = 'CSMA/CD',
    n.domain = 'NW',
    n.definition = 'CSMA/CD(Carrier Sensing Multiple Access with Collision Detection) Multiple access - 버스 구조이므로 모든 station이 모든 전송을 "listen" 하고 누구든지 전송할 수 있음 Carrier Sense - 우선 다른 이용자가 채널을 이용하는지의 여부를 감청(carrier sensing)한',
    n.aliases = ['CSMA/CD'];

MERGE (n:Concept {id: '토큰_패싱'})
SET     n.name = '토큰 패싱',
    n.name_kr = '토큰 패싱',
    n.domain = 'NW',
    n.definition = '채널의 사용권을 균등분배하기 위하여 사용권을 의미하는 토큰을 차례로 전달해 나가는 방법';

// --- 관계 ---

MERGE (a:Concept {id: 'lan'})
MERGE (b:Concept {id: '유/무선_네트워크_형태'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '위상_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'bus_위상_lan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '링_위상_lan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '전송매체_cable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'coaxial_cable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'fiber_optics'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'access'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'token'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'cable_규격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '10_base-2,'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '10_base_5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '광케이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '스타형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '링형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '버스형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '허브형_트리형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '베이스밴드_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '브로드밴드_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: 'csma_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Concept {id: '토큰_패싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Document {id: 'NW_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'local_area_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유/무선_네트워크_형태'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상_topology'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bus_위상_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '링_위상_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송매체_cable'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coaxial_cable'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fiber_optics'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'token'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cable_규격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10_base-2,'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10_base_5'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광케이블'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스타형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '링형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버스형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '허브형_트리형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베이스밴드_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '브로드밴드_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'csma_cd'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토큰_패싱'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_081: MAN(Metropolitan Area Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_081'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'metropolitan_area_network'})
SET     n.name = 'Metropolitan Area Network',
    n.name_kr = 'MAN',
    n.domain = 'NW',
    n.aliases = ['Metropolitan Area Network', 'MAN'];

MERGE (n:Concept {id: '유/무선_네트워크'})
SET     n.name = '유/무선 네트워크',
    n.name_kr = '유/무선 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'man'})
SET     n.name = 'MAN',
    n.name_kr = 'MAN',
    n.domain = 'NW',
    n.aliases = ['MAN'];

MERGE (n:Concept {id: '75km'})
SET     n.name = '75Km',
    n.name_kr = '75Km',
    n.domain = 'NW';

MERGE (n:Concept {id: '45~622_mbps'})
SET     n.name = '45~622 Mbps',
    n.name_kr = '45~622 Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: 'dqdb(분산데이터큐'})
SET     n.name = 'DQDB(분산데이터큐',
    n.name_kr = 'DQDB(분산데이터큐',
    n.domain = 'NW';

MERGE (n:Concept {id: '슬롯링변형fifo'})
SET     n.name = '슬롯링변형FIFO',
    n.name_kr = '슬롯링변형FIFO',
    n.domain = 'NW';

MERGE (n:Concept {id: 'atm호환)'})
SET     n.name = 'ATM호환)',
    n.name_kr = 'ATM호환)',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW',
    n.definition = '버스1에서는 헤드 역할을 하는 호스트a가일정 주기로 슬롯을 내보내고, 이 슬롯은 호스트e에서 처리를 완료할 때까지 오른쪽으로 계속 이동 - 이 과정에서 중간 호스트는 슬롯을 프레임으로 변형해 데이터를 전송 - 버스2에도 같은 원리가 적용되며, 데이터를 반대 방향으로 전송할 때 이용';

// --- 관계 ---

MERGE (a:Concept {id: 'man'})
MERGE (b:Concept {id: '유/무선_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: '75km'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: '45~622_mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: 'dqdb(분산데이터큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: '슬롯링변형fifo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: 'atm호환)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Document {id: 'NW_081'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'metropolitan_area_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유/무선_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'man'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '75km'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '45~622_mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dqdb(분산데이터큐'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슬롯링변형fifo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'atm호환)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_082: WAN(Wide Area Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_082'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wide_area_network'})
SET     n.name = 'Wide Area Network',
    n.name_kr = 'WAN',
    n.domain = 'NW',
    n.aliases = ['Wide Area Network', 'WAN'];

MERGE (n:Concept {id: '유/무선_네트워크_형태'})
SET     n.name = '유/무선 네트워크 형태',
    n.name_kr = '유/무선 네트워크 형태',
    n.domain = 'NW';

MERGE (n:Concept {id: '광역통신망'})
SET     n.name = '광역통신망',
    n.name_kr = '광역통신망',
    n.domain = 'NW';

MERGE (n:Concept {id: '공동'})
SET     n.name = '공동',
    n.name_kr = '공동',
    n.domain = 'NW';

MERGE (n:Concept {id: '교환기능(전용선'})
SET     n.name = '교환기능(전용선',
    n.name_kr = '교환기능(전용선',
    n.domain = 'NW';

MERGE (n:Concept {id: 'line'})
SET     n.name = '회선',
    n.name_kr = '회선',
    n.domain = 'NW';

MERGE (n:Concept {id: '메시지'})
SET     n.name = '메시지',
    n.name_kr = '메시지',
    n.domain = 'NW';

MERGE (n:Concept {id: '패킷_교환)'})
SET     n.name = '패킷 교환)',
    n.name_kr = '패킷 교환)',
    n.domain = 'NW';

MERGE (n:Concept {id: '전용_회선'})
SET     n.name = '전용 회선',
    n.name_kr = '전용 회선',
    n.domain = 'NW';

MERGE (n:Concept {id: '서킷_스위칭'})
SET     n.name = '서킷 스위칭',
    n.name_kr = '서킷 스위칭',
    n.domain = 'NW';

MERGE (n:Concept {id: '패킷_스위칭'})
SET     n.name = '패킷 스위칭',
    n.name_kr = '패킷 스위칭',
    n.domain = 'NW';

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'NW',
    n.aliases = ['VPN'];

// --- 관계 ---

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '유/무선_네트워크_형태'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '광역통신망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '공동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '교환기능(전용선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: 'line'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '메시지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '패킷_교환)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '전용_회선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '서킷_스위칭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Concept {id: '패킷_스위칭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Document {id: 'NW_082'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wide_area_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유/무선_네트워크_형태'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광역통신망'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공동'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교환기능(전용선'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'line'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷_교환)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전용_회선'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서킷_스위칭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷_스위칭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_083: WBAN (Wireless Body Area Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_083'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wireless_body_area_network'})
SET     n.name = 'Wireless Body Area Network',
    n.name_kr = 'WBAN',
    n.domain = 'NW',
    n.aliases = ['Wireless Body Area Network', 'WBAN'];

MERGE (n:Concept {id: '유/무선_네트워크'})
SET     n.name = '유/무선 네트워크',
    n.name_kr = '유/무선 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wban'})
SET     n.name = 'WBAN',
    n.name_kr = 'WBAN',
    n.domain = 'NW',
    n.aliases = ['WBAN'];

MERGE (n:Concept {id: 'mics'})
SET     n.name = 'MICS',
    n.name_kr = '402~405Mhz',
    n.domain = 'NW',
    n.aliases = ['MICS', '402~405Mhz'];

MERGE (n:Concept {id: 'meds'})
SET     n.name = 'MEDS',
    n.name_kr = '401~406Mhz',
    n.domain = 'NW',
    n.aliases = ['MEDS', '401~406Mhz'];

MERGE (n:Concept {id: 'ism대역'})
SET     n.name = 'ISM대역',
    n.name_kr = 'ISM대역',
    n.domain = 'NW';

MERGE (n:Concept {id: '저속(1mbps'})
SET     n.name = '저속(1Mbps',
    n.name_kr = '저속(1Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: 'meds)'})
SET     n.name = 'MEDS)',
    n.name_kr = 'MEDS)',
    n.domain = 'NW';

MERGE (n:Concept {id: '중속(10mbps'})
SET     n.name = '중속(10Mbps',
    n.name_kr = '중속(10Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ism)'})
SET     n.name = 'ISM)',
    n.name_kr = 'ISM)',
    n.domain = 'NW';

MERGE (n:Concept {id: '고속'})
SET     n.name = '고속(UWB사용)',
    n.name_kr = '고속(UWB사용)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'medical_ban'})
SET     n.name = 'Medical BAN',
    n.name_kr = 'Medical BAN',
    n.domain = 'NW',
    n.definition = 'Implant',
    n.aliases = ['Medical BAN'];

MERGE (n:Concept {id: 'wearable_medical'})
SET     n.name = 'Wearable Medical',
    n.name_kr = 'Wearable Medical',
    n.domain = 'NW',
    n.definition = '휴대성 보장 위해 배터리 사용 (저전력) -신뢰성과 안전성을 위해 암호화 및 인증 등의 보안 기술과 초저전력 네트워크 및 통신기술 -ECG, SpO2, 근장력 모니터, 스포츠 트레이닝',
    n.aliases = ['Wearable Medical'];

MERGE (n:Concept {id: 'non_medical_ban'})
SET     n.name = 'Non-medical BAN',
    n.name_kr = 'Non-medical BAN',
    n.domain = 'NW',
    n.definition = 'Wearable CE',
    n.aliases = ['Non-medical BAN'];

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

// --- 관계 ---

MERGE (a:Concept {id: 'wban'})
MERGE (b:Concept {id: '유/무선_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'mics'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'meds'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'ism대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: '저속(1mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'meds)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: '중속(10mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'ism)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: '고속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'medical_ban'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'wearable_medical'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'non_medical_ban'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Concept {id: 'wban'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Concept {id: 'wban'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Document {id: 'NW_083'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wireless_body_area_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유/무선_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wban'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mics'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meds'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ism대역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저속(1mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meds)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중속(10mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ism)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고속'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'medical_ban'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wearable_medical'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_medical_ban'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_084.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_084.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_084.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_084.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_085: LPWAN(Low-power wide area network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_085'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'low_power_wide_area_network'})
SET     n.name = 'Low-power wide area network',
    n.name_kr = 'LPWAN',
    n.domain = 'NW',
    n.aliases = ['Low-power wide area network', 'LPWAN'];

MERGE (n:Concept {id: '유/무선_네트워크_형태'})
SET     n.name = '유/무선 네트워크 형태',
    n.name_kr = '유/무선 네트워크 형태',
    n.domain = 'NW';

MERGE (n:Concept {id: 'lpwan'})
SET     n.name = 'LPWAN',
    n.name_kr = 'LPWAN',
    n.domain = 'NW',
    n.aliases = ['LPWAN'];

MERGE (n:Concept {id: 'star_topology'})
SET     n.name = 'Star Topology',
    n.name_kr = 'Star Topology',
    n.domain = 'NW',
    n.definition = '최종 단말에서 AP까지 직접적으로 연결',
    n.aliases = ['Star Topology'];

MERGE (n:Metric {id: 'processing_gain'})
SET     n.name = 'Processing Gain',
    n.name_kr = 'Processing Gain',
    n.domain = 'NW',
    n.definition = '데이터 신호의 대역이 확산코드에 의하여 표현되는 정도',
    n.aliases = ['Processing Gain'];

MERGE (n:Concept {id: 'orthogonality'})
SET     n.name = 'Orthogonality',
    n.name_kr = 'Orthogonality',
    n.domain = 'NW',
    n.definition = '다수의 신호를 나중에 구별 가능하도록 혼합',
    n.aliases = ['Orthogonality'];

MERGE (n:Concept {id: 'trade_off_관계유지'})
SET     n.name = 'Trade Off 관계유지',
    n.name_kr = 'Trade Off 관계유지',
    n.domain = 'NW',
    n.definition = '거리 VS 속도, 노이즈 VS 대역폭 등의 관계에서 기능 적정성 유지';

// --- 관계 ---

MERGE (a:Concept {id: 'lpwan'})
MERGE (b:Concept {id: '유/무선_네트워크_형태'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Concept {id: 'star_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Metric {id: 'processing_gain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Concept {id: 'orthogonality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Concept {id: 'trade_off_관계유지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Document {id: 'NW_085'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'low_power_wide_area_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유/무선_네트워크_형태'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lpwan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'star_topology'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'processing_gain'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'orthogonality'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trade_off_관계유지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_086.1: VLAN (Virtual LAN)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_086.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'virtual_lan'})
SET     n.name = 'Virtual LAN',
    n.name_kr = 'VLAN',
    n.domain = 'NW',
    n.aliases = ['Virtual LAN', 'VLAN'];

MERGE (n:Concept {id: '유선랜'})
SET     n.name = '유선랜',
    n.name_kr = '유선랜',
    n.domain = 'NW';

MERGE (n:Concept {id: 'vlan'})
SET     n.name = 'VLAN',
    n.name_kr = 'VLAN',
    n.domain = 'NW',
    n.aliases = ['VLAN'];

MERGE (n:Concept {id: 'port_기반_vlan'})
SET     n.name = 'Port 기반 VLAN',
    n.name_kr = 'Port 기반 VLAN',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mac_기반_vlan'})
SET     n.name = 'MAC 기반 VLAN',
    n.name_kr = 'MAC 기반 VLAN',
    n.domain = 'NW';

MERGE (n:Concept {id: 'tag_frame'})
SET     n.name = 'Tag Frame',
    n.name_kr = 'Tag Frame',
    n.domain = 'NW',
    n.aliases = ['Tag Frame'];

MERGE (n:Standard {id: 'ieee_802_3'})
SET     n.name = 'IEEE 802.3',
    n.name_kr = 'IEEE 802.3',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.3'];

MERGE (n:Standard {id: 'ieee_802_1q'})
SET     n.name = 'IEEE 802.1Q',
    n.name_kr = 'IEEE 802.1Q',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.1Q'];

MERGE (n:Concept {id: '핵심기술'})
SET     n.name = '핵심기술',
    n.name_kr = '핵심기술',
    n.domain = 'NW',
    n.definition = 'VTEP';

MERGE (n:Concept {id: '기반기술'})
SET     n.name = '기반기술',
    n.name_kr = '기반기술',
    n.domain = 'NW',
    n.definition = 'VXLAN Gateway';

// --- 관계 ---

MERGE (a:Concept {id: 'vlan'})
MERGE (b:Concept {id: '유선랜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Concept {id: 'port_기반_vlan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Concept {id: 'mac_기반_vlan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Concept {id: 'tag_frame'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Standard {id: 'ieee_802_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Standard {id: 'ieee_802_1q'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Concept {id: '핵심기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Concept {id: '기반기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Document {id: 'NW_086.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'virtual_lan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유선랜'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vlan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'port_기반_vlan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_기반_vlan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tag_frame'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_3'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_1q'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_086.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_086.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_087: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_087'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_088: BcN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_088'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'bcn'})
SET     n.name = 'BcN',
    n.name_kr = 'BcN',
    n.domain = 'NW',
    n.aliases = ['BcN'];

MERGE (n:Concept {id: 'convergence'})
SET     n.name = 'Convergence',
    n.name_kr = '통신IT융합',
    n.domain = 'NW',
    n.aliases = ['Convergence', '통신IT융합'];

MERGE (n:Concept {id: '광대역_multi_media'})
SET     n.name = '광대역 Multi Media',
    n.name_kr = '광대역 Multi Media',
    n.domain = 'NW';

MERGE (n:Concept {id: '품질보장형'})
SET     n.name = '품질보장형',
    n.name_kr = '품질보장형',
    n.domain = 'NW';

MERGE (n:Concept {id: '개방형'})
SET     n.name = '개방형',
    n.name_kr = '개방형',
    n.domain = 'NW';

MERGE (n:Concept {id: 'usn_연계'})
SET     n.name = 'USN 연계',
    n.name_kr = 'USN 연계',
    n.domain = 'NW';

MERGE (n:Concept {id: '서비스_계층'})
SET     n.name = '서비스 계층',
    n.name_kr = '서비스 계층',
    n.domain = 'NW',
    n.definition = 'Open API';

MERGE (n:Concept {id: '전달망_계층'})
SET     n.name = '전달망 계층',
    n.name_kr = '전달망 계층',
    n.domain = 'NW',
    n.definition = 'QoS(Quality of Service)';

MERGE (n:Concept {id: '가입자_망_계층'})
SET     n.name = '가입자 망 계층',
    n.name_kr = '가입자 망 계층',
    n.domain = 'NW',
    n.definition = '유,무선 통합';

MERGE (n:Concept {id: '홈/단말_계층'})
SET     n.name = '홈/단말 계층',
    n.name_kr = '홈/단말 계층',
    n.domain = 'NW',
    n.definition = '홈 네트워크';

// --- 관계 ---

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: 'convergence'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '광대역_multi_media'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '품질보장형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '개방형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: 'usn_연계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '서비스_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '전달망_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '가입자_망_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Concept {id: '홈/단말_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Document {id: 'NW_088'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bcn'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'convergence'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광대역_multi_media'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질보장형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn_연계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전달망_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가입자_망_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '홈/단말_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 264개
// 관계: 533개
// ================================================================