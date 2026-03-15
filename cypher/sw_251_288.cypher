// ================================================================
// SW 도메인 (SW_251 ~ SW_288) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_220.1: OSS 거버넌스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_220.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'oss_거버넌스'})
SET     n.name = 'OSS 거버넌스',
    n.name_kr = 'OSS 거버넌스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'oss_foss'})
SET     n.name = 'OSS/FOSS',
    n.name_kr = 'OSS/FOSS',
    n.domain = 'SW',
    n.aliases = ['OSS/FOSS'];

MERGE (n:Concept {id: '라이센스_양립성'})
SET     n.name = '라이센스 양립성',
    n.name_kr = '라이센스 양립성',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'oss_거버넌스'})
MERGE (b:Concept {id: 'oss_foss'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'oss_거버넌스'})
MERGE (b:Concept {id: '라이센스_양립성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_거버넌스'})
MERGE (b:Document {id: 'SW_220.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'oss_거버넌스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oss_foss'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이센스_양립성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_220.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_220.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_220.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_220.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_221.1: OSHW
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_221.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'SW',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: 'oss_foss'})
SET     n.name = 'OSS/FOSS',
    n.name_kr = 'OSS/FOSS',
    n.domain = 'SW',
    n.aliases = ['OSS/FOSS'];

MERGE (n:Concept {id: '가격도_저렴'})
SET     n.name = '가격도 저렴',
    n.name_kr = '가격도 저렴',
    n.domain = 'SW';

MERGE (n:Concept {id: '직접_프로그래밍_가능'})
SET     n.name = '직접 프로그래밍 가능',
    n.name_kr = '직접 프로그래밍 가능',
    n.domain = 'SW';

MERGE (n:Concept {id: '보조_디자인_파일'})
SET     n.name = '보조 디자인 파일',
    n.name_kr = '보조 디자인 파일',
    n.domain = 'SW';

MERGE (n:Concept {id: '재료_명세서'})
SET     n.name = '재료 명세서',
    n.name_kr = '재료 명세서',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_및_펌웨어'})
SET     n.name = 'SW 및 펌웨어',
    n.name_kr = 'SW 및 펌웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: '사진'})
SET     n.name = '사진',
    n.name_kr = '사진',
    n.domain = 'SW';

MERGE (n:Concept {id: '설명서'})
SET     n.name = '설명서',
    n.name_kr = '설명서',
    n.domain = 'SW';

MERGE (n:Concept {id: '원본_디자인_파일'})
SET     n.name = '원본 디자인 파일',
    n.name_kr = '원본 디자인 파일',
    n.domain = 'SW',
    n.definition = 'OSH 프로젝트의 핵심 요소 누구든지 변경 가능한 형식으로 저장된 CAD 등 HW 설계에 대한 파일';

MERGE (n:Concept {id: '하드웨어_디자인'})
SET     n.name = '하드웨어 디자인',
    n.name_kr = '하드웨어 디자인',
    n.domain = 'SW',
    n.definition = 'OSH 제품을 기획하는 단계로 무료 또는 OSS 툴을 활용해 OSH 디자인을 구성하도록 권장 유료 OSS의 활용이 불가피한 경우에는 최대한 낮은 비용의 패키지 SW를 이용';

MERGE (n:Concept {id: '디자인_파일의_웹_게시'})
SET     n.name = '디자인 파일의 웹 게시',
    n.name_kr = '디자인 파일의 웹 게시',
    n.domain = 'SW',
    n.definition = '관련 디자인 파일은 압축된 형태로 게시 깃트허브(GitHub), 구글 코드(Google Code)와 같은 온라인 소스코드 저장소를 활용하여 타인들이 변경한 디자인 파일 등을 함께 공유하고 변화를 트래킹(tracking)하는 방식이 가장 많이 사용';

MERGE (n:Concept {id: '디자인에_대한_라이선싱'})
SET     n.name = '디자인에 대한 라이선싱',
    n.name_kr = '디자인에 대한 라이선싱',
    n.domain = 'SW',
    n.definition = 'OSH에서 가장 중요한 단계 프로젝트 추진 주체는 OSH 라이선스를 디자인 파일이나 이에 수반되는 문서들에만 부여 받으며, 이에 대한 복제 및 수정 변경을 허용한다는 문구를 반드시 명시 라이선스는 모든 파생물에 대한 공유와 무료 배포를 요구하는 \'카피레프트 라이선스(Copyleft Licenses)\'와 파생물에 대한 소스코드나 디자인 공개를 강제하지 않는';

MERGE (n:Concept {id: 'osh_유통'})
SET     n.name = 'OSH 유통',
    n.name_kr = 'OSH 유통',
    n.domain = 'SW',
    n.definition = 'OSH 유통 시에는 디자인 파일 링크를 제공하며, HW의 공개일이나 버전을 명시 제품의 일부만 OSH일 경우에는 해당 부분에 로고를 새기는 등의 방식을 통해 이를 명확히 알림';

MERGE (n:Concept {id: 'osh_구축_완료'})
SET     n.name = 'OSH 구축 완료',
    n.name_kr = 'OSH 구축 완료',
    n.domain = 'SW',
    n.definition = 'OSH로부터 파생된 제품이나 트레이드 마크(Trade mark) 등을 존중하고, OSH 기반 제품 개발 참여자들이 기존 디자인에 대한 수정 및 개선 사항 등의 아이디어를 본 디자인 제작자와 공유하는 등의 커뮤니케이션을 통해 건전하고 발전적인 OSH 문화를 정착시켜 나가는 활동';

MERGE (n:Concept {id: 'oss'})
SET     n.name = 'OSS',
    n.name_kr = 'OSS',
    n.domain = 'SW',
    n.aliases = ['OSS'];

MERGE (n:Concept {id: 'osh'})
SET     n.name = 'OSH',
    n.name_kr = 'OSH',
    n.domain = 'SW',
    n.aliases = ['OSH'];

MERGE (n:Concept {id: 'uno'})
SET     n.name = 'UNO',
    n.name_kr = '아두이노',
    n.domain = 'SW',
    n.aliases = ['UNO', '아두이노'];

MERGE (n:Concept {id: 'raspberry_pi'})
SET     n.name = '라즈베리파이',
    n.name_kr = '라즈베리파이',
    n.domain = 'SW';

MERGE (n:Concept {id: '비글본블랙'})
SET     n.name = '비글본블랙',
    n.name_kr = '비글본블랙',
    n.domain = 'SW';

MERGE (n:Concept {id: 'udoo'})
SET     n.name = 'UDOO',
    n.name_kr = '미니 PC 보드, 우두',
    n.domain = 'SW',
    n.definition = '안드로이드, 리눅스 OS를 구동할 수 있는 아두이노 기반 미니 PC 보드 모니터, 키보드, 카메라 등 다양한 주변 기기를 연결해 사용',
    n.aliases = ['UDOO', '미니 PC 보드, 우두'];

MERGE (n:Concept {id: '3d_로보틱스_무인기'})
SET     n.name = '3D 로보틱스 무인기',
    n.name_kr = '3D 로보틱스 무인기',
    n.domain = 'SW',
    n.definition = '3D 로보틱스에서 무인기 제작도면을 공개, 아이디어 공유, 성능 향상 등 협업 미국 3D로보틱스사의 무인기';

MERGE (n:Concept {id: '라즈베리파이_기반_슈퍼_컴퓨터'})
SET     n.name = '라즈베리파이 기반 슈퍼 컴퓨터',
    n.name_kr = '라즈베리파이 기반 슈퍼 컴퓨터',
    n.domain = 'SW',
    n.definition = '레고블럭, 라즈베리파이 기반 슈퍼 컴퓨터인 이디스 파이 저가 제작비(약 436만원) 소요';

MERGE (n:Concept {id: '식물용_센서_보태니콜스'})
SET     n.name = '식물용 센서 보태니콜스',
    n.name_kr = '식물용 센서 보태니콜스',
    n.domain = 'SW',
    n.definition = 'Botanicalls, 자동 식물 습도 관리 아두이노 + 습식 센서 + 무선이더넷(알림 전송용)';

