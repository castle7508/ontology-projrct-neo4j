// ================================================================
// CA 도메인 (CA_051 ~ CA_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// CA_040.10: DMA(Direct Memory Access)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.10'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'direct_memory_access'})
SET     n.name = 'Direct Memory Access',
    n.name_kr = 'DMA',
    n.domain = 'CA',
    n.aliases = ['Direct Memory Access', 'DMA'];

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'dma'})
SET     n.name = 'DMA',
    n.name_kr = 'DMA',
    n.domain = 'CA',
    n.aliases = ['DMA'];

MERGE (n:Concept {id: '가._dma_설계_방식'})
SET     n.name = '가. DMA 설계 방식(동작모드)',
    n.name_kr = '가. DMA 설계 방식(동작모드)',
    n.domain = 'CA';

MERGE (n:Concept {id: '나._burst_mode'})
SET     n.name = '나. Burst Mode',
    n.name_kr = '나. Burst Mode',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cycle_stealing'})
SET     n.name = 'Cycle Stealing',
    n.name_kr = 'Cycle Stealing',
    n.domain = 'CA',
    n.aliases = ['Cycle Stealing'];

MERGE (n:Concept {id: 'demand_transfer_mode'})
SET     n.name = 'Demand Transfer Mode',
    n.name_kr = 'Demand Transfer Mode',
    n.domain = 'CA',
    n.aliases = ['Demand Transfer Mode'];

MERGE (n:Concept {id: 'dma_도입_전_입출력_방식'})
SET     n.name = 'DMA 도입 전 입출력 방식',
    n.name_kr = 'DMA 도입 전 입출력 방식',
    n.domain = 'CA',
    n.definition = 'Programmed Driven I/O';

MERGE (n:Concept {id: 'dma_사용이유'})
SET     n.name = 'DMA 사용이유',
    n.name_kr = 'DMA 사용이유',
    n.domain = 'CA',
    n.definition = 'CPU 자원 낭비 최소화';

MERGE (n:Concept {id: '동작원리'})
SET     n.name = '동작원리',
    n.name_kr = '동작원리',
    n.domain = 'CA',
    n.definition = '1) 데이터 전송이 필요할 때, 프로세서는 아래 정보가 포함된 명령을 DMA 모듈로 전송 ① 동작의 종류 (read/write) 지정 ② I/O 장치의 주소 ③ 데이터가 읽거나 쓰여질 기억장치의 시작 주소 ④ 전송될 데이터 수 2) DMA 모듈이 데이터 전송을 수행하며, 프로세서는 다른 일을 처리 3) 데이터 전송이 완료되면, DMA 모듈이 프로세서로 인터';

// --- 관계 ---

MERGE (a:Concept {id: 'dma'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: '가._dma_설계_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: '나._burst_mode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: 'cycle_stealing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: 'demand_transfer_mode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: 'dma_도입_전_입출력_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: 'dma_사용이유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Concept {id: '동작원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Document {id: 'CA_040.10'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'direct_memory_access'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dma'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가._dma_설계_방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '나._burst_mode'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cycle_stealing'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'demand_transfer_mode'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dma_도입_전_입출력_방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dma_사용이유'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작원리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.11: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.11'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.12: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.12'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.13: 메모리 사상 입출력 방식(Memory Mapped I/O) = 기억장치 사상 입출력
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.13'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '입출력장치_주소지정'})
SET     n.name = '입출력장치 주소지정',
    n.name_kr = '입출력장치 주소지정',
    n.domain = 'CA';

MERGE (n:Concept {id: '메모리_레지스터'})
SET     n.name = '메모리 레지스터',
    n.name_kr = '메모리 레지스터',
    n.domain = 'CA';

MERGE (n:Concept {id: '주소버스'})
SET     n.name = '주소버스',
    n.name_kr = '주소버스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'rdy_비트'})
SET     n.name = 'RDY 비트',
    n.name_kr = 'RDY 비트',
    n.domain = 'CA';

MERGE (n:Concept {id: 'start_비트'})
SET     n.name = 'START 비트',
    n.name_kr = 'START 비트',
    n.domain = 'CA';

MERGE (n:Concept {id: 'stor_명령'})
SET     n.name = 'STOR 명령',
    n.name_kr = 'STOR 명령',
    n.domain = 'CA';

MERGE (n:Concept {id: '입출력_동작_매커니즘'})
SET     n.name = '입출력 동작 매커니즘',
    n.name_kr = '입출력 동작 매커니즘',
    n.domain = 'CA',
    n.definition = '입출력 준비 상태확인';

MERGE (n:Concept {id: '입출력_명령동작'})
SET     n.name = '입출력 명령동작',
    n.name_kr = '입출력 명령동작',
    n.domain = 'CA',
    n.definition = '제어레지스터 주소의 최상위비트에 대해 입출력 동작의 시작명령을 나타내는 START비트로 사용';

MERGE (n:Concept {id: '레지스터_주소_처리'})
SET     n.name = '레지스터 주소 처리',
    n.name_kr = '레지스터 주소 처리',
    n.domain = 'CA',
    n.definition = 'CPU가 입출력 제어기내의 레지스터 주소들을 기억장치내의 기억장소들과 동일하게 취급';

MERGE (n:Concept {id: '제어기_레지스터_접근'})
SET     n.name = '제어기 레지스터 접근',
    n.name_kr = '제어기 레지스터 접근',
    n.domain = 'CA',
    n.definition = '명령어 사용 방식';

MERGE (n:Concept {id: '주소공간_활용_방식'})
SET     n.name = '주소공간 활용 방식',
    n.name_kr = '주소공간 활용 방식',
    n.domain = 'CA',
    n.definition = '제어기내 레지스터 주소에 기억장치 주소공간을 I/O주소공간으로 할당하여 주소공간 절반 감소';

MERGE (n:Concept {id: '주소버스_사용'})
SET     n.name = '주소버스 사용',
    n.name_kr = '주소버스 사용',
    n.domain = 'CA',
    n.definition = '레지스터 주소와 기억장치 내 기억장소를 동일하게 취급하여 동일한 주소버스를 사용';

// --- 관계 ---

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '메모리_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '주소버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: 'rdy_비트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: 'start_비트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: 'stor_명령'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '입출력_동작_매커니즘'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '입출력_명령동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '레지스터_주소_처리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '제어기_레지스터_접근'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '주소공간_활용_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Concept {id: '주소버스_사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_사상_입출력_방식_=_기억장치_사상_입출력'})
MERGE (b:Document {id: 'CA_040.13'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '입출력장치_주소지정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdy_비트'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'start_비트'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stor_명령'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_동작_매커니즘'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_명령동작'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '레지스터_주소_처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어기_레지스터_접근'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소공간_활용_방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소버스_사용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.14: 분리형(고립형) 입출력 방식(Isolated IO = I/O Mapped I/O) = 입출력 전용 주소 지정방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.14'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '입출력장치_주소지정'})
SET     n.name = '입출력장치 주소지정',
    n.name_kr = '입출력장치 주소지정',
    n.domain = 'CA';

MERGE (n:Concept {id: '별도_in/out_명령'})
SET     n.name = '별도 IN/OUT 명령',
    n.name_kr = '별도 IN/OUT 명령',
    n.domain = 'CA';

MERGE (n:Concept {id: 'hw구성복잡'})
SET     n.name = 'HW구성복잡',
    n.name_kr = 'HW구성복잡',
    n.domain = 'CA';

MERGE (n:Concept {id: '입출력_동작_메커니즘'})
SET     n.name = '입출력 동작 메커니즘',
    n.name_kr = '입출력 동작 메커니즘',
    n.domain = 'CA',
    n.definition = '입출력 준비 상태 확인';

MERGE (n:Concept {id: '입출력_명령동작'})
SET     n.name = '입출력 명령동작',
    n.name_kr = '입출력 명령동작',
    n.domain = 'CA',
    n.definition = '제어 레지스터 주소의 최상위 비트에 대해 입출력 동작의 시작 명령을 나타내는 START 비트로 사용';

MERGE (n:Concept {id: '레지스터_주소_처리'})
SET     n.name = '레지스터 주소 처리',
    n.name_kr = '레지스터 주소 처리',
    n.domain = 'CA',
    n.definition = '기억장치 주소공간과 입출력 장치 주소공간이 분리되어 CPU가 입출력 제어기내 레지스터 주소들을 기억장치 내 접근과는 다른 방식으로 취급';

MERGE (n:Concept {id: '제어기_레지스터_접근'})
SET     n.name = '제어기 레지스터 접근',
    n.name_kr = '제어기 레지스터 접근',
    n.domain = 'CA',
    n.definition = '명령어 사용 방식';

MERGE (n:Concept {id: '주소공간_활용_방식'})
SET     n.name = '주소공간 활용 방식',
    n.name_kr = '주소공간 활용 방식',
    n.domain = 'CA',
    n.definition = '기억장치 주소 공간과 I/O제어기 주소 공간이 분리되어 별도의 주소 공간을 사용하기 때문에 대용량의 메모리 공간 확보가능';

MERGE (n:Concept {id: '주소버스_사용'})
SET     n.name = '주소버스 사용',
    n.name_kr = '주소버스 사용',
    n.domain = 'CA',
    n.definition = '메모리와 입출력 장치가 별도의 주소버스 사용';

// --- 관계 ---

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '별도_in/out_명령'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: 'hw구성복잡'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '입출력_동작_메커니즘'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '입출력_명령동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '레지스터_주소_처리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '제어기_레지스터_접근'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '주소공간_활용_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Concept {id: '주소버스_사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '분리형_입출력_방식_=_입출력_전용_주소_지정방식'})
MERGE (b:Document {id: 'CA_040.14'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '입출력장치_주소지정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '별도_in/out_명령'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw구성복잡'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_동작_메커니즘'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_명령동작'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '레지스터_주소_처리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어기_레지스터_접근'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소공간_활용_방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소버스_사용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.4: RDMA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.4'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'rdma'})
SET     n.name = 'RDMA',
    n.name_kr = 'RDMA',
    n.domain = 'CA',
    n.aliases = ['RDMA'];

MERGE (n:Concept {id: '보조기억_장치'})
SET     n.name = '보조기억 장치',
    n.name_kr = '보조기억 장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '네트워크간_메모리전송'})
SET     n.name = '네트워크간 메모리전송',
    n.name_kr = '네트워크간 메모리전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '제로카피'})
SET     n.name = '제로카피',
    n.name_kr = '제로카피',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ib'})
SET     n.name = 'IB',
    n.name_kr = 'InfiniBand',
    n.domain = 'CA',
    n.aliases = ['IB', 'InfiniBand'];

MERGE (n:Concept {id: 'kernel_bypass'})
SET     n.name = 'Kernel Bypass',
    n.name_kr = 'Kernel Bypass',
    n.domain = 'CA',
    n.definition = '응용 프로그램은 컨텍스트 스위치를 수행할 필요 없이 사용자 공간에서 직접 데이터 전송을 수행 할 수 있습니다.',
    n.aliases = ['Kernel Bypass'];

MERGE (n:Concept {id: 'cpu부하_zero'})
SET     n.name = 'CPU부하 Zero',
    n.name_kr = 'CPU부하 Zero',
    n.domain = 'CA',
    n.definition = '응용 프로그램은 원격 시스템의 CPU를 소비하지 않고 원격 메모리에 액세스 할 수 있습니다. 원격 메모리 머신은 원격 프로세스 (또는 프로세서)의 개입없이 읽혀질 것입니다. 원격 CPU의 캐시는 액세스 된 메모리 내용으로 채워지지 않습니다.';

MERGE (n:Concept {id: '메시지기반'})
SET     n.name = '메시지기반',
    n.name_kr = '메시지기반',
    n.domain = 'CA',
    n.definition = '데이터는 스트림이 아닌 개별 메시지로 처리되므로 스트림을 다른 메시 지 / 트랜잭션으로 분리할 필요가 없습니다.';

MERGE (n:Concept {id: '분산/수집_항목지원'})
SET     n.name = '분산/수집 항목지원',
    n.name_kr = '분산/수집 항목지원',
    n.domain = 'CA',
    n.definition = 'RDMA는 다중 분산 / 수집 항목 (기본적으로 여러 메모리 버퍼 읽기 및 하나의 스트림 또는 하나의 스트림 가져 오기 및 여러 메모리 버퍼에 쓰기)을 사용하여 작업을 기본적으로 지원합니다';

// --- 관계 ---

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: '보조기억_장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: '네트워크간_메모리전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: '제로카피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: 'ib'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: 'kernel_bypass'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: 'cpu부하_zero'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: '메시지기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Concept {id: '분산/수집_항목지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Document {id: 'CA_040.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rdma'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억_장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크간_메모리전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제로카피'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ib'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel_bypass'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu부하_zero'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지기반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산/수집_항목지원'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.5: SCSI RDMA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.5'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'scsi_rdma'})
SET     n.name = 'SCSI RDMA',
    n.name_kr = 'SCSI RDMA',
    n.domain = 'CA',
    n.aliases = ['SCSI RDMA'];

MERGE (n:Concept {id: '보조기억_장치'})
SET     n.name = '보조기억 장치',
    n.name_kr = '보조기억 장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ib'})
SET     n.name = 'IB',
    n.name_kr = 'InfiniBand',
    n.domain = 'CA',
    n.aliases = ['IB', 'InfiniBand'];

MERGE (n:Concept {id: 'cpu_미개입'})
SET     n.name = 'CPU 미개입',
    n.name_kr = 'CPU 미개입',
    n.domain = 'CA';

MERGE (n:Concept {id: 'nw스택이_아닌_rdma_프로토콜'})
SET     n.name = 'NW스택이 아닌 RDMA 프로토콜',
    n.name_kr = 'NW스택이 아닌 RDMA 프로토콜',
    n.domain = 'CA';

MERGE (n:Concept {id: '저지연'})
SET     n.name = '저지연',
    n.name_kr = '저지연',
    n.domain = 'CA';

MERGE (n:Concept {id: 'zero_copy'})
SET     n.name = 'Zero-Copy',
    n.name_kr = 'Zero-Copy',
    n.domain = 'CA',
    n.aliases = ['Zero-Copy'];

// --- 관계 ---

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: '보조기억_장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: 'ib'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: 'cpu_미개입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: 'nw스택이_아닌_rdma_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: '저지연'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Concept {id: 'zero_copy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Document {id: 'CA_040.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'scsi_rdma'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억_장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ib'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_미개입'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw스택이_아닌_rdma_프로토콜'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저지연'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_copy'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.6'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.7: 입출력 제어방식의 데이터 전송방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.7'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '입출력_제어방식의_데이터_전송방식'})
SET     n.name = '입출력 제어방식의 데이터 전송방식',
    n.name_kr = '입출력 제어방식의 데이터 전송방식',
    n.domain = 'CA';

MERGE (n:Concept {id: '입출력_데이터_전송방시'})
SET     n.name = '입출력 데이터 전송방시',
    n.name_kr = '입출력 데이터 전송방시',
    n.domain = 'CA';

MERGE (n:Concept {id: '인터럽트_io'})
SET     n.name = '인터럽트 IO (다데포)',
    n.name_kr = '인터럽트 IO (다데포)',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '입출력_제어방식의_데이터_전송방식'})
