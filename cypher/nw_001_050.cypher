// ================================================================
// NW 도메인 (NW_001 ~ NW_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_001.1: 네트워크 기본 용어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_001.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '네트워크_기본_용어'})
SET     n.name = '네트워크 기본 용어',
    n.name_kr = '네트워크 기본 용어',
    n.domain = 'NW';

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '네트워크_기본_용어'})
MERGE (b:Document {id: 'NW_001.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '네트워크_기본_용어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_001.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_001.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_002: 변조(Modulation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_002'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'modulation'})
SET     n.name = 'Modulation',
    n.name_kr = '변조',
    n.domain = 'NW',
    n.aliases = ['Modulation', '변조'];

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'psk'})
SET     n.name = 'PSK',
    n.name_kr = 'PSK',
    n.domain = 'NW',
    n.aliases = ['PSK'];

MERGE (n:Concept {id: 'ask'})
SET     n.name = 'ASK',
    n.name_kr = 'ASK',
    n.domain = 'NW',
    n.aliases = ['ASK'];

MERGE (n:Concept {id: 'fsk'})
SET     n.name = 'FSK',
    n.name_kr = 'FSK',
    n.domain = 'NW',
    n.aliases = ['FSK'];

MERGE (n:Concept {id: 'qam'})
SET     n.name = 'QAM',
    n.name_kr = 'QAM',
    n.domain = 'NW',
    n.aliases = ['QAM'];

MERGE (n:Concept {id: 'transducer'})
SET     n.name = 'Transducer',
    n.name_kr = '변환기',
    n.domain = 'NW',
    n.definition = '신호 변환',
    n.aliases = ['Transducer', '변환기'];

MERGE (n:Concept {id: 'mixer'})
SET     n.name = 'Mixer',
    n.name_kr = '혼합기',
    n.domain = 'NW',
    n.definition = '신호 혼합',
    n.aliases = ['Mixer', '혼합기'];

MERGE (n:Concept {id: 'carrier'})
SET     n.name = 'Carrier',
    n.name_kr = '반송파',
    n.domain = 'NW',
    n.definition = '정보 주입',
    n.aliases = ['Carrier', '반송파'];

MERGE (n:Concept {id: 'amplifier'})
SET     n.name = 'Amplifier',
    n.name_kr = '증폭기',
    n.domain = 'NW',
    n.definition = '신호 증폭',
    n.aliases = ['Amplifier', '증폭기'];

MERGE (n:Concept {id: '아날로그_변조_방식'})
SET     n.name = '아날로그 변조 방식',
    n.name_kr = '아날로그 변조 방식',
    n.domain = 'NW',
    n.definition = 'AM';

MERGE (n:Concept {id: '디지털_변조_방식'})
SET     n.name = '디지털 변조 방식',
    n.name_kr = '디지털 변조 방식',
    n.domain = 'NW',
    n.definition = 'ASK';

MERGE (n:Concept {id: '펄스_부호_변조_방식'})
SET     n.name = '펄스 부호 변조 방식',
    n.name_kr = '펄스 부호 변조 방식',
    n.domain = 'NW',
    n.definition = 'PCM';

MERGE (n:Concept {id: '아날로그-연속파변조날'})
SET     n.name = '아날로그-연속파변조날',
    n.name_kr = '아날로그-연속파변조날',
    n.domain = 'NW',
    n.definition = '진폭변조(AM)';

MERGE (n:Concept {id: 'frequency_modulation'})
SET     n.name = 'Frequency Modulation',
    n.name_kr = '주파수변조',
    n.domain = 'NW',
    n.definition = '반송파 진폭을 일정하게 유지 - 반송파 주파수 신호파에 따라 변화',
    n.aliases = ['Frequency Modulation', '주파수변조'];

MERGE (n:Concept {id: 'phase_modulation'})
SET     n.name = 'Phase Modulation',
    n.name_kr = '위상변조',
    n.domain = 'NW',
    n.definition = '반송파 진폭을 일정하게 유지 - 반송파 위상 신호파 진폭에 따라 변화',
    n.aliases = ['Phase Modulation', '위상변조'];

MERGE (n:Concept {id: '아날로그-_이산파변조'})
SET     n.name = '아날로그- 이산파변조',
    n.name_kr = '아날로그- 이산파변조',
    n.domain = 'NW',
    n.definition = '펄스 진폭변조(PAM)';

MERGE (n:Concept {id: 'ppm'})
SET     n.name = 'PPM',
    n.name_kr = '펄스 위치변조',
    n.domain = 'NW',
    n.definition = '펄스 시간적 위치를 신호파 진폭에 비례하여 변화 - 시간적인 위치변화는 펄스 위상변조(Pulse Phase Mod) 또는 펄스 시변조(Pulse Time Mod)',
    n.aliases = ['PPM', '펄스 위치변조'];

MERGE (n:Concept {id: 'pwm'})
SET     n.name = 'PWM',
    n.name_kr = '펄스 폭 변조',
    n.domain = 'NW',
    n.definition = '표본화 펄스 진폭이 일정하고 그 펄스 폭이 전송 신호에 따라 변화',
    n.aliases = ['PWM', '펄스 폭 변조'];

MERGE (n:Concept {id: 'pnm'})
SET     n.name = 'PNM',
    n.name_kr = '펄스 수 변조',
    n.domain = 'NW',
    n.definition = 'PWM의 펄스 파형 미분한 시간적 위치인 펄스 위치정보 전송',
    n.aliases = ['PNM', '펄스 수 변조'];

MERGE (n:Concept {id: 'pcm'})
SET     n.name = 'PCM',
    n.name_kr = '펄스 부호 변조',
    n.domain = 'NW',
    n.definition = '아날로그 신호 PAM형태 변환 후 양자화, 부호화 단계를 거쳐 2진 부호 형태로 전송 - 시분할 다중통신방식에 사용',
    n.aliases = ['PCM', '펄스 부호 변조'];

MERGE (n:Concept {id: '델타_변조'})
SET     n.name = '델타 변조(ΔM)',
    n.name_kr = '델타 변조(ΔM)',
    n.domain = 'NW',
    n.definition = '현재 표본값에서 이전 표본값을 뺀 차동 신호가 (+)이면 1, (-)이면 0으로 부호화 후 한개 bit 단위로 전송 - 비트 에러에 강함, 시스템 구성 간단, 신뢰성 높음 - 군용, 특수 통신용 사용 - 아날로그 파형 급격한 변화로 추적 불가 시 경사 과부하잡음(Slope Over Load Noise) 발생, - 아날로그 파형 완만히 변화 시 그래뉴러 잡음';

MERGE (n:Concept {id: '디지털변조'})
SET     n.name = '디지털변조',
    n.name_kr = '디지털변조',
    n.domain = 'NW',
    n.definition = '진폭 편이 변조( ASK : Amplitude Shift Keying)';

MERGE (n:Concept {id: '주파수_편이변조'})
SET     n.name = '주파수 편이변조( FSK : Frequency Shift Keying)',
    n.name_kr = '주파수 편이변조( FSK : Frequency Shift Keying)',
    n.domain = 'NW',
    n.definition = '2진 데이터에 대응하여 반송파 주파수를 2개 주파수로 스위칭 시켜 반송파 주파수를 변화 시키는 변조방식';

MERGE (n:Concept {id: '위상_편이변조'})
SET     n.name = '위상 편이변조( PSK : Phase Shift Keying)',
    n.name_kr = '위상 편이변조( PSK : Phase Shift Keying)',
    n.domain = 'NW',
    n.definition = '디지털 신호(2진 데이터)의 정보 내용에 따라 반송파 위상을 변화 시키는 방식';

// --- 관계 ---

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'psk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'ask'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'fsk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'qam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'transducer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'mixer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'carrier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'amplifier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '아날로그_변조_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '디지털_변조_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '펄스_부호_변조_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '아날로그-연속파변조날'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'frequency_modulation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'phase_modulation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '아날로그-_이산파변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'ppm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'pwm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'pnm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: 'pcm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '델타_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '디지털변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '주파수_편이변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Concept {id: '위상_편이변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Document {id: 'NW_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'modulation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ask'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fsk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transducer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mixer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'carrier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'amplifier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아날로그_변조_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_변조_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '펄스_부호_변조_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아날로그-연속파변조날'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'frequency_modulation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'phase_modulation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아날로그-_이산파변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ppm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pwm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pnm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '델타_변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수_편이변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상_편이변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_003: ASK(Amplitude Shift Keying)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_003'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'amplitude_shift_keying'})
SET     n.name = 'Amplitude Shift Keying',
    n.name_kr = 'ASK',
    n.domain = 'NW',
    n.aliases = ['Amplitude Shift Keying', 'ASK'];

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '진폭_위상_변조'})
SET     n.name = '진폭 위상 변조',
    n.name_kr = '진폭 위상 변조',
    n.domain = 'NW';

MERGE (n:Concept {id: '수식적_표현'})
SET     n.name = '수식적 표현',
    n.name_kr = '수식적 표현',
    n.domain = 'NW';

MERGE (n:Concept {id: '심볼의_모양'})
SET     n.name = '심볼의 모양',
    n.name_kr = '심볼의 모양',
    n.domain = 'NW',
    n.definition = '(`1`,`0`)에 의해 반송파 진폭 결정';

MERGE (n:Concept {id: '심볼_모양별_구분'})
SET     n.name = '심볼 모양별 구분',
    n.name_kr = '심볼 모양별 구분',
    n.domain = 'NW',
    n.definition = '2진 단극 NRZ';

MERGE (n:Concept {id: '2진_복극_nrz'})
SET     n.name = '2진 복극 NRZ',
    n.name_kr = '2진 복극 NRZ',
    n.domain = 'NW',
    n.definition = '2진 복극 NRZ = BPSK 방식 (사실상 ASK와 등가적임, Bipolar 2-ary ASK)';

MERGE (n:Concept {id: '4진_복극_nrz'})
SET     n.name = '4진 복극 NRZ',
    n.name_kr = '4진 복극 NRZ',
    n.domain = 'NW',
    n.definition = '4진 복극 NRZ = QASK 방식 (사실상 ASK와 등가적임, Bipolar 4-ary ASK';

MERGE (n:Concept {id: '오류_확률'})
SET     n.name = '오류 확률',
    n.name_kr = '오류 확률',
    n.domain = 'NW',
    n.definition = '동기 ASK 검파방식';

MERGE (n:Concept {id: '대역폭'})
SET     n.name = '대역폭 (BT = 2W)',
    n.name_kr = '대역폭 (BT = 2W)',
    n.domain = 'NW',
    n.definition = '1/Tb (=W)';

MERGE (n:Concept {id: '2_tb'})
SET     n.name = '2/Tb (=2W)',
    n.name_kr = '2/Tb (=2W)',
    n.domain = 'NW',
    n.definition = 'ASK 변조 대역에서, Null to Null 대역폭 - Tb : ASK 변조파의 포락선 펄스폭 - 기저대역 상의 단극 NRZ 신호 대역폭의 2배의 대역폭이 필요';

MERGE (n:Concept {id: '대역폭_효율'})
SET     n.name = '대역폭 효율',
    n.name_kr = '대역폭 효율',
    n.domain = 'NW',
    n.definition = '1 bps/Hz';

// --- 관계 ---

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '진폭_위상_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '수식적_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '심볼의_모양'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '심볼_모양별_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '2진_복극_nrz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '4진_복극_nrz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '오류_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '대역폭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '2_tb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Concept {id: '대역폭_효율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Document {id: 'NW_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'amplitude_shift_keying'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진폭_위상_변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식적_표현'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심볼의_모양'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심볼_모양별_구분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2진_복극_nrz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4진_복극_nrz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류_확률'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대역폭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_tb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대역폭_효율'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_004: PSK(Phase Shift keying)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_004'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'phase_shift_keying'})
SET     n.name = 'Phase Shift keying',
    n.name_kr = 'PSK',
    n.domain = 'NW',
    n.aliases = ['Phase Shift keying', 'PSK'];

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '위상_편이_변조'})
SET     n.name = '위상 편이 변조',
    n.name_kr = '위상 편이 변조',
    n.domain = 'NW';

MERGE (n:Concept {id: '각도_이용'})
SET     n.name = '각도 이용',
    n.name_kr = '각도 이용',
    n.domain = 'NW';

MERGE (n:Concept {id: '수식적_표현'})
SET     n.name = '수식적 표현',
    n.name_kr = '수식적 표현',
    n.domain = 'NW';

MERGE (n:Concept {id: 'psk_구분'})
SET     n.name = 'PSK 구분',
    n.name_kr = 'PSK 구분',
    n.domain = 'NW',
    n.definition = '반송파 위상 변화 상태 수';

MERGE (n:Concept {id: '위상이_미리_정해지는지_여부'})
SET     n.name = '위상이 미리 정해지는지 여부',
    n.name_kr = '위상이 미리 정해지는지 여부',
    n.domain = 'NW',
    n.definition = 'Coherent PSK : 미리 정해진 위상으로 반송파를 변조 - Differential PSK (차동 PSK, DPSK) : 연이어 나타나는 심볼 간 위상차이로 반송파를 변조';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW',
    n.definition = 'DPSK, OQPSK';