MERGE (n:Technology {id: '스마트온도조절기'})
SET     n.name = '스마트온도조절기',
    n.name_kr = '스마트온도조절기',
    n.domain = 'SW',
    n.definition = '온도 감지 센서, 아두이노, Wifi 모듈 등을 이용한 IoT';

MERGE (n:Concept {id: '테트리스_게임기_아두보이'})
SET     n.name = '테트리스 게임기 아두보이',
    n.name_kr = '테트리스 게임기 아두보이',
    n.domain = 'SW',
    n.definition = '명함크기의 아두이노 보드 기반 테트리스 게임 사용화를 위한 크라우드 펀딩중';

MERGE (n:Concept {id: '닌자블록스'})
SET     n.name = '닌자블록스',
    n.name_kr = '닌자블록스',
    n.domain = 'SW',
    n.definition = '비글본블랙 기반의 소형 홈 자동화 시스템 온도, 동작 센서, 창문 및 도어 센서 등 다양한 센서와 액추에이터와 함께 사용';

MERGE (n:Concept {id: '비글본_비어'})
SET     n.name = '비글본 비어',
    n.name_kr = '비글본 비어',
    n.domain = 'SW',
    n.definition = '비글본 블래과 서버간의 연동 맥주의 온도 측정, 조절용 장치';

// --- 관계 ---

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'oss_foss'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '가격도_저렴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '직접_프로그래밍_가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '보조_디자인_파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '재료_명세서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'sw_및_펌웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '사진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '설명서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '원본_디자인_파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '하드웨어_디자인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '디자인_파일의_웹_게시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '디자인에_대한_라이선싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'osh_유통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'osh_구축_완료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss'})
MERGE (b:Concept {id: 'osh'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'oss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'osh'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uno'})
MERGE (b:Concept {id: 'raspberry_pi'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'uno'})
MERGE (b:Concept {id: '비글본블랙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'uno'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Concept {id: '비글본블랙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'raspberry_pi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '비글본블랙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'udoo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '3d_로보틱스_무인기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '라즈베리파이_기반_슈퍼_컴퓨터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '식물용_센서_보태니콜스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Technology {id: '스마트온도조절기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '테트리스_게임기_아두보이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '닌자블록스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '비글본_비어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Document {id: 'SW_221.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oss_foss'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가격도_저렴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접_프로그래밍_가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조_디자인_파일'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재료_명세서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_및_펌웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설명서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원본_디자인_파일'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어_디자인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_파일의_웹_게시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인에_대한_라이선싱'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osh_유통'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osh_구축_완료'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oss'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osh'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uno'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비글본블랙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'udoo'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_로보틱스_무인기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라즈베리파이_기반_슈퍼_컴퓨터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식물용_센서_보태니콜스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '스마트온도조절기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테트리스_게임기_아두보이'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '닌자블록스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비글본_비어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_221.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_221.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_222: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_222'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_223: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_223'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_224.1: Man/Month
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_224.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'man_month'})
SET     n.name = 'Man/Month',
    n.name_kr = 'Man/Month',
    n.domain = 'SW',
    n.aliases = ['Man/Month'];

// --- 관계 ---

MERGE (a:Concept {id: 'man_month'})
MERGE (b:Concept {id: 'man_month'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'man_month'})
MERGE (b:Document {id: 'SW_224.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'man_month'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_224.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_224.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_224.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_224.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_225.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_225.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_225.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_225.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_226: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_226'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_227: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_227'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_228: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_228'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_230: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_230'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_232.1: 하드웨어 규모산정 3가지 방법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_232.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '하드웨어_규모산정_3가지_방법'})
SET     n.name = '하드웨어 규모산정 3가지 방법',
    n.name_kr = '하드웨어 규모산정 3가지 방법',
    n.domain = 'SW';

MERGE (n:Concept {id: '하드웨어_규모산정'})
SET     n.name = '하드웨어 규모산정',
    n.name_kr = '하드웨어 규모산정',
    n.domain = 'SW';

MERGE (n:Concept {id: '수식계산법'})
SET     n.name = '수식계산법',
    n.name_kr = '수식계산법',
    n.domain = 'SW';

MERGE (n:Concept {id: '참조법'})
SET     n.name = '참조법',
    n.name_kr = '참조법',
    n.domain = 'SW';

MERGE (n:Concept {id: '시뮬레이션법'})
SET     n.name = '시뮬레이션법',
    n.name_kr = '시뮬레이션법',
    n.domain = 'SW';

MERGE (n:Concept {id: '용량_산정식'})
SET     n.name = '용량 산정식',
    n.name_kr = '용량 산정식',
    n.domain = 'SW';

MERGE (n:Concept {id: '기초자료_조사항목'})
SET     n.name = '기초자료 조사항목',
    n.name_kr = '기초자료 조사항목',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '하드웨어_규모산정'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '수식계산법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '참조법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '시뮬레이션법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '용량_산정식'})
MERGE (b:Concept {id: '기초자료_조사항목'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '용량_산정식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Concept {id: '기초자료_조사항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Document {id: 'SW_232.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정_3가지_방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어_규모산정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식계산법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참조법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시뮬레이션법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용량_산정식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기초자료_조사항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_232.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_232.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_232.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_232.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_232.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_232.4'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_232.5: SW사업정보저장소
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_232.5'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw사업정보저장소'})
SET     n.name = 'SW사업정보저장소',
    n.name_kr = 'SW사업정보저장소',
    n.domain = 'SW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '사업대가_추정'})
SET     n.name = '사업대가 추정',
    n.name_kr = '사업대가 추정',
    n.domain = 'SW';

MERGE (n:Concept {id: '적정사업기간_추정'})
SET     n.name = '적정사업기간 추정',
    n.name_kr = '적정사업기간 추정',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보통계'})
SET     n.name = '정보통계',
    n.name_kr = '정보통계',
    n.domain = 'SW';

MERGE (n:Concept {id: '법/제도적_관점'})
SET     n.name = '법/제도적 관점',
    n.name_kr = '법/제도적 관점',
    n.domain = 'SW',
    n.definition = '객관적 근거제공 - 정량적 산정가능';

MERGE (n:Concept {id: '공공_발주자_관점'})
SET     n.name = '공공 발주자 관점',
    n.name_kr = '공공 발주자 관점',
    n.domain = 'SW',
    n.definition = '객관성 확보가능 - 요구사항 도출';

MERGE (n:Concept {id: '정책/관리_관점'})
SET     n.name = '정책/관리 관점',
    n.name_kr = '정책/관리 관점',
    n.domain = 'SW',
    n.definition = 'SW산업 발전 - 성과점검 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '사업대가_추정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '적정사업기간_추정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '정보통계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '법/제도적_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '공공_발주자_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Concept {id: '정책/관리_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Document {id: 'SW_232.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw사업정보저장소'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업대가_추정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적정사업기간_추정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보통계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법/제도적_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공_발주자_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책/관리_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_234: Software Platform
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_234'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'software_platform'})
SET     n.name = 'Software Platform',
    n.name_kr = 'Software Platform',
    n.domain = 'SW',
    n.aliases = ['Software Platform'];

MERGE (n:Concept {id: '국내_sw_육성_방안'})
SET     n.name = '국내 SW 육성 방안',
    n.name_kr = '국내 SW 육성 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '통합'})
SET     n.name = '통합',
    n.name_kr = '통합',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발'})
SET     n.name = '개발',
    n.name_kr = '개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '실행'})
SET     n.name = '실행',
    n.name_kr = '실행',
    n.domain = 'SW';

MERGE (n:Concept {id: '유통'})
SET     n.name = '유통',
    n.name_kr = '유통',
    n.domain = 'SW';

MERGE (n:Concept {id: '구글'})
SET     n.name = '구글',
    n.name_kr = '구글',
    n.domain = 'SW';

MERGE (n:Concept {id: '카카오톡'})
SET     n.name = '카카오톡',
    n.name_kr = '카카오톡',
    n.domain = 'SW';

MERGE (n:Concept {id: '페이스북'})
SET     n.name = '페이스북',
    n.name_kr = '페이스북',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '유통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '구글'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '카카오톡'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Concept {id: '페이스북'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Document {id: 'SW_234'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'software_platform'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내_sw_육성_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유통'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구글'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카카오톡'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이스북'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_235: SW개발 생산성 향상방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_235'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw개발_생산성_향상방안'})
SET     n.name = 'SW개발 생산성 향상방안',
    n.name_kr = 'SW개발 생산성 향상방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '국내_sw_육성_방안'})
SET     n.name = '국내 SW 육성 방안',
    n.name_kr = '국내 SW 육성 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '원격개발센터'})
SET     n.name = '원격개발센터',
    n.name_kr = '원격개발센터',
    n.domain = 'SW';

MERGE (n:Concept {id: '형상관리'})
SET     n.name = '형상관리',
    n.name_kr = '형상관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발프레임워크'})
SET     n.name = '개발프레임워크',
    n.name_kr = '개발프레임워크',
    n.domain = 'SW';

MERGE (n:Concept {id: '자동화도구'})
SET     n.name = '자동화도구',
    n.name_kr = '자동화도구',
    n.domain = 'SW';

MERGE (n:Concept {id: '기준선'})
SET     n.name = '기준선',
    n.name_kr = '기준선',
    n.domain = 'SW';

MERGE (n:Concept {id: '형상관리_항목'})
SET     n.name = '형상관리 항목',
    n.name_kr = '형상관리 항목',
    n.domain = 'SW';

MERGE (n:Concept {id: '안전성'})
SET     n.name = '안전성',
    n.name_kr = '안전성',
    n.domain = 'SW',
    n.definition = '실제 운영/서비스에 기반한 자동화 방안 구축 - 외부 요인을 차단한 테스트 계획 수립';

MERGE (n:Concept {id: '전문성'})
SET     n.name = '전문성',
    n.name_kr = '전문성',
    n.domain = 'SW',
    n.definition = '도메인 전문가에 의한 전문화된 테스트 방법 - 테스트 표준화를 통한 효율적인 방안 구축';

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'SW',
    n.definition = '효율적인 테스트 자동화 운영 방안 구축 - 유지보수 업그레이드에도 동일한 테스트 방안 적용';

MERGE (n:Concept {id: '비용_절감'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'SW',
    n.definition = '개발자의 단순 노동 감소 - 오픈 소스 자동화 도구를 이용한 비용 절감';

// --- 관계 ---

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '국내_sw_육성_방안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '원격개발센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '형상관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '개발프레임워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '자동화도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기준선'})
MERGE (b:Concept {id: '형상관리_항목'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '기준선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '형상관리_항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '안전성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '전문성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Concept {id: '비용_절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Document {id: 'SW_235'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw개발_생산성_향상방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내_sw_육성_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격개발센터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형상관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발프레임워크'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화도구'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기준선'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형상관리_항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전문성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_절감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_237.1: SW 중심사회
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_237.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_중심사회'})
SET     n.name = 'SW 중심사회',
    n.name_kr = 'SW 중심사회',
    n.domain = 'SW';

MERGE (n:Concept {id: '국내_sw_육성_방안'})
SET     n.name = '국내 SW 육성 방안',
    n.name_kr = '국내 SW 육성 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '혁신'})
SET     n.name = '혁신',
    n.name_kr = '혁신',
    n.domain = 'SW';

MERGE (n:Concept {id: '성장'})
SET     n.name = '성장',
    n.name_kr = '성장',
    n.domain = 'SW';

MERGE (n:Concept {id: '가치_창출'})
SET     n.name = '가치 창출',
    n.name_kr = '가치 창출',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_중심사회'})
MERGE (b:Concept {id: '혁신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_중심사회'})
MERGE (b:Concept {id: '성장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_중심사회'})
MERGE (b:Concept {id: '가치_창출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_중심사회'})
MERGE (b:Document {id: 'SW_237.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_중심사회'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내_sw_육성_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혁신'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성장'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가치_창출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_237.2: SWEBOK (Software Engineering Body Of Knowledge)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_237.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'software_engineering_body_of_knowledge'})
SET     n.name = 'Software Engineering Body Of Knowledge',
    n.name_kr = 'SWEBOK',
    n.domain = 'SW',
    n.aliases = ['Software Engineering Body Of Knowledge', 'SWEBOK'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '10개_지식_영역:_sw요구사항'})
SET     n.name = '10개 지식 영역: SW요구사항',
    n.name_kr = '10개 지식 영역: SW요구사항',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_설계'})
SET     n.name = 'SW 설계',
    n.name_kr = 'SW 설계',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw개발'})
SET     n.name = 'SW개발',
    n.name_kr = 'SW개발',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_테스트'})
SET     n.name = 'SW 테스트',
    n.name_kr = 'SW 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw유지보수'})
SET     n.name = 'SW유지보수',
    n.name_kr = 'SW유지보수',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw형상관리'})
SET     n.name = 'SW형상관리',
    n.name_kr = 'SW형상관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_공학관리'})
SET     n.name = 'SW 공학관리',
    n.name_kr = 'SW 공학관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_공학_프로세스'})
