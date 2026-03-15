// ================================================================
// NW 도메인 (NW_001 ~ NW_009) -- 온톨로지 Cypher
// 도메인: NW (네트워크)
// 주제: 네트워크 기본 용어, 정보이론, 변조, 부호화, 베이스밴드, PCM
// ================================================================

// ──────────────────────────────────────
// NW_001.1: 네트워크 기본 용어
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'network_protocol'})
SET c.name = 'Network Protocol',
    c.name_kr = '네트워크 프로토콜',
    c.domain = 'NW',
    c.definition = '정보의 송수신 측 또는 망 내에서 정보를 신뢰성 있고 효율적이며 안전하게 주고 받기 위해 사전에 약속된 규약, 규범. 구문(Syntax), 의미(Semantics), 타이밍(Timing) 요소로 구성.',
    c.importance = 'high';

MERGE (c:Concept {id: 'frequency'})
SET c.name = 'Frequency',
    c.name_kr = '주파수',
    c.domain = 'NW',
    c.definition = '주기적 파상 현상이 1초 동안에 반복되는 횟수. 표준 단위는 Hz.';

MERGE (c:Concept {id: 'multiplexing'})
SET c.name = 'Multiplexing',
    c.name_kr = '다중화',
    c.domain = 'NW',
    c.definition = '하나의 회선 또는 전송로를 분할하여 개별적으로 독립된 신호를 동시에 송수신할 수 있는 다수의 통신로(채널)를 구성하는 기술.',
    c.importance = 'high';

MERGE (c:Concept {id: 'multi_access'})
SET c.name = 'Multi Access',
    c.name_kr = '다원접속',
    c.domain = 'NW',
    c.definition = '다수의 이동국이 기지국을 공동 사용하여 상호 간에 통신할 수 있게 하는 방식. FDMA, TDMA, CDMA 방식이 있다.';

MERGE (c:Concept {id: 'circuit_switched_network'})
SET c.name = 'Circuit Switched Network',
    c.name_kr = '회선교환 네트워크',
    c.domain = 'NW',
    c.definition = '전화망(PSTN)과 같은 원리로 운영되는 통신망. 1:1 통신만 가능하며 데이터 통신의 범주에 속함.';

MERGE (c:Concept {id: 'qos'})
SET c.name = 'Quality of Service',
    c.name_kr = 'QoS',
    c.domain = 'NW',
    c.definition = '한정된 네트워크 자원에서 선택된 네트워크 트래픽 또는 어플리케이션에 대해 차별화된 서비스를 제공하기 위한 네트워크 기술.',
    c.aliases = ['QoS'],
    c.importance = 'high';

MERGE (c:Concept {id: 'lan'})
SET c.name = 'Local Area Network',
    c.name_kr = 'LAN',
    c.domain = 'NW',
    c.definition = '회사 건물, 건물 내부의 컴퓨터 네트워크.',
    c.aliases = ['LAN'];

MERGE (c:Concept {id: 'man'})
SET c.name = 'Metropolitan Area Network',
    c.name_kr = 'MAN',
    c.domain = 'NW',
    c.definition = 'LAN과 WAN의 중간급으로 LAN의 범위를 특정 지역 레벨까지 확대하여 지역을 담당하는 구간. 도시형 네트워크.',
    c.aliases = ['MAN'];

MERGE (c:Concept {id: 'wan'})
SET c.name = 'Wide Area Network',
    c.name_kr = 'WAN',
    c.domain = 'NW',
    c.definition = '멀리 떨어진 LAN간 이어주는 Network 구간.',
    c.aliases = ['WAN'];

MERGE (c:Concept {id: 'baseband'})
SET c.name = 'Baseband',
    c.name_kr = '기저대역',
    c.domain = 'NW',
    c.definition = '무선통신에서 정보를 실어 보내는 사인(sine)파 또는 펄스(pulse)파. 변조되기 이전 또는 변조되지 않은 원래 정보 신호들이 있는 저주파 영역.';

MERGE (c:Concept {id: 'broadband'})
SET c.name = 'Broadband',
    c.name_kr = '브로드밴드',
    c.domain = 'NW',
    c.definition = '아날로그로 변조된 신호를 주파수분할 다중화기법(FDMA)을 이용하여 하나의 전송매체에 여러 개의 채널을 통해 데이터를 전송하는 네트워크 방식.';

MERGE (c:Concept {id: 'encoding'})
SET c.name = 'Encoding',
    c.name_kr = '부호화',
    c.domain = 'NW',
    c.definition = '대상되는 심볼에 하나의 부호어(부호화 단위)를 할당하는 대응관계. 각 데이터 정보에 할당되는 2진 표현으로 바꾸는 과정.';

MERGE (c:Concept {id: 'ott'})
SET c.name = 'Over The Top',
    c.name_kr = 'OTT',
    c.domain = 'NW',
    c.definition = '인터넷 기반으로 드라마, 영화 등의 멀티미디어 컨텐츠 제공 서비스. 기존 통신, 방송 사업자를 포함.',
    c.aliases = ['OTT'];

// --- Technology 노드 ---

MERGE (t:Technology {id: 'ofdm'})
SET t.name = 'OFDM',
    t.name_kr = '직교 주파수 분할 다중',
    t.domain = 'NW',
    t.category = 'modulation',
    t.definition = '대역폭당 전송속도 향상과 멀티패스로 인한 수신장애를 방지하기 위한 디지털변조방식.',
    t.aliases = ['Orthogonal Frequency Division Multiplexing'];

