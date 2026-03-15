// ================================================================
// CA 도메인 (CA_151 ~ CA_176) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// CA_149.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_149.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_150: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_150'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_151: SIP (System in Package)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_151'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'system_in_package'})
SET     n.name = 'System in Package',
    n.name_kr = 'SIP',
    n.domain = 'CA',
    n.aliases = ['System in Package', 'SIP'];

MERGE (n:Concept {id: '시스템'})
SET     n.name = '시스템',
    n.name_kr = '시스템',
    n.domain = 'CA';

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'CA',
    n.aliases = ['SIP'];

MERGE (n:Concept {id: '단일_패키지'})
SET     n.name = '단일 패키지',
    n.name_kr = '단일 패키지',
    n.domain = 'CA';

MERGE (n:Concept {id: '여러블록을_개별적_칩_구현'})
SET     n.name = '여러블록을 개별적 칩 구현',
    n.name_kr = '여러블록을 개별적 칩 구현',
    n.domain = 'CA';

MERGE (n:Concept {id: '설계(chip'})
SET     n.name = '설계(Chip',
    n.name_kr = '설계(Chip',
    n.domain = 'CA';

MERGE (n:Concept {id: 'packaging'})
SET     n.name = 'Packaging',
    n.name_kr = 'Packaging',
    n.domain = 'CA',
    n.aliases = ['Packaging'];

MERGE (n:Concept {id: 'pcb'})
SET     n.name = 'PCB',
    n.name_kr = 'PCB',
    n.domain = 'CA',
    n.aliases = ['PCB'];

MERGE (n:Concept {id: 'discrete)'})
SET     n.name = 'Discrete)',
    n.name_kr = 'Discrete)',
    n.domain = 'CA';

MERGE (n:Concept {id: '패키징기술(stacking'})
SET     n.name = '패키징기술(Stacking',
    n.name_kr = '패키징기술(Stacking',
    n.domain = 'CA';

MERGE (n:Concept {id: 'antenna)'})
SET     n.name = 'Antenna)',
    n.name_kr = 'Antenna)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'sip_설계_기술'})
SET     n.name = 'SIP 설계 기술',
    n.name_kr = 'SIP 설계 기술',
    n.domain = 'CA',
    n.definition = 'Chip Level Components';

MERGE (n:Metric {id: 'sip_패키징_기술'})
SET     n.name = 'SIP 패키징 기술',
    n.name_kr = 'SIP 패키징 기술',
    n.domain = 'CA',
    n.definition = 'Stacking Process: planar structure, vertical structure, 3D structure';

// --- 관계 ---

