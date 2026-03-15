// ================================================================
// CA 도메인 (CA_101 ~ CA_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// CA_090.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_090.4'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_091.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_091.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_091.2: RISC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_091.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'risc'})
SET     n.name = 'RISC',
    n.name_kr = 'RISC',
    n.domain = 'CA',
    n.aliases = ['RISC'];

MERGE (n:Concept {id: 'cisc_risc_eisc'})
SET     n.name = 'CISC/RISC/EISC',
    n.name_kr = 'CISC/RISC/EISC',
    n.domain = 'CA',
    n.aliases = ['CISC/RISC/EISC'];

MERGE (n:Concept {id: 'cisc(수백개의_명령어'})
SET     n.name = 'CISC(수백개의 명령어',
    n.name_kr = 'CISC(수백개의 명령어',
    n.domain = 'CA';

MERGE (n:Concept {id: '가변길이_명령어'})
SET     n.name = '가변길이 명령어',
    n.name_kr = '가변길이 명령어',
    n.domain = 'CA';

MERGE (n:Concept {id: 'microprogram)'})
SET     n.name = 'Microprogram)',
    n.name_kr = 'Microprogram)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'risc(빈도높은_명령어_위주'})
SET     n.name = 'RISC(빈도높은 명령어 위주',
    n.name_kr = 'RISC(빈도높은 명령어 위주',
    n.domain = 'CA';

MERGE (n:Concept {id: '고정길이_명령어'})
SET     n.name = '고정길이 명령어',
    n.name_kr = '고정길이 명령어',
    n.domain = 'CA';

MERGE (n:Concept {id: 'hard-wired)'})
SET     n.name = 'Hard-wired)',
    n.name_kr = 'Hard-wired)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'eisc(오퍼랜드_확장'})
SET     n.name = 'EISC(오퍼랜드 확장',
    n.name_kr = 'EISC(오퍼랜드 확장',
    n.domain = 'CA';

MERGE (n:Concept {id: '명령어_길이'})
SET     n.name = '명령어 길이',
    n.name_kr = '명령어 길이',
    n.domain = 'CA';

MERGE (n:Concept {id: '파이프라이닝'})
SET     n.name = '파이프라이닝',
    n.name_kr = '파이프라이닝',
    n.domain = 'CA',
    n.definition = '명령어의 길이가 고정, 동일하여 파이프라이닝의 개념을 차용 - 명령어는 단계별로 인터리빙 하게 프로세싱';

MERGE (n:Concept {id: '인텔'})
SET     n.name = '인텔',
    n.name_kr = '인텔',
    n.domain = 'CA',
    n.definition = 'Si-Five 인수 검토';

MERGE (n:Concept {id: '구글'})
SET     n.name = '구글',
    n.name_kr = '구글',
    n.domain = 'CA',
    n.definition = 'RISC-V ISA Dev Group 운영';

MERGE (n:Concept {id: '화웨이'})
SET     n.name = '화웨이',
    n.name_kr = '화웨이',
    n.domain = 'CA',
    n.definition = 'RISC-V 도입 검토';

MERGE (n:Technology {id: '삼성'})
SET     n.name = '삼성',
    n.name_kr = '삼성',
    n.domain = 'CA',
    n.definition = 'RISC-V 기반 5G 통신 모뎀 및 이미지센서 상용화';

MERGE (n:Concept {id: 'lg'})
SET     n.name = 'LG',
    n.name_kr = 'LG',
    n.domain = 'CA',
    n.definition = 'RISC-V 기반 Neural Engine 개발',
    n.aliases = ['LG'];

MERGE (n:Concept {id: 'si_five'})
SET     n.name = 'Si-Five',
    n.name_kr = 'Si-Five',
    n.domain = 'CA',
    n.definition = 'Linley 가상화 프로세스',
    n.aliases = ['Si-Five'];

// --- 관계 ---

MERGE (a:Concept {id: 'cisc_risc_eisc'})
MERGE (b:Concept {id: 'cisc_risc_eisc'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'cisc(수백개의_명령어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '가변길이_명령어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'microprogram)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'risc(빈도높은_명령어_위주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '고정길이_명령어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'hard-wired)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'eisc(오퍼랜드_확장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '명령어_길이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '파이프라이닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '인텔'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '구글'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: '화웨이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Technology {id: '삼성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'lg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Concept {id: 'si_five'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Document {id: 'CA_091.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'risc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cisc_risc_eisc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cisc(수백개의_명령어'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가변길이_명령어'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'microprogram)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risc(빈도높은_명령어_위주'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정길이_명령어'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hard-wired)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eisc(오퍼랜드_확장'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령어_길이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파이프라이닝'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인텔'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구글'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화웨이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '삼성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lg'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'si_five'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_091.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_091.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_093: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_093'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_094: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_094'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_095.1: 슈퍼파이프라이닝
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_095.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '슈퍼파이프라이닝'})
SET     n.name = '슈퍼파이프라이닝',
    n.name_kr = '슈퍼파이프라이닝',
    n.domain = 'CA';

MERGE (n:Concept {id: '병렬처리'})
SET     n.name = '병렬처리',
    n.name_kr = '병렬처리',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '슈퍼파이프라이닝'})
MERGE (b:Concept {id: '병렬처리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '슈퍼파이프라이닝'})
MERGE (b:Document {id: 'CA_095.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '슈퍼파이프라이닝'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_095.2: VLIW(Very Long Instruction Word)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_095.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'very_long_instruction_word'})
SET     n.name = 'Very Long Instruction Word',
    n.name_kr = 'VLIW',
    n.domain = 'CA',
    n.aliases = ['Very Long Instruction Word', 'VLIW'];

MERGE (n:Concept {id: '병렬처리'})
SET     n.name = '병렬처리',
    n.name_kr = '병렬처리',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'very_long_instruction_word'})
MERGE (b:Concept {id: '병렬처리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'very_long_instruction_word'})
MERGE (b:Document {id: 'CA_095.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'very_long_instruction_word'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_095.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_095.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_096: 파이프라이닝 속도 향상
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_096'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '파이프라이닝_속도_향상'})
SET     n.name = '파이프라이닝 속도 향상',
    n.name_kr = '파이프라이닝 속도 향상',
    n.domain = 'CA';

MERGE (n:Concept {id: '병렬처리'})
SET     n.name = '병렬처리',
    n.name_kr = '병렬처리',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '파이프라이닝_속도_향상'})
MERGE (b:Concept {id: '병렬처리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '파이프라이닝_속도_향상'})
MERGE (b:Document {id: 'CA_096'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '파이프라이닝_속도_향상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_097.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_097.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_097.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_097.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_100: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_100'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_101: 병렬처리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_101'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '병렬처리'})
SET     n.name = '병렬처리',
    n.name_kr = '병렬처리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'misd'})
SET     n.name = 'MISD',
    n.name_kr = 'MISD',
    n.domain = 'CA',
    n.aliases = ['MISD'];

MERGE (n:Concept {id: 'mimd'})
SET     n.name = 'MIMD',
    n.name_kr = 'MIMD',
    n.domain = 'CA',
    n.aliases = ['MIMD'];

MERGE (n:Concept {id: 'sisd'})
SET     n.name = 'SISD',
    n.name_kr = 'SISD',
    n.domain = 'CA',
    n.aliases = ['SISD'];

MERGE (n:Concept {id: 'simd'})
SET     n.name = 'SIMD',
    n.name_kr = 'SIMD',
    n.domain = 'CA',
    n.aliases = ['SIMD'];

MERGE (n:Concept {id: '성능개선'})
SET     n.name = '성능개선',
    n.name_kr = '성능개선',
    n.domain = 'CA',
    n.definition = '다중 프로세서 처리';

MERGE (n:Concept {id: '일관성'})
SET     n.name = '일관성',
    n.name_kr = '일관성',
    n.domain = 'CA',
    n.definition = '프로세스간 통신';

MERGE (n:Concept {id: 'fine_grain_parallelism'})
SET     n.name = 'Fine-Grain Parallelism',
    n.name_kr = '미세-그레인 병렬성',
    n.domain = 'CA',
    n.definition = '프로그램을 가장 작은 단위로 분할 - 간단한 프로세서 구조 필요',
    n.aliases = ['Fine-Grain Parallelism', '미세-그레인 병렬성'];

MERGE (n:Concept {id: 'medium_grain_parallelism'})
SET     n.name = 'Medium-Grain Parallelism',
    n.name_kr = '중간-그레인 병렬성',
    n.domain = 'CA',
    n.definition = 'Fine-Grain과 Coarse-Grain의 중간 형태 - 저렴하고 고속 연산이 가능한 구조',
    n.aliases = ['Medium-Grain Parallelism', '중간-그레인 병렬성'];

MERGE (n:Concept {id: 'coarse_grain_parallelism'})
SET     n.name = 'Coarse-Grain Parallelism',
    n.name_kr = '큰-그레인 병렬성',
    n.domain = 'CA',
    n.definition = '많은 계산을 필요로 하는 작업 단위의 병렬 처리 - 고속 벡터 계산을 위한 파이프라인 ALU 필요',
    n.aliases = ['Coarse-Grain Parallelism', '큰-그레인 병렬성'];

MERGE (n:Concept {id: '단일_명령'})
SET     n.name = '단일 명령',
    n.name_kr = '단일 명령',
    n.domain = 'CA',
    n.definition = 'SISD (Single Instruction Single Data)';

MERGE (n:Concept {id: 'single_instruction_multi_data'})
SET     n.name = 'Single Instruction Multi Data',
    n.name_kr = 'SIMD',
    n.domain = 'CA',
    n.definition = '단일 명령 스트림, 다중 데이터 스트림 - 벡터 프로세서, 배열 프로세서 처리',
    n.aliases = ['Single Instruction Multi Data', 'SIMD'];

MERGE (n:Concept {id: '다중_명령'})
SET     n.name = '다중 명령',
    n.name_kr = '다중 명령',
    n.domain = 'CA',
    n.definition = 'MISD (Multi Instruction Single Data)';

MERGE (n:Concept {id: 'multi_instruction_multi_data'})
SET     n.name = 'Multi Instruction Multi Data',
    n.name_kr = 'MIMD',
    n.domain = 'CA',
    n.definition = '다중 명령 스트림, 다중 데이터 스트림 - 대부분의 병렬처리 시스템 - 다중 프로세서 시스템 - 공유메모리와 분산메모리 아키텍처로 분류',
    n.aliases = ['Multi Instruction Multi Data', 'MIMD'];

MERGE (n:Concept {id: '명령어_흐름'})
SET     n.name = '명령어 흐름',
    n.name_kr = '명령어 흐름',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_흐름'})
SET     n.name = '데이터 흐름',
    n.name_kr = '데이터 흐름',
    n.domain = 'CA';

MERGE (n:Concept {id: '아키텍처'})
SET     n.name = '아키텍처',
    n.name_kr = '아키텍처',
    n.domain = 'CA';

MERGE (n:Concept {id: 'loosely_coupled'})
SET     n.name = '약결합(Loosely Coupled) 방식',
    n.name_kr = '약결합(Loosely Coupled) 방식',
    n.domain = 'CA',
    n.definition = '각각의 처리기가 각각의 Local Memory를 가진 독립적인 구조로 구성됨 - 처리기 사이의 데이터 교환이 많지 않을 경우에 사용함';

MERGE (n:Concept {id: 'tightly_coupled'})
SET     n.name = '강결합(Tightly Coupled) 방식',
    n.name_kr = '강결합(Tightly Coupled) 방식',
    n.domain = 'CA',
    n.definition = '각각의 처리기가 하나의 공유 메모리를 사용하는 구조 - 처리기 사이의 데이터 교환이 빈번하게 발생할 때 유리한 구조임';

MERGE (n:Concept {id: 'uniform_memory_access'})
SET     n.name = 'Uniform Memory Access',
    n.name_kr = 'UMA',
    n.domain = 'CA',
    n.aliases = ['Uniform Memory Access', 'UMA'];

MERGE (n:Concept {id: 'non_uniform_memory_access'})
SET     n.name = 'Non-Uniform Memory Access',
    n.name_kr = 'NUMA',
    n.domain = 'CA',
    n.definition = 'UMA 모델의 한계를 극복하고 더 큰 규모의 시스템을 구성하기 위한 모델 - 다수의 UMA 모델들이 상호연결망에 의해 접속 - 분산 공유 기억장치 구조',
    n.aliases = ['Non-Uniform Memory Access', 'NUMA'];

MERGE (n:Concept {id: 'no_remote_memory_access'})
SET     n.name = 'No-Remote Memory Access',
    n.name_kr = 'NORMA',
    n.domain = 'CA',
    n.definition = '프로세서가 원격 기억장치에 직접 액세스할 수 없는 구조 - 프로세서들과 기억장치들은 메시지-전송(Message-Passing)을 지원하는 상호연결망으로 접속 - 분산-기억장치 시스템으로 부름',
    n.aliases = ['No-Remote Memory Access', 'NORMA'];

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'CA',
    n.definition = '두 대 이상의 프로세서로 구성되며 각 프로세서가 동일한 권한을 갖는 단일 노드로 구성';

MERGE (n:Metric {id: 'symmetric_multiprocessor'})
SET     n.name = 'Symmetric Multiprocessor',
    n.name_kr = 'SMP',
    n.domain = 'CA',
    n.aliases = ['Symmetric Multiprocessor', 'SMP'];

MERGE (n:Metric {id: 'massively_parallel_processor'})
SET     n.name = 'Massively Parallel Processor',
    n.name_kr = 'MMP',
    n.domain = 'CA',
    n.definition = '무공유 구조를 기반으로 하는 대규모 병렬처리시스템 - 수백 혹은 수천 개의 프로세싱 노드들로 구성 - 마이크로 커널 수준의 노드 OS 탑재',
    n.aliases = ['Massively Parallel Processor', 'MMP'];

MERGE (n:Standard {id: 'cache_coherent_numa'})
SET     n.name = 'Cache- Coherent NUMA',
    n.name_kr = 'CC-NUMA',
    n.domain = 'CA',
    n.definition = '독립적인 노드들(UMA, NUMA)이 상호연결망에 의해 접속 - 모든 노드들의 캐시 및 주기억장치들 사이에 데이터 일관성 유지 - SW 변경없이 SMP보다 더 큰 시스템 구축 가능',
    n.aliases = ['Cache- Coherent NUMA', 'CC-NUMA'];

MERGE (n:Concept {id: 'rmc'})
SET     n.name = 'RMC',
    n.name_kr = 'RMC',
    n.domain = 'CA',
    n.definition = 'Reflective Memory Cluster-Quad마다 하나의 운영체제 복사본을 갖는 다수 Quad로 구성됨/운영체제의 간섭없이 데이터가 전송되어 메모리 접근 빠름',
    n.aliases = ['RMC'];

MERGE (n:Standard {id: 'coma'})
SET     n.name = 'COMA',
    n.name_kr = 'COMA',
    n.domain = 'CA',
    n.definition = 'Cache-Only Memory Architecture – CC - NUMA구조처럼 단일노드 개념에 하드웨어적 캐시 일치성 있지만, 각 노드내에 메모리 갖지 않고 단지 큰 캐시로 구성됨',
    n.aliases = ['COMA'];

MERGE (n:Concept {id: '테스크_병렬성'})
SET     n.name = '테스크 병렬성',
    n.name_kr = '테스크 병렬성',
    n.domain = 'CA',
    n.definition = '데이터를 부분화하여 동일한 연산을 수행하는 스레드나 프로세스를 병렬적으로 실행하는 방법';

MERGE (n:Concept {id: '데이터_병렬성'})
SET     n.name = '데이터 병렬성',
    n.name_kr = '데이터 병렬성',
    n.domain = 'CA',
    n.definition = '각 스레드나 프로세스가 서로 다른 연산을 수행하고 병렬적으로 실행하는 방법';

// --- 관계 ---

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '병렬처리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'misd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'mimd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'sisd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'simd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '성능개선'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '일관성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'fine_grain_parallelism'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'medium_grain_parallelism'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'coarse_grain_parallelism'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '단일_명령'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'single_instruction_multi_data'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '다중_명령'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'multi_instruction_multi_data'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '명령어_흐름'})
MERGE (b:Concept {id: '데이터_흐름'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '명령어_흐름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '데이터_흐름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '아키텍처'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'loosely_coupled'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'tightly_coupled'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'uniform_memory_access'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'non_uniform_memory_access'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'no_remote_memory_access'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Metric {id: 'symmetric_multiprocessor'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Metric {id: 'massively_parallel_processor'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Standard {id: 'cache_coherent_numa'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: 'rmc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Standard {id: 'coma'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '테스크_병렬성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '데이터_병렬성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '테스크_병렬성'})
MERGE (b:Concept {id: '데이터_병렬성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '테스크_병렬성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Concept {id: '데이터_병렬성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Document {id: 'CA_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'misd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mimd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sisd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'simd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능개선'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fine_grain_parallelism'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'medium_grain_parallelism'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coarse_grain_parallelism'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_명령'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'single_instruction_multi_data'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_명령'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_instruction_multi_data'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명령어_흐름'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_흐름'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍처'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'loosely_coupled'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tightly_coupled'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uniform_memory_access'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_uniform_memory_access'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_remote_memory_access'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'symmetric_multiprocessor'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'massively_parallel_processor'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'cache_coherent_numa'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rmc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'coma'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스크_병렬성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_병렬성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_107: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_107'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_108.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_108.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_119: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_119'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_120: 데이터 백업방법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_120'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_백업방법'})
SET     n.name = '데이터 백업방법',
    n.name_kr = '데이터 백업방법',
    n.domain = 'CA';

MERGE (n:Metric {id: '고가용성'})
SET     n.name = '고가용성',
    n.name_kr = '고가용성',
    n.domain = 'CA';

MERGE (n:Concept {id: '백업수준_및_복구대상[이미지백업'})
SET     n.name = '백업수준 및 복구대상[이미지백업',
    n.name_kr = '백업수준 및 복구대상[이미지백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터백업]'})
SET     n.name = '데이터백업]',
    n.name_kr = '데이터백업]',
    n.domain = 'CA';

MERGE (n:Concept {id: 'vm'})
SET     n.name = 'Guest(VM)기반 백업',
    n.name_kr = 'Guest(VM)기반 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: 'proxy서버_기반_백업'})
SET     n.name = 'Proxy서버 기반 백업',
    n.name_kr = 'Proxy서버 기반 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '이미지_백업'})
SET     n.name = '이미지 백업',
    n.name_kr = '이미지 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_백업'})
SET     n.name = '데이터(파일) 백업',
    n.name_kr = '데이터(파일) 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '중앙집중식_백업'})
SET     n.name = '중앙집중식 백업',
    n.name_kr = '중앙집중식 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '분산_백업'})
SET     n.name = '분산 백업',
    n.name_kr = '분산 백업',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Metric {id: '고가용성'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '백업수준_및_복구대상[이미지백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '데이터백업]'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vm'})
MERGE (b:Concept {id: 'proxy서버_기반_백업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: 'vm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: 'proxy서버_기반_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이미지_백업'})
MERGE (b:Concept {id: '데이터_백업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '이미지_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '데이터_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '중앙집중식_백업'})
MERGE (b:Concept {id: '분산_백업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '중앙집중식_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Concept {id: '분산_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Document {id: 'CA_120'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_백업방법'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '고가용성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백업수준_및_복구대상[이미지백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터백업]'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy서버_기반_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중앙집중식_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_121.1: Clustering
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_121.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'clustering'})
SET     n.name = 'Clustering',
    n.name_kr = 'Clustering',
    n.domain = 'CA',
    n.aliases = ['Clustering'];

MERGE (n:Metric {id: '고가용성'})
SET     n.name = '고가용성',
    n.name_kr = '고가용성',
    n.domain = 'CA';

MERGE (n:Concept {id: '비즈니스_측면'})
SET     n.name = '비즈니스 측면',
    n.name_kr = '비즈니스 측면',
    n.domain = 'CA',
    n.definition = '가격대 성능비';

MERGE (n:Concept {id: '다양한_환경_만족'})
SET     n.name = '다양한 환경 만족',
    n.name_kr = '다양한 환경 만족',
    n.domain = 'CA',
    n.definition = '복잡하고 다양한 비즈니스 환경의 성능 만족';

MERGE (n:Concept {id: '유휴장비_활용'})
SET     n.name = '유휴장비 활용',
    n.name_kr = '유휴장비 활용',
    n.domain = 'CA',
    n.definition = '노후 유휴장비 활용성 증대(새로운 장비를 클러스터에 추가)';

MERGE (n:Concept {id: '기술측면'})
SET     n.name = '기술측면',
    n.name_kr = '기술측면',
    n.domain = 'CA',
    n.definition = 'SMP 서버의 보편화';

MERGE (n:Metric {id: '고가용성_기술'})
SET     n.name = '고가용성 기술',
    n.name_kr = '고가용성 기술',
    n.domain = 'CA',
    n.definition = 'Fail-over';

MERGE (n:Concept {id: 'single_system_image'})
SET     n.name = 'Single System Image',
    n.name_kr = 'Single System Image',
    n.domain = 'CA',
    n.definition = 'Virtualization',
    n.aliases = ['Single System Image'];

MERGE (n:Concept {id: '확장성_기술'})
SET     n.name = '확장성 기술',
    n.name_kr = '확장성 기술',
    n.domain = 'CA',
    n.definition = 'Scale Out';

MERGE (n:Concept {id: '관리_기술'})
SET     n.name = '관리 기술',
    n.name_kr = '관리 기술',
    n.domain = 'CA',
    n.definition = 'Load-balancing';

MERGE (n:Concept {id: '공유_스토리지'})
SET     n.name = '공유 스토리지',
    n.name_kr = '공유 스토리지',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_미러_구성'})
SET     n.name = '데이터 미러 구성',
    n.name_kr = '데이터 미러 구성',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Metric {id: '고가용성'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '비즈니스_측면'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '다양한_환경_만족'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '유휴장비_활용'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '기술측면'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Metric {id: '고가용성_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: 'single_system_image'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '확장성_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '관리_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '공유_스토리지'})
MERGE (b:Concept {id: '데이터_미러_구성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '공유_스토리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Concept {id: '데이터_미러_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Document {id: 'CA_121.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '고가용성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_측면'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_환경_만족'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유휴장비_활용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술측면'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '고가용성_기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'single_system_image'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성_기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리_기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유_스토리지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_미러_구성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_121.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_121.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_122: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_122'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_123: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_123'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_124: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_124'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_125: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_125'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_126: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_126'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_127.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_127.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_127.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_127.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_127.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_127.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_127.4: VTL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_127.4'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'vtl'})
SET     n.name = 'VTL',
    n.name_kr = 'VTL',
    n.domain = 'CA',
    n.aliases = ['VTL'];

MERGE (n:Concept {id: 'storage_구축'})
SET     n.name = 'Storage 구축',
    n.name_kr = 'Storage 구축',
    n.domain = 'CA';

MERGE (n:Concept {id: '가상백업'})
SET     n.name = '가상백업',
    n.name_kr = '가상백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '일체형_vtl'})
SET     n.name = '일체형 VTL',
    n.name_kr = '일체형 VTL',
    n.domain = 'CA';

MERGE (n:Concept {id: '분리형_vtl'})
SET     n.name = '분리형 VTL',
    n.name_kr = '분리형 VTL',
    n.domain = 'CA';

MERGE (n:Concept {id: 'vtl_백업'})
SET     n.name = 'VTL 백업',
    n.name_kr = 'VTL 백업',
    n.domain = 'CA';

MERGE (n:Concept {id: '테이프_백업'})
SET     n.name = '테이프 백업',
    n.name_kr = '테이프 백업',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: 'storage_구축'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: '가상백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: '일체형_vtl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: '분리형_vtl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vtl_백업'})
MERGE (b:Concept {id: '테이프_백업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: 'vtl_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Concept {id: '테이프_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Document {id: 'CA_127.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vtl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage_구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일체형_vtl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분리형_vtl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vtl_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테이프_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_127.5: CDP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_127.5'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'cdp'})
SET     n.name = 'CDP',
    n.name_kr = 'CDP',
    n.domain = 'CA',
    n.aliases = ['CDP'];

MERGE (n:Concept {id: 'storage_구축'})
SET     n.name = 'Storage 구축',
    n.name_kr = 'Storage 구축',
    n.domain = 'CA';

MERGE (n:Concept {id: '변경시점_캡쳐_및_추적'})
SET     n.name = '변경시점 캡쳐 및 추적',
    n.name_kr = '변경시점 캡쳐 및 추적',
    n.domain = 'CA';

MERGE (n:Concept {id: '복원'})
SET     n.name = '복원',
    n.name_kr = '복원',
    n.domain = 'CA';

MERGE (n:Concept {id: 'apit_복구'})
SET     n.name = 'APIT 복구',
    n.name_kr = 'APIT 복구',
    n.domain = 'CA',
    n.definition = 'Any-Point-In-Time, 다양한 시점 및 원하는 시점으로 복원이 가능';

MERGE (n:Concept {id: '실시간_백업'})
SET     n.name = '실시간 백업',
    n.name_kr = '실시간 백업',
    n.domain = 'CA',
    n.definition = '백업 윈도의 불필요, 지속적이고, 실시간 적인 데이터 백업';

MERGE (n:Concept {id: '최소부하'})
SET     n.name = '최소부하',
    n.name_kr = '최소부하',
    n.domain = 'CA',
    n.definition = '실시간 변경 데이터 백업에 따른 백업 서버의 트래픽(부하) 최소';

MERGE (n:Concept {id: '장_점'})
SET     n.name = '장 점',
    n.name_kr = '장 점',
    n.domain = 'CA';

MERGE (n:Concept {id: '단_점'})
SET     n.name = '단 점',
    n.name_kr = '단 점',
    n.domain = 'CA';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'CA';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: 'storage_구축'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '변경시점_캡쳐_및_추적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '복원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: 'apit_복구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '실시간_백업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '최소부하'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '장_점'})
MERGE (b:Concept {id: '단_점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '장_점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '단_점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Document {id: 'CA_127.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cdp'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage_구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경시점_캡쳐_및_추적'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복원'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'apit_복구'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_백업'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최소부하'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장_점'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단_점'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_128: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_128'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_129: Fan-out
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_129'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'fan_out'})
SET     n.name = 'Fan-out',
    n.name_kr = 'Fan-out',
    n.domain = 'CA',
    n.aliases = ['Fan-out'];

MERGE (n:Concept {id: '디지털논리회로'})
SET     n.name = '디지털논리회로',
    n.name_kr = '디지털논리회로',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'fan_out'})
MERGE (b:Concept {id: '디지털논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fan_out'})
MERGE (b:Document {id: 'CA_129'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fan_out'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_130: 조합논리회로_순차논리회로
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_130'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '조합논리회로_순차논리회로'})
SET     n.name = '조합논리회로_순차논리회로',
    n.name_kr = '조합논리회로_순차논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: '디지털논리회로'})
SET     n.name = '디지털논리회로',
    n.name_kr = '디지털논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: '출력값이_결정되는_회로'})
SET     n.name = '출력값이 결정되는 회로',
    n.name_kr = '출력값이 결정되는 회로',
    n.domain = 'CA';

MERGE (n:Concept {id: 'and'})
SET     n.name = 'AND',
    n.name_kr = 'AND',
    n.domain = 'CA',
    n.aliases = ['AND'];

MERGE (n:Concept {id: 'not)'})
SET     n.name = 'NOT)',
    n.name_kr = 'NOT)',
    n.domain = 'CA';

MERGE (n:Concept {id: '조합회로(반가산기'})
SET     n.name = '조합회로(반가산기',
    n.name_kr = '조합회로(반가산기',
    n.domain = 'CA';

MERGE (n:Concept {id: '전가산기)'})
SET     n.name = '전가산기)',
    n.name_kr = '전가산기)',
    n.domain = 'CA';

MERGE (n:Concept {id: '출력_뿐_아니라'})
SET     n.name = '출력 뿐 아니라',
    n.name_kr = '출력 뿐 아니라',
    n.domain = 'CA';

MERGE (n:Concept {id: '플립플롭(jk'})
SET     n.name = '플립플롭(JK',
    n.name_kr = '플립플롭(JK',
    n.domain = 'CA';

MERGE (n:Concept {id: 'rs'})
SET     n.name = 'RS',
    n.name_kr = 'RS',
    n.domain = 'CA',
    n.aliases = ['RS'];

MERGE (n:Concept {id: 't_f/f)'})
SET     n.name = 'T F/F)',
    n.name_kr = 'T F/F)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'combination_logic'})
SET     n.name = '조합논리회로',
    n.name_kr = '조합논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: '순차논리회로'})
SET     n.name = '순차논리회로',
    n.name_kr = '순차논리회로',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '디지털논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '출력값이_결정되는_회로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: 'and'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: 'not)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '조합회로(반가산기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '전가산기)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '출력_뿐_아니라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '플립플롭(jk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: 'rs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: 't_f/f)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'combination_logic'})
MERGE (b:Concept {id: '순차논리회로'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: 'combination_logic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Concept {id: '순차논리회로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Document {id: 'CA_130'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '조합논리회로_순차논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력값이_결정되는_회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'and'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'not)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조합회로(반가산기'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전가산기)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력_뿐_아니라'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플립플롭(jk'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rs'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 't_f/f)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'combination_logic'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순차논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_132: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_132'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_137: 래치
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_137'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '래치'})
SET     n.name = '래치',
    n.name_kr = '래치',
    n.domain = 'CA';

MERGE (n:Concept {id: '디지털논리회로'})
SET     n.name = '디지털논리회로',
    n.name_kr = '디지털논리회로',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '래치'})
MERGE (b:Concept {id: '디지털논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '래치'})
MERGE (b:Document {id: 'CA_137'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '래치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_138: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_138'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_139.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_139.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_139.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_139.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_139.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_139.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_140: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_140'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_141.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_141.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_141.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_141.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_142: HDL(Hardware Description Language)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_142'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'hardware_description_language'})
SET     n.name = 'Hardware Description Language',
    n.name_kr = 'HDL',
    n.domain = 'CA',
    n.aliases = ['Hardware Description Language', 'HDL'];

MERGE (n:Concept {id: '디지털_논리회로'})
SET     n.name = '디지털 논리회로',
    n.name_kr = '디지털 논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: 'hdl'})
SET     n.name = 'HDL',
    n.name_kr = 'HDL',
    n.domain = 'CA',
    n.aliases = ['HDL'];

MERGE (n:Concept {id: 'ip_자산'})
SET     n.name = 'IP 자산',
    n.name_kr = 'IP 자산',
    n.domain = 'CA';

MERGE (n:Concept {id: 'pld_설계'})
SET     n.name = 'PLD 설계',
    n.name_kr = 'PLD 설계',
    n.domain = 'CA';

MERGE (n:Concept {id: '재사용성'})
SET     n.name = '재사용성',
    n.name_kr = '재사용성',
    n.domain = 'CA';

MERGE (n:Concept {id: 'vhdl'})
SET     n.name = 'VHDL',
    n.name_kr = 'VHDL',
    n.domain = 'CA',
    n.aliases = ['VHDL'];

MERGE (n:Concept {id: 'velilog'})
SET     n.name = 'Velilog',
    n.name_kr = 'Velilog',
    n.domain = 'CA',
    n.aliases = ['Velilog'];

MERGE (n:Concept {id: 'abel'})
SET     n.name = 'ABEL',
    n.name_kr = 'ABEL',
    n.domain = 'CA',
    n.aliases = ['ABEL'];

MERGE (n:Concept {id: 'systemc'})
SET     n.name = 'SystemC',
    n.name_kr = 'SystemC',
    n.domain = 'CA',
    n.aliases = ['SystemC'];

MERGE (n:Concept {id: '선언_부'})
SET     n.name = '선언 부',
    n.name_kr = '선언 부',
    n.domain = 'CA',
    n.definition = 'Logic Definition';

MERGE (n:Concept {id: 'i_o_information'})
SET     n.name = 'I/O Information',
    n.name_kr = 'I/O Information',
    n.domain = 'CA',
    n.definition = '입출력 신호 명명 및 기본 성질 부여',
    n.aliases = ['I/O Information'];

MERGE (n:Concept {id: '로직_연결_부'})
SET     n.name = '로직 연결 부',
    n.name_kr = '로직 연결 부',
    n.domain = 'CA',
    n.definition = 'Inter-connect Information';

MERGE (n:Concept {id: '제어_정의_부'})
SET     n.name = '제어 정의 부',
    n.name_kr = '제어 정의 부',
    n.domain = 'CA',
    n.definition = 'Timing/Clock Information';

MERGE (n:Concept {id: '부가정보_정의_부'})
SET     n.name = '부가정보 정의 부',
    n.name_kr = '부가정보 정의 부',
    n.domain = 'CA',
    n.definition = 'Start, Stop, Exception 정보';

MERGE (n:Concept {id: '사양_결정'})
SET     n.name = '사양 결정',
    n.name_kr = '사양 결정',
    n.domain = 'CA',
    n.definition = '1) Input/Output Signal Map 2) Clock/Timing 사양 3) Target Information';

MERGE (n:Concept {id: 'ip_검색'})
SET     n.name = 'IP 검색',
    n.name_kr = 'IP 검색',
    n.domain = 'CA',
    n.definition = '1) 기존 설계 IP 재사용 여부 결정 2) 유료/무료 IP기능 Block 검색 3) HDL Library화';

MERGE (n:Concept {id: '기능_작성'})
SET     n.name = '기능 작성',
    n.name_kr = '기능 작성',
    n.domain = 'CA',
    n.definition = '1) IP 블록 연결 및 블록간 연결 검증 2) 신규 기능 작성 및 검증';

MERGE (n:Concept {id: 'simulation'})
SET     n.name = 'Simulation',
    n.name_kr = 'Simulation',
    n.domain = 'CA',
    n.definition = '1) Timing Simulation 2) Function Simulation',
    n.aliases = ['Simulation'];

MERGE (n:Concept {id: 'pld_검증'})
SET     n.name = 'PLD 검증',
    n.name_kr = 'PLD 검증',
    n.domain = 'CA',
    n.definition = '1) PLD에 결과물 Download 2) Target Board에서 동작 검증';

MERGE (n:Concept {id: 'ip_자산화'})
SET     n.name = 'IP 자산화',
    n.name_kr = 'IP 자산화',
    n.domain = 'CA',
    n.definition = '1) 검증된 기능별 Library화 2) IP Library에 등록/재사용';

MERGE (n:Concept {id: 'verilog'})
SET     n.name = 'Verilog',
    n.name_kr = 'Verilog',
    n.domain = 'CA',
    n.aliases = ['Verilog'];

// --- 관계 ---

MERGE (a:Concept {id: 'hdl'})
MERGE (b:Concept {id: '디지털_논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'ip_자산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'pld_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '재사용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'vhdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'velilog'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'abel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'systemc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '선언_부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'i_o_information'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '로직_연결_부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '제어_정의_부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '부가정보_정의_부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '사양_결정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'ip_검색'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: '기능_작성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'simulation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'pld_검증'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'ip_자산화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Concept {id: 'verilog'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'vhdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Concept {id: 'verilog'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Document {id: 'CA_142'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hardware_description_language'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hdl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_자산'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pld_설계'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재사용성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'velilog'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'abel'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'systemc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선언_부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'i_o_information'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로직_연결_부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어_정의_부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부가정보_정의_부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사양_결정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_검색'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_작성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'simulation'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pld_검증'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_자산화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'verilog'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_143: VHDL 설계 및 구성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_143'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'vhdl_설계_및_구성'})
SET     n.name = 'VHDL 설계 및 구성',
    n.name_kr = 'VHDL 설계 및 구성',
    n.domain = 'CA';

MERGE (n:Concept {id: '디지털_논리회로'})
SET     n.name = '디지털 논리회로',
    n.name_kr = '디지털 논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: 'vhdl'})
SET     n.name = 'VHDL',
    n.name_kr = 'VHDL',
    n.domain = 'CA',
    n.aliases = ['VHDL'];

MERGE (n:Concept {id: '합성'})
SET     n.name = '합성',
    n.name_kr = '합성',
    n.domain = 'CA';

MERGE (n:Concept {id: '배치와_라우트'})
SET     n.name = '배치와 라우트',
    n.name_kr = '배치와 라우트',
    n.domain = 'CA';

MERGE (n:Concept {id: '동작적레벨'})
SET     n.name = '동작적레벨',
    n.name_kr = '동작적레벨',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터흐름모델'})
SET     n.name = '데이터흐름모델(병행기술)',
    n.name_kr = '데이터흐름모델(병행기술)',
    n.domain = 'CA';

MERGE (n:Concept {id: '알고리즘모델'})
SET     n.name = '알고리즘모델(순차기술)',
    n.name_kr = '알고리즘모델(순차기술)',
    n.domain = 'CA';

MERGE (n:Concept {id: '구조적레벨'})
SET     n.name = '구조적레벨',
    n.name_kr = '구조적레벨',
    n.domain = 'CA';

MERGE (n:Concept {id: '구조적모델'})
SET     n.name = '구조적모델',
    n.name_kr = '구조적모델',
    n.domain = 'CA';

MERGE (n:Concept {id: '라이브러리'})
SET     n.name = '라이브러리',
    n.name_kr = '라이브러리',
    n.domain = 'CA';

MERGE (n:Concept {id: '패키지'})
SET     n.name = '패키지',
    n.name_kr = '패키지',
    n.domain = 'CA';

MERGE (n:Concept {id: 'entity'})
SET     n.name = 'entity',
    n.name_kr = 'entity',
    n.domain = 'CA',
    n.aliases = ['entity'];

MERGE (n:Concept {id: 'architecture'})
SET     n.name = 'architecture',
    n.name_kr = 'architecture',
    n.domain = 'CA',
    n.aliases = ['architecture'];

// --- 관계 ---

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Concept {id: '디지털_논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '배치와_라우트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '동작적레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '데이터흐름모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '알고리즘모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '구조적레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '구조적모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '라이브러리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '패키지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: 'entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: 'architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Document {id: 'CA_143'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치와_라우트'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작적레벨'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터흐름모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적레벨'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이브러리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패키지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'entity'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_144: Mealy and Moore Model
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_144'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'mealy_and_moore_model'})
SET     n.name = 'Mealy and Moore Model',
    n.name_kr = 'Mealy and Moore Model',
    n.domain = 'CA',
    n.aliases = ['Mealy and Moore Model'];

MERGE (n:Concept {id: '디지털논리회로'})
SET     n.name = '디지털논리회로',
    n.name_kr = '디지털논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: 'mealy_fsm'})
SET     n.name = 'Mealy FSM',
    n.name_kr = 'Mealy FSM',
    n.domain = 'CA',
    n.aliases = ['Mealy FSM'];

MERGE (n:Concept {id: 'moore_fsm'})
SET     n.name = 'Moore FSM',
    n.name_kr = 'Moore FSM',
    n.domain = 'CA',
    n.definition = '출력(Output)이 현재의 상태에 의해서만 결정되는 상태머신 - 데이터의 입력은 State 를 바꾸는 데만 사용되고, 출력에 영향을 미치지 않음 - Moore FSM 은 행위를 단순화 시킬 수 있음',
    n.aliases = ['Moore FSM'];

// --- 관계 ---

MERGE (a:Concept {id: 'mealy_and_moore_model'})
MERGE (b:Concept {id: '디지털논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mealy_and_moore_model'})
MERGE (b:Concept {id: 'mealy_fsm'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'mealy_and_moore_model'})
MERGE (b:Concept {id: 'moore_fsm'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'mealy_and_moore_model'})
MERGE (b:Document {id: 'CA_144'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mealy_and_moore_model'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mealy_fsm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'moore_fsm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_145: VHDL 설계 및 구성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_145'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'vhdl_설계_및_구성'})
SET     n.name = 'VHDL 설계 및 구성',
    n.name_kr = 'VHDL 설계 및 구성',
    n.domain = 'CA';

MERGE (n:Concept {id: '디지털_논리회로'})
SET     n.name = '디지털 논리회로',
    n.name_kr = '디지털 논리회로',
    n.domain = 'CA';

MERGE (n:Concept {id: 'vhdl'})
SET     n.name = 'VHDL',
    n.name_kr = 'VHDL',
    n.domain = 'CA',
    n.aliases = ['VHDL'];

MERGE (n:Concept {id: '합성'})
SET     n.name = '합성',
    n.name_kr = '합성',
    n.domain = 'CA';

MERGE (n:Concept {id: '배치와_라우트'})
SET     n.name = '배치와 라우트',
    n.name_kr = '배치와 라우트',
    n.domain = 'CA';

MERGE (n:Concept {id: '동작적레벨'})
SET     n.name = '동작적레벨',
    n.name_kr = '동작적레벨',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터흐름모델'})
SET     n.name = '데이터흐름모델(병행기술)',
    n.name_kr = '데이터흐름모델(병행기술)',
    n.domain = 'CA';

MERGE (n:Concept {id: '알고리즘모델'})
SET     n.name = '알고리즘모델(순차기술)',
    n.name_kr = '알고리즘모델(순차기술)',
    n.domain = 'CA';

MERGE (n:Concept {id: '구조적레벨'})
SET     n.name = '구조적레벨',
    n.name_kr = '구조적레벨',
    n.domain = 'CA';

MERGE (n:Concept {id: '구조적모델'})
SET     n.name = '구조적모델',
    n.name_kr = '구조적모델',
    n.domain = 'CA';

MERGE (n:Concept {id: '라이브러리'})
SET     n.name = '라이브러리',
    n.name_kr = '라이브러리',
    n.domain = 'CA';

MERGE (n:Concept {id: '패키지'})
SET     n.name = '패키지',
    n.name_kr = '패키지',
    n.domain = 'CA';

MERGE (n:Concept {id: 'entity'})
SET     n.name = 'entity',
    n.name_kr = 'entity',
    n.domain = 'CA',
    n.aliases = ['entity'];

MERGE (n:Concept {id: 'architecture'})
SET     n.name = 'architecture',
    n.name_kr = 'architecture',
    n.domain = 'CA',
    n.aliases = ['architecture'];

// --- 관계 ---

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Concept {id: '디지털_논리회로'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '배치와_라우트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '동작적레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '데이터흐름모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '알고리즘모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '구조적레벨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '구조적모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '라이브러리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: '패키지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: 'entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Concept {id: 'architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Document {id: 'CA_145'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vhdl_설계_및_구성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_논리회로'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vhdl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치와_라우트'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작적레벨'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터흐름모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적레벨'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적모델'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라이브러리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패키지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'entity'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_146: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_146'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_147: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_147'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_148: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_148'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_149.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_149.1'})
SET doc.domain = 'CA';

// ================================================================
// CA 도메인 자동 생성 완료
// 노드: 164개
// 관계: 340개
// ================================================================