MERGE (t:Technology {id: 'cdma'})
SET t.name = 'CDMA',
    t.name_kr = '코드분할 다중접속',
    t.domain = 'NW',
    t.category = 'access_method',
    t.definition = 'Code Division Multiple Access. 코드를 이용한 다중접속 기술.',
    t.aliases = ['Code Division Multiple Access'];

MERGE (t:Technology {id: 'femtocell'})
SET t.name = 'Femtocell',
    t.name_kr = '펨토셀',
    t.domain = 'NW',
    t.category = 'infrastructure',
    t.definition = '가정이나 사무실 등 실내에서 사용되는 초소형 이동통신용 기지국으로서 이동전화와 인터넷을 연결하여 유무선 융합서비스를 제공하는 기술.';

MERGE (t:Technology {id: 'ftth'})
SET t.name = 'FTTH',
    t.name_kr = 'Fiber To The Home',
    t.domain = 'NW',
    t.category = 'infrastructure',
    t.definition = '가입자의 댁내까지 광케이블을 연결하여 대용량 데이터를 초고속으로 송수신 가능한 차세대 인터넷 망 기반 기술.',
    t.aliases = ['Fiber To The Home'];

MERGE (t:Technology {id: 'hfc'})
SET t.name = 'HFC',
    t.name_kr = 'Hybrid Fiber Coaxial',
    t.domain = 'NW',
    t.category = 'infrastructure',
    t.definition = '분배 센터에서 옥외형 광송수신기(ONU)까지 광케이블로 연결하고 동축케이블로 ONU에서 가입자까지 연결하여 서비스를 제공하기 위한 망.',
    t.aliases = ['Hybrid Fiber Coaxial'];

MERGE (t:Technology {id: 'wave_vehicular'})
SET t.name = 'WAVE',
    t.name_kr = '차량용 무선 전송 기술',
    t.domain = 'NW',
    t.category = 'wireless',
    t.definition = '고속 이동 중인 차량 네트워크에서 운전자의 안전 정보 및 상업적 서비스를 제공하기 위한 차량용 무선 전송 기술. IEEE 802.11p 표준.',
    t.aliases = ['Wireless Access in Vehicular Environment'];

MERGE (t:Technology {id: 'wigig'})
SET t.name = 'WiGig',
    t.name_kr = '와이기그',
    t.domain = 'NW',
    t.category = 'wireless',
    t.definition = '비면허대역 60GHz 대에서 기존 와이파이보다 10배 이상 빠른 1~8Gbps 속도로 통신이 가능한 국제표준 기술.',
    t.aliases = ['Wireless Gigabits'];

MERGE (t:Technology {id: 'docsis'})
SET t.name = 'DOCSIS',
    t.name_kr = 'DOCSIS',
    t.domain = 'NW',
    t.category = 'standard',
    t.definition = '케이블 망(HFC망)상에서 케이블 TV 운영 업체와 사용자 간의 데이터 입출력을 처리하는 케이블 모뎀의 표준 인터페이스.',
    t.aliases = ['Data over Cable Service Interface Specification'];

MERGE (t:Technology {id: 'six_lowpan'})
SET t.name = '6LoWPAN',
    t.name_kr = '6LoWPAN',
    t.domain = 'NW',
    t.category = 'iot',
    t.definition = '저전력 무선네트워크 핵심기술. 센서 네트워크와 IPv6 네트워크를 직접 연동하는 기술.',
    t.aliases = ['IPv6 over Low power WPAN'];

MERGE (t:Technology {id: 'sim_card'})
SET t.name = 'SIM Card',
    t.name_kr = 'SIM 카드',
    t.domain = 'NW',
    t.category = 'hardware',
    t.definition = '개인 식별 정보를 담은 IC 카드. 가입자 식별 모듈(Subscriber Identification Module).',
    t.aliases = ['SIM', 'USIM'];

MERGE (t:Technology {id: 'fmipv6'})
SET t.name = 'FMIPv6',
    t.name_kr = 'Fast Handover for Mobile IPv6',
    t.domain = 'NW',
    t.category = 'protocol',
    t.definition = 'IP 이동성에서 핸드오버 Latency를 최소화하기 위한 기술. L2 핸드오버 이전에 L3 핸드오버를 수행.';

// --- Method 노드 ---

MERGE (m:Method {id: 'fdm'})
SET m.name = 'Frequency Division Multiplexing',
    m.name_kr = '주파수분할 다중화',
    m.domain = 'NW',
    m.category = 'multiplexing',
    m.aliases = ['FDM'];

MERGE (m:Method {id: 'tdm'})
SET m.name = 'Time Division Multiplexing',
    m.name_kr = '시분할 다중화',
    m.domain = 'NW',
    m.category = 'multiplexing',
    m.aliases = ['TDM'];

MERGE (m:Method {id: 'wdm'})
SET m.name = 'Wavelength Division Multiplexing',
    m.name_kr = '파장분할 다중화',
    m.domain = 'NW',
    m.category = 'multiplexing',
    m.definition = '여러 개의 빛(파장)에 독립된 정보를 실어 하나의 빛으로 묶어 광섬유를 통해 전달하는 방식.',
    m.aliases = ['WDM'];

MERGE (m:Method {id: 'frequency_modulation'})
SET m.name = 'Frequency Modulation',
    m.name_kr = '주파수 변조',
    m.domain = 'NW',
    m.category = 'modulation',
    m.definition = '일정한 진폭의 연속에서 주파수를 전기 신호에 맞춰 변화시키면서 통신하는 방식.',
    m.aliases = ['FM'];