MERGE (a:Concept {id: 'sip'})
MERGE (b:Concept {id: '시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: '단일_패키지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: '여러블록을_개별적_칩_구현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: '설계(chip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: 'packaging'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: 'pcb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: 'discrete)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: '패키징기술(stacking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: 'antenna)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Concept {id: 'sip_설계_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Metric {id: 'sip_패키징_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Document {id: 'CA_151'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'system_in_package'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_패키지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '여러블록을_개별적_칩_구현'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계(chip'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'packaging'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pcb'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'discrete)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패키징기술(stacking'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'antenna)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip_설계_기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sip_패키징_기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_152.1: SoC (System on Chip)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'system_on_chip'})
SET     n.name = 'System on Chip',
    n.name_kr = 'SoC',
    n.domain = 'CA',
    n.aliases = ['System on Chip', 'SoC'];

MERGE (n:Concept {id: '시스템'})
SET     n.name = '시스템',
    n.name_kr = '시스템',
    n.domain = 'CA';

MERGE (n:Concept {id: 'soc'})
SET     n.name = 'SoC',
    n.name_kr = 'SoC',
    n.domain = 'CA',
    n.aliases = ['SoC'];

MERGE (n:Concept {id: '메모리'})
SET     n.name = '메모리',
    n.name_kr = '메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '버스'})
SET     n.name = '버스',
    n.name_kr = '버스',
    n.domain = 'CA';

MERGE (n:Concept {id: '설계방법론'})
SET     n.name = '설계방법론(블록/플랫폼 기반)',
    n.name_kr = '설계방법론(블록/플랫폼 기반)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'on_chip_bus'})
SET     n.name = 'On Chip Bus',
    n.name_kr = 'On Chip Bus',
    n.domain = 'CA',
    n.aliases = ['On Chip Bus'];

MERGE (n:Concept {id: '프로세스_코어'})
SET     n.name = '프로세스 코어',
    n.name_kr = '프로세스 코어',
    n.domain = 'CA',
    n.definition = '마이크로 컨트롤러 (Micro Controller)';

MERGE (n:Concept {id: '기억장치'})
SET     n.name = '기억장치',
    n.name_kr = '기억장치',
    n.domain = 'CA',
    n.definition = 'ROM (Read-only Memory)';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'CA',
    n.definition = '입출력 인터페이스';

// --- 관계 ---

MERGE (a:Concept {id: 'soc'})
MERGE (b:Concept {id: '시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '메모리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '설계방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: 'on_chip_bus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '프로세스_코어'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '기억장치'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Document {id: 'CA_152.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'system_on_chip'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계방법론'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_chip_bus'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_코어'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_152.10: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.10'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.4'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.5'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.6'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.7'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_152.8: 액사스케일 (Exascale) 컴퓨팅 시스템
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.8'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'exascale'})
SET     n.name = '액사스케일 (Exascale) 컴퓨팅 시스템',
    n.name_kr = '액사스케일 (Exascale) 컴퓨팅 시스템',
    n.domain = 'CA';

MERGE (n:Concept {id: '신토픽'})
SET     n.name = '신토픽',
    n.name_kr = '신토픽',
    n.domain = 'CA';

MERGE (n:Concept {id: '(현존_슈퍼컴퓨터의_1'})
SET     n.name = '(현존 슈퍼컴퓨터의 1',
    n.name_kr = '(현존 슈퍼컴퓨터의 1',
    n.domain = 'CA';

MERGE (n:Concept {id: '000배_이상의_성능확장)'})
SET     n.name = '000배 이상의 성능확장)',
    n.name_kr = '000배 이상의 성능확장)',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'exascale'})
MERGE (b:Concept {id: '신토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'exascale'})
MERGE (b:Concept {id: '(현존_슈퍼컴퓨터의_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exascale'})
MERGE (b:Concept {id: '000배_이상의_성능확장)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exascale'})
MERGE (b:Document {id: 'CA_152.8'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'exascale'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신토픽'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(현존_슈퍼컴퓨터의_1'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '000배_이상의_성능확장)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_152.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_152.9'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_162: OSHW
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_162'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'CA',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: '원본_디자인_파일'})
SET     n.name = '원본 디자인 파일',
    n.name_kr = '원본 디자인 파일',
    n.domain = 'CA',
    n.definition = 'OSH 프로젝트의 핵심 요소 누구든지 변경 가능한 형식으로 저장된 CAD 등 HW 설계에 대한 파일';

MERGE (n:Concept {id: '보조_디자인_파일'})
SET     n.name = '보조 디자인 파일',
    n.name_kr = '보조 디자인 파일',
    n.domain = 'CA',
    n.definition = '원본 디자인 파일을 보다 잘 이해할 수 있도록 추가하는 디자인 파일';

MERGE (n:Concept {id: '재료_명세서'})
SET     n.name = '재료 명세서',
    n.name_kr = '재료 명세서',
    n.domain = 'CA',
    n.definition = '공개된 HW를 구성하는 각 부분이나 부품에 대한 설명 각 부품 번호나 제공사, 가격, 부품 상세 설명 등의 내용';

MERGE (n:Concept {id: 'sw_및_펌웨어'})
SET     n.name = 'SW 및 펌웨어',
    n.name_kr = 'SW 및 펌웨어',
    n.domain = 'CA',
    n.definition = 'HW 운용에 필요한 SW 소스 코드나 펌웨어 작업자의 HW 디자인 변경에 맞게 수정이 가능한 형태로 제공';

MERGE (n:Concept {id: '사진'})
SET     n.name = '사진',
    n.name_kr = '사진',
    n.domain = 'CA',
    n.definition = 'OSH 결과물에 대한 이해도를 높이기 위해 HW의 완성 형태를 다양한 각도에서 촬영한 사진';

MERGE (n:Concept {id: '설명서'})
SET     n.name = '설명서',
    n.name_kr = '설명서',
    n.domain = 'CA',
    n.definition = 'HW 조립 순서 및 셋팅 방법 등을 담음';

// --- 관계 ---

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: 'oshw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Concept {id: '원본_디자인_파일'})
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
MERGE (b:Document {id: 'CA_162'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원본_디자인_파일'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조_디자인_파일'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재료_명세서'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_및_펌웨어'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사진'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설명서'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_163: 아두이노(Arduino)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_163'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'arduino'})
SET     n.name = 'Arduino',
    n.name_kr = '아두이노',
    n.domain = 'CA',
    n.aliases = ['Arduino', '아두이노'];

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'CA',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: 'uno'})
SET     n.name = 'UNO',
    n.name_kr = '우노',
    n.domain = 'CA',
    n.aliases = ['UNO', '우노'];

MERGE (n:Concept {id: 'lilypad'})
SET     n.name = 'Lilypad',
    n.name_kr = '릴리패드',
    n.domain = 'CA',
    n.aliases = ['Lilypad', '릴리패드'];

MERGE (n:Concept {id: 'gpl_license'})
SET     n.name = 'GPL License',
    n.name_kr = '오픈소스 기반',
    n.domain = 'CA',
    n.definition = '누구나 프로젝트에 참여하고 활용 가능하도록 공개 됨. - CCL(Creative Commons Attribution Share-Alike license)로 회로 설계가 오픈되어 있으며 다양한 버전이 존재 - 아두이노 구성 SW, HW 대부분이 GPL 라이선스와 2차 저작물 공식 인정',
    n.aliases = ['GPL License', '오픈소스 기반'];

MERGE (n:Concept {id: 'ide'})
SET     n.name = '통합환경(IDE) 제공',
    n.name_kr = '통합환경(IDE) 제공',
    n.domain = 'CA',
    n.definition = '아두이노를 동작시킬 소프트웨어 개발을 위한 통합환경의 제공 [참고] 통합 개발 환경(Integrated Development Environment, IDE) IDE란 소프트웨어 개발에 필요한 다양한 기능을 제공하는 PC용 애플리케이션 패키지';

MERGE (n:Concept {id: '피지컬_컴퓨팅'})
SET     n.name = '피지컬 컴퓨팅',
    n.name_kr = '피지컬 컴퓨팅',
    n.domain = 'CA',
    n.definition = '디지털 신호를 기반으로 물리적인 방법의 정보(신호)를 주고 받음';

MERGE (n:Concept {id: '아두이노_커뮤니티'})
SET     n.name = '아두이노 커뮤니티',
    n.name_kr = '아두이노 커뮤니티',
    n.domain = 'CA',
    n.definition = '공개 커뮤니티, Wiki를 통하여 정보획득 및 교류 가능';

MERGE (n:Concept {id: '다양한_i/o_장치_지원'})
SET     n.name = '다양한 I/O 장치 지원',
    n.name_kr = '다양한 I/O 장치 지원',
    n.domain = 'CA',
    n.definition = '컴퓨터의 다리(터미널, 핀)에 스위치나 LED 램프, 센서 등을 연결 사용 가능 (GPIO)';

MERGE (n:Concept {id: 'pc_개발환경'})
SET     n.name = 'PC 개발환경',
    n.name_kr = 'PC 개발환경',
    n.domain = 'CA',
    n.definition = '아두이노 개발환경과 별개로 PC에서 동작하며, 아두이노에서 COM포트로 통신을 하고 이 데이터를 화면 등에 처리 - 윈도우 환경에서는 마이크로소프트 비주얼 스튜디오 (Microsoft Visual Studio), 스케치, 스크래치, 아두블록 사용';

MERGE (n:Concept {id: 'rs_232c'})
SET     n.name = 'USB(RS-232C)-UART 변환',
    n.name_kr = 'USB(RS-232C)-UART 변환',
    n.domain = 'CA',
    n.definition = 'USB로 연결되면 ATmega16U2(초기의 FTDI FT232R와 같은 역할로 USB-Serial 변환)에 의해 시리얼로 변환';

MERGE (n:Concept {id: 'mini'})
SET     n.name = 'MCU(Mini)부트로더',
    n.name_kr = 'MCU(Mini)부트로더',
    n.domain = 'CA',
    n.definition = '마이크로컨트롤러(우노의 경우 ATmega328P)에 부트로더가 장착되어 리얼 통신으로 부터 오는 기계어 코드를 플래시 메모리에 쓰게 되어, 프로그래밍에 의해 완성된 응용 프로그램 코드가 장착 - 전원 인가와 동시에 마이크로컨트롤러에 장착된 코드가 실행되면서 원하는 동작 실행';

MERGE (n:Concept {id: 'usb_드라이버'})
SET     n.name = 'USB 드라이버',
    n.name_kr = 'USB 드라이버',
    n.domain = 'CA',
    n.definition = 'PC의 USB 또는 RS-232C 포트와 통신 드라이버 제공';

MERGE (n:Concept {id: 'uart'})
SET     n.name = 'UART',
    n.name_kr = 'UART',
    n.domain = 'CA',
    n.definition = '범용 비동기화 송수신기: Universal asynchronous receiver/transmitter - USB 또는 RS-232C 포트의 시리얼 신호와 브트로더의 신호변환 제공',
    n.aliases = ['UART'];

MERGE (n:Concept {id: 'flash'})
SET     n.name = 'FLASH',
    n.name_kr = 'FLASH',
    n.domain = 'CA',
    n.definition = '브트로더 및 실행 프로그램이 16Kb ~ 512 Kb 크기의 저장소',
    n.aliases = ['FLASH'];

MERGE (n:Concept {id: '개발환경'})
SET     n.name = '개발환경',
    n.name_kr = '개발환경',
    n.domain = 'CA',
    n.definition = '개발용 PC, 아두이노 IDE(통합개발환경), USB케이블 (아두이노 본체와 연결)';

MERGE (n:Concept {id: 'sketch'})
SET     n.name = 'Sketch',
    n.name_kr = '스케치',
    n.domain = 'CA',
    n.definition = '아두이노 보드에서 실행되는 작성된 프로그램 A program or code written for Arduino is called a sketch',
    n.aliases = ['Sketch', '스케치'];

MERGE (n:Concept {id: '아두이노_본체'})
SET     n.name = '아두이노 본체',
    n.name_kr = '아두이노 본체',
    n.domain = 'CA',
    n.definition = '마이크로 컴퓨터 보드 (Micro-Computer Board) - 다양한 아두이노 제조사에서 호환 보드를 제작하여 판매';

MERGE (n:Concept {id: '다양한_i/o'})
SET     n.name = '다양한 I/O',
    n.name_kr = '다양한 I/O',
    n.domain = 'CA',
    n.definition = '아두이노 본체와 연결되어 상호작용하는 다양한 I/O 장치 - 스위치, LED램프, 센서, 액츄에이터 등을 연결해서 다양한 묭도로 확장 - shield 를 통한 기능 확장 가능(서보 컨트롤, zigbee통신 모듈 등) [참고] An actuator is a type of motor that is responsible for moving or controlli';

MERGE (n:Concept {id: '인가전압'})
SET     n.name = '인가전압',
    n.name_kr = '인가전압',
    n.domain = 'CA',
    n.definition = '2.7~5V';

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'CA',
    n.definition = 'ATmega168/328/2560/32U4[Atmel사]',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: '통신_컨트롤러'})
SET     n.name = '통신 컨트롤러',
    n.name_kr = '통신 컨트롤러',
    n.domain = 'CA',
    n.definition = 'ATmega16U2[Atmel사]';

MERGE (n:Concept {id: '클럭속도'})
SET     n.name = '클럭속도',
    n.name_kr = '클럭속도',
    n.domain = 'CA',
    n.definition = '16 ~ 84 MHz';

MERGE (n:Concept {id: '플래시메모리용량'})
SET     n.name = '플래시메모리용량',
    n.name_kr = '플래시메모리용량',
    n.domain = 'CA',
    n.definition = '16Kb ~ 512 Kb';

MERGE (n:Concept {id: '통신포트'})
SET     n.name = '통신포트',
    n.name_kr = '통신포트',
    n.domain = 'CA',
    n.definition = 'RS-232C, USB';

MERGE (n:Concept {id: '입출력단자'})
SET     n.name = '입출력단자',
    n.name_kr = '입출력단자',
    n.domain = 'CA',
    n.definition = '14개[PWM(pulse-width modulated)신호: 6~16개, 디지털 I/O핀(아날로그 입력 단자: 4~14)]';

MERGE (n:Concept {id: '라즈베리파이'})
SET     n.name = '라즈베리파이',
    n.name_kr = '라즈베리파이',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'oshw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'uno'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'lilypad'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'gpl_license'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'ide'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '피지컬_컴퓨팅'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '아두이노_커뮤니티'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '다양한_i/o_장치_지원'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'pc_개발환경'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'rs_232c'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'mini'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'usb_드라이버'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'uart'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'flash'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '개발환경'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'sketch'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '아두이노_본체'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '다양한_i/o'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '인가전압'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '통신_컨트롤러'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '클럭속도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '플래시메모리용량'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '통신포트'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '입출력단자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '라즈베리파이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Concept {id: '라즈베리파이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Document {id: 'CA_163'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'arduino'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uno'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lilypad'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpl_license'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ide'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피지컬_컴퓨팅'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아두이노_커뮤니티'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_i/o_장치_지원'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pc_개발환경'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rs_232c'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mini'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_드라이버'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uart'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flash'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발환경'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아두이노_본체'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_i/o'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인가전압'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신_컨트롤러'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클럭속도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플래시메모리용량'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신포트'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력단자'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라즈베리파이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_164: 릴리패드 아두이노(LilyPad Arduino)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_164'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'lilypad_arduino'})
SET     n.name = 'LilyPad Arduino',
    n.name_kr = '릴리패드 아두이노',
    n.domain = 'CA',
    n.aliases = ['LilyPad Arduino', '릴리패드 아두이노'];

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'CA',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: '원판형_아두이노'})
SET     n.name = '원판형 아두이노',
    n.name_kr = '원판형 아두이노',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'lilypad_arduino'})
MERGE (b:Concept {id: 'oshw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lilypad_arduino'})
MERGE (b:Concept {id: '원판형_아두이노'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lilypad_arduino'})
MERGE (b:Document {id: 'CA_164'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lilypad_arduino'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원판형_아두이노'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_165: 라즈베리파이(Raspberry Pi)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_165'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'raspberry_pi'})
SET     n.name = 'Raspberry Pi',
    n.name_kr = '라즈베리파이',
    n.domain = 'CA',
    n.aliases = ['Raspberry Pi', '라즈베리파이'];

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'CA',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: '아두이노'})
SET     n.name = '아두이노',
    n.name_kr = '아두이노',
    n.domain = 'CA';

MERGE (n:Concept {id: '라즈베리_파이'})
SET     n.name = '라즈베리 파이',
    n.name_kr = '라즈베리 파이',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Concept {id: 'oshw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '아두이노'})
MERGE (b:Concept {id: '라즈베리_파이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Concept {id: '아두이노'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Concept {id: '라즈베리_파이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Document {id: 'CA_165'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'raspberry_pi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아두이노'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라즈베리_파이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_166: 스케치(Sketch)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_166'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'sketch'})
SET     n.name = 'Sketch',
    n.name_kr = '스케치',
    n.domain = 'CA',
    n.aliases = ['Sketch', '스케치'];

MERGE (n:Concept {id: 'oshw'})
SET     n.name = 'OSHW',
    n.name_kr = 'OSHW',
    n.domain = 'CA',
    n.aliases = ['OSHW'];

MERGE (n:Concept {id: '개발환경_제공'})
SET     n.name = '개발환경 제공',
    n.name_kr = '개발환경 제공',
    n.domain = 'CA',
    n.definition = '개발용 PC와 아두이노 IDE(통합개발환경), USB케이블 (아두이노 본체와 연결)로 소스로딩환경 제공';

MERGE (n:Concept {id: '소스코드_작성'})
SET     n.name = '소스코드 작성',
    n.name_kr = '소스코드 작성',
    n.domain = 'CA',
    n.definition = 'Blank소스코드로부터 코드작성/편집 기능 지원';

MERGE (n:Concept {id: '라이브러리_제공'})
SET     n.name = '라이브러리 제공',
    n.name_kr = '라이브러리 제공',
    n.domain = 'CA',
    n.definition = '각종 명령어에 대한 라이브러리 제공';

MERGE (n:Concept {id: '컴파일'})
SET     n.name = '컴파일',
    n.name_kr = '컴파일',
    n.domain = 'CA',
    n.definition = '작성된 소스코드에 대한 컴파일 및 컴파일 오류 파악';

MERGE (n:Concept {id: '프로그램_전송'})
SET     n.name = '프로그램 전송',
    n.name_kr = '프로그램 전송',
    n.domain = 'CA',
    n.definition = '아두이노 보드로 프로그램 전송 지원';

MERGE (n:Concept {id: '시리얼_통신_모니터'})
SET     n.name = '시리얼 통신 모니터',
    n.name_kr = '시리얼 통신 모니터',
    n.domain = 'CA',
    n.definition = '아두이노에 데이터를 보내는 과정을 모니터링';

// --- 관계 ---

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: 'oshw'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '개발환경_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '소스코드_작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '라이브러리_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '컴파일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '프로그램_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Concept {id: '시리얼_통신_모니터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Document {id: 'CA_166'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sketch'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oshw'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발환경_제공'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소스코드_작성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이브러리_제공'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴파일'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램_전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시리얼_통신_모니터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_175: JVM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_175'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'jvm'})
SET     n.name = 'JVM',
    n.name_kr = 'JVM',
    n.domain = 'CA',
    n.aliases = ['JVM'];

MERGE (n:Concept {id: 'java_virtual_machine'})
SET     n.name = 'Java Virtual Machine',
    n.name_kr = 'JVM',
    n.domain = 'CA',
    n.aliases = ['Java Virtual Machine', 'JVM'];

MERGE (n:Concept {id: '(메소드영역'})
SET     n.name = '(메소드영역',
    n.name_kr = '(메소드영역',
    n.domain = 'CA';

MERGE (n:Concept {id: '힙영역'})
SET     n.name = '힙영역',
    n.name_kr = '힙영역',
    n.domain = 'CA';

MERGE (n:Concept {id: '스택영역)'})
SET     n.name = '스택영역)',
    n.name_kr = '스택영역)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'full_gc'})
SET     n.name = 'Full GC',
    n.name_kr = 'Full GC',
    n.domain = 'CA',
    n.aliases = ['Full GC'];

// --- 관계 ---

MERGE (a:Concept {id: 'java_virtual_machine'})
MERGE (b:Concept {id: 'jvm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Concept {id: '(메소드영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Concept {id: '힙영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Concept {id: '스택영역)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Concept {id: 'full_gc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Document {id: 'CA_175'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'java_virtual_machine'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '(메소드영역'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '힙영역'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스택영역)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_gc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_176: Garbage Collection
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_176'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'garbage_collection'})
SET     n.name = 'Garbage Collection',
    n.name_kr = 'Garbage Collection',
    n.domain = 'CA',
    n.aliases = ['Garbage Collection'];

MERGE (n:Concept {id: 'jvm'})
SET     n.name = 'JVM',
    n.name_kr = 'JVM',
    n.domain = 'CA',
    n.aliases = ['JVM'];

MERGE (n:Concept {id: 'heap_구조'})
SET     n.name = 'Heap 구조',
    n.name_kr = 'Heap 구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'minor_gc'})
SET     n.name = 'Minor GC',
    n.name_kr = 'Minor GC',
    n.domain = 'CA',
    n.aliases = ['Minor GC'];

MERGE (n:Concept {id: 'full_gc'})
SET     n.name = 'Full GC',
    n.name_kr = 'Full GC',
    n.domain = 'CA',
    n.aliases = ['Full GC'];

MERGE (n:Concept {id: 'copy_&_scavenge'})
SET     n.name = 'Copy & Scavenge',
    n.name_kr = 'Copy & Scavenge',
    n.domain = 'CA';

MERGE (n:Concept {id: 'mark_&_compact'})
SET     n.name = 'Mark & Compact',
    n.name_kr = 'Mark & Compact',
    n.domain = 'CA';

MERGE (n:Concept {id: 'minor_gc_동작'})
SET     n.name = 'Minor GC 동작',
    n.name_kr = 'Minor GC 동작',
    n.domain = 'CA',
    n.definition = 'New/Young 영역의 Garbage Collection 처리, Copy & Scavenge알고리즘 - 매우 속도가 빠르며 작은 크기의 메모리를 Collecting 하는데 매우 효과적 예) Copy & Scavenge ① Eden에서 Alive된 객체를 Survivor1으로 이동, Eden 영역을 Clear ② Eden영역과 Survivor 1영역에 Al';

MERGE (n:Concept {id: 'full_gc_동작'})
SET     n.name = 'Full GC 동작',
    n.name_kr = 'Full GC 동작',
    n.domain = 'CA',
    n.definition = 'Old 영역의 Garbage Collection 처리, Mark & Compact알고리즘 사용 - 객체 사용 유무를 Markup하고, Markup된 객체를 삭제 - 순간적으로 App 멈춤 현상 발생으로 시간이 걸리기 때문에 Application성능 및 안정성에 영향을 미침 예) Mark & Compact ① 전체 객체들의 Reference에 따라가면서 Re';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'CA';

MERGE (n:Concept {id: '지원'})
SET     n.name = '지원',
    n.name_kr = '지원',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'jvm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'heap_구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'minor_gc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'full_gc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'copy_&_scavenge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'mark_&_compact'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'minor_gc_동작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: 'full_gc_동작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Concept {id: '지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Concept {id: '지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Document {id: 'CA_176'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jvm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heap_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'minor_gc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_gc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'copy_&_scavenge'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mark_&_compact'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'minor_gc_동작'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_gc_동작'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_177: 스택(Stack)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_177'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'stack'})
SET     n.name = 'Stack',
    n.name_kr = '스택',
    n.domain = 'CA',
    n.aliases = ['Stack', '스택'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Document {id: 'CA_177'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_178: 힙(heap)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_178'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'CA';

MERGE (n:Concept {id: '동적메모리_할당'})
SET     n.name = '동적메모리 할당',
    n.name_kr = '동적메모리 할당',
    n.domain = 'CA';

MERGE (n:Concept {id: 'malloc'})
SET     n.name = 'Malloc()',
    n.name_kr = 'Malloc()',
    n.domain = 'CA';

MERGE (n:Concept {id: 'free'})
SET     n.name = 'Free()',
    n.name_kr = 'Free()',
    n.domain = 'CA';

MERGE (n:Concept {id: '런타임시에_결정'})
SET     n.name = '런타임시에 결정',
    n.name_kr = '런타임시에 결정',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '동적메모리_할당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'malloc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'free'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '런타임시에_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Document {id: 'CA_178'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적메모리_할당'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'malloc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'free'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '런타임시에_결정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_179: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_179'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_180: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_180'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_187: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_187'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_188: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_188'})
SET doc.domain = 'CA';

// ================================================================
// CA 도메인 자동 생성 완료
// 노드: 100개
// 관계: 203개
// ================================================================