SET     n.name = 'SW 공학 프로세스',
    n.name_kr = 'SW 공학 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw모델/_방법론'})
SET     n.name = 'SW모델/ 방법론',
    n.name_kr = 'SW모델/ 방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw품질'})
SET     n.name = 'SW품질',
    n.name_kr = 'SW품질',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_경제학'})
SET     n.name = 'SW 경제학',
    n.name_kr = 'SW 경제학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_컴퓨팅_기반'})
SET     n.name = 'SW 컴퓨팅 기반',
    n.name_kr = 'SW 컴퓨팅 기반',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw수학적_기반'})
SET     n.name = 'SW수학적 기반',
    n.name_kr = 'SW수학적 기반',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학적_기반'})
SET     n.name = 'SW공학적 기반',
    n.name_kr = 'SW공학적 기반',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: '10개_지식_영역:_sw요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw유지보수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw형상관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_공학관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_공학_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw모델/_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_경제학'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw_컴퓨팅_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw수학적_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Concept {id: 'sw공학적_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Document {id: 'SW_237.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'software_engineering_body_of_knowledge'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10개_지식_영역:_sw요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw형상관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_공학관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_공학_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw모델/_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw품질'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_경제학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_컴퓨팅_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw수학적_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학적_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_237.3: PBL (Project Based Learning), EPL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_237.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'project_based_learning'})
SET     n.name = 'PBL (Project Based Learning), EPL',
    n.name_kr = 'PBL (Project Based Learning), EPL',
    n.domain = 'SW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: 'pbl'})
SET     n.name = 'PBL',
    n.name_kr = 'PBL',
    n.domain = 'SW',
    n.aliases = ['PBL'];

MERGE (n:Concept {id: '교육도구:_scratch'})
SET     n.name = '교육도구: Scratch',
    n.name_kr = '교육도구: Scratch',
    n.domain = 'SW';

MERGE (n:Concept {id: 'blocky'})
SET     n.name = 'Blocky',
    n.name_kr = 'Blocky',
    n.domain = 'SW',
    n.aliases = ['Blocky'];

MERGE (n:Concept {id: 'alice'})
SET     n.name = 'Alice',
    n.name_kr = 'Alice',
    n.domain = 'SW',
    n.aliases = ['Alice'];

MERGE (n:Concept {id: 'entry'})
SET     n.name = 'Entry',
    n.name_kr = 'Entry',
    n.domain = 'SW',
    n.aliases = ['Entry'];

MERGE (n:Concept {id: 'kodu'})
SET     n.name = 'Kodu',
    n.name_kr = 'Kodu',
    n.domain = 'SW',
    n.aliases = ['Kodu'];

MERGE (n:Concept {id: 'logo'})
SET     n.name = 'Logo',
    n.name_kr = 'Logo',
    n.domain = 'SW',
    n.aliases = ['Logo'];

MERGE (n:Concept {id: 'app_inventor'})
SET     n.name = 'App Inventor',
    n.name_kr = 'App Inventor',
    n.domain = 'SW',
    n.aliases = ['App Inventor'];

MERGE (n:Concept {id: '국외'})
SET     n.name = '국외',
    n.name_kr = '국외',
    n.domain = 'SW',
    n.definition = '코드닷오알지 (code.org)';

MERGE (n:Concept {id: 'codecademy'})
SET     n.name = 'Codecademy',
    n.name_kr = '코드카데미',
    n.domain = 'SW',
    n.definition = '입문자 대상으로 파이썬, PHP, 자바스크립트, 루비, HTML, CSS 등과 같은 일반 프로그래밍 언어 교육 제공 -웹사이트에서 직접 코드를 작성해 결과를 바로 확인하고, 단계마다 자세한 설명과 힌트 제공',
    n.aliases = ['Codecademy', '코드카데미'];

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'SW',
    n.definition = '소프트웨어야 놀자';

MERGE (n:Concept {id: '주니어sw'})
SET     n.name = '주니어SW',
    n.name_kr = '주니어SW',
    n.domain = 'SW',
    n.definition = '스크래치와 아두이노를 활용한 SW교육과정을 무료제공 -미래창조과학부, 정보통신산업진흥업, 미래인재 연구소에서 공동 개발/운영하는 어린이 대상 SW교육서비스';

// --- 관계 ---

MERGE (a:Concept {id: 'pbl'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: '교육도구:_scratch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'blocky'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'alice'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'entry'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'kodu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'logo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'app_inventor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: '국외'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: 'codecademy'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Concept {id: '주니어sw'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Document {id: 'SW_237.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'project_based_learning'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pbl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육도구:_scratch'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blocky'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alice'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'entry'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kodu'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'logo'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'app_inventor'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'codecademy'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주니어sw'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_239: 난독화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_239'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '난독화'})
SET     n.name = '난독화',
    n.name_kr = '난독화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_저작권_보호'})
SET     n.name = 'SW 저작권 보호',
    n.name_kr = 'SW 저작권 보호',
    n.domain = 'SW';

MERGE (n:Concept {id: '구데집제예'})
SET     n.name = '구데집제예',
    n.name_kr = '구데집제예',
    n.domain = 'SW';

MERGE (n:Concept {id: 'layout_obfuscation'})
SET     n.name = 'layout obfuscation',
    n.name_kr = '구획 난독화',
    n.domain = 'SW',
    n.definition = '프로그램에 큰 영향을 끼치지 않는 세부적인 요소를 변화하거나 제거하여 프로그램 복원에 성공하였더라도 프로그램 내용의 상당 부분을 훼손시켜 복원할 수 있도록 막는 방법',
    n.aliases = ['layout obfuscation', '구획 난독화'];

MERGE (n:Concept {id: 'data_obfuscation'})
SET     n.name = 'data obfuscation',
    n.name_kr = '데이터 난독화',
    n.domain = 'SW',
    n.definition = '데이터를 담을 변수를 나누거나 합치거나 읽기 어렵게 하는 방향의 모든 기술',
    n.aliases = ['data obfuscation', '데이터 난독화'];

MERGE (n:Concept {id: 'aggregation_obfuscation'})
SET     n.name = 'aggregation obfuscation',
    n.name_kr = '집합 난독화',
    n.domain = 'SW',
    n.definition = '순서를 이용해서 코드를 난독화(array transformation) -> 하나의 클래스를 두 개로 분할하여 난독화 (Split a class)->',
    n.aliases = ['aggregation obfuscation', '집합 난독화'];

MERGE (n:Concept {id: 'control_obfuscation'})
SET     n.name = 'Control obfuscation',
    n.name_kr = '제어 난독화',
    n.domain = 'SW',
    n.definition = '제어를 어지럽게 하고, 문장의 묶는 단위를 조절하는 방법',
    n.aliases = ['Control obfuscation', '제어 난독화'];

MERGE (n:Concept {id: 'preventive_obfuscation'})
SET     n.name = 'Preventive obfuscation',
    n.name_kr = '예방 난독화',
    n.domain = 'SW',
    n.definition = '이미 알려진 역 난독화 방법을 알고 그 방법을 봉쇄하는 방법',
    n.aliases = ['Preventive obfuscation', '예방 난독화'];

MERGE (n:Concept {id: 'layout'})
SET     n.name = 'Layout',
    n.name_kr = 'Layout',
    n.domain = 'SW',
    n.aliases = ['Layout'];

MERGE (n:Concept {id: 'data'})
SET     n.name = 'Data',
    n.name_kr = 'Data',
    n.domain = 'SW',
    n.aliases = ['Data'];

MERGE (n:Concept {id: 'control'})
SET     n.name = 'Control',
    n.name_kr = 'Control',
    n.domain = 'SW',
    n.aliases = ['Control'];

MERGE (n:Concept {id: 'preventive'})
SET     n.name = 'Preventive',
    n.name_kr = 'Preventive',
    n.domain = 'SW',
    n.aliases = ['Preventive'];

// --- 관계 ---

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: '구데집제예'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'layout_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'data_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'aggregation_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'control_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'preventive_obfuscation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'layout'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Concept {id: 'preventive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Document {id: 'SW_239'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '난독화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_저작권_보호'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구데집제예'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layout_obfuscation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_obfuscation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aggregation_obfuscation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_obfuscation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preventive_obfuscation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layout'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preventive'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_240: SW Escrow
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_240'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_escrow'})
SET     n.name = 'SW Escrow',
    n.name_kr = 'SW Escrow',
    n.domain = 'SW',
    n.aliases = ['SW Escrow'];

MERGE (n:Concept {id: 'sw_저작권_보호'})
SET     n.name = 'SW 저작권 보호',
    n.name_kr = 'SW 저작권 보호',
    n.domain = 'SW';

MERGE (n:Law {id: '저작권법'})
SET     n.name = '저작권법',
    n.name_kr = '저작권법',
    n.domain = 'SW';

MERGE (n:Concept {id: '제3자간'})
SET     n.name = '제3자간',
    n.name_kr = '제3자간',
    n.domain = 'SW';

MERGE (n:Concept {id: '양자간'})
SET     n.name = '양자간',
    n.name_kr = '양자간',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_escrow'})
MERGE (b:Law {id: '저작권법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_escrow'})
MERGE (b:Concept {id: '제3자간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_escrow'})
MERGE (b:Concept {id: '양자간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_escrow'})
MERGE (b:Document {id: 'SW_240'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_escrow'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_저작권_보호'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '저작권법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제3자간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양자간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_251: 추상클래스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_251'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'abstract_class'})
SET     n.name = 'Abstract Class',
    n.name_kr = '추상클래스',
    n.domain = 'SW',
    n.aliases = ['추상클래스'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'java'})
SET     n.name = 'JAVA',
    n.name_kr = 'JAVA',
    n.domain = 'SW',
    n.aliases = ['JAVA'];

MERGE (n:Concept {id: '상속관계'})
SET     n.name = '상속관계',
    n.name_kr = '상속관계',
    n.domain = 'SW';

MERGE (n:Concept {id: '오버라이딩_필수'})
SET     n.name = '오버라이딩 필수',
    n.name_kr = '오버라이딩 필수',
    n.domain = 'SW';

MERGE (n:Concept {id: '단일_상속'})
SET     n.name = '단일 상속',
    n.name_kr = '단일 상속',
    n.domain = 'SW';

MERGE (n:Concept {id: 'extends로_상속'})
SET     n.name = 'extends로 상속',
    n.name_kr = 'extends로 상속',
    n.domain = 'SW';

MERGE (n:Concept {id: '추상_매서드_포함하는_클래스'})
SET     n.name = '추상 매서드 포함하는 클래스',
    n.name_kr = '추상 매서드 포함하는 클래스',
    n.domain = 'SW';

MERGE (n:Concept {id: '자바_정리'})
SET     n.name = '자바 정리',
    n.name_kr = '자바 정리',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'java'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: 'java'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: '상속관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: '오버라이딩_필수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: '단일_상속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: 'extends로_상속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: '추상_매서드_포함하는_클래스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Concept {id: '자바_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Document {id: 'SW_251'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'java'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상속관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오버라이딩_필수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_상속'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extends로_상속'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추상_매서드_포함하는_클래스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바_정리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_252: 인터페이스(Interface)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_252'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'interface'})
SET     n.name = 'Interface',
    n.name_kr = '인터페이스',
    n.domain = 'SW',
    n.aliases = ['Interface', '인터페이스'];

MERGE (n:Concept {id: '소공'})
SET     n.name = '소공',
    n.name_kr = '소공',
    n.domain = 'SW';

MERGE (n:Concept {id: 'java'})
SET     n.name = 'Java',
    n.name_kr = 'Java',
    n.domain = 'SW',
    n.aliases = ['Java'];

MERGE (n:Concept {id: '구현부와_선언부_분리_개발'})
SET     n.name = '구현부와 선언부 분리 개발',
    n.name_kr = '구현부와 선언부 분리 개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '클래스_연결'})
SET     n.name = '클래스 연결',
    n.name_kr = '클래스 연결',
    n.domain = 'SW';

MERGE (n:Concept {id: 'implements'})
SET     n.name = 'implements',
    n.name_kr = 'implements',
    n.domain = 'SW',
    n.aliases = ['implements'];

MERGE (n:Concept {id: '자바_정리'})
SET     n.name = '자바 정리',
    n.name_kr = '자바 정리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'abstract_class'})
SET     n.name = '추상클래스',
    n.name_kr = '추상클래스',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'java'})