MERGE (m:Method {id: 'amplitude_modulation'})
SET m.name = 'Amplitude Modulation',
    m.name_kr = '진폭 변조',
    m.domain = 'NW',
    m.category = 'modulation',
    m.definition = '전송되는 정보에 비례하여 출력 신호의 세기(진폭)를 변화시키는 변조 방식.',
    m.aliases = ['AM'];

MERGE (m:Method {id: 'intserv'})
SET m.name = 'IntServ',
    m.name_kr = 'IntServ',
    m.domain = 'NW',
    m.category = 'qos',
    m.definition = '트래픽 Flow에 대한 QoS 지원을 제공하기 위해 라우터에서 Flow마다 자원 예약을 수행. 절대적 서비스 품질 제공.';

MERGE (m:Method {id: 'diffserv'})
SET m.name = 'DiffServ',
    m.name_kr = 'DiffServ',
    m.domain = 'NW',
    m.category = 'qos',
    m.definition = '트래픽 계약을 기준으로 상대적 서비스 품질 제공. 입력된 패킷이 어느 Flow에 해당하는지를 판별하여 서비스.';

// --- Standard 노드 ---

MERGE (s:Standard {id: 'ieee'})
SET s.name = 'IEEE',
    s.name_kr = '국제전기전자기술자협회',
    s.domain = 'NW',
    s.definition = 'Institute of Electrical and Electronics Engineers. 미국 전기, 전자 기술자 협회.',
    s.aliases = ['Institute of Electrical and Electronics Engineers'];

MERGE (s:Standard {id: 'ietf'})
SET s.name = 'IETF',
    s.name_kr = '인터넷 엔지니어링 태스크 포스',
    s.domain = 'NW',
    s.definition = 'Internet Engineering Task Force. 인터넷의 원활한 사용을 위한 인터넷 표준 규격을 개발하는 조직.';

MERGE (s:Standard {id: 'ieee_802_11p'})
SET s.name = 'IEEE 802.11p',
    s.name_kr = 'IEEE 802.11p',
    s.domain = 'NW',
    s.definition = '차량 이동 환경에서의 무선 액세스(WAVE)를 추가한 IEEE 802.11 표준.';

// ──────────────────────────────────────
// NW_001.2: 정보이론, 샤논정리
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'information_theory'})
SET c.name = 'Information Theory',
    c.name_kr = '정보이론',
    c.domain = 'NW',
    c.definition = '정보에 수학적인 정의를 부여하고 통신의 정보전송용량, 정보의 부호화, 예측 등을 수학적인 입장에서 연구한 이론.',
    c.importance = 'high';

MERGE (c:Concept {id: 'entropy'})
SET c.name = 'Entropy',
    c.name_kr = '엔트로피',
    c.domain = 'NW',
    c.definition = '각 메시지에서 포함되는 불확실성을 뜻하며 메시지에 포함된 정보의 기댓값(평균). 확률이 낮을수록 엔트로피가 높음.';

MERGE (c:Concept {id: 'channel_capacity'})
SET c.name = 'Channel Capacity',
    c.name_kr = '채널용량',
    c.domain = 'NW',
    c.definition = '채널모델 및 전송 제약조건이 주어진 상태에서 신뢰성 있게 전달할 수 있는 최대 전송률.';

// --- Method 노드 ---

MERGE (m:Method {id: 'shannon_first_theorem'})
SET m.name = 'Shannon First Theorem',
    m.name_kr = '샤논 제1정리',
    m.domain = 'NW',
    m.category = 'theorem',
    m.definition = '정보원 부호화 정리(Source Coding Theorem). 어떤 정보원의 메시지를 순간 복호가 가능한 가변부호로 나타낼 때 평균 부호어 길이의 최소값은 그 정보원의 엔트로피와 같다는 정리.',
    m.aliases = ['Source Coding Theorem', '정보원 부호화 정리'];

MERGE (m:Method {id: 'shannon_second_theorem'})
SET m.name = 'Shannon Second Theorem',
    m.name_kr = '샤논 제2정리',
    m.domain = 'NW',
    m.category = 'theorem',
    m.definition = '채널 부호화 정리(Channel Coding Theorem). 데이터가 채널용량보다 작은 정보율을 가지고 있다면, 에러/잡음을 최소화할 수 있는 부호화 과정이 반드시 존재한다는 이론.',
    m.aliases = ['Channel Coding Theorem', '채널 부호화 정리'];

MERGE (m:Method {id: 'shannon_hartley_theorem'})
SET m.name = 'Shannon-Hartley Theorem',
    m.name_kr = '샤논-하틀리 정리',
    m.domain = 'NW',
    m.category = 'theorem',
    m.definition = '정보이론에서 채널모델 및 전송 제약조건이 주어진 상태에서 신뢰성 있게 전달할 수 있는 최대 전송률. C = B * log2(1 + S/N).';

// --- Metric 노드 ---

MERGE (mt:Metric {id: 'cross_entropy'})
SET mt.name = 'Cross Entropy',
    mt.name_kr = '교차 엔트로피',
    mt.domain = 'NW',
    mt.definition = '두 확률 분포 p와 q를 구분하기 위해 필요한 평균 비트 수.';

MERGE (mt:Metric {id: 'kl_divergence'})
SET mt.name = 'KL Divergence',
    mt.name_kr = 'KL 발산',
    mt.domain = 'NW',
    mt.definition = 'Kullback-Leibler Divergence. 두 분포의 차이를 측정하는데 사용.',
    mt.aliases = ['Kullback-Leibler Divergence'];

