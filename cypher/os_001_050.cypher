// ================================================================
// OS 도메인 (OS_001 ~ OS_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// OS_001.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_001.1'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_001.2: 부트로더
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_001.2'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'grub'})
SET     n.name = 'Grub',
    n.name_kr = '부트로더',
    n.domain = 'OS',
    n.aliases = ['부트로더'];

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'OS';

MERGE (n:Concept {id: 'mbr'})
SET     n.name = 'MBR',
    n.name_kr = 'MBR',
    n.domain = 'OS',
    n.aliases = ['MBR'];

MERGE (n:Concept {id: '어셈블리어'})
SET     n.name = '어셈블리어',
    n.name_kr = '어셈블리어',
    n.domain = 'OS';

MERGE (n:Concept {id: '1차/2차_부트로더'})
SET     n.name = '1차/2차 부트로더',
    n.name_kr = '1차/2차 부트로더',
    n.domain = 'OS';

MERGE (n:Concept {id: '부트섹터'})
SET     n.name = '부트섹터',
    n.name_kr = '부트섹터',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'grub'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Concept {id: 'mbr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Concept {id: '어셈블리어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Concept {id: '1차/2차_부트로더'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Concept {id: '부트섹터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Document {id: 'OS_001.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'grub'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mbr'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어셈블리어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1차/2차_부트로더'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부트섹터'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_002: 커널 (Kernel)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_002'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'kernel'})
SET     n.name = 'Kernel',
    n.name_kr = '커널',
    n.domain = 'OS',
    n.aliases = ['Kernel', '커널'];

MERGE (n:Concept {id: 'os'})
SET     n.name = 'OS',
    n.name_kr = '운영체제',
    n.domain = 'OS',
    n.aliases = ['OS', '운영체제'];

MERGE (n:Concept {id: 'monolithic_커널'})
SET     n.name = 'Monolithic 커널',
    n.name_kr = 'Monolithic 커널',
    n.domain = 'OS';

MERGE (n:Concept {id: 'micro_커널'})
SET     n.name = 'Micro 커널',
    n.name_kr = 'Micro 커널',
    n.domain = 'OS';

MERGE (n:Concept {id: 'monolithic_kernel'})
SET     n.name = 'Monolithic Kernel',
    n.name_kr = '단일형 커널',
    n.domain = 'OS',
    n.definition = 'OS가 제공하는 기능의 모든 모듈이 같은 주소공간에서 실행되는 Kernel의 형태',
    n.aliases = ['Monolithic Kernel', '단일형 커널'];

MERGE (n:Concept {id: 'micro_kernel'})
SET     n.name = 'Micro Kernel',
    n.name_kr = '마이크로커널',
    n.domain = 'OS',
    n.definition = '프로세스/Memory 관리 등 핵심 기능만을 커널에 구현, 나머지 기능은 독립적인 서비스 모듈로 구현하여 제공하는 구조',
    n.aliases = ['Micro Kernel', '마이크로커널'];

MERGE (n:Concept {id: 'hybrid_kernel'})
SET     n.name = 'Hybrid Kernel',
    n.name_kr = 'Hybrid Kernel',
    n.domain = 'OS',
    n.definition = '본질적으로 마이크로커널을 따르나, 일부 커널의 비(非)본질적 기능이더라도 사용자 레벨에서 수행될 때 성능상 느린 코드들을 커널 레벨에서 수행하도록 수정한 커널',
    n.aliases = ['Hybrid Kernel'];

MERGE (n:Concept {id: 'exokernel'})
SET     n.name = 'ExoKernel',
    n.name_kr = '엑소커널',
    n.domain = 'OS',
    n.definition = '개발자에게 가장 낮은 수준의 추상(abstraction) 수준을 제공함으로써 개발자들이 하드웨어와 관련해 가능한 많은 결정권을 갖도록 만드는 커널',
    n.aliases = ['ExoKernel', '엑소커널'];

MERGE (n:Concept {id: 'nano_kernel'})
SET     n.name = 'Nano Kernel',
    n.name_kr = 'Nano Kernel',
    n.domain = 'OS',
    n.definition = '가상화 계층, 하드웨어 추상화계층의 Kernel',
    n.aliases = ['Nano Kernel'];

MERGE (n:Concept {id: 'microkernel'})
SET     n.name = 'Microkernel',
    n.name_kr = 'Microkernel',
    n.domain = 'OS',
    n.aliases = ['Microkernel'];

// --- 관계 ---

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'os'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'monolithic_커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'micro_커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'monolithic_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'micro_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'hybrid_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'exokernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'nano_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'monolithic_kernel'})
MERGE (b:Concept {id: 'microkernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'monolithic_kernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'microkernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Document {id: 'OS_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monolithic_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monolithic_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hybrid_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'exokernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nano_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'microkernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_003: Monolithic 커널, Micro 커널
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_003'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'monolithic_커널,_micro_커널'})
SET     n.name = 'Monolithic 커널, Micro 커널',
    n.name_kr = 'Monolithic 커널, Micro 커널',
    n.domain = 'OS';

MERGE (n:Concept {id: 'os'})
SET     n.name = 'OS',
    n.name_kr = '운영체제',
    n.domain = 'OS',
    n.aliases = ['OS', '운영체제'];

MERGE (n:Concept {id: 'kernel'})
SET     n.name = 'Kernel',
    n.name_kr = '커널',
    n.domain = 'OS',
    n.aliases = ['Kernel', '커널'];

MERGE (n:Concept {id: 'monolithic커널'})
SET     n.name = 'Monolithic커널',
    n.name_kr = 'Monolithic커널',
    n.domain = 'OS';

MERGE (n:Concept {id: 'micro커널'})
SET     n.name = 'Micro커널',
    n.name_kr = 'Micro커널',
    n.domain = 'OS';

MERGE (n:Concept {id: '단일_프로세서_운영체제'})
SET     n.name = '단일 프로세서 운영체제',
    n.name_kr = '단일 프로세서 운영체제',
    n.domain = 'OS';

MERGE (n:Concept {id: '다중_프로세스_운영체제'})
SET     n.name = '다중 프로세스 운영체제',
    n.name_kr = '다중 프로세스 운영체제',
    n.domain = 'OS';

MERGE (n:Concept {id: '디자인'})
SET     n.name = '디자인',
    n.name_kr = '디자인',
    n.domain = 'OS',
    n.definition = 'CPU를 분리해서 작업을 진행하는 디자인이 좋은 경우가 많아 졌으므로 디자인 레벨에서 CPU별로 할 일을 배정하여 디자인 하는 것을 고려해야 함. - CPU binding(affinity)가 가능하고 특수한 임무를 특정 CPU에 바인딩 하여 독점적으로 성능을 향상 할 수 있으므로 중요한 임무나 bottle-neck인 위치의 디자인에 CPU바인딩을 고려해야';

MERGE (n:Concept {id: '구현'})
SET     n.name = '구현',
    n.name_kr = '구현',
    n.domain = 'OS',
    n.definition = 'semaphore 등의 lock을 잘못 사용할 경우 전체성능을 크게 저하시킬 수 있으므로 lock free queue등을 사용하여 구현하는 것이 좋음.';

MERGE (n:Concept {id: '테스트_&_최적화'})
SET     n.name = '테스트 & 최적화',
    n.name_kr = '테스트 & 최적화',
    n.domain = 'OS',
    n.definition = '캐시 히트율과 캐시 일관성 정책에 의해 의도치 않게 성능이 낮아질 수 있으므로 테스트에 꼭 캐시와 multi core를 고려한 프로파일링을 넣어야 함.';

// --- 관계 ---

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'os'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'monolithic커널'})
MERGE (b:Concept {id: 'micro커널'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: 'monolithic커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: 'micro커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '단일_프로세서_운영체제'})
MERGE (b:Concept {id: '다중_프로세스_운영체제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: '단일_프로세서_운영체제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: '다중_프로세스_운영체제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: '디자인'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: '구현'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Concept {id: '테스트_&_최적화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Document {id: 'OS_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'monolithic_커널,_micro_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monolithic커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일_프로세서_운영체제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_프로세스_운영체제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_&_최적화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_005: 유니커널(Unikernel)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_005'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'unikernel'})
SET     n.name = 'Unikernel',
    n.name_kr = '유니커널',
    n.domain = 'OS',
    n.aliases = ['Unikernel', '유니커널'];

MERGE (n:Concept {id: 'os'})
SET     n.name = 'OS',
    n.name_kr = '운영체제',
    n.domain = 'OS',
    n.aliases = ['OS', '운영체제'];

MERGE (n:Concept {id: 'kernel'})
SET     n.name = 'Kernel',
    n.name_kr = '커널',
    n.domain = 'OS',
    n.aliases = ['Kernel', '커널'];

MERGE (n:Concept {id: '스택구조'})
SET     n.name = '스택구조',
    n.name_kr = '스택구조',
    n.domain = 'OS';

MERGE (n:Concept {id: '주요요소'})
SET     n.name = '주요요소',
    n.name_kr = '주요요소',
    n.domain = 'OS',
    n.definition = 'LibOS';

// --- 관계 ---

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Concept {id: 'os'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'unikernel'})
MERGE (b:Concept {id: '스택구조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'unikernel'})
MERGE (b:Concept {id: '주요요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'unikernel'})
MERGE (b:Document {id: 'OS_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'unikernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스택구조'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요요소'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_006.1: 운영체제 특권레벨
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_006.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'privilege_levels'})
SET     n.name = 'Privilege Levels',
    n.name_kr = '운영체제 특권레벨',
    n.domain = 'OS',
    n.aliases = ['운영체제 특권레벨'];

MERGE (n:Concept {id: 'ring_0'})
SET     n.name = 'Ring 0',
    n.name_kr = 'Ring 0',
    n.domain = 'OS',
    n.aliases = ['Ring 0'];

MERGE (n:Concept {id: 'para_virtualization_cpu_ring'})
SET     n.name = 'Para Virtualization CPU Ring',
    n.name_kr = 'Para Virtualization CPU Ring',
    n.domain = 'OS',
    n.aliases = ['Para Virtualization CPU Ring'];

MERGE (n:Concept {id: 'full_virtualization_cpu_ring'})
SET     n.name = 'Full Virtualization CPU Ring',
    n.name_kr = 'Full Virtualization CPU Ring',
    n.domain = 'OS',
    n.aliases = ['Full Virtualization CPU Ring'];

// --- 관계 ---

MERGE (a:Concept {id: 'privilege_levels'})
MERGE (b:Concept {id: 'ring_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_levels'})
MERGE (b:Concept {id: 'para_virtualization_cpu_ring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_levels'})
MERGE (b:Concept {id: 'full_virtualization_cpu_ring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_levels'})
MERGE (b:Document {id: 'OS_006.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'privilege_levels'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ring_0'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'para_virtualization_cpu_ring'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_virtualization_cpu_ring'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_006.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_006.2'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_007: Secure OS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_007'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'secure_os'})
SET     n.name = 'Secure OS',
    n.name_kr = 'Secure OS',
    n.domain = 'OS',
    n.aliases = ['Secure OS'];

MERGE (n:Concept {id: '운영체제'})
SET     n.name = '운영체제',
    n.name_kr = '운영체제',
    n.domain = 'OS';

MERGE (n:Concept {id: '보안정책'})
SET     n.name = '보안정책',
    n.name_kr = '보안정책',
    n.domain = 'OS';

MERGE (n:Concept {id: '보안모델(blp'})
SET     n.name = '보안모델(BLP',
    n.name_kr = '보안모델(BLP',
    n.domain = 'OS';

MERGE (n:Concept {id: 'biba)'})
SET     n.name = 'BIBA)',
    n.name_kr = 'BIBA)',
    n.domain = 'OS';

MERGE (n:Concept {id: '보안_매커니즘(acl'})
SET     n.name = '보안 매커니즘(ACL',
    n.name_kr = '보안 매커니즘(ACL',
    n.domain = 'OS';

MERGE (n:Concept {id: 'cl'})
SET     n.name = 'CL',
    n.name_kr = 'CL',
    n.domain = 'OS',
    n.aliases = ['CL'];

MERGE (n:Concept {id: 'sl)'})
SET     n.name = 'SL)',
    n.name_kr = 'SL)',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: '운영체제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: '보안정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: '보안모델(blp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: 'biba)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: '보안_매커니즘(acl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: 'cl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Concept {id: 'sl)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Document {id: 'OS_007'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'secure_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영체제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안정책'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안모델(blp'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'biba)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_매커니즘(acl'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cl'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sl)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_008: WEB OS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_008'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'web_os'})
SET     n.name = 'WEB OS',
    n.name_kr = 'WEB OS',
    n.domain = 'OS',
    n.aliases = ['WEB OS'];

MERGE (n:Concept {id: '운영체제'})
SET     n.name = '운영체제',
    n.name_kr = '운영체제',
    n.domain = 'OS';

MERGE (n:Concept {id: '리눅스_기반'})
SET     n.name = '리눅스 기반',
    n.name_kr = '리눅스 기반',
    n.domain = 'OS';

MERGE (n:Concept {id: '경량화_커널'})
SET     n.name = '경량화 커널',
    n.name_kr = '경량화 커널',
    n.domain = 'OS';

MERGE (n:Concept {id: '웹브라우저_기반'})
SET     n.name = '웹브라우저 기반',
    n.name_kr = '웹브라우저 기반',
    n.domain = 'OS';

MERGE (n:Concept {id: 'contents_management'})
SET     n.name = 'Contents Management',
    n.name_kr = 'Contents Management',
    n.domain = 'OS',
    n.aliases = ['Contents Management'];

MERGE (n:Concept {id: 'scripting_engine)'})
SET     n.name = 'Scripting Engine)',
    n.name_kr = 'Scripting Engine)',
    n.domain = 'OS';

MERGE (n:Concept {id: 'gpos_(web_browser'})
SET     n.name = 'GPOS (Web Browser',
    n.name_kr = 'GPOS (Web Browser',
    n.domain = 'OS';

MERGE (n:Concept {id: 'web_server'})
SET     n.name = 'Web Server',
    n.name_kr = 'Web Server',
    n.domain = 'OS',
    n.aliases = ['Web Server'];

MERGE (n:Concept {id: 'system_call'})
SET     n.name = 'System call',
    n.name_kr = 'System call',
    n.domain = 'OS',
    n.aliases = ['System call'];

MERGE (n:Concept {id: 'kernel)'})
SET     n.name = 'Kernel)',
    n.name_kr = 'Kernel)',
    n.domain = 'OS';

MERGE (n:Concept {id: '기존_os'})
SET     n.name = '기존 OS',
    n.name_kr = '기존 OS',
    n.domain = 'OS';

MERGE (n:Concept {id: '파이어폭스_os'})
SET     n.name = '파이어폭스 OS',
    n.name_kr = '파이어폭스 OS',
    n.domain = 'OS';

MERGE (n:Concept {id: '크롬os'})
SET     n.name = '크롬OS',
    n.name_kr = '크롬OS',
    n.domain = 'OS';

MERGE (n:Concept {id: '타이젠os'})
SET     n.name = '타이젠OS',
    n.name_kr = '타이젠OS',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '운영체제'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '리눅스_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '경량화_커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '웹브라우저_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'contents_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'scripting_engine)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'gpos_(web_browser'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'web_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'system_call'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: 'kernel)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '기존_os'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '기존_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '파이어폭스_os'})
MERGE (b:Concept {id: '크롬os'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '파이어폭스_os'})
MERGE (b:Concept {id: '타이젠os'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '파이어폭스_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '크롬os'})
MERGE (b:Concept {id: '타이젠os'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '크롬os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Concept {id: '타이젠os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Document {id: 'OS_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영체제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리눅스_기반'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량화_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹브라우저_기반'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'contents_management'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scripting_engine)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpos_(web_browser'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_server'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system_call'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kernel)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파이어폭스_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '크롬os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타이젠os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_009: CPU Scheduling
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_009'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'cpu_scheduling'})
SET     n.name = 'CPU Scheduling',
    n.name_kr = 'CPU Scheduling',
    n.domain = 'OS',
    n.aliases = ['CPU Scheduling'];

MERGE (n:Concept {id: 'cpu스케줄링'})
SET     n.name = 'CPU스케줄링',
    n.name_kr = 'CPU스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: 'preemptive'})
SET     n.name = '선점',
    n.name_kr = '선점',
    n.domain = 'OS';

MERGE (n:Concept {id: 'non_preemptive'})
SET     n.name = '비선점',
    n.name_kr = '비선점',
    n.domain = 'OS';

MERGE (n:Concept {id: '장기'})
SET     n.name = '장기',
    n.name_kr = '장기',
    n.domain = 'OS';

MERGE (n:Concept {id: '중기'})
SET     n.name = '중기',
    n.name_kr = '중기',
    n.domain = 'OS';

MERGE (n:Concept {id: '단기'})
SET     n.name = '단기',
    n.name_kr = '단기',
    n.domain = 'OS';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'OS',
    n.definition = 'RR';

// --- 관계 ---

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: 'cpu스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: 'preemptive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: 'non_preemptive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: '장기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: '중기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: '단기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Document {id: 'OS_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'preemptive'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_preemptive'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_010: 선점방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_010'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '선점방식'})
SET     n.name = '선점방식',
    n.name_kr = '선점방식',
    n.domain = 'OS';

MERGE (n:Concept {id: 'cpu_스케줄링'})
SET     n.name = 'CPU 스케줄링',
    n.name_kr = 'CPU 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: 'rs다큐피큐리'})
SET     n.name = 'RS다큐피큐리',
    n.name_kr = 'RS다큐피큐리',
    n.domain = 'OS';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'OS';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'OS',
    n.definition = 'RR, SRT, MLQ, MLFQ, RM, EDF';

// --- 관계 ---

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Concept {id: 'cpu_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Concept {id: 'rs다큐피큐리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Document {id: 'OS_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rs다큐피큐리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_011: Round Robin
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_011'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'round_robin'})
SET     n.name = 'Round Robin',
    n.name_kr = 'Round Robin',
    n.domain = 'OS',
    n.aliases = ['Round Robin'];

MERGE (n:Concept {id: 'cpu_스케줄링'})
SET     n.name = 'CPU 스케줄링',
    n.name_kr = 'CPU 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: '선점'})
SET     n.name = '선점',
    n.name_kr = '선점',
    n.domain = 'OS';

MERGE (n:Concept {id: '시분할_방식'})
SET     n.name = '시분할 방식',
    n.name_kr = '시분할 방식',
    n.domain = 'OS';

MERGE (n:Concept {id: '간트차트'})
SET     n.name = '간트차트',
    n.name_kr = '간트차트',
    n.domain = 'OS',
    n.definition = 'Time quantum = 2';

MERGE (n:Concept {id: '동작설명'})
SET     n.name = '동작설명',
    n.name_kr = '동작설명',
    n.domain = 'OS',
    n.definition = '순서';

MERGE (n:Concept {id: '시간_도출'})
SET     n.name = '시간 도출',
    n.name_kr = '시간 도출',
    n.domain = 'OS',
    n.definition = 'P1';

MERGE (n:Concept {id: '도착_시간'})
SET     n.name = '도착 시간',
    n.name_kr = '도착 시간',
    n.domain = 'OS',
    n.definition = '0';

MERGE (n:Concept {id: '서비스_시간'})
SET     n.name = '서비스 시간',
    n.name_kr = '서비스 시간',
    n.domain = 'OS',
    n.definition = '6';

MERGE (n:Concept {id: '종료_시간'})
SET     n.name = '종료 시간',
    n.name_kr = '종료 시간',
    n.domain = 'OS',
    n.definition = '15';

MERGE (n:Concept {id: '반환_시간'})
SET     n.name = '반환 시간',
    n.name_kr = '반환 시간',
    n.domain = 'OS',
    n.definition = '14';

MERGE (n:Concept {id: '대기_시간'})
SET     n.name = '대기 시간',
    n.name_kr = '대기 시간',
    n.domain = 'OS',
    n.definition = '8';

MERGE (n:Concept {id: '평균_대기_시간'})
SET     n.name = '평균 대기 시간',
    n.name_kr = '평균 대기 시간',
    n.domain = 'OS',
    n.definition = '대기 시간 = 반환시간 – 서비스 시간 - 평균 대기 시간 = (2+8+8+4) / 4 = 5.5';

MERGE (n:Concept {id: '평균_반환_시간'})
SET     n.name = '평균 반환 시간',
    n.name_kr = '평균 반환 시간',
    n.domain = 'OS',
    n.definition = '반환 시간 = 종료시간 – 도착 시간 or 대기 시간 + 서비스 시간 - 평균 반환 시간 = (5+14+13+6) / 4 = 9.5';

// --- 관계 ---

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: 'cpu_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '시분할_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '간트차트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '동작설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '시간_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '도착_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '서비스_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '종료_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '반환_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '대기_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '평균_대기_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Concept {id: '평균_반환_시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Document {id: 'OS_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'round_robin'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시분할_방식'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간트차트'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작설명'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간_도출'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도착_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종료_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반환_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대기_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_대기_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_반환_시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_012.0: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_012.0'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_012.1: MLQ / MLFQ
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_012.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'mlq_mlfq'})
SET     n.name = 'MLQ / MLFQ',
    n.name_kr = 'MLQ / MLFQ',
    n.domain = 'OS',
    n.aliases = ['MLQ / MLFQ'];

MERGE (n:Concept {id: 'cpu_스케줄링'})
SET     n.name = 'CPU 스케줄링',
    n.name_kr = 'CPU 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: '선점방식'})
SET     n.name = '선점방식',
    n.name_kr = '선점방식',
    n.domain = 'OS';

MERGE (n:Concept {id: 'rs다큐피큐리'})
SET     n.name = 'RS다큐피큐리',
    n.name_kr = 'RS다큐피큐리',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Concept {id: 'cpu_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mlq_mlfq'})
MERGE (b:Concept {id: 'rs다큐피큐리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mlq_mlfq'})
MERGE (b:Document {id: 'OS_012.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mlq_mlfq'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점방식'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rs다큐피큐리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_013: 비율 단조(RM: Rate Monotonic), EDF(Earliest Deadline First)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_013'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'earliest_deadline_first'})
SET     n.name = 'Earliest Deadline First',
    n.name_kr = '비율 단조(RM: Rate Monotonic), EDF',
    n.domain = 'OS',
    n.aliases = ['Earliest Deadline First', '비율 단조(RM: Rate Monotonic), EDF'];

MERGE (n:Concept {id: 'cpu_scheduling'})
SET     n.name = 'CPU Scheduling',
    n.name_kr = 'CPU Scheduling',
    n.domain = 'OS',
    n.aliases = ['CPU Scheduling'];

MERGE (n:Concept {id: '주기'})
SET     n.name = '주기',
    n.name_kr = '주기',
    n.domain = 'OS';

MERGE (n:Concept {id: '마감시간'})
SET     n.name = '마감시간',
    n.name_kr = '마감시간',
    n.domain = 'OS';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'OS';

MERGE (n:Concept {id: 'rm_스케줄링_가능_여부'})
SET     n.name = 'RM 스케줄링 가능 여부',
    n.name_kr = 'RM 스케줄링 가능 여부',
    n.domain = 'OS',
    n.definition = '3개의 Task일 경우 충분 조건: CPU 이용률< 78%(=3 ∗ (21⁄3 − 1) ) - 충분 조건에 만족하지 않지만 스케줄링이 불가능 하지 않음';

MERGE (n:Concept {id: '우선순위_결정'})
SET     n.name = '우선순위 결정',
    n.name_kr = '우선순위 결정',
    n.domain = 'OS',
    n.definition = '주기가 짧을수록 높은 우선 순위 (A > B > C)';

MERGE (n:Concept {id: '스케줄링'})
SET     n.name = '스케줄링',
    n.name_kr = '스케줄링',
    n.domain = 'OS',
    n.definition = 'C의 마감시간인 50에서 C의 실행을 완료하지 못했으므로 스케줄링 불가.';

MERGE (n:Concept {id: '스케줄링_가능여부'})
SET     n.name = '스케줄링 가능여부',
    n.name_kr = '스케줄링 가능여부',
    n.domain = 'OS',
    n.definition = '1) CPU 이용률(U)이 1이하이면 스케줄링 가능 2) CPU 이용률(U) = (P1 수행시간/주기) + (P2 수행시간/주기) = 25/50 + 35/80 = 0.937 3) 총 이용률 0.937은 1보다 작으므로 스케줄링 가능할 것으로 예측';

// --- 관계 ---

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '주기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '마감시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: 'rm_스케줄링_가능_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '우선순위_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '스케줄링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Concept {id: '스케줄링_가능여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Document {id: 'OS_013'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'earliest_deadline_first'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_scheduling'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마감시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rm_스케줄링_가능_여부'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선순위_결정'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스케줄링_가능여부'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_015: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_015'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_016.0: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_016.0'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_016.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_016.1'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_016.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_016.2'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_018: 디스크 스케줄링
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_018'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '디스크_스케줄링'})
SET     n.name = '디스크 스케줄링',
    n.name_kr = '디스크 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: '탐회전(탐색시간'})
SET     n.name = '탐회전(탐색시간',
    n.name_kr = '탐회전(탐색시간',
    n.domain = 'OS';

MERGE (n:Concept {id: 'latency_time'})
SET     n.name = '회전지연시간',
    n.name_kr = '회전지연시간',
    n.domain = 'OS';

MERGE (n:Concept {id: '전송시간)'})
SET     n.name = '전송시간)',
    n.name_kr = '전송시간)',
    n.domain = 'OS';

MERGE (n:Concept {id: '평균_seek_time_효율성'})
SET     n.name = '평균 Seek Time 효율성',
    n.name_kr = '평균 Seek Time 효율성',
    n.domain = 'OS',
    n.definition = 'SSTF -> SCAN -> C-SCAN -> FCFS';

MERGE (n:Concept {id: 'fairness_효율성'})
SET     n.name = 'Fairness 효율성',
    n.name_kr = 'Fairness 효율성',
    n.domain = 'OS',
    n.definition = 'FCFS -> C-SCAN -> SCAN -> SSTF';

MERGE (n:Concept {id: 'disk_heavy_load인_경우'})
SET     n.name = 'Disk Heavy Load인 경우',
    n.name_kr = 'Disk Heavy Load인 경우',
    n.domain = 'OS',
    n.definition = 'C-SCAN -> SCAN -> SSTF';

// --- 관계 ---

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: '디스크_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: '탐회전(탐색시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: 'latency_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: '전송시간)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: '평균_seek_time_효율성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: 'fairness_효율성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Concept {id: 'disk_heavy_load인_경우'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Document {id: 'OS_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐회전(탐색시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'latency_time'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송시간)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_seek_time_효율성'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fairness_효율성'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'disk_heavy_load인_경우'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_019: 디스크 스케줄링 유형
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_019'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '디스크_스케줄링_유형'})
SET     n.name = '디스크 스케줄링 유형',
    n.name_kr = '디스크 스케줄링 유형',
    n.domain = 'OS';

MERGE (n:Concept {id: '디스크_스케줄링'})
SET     n.name = '디스크 스케줄링',
    n.name_kr = '디스크 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: '탐색최적화_:_fcfs'})
SET     n.name = '탐색최적화 : FCFS',
    n.name_kr = '탐색최적화 : FCFS',
    n.domain = 'OS';

MERGE (n:Concept {id: 'sstf'})
SET     n.name = 'SSTF',
    n.name_kr = 'SSTF',
    n.domain = 'OS',
    n.aliases = ['SSTF'];

MERGE (n:Concept {id: 'look'})
SET     n.name = 'LOOK',
    n.name_kr = 'LOOK',
    n.domain = 'OS',
    n.aliases = ['LOOK'];

MERGE (n:Concept {id: 'c_scan'})
SET     n.name = 'C-SCAN',
    n.name_kr = 'C-SCAN',
    n.domain = 'OS',
    n.aliases = ['C-SCAN'];

MERGE (n:Concept {id: 'n_step_scan'})
SET     n.name = 'N-Step SCAN',
    n.name_kr = 'N-Step SCAN',
    n.domain = 'OS',
    n.aliases = ['N-Step SCAN'];

MERGE (n:Concept {id: 'freeze_scan'})
SET     n.name = 'Freeze SCAN',
    n.name_kr = 'FSCAN',
    n.domain = 'OS',
    n.aliases = ['Freeze SCAN', 'FSCAN'];

MERGE (n:Concept {id: '회전최적화_:_sltf'})
SET     n.name = '회전최적화 : SLTF',
    n.name_kr = '회전최적화 : SLTF',
    n.domain = 'OS';

MERGE (n:Concept {id: 'sptf'})
SET     n.name = 'SPTF',
    n.name_kr = 'SPTF',
    n.domain = 'OS',
    n.aliases = ['SPTF'];

MERGE (n:Concept {id: 'satf'})
SET     n.name = 'SATF',
    n.name_kr = 'SATF',
    n.domain = 'OS',
    n.aliases = ['SATF'];

// --- 관계 ---

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: '디스크_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: '탐색최적화_:_fcfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'sstf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'look'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'c_scan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'n_step_scan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'freeze_scan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: '회전최적화_:_sltf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'sptf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Concept {id: 'satf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Document {id: 'OS_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디스크_스케줄링_유형'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐색최적화_:_fcfs'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sstf'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'look'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c_scan'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n_step_scan'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'freeze_scan'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회전최적화_:_sltf'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sptf'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'satf'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_020: 엘리베이터 알고리즘(Elevator Algorithm)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_020'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'elevator_algorithm'})
SET     n.name = 'Elevator Algorithm',
    n.name_kr = '엘리베이터 알고리즘',
    n.domain = 'OS',
    n.aliases = ['Elevator Algorithm', '엘리베이터 알고리즘'];

MERGE (n:Concept {id: '디스크_스케줄링'})
SET     n.name = '디스크 스케줄링',
    n.name_kr = '디스크 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: 'starvation'})
SET     n.name = '기아(Starvation)현상 개선',
    n.name_kr = '기아(Starvation)현상 개선',
    n.domain = 'OS';

MERGE (n:Concept {id: 'scan_기반'})
SET     n.name = 'SCAN 기반',
    n.name_kr = 'SCAN 기반',
    n.domain = 'OS';

MERGE (n:Concept {id: 'scan'})
SET     n.name = 'SCAN',
    n.name_kr = 'SCAN',
    n.domain = 'OS',
    n.aliases = ['SCAN'];

MERGE (n:Concept {id: 'look'})
SET     n.name = 'LOOK',
    n.name_kr = 'LOOK',
    n.domain = 'OS',
    n.aliases = ['LOOK'];

// --- 관계 ---

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Concept {id: '디스크_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Concept {id: 'starvation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Concept {id: 'scan_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scan'})
MERGE (b:Concept {id: 'look'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Concept {id: 'scan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Concept {id: 'look'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Document {id: 'OS_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'elevator_algorithm'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'starvation'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scan_기반'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scan'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'look'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_021: 에션바흐 기법(Eschenbach Scheme)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_021'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'eschenbach_scheme'})
SET     n.name = 'Eschenbach Scheme',
    n.name_kr = '에션바흐 기법',
    n.domain = 'OS',
    n.aliases = ['Eschenbach Scheme', '에션바흐 기법'];

MERGE (n:Concept {id: '디스크_스케줄링'})
SET     n.name = '디스크 스케줄링',
    n.name_kr = '디스크 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: 'c-scan_기반'})
SET     n.name = 'C-SCAN 기반',
    n.name_kr = 'C-SCAN 기반',
    n.domain = 'OS';

MERGE (n:Concept {id: '재배열처리'})
SET     n.name = '재배열처리',
    n.name_kr = '재배열처리',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'eschenbach_scheme'})
MERGE (b:Concept {id: '디스크_스케줄링'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eschenbach_scheme'})
MERGE (b:Concept {id: 'c-scan_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eschenbach_scheme'})
MERGE (b:Concept {id: '재배열처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eschenbach_scheme'})
MERGE (b:Document {id: 'OS_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'eschenbach_scheme'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c-scan_기반'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재배열처리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_022: Critical Section
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_022'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'critical_section'})
SET     n.name = 'Critical Section',
    n.name_kr = 'Critical Section',
    n.domain = 'OS',
    n.aliases = ['Critical Section'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호배제'})
SET     n.name = '상호배제',
    n.name_kr = '상호배제',
    n.domain = 'OS';

MERGE (n:Concept {id: '소프트웨어측면_접근'})
SET     n.name = '소프트웨어측면 접근',
    n.name_kr = '소프트웨어측면 접근',
    n.domain = 'OS',
    n.definition = 'lock test 알고리즘';

MERGE (n:Concept {id: 'bakery_algorithm'})
SET     n.name = 'Bakery Algorithm',
    n.name_kr = 'Bakery Algorithm',
    n.domain = 'OS',
    n.definition = '여러 개의 프로세스를 위한 소프트웨어에 의한 상호배제 알고리즘 FCFS (First-come First-served) 기법 적용 임계구역에 진입 하기 전에 프로세스는 번호를 부여받음(가장 낮은 번호를 받은 프로세스가 임계구역에 진입) 프로세스Pi과Pj가 동일한 번호를 부여 받게 되면 프로세스ID를 비교(i< j 이면 Pi가 우선적으로 서비스됨) 알고리즘',
    n.aliases = ['Bakery Algorithm'];

MERGE (n:Concept {id: '데커_알고리즘'})
SET     n.name = '데커 알고리즘 (Dekker’s Algorithm)',
    n.name_kr = '데커 알고리즘 (Dekker’s Algorithm)',
    n.domain = 'OS',
    n.definition = '2개 프로세스를 위한 상호 배제의 최초의 정확한 소프트웨어 해결법 - 한 프로세스는 두 번 연속해서 임계 구역에 진입할 수 있으나, 세 번째는 다른 프로세스가 진입';

MERGE (n:Concept {id: 'peterson_algorithm'})
SET     n.name = 'Peterson Algorithm',
    n.name_kr = '피터슨 알고리즘',
    n.domain = 'OS',
    n.definition = '1단계 및 2단계 프리미티브를 결합한 모든 요구 조건 만족의 해결법',
    n.aliases = ['Peterson Algorithm', '피터슨 알고리즘'];

MERGE (n:Method {id: 'semaphore'})
SET     n.name = 'Semaphore',
    n.name_kr = 'Semaphore',
    n.domain = 'OS',
    n.definition = '동시에 정보를 공유하여 수행되는 두 개 이상의 프로그램이나 프로세스에서 활동(activity)를 조정(coordination)하기 위해 사용되는 동기화를 위한 기본 조작으로 다익스트라(E.J.Dijkstra)가 제안함 - Busy waiting 문제를 해결 - 진행불가시 즉시 Block - 대기중 프로세스의 Wake up 순서는 미결정 - 무기한 연기(St',
    n.aliases = ['Semaphore'];

MERGE (n:Concept {id: 'event_count_sequence'})
SET     n.name = 'Event Count Sequence',
    n.name_kr = 'Event Count Sequence',
    n.domain = 'OS',
    n.definition = '은행처럼 순차적인 번호를 프로세스에 발급하여 병행 제어 - 은행의 서비스 순서가 기재된 Ticket과 같은 형태로 프로세스 들 간의 동기화 수행 [Event Count/Sequencer 동작] - 프로세스가 순번을 증가 시킨 번호표를 발급 받음 - 운영체제가 실행 허가하는 순번이 될 때까지 대기 - 운영체제가 이전 프로세스에 의해 자원이 해제되면 다음 순번',
    n.aliases = ['Event Count Sequence'];

MERGE (n:Concept {id: '하드웨어적_접근'})
SET     n.name = '하드웨어적 접근',
    n.name_kr = '하드웨어적 접근',
    n.domain = 'OS',
    n.definition = 'Test-and-Set';

MERGE (n:Concept {id: 'swap'})
SET     n.name = 'SWAP',
    n.name_kr = 'SWAP',
    n.domain = 'OS',
    n.definition = '두 변수의 교체를 CPU 명령어로 제공 알고리즘',
    n.aliases = ['SWAP'];

MERGE (n:Concept {id: 'interrupt-disable,_interrupt-enable'})
SET     n.name = 'interrupt-disable, interrupt-enable',
    n.name_kr = 'interrupt-disable, interrupt-enable',
    n.domain = 'OS',
    n.definition = '각 프로세스가 임계구역에 진입한 후 모든 인터럽트가 불가능 임계구역을 빠져나오기 전에 다시 인터럽트를 가능하게 함 임계 구역 내의 문맥 교환 자체를 방지 커널 내의 시스템 호출 부분과 인터럽트 처리기의 임계 구역 보호를 위해 사용 알고리즘';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'OS',
    n.definition = 'Busy-Waiting 알고리즘 : 임계구역 진입 시 이미 다른 프로세스가 진입해 있으면 Busy-Waiting Loop 실행 타임슬라이스 낭비 해결 알고리즘 : 세마포어(Semaphore)';

// --- 관계 ---

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '상호배제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '소프트웨어측면_접근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: 'bakery_algorithm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '데커_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: 'peterson_algorithm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Method {id: 'semaphore'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: 'event_count_sequence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '하드웨어적_접근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: 'swap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: 'interrupt-disable,_interrupt-enable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Document {id: 'OS_022'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호배제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어측면_접근'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bakery_algorithm'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데커_알고리즘'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peterson_algorithm'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'semaphore'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_count_sequence'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어적_접근'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swap'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interrupt-disable,_interrupt-enable'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_023: Mutual Exclusion
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_023'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'mutual_exclusion'})
SET     n.name = 'Mutual Exclusion',
    n.name_kr = 'Mutual Exclusion',
    n.domain = 'OS',
    n.aliases = ['Mutual Exclusion'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'lamport'})
SET     n.name = '램포트',
    n.name_kr = '램포트',
    n.domain = 'OS';

MERGE (n:Concept {id: 'peterson'})
SET     n.name = '피터슨',
    n.name_kr = '피터슨',
    n.domain = 'OS';

MERGE (n:Concept {id: '데커알고리즘'})
SET     n.name = '데커알고리즘',
    n.name_kr = '데커알고리즘',
    n.domain = 'OS';

MERGE (n:Concept {id: 'semaphores'})
SET     n.name = '세마포어',
    n.name_kr = '세마포어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'swap'})
SET     n.name = 'swap',
    n.name_kr = 'swap',
    n.domain = 'OS',
    n.aliases = ['swap'];

MERGE (n:Concept {id: 'test_and_set'})
SET     n.name = 'test and set',
    n.name_kr = 'test and set',
    n.domain = 'OS',
    n.aliases = ['test and set'];

MERGE (n:Concept {id: '인터럽트_금지'})
SET     n.name = '인터럽트 금지',
    n.name_kr = '인터럽트 금지',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호배제_조건'})
SET     n.name = '상호배제 조건',
    n.name_kr = '상호배제 조건',
    n.domain = 'OS',
    n.definition = '두 프로세스가 동시에 임계영역 Critical Session) 에 존재 불가 조건';

MERGE (n:Concept {id: '진행_조건'})
SET     n.name = '진행 조건',
    n.name_kr = '진행 조건',
    n.domain = 'OS',
    n.definition = '임계영역 밖의 프로세스가 다른 프로세스의 임계영역 진입 차단 불가 조건';

MERGE (n:Concept {id: '한계대기_조건'})
SET     n.name = '한계대기 조건',
    n.name_kr = '한계대기 조건',
    n.domain = 'OS',
    n.definition = '프로세스의 임계영역 진입이 무한정 대기 상태 불허하는 조건';

MERGE (n:Concept {id: '상대속도_조건'})
SET     n.name = '상대속도 조건',
    n.name_kr = '상대속도 조건',
    n.domain = 'OS',
    n.definition = '프로세스의 상대적 속도는 프로세스의 속도나 수에 영향 무관 조건';

MERGE (n:Concept {id: 'sw_방법'})
SET     n.name = 'SW 방법',
    n.name_kr = 'SW 방법',
    n.domain = 'OS',
    n.definition = '데커(Dekker) 알고리즘';

MERGE (n:Concept {id: 'hw_방법'})
SET     n.name = 'HW 방법',
    n.name_kr = 'HW 방법',
    n.domain = 'OS',
    n.definition = '인터럽트 사용금지';

// --- 관계 ---

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'lamport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'peterson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '데커알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'semaphores'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'swap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'test_and_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '인터럽트_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '상호배제_조건'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '진행_조건'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '한계대기_조건'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: '상대속도_조건'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'sw_방법'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Concept {id: 'hw_방법'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Document {id: 'OS_023'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mutual_exclusion'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lamport'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peterson'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데커알고리즘'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'semaphores'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swap'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_and_set'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트_금지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호배제_조건'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진행_조건'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계대기_조건'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상대속도_조건'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_방법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_방법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_024: 태스크의 동기화(task synchronization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_024'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'task_synchronization'})
SET     n.name = 'task synchronization',
    n.name_kr = '태스크의 동기화',
    n.domain = 'OS',
    n.aliases = ['task synchronization', '태스크의 동기화'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'test_and_set'})
SET     n.name = 'Test and Set',
    n.name_kr = 'Test and Set',
    n.domain = 'OS',
    n.aliases = ['Test and Set'];

MERGE (n:Concept {id: 'swap'})
SET     n.name = 'Swap',
    n.name_kr = 'Swap',
    n.domain = 'OS',
    n.aliases = ['Swap'];

MERGE (n:Concept {id: '인터럽트'})
SET     n.name = '인터럽트',
    n.name_kr = '인터럽트',
    n.domain = 'OS';

MERGE (n:Concept {id: 'dekker'})
SET     n.name = '데커',
    n.name_kr = '데커',
    n.domain = 'OS';

MERGE (n:Concept {id: 'peterson'})
SET     n.name = '피터슨',
    n.name_kr = '피터슨',
    n.domain = 'OS';

MERGE (n:Concept {id: 'lamport'})
SET     n.name = '램포트',
    n.name_kr = '램포트',
    n.domain = 'OS';

MERGE (n:Concept {id: 'semaphore'})
SET     n.name = '세마포어',
    n.name_kr = '세마포어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'mutex'})
SET     n.name = '뮤텍스',
    n.name_kr = '뮤텍스',
    n.domain = 'OS';

MERGE (n:Concept {id: 'monitor'})
SET     n.name = '모니터',
    n.name_kr = '모니터',
    n.domain = 'OS';

MERGE (n:Concept {id: 'hw기법'})
SET     n.name = 'HW기법',
    n.name_kr = 'HW기법',
    n.domain = 'OS',
    n.definition = 'Test and Set 기법';

MERGE (n:Concept {id: 'swap_기법'})
SET     n.name = 'Swap 기법',
    n.name_kr = 'Swap 기법',
    n.domain = 'OS',
    n.definition = 'HW상 두 메모리 워드간 내용의 원자적 교환 -Boolean *a(전역변수), Boolean *b(지역변수)간 교환';

MERGE (n:Concept {id: '인터럽트_금지'})
SET     n.name = '인터럽트 금지',
    n.name_kr = '인터럽트 금지',
    n.domain = 'OS',
    n.definition = '임계영역 진입 전 인터럽트 Off, 종료 후 On -공유변수 변경 시 인터럽트 불가';

MERGE (n:Concept {id: 'sw기법_특징'})
SET     n.name = 'SW기법 특징',
    n.name_kr = 'SW기법 특징',
    n.domain = 'OS',
    n.definition = '데커(Dekker) 알고리즘';

// --- 관계 ---

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'test_and_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'swap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: '인터럽트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'dekker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'peterson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'lamport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'semaphore'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'mutex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'monitor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'hw기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'swap_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: '인터럽트_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Concept {id: 'sw기법_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Document {id: 'OS_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'task_synchronization'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_and_set'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swap'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dekker'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peterson'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lamport'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mutex'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw기법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swap_기법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트_금지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw기법_특징'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_025: Semaphore
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_025'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'semaphore'})
SET     n.name = 'Semaphore',
    n.name_kr = 'Semaphore',
    n.domain = 'OS',
    n.aliases = ['Semaphore'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'p'})
SET     n.name = 'P()',
    n.name_kr = 'P()',
    n.domain = 'OS';

MERGE (n:Concept {id: 'v'})
SET     n.name = 'V()',
    n.name_kr = 'V()',
    n.domain = 'OS';

MERGE (n:Concept {id: '초기화'})
SET     n.name = '초기화',
    n.name_kr = '초기화',
    n.domain = 'OS',
    n.definition = 'Initialize';

MERGE (n:Concept {id: 'p_연산'})
SET     n.name = 'P 연산',
    n.name_kr = 'P 연산',
    n.domain = 'OS',
    n.definition = 'Wait';

MERGE (n:Concept {id: 'v_연산'})
SET     n.name = 'V 연산',
    n.name_kr = 'V 연산',
    n.domain = 'OS',
    n.definition = 'Signal';

MERGE (n:Concept {id: 's'})
SET     n.name = '세마포어',
    n.name_kr = '세마포어',
    n.domain = 'OS';

MERGE (n:Concept {id: '모니터'})
SET     n.name = '모니터',
    n.name_kr = '모니터',
    n.domain = 'OS';

MERGE (n:Concept {id: '메시지_전송'})
SET     n.name = '메시지 전송',
    n.name_kr = '메시지 전송',
    n.domain = 'OS',
    n.definition = '프로세스 간 메시지를 전송하거나, 혹은 공유메모리를 통해서 특정 data를 공유하게 될 경우 발생하는 문제는, 공유된 자원에 여러 개의 프로세스가 동시에 접근 하면서 발생한다. 단지, 한번에 하나의 프로세스만 접근 가능하도록 만들어 줘야 하고, 이때 Semaphore를 쓴다.';

MERGE (n:Concept {id: '사용_특화'})
SET     n.name = '사용 특화',
    n.name_kr = '사용 특화',
    n.domain = 'OS',
    n.definition = 'Thread 에서는 뮤텍스, 프로세스에서는 세마포어';

MERGE (n:Concept {id: '교착상태_방지'})
SET     n.name = '교착상태 방지',
    n.name_kr = '교착상태 방지',
    n.domain = 'OS',
    n.definition = '교착상태를 방지하기 위해, A 프로세스가 접근했을 때 다른 프로세스의 접근을 막고, 끝난 후 접근을 풀어준다. 이때 세마포어로 접근을 막고 접근을 허용할 수 있다';

MERGE (n:Concept {id: 'mutex'})
SET     n.name = 'Mutex',
    n.name_kr = '뮤텍스',
    n.domain = 'OS',
    n.aliases = ['Mutex', '뮤텍스'];

MERGE (n:Concept {id: 'event_count_sequence'})
SET     n.name = 'Event Count/Sequence',
    n.name_kr = 'Event Count/Sequence',
    n.domain = 'OS',
    n.definition = 'Busy Waiting 문제 해결 - FIFO 스케쥴링에 의해서 Block 된 순서대로 Wake up 됨 - 무기한 연기의 문제점 해결',
    n.aliases = ['Event Count/Sequence'];

// --- 관계 ---

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'v'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '초기화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'p_연산'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'v_연산'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 's'})
MERGE (b:Concept {id: '모니터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 's'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '모니터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '메시지_전송'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '사용_특화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: '교착상태_방지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'mutex'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'mutex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Concept {id: 'event_count_sequence'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Document {id: 'OS_025'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p_연산'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v_연산'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 's'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지_전송'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용_특화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교착상태_방지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mutex'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_count_sequence'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_026: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_026'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_027: 우선순위 역전
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_027'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'priority_inversion'})
SET     n.name = 'Priority Inversion',
    n.name_kr = '우선순위 역전',
    n.domain = 'OS',
    n.aliases = ['우선순위 역전'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'priority_inheritance'})
SET     n.name = '우선순위 상속',
    n.name_kr = '우선순위 상속',
    n.domain = 'OS';

MERGE (n:Concept {id: 'priority_celling'})
SET     n.name = '우선순위 올림',
    n.name_kr = '우선순위 올림',
    n.domain = 'OS';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'OS',
    n.definition = '우선순위가 높은 Task와 우선순위가 낮은 Task 의 동일자원 공유 - 공유자원에 대한 긴 점유 시간 - 우선순위 기반 선점형 스케줄링시 Task 간 빈번한 선점발생';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'OS';

MERGE (n:Concept {id: '10'})
SET     n.name = '10',
    n.name_kr = '10',
    n.domain = 'OS',
    n.definition = '스케줄러에 의해 Task2 수행 및 종료';

MERGE (n:Concept {id: '2)_프로세스_선점'})
SET     n.name = '2) 프로세스 선점',
    n.name_kr = '2) 프로세스 선점',
    n.domain = 'OS',
    n.definition = '우선순위가 높은 Task1은 Task3 선점하고 스케줄링';

MERGE (n:Concept {id: '3)_우선순위_상속'})
SET     n.name = '3) 우선순위 상속',
    n.name_kr = '3) 우선순위 상속',
    n.domain = 'OS',
    n.definition = 'Task1은 수행 중 자원 R이 필요하지만 Task3가 진입하여 있으므로 대기하고 Task3는 Task1의 우선순위를 상속';

MERGE (n:Concept {id: '4)_역전현상_해결'})
SET     n.name = '4) 역전현상 해결',
    n.name_kr = '4) 역전현상 해결',
    n.domain = 'OS',
    n.definition = 'Task2가 실행되어도 상속받은 우선순위 보다 낮아 역전현상 발생하지 않음';

MERGE (n:Concept {id: '2)_대기'})
SET     n.name = '2) 대기',
    n.name_kr = '2) 대기',
    n.domain = 'OS',
    n.definition = '우선순위가 높은 Task1은 자원 R의 우선순위보다 낮으므로 대기';

MERGE (n:Concept {id: '3)_임계영역_진입'})
SET     n.name = '3) 임계영역 진입',
    n.name_kr = '3) 임계영역 진입',
    n.domain = 'OS',
    n.definition = 'Task1은 Task3가 종료된 이후 임계영역 진입하고 자원R의 우선순위로 올림';

// --- 관계 ---

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: 'priority_inheritance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: 'priority_celling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '10'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '2)_프로세스_선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '3)_우선순위_상속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '4)_역전현상_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '2)_대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Concept {id: '3)_임계영역_진입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Document {id: 'OS_027'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'priority_inversion'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'priority_inheritance'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'priority_celling'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_프로세스_선점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_우선순위_상속'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_역전현상_해결'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_대기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_임계영역_진입'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_029: 교착상태
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_029'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'deadlock'})
SET     n.name = 'Deadlock',
    n.name_kr = '교착상태',
    n.domain = 'OS',
    n.aliases = ['교착상태'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: '상점비환'})
SET     n.name = '상점비환',
    n.name_kr = '상점비환',
    n.domain = 'OS';

MERGE (n:Concept {id: '예회발복'})
SET     n.name = '예회발복',
    n.name_kr = '예회발복',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호배제_조건의_부정'})
SET     n.name = '상호배제 조건의 부정',
    n.name_kr = '상호배제 조건의 부정',
    n.domain = 'OS',
    n.definition = '공유할 수 없는 자원을 사용할 때 성립';

MERGE (n:Concept {id: '점유와_대기조건의_부정'})
SET     n.name = '점유와 대기조건의 부정',
    n.name_kr = '점유와 대기조건의 부정',
    n.domain = 'OS',
    n.definition = '프로세스가 자원을 요청할 때는, 다른 자원들을 점유하지 않을 것을 보장함';

MERGE (n:Concept {id: '비선점_조건의_부정'})
SET     n.name = '비선점 조건의 부정',
    n.name_kr = '비선점 조건의 부정',
    n.domain = 'OS',
    n.definition = '어떤 자원을 가진 프로세스가 더 이상 자원할당 요구가 받아지지 않으면 점유자원을 반납';

MERGE (n:Concept {id: '환형대기_조건의_부정'})
SET     n.name = '환형대기 조건의 부정',
    n.name_kr = '환형대기 조건의 부정',
    n.domain = 'OS',
    n.definition = '모든 프로세스에게 각 자원의 유형별로 할당순서를 부여하는 방법';

MERGE (n:Concept {id: '프로세스_종료'})
SET     n.name = '프로세스 종료',
    n.name_kr = '프로세스 종료',
    n.domain = 'OS',
    n.definition = '교착 상태 프로세스들을 모두 중지';

MERGE (n:Concept {id: '한_프로세스씩_중지'})
SET     n.name = '한 프로세스씩 중지',
    n.name_kr = '한 프로세스씩 중지',
    n.domain = 'OS',
    n.definition = '교착 상태에 빠진 프로세스들 중에서 한 프로세스씩 순서대로 종료 시켜 가면서 교착 상태를 해결하는 방법';

MERGE (n:Concept {id: '희생자_선택의_원칙'})
SET     n.name = '희생자 선택의 원칙',
    n.name_kr = '희생자 선택의 원칙',
    n.domain = 'OS',
    n.definition = '최소 비용의 원칙으로 희생자(victim) 프로세스를 선정';

MERGE (n:Concept {id: '자원_선점_대상_선택'})
SET     n.name = '자원 선점 대상 선택',
    n.name_kr = '자원 선점 대상 선택',
    n.domain = 'OS',
    n.definition = '희생자 선정 문제';

MERGE (n:Concept {id: '복귀_문제'})
SET     n.name = '복귀 문제',
    n.name_kr = '복귀 문제',
    n.domain = 'OS',
    n.definition = '자원을 선점 당한 프로세스를 안전 상태로 복귀시키고, 종료된 지점부터 다시 재시작';

MERGE (n:Concept {id: '기아_상태_문제'})
SET     n.name = '기아 상태 문제',
    n.name_kr = '기아 상태 문제',
    n.domain = 'OS',
    n.definition = '자원들이 항상 동일한 프로세스로부터 선점되면, 기아(starvation) 상태가 발생';

// --- 관계 ---

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '상점비환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '예회발복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '상호배제_조건의_부정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '점유와_대기조건의_부정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '비선점_조건의_부정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '환형대기_조건의_부정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '프로세스_종료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '한_프로세스씩_중지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '희생자_선택의_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '자원_선점_대상_선택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '복귀_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Concept {id: '기아_상태_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Document {id: 'OS_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상점비환'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예회발복'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호배제_조건의_부정'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점유와_대기조건의_부정'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비선점_조건의_부정'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환형대기_조건의_부정'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_종료'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한_프로세스씩_중지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '희생자_선택의_원칙'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_선점_대상_선택'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복귀_문제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기아_상태_문제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_030.0: 기아
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_030.0'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '기아'})
SET     n.name = '기아',
    n.name_kr = '기아',
    n.domain = 'OS';

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'priority'})
SET     n.name = '우선순위',
    n.name_kr = '우선순위',
    n.domain = 'OS';

MERGE (n:Concept {id: '자원_할당'})
SET     n.name = '자원 할당',
    n.name_kr = '자원 할당',
    n.domain = 'OS';

MERGE (n:Concept {id: 'aging'})
SET     n.name = 'aging',
    n.name_kr = '에이징',
    n.domain = 'OS',
    n.aliases = ['aging', '에이징'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'OS';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'OS',
    n.definition = '높은 우선순위 프로세스 진입';

MERGE (n:Concept {id: '우선순위_기반_스케줄링'})
SET     n.name = '우선순위 기반 스케줄링',
    n.name_kr = '우선순위 기반 스케줄링',
    n.domain = 'OS',
    n.definition = '우선순위 기반의 스케줄링 알고리즘 사용 - SJF: Shortest Job First, SRT: Shortest Remaining Time)';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'OS',
    n.definition = 'Aging 기법 활용';

MERGE (n:Concept {id: 'mlfq_스케줄링_활용'})
SET     n.name = 'MLFQ 스케줄링 활용',
    n.name_kr = 'MLFQ 스케줄링 활용',
    n.domain = 'OS',
    n.definition = '프로세스 간 우선순위 및 균형 할당(Time Quantum) 동시 고려 FCFS + 우선 순위 조정(Aging) +RR 병행';

// --- 관계 ---

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '병행_제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: 'priority'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '자원_할당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: 'aging'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '우선순위_기반_스케줄링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Concept {id: 'mlfq_스케줄링_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Document {id: 'OS_030.0'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기아'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'priority'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_할당'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aging'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선순위_기반_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mlfq_스케줄링_활용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_030.1: 호위효과(Convoy Effect)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_030.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'convoy_effect'})
SET     n.name = 'Convoy Effect',
    n.name_kr = '호위효과',
    n.domain = 'OS',
    n.aliases = ['Convoy Effect', '호위효과'];

MERGE (n:Concept {id: '병행_제어'})
SET     n.name = '병행 제어',
    n.name_kr = '병행 제어',
    n.domain = 'OS';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'OS',
    n.definition = '긴 우선 도착 프로세스';

MERGE (n:Concept {id: 'fcfs_비선점_스케줄링'})
SET     n.name = 'FCFS 비선점 스케줄링',
    n.name_kr = 'FCFS 비선점 스케줄링',
    n.domain = 'OS',
    n.definition = '도착 순서 기반의 비선점 스케줄링 알고리즘 사용';

MERGE (n:Concept {id: '다수_명령어_처리'})
SET     n.name = '다수 명령어 처리',
    n.name_kr = '다수 명령어 처리',
    n.domain = 'OS',
    n.definition = 'Burst time이 긴 명령어 입력 후 다수의 명령어 입력';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'OS',
    n.definition = 'SJF 스케쥴링 적용';

MERGE (n:Concept {id: 'hrn_스케쥴링_적용'})
SET     n.name = 'HRN 스케쥴링 적용',
    n.name_kr = 'HRN 스케쥴링 적용',
    n.domain = 'OS',
    n.definition = 'Highest Response Ratio Next 적용 통한 Burst time, Waiting time 동시 고려 - 우선 순위 = (대기 시간 + 실행 시간) / 실행 시간';

MERGE (n:Concept {id: 'priority_적용'})
SET     n.name = 'Priority 적용',
    n.name_kr = 'Priority 적용',
    n.domain = 'OS',
    n.definition = '프로세스 별 우선 순위를 사전 정의하여 우선 순위 별 CPU 점유 - 우선 순위 관리가 안 될 경우 CPU 활용률이 더욱 저하 가능';

MERGE (n:Concept {id: '선점형_스케쥴링_적용'})
SET     n.name = '선점형 스케쥴링 적용',
    n.name_kr = '선점형 스케쥴링 적용',
    n.domain = 'OS',
    n.definition = '선점형 스케쥴링 적용으로 호위 효과 발생 근본 원인 제거 - 선점형 스케쥴링 적용 시 영향도 사전 확인 필요';

MERGE (n:Concept {id: 'deadline'})
SET     n.name = 'Deadline',
    n.name_kr = 'Deadline',
    n.domain = 'OS',
    n.definition = '명시된 시간까지 완료되도록 계획',
    n.aliases = ['Deadline'];

// --- 관계 ---

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: 'fcfs_비선점_스케줄링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: '다수_명령어_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: 'hrn_스케쥴링_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: 'priority_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: '선점형_스케쥴링_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Concept {id: 'deadline'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Document {id: 'OS_030.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'convoy_effect'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fcfs_비선점_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다수_명령어_처리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hrn_스케쥴링_적용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'priority_적용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점형_스케쥴링_적용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deadline'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_031: Wait-die와 Wound-wait
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_031'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'wait-die와_wound-wait'})
SET     n.name = 'Wait-die와 Wound-wait',
    n.name_kr = 'Wait-die와 Wound-wait',
    n.domain = 'OS';

MERGE (n:Concept {id: '병행제어'})
SET     n.name = '병행제어',
    n.name_kr = '병행제어',
    n.domain = 'OS';

MERGE (n:Metric {id: 'old_process'})
SET     n.name = 'old process',
    n.name_kr = 'old process',
    n.domain = 'OS',
    n.aliases = ['old process'];

MERGE (n:Metric {id: 'young_process'})
SET     n.name = 'young process',
    n.name_kr = 'young process',
    n.domain = 'OS',
    n.aliases = ['young process'];

MERGE (n:Concept {id: 'wait'})
SET     n.name = 'wait',
    n.name_kr = 'wait',
    n.domain = 'OS',
    n.aliases = ['wait'];

MERGE (n:Concept {id: 'die'})
SET     n.name = 'die',
    n.name_kr = 'die',
    n.domain = 'OS',
    n.aliases = ['die'];

MERGE (n:Concept {id: 'wound'})
SET     n.name = 'wound',
    n.name_kr = 'wound',
    n.domain = 'OS',
    n.aliases = ['wound'];

MERGE (n:Concept {id: '선점'})
SET     n.name = '선점',
    n.name_kr = '선점',
    n.domain = 'OS';

MERGE (n:Concept {id: '비선점'})
SET     n.name = '비선점',
    n.name_kr = '비선점',
    n.domain = 'OS';

MERGE (n:Concept {id: 'wait_die'})
SET     n.name = 'Wait-Die',
    n.name_kr = 'Wait-Die',
    n.domain = 'OS',
    n.definition = '먼저 시작된 프로세스가 나중에 시작한 프로세스가 점유한 자원 요청 시 대기(Wait) - 나중에 시작한 프로세스가 먼저 시작된 프로세스의 자원 요청 시 종료(Die)',
    n.aliases = ['Wait-Die'];

MERGE (n:Concept {id: 'wait-die_상황별_설명'})
SET     n.name = 'Wait-die 상황별 설명',
    n.name_kr = 'Wait-die 상황별 설명',
    n.domain = 'OS',
    n.definition = '오래된 프로세스(Older)가 요청할 경우 기 다림(Wait)';

MERGE (n:Concept {id: 'wound-wait_상황별_설명'})
SET     n.name = 'Wound-wait 상황별 설명',
    n.name_kr = 'Wound-wait 상황별 설명',
    n.domain = 'OS',
    n.definition = '오래된 프로세스(Older)가 요청할 경우 새로운 프로세스(Younger)를 선점(Wound)';

// --- 관계 ---

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: '병행제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Metric {id: 'old_process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Metric {id: 'young_process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'wait'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'die'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'wound'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: '선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: '비선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'wait_die'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'wait-die_상황별_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Concept {id: 'wound-wait_상황별_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Document {id: 'OS_031'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wait-die와_wound-wait'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'old_process'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'young_process'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wait'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'die'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wound'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비선점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wait_die'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wait-die_상황별_설명'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wound-wait_상황별_설명'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_032: 자원할당 그래프(Resource allocation graph)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_032'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'resource_allocation_graph'})
SET     n.name = 'Resource allocation graph',
    n.name_kr = '자원할당 그래프',
    n.domain = 'OS',
    n.aliases = ['Resource allocation graph', '자원할당 그래프'];

MERGE (n:Concept {id: '병행제어'})
SET     n.name = '병행제어',
    n.name_kr = '병행제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'vertex'})
SET     n.name = 'Vertex',
    n.name_kr = '정점',
    n.domain = 'OS',
    n.aliases = ['Vertex', '정점'];

MERGE (n:Concept {id: 'process'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'OS';

MERGE (n:Concept {id: 'resource'})
SET     n.name = '자원',
    n.name_kr = '자원',
    n.domain = 'OS';

MERGE (n:Concept {id: 'edge'})
SET     n.name = 'Edge',
    n.name_kr = '간선',
    n.domain = 'OS',
    n.aliases = ['Edge', '간선'];

MERGE (n:Concept {id: 'request_edge'})
SET     n.name = '요청 간선',
    n.name_kr = '요청 간선',
    n.domain = 'OS';

MERGE (n:Concept {id: 'assignment_edge'})
SET     n.name = '할당 간선',
    n.name_kr = '할당 간선',
    n.domain = 'OS';

MERGE (n:Concept {id: '교착상태'})
SET     n.name = '교착상태',
    n.name_kr = '교착상태',
    n.domain = 'OS';

MERGE (n:Concept {id: '사이클'})
SET     n.name = '사이클',
    n.name_kr = '사이클',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: '병행제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'vertex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'resource'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'edge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'request_edge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: 'assignment_edge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: '교착상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Concept {id: '사이클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Document {id: 'OS_032'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'resource_allocation_graph'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vertex'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'process'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'edge'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'request_edge'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'assignment_edge'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교착상태'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이클'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_033: 모니터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_033'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'monitor'})
SET     n.name = 'Monitor',
    n.name_kr = '모니터',
    n.domain = 'OS',
    n.aliases = ['모니터'];

MERGE (n:Concept {id: '병행제어'})
SET     n.name = '병행제어',
    n.name_kr = '병행제어',
    n.domain = 'OS';

MERGE (n:Concept {id: '프로그래밍_언어_수준_제공'})
SET     n.name = '프로그래밍 언어 수준 제공',
    n.name_kr = '프로그래밍 언어 수준 제공',
    n.domain = 'OS';

MERGE (n:Concept {id: '타이밍_해결'})
SET     n.name = '타이밍 해결',
    n.name_kr = '타이밍 해결',
    n.domain = 'OS';

MERGE (n:Concept {id: '한_순간_하나의_스레드'})
SET     n.name = '한 순간 하나의 스레드',
    n.name_kr = '한 순간 하나의 스레드',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Concept {id: '병행제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Concept {id: '프로그래밍_언어_수준_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Concept {id: '타이밍_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Concept {id: '한_순간_하나의_스레드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Document {id: 'OS_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'monitor'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그래밍_언어_수준_제공'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타이밍_해결'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한_순간_하나의_스레드'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_034: Banker's Algorithm
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_034'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'banker\'s_algorithm'})
SET     n.name = 'Banker\'s Algorithm',
    n.name_kr = 'Banker\'s Algorithm',
    n.domain = 'OS';

MERGE (n:Concept {id: '병행제어'})
SET     n.name = '병행제어',
    n.name_kr = '병행제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'aman+r(available'})
SET     n.name = 'AMAN+R(Available',
    n.name_kr = 'AMAN+R(Available',
    n.domain = 'OS';

MERGE (n:Concept {id: 'max'})
SET     n.name = 'Max',
    n.name_kr = 'Max',
    n.domain = 'OS',
    n.aliases = ['Max'];

MERGE (n:Concept {id: 'allocation'})
SET     n.name = 'Allocation',
    n.name_kr = 'Allocation',
    n.domain = 'OS',
    n.aliases = ['Allocation'];

MERGE (n:Concept {id: 'need'})
SET     n.name = 'Need',
    n.name_kr = 'Need',
    n.domain = 'OS',
    n.aliases = ['Need'];

MERGE (n:Concept {id: 'request)'})
SET     n.name = 'Request)',
    n.name_kr = 'Request)',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: '병행제어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: 'aman+r(available'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: 'max'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: 'allocation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: 'need'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Concept {id: 'request)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Document {id: 'OS_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'banker\'s_algorithm'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aman+r(available'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'max'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'allocation'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'need'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'request)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_035.1: 스핀락
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_035.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'spin_lock'})
SET     n.name = 'Spin Lock',
    n.name_kr = '스핀락',
    n.domain = 'OS',
    n.aliases = ['스핀락'];

MERGE (n:Concept {id: 'busy_wait'})
SET     n.name = 'Busy-Wait',
    n.name_kr = 'Busy-Wait',
    n.domain = 'OS',
    n.aliases = ['Busy-Wait'];

MERGE (n:Concept {id: 'spinning'})
SET     n.name = 'Spinning',
    n.name_kr = 'Spinning',
    n.domain = 'OS',
    n.aliases = ['Spinning'];

MERGE (n:Concept {id: 'context_switching'})
SET     n.name = 'Context-Switching',
    n.name_kr = 'Context-Switching',
    n.domain = 'OS',
    n.aliases = ['Context-Switching'];

MERGE (n:Concept {id: '기본동작'})
SET     n.name = '기본동작',
    n.name_kr = '기본동작',
    n.domain = 'OS',
    n.definition = 'spin_lock_init()';

MERGE (n:Concept {id: 'spin_unlock'})
SET     n.name = 'spin_unlock()',
    n.name_kr = 'spin_unlock()',
    n.domain = 'OS',
    n.definition = 'spinlock 해제';

MERGE (n:Concept {id: '세부동작'})
SET     n.name = '세부동작',
    n.name_kr = '세부동작',
    n.domain = 'OS',
    n.definition = 'spin_lock_irqsave()';

MERGE (n:Concept {id: 'spin_lock_irq'})
SET     n.name = 'spin_lock_irq()',
    n.name_kr = 'spin_lock_irq()',
    n.domain = 'OS',
    n.definition = 'interrupt disable 시킨 후 spinlock 설정';

MERGE (n:Concept {id: 'spin_lock_bh'})
SET     n.name = 'spin_lock_bh()',
    n.name_kr = 'spin_lock_bh()',
    n.domain = 'OS',
    n.definition = 'softirq를 disable 시킨 후 spinlock 설정';

MERGE (n:Concept {id: 'spin_unlock_irqrestore'})
SET     n.name = 'spin_unlock_irqrestore()',
    n.name_kr = 'spin_unlock_irqrestore()',
    n.domain = 'OS',
    n.definition = 'spin_lock_irqsave에서 저장한 cpu 레지스터 복구';

MERGE (n:Concept {id: 'spin_unlock_irq'})
SET     n.name = 'spin_unlock_irq()',
    n.name_kr = 'spin_unlock_irq()',
    n.domain = 'OS',
    n.definition = 'spin_lock_irq으로 설정된 spinlock 해제';

MERGE (n:Concept {id: 'spin_unlock_bh'})
SET     n.name = 'spin_unlock_bh()',
    n.name_kr = 'spin_unlock_bh()',
    n.domain = 'OS',
    n.definition = 'spin_lock_bh으로 설정된 spinlock 해제';

// --- 관계 ---

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'busy_wait'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spinning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'context_switching'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: '기본동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_unlock'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: '세부동작'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_lock_irq'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_lock_bh'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_unlock_irqrestore'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_unlock_irq'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Concept {id: 'spin_unlock_bh'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Document {id: 'OS_035.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'busy_wait'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spinning'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본동작'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_unlock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부동작'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_lock_irq'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_lock_bh'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_unlock_irqrestore'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_unlock_irq'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_unlock_bh'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_035.2: Livelock
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_035.2'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'livelock'})
SET     n.name = 'Livelock',
    n.name_kr = 'Livelock',
    n.domain = 'OS',
    n.aliases = ['Livelock'];

MERGE (n:Concept {id: '출제예상'})
SET     n.name = '출제예상',
    n.name_kr = '출제예상',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호_자원양보'})
SET     n.name = '상호 자원양보',
    n.name_kr = '상호 자원양보',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호배제'})
SET     n.name = '상호배제',
    n.name_kr = '상호배제',
    n.domain = 'OS';

MERGE (n:Concept {id: '점유/대기'})
SET     n.name = '점유/대기',
    n.name_kr = '점유/대기',
    n.domain = 'OS';

MERGE (n:Concept {id: '비선점'})
SET     n.name = '비선점',
    n.name_kr = '비선점',
    n.domain = 'OS';

MERGE (n:Concept {id: '환형대기'})
SET     n.name = '환형대기',
    n.name_kr = '환형대기',
    n.domain = 'OS';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'OS';

MERGE (n:Concept {id: '해결_방안'})
SET     n.name = '해결 방안',
    n.name_kr = '해결 방안',
    n.domain = 'OS',
    n.definition = '회피';

MERGE (n:Concept {id: 'deadlock'})
SET     n.name = 'Deadlock',
    n.name_kr = 'Deadlock',
    n.domain = 'OS',
    n.aliases = ['Deadlock'];

// --- 관계 ---

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '상호_자원양보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '상호배제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '점유/대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '비선점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '환형대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: 'deadlock'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Concept {id: 'deadlock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Document {id: 'OS_035.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'livelock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제예상'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호_자원양보'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호배제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점유/대기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비선점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환형대기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deadlock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_036.0: Dekker's algorithm, Peterson's algorithm
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_036.0'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '병행제어'})
SET     n.name = '병행제어',
    n.name_kr = '병행제어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'dekker'})
SET     n.name = '데커(내가 먼저)',
    n.name_kr = '데커(내가 먼저)',
    n.domain = 'OS';

MERGE (n:Concept {id: 'peterson'})
SET     n.name = '피터슨(남이 먼저)',
    n.name_kr = '피터슨(남이 먼저)',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'dekker\'s_algorithm,_peterson\'s_algorithm'})
MERGE (b:Concept {id: 'dekker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dekker\'s_algorithm,_peterson\'s_algorithm'})
MERGE (b:Concept {id: 'peterson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dekker\'s_algorithm,_peterson\'s_algorithm'})
MERGE (b:Document {id: 'OS_036.0'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '병행제어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dekker'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peterson'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_037: 경쟁 조건(Race Condition):
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_037'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'race_condition'})
SET     n.name = '경쟁 조건(Race Condition):',
    n.name_kr = '경쟁 조건(Race Condition):',
    n.domain = 'OS';

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'OS';

MERGE (n:Concept {id: '한계대기'})
SET     n.name = '한계대기',
    n.name_kr = '한계대기',
    n.domain = 'OS';

MERGE (n:Concept {id: '상호배제'})
SET     n.name = '상호배제',
    n.name_kr = '상호배제',
    n.domain = 'OS';

MERGE (n:Concept {id: 'progress'})
SET     n.name = '진행',
    n.name_kr = '진행',
    n.domain = 'OS';

MERGE (n:Concept {id: 'dekker'})
SET     n.name = 'Dekker',
    n.name_kr = 'Dekker',
    n.domain = 'OS',
    n.aliases = ['Dekker'];

MERGE (n:Concept {id: 'peterson'})
SET     n.name = 'Peterson',
    n.name_kr = 'Peterson',
    n.domain = 'OS',
    n.aliases = ['Peterson'];

MERGE (n:Concept {id: 'ramport'})
SET     n.name = 'Ramport',
    n.name_kr = 'Ramport',
    n.domain = 'OS',
    n.aliases = ['Ramport'];

MERGE (n:Concept {id: '세마포어'})
SET     n.name = '세마포어',
    n.name_kr = '세마포어',
    n.domain = 'OS';

MERGE (n:Concept {id: '모니터'})
SET     n.name = '모니터',
    n.name_kr = '모니터',
    n.domain = 'OS';

MERGE (n:Concept {id: '자원할당_측면'})
SET     n.name = '자원할당 측면',
    n.name_kr = '자원할당 측면',
    n.domain = 'OS',
    n.definition = '발생 조건';

MERGE (n:Concept {id: '발생_사례'})
SET     n.name = '발생 사례',
    n.name_kr = '발생 사례',
    n.domain = 'OS',
    n.definition = '복수 프로세스가 동시에 파일 할당 요청 - 복수 프로세스 동일 메모리 주소 할당 요청';

MERGE (n:Concept {id: '자원사용_측면'})
SET     n.name = '자원사용 측면',
    n.name_kr = '자원사용 측면',
    n.domain = 'OS',
    n.definition = '복수 프로세스가 명령을 처리하기 위해 동시에 단일 자원을 사용하려는 경우 발생';

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'OS',
    n.definition = 'Dekker';

MERGE (n:Concept {id: 'lamport'})
SET     n.name = 'Lamport',
    n.name_kr = 'Lamport',
    n.domain = 'OS',
    n.definition = '분산처리 환경에 유용한 알고리즘 - 번호표를 부여 받고 낮은 번호를 갖는 프로세스 먼저 수행',
    n.aliases = ['Lamport'];

MERGE (n:Concept {id: '하드웨어'})
SET     n.name = '하드웨어',
    n.name_kr = '하드웨어',
    n.domain = 'OS',
    n.definition = 'Test & Set';

MERGE (n:Concept {id: 'compare_&_swap'})
SET     n.name = 'Compare & Swap',
    n.name_kr = 'Compare & Swap',
    n.domain = 'OS',
    n.definition = '시스템에서 제공하는 하드웨어 명령어 두개의 내용을 한번에 변경함';

MERGE (n:Concept {id: '인터럽트_금지'})
SET     n.name = '인터럽트 금지',
    n.name_kr = '인터럽트 금지',
    n.domain = 'OS',
    n.definition = '문제되는 코드부분에서 인터럽트를 disable() 수행. 원자성 확보 - 인터럽트를 꺼버리면 내부적으로 Context Switching 불가능함';

MERGE (n:Concept {id: '동기화'})
SET     n.name = '동기화',
    n.name_kr = '동기화',
    n.domain = 'OS',
    n.definition = '세마포어';

MERGE (n:Concept {id: 'critical_section'})
SET     n.name = '임계영역',
    n.name_kr = '임계영역',
    n.domain = 'OS',
    n.definition = '병렬컴퓨팅에서 둘 이상의 스레드가 동시에 접근해서는 안되는 공유 자원 영역';

MERGE (n:Concept {id: 'spin_lock'})
SET     n.name = 'Spin Lock',
    n.name_kr = 'Spin Lock',
    n.domain = 'OS',
    n.definition = '임계영역에 진입이 불가능할 때 진입이 가능할 때까지 루프를 돌면서 재시도하는 방식으로 구현된 락',
    n.aliases = ['Spin Lock'];

MERGE (n:Concept {id: 'mutex'})
SET     n.name = 'Mutex',
    n.name_kr = 'Mutex',
    n.domain = 'OS',
    n.definition = 'pthread에서 제공하는 동기화 메커니즘으로 공유 자원 공간에 대한 접근 시간제어로 동기화 달성',
    n.aliases = ['Mutex'];

MERGE (n:Concept {id: 'test_&_set'})
SET     n.name = 'test & Set',
    n.name_kr = 'test & Set',
    n.domain = 'OS',
    n.definition = '시스템에서 제공하는 하드웨어 명령어, 상태를 점검하고 변경';

MERGE (n:Concept {id: 'interrupt_금지'})
SET     n.name = 'interrupt 금지',
    n.name_kr = 'interrupt 금지',
    n.domain = 'OS',
    n.definition = '문제가 되는 코드부분에서 Interrupt 를 disable()시켜, Atomic 하게 만듦 -Interrupt 를 꺼버리면, 내부적으로 Context Switching 이 불가능하게 됨';

MERGE (n:Concept {id: '단일처리기'})
SET     n.name = '단일처리기',
    n.name_kr = '단일처리기',
    n.domain = 'OS',
    n.definition = '구성';

MERGE (n:Concept {id: '시나리오'})
SET     n.name = '시나리오',
    n.name_kr = '시나리오',
    n.domain = 'OS',
    n.definition = '특정 프로세스가 자원을 lock하고 sleep이나 I/O wait등으로 빠지는 경우에 다른 프로세스들이 무한 대기에 빠질 가능성이 있음 대기중인 프로세스 중에서 sleep & wait 등을 통하여 다음에 자원을 lock할수 있는 기회가 생김 (경쟁이 발생함) 상호배타 방식의 종류';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'OS',
    n.definition = '단일 처리기 시스템에서는 자원의 독점과 무한대기를 방지하기 위하여 세마포어를 사용함 - 공유 메모리 혹은 공유 파일의 사용시 다른 프로세스가 사용하지 못하도록 배제하는상호배제 (mutual exclusion)의 최소화 - 최소 임계영역(Critical Section)의 access를 통하여, 한 프로세스가 한자원을 오랜 시간 동안 독점 하지 못하게 함.';

MERGE (n:Metric {id: '다중시스템'})
SET     n.name = '다중시스템',
    n.name_kr = '다중시스템',
    n.domain = 'OS',
    n.definition = 'multi-processor 구성으로 여러 processor(CPU)에서 동시에 여러 프로세스가 실행됨 - 어느 processor에서 실행되는지 관계없이 시스템 자원에 대한 lock과 release는 단일처리기 시스템 보다 훨씬 많은 경쟁조건이 발생됨';

// --- 관계 ---

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '한계대기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '상호배제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'progress'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'dekker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'peterson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'ramport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '세마포어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '모니터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '자원할당_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '발생_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '자원사용_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'lamport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '하드웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'compare_&_swap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '인터럽트_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '동기화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'critical_section'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'spin_lock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'mutex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'test_&_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: 'interrupt_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '단일처리기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '시나리오'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Metric {id: '다중시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Document {id: 'OS_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'race_condition'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계대기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호배제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'progress'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dekker'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peterson'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ramport'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세마포어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원할당_측면'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생_사례'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원사용_측면'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lamport'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compare_&_swap'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트_금지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_section'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spin_lock'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mutex'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_&_set'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interrupt_금지'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일처리기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시나리오'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '다중시스템'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_039.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_039.1'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_039.2: 문맥교환(Context Switching)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_039.2'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'context_switching'})
SET     n.name = 'Context Switching',
    n.name_kr = '문맥교환',
    n.domain = 'OS',
    n.aliases = ['Context Switching', '문맥교환'];

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'OS';

MERGE (n:Concept {id: 'context_switch'})
SET     n.name = '문맥교환',
    n.name_kr = '문맥교환',
    n.domain = 'OS';

MERGE (n:Concept {id: '5상태'})
SET     n.name = '5상태 (신준실대종)',
    n.name_kr = '5상태 (신준실대종)',
    n.domain = 'OS';

MERGE (n:Concept {id: '정보내용'})
SET     n.name = '정보내용',
    n.name_kr = '정보내용',
    n.domain = 'OS',
    n.definition = 'CPU 사용량 정보, 태스크 스케줄링에 필요한 우선순위 - 태스크에게 전달된 시그널, 태스크가 사용하고 있는 자원정보 - 태스크 가족 관계, 파일 오픈시 생기는 파일 디스크립터 (File Descriptor = fd)';

MERGE (n:Concept {id: '발생지점'})
SET     n.name = '발생지점',
    n.name_kr = '발생지점',
    n.domain = 'OS',
    n.definition = '잦은 문맥교환 발생시 시간 및 PCB 정보저장 등 I/O에 시스템 자원의 과다소비가 발생';

MERGE (n:Concept {id: '오버헤드_요소'})
SET     n.name = '오버헤드 요소',
    n.name_kr = '오버헤드 요소',
    n.domain = 'OS',
    n.definition = '디스패치(Dispatch), 시간 종료(Time Slice), 입출력(I/O), CPU스케줄링, 시스템 콜(System Call)';

MERGE (n:Concept {id: '해결방법'})
SET     n.name = '해결방법',
    n.name_kr = '해결방법',
    n.domain = 'OS',
    n.definition = '원인 제거';

MERGE (n:Concept {id: '구조_변경'})
SET     n.name = '구조 변경',
    n.name_kr = '구조 변경',
    n.domain = 'OS',
    n.definition = '스택 중심의 시스템에서는 스택 포인터를 변경하여 프로세스간 문맥교환 수행';

MERGE (n:Concept {id: '스레드_이용'})
SET     n.name = '스레드 이용',
    n.name_kr = '스레드 이용',
    n.domain = 'OS',
    n.definition = 'Light weight 프로세스인 스레드를 이용하여 Context switch 부하 최소화';

MERGE (n:Concept {id: 'user_thread_사용'})
SET     n.name = 'User Thread 사용',
    n.name_kr = 'User Thread 사용',
    n.domain = 'OS',
    n.definition = 'Kernel Thread 보다 User Thread 사용으로 Context Switching 감소';

// --- 관계 ---

MERGE (a:Concept {id: 'context_switch'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '5상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '정보내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '발생지점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '오버헤드_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '해결방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '구조_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: '스레드_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Concept {id: 'user_thread_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Document {id: 'OS_039.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'context_switching'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'context_switch'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5상태'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보내용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생지점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오버헤드_요소'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조_변경'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스레드_이용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user_thread_사용'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_040: Process Control Block
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_040'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Metric {id: 'process_control_block'})
SET     n.name = 'Process Control Block',
    n.name_kr = 'Process Control Block',
    n.domain = 'OS',
    n.aliases = ['Process Control Block'];

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'OS';

MERGE (n:Concept {id: '상어카레입아포_(상태'})
SET     n.name = '상어카레입아포 (상태',
    n.name_kr = '상어카레입아포 (상태',
    n.domain = 'OS';

MERGE (n:Concept {id: 'account'})
SET     n.name = 'account',
    n.name_kr = 'account',
    n.domain = 'OS',
    n.aliases = ['account'];

MERGE (n:Concept {id: 'pc'})
SET     n.name = 'PC',
    n.name_kr = 'PC',
    n.domain = 'OS',
    n.aliases = ['PC'];

MERGE (n:Concept {id: 'register'})
SET     n.name = 'Register',
    n.name_kr = 'Register',
    n.domain = 'OS',
    n.aliases = ['Register'];

MERGE (n:Concept {id: '입출력'})
SET     n.name = '입출력',
    n.name_kr = '입출력',
    n.domain = 'OS';

MERGE (n:Concept {id: 'pid'})
SET     n.name = 'PID',
    n.name_kr = 'ID',
    n.domain = 'OS',
    n.aliases = ['PID', 'ID'];

MERGE (n:Concept {id: 'pointer)'})
SET     n.name = 'Pointer)',
    n.name_kr = 'Pointer)',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: '상어카레입아포_(상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: 'account'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: 'pc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: 'register'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: '입출력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: 'pid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Concept {id: 'pointer)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Document {id: 'OS_040'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'process_control_block'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상어카레입아포_(상태'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'account'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pc'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pid'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pointer)'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_041: 디스패처(Dispatcher)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_041'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'dispatcher'})
SET     n.name = 'Dispatcher',
    n.name_kr = '디스패처',
    n.domain = 'OS',
    n.aliases = ['Dispatcher', '디스패처'];

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'OS';

MERGE (n:Concept {id: 'scheduler'})
SET     n.name = 'Scheduler',
    n.name_kr = 'Scheduler',
    n.domain = 'OS',
    n.aliases = ['Scheduler'];

// --- 관계 ---

MERGE (a:Concept {id: 'dispatcher'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'scheduler'})
MERGE (b:Concept {id: 'dispatcher'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dispatcher'})
MERGE (b:Concept {id: 'scheduler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dispatcher'})
MERGE (b:Document {id: 'OS_041'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dispatcher'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scheduler'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_042: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_042'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_045: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_045'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_046: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_046'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_047: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_047'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_048: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_048'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_049: UNIX 구성요소
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_049'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'unix_구성요소'})
SET     n.name = 'UNIX 구성요소',
    n.name_kr = 'UNIX 구성요소',
    n.domain = 'OS';

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'Unix',
    n.name_kr = 'Unix',
    n.domain = 'OS',
    n.aliases = ['Unix'];

MERGE (n:Concept {id: '부슈아데'})
SET     n.name = '부슈아데',
    n.name_kr = '부슈아데',
    n.domain = 'OS';

MERGE (n:Concept {id: 'magic_number'})
SET     n.name = 'Magic Number',
    n.name_kr = 'Magic Number',
    n.domain = 'OS',
    n.definition = '마운트하는 커널로 하여금 진짜 파일시스템의 수퍼블록임을 확인할 수 있게 함',
    n.aliases = ['Magic Number'];

MERGE (n:Concept {id: 'revision_mount_count'})
SET     n.name = 'Revision Mount Count',
    n.name_kr = 'Revision Mount Count',
    n.domain = 'OS',
    n.definition = '어떤 특정한 버전에서만 지원되는 기능여부 체크시 사용 -기능 호환성 체크',
    n.aliases = ['Revision Mount Count'];

MERGE (n:Concept {id: 'block_count'})
SET     n.name = 'Block Count',
    n.name_kr = 'Block Count',
    n.domain = 'OS',
    n.definition = '파일의 모든 정보를 저장하고 관리하기 위한 객체, 파일이 새로 생성되면 만들어지며 모든 파일은 1개 I-node 가짐 -파일에 속한 블록 위치, 파일 소유자 및접근제어 권한, 파일 시간 정보, 파일 유형 등을 관리',
    n.aliases = ['Block Count'];

MERGE (n:Concept {id: 'block_group_number'})
SET     n.name = 'Block Group Number',
    n.name_kr = 'Block Group Number',
    n.domain = 'OS',
    n.definition = '파일의 실제 데이터가 저장되는 공간으로 파일시스템 공간의 대부분을 차지 -I-node descriptor의 블록 포인터는 파일이 저장되는 블록 번호를 가리킴',
    n.aliases = ['Block Group Number'];

MERGE (n:Concept {id: 'block_size'})
SET     n.name = 'Block Size',
    n.name_kr = 'Block Size',
    n.domain = 'OS',
    n.definition = '이 파일시스템의 블록 크기를 바이트 단위로 표시',
    n.aliases = ['Block Size'];

MERGE (n:Concept {id: 'blocks_per_group'})
SET     n.name = 'Blocks per Group',
    n.name_kr = 'Blocks per Group',
    n.domain = 'OS',
    n.definition = '하나의 그룹에 속하는 블록의 개수 -블록 크기와 마찬가지로 파일 시스템을 만들 때 정해짐',
    n.aliases = ['Blocks per Group'];

MERGE (n:Concept {id: 'free_blocks'})
SET     n.name = 'Free Blocks',
    n.name_kr = 'Free Blocks',
    n.domain = 'OS',
    n.definition = '파일시스템 내의 프리 블록 수',
    n.aliases = ['Free Blocks'];

MERGE (n:Concept {id: 'free_inode'})
SET     n.name = 'Free Inode',
    n.name_kr = 'Free Inode',
    n.domain = 'OS',
    n.definition = '파일시스템 내의 프리 inode 수',
    n.aliases = ['Free Inode'];

MERGE (n:Concept {id: 'first_inode'})
SET     n.name = 'First Inode',
    n.name_kr = 'First Inode',
    n.domain = 'OS',
    n.definition = '파일시스템 내의 첫번째 inode의 inode 번호',
    n.aliases = ['First Inode'];

MERGE (n:Concept {id: 'inode_per_group'})
SET     n.name = 'Inode per Group',
    n.name_kr = 'Inode per Group',
    n.domain = 'OS',
    n.definition = '각 블록 그룹당 들어있는 inode 개수',
    n.aliases = ['Inode per Group'];

MERGE (n:Concept {id: '할당기법'})
SET     n.name = '할당기법',
    n.name_kr = '할당기법',
    n.domain = 'OS';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: '부슈아데'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'magic_number'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'revision_mount_count'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'block_count'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'block_group_number'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'block_size'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'blocks_per_group'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'free_blocks'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'free_inode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'first_inode'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: 'inode_per_group'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '할당기법'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: '할당기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Document {id: 'OS_049'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'unix_구성요소'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부슈아데'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'magic_number'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'revision_mount_count'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_count'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_group_number'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'block_size'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blocks_per_group'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'free_blocks'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'free_inode'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'first_inode'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inode_per_group'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '할당기법'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// OS 도메인 자동 생성 완료
// 노드: 354개
// 관계: 716개
// ================================================================