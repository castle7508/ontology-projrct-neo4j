// ================================================================
// SV 도메인 (SV_201 ~ SV_250) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_187: 가상공간(Cyber Space)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_187'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_space'})
SET     n.name = 'Cyber Space',
    n.name_kr = '가상공간',
    n.domain = 'SV',
    n.aliases = ['Cyber Space', '가상공간'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강현실/가상현실'})
SET     n.name = '증강현실/가상현실',
    n.name_kr = '증강현실/가상현실',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cps'})
SET     n.name = 'CPS',
    n.name_kr = 'CPS',
    n.domain = 'SV',
    n.aliases = ['CPS'];

MERGE (n:Concept {id: '시뮬레이션'})
SET     n.name = '시뮬레이션',
    n.name_kr = '시뮬레이션',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_스레드'})
SET     n.name = '디지털 스레드',
    n.name_kr = '디지털 스레드',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '증강현실/가상현실'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Concept {id: '증강현실/가상현실'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Concept {id: 'cps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Concept {id: '시뮬레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Concept {id: '디지털_스레드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Document {id: 'SV_187'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_space'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강현실/가상현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cps'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시뮬레이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_스레드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_189: 증강현실(Augment Reality)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_189'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'augment_reality'})
SET     n.name = 'Augment Reality',
    n.name_kr = '증강현실',
    n.domain = 'SV',
    n.aliases = ['Augment Reality', '증강현실'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강/가상현실'})
SET     n.name = '증강/가상현실',
    n.name_kr = '증강/가상현실',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강현실_기술_실현을_위한_hmd'})
SET     n.name = '증강현실 기술 실현을 위한 HMD',
    n.name_kr = '증강현실 기술 실현을 위한 HMD',
    n.domain = 'SV';

MERGE (n:Concept {id: 'head_up_display'})
SET     n.name = 'Head Up Display',
    n.name_kr = 'HUD',
    n.domain = 'SV',
    n.aliases = ['Head Up Display', 'HUD'];

MERGE (n:Concept {id: '센싱기술'})
SET     n.name = '센싱기술',
    n.name_kr = '센싱기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '그래픽(cad기술'})
SET     n.name = '그래픽(CAD기술',
    n.name_kr = '그래픽(CAD기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'marker'})
SET     n.name = '마커인식기술',
    n.name_kr = '마커인식기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '모션트래킹_프로젝터'})
SET     n.name = '모션트래킹 프로젝터',
    n.name_kr = '모션트래킹 프로젝터',
    n.domain = 'SV';

MERGE (n:Concept {id: '위치기반ar'})
SET     n.name = '위치기반AR',
    n.name_kr = '위치기반AR',
    n.domain = 'SV',
    n.definition = 'GPS등을 통해 수집한 위치 정보를 바탕으로 가상정보를 제공 -layer, wikitude등 길찾기, 위치정보 AR';

MERGE (n:Concept {id: '마커기반ar'})
SET     n.name = '마커기반AR',
    n.name_kr = '마커기반AR',
    n.domain = 'SV',
    n.definition = '카메라를 통해 인식한 특정 마커를 통해서 가상 정보를 덧입히는 형태 -마커의 형태를 인식하기 위한 카메라의 트래킹 기술 등 인식 프로그램 필수';

MERGE (n:Concept {id: '비마커기반ar'})
SET     n.name = '비마커기반AR',
    n.name_kr = '비마커기반AR',
    n.domain = 'SV',
    n.definition = '기본 방식은 마커기반과 동일하나 마커가 아닌 특정 이미지를 인식한다는 점이 다름 -비마커의 인식대상은 일반적으로 흔히 볼 수 있는 이미지 -고도의 기술을 요구해서 전세계적으로 5개 기업이 원천기술을 확보';

// --- 관계 ---

MERGE (a:Concept {id: '증강/가상현실'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '증강/가상현실'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '증강현실_기술_실현을_위한_hmd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: 'head_up_display'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '센싱기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '그래픽(cad기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: 'marker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '모션트래킹_프로젝터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '위치기반ar'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '마커기반ar'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Concept {id: '비마커기반ar'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Document {id: 'SV_189'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'augment_reality'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강/가상현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강현실_기술_실현을_위한_hmd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'head_up_display'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센싱기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래픽(cad기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'marker'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모션트래킹_프로젝터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치기반ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마커기반ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비마커기반ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_190: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_190'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_191.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_191.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_191.2: ARC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_191.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'arc'})
SET     n.name = 'ARC',
    n.name_kr = 'ARC',
    n.domain = 'SV',
    n.aliases = ['ARC'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강현실,_가상현실'})
SET     n.name = '증강현실, 가상현실',
    n.name_kr = '증강현실, 가상현실',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상_현실'})
SET     n.name = '가상 현실',
    n.name_kr = '가상 현실',
    n.domain = 'SV',
    n.definition = '시공간을 초월하여 상상의 세계가 현실과 같이 펼쳐지는 세계로 몰입 가상 현실 내, 현실과 같은 자연스러운 상호 작용을 가능케 하는 인간이 컴퓨터와 더불어 만든 감각의 세계';

MERGE (n:Concept {id: '증강_현실'})
SET     n.name = '증강 현실',
    n.name_kr = '증강 현실',
    n.domain = 'SV',
    n.definition = '현실과 컴퓨터로 생성된 데이터와의 합성으로 현실에서 존재하는 객체처럼 보이도록 하는 컴퓨터 그래픽스의 기법으로 만든 현실';

MERGE (n:Concept {id: '혼합_현실'})
SET     n.name = '혼합 현실',
    n.name_kr = '혼합 현실',
    n.domain = 'SV',
    n.definition = '현실에 컴퓨터 그래픽스로 구성된 가상 현실을 결합하여 실시간으로 사용자의 움직임에 따라 가상 객체를 조작하는 HCI(Human Computer Interface) 에 따라 사용자가 증강 혼합된 영상을 느끼게 하는 조작된 현실';

MERGE (n:Concept {id: '가상현실'})
SET     n.name = '가상현실',
    n.name_kr = '가상현실',
    n.domain = 'SV',
    n.definition = '하드웨어시스템장치';

MERGE (n:Concept {id: '소프트웨어시스템'})
SET     n.name = '소프트웨어시스템',
    n.name_kr = '소프트웨어시스템',
    n.domain = 'SV',
    n.definition = '가상현실을 구현하기위한 프로그램';

MERGE (n:Concept {id: 'ar'})
SET     n.name = '증강현실',
    n.name_kr = '증강현실',
    n.domain = 'SV',
    n.definition = '모니터기반시스템';

MERGE (n:Concept {id: '광학_hmd_시스템'})
SET     n.name = '광학 HMD 시스템',
    n.name_kr = '광학 HMD 시스템',
    n.domain = 'SV',
    n.definition = '실 세계 영상과 가상 세계 영상이 광학적인 원리에 의해 합성하며, 안경처럼 눈앞에 중첩된 영상제공';

MERGE (n:Concept {id: '비디오_hmd_시스템'})
SET     n.name = '비디오 HMD 시스템',
    n.name_kr = '비디오 HMD 시스템',
    n.domain = 'SV',
    n.definition = '비디오카메라를 통하여 입력된 실제영상이 컴퓨터에서 생성된 영상과결합하여 HMD에 출력';

MERGE (n:Concept {id: 'mr'})
SET     n.name = '혼합현실',
    n.name_kr = '혼합현실',
    n.domain = 'SV',
    n.definition = '카메라보정';

MERGE (n:Concept {id: '포즈평가'})
SET     n.name = '포즈평가',
    n.name_kr = '포즈평가',
    n.domain = 'SV',
    n.definition = '비본질적 매개변수를 알아내는 과정';

MERGE (n:Concept {id: '최적화이론'})
SET     n.name = '최적화이론',
    n.name_kr = '최적화이론',
    n.domain = 'SV',
    n.definition = '영상최적화';

MERGE (n:Concept {id: '컴퓨터_그래픽스'})
SET     n.name = '컴퓨터 그래픽스',
    n.name_kr = '컴퓨터 그래픽스',
    n.domain = 'SV',
    n.definition = '3D Model을 만드는 기술';

// --- 관계 ---

MERGE (a:Concept {id: '증강현실,_가상현실'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '증강현실,_가상현실'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '가상_현실'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '증강_현실'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '혼합_현실'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '가상현실'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '소프트웨어시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '광학_hmd_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '비디오_hmd_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: 'mr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '포즈평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '최적화이론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Concept {id: '컴퓨터_그래픽스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Document {id: 'SV_191.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'arc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강현실,_가상현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강_현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혼합_현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광학_hmd_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비디오_hmd_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포즈평가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적화이론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_그래픽스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_192.1: XR(eXtended Reality)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_192.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'extended_reality'})
SET     n.name = 'eXtended Reality',
    n.name_kr = 'XR',
    n.domain = 'SV',
    n.aliases = ['eXtended Reality', 'XR'];

MERGE (n:Concept {id: '증간,가상'})
SET     n.name = '증간,가상',
    n.name_kr = '증간,가상',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vr'})
SET     n.name = 'VR',
    n.name_kr = '가상현실',
    n.domain = 'SV',
    n.aliases = ['VR', '가상현실'];

MERGE (n:Concept {id: 'ar'})
SET     n.name = 'AR',
    n.name_kr = '증간현실',
    n.domain = 'SV',
    n.aliases = ['AR', '증간현실'];

MERGE (n:Concept {id: 'mr'})
SET     n.name = 'MR',
    n.name_kr = '혼합현실',
    n.domain = 'SV',
    n.aliases = ['MR', '혼합현실'];

MERGE (n:Concept {id: 'xr'})
SET     n.name = 'XR',
    n.name_kr = '실감기술',
    n.domain = 'SV',
    n.aliases = ['XR', '실감기술'];

MERGE (n:Concept {id: 'hr'})
SET     n.name = '홀로그램',
    n.name_kr = '홀로그램',
    n.domain = 'SV';

MERGE (n:Concept {id: 'toe_프레임워크_분석방법론'})
SET     n.name = 'TOE 프레임워크 분석방법론',
    n.name_kr = 'TOE 프레임워크 분석방법론',
    n.domain = 'SV';

MERGE (n:Concept {id: '핵심기술'})
SET     n.name = '핵심기술',
    n.name_kr = '핵심기술',
    n.domain = 'SV',
    n.definition = '가상현실(VR)';

MERGE (n:Concept {id: 'hw_기술'})
SET     n.name = 'HW 기술',
    n.name_kr = 'HW 기술',
    n.domain = 'SV',
    n.definition = '입력 인터페이스';

MERGE (n:Concept {id: '출력_인터페이스'})
SET     n.name = '출력 인터페이스',
    n.name_kr = '출력 인터페이스',
    n.domain = 'SV',
    n.definition = '가상/증강현실의 가상 객체 및 배경을 출력하는 디스플레이 장치';

MERGE (n:Concept {id: '컴퓨팅_장치'})
SET     n.name = '컴퓨팅 장치',
    n.name_kr = '컴퓨팅 장치',
    n.domain = 'SV',
    n.definition = 'HMD(Head-Mount Display), GPU, 디스플레이, 자이로 센서, 가속센서';

MERGE (n:Concept {id: 'sw_기술'})
SET     n.name = 'SW 기술',
    n.name_kr = 'SW 기술',
    n.domain = 'SV',
    n.definition = '추적 및 정합 기술';

MERGE (n:Concept {id: '음성_인식_기술'})
SET     n.name = '음성 인식 기술',
    n.name_kr = '음성 인식 기술',
    n.domain = 'SV',
    n.definition = '자동음성인식(ASR), 자연어처리(NLP)';

MERGE (n:Concept {id: '상호작용_및_사용자_인터페이스_기술'})
SET     n.name = '상호작용 및 사용자 인터페이스 기술',
    n.name_kr = '상호작용 및 사용자 인터페이스 기술',
    n.domain = 'SV',
    n.definition = '제스처 기반 방식: 터치스크린 및 가속도 센서 등을 이용하여 다양한 제스처에 의한 상호작용을 가능하도록 하는 방식 - 촉감형 AR : 행위를 통해 상호작용을 하는 방식 - 협력형 AR : 다수의 사용자와 지속적으로 상호작용을 하는 방식';

MERGE (n:Concept {id: '위치기반_서비스_기술'})
SET     n.name = '위치기반 서비스 기술',
    n.name_kr = '위치기반 서비스 기술',
    n.domain = 'SV',
    n.definition = '사용자 및 현실 세계 객체의 위치를 확인하는 기술';

MERGE (n:Concept {id: '지능형_검색_기술'})
SET     n.name = '지능형 검색 기술',
    n.name_kr = '지능형 검색 기술',
    n.domain = 'SV',
    n.definition = '사용자 상황에 맞고 이미지/위치/영상/사운드 등을 검색 조건으로 하는 새롭고 진화된 검색 인터페이스';

MERGE (n:Concept {id: 'rendering'})
SET     n.name = 'Rendering',
    n.name_kr = '렌더링',
    n.domain = 'SV',
    n.definition = '고화질의 3D를 구현하고 사실적인 처리를 위한 컴퓨터그래픽 소프트웨어 기술',
    n.aliases = ['Rendering', '렌더링'];

MERGE (n:Concept {id: 'plenoptic'})
SET     n.name = 'Plenoptic',
    n.name_kr = '플렌옵틱',
    n.domain = 'SV',
    n.definition = '자연스러운 현실세계의 빛 재현',
    n.aliases = ['Plenoptic', '플렌옵틱'];

MERGE (n:Threat {id: 'volumetric_capture'})
SET     n.name = 'Volumetric Capture',
    n.name_kr = '볼륨메트릭 캡처',
    n.domain = 'SV',
    n.definition = '다수의 카메라를 통해 캡처하여 360° 모든 방향에서 콘텐츠 구현',
    n.aliases = ['Volumetric Capture', '볼륨메트릭 캡처'];

MERGE (n:Concept {id: '영상_문제'})
SET     n.name = '영상 문제',
    n.name_kr = '영상 문제',
    n.domain = 'SV',
    n.definition = '낮은 해상도';

MERGE (n:Concept {id: '격자_무늬'})
SET     n.name = '격자 무늬',
    n.name_kr = '격자 무늬',
    n.domain = 'SV',
    n.definition = '낮은 해상도와 픽셀 수로 인해 격자무늬(모자이크) 발생';

MERGE (n:Concept {id: '좁은_뷰'})
SET     n.name = '좁은 뷰',
    n.name_kr = '좁은 뷰',
    n.domain = 'SV',
    n.definition = 'HMD 착용 시, 사람 눈의 양안을 합친 기본 시야각(수평 180 도, 수직 120 도)보다 훨씬 좁은 뷰가 보여짐';

MERGE (n:Concept {id: '화면_깜박임'})
SET     n.name = '화면 깜박임',
    n.name_kr = '화면 깜박임',
    n.domain = 'SV',
    n.definition = 'HMD 의 초당 플레이되는 정지영상 빈도수가 작기 때문에 화면 깜빡임 문제 발생';

MERGE (n:Concept {id: '음향_문제'})
SET     n.name = '음향 문제',
    n.name_kr = '음향 문제',
    n.domain = 'SV',
    n.definition = '낮은 음질과 입체감';

MERGE (n:Concept {id: 'vr_멀미'})
SET     n.name = 'VR 멀미',
    n.name_kr = 'VR 멀미',
    n.domain = 'SV',
    n.definition = '비동기 이슈';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SV';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'SV';

MERGE (n:Concept {id: 'data_측면'})
SET     n.name = 'Data 측면',
    n.name_kr = 'Data 측면',
    n.domain = 'SV',
    n.definition = '활용 가능 데이터 부족';

MERGE (n:Concept {id: 'network_측면'})
SET     n.name = 'Network 측면',
    n.name_kr = 'Network 측면',
    n.domain = 'SV',
    n.definition = '해킹의 위협';

MERGE (n:Concept {id: 'ai_측면'})
SET     n.name = 'AI 측면',
    n.name_kr = 'AI 측면',
    n.domain = 'SV',
    n.definition = '가상 아바타를 악용한 도박, 윤리 등 범죄행위';

// --- 관계 ---

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '증간,가상'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'mr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'xr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'hr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'toe_프레임워크_분석방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '핵심기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'hw_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '출력_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '컴퓨팅_장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'sw_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '음성_인식_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '상호작용_및_사용자_인터페이스_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '위치기반_서비스_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '지능형_검색_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'rendering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'plenoptic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Threat {id: 'volumetric_capture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '영상_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '격자_무늬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '좁은_뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '화면_깜박임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '음향_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'vr_멀미'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'data_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'network_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Concept {id: 'ai_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Document {id: 'SV_192.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'extended_reality'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증간,가상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'toe_프레임워크_분석방법론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력_인터페이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅_장치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성_인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호작용_및_사용자_인터페이스_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치기반_서비스_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_검색_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rendering'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plenoptic'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'volumetric_capture'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '격자_무늬'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '좁은_뷰'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화면_깜박임'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음향_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vr_멀미'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_192.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_192.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_193: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_193'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_194: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_194'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_195: 모바일 증강현실
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_195'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mobile_augmented_reality'})
SET     n.name = 'Mobile Augmented Reality',
    n.name_kr = '모바일 증강현실',
    n.domain = 'SV',
    n.aliases = ['모바일 증강현실'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강현실/가상현실'})
SET     n.name = '증강현실/가상현실',
    n.name_kr = '증강현실/가상현실',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '증강현실/가상현실'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mobile_augmented_reality'})
MERGE (b:Concept {id: '증강현실/가상현실'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mobile_augmented_reality'})
MERGE (b:Document {id: 'SV_195'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mobile_augmented_reality'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강현실/가상현실'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_196: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_196'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_198: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_198'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_199: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_199'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_200: 주변감지 및 경고시스템 표준(TTAK.KO-10.1116, 2018)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_200'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ttak_ko_10_1116,_2018'})
SET     n.name = 'TTAK.KO-10.1116, 2018',
    n.name_kr = '주변감지 및 경고시스템 표준',
    n.domain = 'SV',
    n.aliases = ['TTAK.KO-10.1116, 2018', '주변감지 및 경고시스템 표준'];

MERGE (n:Concept {id: '증간,_가상'})
SET     n.name = '증간, 가상',
    n.name_kr = '증간, 가상',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vr'})
SET     n.name = 'VR',
    n.name_kr = 'VR',
    n.domain = 'SV',
    n.aliases = ['VR'];

MERGE (n:Concept {id: 'hmd'})
SET     n.name = 'HMD',
    n.name_kr = 'HMD',
    n.domain = 'SV',
    n.aliases = ['HMD'];

MERGE (n:Concept {id: '독립형_머리장착형_영상장치'})
SET     n.name = '독립형 머리장착형 영상장치',
    n.name_kr = '독립형 머리장착형 영상장치',
    n.domain = 'SV';

MERGE (n:Concept {id: 'pc_및_콘솔용_머리_장착형_영상장치'})
SET     n.name = 'PC 및 콘솔용 머리 장착형 영상장치',
    n.name_kr = 'PC 및 콘솔용 머리 장착형 영상장치',
    n.domain = 'SV';

MERGE (n:Concept {id: '안전확보_항목'})
SET     n.name = '안전확보 항목',
    n.name_kr = '안전확보 항목',
    n.domain = 'SV',
    n.definition = '절대적 안전 거리';

MERGE (n:Concept {id: '상대적_안전_거리'})
SET     n.name = '상대적 안전 거리',
    n.name_kr = '상대적 안전 거리',
    n.domain = 'SV',
    n.definition = '주변 물체와 사용자 간의 상대 속도에 의해서 가까워지는 거리가 초당 1m 이상일 때, 5 미터 이상';

MERGE (n:Concept {id: '절대적_위험_물체'})
SET     n.name = '절대적 위험 물체',
    n.name_kr = '절대적 위험 물체',
    n.domain = 'SV',
    n.definition = '곡률이 2mm 이하인 날카로운 물체';

MERGE (n:Concept {id: '상대적_위험_물체'})
SET     n.name = '상대적 위험 물체',
    n.name_kr = '상대적 위험 물체',
    n.domain = 'SV',
    n.definition = '사용자를 중심으로 반경 2m 이내에서 2m/sec 이상의 속도로 접근하는 물체';

MERGE (n:Concept {id: '시스템_구성'})
SET     n.name = '시스템 구성',
    n.name_kr = '시스템 구성',
    n.domain = 'SV',
    n.definition = '깊이 카메라 모듈 배열';

MERGE (n:Concept {id: '감지_기준'})
SET     n.name = '감지 기준',
    n.name_kr = '감지 기준',
    n.domain = 'SV',
    n.definition = '깊이 카메라 모듈은 ‘절대적 안전거리’와 ‘상대적 안전거리’ 이내에 ‘절대적 위험 물체’ 또는 ‘상대적 위험 물체’ 감지';

MERGE (n:Concept {id: '시야각_기준'})
SET     n.name = '시야각 기준',
    n.name_kr = '시야각 기준',
    n.domain = 'SV',
    n.definition = '수평 시야각(FOV, Field of View) 90 도 이상, 수직 시야각 120 도 이상';

MERGE (n:Concept {id: '시스템_활성화'})
SET     n.name = '시스템 활성화',
    n.name_kr = '시스템 활성화',
    n.domain = 'SV',
    n.definition = '활성화 기준';

MERGE (n:Concept {id: '안전대처시간'})
SET     n.name = '안전대처시간',
    n.name_kr = '안전대처시간',
    n.domain = 'SV',
    n.definition = '‘상대적 안전거리’는 사용자가 위험을 인지하고 대처할 수 있는 최소한의 시간인 5 초 확보';

MERGE (n:Concept {id: '비활성화_기준'})
SET     n.name = '비활성화 기준',
    n.name_kr = '비활성화 기준',
    n.domain = 'SV',
    n.definition = '사용자의 의지에 따라 비활성 가능 - 단, 비활성시 경고메시지를 음성신호와 문자등의 영상신호로 출력';

MERGE (n:Concept {id: '위험_판단'})
SET     n.name = '위험 판단',
    n.name_kr = '위험 판단',
    n.domain = 'SV',
    n.definition = '잠재적 위험';

MERGE (n:Concept {id: '심각한_위험'})
SET     n.name = '심각한 위험',
    n.name_kr = '심각한 위험',
    n.domain = 'SV',
    n.definition = '절대적 안전거리’ 또는 ‘상대적 안전거리’내에 ‘절대적 위험 물체’ 또는 ‘상대적 위험 물체’가 접근하는 경우';

MERGE (n:Concept {id: '활성_기준'})
SET     n.name = '활성 기준',
    n.name_kr = '활성 기준',
    n.domain = 'SV',
    n.definition = '잠재적 위험';

MERGE (n:Concept {id: '영상_신호_표시_형식'})
SET     n.name = '영상 신호 표시 형식',
    n.name_kr = '영상 신호 표시 형식',
    n.domain = 'SV',
    n.definition = '표시방식';

MERGE (n:Concept {id: '표시기준'})
SET     n.name = '표시기준',
    n.name_kr = '표시기준',
    n.domain = 'SV',
    n.definition = '콘텐츠의 특성에 따라 위의 영상 신호 방식 중 사용자가 상황을 인지할 수 있는 방식 선택';

MERGE (n:Concept {id: '음성_신호_표시_형식'})
SET     n.name = '음성 신호 표시 형식',
    n.name_kr = '음성 신호 표시 형식',
    n.domain = 'SV',
    n.definition = '비프 신호, 사람의 목소리 신호, 사운드 신호';

MERGE (n:Concept {id: '심각한_위험_표시형식'})
SET     n.name = '심각한 위험 표시형식',
    n.name_kr = '심각한 위험 표시형식',
    n.domain = 'SV',
    n.definition = '영상신호+음성신호';

// --- 관계 ---

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '증간,_가상'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: 'vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: 'hmd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '독립형_머리장착형_영상장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: 'pc_및_콘솔용_머리_장착형_영상장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '안전확보_항목'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '상대적_안전_거리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '절대적_위험_물체'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '상대적_위험_물체'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '시스템_구성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '감지_기준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '시야각_기준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '시스템_활성화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '안전대처시간'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '비활성화_기준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '위험_판단'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '심각한_위험'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '활성_기준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '영상_신호_표시_형식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '표시기준'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '음성_신호_표시_형식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Concept {id: '심각한_위험_표시형식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Document {id: 'SV_200'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_1116,_2018'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증간,_가상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hmd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립형_머리장착형_영상장치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pc_및_콘솔용_머리_장착형_영상장치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전확보_항목'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상대적_안전_거리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절대적_위험_물체'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상대적_위험_물체'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_구성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감지_기준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시야각_기준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_활성화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전대처시간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비활성화_기준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_판단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심각한_위험'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활성_기준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상_신호_표시_형식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표시기준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성_신호_표시_형식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '심각한_위험_표시형식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_201.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_201.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_201.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_201.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_202.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_202.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_202.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_202.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_203: 가상융합경제 발전전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_203'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '가상융합경제_발전전략'})
SET     n.name = '가상융합경제 발전전략',
    n.name_kr = '가상융합경제 발전전략',
    n.domain = 'SV';

MERGE (n:Concept {id: '증강,가상'})
SET     n.name = '증강,가상',
    n.name_kr = '증강,가상',
    n.domain = 'SV';

MERGE (n:Concept {id: '경제사회_전반의_xr활용확산'})
SET     n.name = '경제사회 전반의 XR활용확산',
    n.name_kr = '경제사회 전반의 XR활용확산',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xr기업_세계적_경쟁력_확보_지원'})
SET     n.name = 'XR기업 세계적 경쟁력 확보 지원',
    n.name_kr = 'XR기업 세계적 경쟁력 확보 지원',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_뉴딜'})
SET     n.name = '디지털 뉴딜',
    n.name_kr = '디지털 뉴딜',
    n.domain = 'SV';

MERGE (n:Concept {id: '실감형_콘텐츠'})
SET     n.name = '실감형 콘텐츠',
    n.name_kr = '실감형 콘텐츠',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vr'})
SET     n.name = 'VR',
    n.name_kr = '가상현실',
    n.domain = 'SV',
    n.aliases = ['VR', '가상현실'];

MERGE (n:Concept {id: 'ar'})
SET     n.name = 'AR',
    n.name_kr = '증강현실',
    n.domain = 'SV',
    n.aliases = ['AR', '증강현실'];

MERGE (n:Concept {id: 'xr'})
SET     n.name = 'XR',
    n.name_kr = '가상융합기술',
    n.domain = 'SV',
    n.aliases = ['XR', '가상융합기술'];

MERGE (n:Concept {id: 'mr'})
SET     n.name = 'MR',
    n.name_kr = '혼합현실',
    n.domain = 'SV',
    n.aliases = ['MR', '혼합현실'];

MERGE (n:Concept {id: 'data_측면'})
SET     n.name = 'Data 측면',
    n.name_kr = 'Data 측면',
    n.domain = 'SV',
    n.definition = '활용 가능 데이터 부족';

MERGE (n:Concept {id: 'network_측면'})
SET     n.name = 'Network 측면',
    n.name_kr = 'Network 측면',
    n.domain = 'SV',
    n.definition = '해킹의 위협';

MERGE (n:Concept {id: 'ai_측면'})
SET     n.name = 'AI 측면',
    n.name_kr = 'AI 측면',
    n.domain = 'SV',
    n.definition = '가상 아바타를 악용한 도박, 윤리 등 범죄행위';

// --- 관계 ---

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: '증강,가상'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: '경제사회_전반의_xr활용확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'xr기업_세계적_경쟁력_확보_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: '디지털_뉴딜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: '실감형_콘텐츠'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Concept {id: 'xr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ar'})
MERGE (b:Concept {id: 'xr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'xr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Concept {id: 'mr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ar'})
MERGE (b:Concept {id: 'mr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'ar'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'mr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'data_측면'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'network_측면'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Concept {id: 'ai_측면'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Document {id: 'SV_203'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '가상융합경제_발전전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강,가상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경제사회_전반의_xr활용확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xr기업_세계적_경쟁력_확보_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_뉴딜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실감형_콘텐츠'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_204: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_204'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_205: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_205'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_206.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_206.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_206.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_206.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_207: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_207'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_208: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_208'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_210: 오감
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_210'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '오감'})
SET     n.name = '오감',
    n.name_kr = '오감',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'wearable_computer'})
SET     n.name = 'Wearable Computer',
    n.name_kr = 'Wearable Computer',
    n.domain = 'SV',
    n.aliases = ['Wearable Computer'];

MERGE (n:Concept {id: '시각'})
SET     n.name = '시각',
    n.name_kr = '시각',
    n.domain = 'SV';

MERGE (n:Concept {id: '청각'})
SET     n.name = '청각',
    n.name_kr = '청각',
    n.domain = 'SV';

MERGE (n:Concept {id: '후각'})
SET     n.name = '후각',
    n.name_kr = '후각',
    n.domain = 'SV';

MERGE (n:Concept {id: '미각'})
SET     n.name = '미각',
    n.name_kr = '미각',
    n.domain = 'SV';

MERGE (n:Concept {id: '광센서'})
SET     n.name = '광센서',
    n.name_kr = '광센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '음향센서'})
SET     n.name = '음향센서',
    n.name_kr = '음향센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '(진동센서'})
SET     n.name = '(진동센서',
    n.name_kr = '(진동센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '온도센서'})
SET     n.name = '온도센서',
    n.name_kr = '온도센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '압력센서)'})
SET     n.name = '압력센서)',
    n.name_kr = '압력센서)',
    n.domain = 'SV';

MERGE (n:Concept {id: '맛센서'})
SET     n.name = '맛센서',
    n.name_kr = '맛센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '화학센서'})
SET     n.name = '화학센서',
    n.name_kr = '화학센서',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: 'wearable_computer'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '시각'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '청각'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '후각'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '미각'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '광센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '음향센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '(진동센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '온도센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '압력센서)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '맛센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Concept {id: '화학센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Document {id: 'SV_210'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '오감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시각'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '청각'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후각'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미각'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음향센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(진동센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온도센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압력센서)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '맛센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화학센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_211: Multi Modal
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_211'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'multi_modal'})
SET     n.name = 'Multi Modal',
    n.name_kr = 'Multi Modal',
    n.domain = 'SV',
    n.aliases = ['Multi Modal'];

MERGE (n:Concept {id: 'wearable_computer'})
SET     n.name = 'Wearable Computer',
    n.name_kr = 'Wearable Computer',
    n.domain = 'SV',
    n.aliases = ['Wearable Computer'];

MERGE (n:Concept {id: '오감센서'})
SET     n.name = '오감센서',
    n.name_kr = '오감센서',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'multi_modal'})
MERGE (b:Concept {id: 'wearable_computer'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'multi_modal'})
MERGE (b:Concept {id: '오감센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_modal'})
MERGE (b:Document {id: 'SV_211'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multi_modal'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오감센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_212: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_212'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_213: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_213'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_214: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_214'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_215: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_215'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_217: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_217'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_218: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_218'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_219: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_219'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_220: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_220'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_221: Wearable Computer
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_221'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'wearable_computer'})
SET     n.name = 'Wearable Computer',
    n.name_kr = 'Wearable Computer',
    n.domain = 'SV',
    n.aliases = ['Wearable Computer'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'SV';

MERGE (n:Concept {id: '센싱'})
SET     n.name = '센싱',
    n.name_kr = '센싱',
    n.domain = 'SV';

MERGE (n:Concept {id: '통신'})
SET     n.name = '통신',
    n.name_kr = '통신',
    n.domain = 'SV';

MERGE (n:Concept {id: '섬유'})
SET     n.name = '섬유',
    n.name_kr = '섬유',
    n.domain = 'SV';

MERGE (n:Concept {id: '에너지'})
SET     n.name = '에너지',
    n.name_kr = '에너지',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보_입출력_모듈'})
SET     n.name = '정보 입출력 모듈',
    n.name_kr = '정보 입출력 모듈',
    n.domain = 'SV',
    n.definition = '주변환경으로부터의 유동적 정보를 정보 저장소에 입력하거나 조회';

MERGE (n:Concept {id: '정보_필터링_모듈'})
SET     n.name = '정보 필터링 모듈',
    n.name_kr = '정보 필터링 모듈',
    n.domain = 'SV',
    n.definition = '정보를 획득 후 통합, 사용자에게 제공할지를 판단 사용자의 취향, 상황에 맞는 목적, 사용자의 위치 고려';

MERGE (n:Concept {id: '정보_표현_모듈'})
SET     n.name = '정보 표현 모듈',
    n.name_kr = '정보 표현 모듈',
    n.domain = 'SV',
    n.definition = '사용자 상황을 고려하여 문자,그림, 동영상, 소리, 진동, 빛 등의 형태 중 한가지 또는 혼합된 형태 전달';

MERGE (n:Concept {id: '명령_전달_모듈'})
SET     n.name = '명령 전달 모듈',
    n.name_kr = '명령 전달 모듈',
    n.domain = 'SV',
    n.definition = '사용자가 웨어러블 컴퓨터에게 명령이나 정보를 전달';

MERGE (n:Concept {id: '응용분야'})
SET     n.name = '응용분야',
    n.name_kr = '응용분야',
    n.domain = 'SV';

MERGE (n:Concept {id: '내_용'})
SET     n.name = '내 용',
    n.name_kr = '내 용',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: 'wearable_computer'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '센싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '통신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '섬유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '에너지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '정보_입출력_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '정보_필터링_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '정보_표현_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '명령_전달_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '응용분야'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '응용분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Document {id: 'SV_221'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wearable_computer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센싱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '섬유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에너지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_입출력_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_필터링_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_표현_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령_전달_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용분야'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내_용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_225: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_225'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_226: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_226'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_227: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_227'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_228: SoC(System On Chip)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_228'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'system_on_chip'})
SET     n.name = 'System On Chip',
    n.name_kr = 'SoC',
    n.domain = 'SV',
    n.aliases = ['System On Chip', 'SoC'];

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: 'soc'})
SET     n.name = 'SoC',
    n.name_kr = 'SoC',
    n.domain = 'SV',
    n.aliases = ['SoC'];

MERGE (n:Concept {id: 'pcb'})
SET     n.name = 'PCB',
    n.name_kr = 'PCB',
    n.domain = 'SV',
    n.aliases = ['PCB'];

MERGE (n:Concept {id: '반도체'})
SET     n.name = '반도체',
    n.name_kr = '반도체',
    n.domain = 'SV';

MERGE (n:Concept {id: '저전력'})
SET     n.name = '저전력',
    n.name_kr = '저전력',
    n.domain = 'SV';

MERGE (n:Concept {id: '고성능'})
SET     n.name = '고성능',
    n.name_kr = '고성능',
    n.domain = 'SV';

MERGE (n:Concept {id: '고비용'})
SET     n.name = '고비용',
    n.name_kr = '고비용',
    n.domain = 'SV';

MERGE (n:Concept {id: '다기능'})
SET     n.name = '다기능',
    n.name_kr = '다기능',
    n.domain = 'SV';

MERGE (n:Concept {id: 'on_chip_bus'})
SET     n.name = 'On Chip Bus',
    n.name_kr = 'On Chip Bus',
    n.domain = 'SV',
    n.aliases = ['On Chip Bus'];

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SiP',
    n.name_kr = 'SiP',
    n.domain = 'SV',
    n.aliases = ['SiP'];

MERGE (n:Concept {id: 'sob'})
SET     n.name = 'SoB',
    n.name_kr = 'SoB',
    n.domain = 'SV',
    n.aliases = ['SoB'];

MERGE (n:Concept {id: 'sop'})
SET     n.name = 'SoP',
    n.name_kr = 'SoP',
    n.domain = 'SV',
    n.definition = '박막형태의 수동/능동소자 집적',
    n.aliases = ['SoP'];

MERGE (n:Concept {id: 'sis'})
SET     n.name = 'SiS',
    n.name_kr = 'SiS',
    n.domain = 'SV',
    n.definition = '기존 소자를 이용한 SoC',
    n.aliases = ['SiS'];

// --- 관계 ---

MERGE (a:Concept {id: 'soc'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'pcb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '반도체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '저전력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '고성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '고비용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '다기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'on_chip_bus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soc'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'soc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sob'})
MERGE (b:Concept {id: 'soc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'sob'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'soc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'sop'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'sis'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'soc'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'soc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Document {id: 'SV_228'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pcb'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반도체'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고성능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고비용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_chip_bus'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sob'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sop'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sis'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_229.1: MEMS(Micro Electro Mechanical Systems)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_229.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'micro_electro_mechanical_systems'})
SET     n.name = 'Micro Electro Mechanical Systems',
    n.name_kr = 'MEMS',
    n.domain = 'SV',
    n.aliases = ['Micro Electro Mechanical Systems', 'MEMS'];

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mems'})
SET     n.name = 'MEMS',
    n.name_kr = 'MEMS',
    n.domain = 'SV',
    n.aliases = ['MEMS'];

MERGE (n:Concept {id: '마이크로미터'})
SET     n.name = '마이크로미터',
    n.name_kr = '마이크로미터',
    n.domain = 'SV';

MERGE (n:Concept {id: '미세전자기계'})
SET     n.name = '미세전자기계',
    n.name_kr = '미세전자기계',
    n.domain = 'SV';

MERGE (n:Concept {id: '경박단소'})
SET     n.name = '경박단소',
    n.name_kr = '경박단소',
    n.domain = 'SV';

MERGE (n:Concept {id: '소형화'})
SET     n.name = '소형화',
    n.name_kr = '소형화',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'mems'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Concept {id: '마이크로미터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Concept {id: '미세전자기계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Concept {id: '경박단소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Concept {id: '소형화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Document {id: 'SV_229.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'micro_electro_mechanical_systems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이크로미터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미세전자기계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경박단소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소형화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_229.2: 스마트 더스트(Smart Dust)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_229.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'smart_dust'})
SET     n.name = 'Smart Dust',
    n.name_kr = '스마트 더스트',
    n.domain = 'SV',
    n.aliases = ['Smart Dust', '스마트 더스트'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'mems'})
SET     n.name = 'MEMS',
    n.name_kr = 'MEMS',
    n.domain = 'SV',
    n.aliases = ['MEMS'];

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'SV',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: 'sensor_node_mcu'})
SET     n.name = 'Sensor node MCU',
    n.name_kr = 'Sensor node MCU',
    n.domain = 'SV',
    n.aliases = ['Sensor node MCU'];

MERGE (n:Concept {id: 'adc'})
SET     n.name = 'ADC',
    n.name_kr = 'ADC',
    n.domain = 'SV',
    n.aliases = ['ADC'];

MERGE (n:Concept {id: 'usn'})
SET     n.name = 'USN',
    n.name_kr = 'USN',
    n.domain = 'SV',
    n.aliases = ['USN'];

MERGE (n:Concept {id: 'adhoc'})
SET     n.name = 'Adhoc',
    n.name_kr = 'Adhoc',
    n.domain = 'SV',
    n.aliases = ['Adhoc'];

MERGE (n:Concept {id: '나노센서'})
SET     n.name = '나노센서',
    n.name_kr = '나노센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '압전소자'})
SET     n.name = '압전소자',
    n.name_kr = '압전소자',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율컴퓨팅'})
SET     n.name = '자율컴퓨팅',
    n.name_kr = '자율컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'silicon_mote'})
SET     n.name = 'Silicon Mote',
    n.name_kr = '실리콘 모트',
    n.domain = 'SV',
    n.aliases = ['Silicon Mote', '실리콘 모트'];

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'SV';

MERGE (n:Concept {id: '기능_및_설명'})
SET     n.name = '기능 및 설명',
    n.name_kr = '기능 및 설명',
    n.domain = 'SV';

MERGE (n:Concept {id: '활용_사례'})
SET     n.name = '활용 사례',
    n.name_kr = '활용 사례',
    n.domain = 'SV';

MERGE (n:Concept {id: '세부_기능'})
SET     n.name = '세부 기능',
    n.name_kr = '세부 기능',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'mems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'sensor_node_mcu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'adc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'usn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'adhoc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '나노센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '압전소자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '자율컴퓨팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: 'silicon_mote'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Concept {id: '기능_및_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '기능_및_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활용_사례'})
MERGE (b:Concept {id: '세부_기능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '활용_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Concept {id: '세부_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Document {id: 'SV_229.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smart_dust'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensor_node_mcu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adhoc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '나노센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압전소자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'silicon_mote'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_및_설명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용_사례'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_230.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_230.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_230.2: 로봇 소프트웨어 플랫폼
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_230.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '로봇_소프트웨어_플랫폼'})
SET     n.name = '로봇 소프트웨어 플랫폼',
    n.name_kr = '로봇 소프트웨어 플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '소셜_로봇'})
SET     n.name = '소셜 로봇',
    n.name_kr = '소셜 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '대화로봇'})
SET     n.name = '대화로봇',
    n.name_kr = '대화로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율로봇'})
SET     n.name = '자율로봇',
    n.name_kr = '자율로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '학습로봇'})
SET     n.name = '학습로봇',
    n.name_kr = '학습로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '-음성인식'})
SET     n.name = '-음성인식',
    n.name_kr = '-음성인식',
    n.domain = 'SV';

MERGE (n:Concept {id: '지식추론'})
SET     n.name = '지식추론',
    n.name_kr = '지식추론',
    n.domain = 'SV';

MERGE (n:Concept {id: '연결'})
SET     n.name = '연결',
    n.name_kr = '연결',
    n.domain = 'SV';

MERGE (n:Concept {id: '구동동력'})
SET     n.name = '구동동력',
    n.name_kr = '구동동력',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sw'})
SET     n.name = 'SW',
    n.name_kr = 'SW',
    n.domain = 'SV',
    n.definition = '응용프로그램',
    n.aliases = ['SW'];

MERGE (n:Concept {id: '개발도구'})
SET     n.name = '개발도구',
    n.name_kr = '개발도구',
    n.domain = 'SV',
    n.definition = 'IED, 라이브러리, 디버깅 도구';

MERGE (n:Concept {id: 'sw_컴포넌트'})
SET     n.name = 'SW 컴포넌트',
    n.name_kr = 'SW 컴포넌트',
    n.domain = 'SV',
    n.definition = '재사용 가능한 표준화된 컴포넌트 모듈';

MERGE (n:Concept {id: '미들웨어'})
SET     n.name = '미들웨어',
    n.name_kr = '미들웨어',
    n.domain = 'SV',
    n.definition = '다양한 운영체제를 통합하여 표준화하여 제공';

MERGE (n:Concept {id: '운영체제'})
SET     n.name = '운영체제',
    n.name_kr = '운영체제',
    n.domain = 'SV',
    n.definition = '각 로봇HW에 특화된 운영체제의 집합';

MERGE (n:Concept {id: '디바이스_드라이버'})
SET     n.name = '디바이스 드라이버',
    n.name_kr = '디바이스 드라이버',
    n.domain = 'SV',
    n.definition = '하드웨어 추상화 계층(HAL)';

MERGE (n:Concept {id: 'hw'})
SET     n.name = 'HW',
    n.name_kr = 'HW',
    n.domain = 'SV',
    n.definition = '서브모듈',
    n.aliases = ['HW'];

MERGE (n:Concept {id: '단위모듈'})
SET     n.name = '단위모듈',
    n.name_kr = '단위모듈',
    n.domain = 'SV',
    n.definition = '기계/전기적 단위 모듈 (로봇 팔, 모터, 센서, 구동기, 통신모듈)';

MERGE (n:Concept {id: '주요특징'})
SET     n.name = '주요특징',
    n.name_kr = '주요특징',
    n.domain = 'SV';

MERGE (n:Concept {id: '비고'})
SET     n.name = '비고',
    n.name_kr = '비고',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '대화로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '자율로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '학습로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '-음성인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '지식추론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '구동동력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: 'sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '개발도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: 'sw_컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '미들웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '운영체제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '디바이스_드라이버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: 'hw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '단위모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요특징'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '주요특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Document {id: 'SV_230.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '로봇_소프트웨어_플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '-음성인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식추론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구동동력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발도구'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_컴포넌트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미들웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영체제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디바이스_드라이버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단위모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요특징'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비고'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_230.3: 소셜 로봇
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_230.3'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '소셜_로봇'})
SET     n.name = '소셜 로봇',
    n.name_kr = '소셜 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '대화로봇'})
SET     n.name = '대화로봇',
    n.name_kr = '대화로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율로봇'})
SET     n.name = '자율로봇',
    n.name_kr = '자율로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '학습로봇'})
SET     n.name = '학습로봇',
    n.name_kr = '학습로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '-음성인식'})
SET     n.name = '-음성인식',
    n.name_kr = '-음성인식',
    n.domain = 'SV';

MERGE (n:Concept {id: '지식추론'})
SET     n.name = '지식추론',
    n.name_kr = '지식추론',
    n.domain = 'SV';

MERGE (n:Concept {id: '연결'})
SET     n.name = '연결',
    n.name_kr = '연결',
    n.domain = 'SV';

MERGE (n:Concept {id: '구동동력'})
SET     n.name = '구동동력',
    n.name_kr = '구동동력',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '대화로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '자율로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '학습로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '-음성인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '지식추론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Concept {id: '구동동력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Document {id: 'SV_230.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소셜_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '-음성인식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식추론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구동동력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_231.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_231.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_231.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_231.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_233.1: 지능형 로봇(Intelligence Robot)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_233.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'intelligence_robot'})
SET     n.name = 'Intelligence Robot',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV',
    n.aliases = ['Intelligence Robot', '지능형 로봇'];

MERGE (n:Concept {id: 'sensing'})
SET     n.name = 'Sensing',
    n.name_kr = '인식',
    n.domain = 'SV',
    n.aliases = ['Sensing', '인식'];

MERGE (n:Concept {id: 'think'})
SET     n.name = 'Think',
    n.name_kr = '판단',
    n.domain = 'SV',
    n.aliases = ['Think', '판단'];

MERGE (n:Concept {id: 'act'})
SET     n.name = 'Act',
    n.name_kr = '동작',
    n.domain = 'SV',
    n.aliases = ['Act', '동작'];

MERGE (n:Concept {id: '스마트_그리퍼'})
SET     n.name = '스마트 그리퍼',
    n.name_kr = '스마트 그리퍼',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율주행'})
SET     n.name = '자율주행',
    n.name_kr = '자율주행',
    n.domain = 'SV';

MERGE (n:Concept {id: '센서기술'})
SET     n.name = '센서기술',
    n.name_kr = '센서기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터랙티브'})
SET     n.name = '인터랙티브',
    n.name_kr = '인터랙티브',
    n.domain = 'SV';

MERGE (n:Concept {id: '인공지능_자율판단'})
SET     n.name = '인공지능 자율판단',
    n.name_kr = '인공지능 자율판단',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cps'})
SET     n.name = 'CPS',
    n.name_kr = '사이버물리시스템',
    n.domain = 'SV',
    n.aliases = ['CPS', '사이버물리시스템'];

MERGE (n:Concept {id: '로봇_개발/실증/보급'})
SET     n.name = '로봇 개발/실증/보급',
    n.name_kr = '로봇 개발/실증/보급',
    n.domain = 'SV';

MERGE (n:Concept {id: '저해요소'})
SET     n.name = '저해요소',
    n.name_kr = '저해요소',
    n.domain = 'SV';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: 'intelligence_robot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: 'sensing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: 'think'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: 'act'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '스마트_그리퍼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '자율주행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '센서기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '인터랙티브'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '인공지능_자율판단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: 'cps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '로봇_개발/실증/보급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '저해요소'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '저해요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Document {id: 'SV_233.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'intelligence_robot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'think'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'act'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_그리퍼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율주행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터랙티브'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능_자율판단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cps'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로봇_개발/실증/보급'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저해요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_233.2: 인공감성지능(Artificial Emotional Intelligence)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_233.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'artificial_emotional_intelligence'})
SET     n.name = 'Artificial Emotional Intelligence',
    n.name_kr = '인공감성지능',
    n.domain = 'SV',
    n.aliases = ['Artificial Emotional Intelligence', '인공감성지능'];

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '감성지능+인공지능'})
SET     n.name = '감성지능+인공지능',
    n.name_kr = '감성지능+인공지능',
    n.domain = 'SV';

MERGE (n:Concept {id: '스스로_감정_보유'})
SET     n.name = '스스로 감정 보유',
    n.name_kr = '스스로 감정 보유',
    n.domain = 'SV';

MERGE (n:Concept {id: '감성인식/감성생성/감성증강_기술'})
SET     n.name = '감성인식/감성생성/감성증강 기술',
    n.name_kr = '감성인식/감성생성/감성증강 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '세부_기술'})
SET     n.name = '세부 기술',
    n.name_kr = '세부 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '감성지능+인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '스스로_감정_보유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '감성인식/감성생성/감성증강_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_기술'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '세부_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_기술'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '세부_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Document {id: 'SV_233.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'artificial_emotional_intelligence'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감성지능+인공지능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스스로_감정_보유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감성인식/감성생성/감성증강_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_235.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_235.1'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 220개
// 관계: 463개
// ================================================================