// ──────────────────────────────────────
// NW_002: 변조(Modulation)
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'modulation'})
SET c.name = 'Modulation',
    c.name_kr = '변조',
    c.domain = 'NW',
    c.definition = '전달하고자 하는 신호(정보)를 목적지까지 효율적으로 보내기 위해 신호를 전송에 적합한 형태로 변환하는 수정작업. 주파수 Shifting, 디지털화 등.',
    c.importance = 'high';

MERGE (c:Concept {id: 'analog_modulation'})
SET c.name = 'Analog Modulation',
    c.name_kr = '아날로그 변조',
    c.domain = 'NW',
    c.definition = '아날로그 신호를 반송파로 활용하여 정보 신호의 진폭, 주파수, 위상을 변화시키는 변조 방식. AM, FM, PM이 대표적.';

MERGE (c:Concept {id: 'digital_modulation'})
SET c.name = 'Digital Modulation',
    c.name_kr = '디지털 변조',
    c.domain = 'NW',
    c.definition = '디지털 정보신호들을 채널 특성에 맞게끔 아날로그 파형으로 변환/매핑하여 전송채널을 통해 수신자에게 전달하는 기술.',
    c.importance = 'high';

MERGE (c:Concept {id: 'digital_baseband_modulation'})
SET c.name = 'Digital Baseband Modulation',
    c.name_kr = '디지털 기저대역 변조',
    c.domain = 'NW',
    c.definition = '수신 측의 원활한 동기 재생과 오류 검출을 위해 2진 bit의 디지털 신호를 의미 있는 디지털 신호(기저대역 신호)로 변환하여 전송하는 기법. 라인 코딩으로 불림.';

MERGE (c:Concept {id: 'digital_bandpass_modulation'})
SET c.name = 'Digital Bandpass Modulation',
    c.name_kr = '디지털 대역통과 변조',
    c.domain = 'NW',
    c.definition = '디지털 신호를 통상적으로 대역 제한된 통신채널 특성에 맞게 아날로그 파형 신호로 변환시키는 기법. ASK, FSK, PSK, QAM 등.';

MERGE (c:Concept {id: 'pulse_modulation'})
SET c.name = 'Pulse Modulation',
    c.name_kr = '펄스 변조',
    c.domain = 'NW',
    c.definition = '디지털 신호를 반송파로 활용하는 변조 방식. PCM, PWM, PAM, PPM 등.';

// --- Method 노드 (변조 방식들) ---

MERGE (m:Method {id: 'phase_modulation'})
SET m.name = 'Phase Modulation',
    m.name_kr = '위상 변조',
    m.domain = 'NW',
    m.category = 'modulation',
    m.definition = '정보 신호에 따라 반송파 위상 변화를 시키는 변조 방식.',
    m.aliases = ['PM'];

// ──────────────────────────────────────
// NW_003: ASK (Amplitude Shift Keying)
// ──────────────────────────────────────

// --- Method 노드 ---

MERGE (m:Method {id: 'ask'})
SET m.name = 'Amplitude Shift Keying',
    m.name_kr = '진폭 편이 변조',
    m.domain = 'NW',
    m.category = 'digital_modulation',
    m.definition = '대역통과 변조 형태의 디지털 변조 방식으로 디지털 심볼 신호(0 및 1) 값에 따라 반송파 진폭을 달리 대응시키는 변조방식. OOK(On-Off Keying)이라고도 함.',
    m.aliases = ['ASK', 'OOK'],
    m.bandwidth_efficiency = '1 bps/Hz';

// ──────────────────────────────────────
// NW_004: PSK (Phase Shift Keying)
// ──────────────────────────────────────

// --- Method 노드 ---

MERGE (m:Method {id: 'psk'})
SET m.name = 'Phase Shift Keying',
    m.name_kr = '위상 편이 변조',
    m.domain = 'NW',
    m.category = 'digital_modulation',
    m.definition = '디지털 신호(2진 데이터)의 정보 내용에 따라 반송파 위상을 변화 시키는 방식. BPSK, QPSK, 8PSK 등으로 구분.',
    m.aliases = ['PSK', 'BPSK', 'QPSK', '8PSK'];

MERGE (m:Method {id: 'dpsk'})
SET m.name = 'Differential PSK',
    m.name_kr = '차동 위상 편이 변조',
    m.domain = 'NW',
    m.category = 'digital_modulation',
    m.definition = '연이어 나타나는 심볼 간 위상차이로 반송파를 변조하는 방식. 비동기검파로 가능.',
    m.aliases = ['DPSK'];

// ──────────────────────────────────────
// NW_005: QAM (Quadrature Amplitude Modulation)
// ──────────────────────────────────────

// --- Method 노드 ---

MERGE (m:Method {id: 'qam'})
SET m.name = 'Quadrature Amplitude Modulation',
    m.name_kr = '직교 진폭 변조',
    m.domain = 'NW',
    m.category = 'digital_modulation',
    m.definition = '정보 신호에 따라 반송파의 진폭과 위상을 동시에 변화시켜, PSK의 변조 원리에 진폭 변조까지 포함하는 변조 방식. 고속 전송에 많이 쓰임.',
    m.aliases = ['QAM', '16QAM', '64QAM', '256QAM', '1024QAM'],
    m.importance = 'high';