MERGE (b:Concept {id: '인터럽트_io'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '입출력_제어방식의_데이터_전송방식'})
MERGE (b:Document {id: 'CA_040.7'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '입출력_제어방식의_데이터_전송방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_데이터_전송방시'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트_io'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.8'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_040.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.9'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_041.1: 주기억장치(메모리)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_041.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '주기억장치'})
SET     n.name = '주기억장치(메모리)',
    n.name_kr = '주기억장치(메모리)',
    n.domain = 'CA';

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '주기억장치'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '주기억장치'})
MERGE (b:Document {id: 'CA_041.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '주기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_041.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_041.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_042: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_042'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_043: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_043'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_046: 메모리 인터리빙(Memory Interleaving)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_046'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'memory_interleaving'})
SET     n.name = 'Memory Interleaving',
    n.name_kr = '메모리 인터리빙',
    n.domain = 'CA',
    n.aliases = ['Memory Interleaving', '메모리 인터리빙'];

MERGE (n:Concept {id: '컴퓨터_메모리,기억장치'})
SET     n.name = '컴퓨터 메모리,기억장치',
    n.name_kr = '컴퓨터 메모리,기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '상하혼뱅모_cs'})
SET     n.name = '상하혼뱅모 CS',
    n.name_kr = '상하혼뱅모 CS',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'memory_interleaving'})