MERGE (n:Concept {id: '대역폭_와_동일'})
SET     n.name = '대역폭 (ASK-BPSK,MASK)와 동일',
    n.name_kr = '대역폭 (ASK-BPSK,MASK)와 동일',
    n.domain = 'NW',
    n.definition = '1/Tb (=W)';

MERGE (n:Concept {id: '2_tb'})
SET     n.name = '2/Tb (=2W)',
    n.name_kr = '2/Tb (=2W)',
    n.domain = 'NW',
    n.definition = 'ASK 변조 대역에서, Null to Null 대역폭 - Tb : ASK 변조파의 포락선 펄스폭 - 기저대역 상의 단극 NRZ 신호 대역폭의 2배의 대역폭이 필요';

MERGE (n:Concept {id: '변복조_회로가_비교적_간단'})
SET     n.name = '변복조 회로가 비교적 간단',
    n.name_kr = '변복조 회로가 비교적 간단',
    n.domain = 'NW',
    n.definition = '반송파가 양측파대 신호이므로 타이밍 및 주파수 정보를 모두 갖게되므로, 변복조 회로가 비교적 간단함';

// --- 관계 ---

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '위상_편이_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '각도_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '수식적_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: 'psk_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '위상이_미리_정해지는지_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '대역폭_와_동일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '2_tb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Concept {id: '변복조_회로가_비교적_간단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Document {id: 'NW_004'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'phase_shift_keying'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상_편이_변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '각도_이용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식적_표현'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psk_구분'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상이_미리_정해지는지_여부'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대역폭_와_동일'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_tb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변복조_회로가_비교적_간단'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_005: QAM(Quadrature Amplitude Modulation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_005'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'quadrature_amplitude_modulation'})
SET     n.name = 'Quadrature Amplitude Modulation',
    n.name_kr = 'QAM',
    n.domain = 'NW',
    n.aliases = ['Quadrature Amplitude Modulation', 'QAM'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'qam'})
SET     n.name = 'QAM',
    n.name_kr = 'QAM',
    n.domain = 'NW',
    n.aliases = ['QAM'];

MERGE (n:Concept {id: '디지털_변조_방식_진폭변조'})
SET     n.name = '디지털 변조 방식 진폭변조',
    n.name_kr = '디지털 변조 방식 진폭변조',
    n.domain = 'NW';

MERGE (n:Concept {id: '위상변조'})
SET     n.name = '위상변조',
    n.name_kr = '위상변조',
    n.domain = 'NW';

MERGE (n:Concept {id: '16_64_256_1024_qam'})
SET     n.name = '16/64/256/1024 QAM',
    n.name_kr = '16/64/256/1024 QAM',
    n.domain = 'NW';

MERGE (n:Concept {id: 'constellation_diagram'})
SET     n.name = '성상도',
    n.name_kr = '성상도',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qam'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Concept {id: '디지털_변조_방식_진폭변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Concept {id: '위상변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Concept {id: '16_64_256_1024_qam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Concept {id: 'constellation_diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Document {id: 'NW_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'quadrature_amplitude_modulation'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_변조_방식_진폭변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '16_64_256_1024_qam'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'constellation_diagram'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_006: 소스코딩, 채널코딩, 라인코딩
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_006'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
SET     n.name = '소스코딩, 채널코딩, 라인코딩',
    n.name_kr = '소스코딩, 채널코딩, 라인코딩',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'bec'})
SET     n.name = 'BEC',
    n.name_kr = '오류제어',
    n.domain = 'NW',
    n.aliases = ['BEC', '오류제어'];

MERGE (n:Concept {id: '라인코딩_:_동기재생'})
SET     n.name = '라인코딩 : 동기재생',
    n.name_kr = '라인코딩 : 동기재생',
    n.domain = 'NW';

MERGE (n:Concept {id: 'unipolar'})
SET     n.name = 'Unipolar',
    n.name_kr = 'Unipolar',
    n.domain = 'NW',
    n.aliases = ['Unipolar'];

MERGE (n:Concept {id: 'polar'})
SET     n.name = 'Polar',
    n.name_kr = 'Polar',
    n.domain = 'NW',
    n.aliases = ['Polar'];

MERGE (n:Concept {id: 'bipolar'})
SET     n.name = 'Bipolar',
    n.name_kr = 'Bipolar',
    n.domain = 'NW',
    n.aliases = ['Bipolar'];

MERGE (n:Concept {id: '부호화'})
SET     n.name = '부호화',
    n.name_kr = '부호화',
    n.domain = 'NW';

MERGE (n:Concept {id: '기법_설명'})
SET     n.name = '기법 설명',
    n.name_kr = '기법 설명',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'bec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: '라인코딩_:_동기재생'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'unipolar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'polar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'bipolar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부호화'})
MERGE (b:Concept {id: '기법_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: '부호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: '기법_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unipolar'})
MERGE (b:Concept {id: 'polar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'unipolar'})
MERGE (b:Concept {id: 'bipolar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'unipolar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'polar'})
MERGE (b:Concept {id: 'bipolar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'polar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Concept {id: 'bipolar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Document {id: 'NW_006'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소스코딩,_채널코딩,_라인코딩'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bec'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라인코딩_:_동기재생'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unipolar'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'polar'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bipolar'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부호화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법_설명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_007: 베이스밴드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_007'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'baseband'})
SET     n.name = 'Baseband',
    n.name_kr = '베이스밴드',
    n.domain = 'NW',
    n.aliases = ['베이스밴드'];

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '유폴바'})
SET     n.name = '유폴바',
    n.name_kr = '유폴바',
    n.domain = 'NW';

MERGE (n:Concept {id: '0100111'})
SET     n.name = '(사례)0100111',
    n.name_kr = '(사례)0100111',
    n.domain = 'NW';

MERGE (n:Concept {id: '맨체스터(비트중간에_극성변화'})
SET     n.name = '맨체스터(비트중간에 극성변화',
    n.name_kr = '맨체스터(비트중간에 극성변화',
    n.domain = 'NW';

MERGE (n:Concept {id: '라인코딩방식'})
SET     n.name = '라인코딩방식',
    n.name_kr = '라인코딩방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '이더넷802.3)'})
SET     n.name = '이더넷802.3)',
    n.name_kr = '이더넷802.3)',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: '유폴바'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: '0100111'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: '맨체스터(비트중간에_극성변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: '라인코딩방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Concept {id: '이더넷802.3)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Document {id: 'NW_007'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'baseband'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유폴바'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0100111'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '맨체스터(비트중간에_극성변화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라인코딩방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이더넷802.3)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_008: 맨체스터(Manchester) 코드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_008'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'manchester'})
SET     n.name = '맨체스터(Manchester) 코드',
    n.name_kr = '맨체스터(Manchester) 코드',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '비트중간에_극성변화'})
SET     n.name = '비트중간에 극성변화',
    n.name_kr = '비트중간에 극성변화',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'manchester'})
MERGE (b:Concept {id: '비트중간에_극성변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'manchester'})
MERGE (b:Document {id: 'NW_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'manchester'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비트중간에_극성변화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_009: PCM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_009'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'pcm'})
SET     n.name = 'PCM',
    n.name_kr = 'PCM',
    n.domain = 'NW',
    n.aliases = ['PCM'];

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '표양부-재복재'})
SET     n.name = '표양부-재복재',
    n.name_kr = '표양부-재복재',
    n.domain = 'NW';

MERGE (n:Concept {id: '나이퀴스트_샘플링'})
SET     n.name = '나이퀴스트 샘플링(2배이상의 주파수)',
    n.name_kr = '나이퀴스트 샘플링(2배이상의 주파수)',
    n.domain = 'NW';

MERGE (n:Concept {id: '송신'})
SET     n.name = '송신',
    n.name_kr = '송신',
    n.domain = 'NW',
    n.definition = '표본화 (Sampling)';

MERGE (n:Concept {id: 'quantization'})
SET     n.name = 'Quantization',
    n.name_kr = '양자화',
    n.domain = 'NW',
    n.definition = 'PAM 신호를 디지털화 하기 위해 진폭 축으로 이산 값을 갖도록 처리하는 과정 - PAM신호를 이산적인 디지털 값으로 변환 - 양자화 레벨 = 2^n (n=표본당 전송 비트 수)',
    n.aliases = ['Quantization', '양자화'];

MERGE (n:Concept {id: 'encoding'})
SET     n.name = 'Encoding',
    n.name_kr = '부호화',
    n.domain = 'NW',
    n.definition = '양자화된 PCM 펄스의 진폭 크기를 2진수(0, 1)로 표시하는 과정',
    n.aliases = ['Encoding', '부호화'];

MERGE (n:Concept {id: '수신'})
SET     n.name = '수신',
    n.name_kr = '수신',
    n.domain = 'NW',
    n.definition = '재생';

MERGE (n:Concept {id: 'decoding'})
SET     n.name = 'Decoding',
    n.name_kr = '복호화',
    n.domain = 'NW',
    n.definition = '수신된 디지털 신호(PCM)을 PAM신호로 되돌리는 단계',
    n.aliases = ['Decoding', '복호화'];

MERGE (n:Concept {id: 'filtering'})
SET     n.name = 'Filtering',
    n.name_kr = '재구성',
    n.domain = 'NW',
    n.definition = 'PAM 신호를 원래의 아날로그 신호로 복원하는 단계',
    n.aliases = ['Filtering', '재구성'];

MERGE (n:Concept {id: '샘플링_사례'})
SET     n.name = '샘플링 사례',
    n.name_kr = '샘플링 사례',
    n.domain = 'NW',
    n.definition = '나이퀴스트 sampling';