MERGE (m:Method {id: 'fsk'})
SET m.name = 'Frequency Shift Keying',
    m.name_kr = '주파수 편이 변조',
    m.domain = 'NW',
    m.category = 'digital_modulation',
    m.definition = '진폭은 일정하나, 여러 이산적인 주파수들에 의해 반송파를 편이 변조하는 방식.',
    m.aliases = ['FSK'];

// ──────────────────────────────────────
// NW_006: 소스코딩, 채널코딩, 라인코딩
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'transmission_coding'})
SET c.name = 'Transmission Coding',
    c.name_kr = '전송 부호화',
    c.domain = 'NW',
    c.definition = '아날로그 형태의 정보(음성, 영상 등)를 디지털 형태로 효율적으로 변환하기 위한 수학적 매핑 및 변환 기법.',
    c.importance = 'high';

MERGE (c:Concept {id: 'source_coding'})
SET c.name = 'Source Coding',
    c.name_kr = '소스 코딩',
    c.domain = 'NW',
    c.definition = '통신 시스템 상에서 효율적 정보 전송을 위해 전송하려는 원천 데이터에서 불필요한 정보 및 중복 정보를 제거하여 전송 데이터를 줄이는 과정 및 기법.',
    c.exam_frequency = 129;

MERGE (c:Concept {id: 'channel_coding'})
SET c.name = 'Channel Coding',
    c.name_kr = '채널 코딩',
    c.domain = 'NW',
    c.definition = '디지털 전송 채널 상의 잡음, 간섭 등에 의해 발생되는 오류를 검출 및 정정하기 위해 송수 양측에 의해 합의된 잉여 비트를 추가하고 복원하는 과정.',
    c.exam_frequency = 129;

MERGE (c:Concept {id: 'line_coding'})
SET c.name = 'Line Coding',
    c.name_kr = '라인 코딩',
    c.domain = 'NW',
    c.definition = '수신 측의 원활한 동기 재생과 오류 검출을 위해 2진 bit의 디지털 데이터를 의미 있는 디지털 신호(기저대역 신호)로 변환하는 과정.';

MERGE (c:Concept {id: 'lossless_compression'})
SET c.name = 'Lossless Compression',
    c.name_kr = '무손실 압축',
    c.domain = 'NW',
    c.definition = '압축 데이터 복원시 압축 전의 데이터와 일치. 허프만코딩, 런렝스 코딩 등.';

MERGE (c:Concept {id: 'lossy_compression'})
SET c.name = 'Lossy Compression',
    c.name_kr = '손실 압축',
    c.domain = 'NW',
    c.definition = '압축한 데이터 복원 시 압축 전의 데이터와 불일치. JPEG, MPEG 등.';

// ──────────────────────────────────────
// NW_007: 베이스밴드
// ──────────────────────────────────────

// --- Method 노드 ---

MERGE (m:Method {id: 'nrz'})
SET m.name = 'NRZ',
    m.name_kr = 'NRZ',
    m.domain = 'NW',
    m.category = 'line_coding',
    m.definition = 'None Return to Zero. 비트 0, 1의 값을 전압으로 표시한 후에 영(zero)의 전압인 0V로 되돌아오지 않는 방식.',
    m.aliases = ['None Return to Zero'];

MERGE (m:Method {id: 'rz'})
SET m.name = 'RZ',
    m.name_kr = 'RZ',
    m.domain = 'NW',
    m.category = 'line_coding',
    m.definition = 'Return to Zero. 비트 신호 1이 전송될 때 비트 시간 길이의 약 1/2시간 동안 양 또는 음의 전압을 유지하고 그 나머지 시간은 0(zero) 상태로 돌아오는 방식.',
    m.aliases = ['Return to Zero'];

MERGE (m:Method {id: 'manchester_encoding'})
SET m.name = 'Manchester Encoding',
    m.name_kr = '맨체스터 부호화',
    m.domain = 'NW',
    m.category = 'line_coding',
    m.definition = '디지털 인코딩의 한 형태로서, 데이터 비트가 하나의 논리적 상태에서 다른 상태로 전이됨에 의해 표현되는 방식. IEEE 802.3 이더넷에서 사용.',
    m.importance = 'high';

// ──────────────────────────────────────
// NW_008: 맨체스터 코드 (상세)
// ──────────────────────────────────────
// (맨체스터 부호화 노드는 NW_007에서 이미 생성, 추가 속성만 SET)

MERGE (m:Method {id: 'manchester_encoding'})
SET m.standard = 'IEEE 802.3',
    m.usage = 'LAN 이더넷, 자기 기록 장치';

// ──────────────────────────────────────
// NW_009: PCM (Pulse Code Modulation)
// ──────────────────────────────────────

// --- Technology 노드 ---

MERGE (t:Technology {id: 'pcm'})
SET t.name = 'PCM',
    t.name_kr = '펄스 부호 변조',
    t.domain = 'NW',
    t.category = 'modulation',
    t.definition = '아날로그 신호를 일정 시간 간격으로 샘플링하고, 이를 bit열의 디지털 신호로 변조하는 통신 기술. 표본화 > 양자화 > 부호화 단계.',
    t.aliases = ['Pulse Code Modulation'],
    t.importance = 'high';

// --- Method 노드 ---

MERGE (m:Method {id: 'sampling'})
SET m.name = 'Sampling',
    m.name_kr = '표본화',
    m.domain = 'NW',
    m.category = 'pcm_process',
    m.definition = '프레임, 즉 표본간격(Sampling Time) 기준으로 신호를 샘플링. 추출된 펄스열을 PAM(Pulse Amplitude Modulation)이라 함.';