MERGE (b:Concept {id: '소공'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: '구현부와_선언부_분리_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: '클래스_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: 'implements'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: '자바_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: 'abstract_class'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Concept {id: 'abstract_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Document {id: 'SW_252'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소공'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'java'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현부와_선언부_분리_개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클래스_연결'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'implements'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바_정리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'abstract_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_254.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_254.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_254.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_254.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_254.3: 함수형 언어/함수형 프로그래밍
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_254.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '함수형_언어/함수형_프로그래밍'})
SET     n.name = '함수형 언어/함수형 프로그래밍',
    n.name_kr = '함수형 언어/함수형 프로그래밍',
    n.domain = 'SW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '람다_대수_표현'})
SET     n.name = '람다 대수 표현',
    n.name_kr = '람다 대수 표현',
    n.domain = 'SW',
    n.definition = '함수의 정의, 함수 적용, 귀납적 함수 추상화, 수학 연산을 표현하는 형식 체계';

MERGE (n:Concept {id: 'pure_function'})
SET     n.name = 'Pure Function',
    n.name_kr = '순수 함수',
    n.domain = 'SW',
    n.definition = '함수에서 외부의 상태값을 참조하거나 외부의 상태값을 변경하지 않는 성질 - 외부에 전혀 영향을 받지 않도록 작성',
    n.aliases = ['Pure Function', '순수 함수'];

MERGE (n:Concept {id: '비상태,_불변성'})
SET     n.name = 'Stateless, Immutability',
    n.name_kr = '비상태, 불변성',
    n.domain = 'SW',
    n.definition = '함수의 인자로 전달되는 매개 변수를 변경하지 않음(새로운 버전 Object 반환) - No Side Effect',
    n.aliases = ['Stateless, Immutability', '비상태, 불변성'];

MERGE (n:Concept {id: 'first_object'})
SET     n.name = 'First Object',
    n.name_kr = '1급 객체',
    n.domain = 'SW',
    n.definition = '함수를 다른 변수와 동일하게 다루는 언어',
    n.aliases = ['First Object', '1급 객체'];

MERGE (n:Concept {id: 'higher_order_function'})
SET     n.name = 'Higher-order Function',
    n.name_kr = '고계 함수',
    n.domain = 'SW',
    n.definition = '함수를 다루는 함수 - 함수의 인수를 함수로 받을 수 있고 함수를 반환하는 함수',
    n.aliases = ['Higher-order Function', '고계 함수'];

MERGE (n:Concept {id: 'expressions_only'})
SET     n.name = 'Expressions Only',
    n.name_kr = '선언형 함수',
    n.domain = 'SW',
    n.definition = '여러가지 문장 Expression(if, switch, for) 사용 금지',
    n.aliases = ['Expressions Only', '선언형 함수'];

MERGE (n:Concept {id: '함수'})
SET     n.name = '함수',
    n.name_kr = '함수',
    n.domain = 'SW',
    n.definition = '순수 함수(Pure Functions)';

MERGE (n:Concept {id: 'higher_order_functions'})
SET     n.name = 'Higher-order Functions',
    n.name_kr = '고차 함수',
    n.domain = 'SW',
    n.definition = '함수를 다른 함수의 인수로 전달 가능',
    n.aliases = ['Higher-order Functions', '고차 함수'];

MERGE (n:Concept {id: 'recursive_functions'})
SET     n.name = 'Recursive Functions',
    n.name_kr = '재귀 함수',
    n.domain = 'SW',
    n.definition = '자기 자신을 호출하는 함수',
    n.aliases = ['Recursive Functions', '재귀 함수'];

MERGE (n:Concept {id: 'function_composition'})
SET     n.name = 'Function Composition',
    n.name_kr = '함수 조합',
    n.domain = 'SW',
    n.definition = '여러 함수 조합해 하나의 함수 생성',
    n.aliases = ['Function Composition', '함수 조합'];

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'SW',
    n.definition = '불변성(Immutability)';

MERGE (n:Concept {id: '상태와_가변_데이터_회피'})
SET     n.name = '상태와 가변 데이터 회피',
    n.name_kr = '상태와 가변 데이터 회피',
    n.domain = 'SW',
    n.definition = '부작용을 줄이기 위해 가변 데이터 피함';

MERGE (n:Concept {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'SW',
    n.definition = '병렬성(Parallelism)';

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SW',
    n.definition = '테스트 용이성(Testability)';

MERGE (n:Concept {id: '코드'})
SET     n.name = '코드',
    n.name_kr = '코드',
    n.domain = 'SW',
    n.definition = '간결성(Conciseness)';

MERGE (n:Concept {id: 'modularity'})
SET     n.name = 'Modularity',
    n.name_kr = '모듈화',
    n.domain = 'SW',
    n.definition = '재사용 가능하고 유지보수가 용이한 코드',
    n.aliases = ['Modularity', '모듈화'];

MERGE (n:Concept {id: '장/단점'})
SET     n.name = '장/단점',
    n.name_kr = '장/단점',
    n.domain = 'SW';

MERGE (n:Concept {id: '핵심_사항'})
SET     n.name = '핵심 사항',
    n.name_kr = '핵심 사항',
    n.domain = 'SW';

MERGE (n:Concept {id: '타입_검사_시점'})
SET     n.name = '타입 검사 시점',
    n.name_kr = '타입 검사 시점',
    n.domain = 'SW',
    n.definition = '정적 타입 (Static)';

MERGE (n:Concept {id: 'dynamic'})
SET     n.name = 'Dynamic',
    n.name_kr = '동적 타입',
    n.domain = 'SW',
    n.definition = '타입 검사를 실행시간에 실시하는 것',
    n.aliases = ['Dynamic', '동적 타입'];

MERGE (n:Concept {id: '타입_검사_안전성_보장'})
SET     n.name = '타입 검사 안전성 보장',
    n.name_kr = '타입 검사 안전성 보장',
    n.domain = 'SW',
    n.definition = '강한 타입(Strong)';

MERGE (n:Concept {id: '타입의_추론과_의존'})
SET     n.name = '타입의 추론과 의존',
    n.name_kr = '타입의 추론과 의존',
    n.domain = 'SW',
    n.definition = '타입 추론';

MERGE (n:Concept {id: '타입_의존'})
SET     n.name = '타입 의존',
    n.name_kr = '타입 의존',
    n.domain = 'SW',
    n.definition = '다른 타입에 의존한 타입이다 값에 의존한 타입을 만들 수 있는 기능';

MERGE (n:Concept {id: 'pure'})
SET     n.name = 'Pure',
    n.name_kr = '순수',
    n.domain = 'SW',
    n.definition = '참조 투명성',
    n.aliases = ['Pure', '순수'];

MERGE (n:Concept {id: 'no_side_effect'})
SET     n.name = 'No Side effect',
    n.name_kr = 'No Side effect',
    n.domain = 'SW',
    n.definition = '함수의 실행이 부수 효과를 내지 않음 프로그램의 어떤 상태도 변경하지 않음',
    n.aliases = ['No Side effect'];

MERGE (n:Concept {id: '파라미터_분리'})
SET     n.name = '파라미터 분리',
    n.name_kr = '파라미터 분리',
    n.domain = 'SW',
    n.definition = '커링 (Currying)';

MERGE (n:Concept {id: 'evaluation'})
SET     n.name = 'Evaluation',
    n.name_kr = '평가전략',
    n.domain = 'SW',
    n.definition = '적극 평가(Eager)',
    n.aliases = ['Evaluation', '평가전략'];

MERGE (n:Concept {id: 'lazy'})
SET     n.name = 'Lazy',
    n.name_kr = '지연 평가',
    n.domain = 'SW',
    n.definition = '필요할 때까지 평가하지 않음 (일부 순수 함수형 언어가 지연 평가 사용)',
    n.aliases = ['Lazy', '지연 평가'];

MERGE (n:Concept {id: 'clojure'})
SET     n.name = 'Clojure',
    n.name_kr = 'Clojure',
    n.domain = 'SW',
    n.definition = 'JVM 에서 동작하는 LISP 계열 함수형 언어',
    n.aliases = ['Clojure'];

MERGE (n:Concept {id: 'f#'})
SET     n.name = 'F#',
    n.name_kr = 'F#',
    n.domain = 'SW',
    n.definition = '마이크로소프트가 OCaml 을 바탕으로 개발하고 있는 .NET 함수형 언어, Computation Expression 으로 부작용을 제어';

MERGE (n:Concept {id: 'haskell'})
SET     n.name = 'Haskell',
    n.name_kr = 'Haskell',
    n.domain = 'SW',
    n.definition = '함수형 언어의 개방형 표준으로 만들어진 순수 함수형 언어, 모나드라는 구조를 가지고 부작용을 제어',
    n.aliases = ['Haskell'];

MERGE (n:Concept {id: 'scala'})
SET     n.name = 'Scala',
    n.name_kr = 'Scala',
    n.domain = 'SW',
    n.definition = 'JVM 에서 동작하는 함수형 언어, 함수형과 개체지향의 통합이 목적. (기존 JAVA 프로그램을 부분 치환 가능)',
    n.aliases = ['Scala'];

MERGE (n:Concept {id: 'lisp'})
SET     n.name = 'Lisp',
    n.name_kr = '1958',
    n.domain = 'SW',
    n.definition = '독특한 괄호 사용 - 컴퓨터 과학 선구 역할',
    n.aliases = ['Lisp', '1958'];

MERGE (n:Concept {id: '명령형_언어'})
SET     n.name = '명령형 언어',
    n.name_kr = '명령형 언어',
    n.domain = 'SW';

MERGE (n:Concept {id: '함수형_언어'})
SET     n.name = '함수형 언어',
    n.name_kr = '함수형 언어',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '람다_대수_표현'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'pure_function'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '비상태,_불변성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'first_object'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'higher_order_function'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'expressions_only'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '함수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'higher_order_functions'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'recursive_functions'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'function_composition'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '상태와_가변_데이터_회피'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '성능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '코드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'modularity'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '장/단점'})
MERGE (b:Concept {id: '핵심_사항'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '장/단점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '핵심_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '타입_검사_시점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'dynamic'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '타입_검사_안전성_보장'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '타입의_추론과_의존'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '타입_의존'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'pure'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'no_side_effect'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '파라미터_분리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'evaluation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'lazy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'clojure'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'f#'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'haskell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'scala'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: 'lisp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '명령형_언어'})
MERGE (b:Concept {id: '함수형_언어'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '명령형_언어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Concept {id: '함수형_언어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Document {id: 'SW_254.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '함수형_언어/함수형_프로그래밍'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '람다_대수_표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pure_function'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비상태,_불변성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'first_object'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'higher_order_function'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'expressions_only'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'higher_order_functions'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recursive_functions'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'function_composition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태와_가변_데이터_회피'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장/단점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타입_검사_시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타입_검사_안전성_보장'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타입의_추론과_의존'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타입_의존'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pure'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_side_effect'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파라미터_분리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'evaluation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lazy'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clojure'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f#'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'haskell'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scala'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lisp'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령형_언어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함수형_언어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_254.4: 로우코드(Low Code)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_254.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'low_code'})
SET     n.name = 'Low Code',
    n.name_kr = '로우코드',
    n.domain = 'SW',
    n.aliases = ['Low Code', '로우코드'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: 'hand_coding'})
SET     n.name = '핸드코딩',
    n.name_kr = '핸드코딩',
    n.domain = 'SW';

MERGE (n:Concept {id: 'drag_and_drop'})
SET     n.name = 'Drag-and-Drop',
    n.name_kr = 'Drag-and-Drop',
    n.domain = 'SW',
    n.aliases = ['Drag-and-Drop'];

MERGE (n:Concept {id: 'wyswig'})
SET     n.name = 'WYSWIG',
    n.name_kr = 'WYSWIG',
    n.domain = 'SW',
    n.aliases = ['WYSWIG'];

MERGE (n:Concept {id: '환경'})
SET     n.name = '환경',
    n.name_kr = '환경',
    n.domain = 'SW',
    n.definition = 'IDE';

MERGE (n:Concept {id: 'drag_&_drop_ui'})
SET     n.name = 'Drag & Drop UI',
    n.name_kr = 'Drag & Drop UI',
    n.domain = 'SW',
    n.definition = '시각적 프로그래밍 모델이 가능한 인터페이스';

MERGE (n:Concept {id: '템플릿_모델링'})
SET     n.name = '템플릿 모델링',
    n.name_kr = '템플릿 모델링',
    n.domain = 'SW',
    n.definition = '재사용의 효율을 극대화하는 코드 템플릿';

MERGE (n:Concept {id: 'wyswyg_editor'})
SET     n.name = 'WYSWYG Editor',
    n.name_kr = 'WYSWYG Editor',
    n.domain = 'SW',
    n.definition = '문서 편집 화면과 출력물이 동일하게 나오는 방식',
    n.aliases = ['WYSWYG Editor'];

MERGE (n:Concept {id: '개발'})
SET     n.name = '개발',
    n.name_kr = '개발',
    n.domain = 'SW',
    n.definition = 'RestAPI';

MERGE (n:Technology {id: 'angular_js'})
SET     n.name = 'Angular.js',
    n.name_kr = 'Angular.js',
    n.domain = 'SW',
    n.definition = '구글에서 만든 자바스크립트 프레임워크',
    n.aliases = ['Angular.js'];

MERGE (n:Concept {id: '3rd_party_api'})
SET     n.name = '3rd Party API',
    n.name_kr = '3rd Party API',
    n.domain = 'SW',
    n.definition = '다양한 서드파티 API를 호출하여 재사용 및 통합';

MERGE (n:Concept {id: '데이터모델링'})
SET     n.name = '데이터모델링',
    n.name_kr = '데이터모델링',
    n.domain = 'SW',
    n.definition = '서비스 워크플로우, SQL 쿼리 자동화';

MERGE (n:Concept {id: '생산성_향상'})
SET     n.name = '생산성 향상',
    n.name_kr = '생산성 향상',
    n.domain = 'SW',
    n.definition = '별도 개발된 컴포넌트 및 샘플 프로그램 이용가능';

MERGE (n:Concept {id: '저비용_관리가능'})
SET     n.name = '저비용 관리가능',
    n.name_kr = '저비용 관리가능',
    n.domain = 'SW',
    n.definition = '개발기간 단축 통한 비용감소 모바일 앱/PC IDE 지원';

MERGE (n:Concept {id: '라이프사이클_관리'})
SET     n.name = '라이프사이클 관리',
    n.name_kr = '라이프사이클 관리',
    n.domain = 'SW',
    n.definition = '프로세스 및 Workflow 모델링 지원 가능 App Marketplace 지원(템플릿 및 기능 다운로드 지원)';

MERGE (n:Concept {id: '기업용_시스템_통합_어려움'})
SET     n.name = '기업용 시스템 통합 어려움',
    n.name_kr = '기업용 시스템 통합 어려움',
    n.domain = 'SW',
    n.definition = '기업용 솔루션등과 연결되는 플랫폼이 없어 통합 어려움';

MERGE (n:Concept {id: '국내_레퍼런스_부족'})
SET     n.name = '국내 레퍼런스 부족',
    n.name_kr = '국내 레퍼런스 부족',
    n.domain = 'SW',
    n.definition = '국내 도입 사례 부족으로 운영 편의성 낮음';

MERGE (n:Concept {id: '해외_솔루션_기술지원_한계'})
SET     n.name = '해외 솔루션 기술지원 한계',
    n.name_kr = '해외 솔루션 기술지원 한계',
    n.domain = 'SW',
    n.definition = '해외 개발된 솔루션 도입시 세부 기술지원의 한계점 존재';

MERGE (n:Concept {id: '보안_이슈_존재'})
SET     n.name = '보안 이슈 존재',
    n.name_kr = '보안 이슈 존재',
    n.domain = 'SW',
    n.definition = '솔루션내 제공되는 소스에 대한 보안 이슈';

MERGE (n:Concept {id: '벤더_의존성_높음'})
SET     n.name = '벤더 의존성 높음',
    n.name_kr = '벤더 의존성 높음',
    n.domain = 'SW',
    n.definition = '개발된 어플리케이션의 벤더 의존성이 높음';

MERGE (n:Concept {id: '개발시간'})
SET     n.name = '개발시간',
    n.name_kr = '개발시간',
    n.domain = 'SW',
    n.definition = '30배 이상 빠른 속도';

MERGE (n:Concept {id: '개발범위'})
SET     n.name = '개발범위',
    n.name_kr = '개발범위',
    n.domain = 'SW',
    n.definition = '소형 앱 위주';

MERGE (n:Concept {id: '개발도구'})
SET     n.name = '개발도구',
    n.name_kr = '개발도구',
    n.domain = 'SW',
    n.definition = 'IDE Tool 중심';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'SW',
    n.definition = 'IDE Tool 의존적';

MERGE (n:Concept {id: '배포'})
SET     n.name = '배포',
    n.name_kr = '배포',
    n.domain = 'SW',
    n.definition = '배포 Platform Update로 종료';

MERGE (n:Concept {id: '유지관리'})
SET     n.name = '유지관리',
    n.name_kr = '유지관리',
    n.domain = 'SW',
    n.definition = '1/10 수준 감축';

MERGE (n:Concept {id: '개발_숙련도'})
SET     n.name = '개발 숙련도',
    n.name_kr = '개발 숙련도',
    n.domain = 'SW',
    n.definition = '코딩 경험이 아닌 업무 이해도 필요';

MERGE (n:Concept {id: '사용자_인터페이스'})
SET     n.name = '사용자 인터페이스',
    n.name_kr = '사용자 인터페이스',
    n.domain = 'SW',
    n.definition = 'UI 빌더';

MERGE (n:Concept {id: '템플릿_및_컴포넌트'})
SET     n.name = '템플릿 및 컴포넌트',
    n.name_kr = '템플릿 및 컴포넌트',
    n.domain = 'SW',
    n.definition = '정의된 디자인과 구조의 플릿과 UI 컴포넌트 사용 - 개발 속도 향상';

MERGE (n:Concept {id: '애플리케이션_로직_및_기능'})
SET     n.name = '애플리케이션 로직 및 기능',
    n.name_kr = '애플리케이션 로직 및 기능',
    n.domain = 'SW',
    n.definition = '이벤트 및 액션 정의';

MERGE (n:Concept {id: '조건_및_로직_표현'})
SET     n.name = '조건 및 로직 표현',
    n.name_kr = '조건 및 로직 표현',
    n.domain = 'SW',
    n.definition = '조건문, 반복문 등의 로직 표현 - 시각적 조건 및 로직 구성';

MERGE (n:Concept {id: '데이터_관리_및_통합'})
SET     n.name = '데이터 관리 및 통합',
    n.name_kr = '데이터 관리 및 통합',
    n.domain = 'SW',
    n.definition = '데이터 모델링';

MERGE (n:Concept {id: '데이터베이스_연동'})
SET     n.name = '데이터베이스 연동',
    n.name_kr = '데이터베이스 연동',
    n.domain = 'SW',
    n.definition = '내부/외부 데이터베이스 연결 - 데이터 관리 및 저장';

MERGE (n:Concept {id: 'api_연동'})
SET     n.name = 'API 연동',
    n.name_kr = 'API 연동',
    n.domain = 'SW',
    n.definition = '외부 서비스와 데이터 통합 - API 연동 구현';

MERGE (n:Concept {id: 'platform'})
SET     n.name = 'Platform',
    n.name_kr = 'Platform',
    n.domain = 'SW',
    n.definition = 'Cloud',
    n.aliases = ['Platform'];

MERGE (n:Concept {id: 'no_code_platform'})
SET     n.name = 'No-Code Platform',
    n.name_kr = 'No-Code Platform',
    n.domain = 'SW',
    n.definition = '코딩 없이 웹 사이트 및 애플리케이션을 개발하는 방식 - 비 IT 전문가들도 플랫폼 내에서 웹 및 앱 개발이 가능',
    n.aliases = ['No-Code Platform'];

MERGE (n:Concept {id: 'low_code_platform'})
SET     n.name = 'Low-Code Platform',
    n.name_kr = 'Low-Code Platform',
    n.domain = 'SW',
    n.definition = '비 IT 전문가들도 쉽게 개발자와 유사한 코딩을 할 수 있도록 최소화, 간소화한 방식 - 개발 인력 부족 해결, 신속 개발 가능',
    n.aliases = ['Low-Code Platform'];

MERGE (n:Concept {id: '기존_sw개발'})
SET     n.name = '기존 SW개발',
    n.name_kr = '기존 SW개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '로우코드·노코드_개발'})
SET     n.name = '로우코드·노코드 개발',
    n.name_kr = '로우코드·노코드 개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '디지털_전환_도구'})
SET     n.name = '디지털 전환 도구',
    n.name_kr = '디지털 전환 도구',
    n.domain = 'SW',
    n.definition = '앱 생명주기 지원';

MERGE (n:Concept {id: '사용자_경험_지원'})
SET     n.name = '사용자 경험 지원',
    n.name_kr = '사용자 경험 지원',
    n.domain = 'SW',
    n.definition = '몰입형, 대화형 통합 개발 환경을 웹/모바일로 제공하여 생산성과 편의성 향상 - 쉬운 변경수단 제공, 백엔드서비스 재사용, 표준 인터페이스/프로토콜 지원 등';

MERGE (n:Concept {id: '사용자_협업'})
SET     n.name = '사용자 협업',
    n.name_kr = '사용자 협업',
    n.domain = 'SW',
    n.definition = '숙련된 개발자와 현업 직원을 각각 식별해야 하며 이들의 실시간 협업을 돕는 작업·메시지 로깅 및 승인, 충돌 해결 가능';

MERGE (n:Concept {id: '데이터_통합_및_사용성'})
SET     n.name = '데이터 통합 및 사용성',
    n.name_kr = '데이터 통합 및 사용성',
    n.domain = 'SW',
    n.definition = '데이터 보안 위협과 손실 방지 - 모든 소스에서 데이터를 쉽게 찾고 해석과 사용 가능 - 마이크로서비스 솔루션 구축 지원 등';

MERGE (n:Concept {id: '클라우드_지원'})
SET     n.name = '클라우드 지원',
    n.name_kr = '클라우드 지원',
    n.domain = 'SW',
    n.definition = '최종 산출물 앱의 회복 탄력성, 확장성 및 보안성을 유지하기 위해 클라우드 네이티브 앱 개발 가능 - 미션 크리티컬 앱의 가동시간 보장, 앱 확장시 필요한 개입 유형 등';

MERGE (n:Concept {id: 'as-is_비즈니스_환경'})
SET     n.name = 'AS-IS 비즈니스 환경',
    n.name_kr = 'AS-IS 비즈니스 환경',
    n.domain = 'SW',
    n.definition = '기존 인프라와의 적합성';

MERGE (n:Concept {id: '보안성'})
SET     n.name = '보안성',
    n.name_kr = '보안성',
    n.domain = 'SW',
    n.definition = '권한 부여 및 인증 메커니즘과 데이터 암호화 서비스 등을 지원하는 신뢰성 있는 프레임워크 안에서 애플리케이션을 개발, 관리, 운영';

MERGE (n:Concept {id: 'roi'})
SET     n.name = 'ROI',
    n.name_kr = '투자대비 수익률',
    n.domain = 'SW',
    n.definition = '로우코드/노코드 플랫폼에 대한 ROI를 높이기 위한 새로운 접근 방식 필요 - 고객환경 개선, 제품/서비스 등 중요 가치의 신속 제공과 디지털 혁신 가속을 위한 역량 제공 등이 함께 고려되어야 함',
    n.aliases = ['ROI', '투자대비 수익률'];

// --- 관계 ---

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'hand_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'drag_and_drop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'wyswig'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'drag_&_drop_ui'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '템플릿_모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'wyswyg_editor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Technology {id: 'angular_js'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '3rd_party_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '데이터모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '생산성_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '저비용_관리가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '라이프사이클_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '기업용_시스템_통합_어려움'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '국내_레퍼런스_부족'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '해외_솔루션_기술지원_한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '보안_이슈_존재'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '벤더_의존성_높음'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '개발시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '개발범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '개발도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '배포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '유지관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '개발_숙련도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '사용자_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '템플릿_및_컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '애플리케이션_로직_및_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '조건_및_로직_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '데이터_관리_및_통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '데이터베이스_연동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'api_연동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'platform'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'no_code_platform'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'low_code_platform'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hand_coding'})
MERGE (b:Concept {id: 'low_code'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'hand_coding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_sw개발'})
MERGE (b:Concept {id: '로우코드·노코드_개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '기존_sw개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '로우코드·노코드_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_sw개발'})
MERGE (b:Concept {id: '로우코드·노코드_개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '기존_sw개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '로우코드·노코드_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '디지털_전환_도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '사용자_경험_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '사용자_협업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '데이터_통합_및_사용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '클라우드_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'as-is_비즈니스_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: '보안성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Concept {id: 'roi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Document {id: 'SW_254.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'low_code'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hand_coding'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drag_and_drop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wyswig'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drag_&_drop_ui'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '템플릿_모델링'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wyswyg_editor'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'angular_js'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3rd_party_api'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터모델링'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산성_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저비용_관리가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이프사이클_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업용_시스템_통합_어려움'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내_레퍼런스_부족'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해외_솔루션_기술지원_한계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_이슈_존재'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벤더_의존성_높음'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발범위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발도구'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배포'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_숙련도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_인터페이스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '템플릿_및_컴포넌트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션_로직_및_기능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조건_및_로직_표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리_및_통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스_연동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_연동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'platform'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_code_platform'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'low_code_platform'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_sw개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로우코드·노코드_개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_전환_도구'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_경험_지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_협업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_통합_및_사용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'as-is_비즈니스_환경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'roi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_254.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_254.5'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_260: 정규 표현식(Regular Expression)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_260'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'regular_expression'})
SET     n.name = 'Regular Expression',
    n.name_kr = '정규 표현식',
    n.domain = 'SW',
    n.aliases = ['Regular Expression', '정규 표현식'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '기본_표현'})
SET     n.name = '기본 표현',
    n.name_kr = '기본 표현',
    n.domain = 'SW';

MERGE (n:Concept {id: 'a_∈_vt'})
SET     n.name = 'a ∈ VT',
    n.name_kr = 'a ∈ VT',
    n.domain = 'SW',
    n.definition = 'L(a) = {a}, where a - terminal symbol - 집합 {a}를 나타내는 정규표현, 알파벳에 속한 단일문자 a';

MERGE (n:Concept {id: '기본_연산'})
SET     n.name = '기본 연산',
    n.name_kr = '기본 연산',
    n.domain = 'SW',
    n.definition = '연결 (concatenation)';

MERGE (n:Concept {id: 'union'})
SET     n.name = 'Union',
    n.name_kr = '합집합',
    n.domain = 'SW',
    n.definition = '“+” 문자를 사용하여 표현 - N1+N2, {0,1} = {0}∪{1} = {0+1}',
    n.aliases = ['Union', '합집합'];

MERGE (n:Concept {id: 'closure_or_kleene_star'})
SET     n.name = 'closure or Kleene star',
    n.name_kr = '반복',
    n.domain = 'SW',
    n.definition = '“*” 문자를 사용하여 표현 - N*, L* = {} ∪ L1 ∪L2 ∪ L3∪ L1n',
    n.aliases = ['closure or Kleene star', '반복'];

MERGE (n:Concept {id: '표현'})
SET     n.name = '표현',
    n.name_kr = '표현',
    n.domain = 'SW',
    n.definition = 'M = { Q, Σ, δ, s0,F } - Q : 상태의 공집합이 아닌 유한 집합 - Σ : 입력문자(유한하며, 비어있지 않은 기호의 집합) - δ : 상태전이 함수 - s0 : 초기상태이며, Q의 원소 - F : 최종상태의 집합이며, Q의 원소';

// --- 관계 ---

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: '기본_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: 'a_∈_vt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: '기본_연산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: 'union'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: 'closure_or_kleene_star'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Concept {id: '표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Document {id: 'SW_260'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'regular_expression'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'a_∈_vt'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_연산'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'union'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'closure_or_kleene_star'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_261: 원격 프로시저 호출(Remote Procedure Call, RPC)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_261'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Metric {id: 'rpc'})
SET     n.name = 'Remote Procedure Call, RPC',
    n.name_kr = '원격 프로시저 호출',
    n.domain = 'SW',
    n.aliases = ['Remote Procedure Call, RPC', '원격 프로시저 호출'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: 'idl'})
SET     n.name = 'IDL',
    n.name_kr = 'IDL',
    n.domain = 'SW',
    n.aliases = ['IDL'];

MERGE (n:Concept {id: 'stub'})
SET     n.name = 'Stub',
    n.name_kr = 'Stub',
    n.domain = 'SW',
    n.aliases = ['Stub'];

MERGE (n:Concept {id: 'xdr'})
SET     n.name = 'XDR',
    n.name_kr = 'XDR',
    n.domain = 'SW',
    n.aliases = ['XDR'];

MERGE (n:Concept {id: '원격지_호출'})
SET     n.name = '원격지 호출',
    n.name_kr = '원격지 호출',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'rpc'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Concept {id: 'idl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Concept {id: 'stub'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Concept {id: 'xdr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Concept {id: '원격지_호출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Document {id: 'SW_261'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'rpc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'idl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stub'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xdr'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격지_호출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_262: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_262'})
SET doc.domain = 'SW';

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 236개
// 관계: 485개
// ================================================================