// --- 관계 ---

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: '표양부-재복재'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: '나이퀴스트_샘플링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: '송신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: 'quantization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: 'encoding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: '수신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: 'decoding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: 'filtering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Concept {id: '샘플링_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Document {id: 'NW_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pcm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표양부-재복재'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '나이퀴스트_샘플링'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '송신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quantization'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encoding'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decoding'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'filtering'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '샘플링_사례'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_010: 캡슐화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_010'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '캡슐화'})
SET     n.name = '캡슐화',
    n.name_kr = '캡슐화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'network_기본'})
SET     n.name = 'Network 기본',
    n.name_kr = 'Network 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '역캡슐화'})
SET     n.name = '역캡슐화',
    n.name_kr = '역캡슐화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'pdu'})
SET     n.name = 'PDU',
    n.name_kr = 'PDU',
    n.domain = 'NW',
    n.aliases = ['PDU'];

// --- 관계 ---

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Concept {id: 'network_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Concept {id: '역캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Concept {id: 'pdu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Document {id: 'NW_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역캡슐화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdu'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_011: MUX
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_011'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'mux'})
SET     n.name = 'MUX',
    n.name_kr = 'MUX',
    n.domain = 'NW',
    n.aliases = ['MUX'];

MERGE (n:Concept {id: 'multiplexing'})
SET     n.name = 'multiplexing',
    n.name_kr = '다중화',
    n.domain = 'NW',
    n.aliases = ['multiplexing', '다중화'];

MERGE (n:Concept {id: 'sftwo'})
SET     n.name = 'SFTWO',
    n.name_kr = 'SF는 두명이본다',
    n.domain = 'NW',
    n.aliases = ['SFTWO', 'SF는 두명이본다'];

MERGE (n:Concept {id: 'fdm'})
SET     n.name = 'FDM',
    n.name_kr = '주파수 분할 다중화',
    n.domain = 'NW',
    n.aliases = ['FDM', '주파수 분할 다중화'];

MERGE (n:Concept {id: 'tdm'})
SET     n.name = 'TDM',
    n.name_kr = '시분할 다중화',
    n.domain = 'NW',
    n.definition = 'TDM(Time Division Multiplexing) 다수의 송신 신호를 일정 시간 간격으로 각각을 샘플링하여 순차적으로 전송하는 방법',
    n.aliases = ['TDM', '시분할 다중화'];

MERGE (n:Concept {id: 'wdm'})
SET     n.name = 'WDM',
    n.name_kr = '파장분할 다중화',
    n.domain = 'NW',
    n.definition = 'WDM (Wavelength Division Multiplexing) 다수의 송신 신호를 신호 별로 다른 빛의 파장으로 만든 후 이를 결합하여 송신하고 수신 측에서 프리즘을 이용하여 빛의 파장을 분리하는 방법',
    n.aliases = ['WDM', '파장분할 다중화'];

MERGE (n:Concept {id: 'cdm'})
SET     n.name = 'CDM',
    n.name_kr = '코드분할 다중화',
    n.domain = 'NW',
    n.definition = 'CDM (Code Division multiplexing) 각각의 송신신호에 고유한 code를 부여하여 여러 신호를 동시에 송신하는 방법. 수신시 받은 신호에 고유 code를 이용하여 원 신호를 복원.',
    n.aliases = ['CDM', '코드분할 다중화'];

MERGE (n:Concept {id: 'sdm'})
SET     n.name = 'SDM',
    n.name_kr = '공간분할 다중화',
    n.domain = 'NW',
    n.definition = 'SDM (Space Division multiplexing) 공간적으로 분리된 다수의 물리채널을 마치 하나의 채널인 것처럼 만들어진 논리적 채널로 전송',
    n.aliases = ['SDM', '공간분할 다중화'];

MERGE (n:Concept {id: '고정_할당'})
SET     n.name = '고정 할당',
    n.name_kr = '고정 할당',
    n.domain = 'NW';

MERGE (n:Concept {id: 'fdma'})
SET     n.name = 'FDMA',
    n.name_kr = 'FDMA',
    n.domain = 'NW',
    n.definition = '전송 매체를 시간 슬롯으로 분할 전송',
    n.aliases = ['FDMA'];

MERGE (n:Concept {id: 'tdma'})
SET     n.name = 'TDMA',
    n.name_kr = 'TDMA',
    n.domain = 'NW',
    n.definition = '확산 대역(spread spectrum) 및 코드를 이용',
    n.aliases = ['TDMA'];

MERGE (n:Concept {id: 'cdma'})
SET     n.name = 'CDMA',
    n.name_kr = 'CDMA',
    n.domain = 'NW',
    n.definition = '파장 대역으로 분할 전송',
    n.aliases = ['CDMA'];

MERGE (n:Concept {id: '동적_할당'})
SET     n.name = '동적 할당',
    n.name_kr = '동적 할당',
    n.domain = 'NW',
    n.definition = 'Random Access';

MERGE (n:Concept {id: '비경쟁방식'})
SET     n.name = '비경쟁방식',
    n.name_kr = '비경쟁방식',
    n.domain = 'NW',
    n.definition = '예약방식 : 토큰버스, 토큰 링 등의 토큰방식 각 단말의 전송매체 점유 경쟁 없음 (토큰, 라운드로빈, 폴링 등)';

MERGE (n:Concept {id: '하이브리드'})
SET     n.name = '하이브리드',
    n.name_kr = '하이브리드',
    n.domain = 'NW',
    n.definition = 'Random Access, 비경쟁방식을 혼합한 방식';

// --- 관계 ---

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'multiplexing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'sftwo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'fdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'tdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'wdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'cdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'sdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Concept {id: 'tdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Concept {id: 'cdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Concept {id: 'wdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'fdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tdm'})
MERGE (b:Concept {id: 'cdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tdm'})
MERGE (b:Concept {id: 'wdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'tdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdm'})
MERGE (b:Concept {id: 'wdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'cdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'wdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: '고정_할당'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'fdma'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'tdma'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: 'cdma'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: '동적_할당'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: '비경쟁방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Concept {id: '하이브리드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Document {id: 'NW_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mux'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sftwo'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정_할당'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적_할당'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비경쟁방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_012: FDM(Frequency Division Multiplexing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_012'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'frequency_division_multiplexing'})
SET     n.name = 'Frequency Division Multiplexing',
    n.name_kr = 'FDM',
    n.domain = 'NW',
    n.aliases = ['Frequency Division Multiplexing', 'FDM'];

MERGE (n:Concept {id: 'multiplexing'})
SET     n.name = 'multiplexing',
    n.name_kr = '다중화',
    n.domain = 'NW',
    n.aliases = ['multiplexing', '다중화'];

MERGE (n:Concept {id: 'fdm'})
SET     n.name = 'FDM',
    n.name_kr = '주파수분할 다중화',
    n.domain = 'NW',
    n.aliases = ['FDM', '주파수분할 다중화'];

// --- 관계 ---

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Concept {id: 'multiplexing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'frequency_division_multiplexing'})
MERGE (b:Document {id: 'NW_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'frequency_division_multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_013: TDM(Time Division Multiplexing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_013'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'time_division_multiplexing'})
SET     n.name = 'Time Division Multiplexing',
    n.name_kr = 'TDM',
    n.domain = 'NW',
    n.aliases = ['Time Division Multiplexing', 'TDM'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '다중화'})
SET     n.name = '다중화',
    n.name_kr = '다중화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'tdm'})
SET     n.name = 'TDM',
    n.name_kr = 'TDM',
    n.domain = 'NW',
    n.aliases = ['TDM'];

MERGE (n:Concept {id: 'round_robin'})
SET     n.name = 'Round-robin',
    n.name_kr = '\'라운드 로빈',
    n.domain = 'NW',
    n.aliases = ['Round-robin', '\'라운드 로빈'];

MERGE (n:Concept {id: 'time_slot'})
SET     n.name = 'Time Slot',
    n.name_kr = '타임슬롯',
    n.domain = 'NW',
    n.aliases = ['Time Slot', '타임슬롯'];

// --- 관계 ---

MERGE (a:Concept {id: '다중화'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tdm'})
MERGE (b:Concept {id: '다중화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'time_division_multiplexing'})
MERGE (b:Concept {id: 'round_robin'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'time_division_multiplexing'})
MERGE (b:Concept {id: 'time_slot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'time_division_multiplexing'})
MERGE (b:Document {id: 'NW_013'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'time_division_multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_slot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_014: WDM(Wavelength Division Multiplexing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_014'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wavelength_division_multiplexing'})
SET     n.name = 'Wavelength Division Multiplexing',
    n.name_kr = 'WDM',
    n.domain = 'NW',
    n.aliases = ['Wavelength Division Multiplexing', 'WDM'];

MERGE (n:Concept {id: '다중화'})
SET     n.name = '다중화',
    n.name_kr = '다중화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wdm'})
SET     n.name = 'WDM',
    n.name_kr = 'WDM',
    n.domain = 'NW',
    n.aliases = ['WDM'];

MERGE (n:Concept {id: '광섬유'})
SET     n.name = '광섬유',
    n.name_kr = '광섬유',
    n.domain = 'NW';

MERGE (n:Concept {id: '광파장'})
SET     n.name = '광파장',
    n.name_kr = '광파장',
    n.domain = 'NW';

MERGE (n:Concept {id: 'coarse_wdm'})
SET     n.name = 'CWDM(Coarse WDM) 저밀도 파장분할 다중방식',
    n.name_kr = 'CWDM(Coarse WDM) 저밀도 파장분할 다중방식',
    n.domain = 'NW';

MERGE (n:Concept {id: 'dense_wdm'})
SET     n.name = 'DWDM(Dense WDM) 고밀도 파장분할 다중방식',
    n.name_kr = 'DWDM(Dense WDM) 고밀도 파장분할 다중방식',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wdm'})
MERGE (b:Concept {id: '다중화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Concept {id: '광섬유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Concept {id: '광파장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coarse_wdm'})
MERGE (b:Concept {id: 'dense_wdm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Concept {id: 'coarse_wdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Concept {id: 'dense_wdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Document {id: 'NW_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wavelength_division_multiplexing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광섬유'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광파장'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coarse_wdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dense_wdm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_017: 대역확산(Spread Spectrum)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_017'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'spread_spectrum'})
SET     n.name = 'Spread Spectrum',
    n.name_kr = '대역확산',
    n.domain = 'NW',
    n.aliases = ['Spread Spectrum', '대역확산'];

MERGE (n:Concept {id: '기본'})
SET     n.name = '기본',
    n.name_kr = '기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '간섭방지'})
SET     n.name = '간섭방지',
    n.name_kr = '간섭방지',
    n.domain = 'NW';

MERGE (n:Concept {id: '확산'})
SET     n.name = '확산',
    n.name_kr = '확산',
    n.domain = 'NW';

MERGE (n:Concept {id: '역확산'})
SET     n.name = '역확산',
    n.name_kr = '역확산',
    n.domain = 'NW';

MERGE (n:Concept {id: 'dsss'})
SET     n.name = 'DSSS',
    n.name_kr = 'DSSS',
    n.domain = 'NW',
    n.aliases = ['DSSS'];

MERGE (n:Concept {id: 'fhss'})
SET     n.name = 'FHSS',
    n.name_kr = 'FHSS',
    n.domain = 'NW',
    n.aliases = ['FHSS'];

// --- 관계 ---

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: '기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: '간섭방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: '확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: '역확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: 'dsss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Concept {id: 'fhss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Document {id: 'NW_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'spread_spectrum'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간섭방지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역확산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fhss'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_018: 패킷 교환 네트워크 & 회선 교환 네트워크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_018'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
SET     n.name = '패킷 교환 네트워크 & 회선 교환 네트워크',
    n.name_kr = '패킷 교환 네트워크 & 회선 교환 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '유선_네트워크_분류'})
SET     n.name = '유선 네트워크 분류',
    n.name_kr = '유선 네트워크 분류',
    n.domain = 'NW';

MERGE (n:Concept {id: 'shared'})
SET     n.name = 'shared',
    n.name_kr = 'shared',
    n.domain = 'NW',
    n.aliases = ['shared'];

MERGE (n:Concept {id: '회선_교환'})
SET     n.name = '회선 교환',
    n.name_kr = '회선 교환',
    n.domain = 'NW';

MERGE (n:Concept {id: '패킷_교환'})
SET     n.name = '패킷 교환',
    n.name_kr = '패킷 교환',
    n.domain = 'NW';

MERGE (n:Concept {id: '개요'})
SET     n.name = '개요',
    n.name_kr = '개요',
    n.domain = 'NW',
    n.definition = '1. 송수신장치에서 데이터를 전송할 때 마다 통신경로를 물리적으로 설정하여 데이터를 교환하는 방식임. (연결지향형 서비스) 2. 물리적 연결은 정보 전송이 종료될 때까지 계속됨. 3. 음성전화망이 대표적이며, 회선은 두 사용자에게만 가능함. 4. 형식에 관계없이 전송가능하며 독점적 회선사용 임.';

MERGE (n:Concept {id: '동작원리_및_특징'})
SET     n.name = '동작원리 및 특징',
    n.name_kr = '동작원리 및 특징',
    n.domain = 'NW',
    n.definition = '회선교환은 두 회선 설정, 데이터 이동, 회선 단절등 3단계로 이루어짐. - 신호를 그대로 전송하며, 송수신되는 메시지의 형식이나 코드에 관계없이 전송됨.';

MERGE (n:Concept {id: '시간분할_방식'})
SET     n.name = '시간분할 방식',
    n.name_kr = '시간분할 방식',
    n.domain = 'NW',
    n.definition = '입출력 회선을 다중화 장치에 의해 시분할 하여 회선을 접속. - 구성은 복잡하나 상대적으로 교환기 크기가 작아짐.';

MERGE (n:Concept {id: '동작방식'})
SET     n.name = '동작방식',
    n.name_kr = '동작방식',
    n.domain = 'NW';

MERGE (n:Technology {id: '데이터그램방식'})
SET     n.name = '데이터그램방식 (비연결형 서비스, UDP)',
    n.name_kr = '데이터그램방식 (비연결형 서비스, UDP)',
    n.domain = 'NW',
    n.definition = '연결 경로를 설정하지 않고, 각각의 패킷을 순서에 무관하게 독립적으로 전송하는 방식임.';

// --- 관계 ---

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '유선_네트워크_분류'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: 'shared'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '회선_교환'})
MERGE (b:Concept {id: '패킷_교환'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '회선_교환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '패킷_교환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '동작원리_및_특징'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '시간분할_방식'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Concept {id: '동작방식'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Technology {id: '데이터그램방식'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Document {id: 'NW_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '패킷_교환_네트워크_&_회선_교환_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유선_네트워크_분류'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shared'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회선_교환'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷_교환'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개요'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리_및_특징'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간분할_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '데이터그램방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_019: OSI 7 Layer
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_019'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'osi_7_layer'})
SET     n.name = 'OSI 7 Layer',
    n.name_kr = 'OSI 7 Layer',
    n.domain = 'NW',
    n.aliases = ['OSI 7 Layer'];

MERGE (n:Concept {id: '디지털_네트워크'})
SET     n.name = '디지털 네트워크',
    n.name_kr = '디지털 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'osi_7_layers'})
SET     n.name = 'OSI 7 Layers',
    n.name_kr = 'OSI 7 Layers',
    n.domain = 'NW',
    n.aliases = ['OSI 7 Layers'];

MERGE (n:Concept {id: '참조_모델'})
SET     n.name = '참조 모델',
    n.name_kr = '참조 모델',
    n.domain = 'NW',
    n.definition = '네트워크 표준 개발, 의사소통 도구';

MERGE (n:Concept {id: '계층구조'})
SET     n.name = '계층구조',
    n.name_kr = '계층구조',
    n.domain = 'NW',
    n.definition = '각 계층의 독립성 보장';

MERGE (n:Concept {id: '캡슐화'})
SET     n.name = '캡슐화',
    n.name_kr = '캡슐화',
    n.domain = 'NW',
    n.definition = '상위에서 하위 계층 전달시 암호화';

MERGE (n:Concept {id: '역캡슐화'})
SET     n.name = '역캡슐화',
    n.name_kr = '역캡슐화',
    n.domain = 'NW',
    n.definition = '하위에서 상위 계층 전달시 복호화';

MERGE (n:Technology {id: 'tcp_ip'})
SET     n.name = 'TCP/IP',
    n.name_kr = 'TCP/IP',
    n.domain = 'NW',
    n.aliases = ['TCP/IP'];

// --- 관계 ---

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Concept {id: '디지털_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Concept {id: '참조_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Concept {id: '계층구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Concept {id: '캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Concept {id: '역캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Technology {id: 'tcp_ip'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Technology {id: 'tcp_ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Document {id: 'NW_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'osi_7_layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참조_모델'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계층구조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역캡슐화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_020: Application(7)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_020'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '디지털_네트워크'})
SET     n.name = '디지털 네트워크',
    n.name_kr = '디지털 네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'osi_7_layers'})
SET     n.name = 'OSI 7 Layers',
    n.name_kr = 'OSI 7 Layers',
    n.domain = 'NW',
    n.aliases = ['OSI 7 Layers'];

MERGE (n:Concept {id: 'message'})
SET     n.name = 'Message',
    n.name_kr = 'Message',
    n.domain = 'NW',
    n.aliases = ['Message'];

MERGE (n:Concept {id: '사용자_연결'})
SET     n.name = '사용자 연결',
    n.name_kr = '사용자 연결',
    n.domain = 'NW';

MERGE (n:Concept {id: 'l7_스위치'})
SET     n.name = 'L7 스위치',
    n.name_kr = 'L7 스위치',
    n.domain = 'NW';

MERGE (n:Technology {id: 'http'})
SET     n.name = 'HTTP',
    n.name_kr = 'HTTP',
    n.domain = 'NW',
    n.aliases = ['HTTP'];

MERGE (n:Technology {id: 'ssh'})
SET     n.name = 'SSH',
    n.name_kr = 'SSH',
    n.domain = 'NW',
    n.aliases = ['SSH'];

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'NW',
    n.aliases = ['SIP'];

MERGE (n:Technology {id: 'ftp'})
SET     n.name = 'FTP',
    n.name_kr = 'FTP',
    n.domain = 'NW',
    n.aliases = ['FTP'];

MERGE (n:Concept {id: 'telnet'})
SET     n.name = 'TELNET',
    n.name_kr = 'TELNET',
    n.domain = 'NW',
    n.aliases = ['TELNET'];

MERGE (n:Concept {id: 'modbus'})
SET     n.name = 'MODBUS',
    n.name_kr = 'MODBUS',
    n.domain = 'NW',
    n.aliases = ['MODBUS'];

MERGE (n:Concept {id: 'keep_alive'})
SET     n.name = 'Keep Alive',
    n.name_kr = 'Keep Alive',
    n.domain = 'NW',
    n.aliases = ['Keep Alive'];

MERGE (n:Concept {id: 'voip'})
SET     n.name = 'VoIP',
    n.name_kr = 'VoIP',
    n.domain = 'NW',
    n.aliases = ['VoIP'];

MERGE (n:Concept {id: 'signaling'})
SET     n.name = 'Signaling',
    n.name_kr = 'Signaling',
    n.domain = 'NW',
    n.aliases = ['Signaling'];

MERGE (n:Concept {id: 'hl7'})
SET     n.name = 'HL7',
    n.name_kr = 'HL7',
    n.domain = 'NW',
    n.aliases = ['HL7'];

MERGE (n:Concept {id: '역할_측면'})
SET     n.name = '역할 측면',
    n.name_kr = '역할 측면',
    n.domain = 'NW',
    n.definition = '사용자 연결';

MERGE (n:Concept {id: '데이터_타입'})
SET     n.name = '데이터 타입',
    n.name_kr = '데이터 타입',
    n.domain = 'NW',
    n.definition = 'Message';

MERGE (n:Concept {id: '장비_측면'})
SET     n.name = '장비 측면',
    n.name_kr = '장비 측면',
    n.domain = 'NW',
    n.definition = 'L7 스위치';

MERGE (n:Concept {id: '프로토콜_측면'})
SET     n.name = '프로토콜 측면',
    n.name_kr = '프로토콜 측면',
    n.domain = 'NW',
    n.definition = '서비스 프로토콜';

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'NW',
    n.definition = 'UI, 입출력';

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'NW';

MERGE (n:Concept {id: 'registered_port'})
SET     n.name = 'registered port',
    n.name_kr = '등록된 포트',
    n.domain = 'NW',
    n.definition = '1024 ~ 49151',
    n.aliases = ['registered port', '등록된 포트'];

MERGE (n:Concept {id: 'dynamic_port'})
SET     n.name = 'dynamic port',
    n.name_kr = '동적 포트',
    n.domain = 'NW',
    n.definition = '49152 ~ 65535',
    n.aliases = ['dynamic port', '동적 포트'];

MERGE (n:Concept {id: '시그널링'})
SET     n.name = '시그널링',
    n.name_kr = '시그널링',
    n.domain = 'NW',
    n.definition = 'SIP';

MERGE (n:Standard {id: 'sdp'})
SET     n.name = 'SDP',
    n.name_kr = 'SDP',
    n.domain = 'NW',
    n.definition = '멀티미디어 세션 파라미터 설정 (RFC 4566/3264)',
    n.aliases = ['SDP'];

MERGE (n:Concept {id: '멀티미디어_전송'})
SET     n.name = '멀티미디어 전송',
    n.name_kr = '멀티미디어 전송',
    n.domain = 'NW',
    n.definition = 'RTP/RTCP';

MERGE (n:Concept {id: 'audio_codec'})
SET     n.name = 'Audio codec',
    n.name_kr = 'Audio codec',
    n.domain = 'NW',
    n.definition = '음성 코덱파트 (G.711A, G.723.1, G.720A)',
    n.aliases = ['Audio codec'];

MERGE (n:Concept {id: 'video_codec'})
SET     n.name = 'Video codec',
    n.name_kr = 'Video codec',
    n.domain = 'NW',
    n.definition = '비디오 코덱파트 (H.263, MPEG-4, H.264)',
    n.aliases = ['Video codec'];

MERGE (n:Concept {id: 'sip_request_메시지'})
SET     n.name = 'SIP Request (요청)메시지',
    n.name_kr = 'SIP Request (요청)메시지',
    n.domain = 'NW',
    n.definition = 'INVITE';

MERGE (n:Concept {id: 'ack'})
SET     n.name = 'ACK',
    n.name_kr = 'ACK',
    n.domain = 'NW',
    n.definition = 'invite 메시지에 대한 최종 응답인 200ok를 수신했음을 통지하기 위한 메시지 - ACK는 별도의 응답을 받지 않음',
    n.aliases = ['ACK'];

MERGE (n:Concept {id: 'bye'})
SET     n.name = 'BYE',
    n.name_kr = 'BYE',
    n.domain = 'NW',
    n.definition = '세션을 종료할 때 사용하는 메시지',
    n.aliases = ['BYE'];

MERGE (n:Concept {id: 'cancel'})
SET     n.name = 'CANCEL',
    n.name_kr = 'CANCEL',
    n.domain = 'NW',
    n.definition = '현재 연결중인 세션의 연결을 취소할 때 사용하는 메시지',
    n.aliases = ['CANCEL'];

MERGE (n:Concept {id: 'option'})
SET     n.name = 'OPTION',
    n.name_kr = 'OPTION',
    n.domain = 'NW',
    n.definition = 'SIP 전화 걸기 및 받기 성능에 관한 정보를 전달할 때 사용하는 메시지',
    n.aliases = ['OPTION'];

MERGE (n:Concept {id: 'register'})
SET     n.name = 'REGISTER',
    n.name_kr = 'REGISTER',
    n.domain = 'NW',
    n.definition = '사용자 위치(호스트 이름, IP)등록 및 업데이트 시에 사용하는 메시지',
    n.aliases = ['REGISTER'];

MERGE (n:Concept {id: 'sip_response_메시지'})
SET     n.name = 'SIP Response (응답)메시지',
    n.name_kr = 'SIP Response (응답)메시지',
    n.domain = 'NW',
    n.definition = '1xx';

MERGE (n:Concept {id: '2xx'})
SET     n.name = '2xx',
    n.name_kr = '2xx',
    n.domain = 'NW',
    n.definition = '성공 응답 메시지(Success) - [200]:확인 / [202]:수락';

MERGE (n:Concept {id: '3xx'})
SET     n.name = '3xx',
    n.name_kr = '3xx',
    n.domain = 'NW',
    n.definition = '경로 변경 응답 메시지(redirection) - [300]:복수선택 / [301]:영구이동 / [302]:임시이동';

MERGE (n:Concept {id: '4xx'})
SET     n.name = '4xx',
    n.name_kr = '4xx',
    n.domain = 'NW',
    n.definition = '요청 실패 메시지(Client error) - [400]:잘못된 요청 / [401]:권한 없음 / [402]:요금 청구됨';

MERGE (n:Concept {id: '5xx'})
SET     n.name = '5xx',
    n.name_kr = '5xx',
    n.domain = 'NW',
    n.definition = '서버 오류 메시지(Server error) - [500]: 서버 내부 오류 / [502]:잘못된 Gateway';

MERGE (n:Concept {id: '6xx'})
SET     n.name = '6xx',
    n.name_kr = '6xx',
    n.domain = 'NW',
    n.definition = '전체 실패 메시지(Global failure) - [600]:모두 사용 중 / [603]:거부';

// --- 관계 ---

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Concept {id: '디지털_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'osi_7_layers'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'message'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '사용자_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'l7_스위치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Technology {id: 'http'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Technology {id: 'ssh'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Technology {id: 'ftp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'telnet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'modbus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'keep_alive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'voip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'signaling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'hl7'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '역할_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '데이터_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '장비_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '프로토콜_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'registered_port'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'dynamic_port'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '시그널링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Standard {id: 'sdp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '멀티미디어_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'audio_codec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'video_codec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'sip_request_메시지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'ack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'bye'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'cancel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'option'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'register'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: 'sip_response_메시지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '2xx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '3xx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '4xx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '5xx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Concept {id: '6xx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Document {id: 'NW_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디지털_네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'message'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_연결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'l7_스위치'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssh'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ftp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'telnet'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modbus'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keep_alive'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'voip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'signaling'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hl7'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역할_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_타입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'registered_port'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic_port'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시그널링'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'sdp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티미디어_전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'audio_codec'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'video_codec'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip_request_메시지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bye'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cancel'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'option'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip_response_메시지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2xx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3xx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4xx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5xx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6xx'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_021: Presentation(6)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_021'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'osi_7_layers'})
SET     n.name = 'OSI 7 layers',
    n.name_kr = 'OSI 7 layers',
    n.domain = 'NW',
    n.aliases = ['OSI 7 layers'];

MERGE (n:Concept {id: 'encryption'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'compression'})
SET     n.name = '압축',
    n.name_kr = '압축',
    n.domain = 'NW';

MERGE (n:Concept {id: '코드_변환'})
SET     n.name = '코드 변환',
    n.name_kr = '코드 변환',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'presentation'})
MERGE (b:Concept {id: 'osi_7_layers'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'presentation'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'presentation'})
MERGE (b:Concept {id: 'compression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'presentation'})
MERGE (b:Concept {id: '코드_변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'presentation'})
MERGE (b:Document {id: 'NW_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compression'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드_변환'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_022: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_022'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_023: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_023'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_024: NETWORK(3)★
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_024'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network★'})
SET     n.name = 'NETWORK(3)★',
    n.name_kr = 'NETWORK(3)★',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'osi7layer'})
SET     n.name = 'OSI7Layer',
    n.name_kr = 'OSI7Layer',
    n.domain = 'NW',
    n.aliases = ['OSI7Layer'];

MERGE (n:Concept {id: 'network_layer'})
SET     n.name = 'Network Layer',
    n.name_kr = 'Network Layer',
    n.domain = 'NW',
    n.aliases = ['Network Layer'];

MERGE (n:Concept {id: 'arp'})
SET     n.name = 'ARP',
    n.name_kr = 'ARP',
    n.domain = 'NW',
    n.aliases = ['ARP'];

MERGE (n:Concept {id: 'ip'})
SET     n.name = 'IP',
    n.name_kr = 'IP',
    n.domain = 'NW',
    n.aliases = ['IP'];

MERGE (n:Concept {id: 'icmp'})
SET     n.name = 'ICMP',
    n.name_kr = 'ICMP',
    n.domain = 'NW',
    n.aliases = ['ICMP'];

MERGE (n:Technology {id: 'ipsec'})
SET     n.name = 'IPsec',
    n.name_kr = 'IPsec',
    n.domain = 'NW',
    n.aliases = ['IPsec'];

MERGE (n:Concept {id: 'igmp'})
SET     n.name = 'IGMP',
    n.name_kr = 'IGMP',
    n.domain = 'NW',
    n.aliases = ['IGMP'];

MERGE (n:Concept {id: '장비:_라우터'})
SET     n.name = '장비: 라우터',
    n.name_kr = '장비: 라우터',
    n.domain = 'NW';

MERGE (n:Concept {id: 'l3_switch'})
SET     n.name = 'L3 Switch',
    n.name_kr = 'L3 Switch',
    n.domain = 'NW',
    n.aliases = ['L3 Switch'];

MERGE (n:Concept {id: '표준:_iso/iec_8208'})
SET     n.name = '표준: ISO/IEC 8208',
    n.name_kr = '표준: ISO/IEC 8208',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'osi7layer'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_layer'})
MERGE (b:Concept {id: 'osi7layer'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: 'arp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: 'ip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: 'icmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Technology {id: 'ipsec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: 'igmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: '장비:_라우터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: 'l3_switch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Concept {id: '표준:_iso/iec_8208'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Document {id: 'NW_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network★'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osi7layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_layer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'icmp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'igmp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비:_라우터'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'l3_switch'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준:_iso/iec_8208'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_025: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_025'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_026: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_026'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_027: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_027'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_028: ASN.1 (Abstract Syntax Notation One)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_028'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'abstract_syntax_notation_one'})
SET     n.name = 'Abstract Syntax Notation One',
    n.name_kr = 'ASN.1',
    n.domain = 'NW',
    n.aliases = ['Abstract Syntax Notation One', 'ASN.1'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Concept {id: 'asn_1'})
SET     n.name = 'ASN.1',
    n.name_kr = 'ASN.1',
    n.domain = 'NW',
    n.aliases = ['ASN.1'];

MERGE (n:Concept {id: 'ber'})
SET     n.name = 'BER',
    n.name_kr = 'BER',
    n.domain = 'NW',
    n.aliases = ['BER'];

MERGE (n:Concept {id: 'cer'})
SET     n.name = 'CER',
    n.name_kr = 'CER',
    n.domain = 'NW',
    n.aliases = ['CER'];

MERGE (n:Concept {id: 'der'})
SET     n.name = 'DER',
    n.name_kr = 'DER',
    n.domain = 'NW',
    n.aliases = ['DER'];

MERGE (n:Concept {id: 'xer'})
SET     n.name = 'XER',
    n.name_kr = 'XER',
    n.domain = 'NW',
    n.aliases = ['XER'];

MERGE (n:Concept {id: 'per'})
SET     n.name = 'PER',
    n.name_kr = 'PER',
    n.domain = 'NW',
    n.aliases = ['PER'];

MERGE (n:Concept {id: 'gser'})
SET     n.name = 'GSER',
    n.name_kr = 'GSER',
    n.domain = 'NW',
    n.aliases = ['GSER'];

MERGE (n:Concept {id: 'system_endian'})
SET     n.name = 'System Endian',
    n.name_kr = 'System Endian',
    n.domain = 'NW',
    n.definition = '네트워크 송수신시 OS별 Endian 차이(Sun: Big Endian, Window: Little Endian) - Compiler 에 따른 데이터 인식',
    n.aliases = ['System Endian'];

MERGE (n:Concept {id: 'conversion'})
SET     n.name = 'Conversion',
    n.name_kr = 'Conversion',
    n.domain = 'NW',
    n.definition = '시스템에서는 ASN.1이라는 하나의 표준에 대한 Conversion만을 개발하면 모든 장비와 Data 송수신',
    n.aliases = ['Conversion'];

MERGE (n:Concept {id: '기본_데이터_타입'})
SET     n.name = '기본 데이터 타입',
    n.name_kr = '기본 데이터 타입',
    n.domain = 'NW',
    n.definition = 'BOOLEAN';

MERGE (n:Concept {id: 'null'})
SET     n.name = 'NULL',
    n.name_kr = 'NULL',
    n.domain = 'NW',
    n.definition = 'Sequence element에 효과적인 부재(빈 값)',
    n.aliases = ['NULL'];

MERGE (n:Concept {id: 'integer'})
SET     n.name = 'INTEGER',
    n.name_kr = 'INTEGER',
    n.domain = 'NW',
    n.definition = '정수, (양의 정수 음의 정수)',
    n.aliases = ['INTEGER'];

MERGE (n:Concept {id: 'real'})
SET     n.name = 'REAL',
    n.name_kr = 'REAL',
    n.domain = 'NW',
    n.definition = '진짜 변수 값(real variable values)',
    n.aliases = ['REAL'];

MERGE (n:Concept {id: 'enumerated'})
SET     n.name = 'ENUMERATED',
    n.name_kr = 'ENUMERATED',
    n.domain = 'NW',
    n.definition = '열거 형',
    n.aliases = ['ENUMERATED'];

MERGE (n:Concept {id: 'bit_string'})
SET     n.name = 'BIT STRING',
    n.name_kr = 'BIT STRING',
    n.domain = 'NW',
    n.definition = '임의 길이 binary data',
    n.aliases = ['BIT STRING'];

MERGE (n:Concept {id: 'octet_string'})
SET     n.name = 'OCTET STRING',
    n.name_kr = 'OCTET STRING',
    n.domain = 'NW',
    n.definition = '이트 단위 binary data(8bit)',
    n.aliases = ['OCTET STRING'];

MERGE (n:Concept {id: 'object_identifier'})
SET     n.name = 'OBJECT IDENTIFIER',
    n.name_kr = 'OBJECT IDENTIFIER',
    n.domain = 'NW',
    n.definition = '객체의 이름정보(식별자)',
    n.aliases = ['OBJECT IDENTIFIER'];

MERGE (n:Concept {id: 'external,_embedded_pdv'})
SET     n.name = 'EXTERNAL, EMBEDDED PDV',
    n.name_kr = 'EXTERNAL, EMBEDDED PDV',
    n.domain = 'NW',
    n.definition = 'Presentation layer의 context switching형';

MERGE (n:Concept {id: '…string'})
SET     n.name = '…String',
    n.name_kr = '…String',
    n.domain = 'NW',
    n.definition = 'CHARACTER STRING에 가변타입';

MERGE (n:Concept {id: 'character_string'})
SET     n.name = 'CHARACTER STRING',
    n.name_kr = 'CHARACTER STRING',
    n.domain = 'NW',
    n.definition = '특정 알파벳을 허용하는 문자열',
    n.aliases = ['CHARACTER STRING'];

MERGE (n:Concept {id: 'utctime_generalizedtime'})
SET     n.name = 'UTCTime GeneralizedTime',
    n.name_kr = 'UTCTime GeneralizedTime',
    n.domain = 'NW',
    n.definition = '날짜',
    n.aliases = ['UTCTime GeneralizedTime'];

MERGE (n:Concept {id: '구조화된_데이터_타입'})
SET     n.name = '구조화된 데이터 타입',
    n.name_kr = '구조화된 데이터 타입',
    n.domain = 'NW',
    n.definition = 'CHOICE';

MERGE (n:Concept {id: 'sequence'})
SET     n.name = 'SEQUENCE',
    n.name_kr = 'SEQUENCE',
    n.domain = 'NW',
    n.definition = '정렬된 Struct와 같음 여러 개의 다른 형의 객체를 가질 수 있다.',
    n.aliases = ['SEQUENCE'];

MERGE (n:Concept {id: 'set'})
SET     n.name = 'SET',
    n.name_kr = 'SET',
    n.domain = 'NW',
    n.definition = '정렬되지 않은 Struct와 같음 여러 개의 다른 형을 객체로 가질 수 있지만 순서에 상관이 없다.',
    n.aliases = ['SET'];

MERGE (n:Concept {id: 'sequence_of'})
SET     n.name = 'SEQUENCE OF',
    n.name_kr = 'SEQUENCE OF',
    n.domain = 'NW',
    n.definition = 'SEQUENCE타입의 배열',
    n.aliases = ['SEQUENCE OF'];

MERGE (n:Concept {id: 'set_of'})
SET     n.name = 'SET OF',
    n.name_kr = 'SET OF',
    n.domain = 'NW',
    n.definition = 'SET타입의 배열',
    n.aliases = ['SET OF'];

// --- 관계 ---

MERGE (a:Concept {id: 'asn_1'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'ber'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'cer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'der'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'xer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'per'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'gser'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'system_endian'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'conversion'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: '기본_데이터_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'null'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'integer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'real'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'enumerated'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'bit_string'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'octet_string'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'object_identifier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'external,_embedded_pdv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: '…string'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'character_string'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'utctime_generalizedtime'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: '구조화된_데이터_타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'sequence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'sequence_of'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Concept {id: 'set_of'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Document {id: 'NW_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'abstract_syntax_notation_one'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'asn_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ber'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'der'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'per'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gser'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system_endian'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'conversion'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_데이터_타입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'null'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'integer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'real'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enumerated'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bit_string'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'octet_string'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'object_identifier'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external,_embedded_pdv'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '…string'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'character_string'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'utctime_generalizedtime'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조화된_데이터_타입'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'set'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence_of'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'set_of'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_029: 이더넷 (Ethernet)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_029'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ethernet'})
SET     n.name = 'Ethernet',
    n.name_kr = '이더넷',
    n.domain = 'NW',
    n.aliases = ['Ethernet', '이더넷'];

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ieee_802_3'})
SET     n.name = 'IEEE 802.3',
    n.name_kr = 'IEEE 802.3',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.3'];

MERGE (n:Concept {id: '케이블'})
SET     n.name = '케이블',
    n.name_kr = '케이블',
    n.domain = 'NW',
    n.definition = 'UTP, STP';

MERGE (n:Concept {id: '속도'})
SET     n.name = '속도',
    n.name_kr = '속도',
    n.domain = 'NW',
    n.definition = '10M~10Gbit';

// --- 관계 ---

MERGE (a:Concept {id: 'ethernet'})
MERGE (b:Standard {id: 'ieee_802_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ethernet'})
MERGE (b:Concept {id: '케이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ethernet'})
MERGE (b:Concept {id: '속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ethernet'})
MERGE (b:Document {id: 'NW_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ethernet'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_3'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '케이블'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_030: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_030'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_031: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_031'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_032.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_032.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_032.2: 리버스 프록시 (Reverse Proxy)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_032.2'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'reverse_proxy'})
SET     n.name = 'Reverse Proxy',
    n.name_kr = '리버스 프록시',
    n.domain = 'NW',
    n.aliases = ['Reverse Proxy', '리버스 프록시'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Concept {id: '역방향_맵핑'})
SET     n.name = '역방향 맵핑',
    n.name_kr = '역방향 맵핑',
    n.domain = 'NW';

MERGE (n:Concept {id: '부하분산'})
SET     n.name = '부하분산',
    n.name_kr = '부하분산',
    n.domain = 'NW';

MERGE (n:Concept {id: '보안강화'})
SET     n.name = '보안강화',
    n.name_kr = '보안강화',
    n.domain = 'NW';

MERGE (n:Concept {id: 'cache_사용'})
SET     n.name = 'Cache 사용',
    n.name_kr = 'Cache 사용',
    n.domain = 'NW',
    n.definition = '기존 접속된 내역을 저장하여 재접속시 빠른 연결 지원';

MERGE (n:Concept {id: '동작방식'})
SET     n.name = '동작방식',
    n.name_kr = '동작방식',
    n.domain = 'NW',
    n.definition = '1) Client에서 서버 접속 요청';

MERGE (n:Concept {id: '2)_proxy_server_확인'})
SET     n.name = '2) Proxy server 확인',
    n.name_kr = '2) Proxy server 확인',
    n.domain = 'NW',
    n.definition = '프록시 서버에 도메인이 존재하는지 확인';

MERGE (n:Concept {id: '3)_proxy_server_update'})
SET     n.name = '3) Proxy server Update',
    n.name_kr = '3) Proxy server Update',
    n.domain = 'NW',
    n.definition = '프록시 서버에 존재하는 도메인이 최신인지 확인후 갱신';

MERGE (n:Concept {id: '4)_서버_연결'})
SET     n.name = '4) 서버 연결',
    n.name_kr = '4) 서버 연결',
    n.domain = 'NW',
    n.definition = '서버와 연결하고, client에 데이터 전송';

MERGE (n:Concept {id: '부하_분산'})
SET     n.name = '부하 분산',
    n.name_kr = '부하 분산',
    n.domain = 'NW',
    n.definition = '여러 서버로 부하를 분산하거나 데이터 버퍼링 역할';

MERGE (n:Concept {id: '성능_향상'})
SET     n.name = '성능 향상',
    n.name_kr = '성능 향상',
    n.domain = 'NW',
    n.definition = '캐싱 기능과 트래픽 분산 기능을 결합시켜 전반적인 서버 서능 향상';

MERGE (n:Concept {id: '설정방법'})
SET     n.name = '설정방법',
    n.name_kr = '설정방법',
    n.domain = 'NW',
    n.definition = '정상 매핑';

MERGE (n:Concept {id: '역방향_매핑'})
SET     n.name = '역방향 매핑',
    n.name_kr = '역방향 매핑',
    n.domain = 'NW',
    n.definition = '데이터 접근 재지정 위한 서버 트랩 생성 - 변경된 URL 정보를 프록시 서버 재지정';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '동작원리'})
SET     n.name = '동작원리',
    n.name_kr = '동작원리',
    n.domain = 'NW';

MERGE (n:Concept {id: '매핑_방법'})
SET     n.name = '매핑 방법',
    n.name_kr = '매핑 방법',
    n.domain = 'NW',
    n.definition = '정상 매핑';

MERGE (n:Concept {id: '설정_정보_변경_방법'})
SET     n.name = '설정 정보 변경 방법 (Nginx기준)',
    n.name_kr = '설정 정보 변경 방법 (Nginx기준)',
    n.domain = 'NW',
    n.definition = 'proxy_pass';

MERGE (n:Technology {id: 'proxy_http_version'})
SET     n.name = 'proxy_http_version',
    n.name_kr = 'proxy_http_version',
    n.domain = 'NW',
    n.definition = '리버스 프록시를 위한 HTTP 프로토콜 버전을 정의 - 기본 값은 1.0';

MERGE (n:Technology {id: 'proxy_redirect'})
SET     n.name = 'proxy_redirect',
    n.name_kr = 'proxy_redirect',
    n.domain = 'NW',
    n.definition = '백엔드 서버에 의해 촉발된 리다이렉션에 대해 로케이션 HTTP 헤더에 나타나는 URL을 재작성';

MERGE (n:Concept {id: 'proxy_set_header'})
SET     n.name = 'proxy_set_header',
    n.name_kr = 'proxy_set_header',
    n.domain = 'NW',
    n.definition = '실제 서버에 전달해야할 헤더 값을 정의';

// --- 관계 ---

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '역방향_맵핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '부하분산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '보안강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: 'cache_사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '동작방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '2)_proxy_server_확인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '3)_proxy_server_update'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '4)_서버_연결'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '부하_분산'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '성능_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '설정방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '역방향_매핑'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '매핑_방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: '설정_정보_변경_방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Technology {id: 'proxy_http_version'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Technology {id: 'proxy_redirect'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Concept {id: 'proxy_set_header'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Document {id: 'NW_032.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'reverse_proxy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역방향_맵핑'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부하분산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안강화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_사용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_proxy_server_확인'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_proxy_server_update'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_서버_연결'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부하_분산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_향상'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설정방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역방향_매핑'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매핑_방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설정_정보_변경_방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'proxy_http_version'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'proxy_redirect'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy_set_header'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_033: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_033'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_034.1: L2 스위치
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_034.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'l2_스위치'})
SET     n.name = 'L2 스위치',
    n.name_kr = 'L2 스위치',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ethernet_switch'})
SET     n.name = 'Ethernet Switch',
    n.name_kr = 'Ethernet Switch',
    n.domain = 'NW',
    n.aliases = ['Ethernet Switch'];

MERGE (n:Concept {id: '런플포필애'})
SET     n.name = '런플포필애',
    n.name_kr = '런플포필애',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'l2_스위치'})
MERGE (b:Concept {id: 'ethernet_switch'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'l2_스위치'})
MERGE (b:Concept {id: '런플포필애'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'l2_스위치'})
MERGE (b:Document {id: 'NW_034.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'l2_스위치'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ethernet_switch'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '런플포필애'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_035: 인터네트워킹 (Inter-networking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_035'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'inter_networking'})
SET     n.name = 'Inter-networking',
    n.name_kr = '인터네트워킹',
    n.domain = 'NW',
    n.aliases = ['Inter-networking', '인터네트워킹'];

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'inter_networking'})
MERGE (b:Document {id: 'NW_035'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'inter_networking'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_036: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_036'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_037.1: CSMA/CD(Carrier Sense Multiple Access with Collision Detection)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
SET     n.name = 'Carrier Sense Multiple Access with Collision Detection',
    n.name_kr = 'CSMA/CD',
    n.domain = 'NW',
    n.aliases = ['Carrier Sense Multiple Access with Collision Detection', 'CSMA/CD'];

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'csma_cd'})
SET     n.name = 'CSMA/CD',
    n.name_kr = 'CSMA/CD',
    n.domain = 'NW',
    n.aliases = ['CSMA/CD'];

MERGE (n:Concept {id: '송신준비'})
SET     n.name = '송신준비',
    n.name_kr = '송신준비',
    n.domain = 'NW',
    n.definition = '송신 데이터 준비';

MERGE (n:Concept {id: '채널감시'})
SET     n.name = '채널감시',
    n.name_kr = '채널감시',
    n.domain = 'NW',
    n.definition = '채널 Free';

MERGE (n:Concept {id: '충돌_발생'})
SET     n.name = '충돌 발생',
    n.name_kr = '충돌 발생',
    n.domain = 'NW',
    n.definition = 'Jamming Signal 전송하여, Back-off 방식에 따라 대기 및 재전송 시도';

MERGE (n:Concept {id: '채널_busy'})
SET     n.name = '채널 Busy',
    n.name_kr = '채널 Busy',
    n.domain = 'NW',
    n.definition = '데이터 송신을 위해, 채널 재탐색 수행';

MERGE (n:Concept {id: '동작원리'})
SET     n.name = '동작원리',
    n.name_kr = '동작원리',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'csma_cd'})
MERGE (b:Concept {id: '네트워크_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '송신준비'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '채널감시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '충돌_발생'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '채널_busy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Document {id: 'NW_037.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'carrier_sense_multiple_access_with_collision_detection'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'csma_cd'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '송신준비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '채널감시'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '충돌_발생'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '채널_busy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.10: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.10'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_037.11: 순환중복검사 (CRC : Cyclic Redundancy Check)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.11'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'crc'})
SET     n.name = '순환중복검사 (CRC : Cyclic Redundancy Check)',
    n.name_kr = '순환중복검사 (CRC : Cyclic Redundancy Check)',
    n.domain = 'NW';

MERGE (n:Concept {id: '오류제어'})
SET     n.name = '오류제어(2계층)',
    n.name_kr = '오류제어(2계층)',
    n.domain = 'NW';

MERGE (n:Concept {id: '데이터워드'})
SET     n.name = '데이터워드',
    n.name_kr = '데이터워드',
    n.domain = 'NW';

MERGE (n:Concept {id: 'divisor'})
SET     n.name = 'divisor',
    n.name_kr = 'divisor',
    n.domain = 'NW',
    n.aliases = ['divisor'];

MERGE (n:Concept {id: 'xor_기반연산'})
SET     n.name = 'XOR 기반연산',
    n.name_kr = 'XOR 기반연산',
    n.domain = 'NW';

MERGE (n:Concept {id: '수신메세지_분석'})
SET     n.name = '수신메세지 분석',
    n.name_kr = '수신메세지 분석',
    n.domain = 'NW',
    n.definition = '① 수신 메시지 : 10011010011 ② Divisor = X^4+X^2+1 -> 10101 ③ CRC 비트 = 다항식 최고차수 bit = 4 비트 ( Divisor – 1 bit ) ④ 수신메세지 = 데이터 + CRC 4 비트 ⑤ 데이터 : 1001101, CRC = 0011';

MERGE (n:Concept {id: 'crc_검증'})
SET     n.name = 'CRC 검증',
    n.name_kr = 'CRC 검증',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: '오류제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: '데이터워드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: 'divisor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: 'xor_기반연산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: '수신메세지_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Concept {id: 'crc_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Document {id: 'NW_037.11'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터워드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'divisor'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xor_기반연산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수신메세지_분석'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crc_검증'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.12: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.12'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_037.13: 해밍코드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.13'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '해밍코드'})
SET     n.name = '해밍코드',
    n.name_kr = '해밍코드',
    n.domain = 'NW';

MERGE (n:Concept {id: '오류제어'})
SET     n.name = '오류제어(2계층)',
    n.name_kr = '오류제어(2계층)',
    n.domain = 'NW';

MERGE (n:Concept {id: '2p_≥_d+p+1'})
SET     n.name = '2p ≥ d+p+1',
    n.name_kr = '2p ≥ d+p+1',
    n.domain = 'NW';

MERGE (n:Concept {id: '8_비트_짝수_패리티'})
SET     n.name = '8 비트 짝수 패리티',
    n.name_kr = '8 비트 짝수 패리티',
    n.domain = 'NW';

MERGE (n:Technology {id: '데이터_복구'})
SET     n.name = '데이터 복구',
    n.name_kr = '데이터 복구',
    n.domain = 'NW',
    n.definition = 'SSD의 ECC (Error Correction Code)';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'NW',
    n.definition = '디지털 저작권 보호';

MERGE (n:Concept {id: '양자_암호화_qkd'})
SET     n.name = '양자 암호화 QKD',
    n.name_kr = '양자 암호화 QKD',
    n.domain = 'NW',
    n.definition = 'CV-QKD (Continuous Variable-Quantum Key Distribution) 연속 변수를 사용하여 암호화를 수행하는 CV-QKD에 해밍코드 이용';

MERGE (n:Concept {id: '해밍코드_변환_준비'})
SET     n.name = '해밍코드 변환 준비',
    n.name_kr = '해밍코드 변환 준비',
    n.domain = 'NW',
    n.definition = '입력데이터 1001 위치에 맞게 입력';

MERGE (n:Concept {id: '해밍코드_생성'})
SET     n.name = '해밍코드 생성',
    n.name_kr = '해밍코드 생성',
    n.domain = 'NW',
    n.definition = 'P1 은 3 5 7 비트가 1 0 1 이므로 P1= 0 (짝수 패리티) - P2 는 3 6 7 비트가 1 0 1 이므로 P2= 0 (짝수 패리티) - P4 는 5 6 7 비트가 0 0 1 이므로 P4= 1 (짝수 패리티) - 해밍코드값은 1001100';

MERGE (n:Concept {id: '1101100을_수신시_정정_방법'})
SET     n.name = '1101100을 수신시 정정 방법',
    n.name_kr = '1101100을 수신시 정정 방법',
    n.domain = 'NW',
    n.definition = 'P1 : 3 5 7 비트가 1 0 1 이므로, P1은 0 (정상수신) - P2 : 3 6 7 비트가 1 1 1 이므로 P2는 1 이 수신되어야 하지만 0 수신 - P4 : 5 6 7 비트가 0 1 1 이므로 P4는 0 이 수신되어야 하지만 1 수신됨 따라서, P2와 P4이 오류가 발생하였으므로, P2의 Bit인 2와 P4의 Bit인 4의 합인(2+4) 6번';

MERGE (n:Concept {id: '패리티비트_계산'})
SET     n.name = '패리티비트 계산',
    n.name_kr = '패리티비트 계산',
    n.domain = 'NW',
    n.definition = '1. 패리티비트 : 2^p >= d + p + 1 2. 데이터(d) = 9 -> 패리티(P) = 4: 패리티비트는 4개';

MERGE (n:Concept {id: '패리티비트_위치'})
SET     n.name = '패리티비트 위치',
    n.name_kr = '패리티비트 위치',
    n.domain = 'NW',
    n.definition = '원본 데이터 101100110 을 해밍코드에 맞게 비트 위치를 맞춤';

MERGE (n:Concept {id: '패리티비트_생성'})
SET     n.name = '패리티비트 생성',
    n.name_kr = '패리티비트 생성',
    n.domain = 'NW',
    n.definition = 'P1 의 패리티 1,3,5,7,9,11,13 번째에서 1은 3 개 존재 : P1 = 1 - P2 의 패리티 2,3,6,7,10,11 번째에서 1은 3 개 존재 : P2 = 1 - P4 의 패리티 4,5,6,7,12,13 번째에서 1은 3 개 존재 : P4 = 1 - P8 의 패리티 8,9,10,11,12,13 번째에서 1은 3 개 존재 : P8 = 1 또는';

MERGE (n:Concept {id: '데이터_값'})
SET     n.name = '데이터 값',
    n.name_kr = '데이터 값',
    n.domain = 'NW',
    n.definition = 'P8,P4,P2,P1 의 값은 짝수 패리티 적용시 ‘1 1 1 1’ 도출 - 최종 생성된 1 0 1 1 0 1 0 1 1 1 0 1 1 수신측에 전송';

MERGE (n:Concept {id: '수신_데이터'})
SET     n.name = '수신 데이터',
    n.name_kr = '수신 데이터',
    n.domain = 'NW',
    n.definition = '1 0 1 1 0 1 0 1 1 1 0 1 1';

MERGE (n:Concept {id: '검증결과'})
SET     n.name = '검증결과',
    n.name_kr = '검증결과',
    n.domain = 'NW',
    n.definition = 'P1~P8 영역 검사(짝수 패리티) 해서 모두 0이 나오면 정상 전송 확인 -P1~P8 영역 값: 0 0 0 0 으로 모두 0 이 나왔으므로 데이터는 정상 전송 됨을 검증함';

MERGE (n:Concept {id: '정정_과정'})
SET     n.name = '정정 과정',
    n.name_kr = '정정 과정',
    n.domain = 'NW';

MERGE (n:Concept {id: '오류_정정'})
SET     n.name = '오류 정정',
    n.name_kr = '오류 정정',
    n.domain = 'NW',
    n.definition = 'P1 ~ P8 영역을 검사해서 나온 값을 나열 -P8 P4 P2 P1 = 0 1 0 1 (해당 위치의 비트 값이 오류 발생, 10 진수 변경 시 5 번째 비트) - 5 번째 비트가 오류임을 파악하고 1에서 0으로 오류 수정';

// --- 관계 ---

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '오류제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '2p_≥_d+p+1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '8_비트_짝수_패리티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Technology {id: '데이터_복구'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '양자_암호화_qkd'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '해밍코드_변환_준비'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '해밍코드_생성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '1101100을_수신시_정정_방법'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '패리티비트_계산'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '패리티비트_위치'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '패리티비트_생성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '데이터_값'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '수신_데이터'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '검증결과'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '정정_과정'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Concept {id: '오류_정정'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Document {id: 'NW_037.13'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '해밍코드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2p_≥_d+p+1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8_비트_짝수_패리티'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '데이터_복구'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양자_암호화_qkd'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해밍코드_변환_준비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해밍코드_생성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1101100을_수신시_정정_방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패리티비트_계산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패리티비트_위치'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패리티비트_생성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_값'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수신_데이터'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검증결과'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정정_과정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류_정정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.2: CSMA/CA (Carrier Sense Multiple Access/Collision Avoidance)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.2'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'csma_ca'})
SET     n.name = 'Carrier Sense Multiple Access/Collision Avoidance',
    n.name_kr = 'CSMA/CA',
    n.domain = 'NW',
    n.aliases = ['Carrier Sense Multiple Access/Collision Avoidance', 'CSMA/CA'];

MERGE (n:Concept {id: '네트워크_기본'})
SET     n.name = '네트워크 기본',
    n.name_kr = '네트워크 기본',
    n.domain = 'NW';

MERGE (n:Concept {id: 'difs'})
SET     n.name = 'DIFS',
    n.name_kr = 'DIFS',
    n.domain = 'NW',
    n.aliases = ['DIFS'];

MERGE (n:Concept {id: 'rts'})
SET     n.name = 'RTS',
    n.name_kr = 'RTS',
    n.domain = 'NW',
    n.aliases = ['RTS'];

MERGE (n:Concept {id: 'sifs'})
SET     n.name = 'SIFS',
    n.name_kr = 'SIFS',
    n.domain = 'NW',
    n.aliases = ['SIFS'];

MERGE (n:Concept {id: 'cts'})
SET     n.name = 'CTS',
    n.name_kr = 'CTS',
    n.domain = 'NW',
    n.aliases = ['CTS'];

MERGE (n:Concept {id: 'nav'})
SET     n.name = 'NAV',
    n.name_kr = 'SIFS',
    n.domain = 'NW',
    n.aliases = ['NAV', 'SIFS'];

MERGE (n:Concept {id: '동작_방식'})
SET     n.name = '동작 방식',
    n.name_kr = '동작 방식',
    n.domain = 'NW';

MERGE (n:Concept {id: '1)_채널_사용_여부_검사'})
SET     n.name = '1) 채널 사용 여부 검사',
    n.name_kr = '1) 채널 사용 여부 검사',
    n.domain = 'NW',
    n.definition = '채널의 사용 여부 검사 후 idle 인 경우 IFS 동안 대기';

MERGE (n:Concept {id: '2)_ifs_주기_동안_대기'})
SET     n.name = '2) IFS 주기 동안 대기',
    n.name_kr = '2) IFS 주기 동안 대기',
    n.domain = 'NW',
    n.definition = 'IFS 이후, 채널 idle 인 경우 바로 전송 시작 - IFS(Inter Frame Space): 충돌 회피를 위한 프레임 간 여유 간격 - SIFS(Short IFS): ACK 응답 등을 위한 IFS, 높은 우선순위 - PIFS(PCF IFS): PCF 모드에서 중간 우선순위 - DIFS(DCF IFS): 비동기 데이터 서비스를 위한 낮은 우선순위';

MERGE (n:Concept {id: '3)_backoff_time_동안_대기'})
SET     n.name = '3) Backoff time 동안 대기',
    n.name_kr = '3) Backoff time 동안 대기',
    n.domain = 'NW',
    n.definition = '채널이 사용중인 경우 Backoff Timer 만료 후 ①로 돌아가 채널 사용 여부 재검사 - Backoff time = (0~Contention window) Binary Exponential Backoff 알고리즘으로 선택';

MERGE (n:Concept {id: '4)_프레임_전송'})
SET     n.name = '4) 프레임 전송',
    n.name_kr = '4) 프레임 전송',
    n.domain = 'NW',
    n.definition = '프레임 전송 중에는 다른 노드들의 매체 접근이 연기됨';

MERGE (n:Concept {id: '5)_ack_메시지_수신'})
SET     n.name = '5) ACK 메시지 수신',
    n.name_kr = '5) ACK 메시지 수신',
    n.domain = 'NW',
    n.definition = 'ACK 메시지를 수신하여 프레임의 정상 전달 여부 확인';

// --- 관계 ---

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '네트워크_기본'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: 'difs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: 'rts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: 'sifs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: 'cts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: 'nav'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '동작_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '1)_채널_사용_여부_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '2)_ifs_주기_동안_대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '3)_backoff_time_동안_대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '4)_프레임_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Concept {id: '5)_ack_메시지_수신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Document {id: 'NW_037.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'csma_ca'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'difs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rts'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sifs'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cts'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nav'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1)_채널_사용_여부_검사'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_ifs_주기_동안_대기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_backoff_time_동안_대기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_프레임_전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_ack_메시지_수신'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.3'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_037.4: TCP 혼잡제어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.4'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'tcp_혼잡제어'})
SET     n.name = 'TCP 혼잡제어',
    n.name_kr = 'TCP 혼잡제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'slow_start'})
SET     n.name = 'Slow Start',
    n.name_kr = 'Slow Start',
    n.domain = 'NW',
    n.aliases = ['Slow Start'];

MERGE (n:Concept {id: 'congestion_avoidance'})
SET     n.name = 'Congestion Avoidance',
    n.name_kr = 'Congestion Avoidance',
    n.domain = 'NW',
    n.aliases = ['Congestion Avoidance'];

MERGE (n:Concept {id: 'fast_retransmit'})
SET     n.name = 'Fast Retransmit',
    n.name_kr = 'Fast Retransmit',
    n.domain = 'NW',
    n.aliases = ['Fast Retransmit'];

MERGE (n:Concept {id: 'fast_recovery'})
SET     n.name = 'Fast Recovery',
    n.name_kr = 'Fast Recovery',
    n.domain = 'NW',
    n.aliases = ['Fast Recovery'];

MERGE (n:Concept {id: '임계초과'})
SET     n.name = '임계초과',
    n.name_kr = '임계초과',
    n.domain = 'NW',
    n.definition = 'Timeout';

MERGE (n:Concept {id: '중복_ack'})
SET     n.name = '중복 ACK',
    n.name_kr = '중복 ACK',
    n.domain = 'NW',
    n.definition = '3 Duplicate ACK';

MERGE (n:Concept {id: '초기_cwnd_크기'})
SET     n.name = '초기 CWND 크기',
    n.name_kr = '초기 CWND 크기',
    n.domain = 'NW',
    n.definition = '초기 CWND 세그먼트 크기는 1부터 시작';

MERGE (n:Concept {id: '임계치_도달_조치'})
SET     n.name = '임계치 도달 조치',
    n.name_kr = '임계치 도달 조치',
    n.domain = 'NW',
    n.definition = '임계치(Threshold) 도달 시, Congestion Avoidance 수행';

MERGE (n:Concept {id: '세그먼트_증가_방식'})
SET     n.name = '세그먼트 증가 방식',
    n.name_kr = '세그먼트 증가 방식',
    n.domain = 'NW',
    n.definition = '미리 정해진 임계치에 도달할 때까지 윈도우의 크기를 지 수함수 방식으로 2배씩 증가(매 Ack 마다 CWND 1씩 증가)';

MERGE (n:Concept {id: 'congestion_control'})
SET     n.name = '혼잡제어',
    n.name_kr = '혼잡제어',
    n.domain = 'NW',
    n.definition = '혼잡 상황이 감지되는 방식(Fast Retransmit, Fast Recovery) 에 따라 CWND를 승법적 감소 후 Slow Start와 Congestion Avoidance 방식으로 나누어 CWND를 가법적 증가';

MERGE (n:Concept {id: '수행조건'})
SET     n.name = '수행조건',
    n.name_kr = '수행조건',
    n.domain = 'NW',
    n.definition = '세그먼트 중 정상수신된 가장 나중 세그먼트를 송신자에게 보내는 누적승인(Cumulative Ack)과 손실 세그먼트의 Ack를 중복전송하는 중복승인((Duplicate Ack) 동작 수행';

MERGE (n:Concept {id: '메커니즘'})
SET     n.name = '메커니즘',
    n.name_kr = '메커니즘',
    n.domain = 'NW',
    n.definition = '3개의 중복 Ack 수신 시 세그먼트에 대한 손실로 간주하고 Timeout 이벤트를 기다리지 않고 즉시 손실세그먼트 재전송';

MERGE (n:Concept {id: 'ssthresh_값'})
SET     n.name = 'ssthresh 값',
    n.name_kr = 'ssthresh 값',
    n.domain = 'NW',
    n.definition = 'Fast Retransmit에 의해 재전송된 이후, ssthresh 값은 현재 CWND값의 1/2로 설정';

MERGE (n:Concept {id: '초기_cwnd'})
SET     n.name = '초기 CWND',
    n.name_kr = '초기 CWND',
    n.domain = 'NW',
    n.definition = 'slow start가 시작될 경우 초기 CWND는 1로 설정, Fast Recovery가 시작되면 CWND는 ssthresh+3*segment로 설정';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '동작순서'})
SET     n.name = '동작순서',
    n.name_kr = '동작순서',
    n.domain = 'NW',
    n.definition = '패킷 Loss(중복 ACK)를 감지 - Fast Recovery 상태에 들어감 (Window Size는 절반이 됨) - 지금까지 보냈던 패킷들에 대한 ACK가 모두 도착할 때까지 Fast Recovery상태를 종료하지 않음 - 마지막에 보냈던 패킷에 대한 ACK가 오기 전에 패킷 loss가 한번 더 감지 - Window Size는 절반이 되지않고 현재의 F';

// --- 관계 ---

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'slow_start'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'congestion_avoidance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'fast_retransmit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'fast_recovery'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '임계초과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '중복_ack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '초기_cwnd_크기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '임계치_도달_조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '세그먼트_증가_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'congestion_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '수행조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '메커니즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: 'ssthresh_값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '초기_cwnd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Concept {id: '동작순서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Document {id: 'NW_037.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'tcp_혼잡제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slow_start'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'congestion_avoidance'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_retransmit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_recovery'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임계초과'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복_ack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기_cwnd_크기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임계치_도달_조치'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세그먼트_증가_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'congestion_control'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행조건'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메커니즘'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssthresh_값'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기_cwnd'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작순서'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.5: 흐름제어, Sliding Window 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.5'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '흐름제어,_sliding_window_알고리즘'})
SET     n.name = '흐름제어, Sliding Window 알고리즘',
    n.name_kr = '흐름제어, Sliding Window 알고리즘',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'sliding_window_알고리즘'})
SET     n.name = 'Sliding Window 알고리즘',
    n.name_kr = 'Sliding Window 알고리즘',
    n.domain = 'NW';

MERGE (n:Concept {id: '동적_제어'})
SET     n.name = '동적 제어',
    n.name_kr = '동적 제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '2_계층_혹은_4계층'})
SET     n.name = '2 계층 혹은 4계층',
    n.name_kr = '2 계층 혹은 4계층',
    n.domain = 'NW';

MERGE (n:Concept {id: '흐름제어_방식'})
SET     n.name = '흐름제어 방식',
    n.name_kr = '흐름제어 방식',
    n.domain = 'NW',
    n.definition = 'Stop and Wait';

MERGE (n:Concept {id: 'rate_based'})
SET     n.name = 'Rate-based',
    n.name_kr = 'Rate-based',
    n.domain = 'NW',
    n.definition = '데이터 송신률에 대한 임계값 관리에 의한 흐름제어',
    n.aliases = ['Rate-based'];

MERGE (n:Concept {id: 'sliding_window'})
SET     n.name = 'Sliding Window',
    n.name_kr = 'Sliding Window',
    n.domain = 'NW',
    n.definition = '여러 개의 프레임을 동시에 보내고자하는 기법',
    n.aliases = ['Sliding Window'];

MERGE (n:Concept {id: 'stop_and_wait'})
SET     n.name = 'Stop and wait',
    n.name_kr = 'Stop and wait',
    n.domain = 'NW',
    n.aliases = ['Stop and wait'];

MERGE (n:Concept {id: 'sliding_windows'})
SET     n.name = 'Sliding Windows',
    n.name_kr = 'Sliding Windows',
    n.domain = 'NW',
    n.aliases = ['Sliding Windows'];

MERGE (n:Concept {id: 'slow_start'})
SET     n.name = 'Slow Start',
    n.name_kr = 'Slow Start',
    n.domain = 'NW',
    n.aliases = ['Slow Start'];

// --- 관계 ---

MERGE (a:Concept {id: 'sliding_window_알고리즘'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: '동적_제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: '2_계층_혹은_4계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: '흐름제어_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'rate_based'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'sliding_window'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'stop_and_wait'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sliding_windows'})
MERGE (b:Concept {id: 'slow_start'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'sliding_windows'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'slow_start'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sliding_windows'})
MERGE (b:Concept {id: 'slow_start'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'sliding_windows'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Concept {id: 'slow_start'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Document {id: 'NW_037.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '흐름제어,_sliding_window_알고리즘'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sliding_window_알고리즘'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적_제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_계층_혹은_4계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '흐름제어_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rate_based'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sliding_window'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stop_and_wait'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sliding_windows'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slow_start'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.6: FEC (Forward Error Correction)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.6'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'forward_error_correction'})
SET     n.name = 'Forward Error Correction',
    n.name_kr = 'FEC',
    n.domain = 'NW',
    n.aliases = ['Forward Error Correction', 'FEC'];

MERGE (n:Concept {id: '오류제어'})
SET     n.name = '오류제어(2계층)',
    n.name_kr = '오류제어(2계층)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'non_block'})
SET     n.name = '길안터(non-block)길터',
    n.name_kr = '길안터(non-block)길터',
    n.domain = 'NW';

MERGE (n:Concept {id: '블록hr'})
SET     n.name = '블록HR',
    n.name_kr = '블록HR',
    n.domain = 'NW';

MERGE (n:Concept {id: 'block_code'})
SET     n.name = 'Block Code',
    n.name_kr = '블록코드',
    n.domain = 'NW',
    n.definition = '해밍코드',
    n.aliases = ['Block Code', '블록코드'];

MERGE (n:Concept {id: 'non_block_code'})
SET     n.name = 'Non-block Code',
    n.name_kr = '논-블록 코드',
    n.domain = 'NW',
    n.definition = '길쌈코드 (Convolutional Code)',
    n.aliases = ['Non-block Code', '논-블록 코드'];

MERGE (n:Concept {id: 'automatic_repeat_request'})
SET     n.name = 'Automatic Repeat reQuest',
    n.name_kr = 'ARQ',
    n.domain = 'NW',
    n.aliases = ['Automatic Repeat reQuest', 'ARQ'];

// --- 관계 ---

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: 'non_block'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: '블록hr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: 'block_code'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: 'non_block_code'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: 'automatic_repeat_request'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Concept {id: 'automatic_repeat_request'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Document {id: 'NW_037.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'forward_error_correction'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_block'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록hr'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_code'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_block_code'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automatic_repeat_request'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.7: BEC (Backward Error Correction)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.7'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'backward_error_correction'})
SET     n.name = 'Backward Error Correction',
    n.name_kr = 'BEC',
    n.domain = 'NW',
    n.aliases = ['Backward Error Correction', 'BEC'];

MERGE (n:Concept {id: '오류제어'})
SET     n.name = '오류제어',
    n.name_kr = '오류제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '패블c검_(패리티'})
SET     n.name = '패블C검 (패리티',
    n.name_kr = '패블C검 (패리티',
    n.domain = 'NW';

MERGE (n:Concept {id: '블록합'})
SET     n.name = '블록합',
    n.name_kr = '블록합',
    n.domain = 'NW';

MERGE (n:Concept {id: 'crc'})
SET     n.name = 'CRC',
    n.name_kr = 'CRC',
    n.domain = 'NW',
    n.aliases = ['CRC'];

MERGE (n:Concept {id: '검사합)'})
SET     n.name = '검사합)',
    n.name_kr = '검사합)',
    n.domain = 'NW';

MERGE (n:Concept {id: '스고세'})
SET     n.name = '스고세',
    n.name_kr = '스고세',
    n.domain = 'NW';

MERGE (n:Concept {id: '오류_검출'})
SET     n.name = '오류 검출',
    n.name_kr = '오류 검출',
    n.domain = 'NW',
    n.definition = '패리티 검사 (Parity Check)';

MERGE (n:Concept {id: 'block_sum'})
SET     n.name = 'Block Sum',
    n.name_kr = '블록합 검사',
    n.domain = 'NW',
    n.definition = '이차원 패리티 검사, 가로와 세로로 두 번 검사',
    n.aliases = ['Block Sum', '블록합 검사'];

MERGE (n:Concept {id: 'check_sum'})
SET     n.name = 'Check Sum',
    n.name_kr = '검사합 검사',
    n.domain = 'NW',
    n.definition = '워드단위 구분의 1 의 보수 이용 검출 정보 생성 - 워드 순서 바뀌는 오류 검출 불가',
    n.aliases = ['Check Sum', '검사합 검사'];

MERGE (n:Concept {id: '오류_정정'})
SET     n.name = '오류 정정',
    n.name_kr = '오류 정정',
    n.domain = 'NW',
    n.definition = 'ARQ(Automatic Repeat reQuest)';

MERGE (n:Concept {id: 'stop_and_wait_arq'})
SET     n.name = 'Stop and Wait ARQ',
    n.name_kr = 'Stop and Wait ARQ',
    n.domain = 'NW',
    n.definition = '송신 측에서 1개의 프레임을 송신하고, 수신 측에서 수신된 프레임의 에러 유무를 판단하여 송신 측에 ACK나 NAK를 보내는 방식',
    n.aliases = ['Stop and Wait ARQ'];

MERGE (n:Concept {id: 'go_back_n_arq'})
SET     n.name = 'Go-Back-N ARQ',
    n.name_kr = 'Go-Back-N ARQ',
    n.domain = 'NW',
    n.definition = '프레임이 중간에 손상되면 해당 프레임 이후 모든 프레임을 재전송',
    n.aliases = ['Go-Back-N ARQ'];

MERGE (n:Concept {id: 'selective_repeat_arq'})
SET     n.name = 'Selective-Repeat ARQ',
    n.name_kr = 'Selective-Repeat ARQ',
    n.domain = 'NW',
    n.definition = '프레임이 중간에 손상되면 손상된 프레임만 재전송하는 방식.',
    n.aliases = ['Selective-Repeat ARQ'];

MERGE (n:Concept {id: 'hybrid_arq'})
SET     n.name = 'Hybrid ARQ',
    n.name_kr = 'Hybrid ARQ',
    n.domain = 'NW',
    n.definition = 'FEC 방식을 적용해 오류를 수정하고 수정 안된 프레임만 재전송하는 방식',
    n.aliases = ['Hybrid ARQ'];

MERGE (n:Threat {id: 'adaptive_arq'})
SET     n.name = 'Adaptive ARQ',
    n.name_kr = 'Adaptive ARQ',
    n.domain = 'NW',
    n.definition = '채널 효율을 최대로 높이기 위해 블록의 길이를 동적(dynamic)으로 변경할 수 있는 방식',
    n.aliases = ['Adaptive ARQ'];

// --- 관계 ---

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '패블c검_(패리티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '블록합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'crc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '검사합)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '스고세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '오류_검출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'block_sum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'check_sum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: '오류_정정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'stop_and_wait_arq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'go_back_n_arq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'selective_repeat_arq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Concept {id: 'hybrid_arq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Threat {id: 'adaptive_arq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Document {id: 'NW_037.7'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'backward_error_correction'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패블c검_(패리티'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록합'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검사합)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스고세'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류_검출'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_sum'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'check_sum'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류_정정'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stop_and_wait_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'go_back_n_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'selective_repeat_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hybrid_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'adaptive_arq'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_037.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.8'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_037.9: 전송계층 오류제어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_037.9'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '전송계층_오류제어'})
SET     n.name = '전송계층 오류제어',
    n.name_kr = '전송계층 오류제어',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp/ip_5계층'})
SET     n.name = 'TCP/IP 5계층',
    n.name_kr = 'TCP/IP 5계층',
    n.domain = 'NW';

MERGE (n:Concept {id: 'error_control'})
SET     n.name = '오류제어',
    n.name_kr = '오류제어',
    n.domain = 'NW';

MERGE (n:Concept {id: 'checksum'})
SET     n.name = 'Checksum',
    n.name_kr = 'Checksum',
    n.domain = 'NW',
    n.aliases = ['Checksum'];

MERGE (n:Concept {id: 'sequence_number'})
SET     n.name = 'Sequence Number',
    n.name_kr = 'Sequence Number',
    n.domain = 'NW',
    n.aliases = ['Sequence Number'];

MERGE (n:Concept {id: 'ack_number'})
SET     n.name = 'Ack Number',
    n.name_kr = 'Ack Number',
    n.domain = 'NW',
    n.aliases = ['Ack Number'];

MERGE (n:Concept {id: 'timeout'})
SET     n.name = 'TimeOut',
    n.name_kr = 'TimeOut',
    n.domain = 'NW',
    n.aliases = ['TimeOut'];

MERGE (n:Concept {id: 'rto'})
SET     n.name = 'RTO',
    n.name_kr = 'RTO',
    n.domain = 'NW',
    n.aliases = ['RTO'];

MERGE (n:Concept {id: '3_duplicate_ack\'s'})
SET     n.name = '3 Duplicate Ack\'s',
    n.name_kr = '3 Duplicate Ack\'s',
    n.domain = 'NW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '검출방법'})
SET     n.name = '검출방법',
    n.name_kr = '검출방법',
    n.domain = 'NW',
    n.definition = '검사합';

MERGE (n:Concept {id: '확인응답'})
SET     n.name = '확인응답',
    n.name_kr = '확인응답',
    n.domain = 'NW',
    n.definition = '데이터 세그먼트의 수신 확인 용도 - 긍정 누적확인응답(P-ack), 선택확인응답(S-ack) 유형 존재';

MERGE (n:Concept {id: 'time_over'})
SET     n.name = '시간초과',
    n.name_kr = '시간초과',
    n.domain = 'NW',
    n.definition = 'ACK 확인 없으면, 세그먼트는 오류 판정(재전송)';

MERGE (n:Concept {id: '재전송'})
SET     n.name = '재전송',
    n.name_kr = '재전송',
    n.domain = 'NW',
    n.definition = '훼손 세그먼트';

MERGE (n:Concept {id: '손실_세그먼트'})
SET     n.name = '손실 세그먼트',
    n.name_kr = '손실 세그먼트',
    n.domain = 'NW',
    n.definition = '송신측에서 전송한 데이터 손실 시 Time-out 되고, 수신 측의 Ack 확인이 없으면 재전송';

MERGE (n:Concept {id: '중복_세그먼트'})
SET     n.name = '중복 세그먼트',
    n.name_kr = '중복 세그먼트',
    n.domain = 'NW',
    n.definition = '수신 TCP는 중복 세그먼트 중에서 늦게 도착한 것 폐기';

MERGE (n:Technology {id: '순서_어긋난_세그먼트'})
SET     n.name = '순서 어긋난 세그먼트',
    n.name_kr = '순서 어긋난 세그먼트',
    n.domain = 'NW',
    n.definition = 'TCP 세그먼트가 IP로 전달하여 발생 - 올바른 전송 시까지 확인응답을 하지 않고 폐기';

MERGE (n:Concept {id: '확인응답_세그먼트'})
SET     n.name = '확인응답 세그먼트',
    n.name_kr = '확인응답 세그먼트',
    n.domain = 'NW',
    n.definition = '시간차 두고 회신되는 경우 Time-out 전에만 들어오면 다음 세그먼트 전송';

// --- 관계 ---

MERGE (a:Concept {id: 'error_control'})
MERGE (b:Technology {id: 'tcp/ip_5계층'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'checksum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'sequence_number'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'ack_number'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'timeout'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'rto'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '3_duplicate_ack\'s'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '검출방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '확인응답'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: 'time_over'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '재전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '손실_세그먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '중복_세그먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Technology {id: '순서_어긋난_세그먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Concept {id: '확인응답_세그먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Document {id: 'NW_037.9'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전송계층_오류제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp/ip_5계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'error_control'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'checksum'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence_number'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ack_number'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timeout'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rto'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3_duplicate_ack\'s'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검출방법'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확인응답'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_over'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '손실_세그먼트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복_세그먼트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '순서_어긋난_세그먼트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확인응답_세그먼트'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_038.1: HTTP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_038.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'http'})
SET     n.name = 'HTTP',
    n.name_kr = 'HTTP',
    n.domain = 'NW',
    n.aliases = ['HTTP'];

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

// --- 관계 ---

MERGE (a:Concept {id: 'osi_7_layers'})
MERGE (b:Concept {id: '디지털_네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Technology {id: 'tls_1_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Concept {id: '1_rtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Concept {id: '0_rtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Concept {id: 'quic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Concept {id: 'hol블로킹_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Document {id: 'NW_038.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'http'})
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

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 391개
// 관계: 790개
// ================================================================