MERGE (m:Method {id: 'quantization'})
SET m.name = 'Quantization',
    m.name_kr = '양자화',
    m.domain = 'NW',
    m.category = 'pcm_process',
    m.definition = 'PAM 신호를 디지털화 하기 위해 진폭 축으로 이산 값을 갖도록 처리하는 과정. 양자화 레벨 = 2^n (n=표본당 전송 비트 수).';

MERGE (m:Method {id: 'nyquist_sampling_theorem'})
SET m.name = 'Nyquist Sampling Theorem',
    m.name_kr = '나이퀴스트 샘플링 정리',
    m.domain = 'NW',
    m.category = 'theorem',
    m.definition = '입력 신호의 최고 주파수(fm)의 2배 이상의 주파수를 샘플링 하면 복호화 시에 원신호에 가깝게 복원이 가능하다는 이론. fs >= 2 * fm.',
    m.importance = 'high';

MERGE (m:Method {id: 'delta_modulation'})
SET m.name = 'Delta Modulation',
    m.name_kr = '델타 변조',
    m.domain = 'NW',
    m.category = 'modulation',
    m.definition = '현재 표본값에서 이전 표본값을 뺀 차동 신호가 (+)이면 1, (-)이면 0으로 부호화 후 한개 bit 단위로 전송. 비트 에러에 강함.',
    m.aliases = ['DM'];

// ──────────────────────────────────────
// 관계 (Relationships)
// ──────────────────────────────────────

// --- 네트워크 형태 계층 ---
MERGE (a:Concept {id: 'lan'})
MERGE (b:Concept {id: 'man'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['범위', '전송속도', '토폴로지'],
    summary: 'LAN은 건물 내부, MAN은 도시 레벨로 범위가 다름'
}]->(b);

MERGE (a:Concept {id: 'man'})
MERGE (b:Concept {id: 'wan'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['범위', '장비', '비용'],
    summary: 'MAN은 도시 레벨, WAN은 도시 간 연결. WAN이 더 넓은 범위'
}]->(b);