MERGE (b:Concept {id: '컴퓨터_메모리,기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'memory_interleaving'})
MERGE (b:Concept {id: '상하혼뱅모_cs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'memory_interleaving'})
MERGE (b:Document {id: 'CA_046'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'memory_interleaving'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_메모리,기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상하혼뱅모_cs'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_047: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_047'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_048: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_048'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_049: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_049'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_050: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_050'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_054: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_054'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_058.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_058.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_059: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_059'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_063: 비휘발성 메모리 개념 및 종류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_063'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '비휘발성_메모리_개념_및_종류'})
SET     n.name = '비휘발성 메모리 개념 및 종류',
    n.name_kr = '비휘발성 메모리 개념 및 종류',
    n.domain = 'CA';

MERGE (n:Concept {id: 'non_volatile_memory,_nvm,_nvram'})
SET     n.name = '비휘발성 메모리',
    n.name_kr = '비휘발성 메모리',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '비휘발성_메모리_개념_및_종류'})
MERGE (b:Concept {id: 'non_volatile_memory,_nvm,_nvram'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '비휘발성_메모리_개념_및_종류'})
MERGE (b:Document {id: 'CA_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '비휘발성_메모리_개념_및_종류'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_volatile_memory,_nvm,_nvram'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_064.2: Flash Memory (NOR, NAND)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_064.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'flash_memory'})
SET     n.name = 'NOR, NAND',
    n.name_kr = 'Flash Memory',
    n.domain = 'CA',
    n.aliases = ['NOR, NAND', 'Flash Memory'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '비휘발성'})
SET     n.name = '비휘발성',
    n.name_kr = '비휘발성',
    n.domain = 'CA';

MERGE (n:Concept {id: '고집적도'})
SET     n.name = '고집적도',
    n.name_kr = '고집적도',
    n.domain = 'CA';

MERGE (n:Concept {id: '저전력'})
SET     n.name = '저전력',
    n.name_kr = '저전력',
    n.domain = 'CA';

MERGE (n:Concept {id: '고신뢰성'})
SET     n.name = '고신뢰성',
    n.name_kr = '고신뢰성',
    n.domain = 'CA';

MERGE (n:Concept {id: 'nor/nand(직렬/병렬'})
SET     n.name = 'NOR/NAND(직렬/병렬',
    n.name_kr = 'NOR/NAND(직렬/병렬',
    n.domain = 'CA';

MERGE (n:Concept {id: '랜덤/시퀀셜'})
SET     n.name = '랜덤/시퀀셜',
    n.name_kr = '랜덤/시퀀셜',
    n.domain = 'CA';

MERGE (n:Concept {id: '바이트/페이지'})
SET     n.name = '바이트/페이지',
    n.name_kr = '바이트/페이지',
    n.domain = 'CA';

MERGE (n:Concept {id: '직접도_낮음/높음)'})
SET     n.name = '직접도 낮음/높음)',
    n.name_kr = '직접도 낮음/높음)',
    n.domain = 'CA';

MERGE (n:Concept {id: '메모리셀_용량'})
SET     n.name = '메모리셀 용량',
    n.name_kr = '메모리셀 용량',
    n.domain = 'CA';

MERGE (n:Concept {id: 'slc'})
SET     n.name = 'SLC',
    n.name_kr = 'SLC',
    n.domain = 'CA',
    n.aliases = ['SLC'];

MERGE (n:Concept {id: 'mlc'})
SET     n.name = 'MLC',
    n.name_kr = 'MLC',
    n.domain = 'CA',
    n.aliases = ['MLC'];

MERGE (n:Concept {id: 'tlc'})
SET     n.name = 'TLC',
    n.name_kr = 'TLC',
    n.domain = 'CA',
    n.aliases = ['TLC'];

MERGE (n:Concept {id: 'single_level_cell'})
SET     n.name = 'Single Level Cell',
    n.name_kr = 'SLC',
    n.domain = 'CA',
    n.definition = '하나의 셀에 1bit(2)의 정보를 저장하는 NAND 플래시 메모리',
    n.aliases = ['Single Level Cell', 'SLC'];

MERGE (n:Concept {id: 'multi_level_cell'})
SET     n.name = 'Multi Level Cell',
    n.name_kr = 'MLC',
    n.domain = 'CA',
    n.definition = '하나의 셀에 2bit(4)의 정보를 저장하는 NAND 플래시 메모리',
    n.aliases = ['Multi Level Cell', 'MLC'];

MERGE (n:Concept {id: 'triple_level_cell'})
SET     n.name = 'Triple Level Cell',
    n.name_kr = 'TLC',
    n.domain = 'CA',
    n.definition = '하나의 셀에 3bit(8)의 정보를 저장하는 NAND 플래시 메모리',
    n.aliases = ['Triple Level Cell', 'TLC'];

MERGE (n:Concept {id: 'qlc'})
SET     n.name = 'QLC',
    n.name_kr = 'QLC',
    n.domain = 'CA',
    n.definition = '서버, 데이터 센터',
    n.aliases = ['QLC'];

MERGE (n:Concept {id: 'nor'})
SET     n.name = 'NOR',
    n.name_kr = 'NOR',
    n.domain = 'CA',
    n.aliases = ['NOR'];

MERGE (n:Concept {id: 'nand'})
SET     n.name = 'NAND',
    n.name_kr = 'NAND',
    n.domain = 'CA',
    n.aliases = ['NAND'];

MERGE (n:Concept {id: 'intel_strataflash'})
SET     n.name = 'INTEL Strataflash',
    n.name_kr = 'NOR',
    n.domain = 'CA',
    n.aliases = ['INTEL Strataflash', 'NOR'];

MERGE (n:Concept {id: 'samsung_nand'})
SET     n.name = 'SAMSUNG NAND',
    n.name_kr = 'NAND',
    n.domain = 'CA',
    n.aliases = ['SAMSUNG NAND', 'NAND'];

// --- 관계 ---

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '비휘발성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '고집적도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '저전력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '고신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'nor/nand(직렬/병렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '랜덤/시퀀셜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '바이트/페이지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '직접도_낮음/높음)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: '메모리셀_용량'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'slc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'mlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'tlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'single_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'multi_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'single_level_cell'})
MERGE (b:Concept {id: 'multi_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'single_level_cell'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'single_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_level_cell'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'multi_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'single_level_cell'})
MERGE (b:Concept {id: 'multi_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'single_level_cell'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'single_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_level_cell'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'multi_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'triple_level_cell'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'qlc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nor'})
MERGE (b:Concept {id: 'nand'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'nor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'nand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nor'})
MERGE (b:Concept {id: 'nand'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'nor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'nand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intel_strataflash'})
MERGE (b:Concept {id: 'samsung_nand'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'intel_strataflash'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Concept {id: 'samsung_nand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Document {id: 'CA_064.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'flash_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비휘발성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고집적도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고신뢰성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nor/nand(직렬/병렬'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '랜덤/시퀀셜'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바이트/페이지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접도_낮음/높음)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리셀_용량'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mlc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'single_level_cell'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_level_cell'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'triple_level_cell'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qlc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nor'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nand'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intel_strataflash'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'samsung_nand'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_064.3: 3D 낸드플래시(3D V-NAND)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_064.3'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '3d_낸드플래시'})
SET     n.name = '3D 낸드플래시(3D V-NAND)',
    n.name_kr = '3D 낸드플래시(3D V-NAND)',
    n.domain = 'CA';

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '3d낸드플래시'})
SET     n.name = '3D낸드플래시',
    n.name_kr = '3D낸드플래시',
    n.domain = 'CA';

MERGE (n:Concept {id: '구성요소_:_control_gate'})
SET     n.name = '구성요소 : Control Gate',
    n.name_kr = '구성요소 : Control Gate',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ploy_si_channel'})
SET     n.name = 'Ploy-Si Channel',
    n.name_kr = 'Ploy-Si Channel',
    n.domain = 'CA',
    n.aliases = ['Ploy-Si Channel'];

MERGE (n:Concept {id: 'mlc'})
SET     n.name = '멀티레벨셀(MLC) 기반',
    n.name_kr = '멀티레벨셀(MLC) 기반',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ctf'})
SET     n.name = 'CTF',
    n.name_kr = 'CTF',
    n.domain = 'CA',
    n.aliases = ['CTF'];

MERGE (n:Concept {id: 'v_nand'})
SET     n.name = 'V-NAND',
    n.name_kr = 'V-NAND',
    n.domain = 'CA',
    n.aliases = ['V-NAND'];

MERGE (n:Concept {id: '수직구조'})
SET     n.name = '수직구조',
    n.name_kr = '수직구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'deposition'})
SET     n.name = 'Deposition',
    n.name_kr = '증착',
    n.domain = 'CA',
    n.aliases = ['Deposition', '증착'];

MERGE (n:Concept {id: 'etching'})
SET     n.name = 'Etching',
    n.name_kr = '식각',
    n.domain = 'CA',
    n.aliases = ['Etching', '식각'];

MERGE (n:Concept {id: '한계'})
SET     n.name = '한계',
    n.name_kr = '한계',
    n.domain = 'CA',
    n.definition = '공정적 문제';

MERGE (n:Concept {id: '소자적_문제'})
SET     n.name = '소자적 문제',
    n.name_kr = '소자적 문제',
    n.domain = 'CA',
    n.definition = '부유 게이트 내 전자 개수의 감소 - 이웃한 셀 간 누설 전류 - 읽기 동작 시 판별 셀 간의 좁은 간격';

MERGE (n:Concept {id: '대응방법'})
SET     n.name = '대응방법',
    n.name_kr = '대응방법',
    n.domain = 'CA',
    n.definition = '기존의 단층 배열된 셀을 3차원 원통형 CTF(Charge Trap Flash) 멀티레벨 셀 구조 적용 - 전하를 안정적인 부도체에 저장해 위아래 셀간 간섭 영향을 대폭 줄여줌 - 2 차원 평면에 형성된 Cell을 접어서 세워 3 차원 구조로 공정';

MERGE (n:Concept {id: '간섭_현상_해결'})
SET     n.name = '간섭 현상 해결',
    n.name_kr = '간섭 현상 해결',
    n.domain = 'CA',
    n.definition = '셀 사이 간섭현상(2D낸드)으로 인한 미세화 기술은 물리적 한계 극복';

MERGE (n:Concept {id: '소비전력_저감_및_소형화'})
SET     n.name = '소비전력 저감 및 소형화',
    n.name_kr = '소비전력 저감 및 소형화',
    n.domain = 'CA',
    n.definition = '소비전력 50% 절감 및 기판면적 소형화';

MERGE (n:Concept {id: '비용_절감'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'CA',
    n.definition = '48단 이상 적층 할 경우, 평면 NAND보다 원가 낮아짐';

// --- 관계 ---

MERGE (a:Concept {id: '3d낸드플래시'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '구성요소_:_control_gate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'ploy_si_channel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'mlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'ctf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'v_nand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '수직구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'deposition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: 'etching'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '소자적_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '대응방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '간섭_현상_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '소비전력_저감_및_소형화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Concept {id: '비용_절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Document {id: 'CA_064.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3d_낸드플래시'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d낸드플래시'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성요소_:_control_gate'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ploy_si_channel'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mlc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ctf'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v_nand'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수직구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deposition'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'etching'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소자적_문제'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방법'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간섭_현상_해결'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소비전력_저감_및_소형화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_절감'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_064.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_064.4'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_064.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_064.5'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_064.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_064.6'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_065: PRAM (Phase-change RAM)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_065'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'phase_change_ram'})
SET     n.name = 'Phase-change RAM',
    n.name_kr = 'PRAM',
    n.domain = 'CA',
    n.aliases = ['Phase-change RAM', 'PRAM'];

MERGE (n:Concept {id: '비휘발성_메모리'})
SET     n.name = '비휘발성 메모리',
    n.name_kr = '비휘발성 메모리',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'phase_change_ram'})
MERGE (b:Document {id: 'CA_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'phase_change_ram'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비휘발성_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_067: C-RAM (Chalcogenide RAM)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_067'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'chalcogenide_ram'})
SET     n.name = 'Chalcogenide RAM',
    n.name_kr = 'C-RAM',
    n.domain = 'CA',
    n.aliases = ['Chalcogenide RAM', 'C-RAM'];

MERGE (n:Concept {id: '비휘발성_메모리'})
SET     n.name = '비휘발성 메모리',
    n.name_kr = '비휘발성 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '상변환'})
SET     n.name = '상변환',
    n.name_kr = '상변환',
    n.domain = 'CA';

MERGE (n:Concept {id: 'chalcogenide'})
SET     n.name = 'Chalcogenide',
    n.name_kr = 'Chalcogenide',
    n.domain = 'CA',
    n.aliases = ['Chalcogenide'];

MERGE (n:Concept {id: 'pram'})
SET     n.name = 'PRAM',
    n.name_kr = 'PRAM',
    n.domain = 'CA',
    n.aliases = ['PRAM'];

// --- 관계 ---

MERGE (a:Concept {id: 'chalcogenide_ram'})
MERGE (b:Concept {id: '상변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chalcogenide_ram'})
MERGE (b:Concept {id: 'chalcogenide'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chalcogenide_ram'})
MERGE (b:Concept {id: 'pram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chalcogenide_ram'})
MERGE (b:Document {id: 'CA_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'chalcogenide_ram'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비휘발성_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상변환'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'chalcogenide'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pram'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_068: Cache Memory
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_068'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'cache_memory'})
SET     n.name = 'Cache Memory',
    n.name_kr = 'Cache Memory',
    n.domain = 'CA',
    n.aliases = ['Cache Memory'];

MERGE (n:Concept {id: 'cahememory'})
SET     n.name = 'CaheMemory',
    n.name_kr = 'CaheMemory',
    n.domain = 'CA',
    n.aliases = ['CaheMemory'];

MERGE (n:Concept {id: '캐시메모리'})
SET     n.name = '캐시메모리',
    n.name_kr = '캐시메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'locality'})
SET     n.name = 'Locality',
    n.name_kr = 'Locality',
    n.domain = 'CA',
    n.aliases = ['Locality'];

MERGE (n:Concept {id: 'mapping'})
SET     n.name = 'Mapping',
    n.name_kr = 'Mapping',
    n.domain = 'CA',
    n.aliases = ['Mapping'];

MERGE (n:Concept {id: 'coherence'})
SET     n.name = 'Coherence',
    n.name_kr = 'Coherence',
    n.domain = 'CA',
    n.aliases = ['Coherence'];

MERGE (n:Concept {id: 'cache_hierarchy'})
SET     n.name = 'Cache Hierarchy',
    n.name_kr = 'Cache Hierarchy',
    n.domain = 'CA',
    n.aliases = ['Cache Hierarchy'];

MERGE (n:Concept {id: '시간적_locality'})
SET     n.name = '시간적 Locality',
    n.name_kr = '시간적 Locality',
    n.domain = 'CA',
    n.definition = '최근에 참조된 기억장소가 가까운 장래에 계속 참조될 가능성이 높은 성질 Ex) 순환(Looping), 서브프로그램, LRU(Least Recently Used)Stack';

MERGE (n:Metric {id: '공간적_locality'})
SET     n.name = '공간적 Locality',
    n.name_kr = '공간적 Locality',
    n.domain = 'CA',
    n.definition = '최근에 참조된 기억장소와 가까운 기억장소가 가까운 장래에 계속 참조될 가능성이 높은 성질 Ex) Array, Sequential Processing';

MERGE (n:Concept {id: '순차적_locality'})
SET     n.name = '순차적 Locality',
    n.name_kr = '순차적 Locality',
    n.domain = 'CA',
    n.definition = '분기가 없는 한 데이터가 기억장치에 저장된 순서대로 순차적으로 인출되고 실행';

MERGE (n:Concept {id: 'virtual_memory'})
SET     n.name = 'Virtual Memory',
    n.name_kr = 'Virtual Memory',
    n.domain = 'CA',
    n.definition = 'Thrashing 해결 Working Set 기법 : 지역성 원리를 이용한 Working Set로 인한 페이지 교환을 최소화, Page fault로 인한 페이지 교환을 최소화',
    n.aliases = ['Virtual Memory'];

MERGE (n:Concept {id: 'cdn'})
SET     n.name = 'CDN',
    n.name_kr = 'CDN',
    n.domain = 'CA',
    n.definition = 'Cache Server 등 지역성 원리를 이용하여 컨텐츠의 신속한 전송',
    n.aliases = ['CDN'];

// --- 관계 ---

MERGE (a:Concept {id: '캐시메모리'})
MERGE (b:Concept {id: 'cahememory'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'mapping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'coherence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'cache_hierarchy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: '시간적_locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Metric {id: '공간적_locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: '순차적_locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'virtual_memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Concept {id: 'cdn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Document {id: 'CA_068'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cahememory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐시메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'locality'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coherence'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_hierarchy'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간적_locality'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '공간적_locality'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순차적_locality'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdn'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_069: 캐시의 일관성(Cache Coherence) 유지방법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_069'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'cache_coherence'})
SET     n.name = '캐시의 일관성(Cache Coherence) 유지방법',
    n.name_kr = '캐시의 일관성(Cache Coherence) 유지방법',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cache'})
SET     n.name = 'Cache',
    n.name_kr = 'Cache',
    n.domain = 'CA',
    n.aliases = ['Cache'];

MERGE (n:Concept {id: 'cache_일관성_유지방법'})
SET     n.name = 'Cache 일관성 유지방법',
    n.name_kr = 'Cache 일관성 유지방법',
    n.domain = 'CA';

MERGE (n:Concept {id: '캐시_불일치_현상'})
SET     n.name = '캐시 불일치 현상',
    n.name_kr = '캐시 불일치 현상',
    n.domain = 'CA';

MERGE (n:Concept {id: '공유_캐시기억장치'})
SET     n.name = '공유 캐시기억장치',
    n.name_kr = '공유 캐시기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '공유변수'})
SET     n.name = '공유변수',
    n.name_kr = '공유변수',
    n.domain = 'CA';

MERGE (n:Concept {id: 'snoopy_protocal'})
SET     n.name = '스누피 프로토콜',
    n.name_kr = '스누피 프로토콜',
    n.domain = 'CA';

MERGE (n:Concept {id: '쓰기무효'})
SET     n.name = '쓰기무효',
    n.name_kr = '쓰기무효',
    n.domain = 'CA';

MERGE (n:Concept {id: '쓰기갱신'})
SET     n.name = '쓰기갱신',
    n.name_kr = '쓰기갱신',
    n.domain = 'CA';

MERGE (n:Concept {id: '버스_감시_시스템'})
SET     n.name = '버스 감시 시스템',
    n.name_kr = '버스 감시 시스템',
    n.domain = 'CA';

MERGE (n:Concept {id: 'directory_protocol'})
SET     n.name = '디렉토리 프로토콜',
    n.name_kr = '디렉토리 프로토콜',
    n.domain = 'CA';

MERGE (n:Concept {id: '캐시_제어기'})
SET     n.name = '캐시 제어기',
    n.name_kr = '캐시 제어기',
    n.domain = 'CA';

MERGE (n:Concept {id: '중앙제어기'})
SET     n.name = '중앙제어기',
    n.name_kr = '중앙제어기',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'cache_일관성_유지방법'})
MERGE (b:Concept {id: 'cache'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '캐시_불일치_현상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '공유_캐시기억장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '공유변수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: 'snoopy_protocal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '쓰기무효'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '쓰기갱신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '버스_감시_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: 'directory_protocol'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '캐시_제어기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: '중앙제어기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'directory_protocol'})
MERGE (b:Concept {id: 'snoopy_protocal'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: 'directory_protocol'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Concept {id: 'snoopy_protocal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Document {id: 'CA_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cache_coherence'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_일관성_유지방법'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐시_불일치_현상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유_캐시기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유변수'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snoopy_protocal'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쓰기무효'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쓰기갱신'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버스_감시_시스템'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'directory_protocol'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐시_제어기'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중앙제어기'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_070: 직접(Direct)사상, 연관(Associative)사상, 집합연관(Set Associative) 사상
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_070'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'cache'})
SET     n.name = 'Cache',
    n.name_kr = 'Cache',
    n.domain = 'CA',
    n.aliases = ['Cache'];

MERGE (n:Concept {id: 'direct_mapping'})
SET     n.name = 'Direct Mapping',
    n.name_kr = '직접사상',
    n.domain = 'CA',
    n.aliases = ['Direct Mapping', '직접사상'];

MERGE (n:Concept {id: '태그_필드'})
SET     n.name = '태그 필드',
    n.name_kr = '태그 필드',
    n.domain = 'CA';

MERGE (n:Concept {id: '단어_필드'})
SET     n.name = '단어 필드',
    n.name_kr = '단어 필드',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cache_hit'})
SET     n.name = 'Cache Hit',
    n.name_kr = 'Cache Hit',
    n.domain = 'CA',
    n.aliases = ['Cache Hit'];

MERGE (n:Concept {id: 'cache_miss'})
SET     n.name = 'Cache Miss',
    n.name_kr = 'Cache Miss',
    n.domain = 'CA',
    n.aliases = ['Cache Miss'];

MERGE (n:Concept {id: '개요'})
SET     n.name = '개요',
    n.name_kr = '개요',
    n.domain = 'CA',
    n.definition = '주기억장치의 블록들이 지정된 어느 한 캐시라인으로만 사상(적재) 될 수 있음 - 각 블록은 지정된 특정 라인에만 적재될 수 있다는 것';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'CA';

MERGE (n:Concept {id: '동작_절차'})
SET     n.name = '동작 절차',
    n.name_kr = '동작 절차',
    n.domain = 'CA',
    n.definition = '① 캐시 라인 선택';

MERGE (n:Concept {id: '②_태그_비교'})
SET     n.name = '② 태그 비교',
    n.name_kr = '② 태그 비교',
    n.domain = 'CA',
    n.definition = '태그 메모리 검사하여 동일 시 Hit, 아닌 경우 Miss';

MERGE (n:Concept {id: '③_캐시_적중'})
SET     n.name = '③ 캐시 적중',
    n.name_kr = '③ 캐시 적중',
    n.domain = 'CA',
    n.definition = '캐시 적중 시 여러 요소 중 원하는 요소 워드필드로 선택';

MERGE (n:Concept {id: '④_캐시_미스'})
SET     n.name = '④ 캐시 미스',
    n.name_kr = '④ 캐시 미스',
    n.domain = 'CA',
    n.definition = '2단계 불일치 시 원하는 블록 주기억장치에서 캐시로 적재';

MERGE (n:Concept {id: '주소_형식'})
SET     n.name = '주소 형식',
    n.name_kr = '주소 형식',
    n.domain = 'CA',
    n.definition = '태그 필드(t 비트) : 태그 번호 - 라인 번호(s 비트) : 캐시의 m = 2s 개의 라인들 중의 하나를 지정 - 단어 필드(w 비트) : 각 블록 내 2w 개 단어들 중의 하나를 구분';

MERGE (n:Concept {id: '②_캐시_적중'})
SET     n.name = '② 캐시 적중',
    n.name_kr = '② 캐시 적중',
    n.domain = 'CA',
    n.definition = '태그 메모리 일치 시 캐시 적중';

MERGE (n:Concept {id: '③_워드_필드_조회'})
SET     n.name = '③ 워드 필드 조회',
    n.name_kr = '③ 워드 필드 조회',
    n.domain = 'CA',
    n.definition = '캐시 블록에 포함된 요소들 중 원하는 요소 워드필드 이용하여 선택';

MERGE (n:Concept {id: '세트_연관_사상의_적용'})
SET     n.name = '세트 연관 사상의 적용',
    n.name_kr = '세트 연관 사상의 적용',
    n.domain = 'CA',
    n.definition = '2-way 세트 연관 사상이 보편적으로 사용 → 캐시 세트 당 두개의 슬롯을 가지는 구조 → 직접 사상보다 캐시 적중률 매우 향상 - 4-way 세트 연관 사상 → 비교적 적은 추가 비용으로 성능을 더욱 향상';

MERGE (n:Concept {id: '한계점'})
SET     n.name = '한계점',
    n.name_kr = '한계점',
    n.domain = 'CA',
    n.definition = '세트당 슬롯의 수를 4보다 높여도 성능은 크게 향상되지 않음';

// --- 관계 ---

MERGE (a:Concept {id: 'direct_mapping'})
MERGE (b:Concept {id: 'cache'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '태그_필드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '단어_필드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: 'cache_hit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: 'cache_miss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '동작_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '②_태그_비교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '③_캐시_적중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '④_캐시_미스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '주소_형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '②_캐시_적중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '③_워드_필드_조회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '세트_연관_사상의_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Concept {id: '한계점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'direct'})
MERGE (b:Document {id: 'CA_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cache'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'direct_mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태그_필드'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단어_필드'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_hit'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_miss'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개요'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_절차'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_태그_비교'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_캐시_적중'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_캐시_미스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소_형식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_캐시_적중'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_워드_필드_조회'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세트_연관_사상의_적용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계점'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_073: MESI
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_073'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'mesi'})
SET     n.name = 'MESI',
    n.name_kr = 'MESI',
    n.domain = 'CA',
    n.aliases = ['MESI'];

MERGE (n:Concept {id: 'cache_memory'})
SET     n.name = 'Cache Memory',
    n.name_kr = 'Cache Memory',
    n.domain = 'CA',
    n.aliases = ['Cache Memory'];

MERGE (n:Concept {id: 'modified'})
SET     n.name = '수정(Modified)상태',
    n.name_kr = '수정(Modified)상태',
    n.domain = 'CA';

MERGE (n:Concept {id: 'exclusive'})
SET     n.name = '배타(Exclusive)상태',
    n.name_kr = '배타(Exclusive)상태',
    n.domain = 'CA';

MERGE (n:Concept {id: 'shared'})
SET     n.name = '공유(Shared)상태',
    n.name_kr = '공유(Shared)상태',
    n.domain = 'CA';

MERGE (n:Concept {id: 'invalid'})
SET     n.name = '무효(Invalid)상태',
    n.name_kr = '무효(Invalid)상태',
    n.domain = 'CA';

MERGE (n:Concept {id: 'modify'})
SET     n.name = 'Modify',
    n.name_kr = '수정',
    n.domain = 'CA',
    n.definition = '데이터가 수정(변경)된 상태',
    n.aliases = ['Modify', '수정'];

MERGE (n:Concept {id: 'sw_기법'})
SET     n.name = 'SW 기법',
    n.name_kr = 'SW 기법',
    n.domain = 'CA',
    n.definition = '공유 cache 사용';

MERGE (n:Concept {id: '공유변수_cache_미사용'})
SET     n.name = '공유변수 cache 미사용',
    n.name_kr = '공유변수 cache 미사용',
    n.domain = 'CA',
    n.definition = '공유변수를 cache에 저장하지 않음, 성능저하 야기';

MERGE (n:Concept {id: 'hw_기법'})
SET     n.name = 'HW 기법',
    n.name_kr = 'HW 기법',
    n.domain = 'CA',
    n.definition = '버스감시 메커니즘 사용';

MERGE (n:Concept {id: '디렉토리_기반_일관성_유지_프로토콜'})
SET     n.name = '디렉토리 기반 일관성 유지 프로토콜',
    n.name_kr = '디렉토리 기반 일관성 유지 프로토콜',
    n.domain = 'CA',
    n.definition = 'Cache의 정보상태를 디렉토리에 저장하여 데이터 일관성을 유지하는 방법 Full Map Directory: 데이터에 대한 Directory를 주기억 장치에 저장하고 디렉토리에 데이터에 대한 블록을 가진 캐시를 가리키는 포인터와 상태가 저장 Limit Directory: Full Map Directory를 작게 유지 Chained Directory: Dir';

// --- 관계 ---

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'cache_memory'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'modified'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'exclusive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'shared'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'invalid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'modify'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'sw_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: '공유변수_cache_미사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: 'hw_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Concept {id: '디렉토리_기반_일관성_유지_프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Document {id: 'CA_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mesi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modified'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'exclusive'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shared'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invalid'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modify'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_기법'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유변수_cache_미사용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_기법'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디렉토리_기반_일관성_유지_프로토콜'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_074: 쓰기정책 (Write Policy)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_074'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'write_policy'})
SET     n.name = 'Write Policy',
    n.name_kr = '쓰기정책',
    n.domain = 'CA',
    n.aliases = ['Write Policy', '쓰기정책'];

MERGE (n:Concept {id: 'cahememory'})
SET     n.name = 'CaheMemory',
    n.name_kr = 'CaheMemory',
    n.domain = 'CA',
    n.aliases = ['CaheMemory'];

MERGE (n:Concept {id: 'write_through'})
SET     n.name = 'Write Through',
    n.name_kr = 'Write Through',
    n.domain = 'CA',
    n.aliases = ['Write Through'];

MERGE (n:Concept {id: 'write_back'})
SET     n.name = 'Write Back',
    n.name_kr = 'Write Back',
    n.domain = 'CA',
    n.aliases = ['Write Back'];

MERGE (n:Concept {id: '캐쉬_일관성_발생원인'})
SET     n.name = '캐쉬 일관성 발생원인',
    n.name_kr = '캐쉬 일관성 발생원인',
    n.domain = 'CA';

MERGE (n:Concept {id: '캐쉬_일관성_문제_해결방안'})
SET     n.name = '캐쉬 일관성 문제 해결방안',
    n.name_kr = '캐쉬 일관성 문제 해결방안',
    n.domain = 'CA';

MERGE (n:Concept {id: '무효_상태'})
SET     n.name = '무효(I: Invalid) 상태',
    n.name_kr = '무효(I: Invalid) 상태',
    n.domain = 'CA',
    n.definition = '캐쉬 내용 ≠ 주기억장치 내용';

MERGE (n:Concept {id: '배타_상태'})
SET     n.name = '배타(E: Exclusive) 상태',
    n.name_kr = '배타(E: Exclusive) 상태',
    n.domain = 'CA',
    n.definition = '유일한 복사본, 주기억장치의 내용과 동일한 상태';

MERGE (n:Concept {id: '공유_상태'})
SET     n.name = '공유(S: Shared) 상태',
    n.name_kr = '공유(S: Shared) 상태',
    n.domain = 'CA',
    n.definition = '데이터가 두 개 이상 프로세서 캐쉬에 적재 상태';

// --- 관계 ---

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: 'cahememory'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: 'write_through'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: 'write_back'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: '캐쉬_일관성_발생원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: '캐쉬_일관성_문제_해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_through'})
MERGE (b:Concept {id: 'write_back'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: 'write_through'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: 'write_back'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: '무효_상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: '배타_상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Concept {id: '공유_상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Document {id: 'CA_074'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'write_policy'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cahememory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'write_through'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'write_back'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐쉬_일관성_발생원인'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐쉬_일관성_문제_해결방안'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무효_상태'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배타_상태'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유_상태'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_075: Cache Flush/Cache Clean
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_075'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'cache_flush_cache_clean'})
SET     n.name = 'Cache Flush/Cache Clean',
    n.name_kr = 'Cache Flush/Cache Clean',
    n.domain = 'CA',
    n.aliases = ['Cache Flush/Cache Clean'];

MERGE (n:Concept {id: 'cache'})
SET     n.name = 'Cache',
    n.name_kr = 'Cache',
    n.domain = 'CA',
    n.aliases = ['Cache'];

// --- 관계 ---

MERGE (a:Concept {id: 'cache_flush_cache_clean'})
MERGE (b:Concept {id: 'cache'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cache_flush_cache_clean'})
MERGE (b:Document {id: 'CA_075'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cache_flush_cache_clean'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_076: 교체 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_076'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '교체_알고리즘'})
SET     n.name = '교체 알고리즘',
    n.name_kr = '교체 알고리즘',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cache'})
SET     n.name = 'Cache',
    n.name_kr = 'Cache',
    n.domain = 'CA',
    n.aliases = ['Cache'];

MERGE (n:Concept {id: 'lru'})
SET     n.name = 'LRU',
    n.name_kr = 'LRU',
    n.domain = 'CA',
    n.aliases = ['LRU'];

MERGE (n:Concept {id: 'lfu'})
SET     n.name = 'LFU',
    n.name_kr = 'LFU',
    n.domain = 'CA',
    n.aliases = ['LFU'];

MERGE (n:Concept {id: 'fifo'})
SET     n.name = 'FIFO',
    n.name_kr = 'FIFO',
    n.domain = 'CA',
    n.aliases = ['FIFO'];

MERGE (n:Concept {id: 'rr'})
SET     n.name = 'RR',
    n.name_kr = 'RR',
    n.domain = 'CA',
    n.aliases = ['RR'];

// --- 관계 ---

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Concept {id: 'cache'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Concept {id: 'lru'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Concept {id: 'lfu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Concept {id: 'fifo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Concept {id: 'rr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Document {id: 'CA_076'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '교체_알고리즘'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lru'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lfu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fifo'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rr'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_078.2: 가상 메모리(Virtual Memory)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_078.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'virtual_memory'})
SET     n.name = 'Virtual Memory',
    n.name_kr = '가상 메모리',
    n.domain = 'CA',
    n.aliases = ['Virtual Memory', '가상 메모리'];

MERGE (n:Concept {id: '할배인교'})
SET     n.name = '할배인교',
    n.name_kr = '할배인교',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'virtual_memory'})
MERGE (b:Concept {id: 'virtual_memory'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'virtual_memory'})
MERGE (b:Concept {id: '할배인교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_memory'})
MERGE (b:Document {id: 'CA_078.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'virtual_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '할배인교'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_079: 주소 변환(Address Translation) 기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_079'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'address_translation'})
SET     n.name = '주소 변환(Address Translation) 기법',
    n.name_kr = '주소 변환(Address Translation) 기법',
    n.domain = 'CA';

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'page_map_table'})
SET     n.name = 'Page Map Table',
    n.name_kr = 'PMT',
    n.domain = 'CA',
    n.aliases = ['Page Map Table', 'PMT'];

MERGE (n:Concept {id: 'tlb_hit_miss'})
SET     n.name = 'TLB Hit/Miss',
    n.name_kr = 'TLB Hit/Miss',
    n.domain = 'CA',
    n.aliases = ['TLB Hit/Miss'];

MERGE (n:Concept {id: 'page_fault'})
SET     n.name = 'Page fault',
    n.name_kr = 'Page fault',
    n.domain = 'CA',
    n.aliases = ['Page fault'];

MERGE (n:Concept {id: 'locality'})
SET     n.name = 'Locality',
    n.name_kr = 'Locality',
    n.domain = 'CA',
    n.aliases = ['Locality'];

MERGE (n:Concept {id: 'direct_mapping'})
SET     n.name = 'Direct Mapping',
    n.name_kr = '직접사상',
    n.domain = 'CA',
    n.definition = '주기억장치에서 PMT(Page Mapping Table)을 유지/관리 - 모든 페이지항목이 PMT에 존재 - 주소변환에 많은 시간이 소요',
    n.aliases = ['Direct Mapping', '직접사상'];

MERGE (n:Concept {id: 'associate_mapping'})
SET     n.name = 'Associate Mapping',
    n.name_kr = '간접사상',
    n.domain = 'CA',
    n.definition = '고속캐시(Associative memory)에서 매핑테이블을 보관 - 속도가 빠른 장점이 있으나 고비용',
    n.aliases = ['Associate Mapping', '간접사상'];

MERGE (n:Concept {id: '직접/간접사상'})
SET     n.name = '직접/간접사상',
    n.name_kr = '직접/간접사상',
    n.domain = 'CA',
    n.definition = 'PMT를 주기억장치와 연관기억장치에 분산 저장 - 지역성(Locality)에 따라 재사용 가능성이 높은 최근 참조된 페이지는 AMP (Associate Mapping Table)에 보관하고 나머지는 PMT에 보관';

MERGE (n:Concept {id: '동작방식'})
SET     n.name = '동작방식',
    n.name_kr = '동작방식',
    n.domain = 'CA';

MERGE (n:Concept {id: '세부절차'})
SET     n.name = '세부절차',
    n.name_kr = '세부절차',
    n.domain = 'CA',
    n.definition = '① 수행중인 프로세스는 논리적인 주소를 참조 ② 페이지 테이블에 저장되어 있는 페이지 프레임을 검색 ③ 검색된 페이지 프레임과 변위 주소 값을 더해서 변환 ④ 변환된 물리적 주소 값을 통해 메인 메모리 접근';

MERGE (n:Concept {id: '가상주소_단위'})
SET     n.name = '가상주소 단위',
    n.name_kr = '가상주소 단위',
    n.domain = 'CA';

MERGE (n:Concept {id: 'paging_구성요소'})
SET     n.name = 'Paging 구성요소',
    n.name_kr = 'Paging 구성요소',
    n.domain = 'CA',
    n.definition = 'Page';

MERGE (n:Concept {id: 'main_memory'})
SET     n.name = 'Main memory',
    n.name_kr = 'Main memory',
    n.domain = 'CA',
    n.definition = '실제 물리적인 주소 공간을 지닌 Unit',
    n.aliases = ['Main memory'];

MERGE (n:Concept {id: 'page_frame'})
SET     n.name = 'Page Frame',
    n.name_kr = 'Page Frame',
    n.domain = 'CA',
    n.definition = '일정한 크기로 나뉘어진 메인 메모리 단위',
    n.aliases = ['Page Frame'];

MERGE (n:Concept {id: 'page_table'})
SET     n.name = 'Page Table',
    n.name_kr = 'Page Table',
    n.domain = 'CA',
    n.definition = 'Page들을 리스트로 구성하고 있는 집합',
    n.aliases = ['Page Table'];

MERGE (n:Concept {id: '상태_설명'})
SET     n.name = '상태 설명',
    n.name_kr = '상태 설명',
    n.domain = 'CA';

MERGE (n:Concept {id: '동작절차'})
SET     n.name = '동작절차',
    n.name_kr = '동작절차',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'page_map_table'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'tlb_hit_miss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'page_fault'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'direct_mapping'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'associate_mapping'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '직접/간접사상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '동작방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '세부절차'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '가상주소_단위'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'paging_구성요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'main_memory'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'page_frame'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: 'page_table'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상태_설명'})
MERGE (b:Concept {id: '동작절차'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '상태_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Concept {id: '동작절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Document {id: 'CA_079'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'address_translation'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_map_table'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb_hit_miss'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'locality'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'direct_mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'associate_mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접/간접사상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작방식'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부절차'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상주소_단위'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paging_구성요소'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'main_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_frame'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_table'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태_설명'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작절차'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_080: Paging 기법(고정분할), Segmentation(가변분할)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_080'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'paging_기법,_segmentation'})
SET     n.name = 'Paging 기법(고정분할), Segmentation(가변분할)',
    n.name_kr = 'Paging 기법(고정분할), Segmentation(가변분할)',
    n.domain = 'CA';

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '관리정책'})
SET     n.name = '관리정책',
    n.name_kr = '관리정책',
    n.domain = 'CA';

MERGE (n:Concept {id: '고정분할,_가변분할'})
SET     n.name = '고정분할, 가변분할',
    n.name_kr = '고정분할, 가변분할',
    n.domain = 'CA';

MERGE (n:Concept {id: '고정분할'})
SET     n.name = '고정분할(페이징)',
    n.name_kr = '고정분할(페이징)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'segmentation'})
SET     n.name = '가변분할(세그멘테이션)',
    n.name_kr = '가변분할(세그멘테이션)',
    n.domain = 'CA';

MERGE (n:Concept {id: '매핑테이블'})
SET     n.name = '매핑테이블',
    n.name_kr = '매핑테이블',
    n.domain = 'CA';

MERGE (n:Concept {id: '개요'})
SET     n.name = '개요',
    n.name_kr = '개요',
    n.domain = 'CA',
    n.definition = '메모리를 고정 크기의 프레임/페이지로 나누어 페이지 번호와 프레임 번호를 맵핑하여 할당하는 메모리 관리 기법';

MERGE (n:Concept {id: '매핑_테이블'})
SET     n.name = '매핑 테이블',
    n.name_kr = '매핑 테이블',
    n.domain = 'CA',
    n.definition = '매핑 테이블(페이지번호, 프레임번호) 유지';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '관리정책'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '고정분할,_가변분할'})
MERGE (b:Concept {id: '관리정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: '고정분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: 'segmentation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: '매핑테이블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: '매핑_테이블'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Document {id: 'CA_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'paging_기법,_segmentation'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리정책'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정분할,_가변분할'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고정분할'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'segmentation'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매핑테이블'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개요'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매핑_테이블'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_082: 메모리 단편화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_082'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '메모리_단편화'})
SET     n.name = '메모리 단편화',
    n.name_kr = '메모리 단편화',
    n.domain = 'CA';

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '할배인교'})
SET     n.name = '할배인교',
    n.name_kr = '할배인교',
    n.domain = 'CA';

MERGE (n:Concept {id: '메모리_단편화_개념'})
SET     n.name = '메모리 단편화 개념',
    n.name_kr = '메모리 단편화 개념',
    n.domain = 'CA',
    n.definition = '메모리 상에서 프로그램에 의해 사용되지 못하고 낭비되는 부분적인 공간이 발생하는 현상';

MERGE (n:Concept {id: '메모리_단편화_종류'})
SET     n.name = '메모리 단편화 종류',
    n.name_kr = '메모리 단편화 종류',
    n.domain = 'CA',
    n.definition = '외부 단편화';

MERGE (n:Concept {id: '내부_단편화'})
SET     n.name = '내부 단편화',
    n.name_kr = '내부 단편화',
    n.domain = 'CA',
    n.definition = '분할된 공간에 프로그램 적재 후 남는 공간 - 고정분할 또는 세그먼트 기법을 사용하면 내부 단편화 발생';

MERGE (n:Concept {id: '공통'})
SET     n.name = '공통',
    n.name_kr = '공통',
    n.domain = 'CA',
    n.definition = '통합';

MERGE (n:Concept {id: 'compaction'})
SET     n.name = '압축',
    n.name_kr = '압축',
    n.domain = 'CA',
    n.definition = '현재 사용되는 모든 기억 공간을 주기억장치의 한쪽 끝으로 옮김으로써 하나의 큰 기억 공간으로 합치는 기법';

MERGE (n:Concept {id: '재배치'})
SET     n.name = '재배치',
    n.name_kr = '재배치',
    n.domain = 'CA',
    n.definition = '모든 작업을 하나의 작업 큐에 넣어서 어느 분할에서도 실행 가능하게 하는 기법';

MERGE (n:Concept {id: 'memory_pool'})
SET     n.name = '메모리 풀',
    n.name_kr = '메모리 풀',
    n.domain = 'CA',
    n.definition = '메모리를 미리 할당 받고 메모리 풀을 만들어 필요할 때 마다 사용하고 반납하는 기법 (메모리 풀을 사용하기 위한 공통 인터페이스) - 메모리 풀들을 메모리 풀이 사용하는 응용 프로그램에 따라 조정';

MERGE (n:Concept {id: '외부단편화'})
SET     n.name = '외부단편화',
    n.name_kr = '외부단편화',
    n.domain = 'CA',
    n.definition = '버디 메모리';

MERGE (n:Concept {id: '내부단편화'})
SET     n.name = '내부단편화',
    n.name_kr = '내부단편화',
    n.domain = 'CA',
    n.definition = '슬랩 할당자';

MERGE (n:Concept {id: '메모리_할당과_해제_과정'})
SET     n.name = '메모리 할당과 해제 과정',
    n.name_kr = '메모리 할당과 해제 과정',
    n.domain = 'CA';

MERGE (n:Concept {id: '할당'})
SET     n.name = '할당',
    n.name_kr = '할당',
    n.domain = 'CA',
    n.definition = '2page 요청 : 2page의 공간이 있는지 확인. 적합한 공간의 2page 할당 2page 요청 : 2page 적합한 공간 부재. 8page의 메모리를 2page, 2page, 4page인 2n 으로 분할 후 2page 할당';

MERGE (n:Concept {id: '해제'})
SET     n.name = '해제',
    n.name_kr = '해제',
    n.domain = 'CA',
    n.definition = '2page 반납 : 사용 후 반납한 2page에 대해 메모리 해제 2page 반납 : 사용 후 반납한 2page에 대해 메모리 해제 후 주변 메모리(Buddy)와 다히 합쳐서 n2 인 8Page 블록으로 재구성';

MERGE (n:Concept {id: '메모리_할당'})
SET     n.name = '메모리 할당',
    n.name_kr = '메모리 할당',
    n.domain = 'CA',
    n.definition = '* Slab: 슬랩 할당자가 할당하는 최소 단위';

MERGE (n:Concept {id: '할당_종류'})
SET     n.name = '할당 종류',
    n.name_kr = '할당 종류',
    n.domain = 'CA',
    n.definition = 'Slab_full';

MERGE (n:Concept {id: 'slab_partial'})
SET     n.name = 'Slab_partial',
    n.name_kr = 'Slab_partial',
    n.domain = 'CA',
    n.definition = '오브젝트(Object)의 일부가 할당된 Slab';

MERGE (n:Concept {id: 'slab_free'})
SET     n.name = 'Slab_free',
    n.name_kr = 'Slab_free',
    n.domain = 'CA',
    n.definition = '오브젝트(Object)가 전혀 할당되지 않은 Slab';

MERGE (n:Concept {id: 'buddy_allocator'})
SET     n.name = 'Buddy Allocator',
    n.name_kr = 'Buddy Allocator',
    n.domain = 'CA',
    n.aliases = ['Buddy Allocator'];

MERGE (n:Concept {id: 'slab_allocator'})
SET     n.name = 'Slab Allocator',
    n.name_kr = 'Slab Allocator',
    n.domain = 'CA',
    n.aliases = ['Slab Allocator'];

// --- 관계 ---

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '할배인교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '메모리_단편화_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '메모리_단편화_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '내부_단편화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '공통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'compaction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '재배치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'memory_pool'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '외부단편화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '내부단편화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '메모리_할당과_해제_과정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '할당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '해제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '메모리_할당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: '할당_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'slab_partial'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'slab_free'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'buddy_allocator'})
MERGE (b:Concept {id: 'slab_allocator'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'buddy_allocator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Concept {id: 'slab_allocator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Document {id: 'CA_082'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '메모리_단편화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '할배인교'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_단편화_개념'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_단편화_종류'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부_단편화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compaction'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재배치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'memory_pool'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부단편화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부단편화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_할당과_해제_과정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '할당'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해제'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_할당'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '할당_종류'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slab_partial'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slab_free'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'buddy_allocator'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slab_allocator'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_083: 벨레디의 이상현상(Belady's Anomaly)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_083'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '벨레디의_이상현상'})
SET     n.name = '벨레디의 이상현상(Belady\'s Anomaly)',
    n.name_kr = '벨레디의 이상현상(Belady\'s Anomaly)',
    n.domain = 'CA';

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'page_fault'})
SET     n.name = 'Page Fault',
    n.name_kr = 'Page Fault',
    n.domain = 'CA',
    n.aliases = ['Page Fault'];

MERGE (n:Concept {id: 'belady’s_anomaly'})
SET     n.name = 'Belady’s Anomaly',
    n.name_kr = 'Belady’s Anomaly',
    n.domain = 'CA';

MERGE (n:Concept {id: '프레임_수'})
SET     n.name = '프레임 수',
    n.name_kr = '프레임 수',
    n.domain = 'CA';

MERGE (n:Concept {id: 'clock'})
SET     n.name = 'Clock',
    n.name_kr = 'SCR',
    n.domain = 'CA',
    n.aliases = ['Clock', 'SCR'];

MERGE (n:Concept {id: 'lru'})
SET     n.name = 'LRU',
    n.name_kr = 'LRU',
    n.domain = 'CA',
    n.aliases = ['LRU'];

MERGE (n:Concept {id: 'lfu'})
SET     n.name = 'LFU',
    n.name_kr = 'LFU',
    n.domain = 'CA',
    n.aliases = ['LFU'];

MERGE (n:Concept {id: 'nur'})
SET     n.name = 'NUR',
    n.name_kr = 'NUR',
    n.domain = 'CA',
    n.aliases = ['NUR'];

MERGE (n:Concept {id: '페이지_교체_정책'})
SET     n.name = '페이지 교체 정책',
    n.name_kr = '페이지 교체 정책',
    n.domain = 'CA',
    n.definition = 'LRU 사용';

MERGE (n:Concept {id: 'opt_사용'})
SET     n.name = 'OPT 사용',
    n.name_kr = 'OPT 사용',
    n.domain = 'CA',
    n.definition = '앞으로 가장 오랫동안 사용하지 않을 페이지를 교체';

MERGE (n:Concept {id: '최적화_설계_원칙'})
SET     n.name = '최적화 설계 원칙',
    n.name_kr = '최적화 설계 원칙',
    n.domain = 'CA',
    n.definition = 'Locality';

MERGE (n:Concept {id: 'page_fault_frequency'})
SET     n.name = 'Page Fault Frequency',
    n.name_kr = 'PFF',
    n.domain = 'CA',
    n.definition = '페이지 부재율의 상한/하한을 정해 프레임 개수를 통해 직접적으로 페이지 부재율을 예측/조절하는 방법',
    n.aliases = ['Page Fault Frequency', 'PFF'];

MERGE (n:Concept {id: 'working_set'})
SET     n.name = 'Working Set',
    n.name_kr = 'Working Set',
    n.domain = 'CA',
    n.definition = '한 프로세스가 Active 하게 참조하는 Page 집합인 Working Set을 정하여 주기억장치에 상주시키는 방법',
    n.aliases = ['Working Set'];

// --- 관계 ---

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'page_fault'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'belady’s_anomaly'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: '프레임_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'clock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'lru'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'lfu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'nur'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: '페이지_교체_정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'opt_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: '최적화_설계_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'page_fault_frequency'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Concept {id: 'working_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Document {id: 'CA_083'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '벨레디의_이상현상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'belady’s_anomaly'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프레임_수'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clock'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lru'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lfu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nur'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이지_교체_정책'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opt_사용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적화_설계_원칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault_frequency'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'working_set'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_084: 요구페이징(Demand Paging)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_084'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'demand_paging'})
SET     n.name = 'Demand Paging',
    n.name_kr = '요구페이징',
    n.domain = 'CA',
    n.aliases = ['Demand Paging', '요구페이징'];

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'lazy_swapper'})
SET     n.name = 'Lazy Swapper',
    n.name_kr = 'Lazy Swapper',
    n.domain = 'CA',
    n.aliases = ['Lazy Swapper'];

MERGE (n:Concept {id: 'pager'})
SET     n.name = 'Pager',
    n.name_kr = 'Pager',
    n.domain = 'CA',
    n.aliases = ['Pager'];

MERGE (n:Concept {id: 'page_fault_trap'})
SET     n.name = 'Page-Fault-Trap',
    n.name_kr = 'Page-Fault-Trap',
    n.domain = 'CA',
    n.aliases = ['Page-Fault-Trap'];

MERGE (n:Concept {id: 'thrashing'})
SET     n.name = 'Thrashing',
    n.name_kr = 'Thrashing',
    n.domain = 'CA',
    n.aliases = ['Thrashing'];

// --- 관계 ---

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Concept {id: 'lazy_swapper'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Concept {id: 'pager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Concept {id: 'page_fault_trap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Concept {id: 'thrashing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Document {id: 'CA_084'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'demand_paging'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lazy_swapper'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pager'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault_trap'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_085: TLB(Transaction Look-aside Buffer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_085'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'transaction_look_aside_buffer'})
SET     n.name = 'Transaction Look-aside Buffer',
    n.name_kr = 'TLB',
    n.domain = 'CA',
    n.aliases = ['Transaction Look-aside Buffer', 'TLB'];

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '성능향상'})
SET     n.name = '성능향상',
    n.name_kr = '성능향상',
    n.domain = 'CA';

MERGE (n:Concept {id: '메모리_참조시간_단축'})
SET     n.name = '메모리 참조시간 단축',
    n.name_kr = '메모리 참조시간 단축',
    n.domain = 'CA';

MERGE (n:Concept {id: 'tlb_hit'})
SET     n.name = 'TLB Hit',
    n.name_kr = 'TLB Hit',
    n.domain = 'CA',
    n.aliases = ['TLB Hit'];

MERGE (n:Concept {id: 'tlb_miss'})
SET     n.name = 'TLB miss',
    n.name_kr = 'TLB miss',
    n.domain = 'CA',
    n.aliases = ['TLB miss'];

MERGE (n:Concept {id: '페이지_fault'})
SET     n.name = '페이지 Fault',
    n.name_kr = '페이지 Fault',
    n.domain = 'CA';

MERGE (n:Concept {id: '상태설명'})
SET     n.name = '상태설명',
    n.name_kr = '상태설명',
    n.domain = 'CA';

MERGE (n:Concept {id: 'tlb_동작'})
SET     n.name = 'TLB 동작',
    n.name_kr = 'TLB 동작',
    n.domain = 'CA';

MERGE (n:Concept {id: 'tlb'})
SET     n.name = 'TLB',
    n.name_kr = 'TLB',
    n.domain = 'CA',
    n.definition = 'TLB Hit',
    n.aliases = ['TLB'];

MERGE (n:Concept {id: 'tlb_update'})
SET     n.name = 'TLB Update',
    n.name_kr = 'TLB Update',
    n.domain = 'CA',
    n.definition = '검색된 페이지 테이블의 맵핑 정보를 TLB 에 저장',
    n.aliases = ['TLB Update'];

MERGE (n:Concept {id: '페이지_테이블'})
SET     n.name = '페이지 테이블',
    n.name_kr = '페이지 테이블',
    n.domain = 'CA',
    n.definition = '페이지 테이블 Hit';

MERGE (n:Concept {id: 'page_fault'})
SET     n.name = 'Page Fault',
    n.name_kr = '페이지 테이블 Miss',
    n.domain = 'CA',
    n.definition = '논리주소가 페이지 테이블에 존재하지 않으므로 HDD 등 보조기억장치를 검색하여 주기억장치에 적재',
    n.aliases = ['Page Fault', '페이지 테이블 Miss'];

MERGE (n:Concept {id: '페이지_테이블_update'})
SET     n.name = '페이지 테이블 Update',
    n.name_kr = '페이지 테이블 Update',
    n.domain = 'CA',
    n.definition = '적재된 주기억장치의 물리주소 맵핑 정보를 페이지 테이블에 저장';

MERGE (n:Concept {id: '직접사상에_의한_주소_변환'})
SET     n.name = '직접사상에 의한 주소 변환',
    n.name_kr = '직접사상에 의한 주소 변환',
    n.domain = 'CA';

MERGE (n:Concept {id: 'tlb에_의한_주소_변환'})
SET     n.name = 'TLB에 의한 주소 변환',
    n.name_kr = 'TLB에 의한 주소 변환',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '가상_메모리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '성능향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '메모리_참조시간_단축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb_hit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb_miss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '페이지_fault'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상태설명'})
MERGE (b:Concept {id: 'tlb_동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '상태설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb_동작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb_update'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '페이지_테이블'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'page_fault'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '페이지_테이블_update'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '직접사상에_의한_주소_변환'})
MERGE (b:Concept {id: 'tlb에_의한_주소_변환'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: '직접사상에_의한_주소_변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Concept {id: 'tlb에_의한_주소_변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Document {id: 'CA_085'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'transaction_look_aside_buffer'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능향상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_참조시간_단축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb_hit'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb_miss'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이지_fault'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태설명'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb_동작'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb_update'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이지_테이블'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이지_테이블_update'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접사상에_의한_주소_변환'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tlb에_의한_주소_변환'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_086: 역페이지 테이블 사상(Inverted Page Table Mapping)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_086'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'inverted_page_table_mapping'})
SET     n.name = 'Inverted Page Table Mapping',
    n.name_kr = '역페이지 테이블 사상',
    n.domain = 'CA',
    n.aliases = ['Inverted Page Table Mapping', '역페이지 테이블 사상'];

MERGE (n:Concept {id: '가상_메모리'})
SET     n.name = '가상 메모리',
    n.name_kr = '가상 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '적은_공간'})
SET     n.name = '적은 공간',
    n.name_kr = '적은 공간',
    n.domain = 'CA';

MERGE (n:Concept {id: '시스템에_단_하나'})
SET     n.name = '시스템에 단 하나',
    n.name_kr = '시스템에 단 하나',
    n.domain = 'CA';

MERGE (n:Concept {id: '한_프레임씩_사상'})
SET     n.name = '한 프레임씩 사상',
    n.name_kr = '한 프레임씩 사상',
    n.domain = 'CA';

MERGE (n:Metric {id: 'process_id'})
SET     n.name = 'Process-ID',
    n.name_kr = 'Process-ID',
    n.domain = 'CA',
    n.aliases = ['Process-ID'];

MERGE (n:Concept {id: 'page_number'})
SET     n.name = 'Page-Number',
    n.name_kr = 'Page-Number',
    n.domain = 'CA',
    n.aliases = ['Page-Number'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'CA';

MERGE (n:Concept {id: '주소변환_절차'})
SET     n.name = '주소변환 절차',
    n.name_kr = '주소변환 절차',
    n.domain = 'CA',
    n.definition = '① pid, p 정보 기반 페이지 테이블에서 동일한 항목을 탐색(Search) ② pid 와 p가 일치하는 항목이 페이지 테이블의 i 번째 항목에서 발견 ③ 메모리 프레임 번호(i)와 Offset(d) 기반 접근해야할 메모리 주소 확인 - 물리주소(i, Offset)가 일치 하는 것이 없으면 잘못된 메모리로 간주';

// --- 관계 ---

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: '적은_공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: '시스템에_단_하나'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: '한_프레임씩_사상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Metric {id: 'process_id'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: 'page_number'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Concept {id: '주소변환_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Document {id: 'CA_086'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'inverted_page_table_mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적은_공간'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템에_단_하나'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한_프레임씩_사상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process_id'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_number'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소변환_절차'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_090.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_090.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_090.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_090.2'})
SET doc.domain = 'CA';

// ================================================================
// CA 도메인 자동 생성 완료
// 노드: 269개
// 관계: 557개
// ================================================================