// --- 다중화 유형 ---
MERGE (a:Method {id: 'fdm'})
MERGE (b:Concept {id: 'multiplexing'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'tdm'})
MERGE (b:Concept {id: 'multiplexing'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Method {id: 'wdm'})
MERGE (b:Concept {id: 'multiplexing'})
MERGE (a)-[:HAS_TYPE]->(b);

// --- QoS 방식 ---
MERGE (a:Method {id: 'intserv'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'diffserv'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- 변조 계층 구조 ---
MERGE (a:Concept {id: 'analog_modulation'})
MERGE (b:Concept {id: 'modulation'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_modulation'})
MERGE (b:Concept {id: 'modulation'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pulse_modulation'})
MERGE (b:Concept {id: 'modulation'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_baseband_modulation'})
MERGE (b:Concept {id: 'digital_modulation'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_bandpass_modulation'})
MERGE (b:Concept {id: 'digital_modulation'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// --- 아날로그 변조 방식들 ---
MERGE (a:Method {id: 'amplitude_modulation'})
MERGE (b:Concept {id: 'analog_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'frequency_modulation'})
MERGE (b:Concept {id: 'analog_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'phase_modulation'})
MERGE (b:Concept {id: 'analog_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- 디지털 변조 방식들 ---
MERGE (a:Method {id: 'ask'})
MERGE (b:Concept {id: 'digital_bandpass_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'fsk'})
MERGE (b:Concept {id: 'digital_bandpass_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'psk'})
MERGE (b:Concept {id: 'digital_bandpass_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'qam'})
MERGE (b:Concept {id: 'digital_bandpass_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'dpsk'})
MERGE (b:Method {id: 'psk'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// --- 디지털 변조 방식 비교 ---
MERGE (a:Method {id: 'ask'})
MERGE (b:Method {id: 'fsk'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['대역폭', '잡음 민감도', '구현 복잡도'],
    summary: 'ASK는 간단한 구현이나 잡음에 민감, FSK는 대역폭이 크나 간섭에 덜 민감'
}]->(b);

MERGE (a:Method {id: 'psk'})
MERGE (b:Method {id: 'qam'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['전송효율', '오류 민감도', '전력 소모'],
    summary: 'PSK는 심볼에러에 우수, QAM은 높은 주파수 효율과 전송률을 제공하나 잡음에 취약'
}]->(b);

// --- 펄스 변조 관계 ---
MERGE (a:Technology {id: 'pcm'})
MERGE (b:Concept {id: 'pulse_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'delta_modulation'})
MERGE (b:Concept {id: 'pulse_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- PCM 프로세스 단계 ---
MERGE (a:Method {id: 'sampling'})
MERGE (b:Technology {id: 'pcm'})
MERGE (a)-[:HAS_PHASE {order: 1, phase: 'send'}]->(b);

MERGE (a:Method {id: 'quantization'})
MERGE (b:Technology {id: 'pcm'})
MERGE (a)-[:HAS_PHASE {order: 2, phase: 'send'}]->(b);

MERGE (a:Concept {id: 'encoding'})
MERGE (b:Technology {id: 'pcm'})
MERGE (a)-[:HAS_PHASE {order: 3, phase: 'send'}]->(b);

// --- 나이퀴스트 정리와 PCM ---
MERGE (a:Technology {id: 'pcm'})
MERGE (b:Method {id: 'nyquist_sampling_theorem'})
MERGE (a)-[:DEPENDS_ON]->(b);

// --- 전송 부호화 구성 ---
MERGE (a:Concept {id: 'source_coding'})
MERGE (b:Concept {id: 'transmission_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'channel_coding'})
MERGE (b:Concept {id: 'transmission_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'line_coding'})
MERGE (b:Concept {id: 'transmission_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

// --- 소스코딩 vs 채널코딩 비교 ---
MERGE (a:Concept {id: 'source_coding'})
MERGE (b:Concept {id: 'channel_coding'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['목적', '기능', '방향'],
    summary: '소스코딩은 데이터 압축(불필요 정보 제거), 채널코딩은 오류 검출/정정(잉여 비트 추가)'
}]->(b);

// --- 압축 유형 ---
MERGE (a:Concept {id: 'lossless_compression'})
MERGE (b:Concept {id: 'source_coding'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lossy_compression'})
MERGE (b:Concept {id: 'source_coding'})
MERGE (a)-[:HAS_TYPE]->(b);

// --- 라인 코딩 방식들 ---
MERGE (a:Method {id: 'nrz'})
MERGE (b:Concept {id: 'line_coding'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'rz'})
MERGE (b:Concept {id: 'line_coding'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Method {id: 'manchester_encoding'})
MERGE (b:Concept {id: 'line_coding'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- 베이스밴드 vs 브로드밴드 비교 ---
MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: 'broadband'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['채널수', '전송신호', '전송거리', '전송속도', '다중화', '경제성'],
    summary: '베이스밴드는 디지털 신호/단일채널/양방향/10km이내, 브로드밴드는 아날로그 신호/다수채널/단방향/10km이상'
}]->(b);

// --- 맨체스터 부호화와 베이스밴드 ---
MERGE (a:Method {id: 'manchester_encoding'})
MERGE (b:Concept {id: 'baseband'})
MERGE (a)-[:USES]->(b);

// --- 정보이론 관계 ---
MERGE (a:Concept {id: 'entropy'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'channel_capacity'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'shannon_first_theorem'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:DEFINED_BY]->(b);

MERGE (a:Method {id: 'shannon_second_theorem'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:DEFINED_BY]->(b);

MERGE (a:Method {id: 'shannon_hartley_theorem'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:DEFINED_BY]->(b);

// --- 샤논 정리와 채널용량 ---
MERGE (a:Method {id: 'shannon_hartley_theorem'})
MERGE (b:Concept {id: 'channel_capacity'})
MERGE (a)-[:MEASURED_BY]->(b);

// --- 샤논 제1정리와 엔트로피 ---
MERGE (a:Method {id: 'shannon_first_theorem'})
MERGE (b:Concept {id: 'entropy'})
MERGE (a)-[:DEPENDS_ON]->(b);

// --- 샤논 제2정리와 채널코딩 ---
MERGE (a:Method {id: 'shannon_second_theorem'})
MERGE (b:Concept {id: 'channel_coding'})
MERGE (a)-[:DEFINED_BY]->(b);

// --- 정보이론 지표 ---
MERGE (a:Metric {id: 'cross_entropy'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Metric {id: 'kl_divergence'})
MERGE (b:Concept {id: 'information_theory'})
MERGE (a)-[:MEASURED_BY]->(b);

// --- OFDM과 디지털 변조 ---
MERGE (a:Technology {id: 'ofdm'})
MERGE (b:Concept {id: 'digital_modulation'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- CDMA와 다원접속 ---
MERGE (a:Technology {id: 'cdma'})
MERGE (b:Concept {id: 'multi_access'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- 펨토셀과 FMS ---
MERGE (c:Concept {id: 'fms'})
SET c.name = 'Fixed Mobile Substitution',
    c.name_kr = 'FMS',
    c.domain = 'NW',
    c.definition = '이동통신을 사용하되 집안 등 특정지역에서 이동통신요금을 유선보다 저렴하게 설정해 유선서비스를 일부 대체할 수 있는 서비스.';

MERGE (a:Technology {id: 'femtocell'})
MERGE (b:Concept {id: 'fms'})
MERGE (a)-[:IMPLEMENTS]->(b);

// --- HFC와 DOCSIS ---
MERGE (a:Technology {id: 'docsis'})
MERGE (b:Technology {id: 'hfc'})
MERGE (a)-[:USES]->(b);

// --- WAVE와 IEEE 802.11p ---
MERGE (a:Technology {id: 'wave_vehicular'})
MERGE (b:Standard {id: 'ieee_802_11p'})
MERGE (a)-[:DEFINED_BY]->(b);

// --- 맨체스터 코드와 IEEE 802.3 ---
MERGE (s:Standard {id: 'ieee_802_3'})
SET s.name = 'IEEE 802.3',
    s.name_kr = 'IEEE 802.3 이더넷',
    s.domain = 'NW',
    s.definition = '이더넷(Ethernet) 표준.';

MERGE (a:Method {id: 'manchester_encoding'})
MERGE (b:Standard {id: 'ieee_802_3'})
MERGE (a)-[:DEFINED_BY]->(b);

// --- QAM과 IEEE 802.11 표준들 ---
MERGE (s:Standard {id: 'ieee_802_11n'})
SET s.name = 'IEEE 802.11n', s.domain = 'NW', s.definition = 'Wi-Fi 4. 64QAM 변조 방식 사용.';

MERGE (s:Standard {id: 'ieee_802_11ac'})
SET s.name = 'IEEE 802.11ac', s.domain = 'NW', s.definition = 'Wi-Fi 5. 256QAM 변조 방식 사용.';

MERGE (s:Standard {id: 'ieee_802_11ax'})
SET s.name = 'IEEE 802.11ax', s.domain = 'NW', s.definition = 'Wi-Fi 6. 1024QAM 변조 방식 사용.';

MERGE (a:Method {id: 'qam'})
MERGE (b:Standard {id: 'ieee_802_11n'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'qam'})
MERGE (b:Standard {id: 'ieee_802_11ac'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'qam'})
MERGE (b:Standard {id: 'ieee_802_11ax'})
MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// Domain 연결
// ──────────────────────────────────────

MATCH (n) WHERE n.domain = 'NW' AND (n:Concept OR n:Technology OR n:Method OR n:Standard OR n:Metric)
MERGE (d:Domain {id: 'NW'})
MERGE (n)-[:BELONGS_TO]->(d);

// ──────────────────────────────────────
// Document 추적
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_001.1'})
SET doc.filename = 'NW_001.1_네트워크 용어.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_001.2'})
SET doc.filename = 'NW_001.2_정보이론, 샤논정리.doc', doc.domain = 'NW', doc.format = 'doc';

MERGE (doc:Document {id: 'NW_002'})
SET doc.filename = 'NW_002_변조(Modulation).docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_003'})
SET doc.filename = 'NW_003_ASK.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_004'})
SET doc.filename = 'NW_004_PSK.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_005'})
SET doc.filename = 'NW_005_QAM.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_006'})
SET doc.filename = 'NW_006_소스코딩_채널코딩_라인코딩.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_007'})
SET doc.filename = 'NW_007_베이스밴드.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_008'})
SET doc.filename = 'NW_008_맨체스터 코드.docx', doc.domain = 'NW', doc.format = 'docx';

MERGE (doc:Document {id: 'NW_009'})
SET doc.filename = 'NW_009_PCM.docx', doc.domain = 'NW', doc.format = 'docx';

// --- NW_001.1 문서에 언급된 개념 ---
MERGE (c:Concept {id: 'network_protocol'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'frequency'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'multiplexing'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'qos'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'circuit_switched_network'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'baseband'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'ofdm'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'cdma'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'femtocell'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'ftth'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'wave_vehicular'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'wigig'}) MERGE (doc:Document {id: 'NW_001.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// --- NW_001.2 문서에 언급된 개념 ---
MERGE (c:Concept {id: 'information_theory'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'entropy'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'channel_capacity'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'shannon_first_theorem'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'shannon_second_theorem'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'shannon_hartley_theorem'}) MERGE (doc:Document {id: 'NW_001.2'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_002 문서에 언급된 개념 ---
MERGE (c:Concept {id: 'modulation'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'analog_modulation'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'digital_modulation'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'ask'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'fsk'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'psk'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'qam'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'pcm'}) MERGE (doc:Document {id: 'NW_002'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// --- NW_003 문서에 언급된 개념 ---
MERGE (m:Method {id: 'ask'}) MERGE (doc:Document {id: 'NW_003'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_004 문서에 언급된 개념 ---
MERGE (m:Method {id: 'psk'}) MERGE (doc:Document {id: 'NW_004'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'dpsk'}) MERGE (doc:Document {id: 'NW_004'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_005 문서에 언급된 개념 ---
MERGE (m:Method {id: 'qam'}) MERGE (doc:Document {id: 'NW_005'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_006 문서에 언급된 개념 ---
MERGE (c:Concept {id: 'transmission_coding'}) MERGE (doc:Document {id: 'NW_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'source_coding'}) MERGE (doc:Document {id: 'NW_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'channel_coding'}) MERGE (doc:Document {id: 'NW_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'line_coding'}) MERGE (doc:Document {id: 'NW_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// --- NW_007 문서에 언급된 개념 ---
MERGE (c:Concept {id: 'baseband'}) MERGE (doc:Document {id: 'NW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'broadband'}) MERGE (doc:Document {id: 'NW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'nrz'}) MERGE (doc:Document {id: 'NW_007'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'rz'}) MERGE (doc:Document {id: 'NW_007'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'manchester_encoding'}) MERGE (doc:Document {id: 'NW_007'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_008 문서에 언급된 개념 ---
MERGE (m:Method {id: 'manchester_encoding'}) MERGE (doc:Document {id: 'NW_008'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// --- NW_009 문서에 언급된 개념 ---
MERGE (t:Technology {id: 'pcm'}) MERGE (doc:Document {id: 'NW_009'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'sampling'}) MERGE (doc:Document {id: 'NW_009'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'quantization'}) MERGE (doc:Document {id: 'NW_009'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'nyquist_sampling_theorem'}) MERGE (doc:Document {id: 'NW_009'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'delta_modulation'}) MERGE (doc:Document {id: 'NW_009'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// ================================================================
// NW 도메인 완료
// 노드: Concept 26개, Technology 12개, Method 22개, Standard 6개,
//       Metric 2개, Document 10개, Domain 1개 = 총 79개
// 관계: SUBCLASS_OF 5개, HAS_COMPONENT 6개, HAS_PHASE 3개,
//       HAS_TYPE 5개, COMPARED_WITH 5개, DEPENDS_ON 2개,
//       IMPLEMENTS 15개, USES 4개, DEFINED_BY 5개,
//       MEASURED_BY 3개, BELONGS_TO (동적), MENTIONED_IN 39개
//       = 총 약 92개 (BELONGS_TO 제외)
// ================================================================
