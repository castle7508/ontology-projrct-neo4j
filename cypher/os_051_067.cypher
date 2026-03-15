// ================================================================
// OS 도메인 (OS_051 ~ OS_067) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// OS_050.1: I-node
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_050.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'i_node'})
SET     n.name = 'I-node',
    n.name_kr = 'I-node',
    n.domain = 'OS',
    n.aliases = ['I-node'];

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'Unix',
    n.name_kr = 'Unix',
    n.domain = 'OS',
    n.aliases = ['Unix'];

MERGE (n:Concept {id: '부슈아데'})
SET     n.name = '부슈아데',
    n.name_kr = '부슈아데',
    n.domain = 'OS';

MERGE (n:Concept {id: '기본정보'})
SET     n.name = '기본정보',
    n.name_kr = '기본정보',
    n.domain = 'OS',
    n.definition = 'Mode';

MERGE (n:Concept {id: 'owner'})
SET     n.name = 'Owner',
    n.name_kr = 'Owner',
    n.domain = 'OS',
    n.definition = '파일 소유자의 사용자 및 그룹 ID(UID, GID)',
    n.aliases = ['Owner'];

MERGE (n:Concept {id: 'size'})
SET     n.name = 'Size',
    n.name_kr = 'Size',
    n.domain = 'OS',
    n.definition = '파일의 크기',
    n.aliases = ['Size'];

MERGE (n:Concept {id: 'timestamps'})
SET     n.name = 'Timestamps',
    n.name_kr = 'Timestamps',
    n.domain = 'OS',
    n.definition = '파일이 생성된 시간, 최근 사용된 시간, 최근 변경된 시간',
    n.aliases = ['Timestamps'];

MERGE (n:Concept {id: 'data_정보'})
SET     n.name = 'Data 정보',
    n.name_kr = 'Data 정보',
    n.domain = 'OS',
    n.definition = 'Direct blocks';

MERGE (n:Concept {id: 'addressing'})
SET     n.name = 'Addressing',
    n.name_kr = 'Data block 관리',
    n.domain = 'OS',
    n.definition = 'Single indirect data block 1개 : 4K * 1024 = 4MB(인덱스 당 4byte) -Double indirect data block 1개 : 4K * 1024 *1024= 4GB -Triple indirect data block 1개 : 4K*1024*1024*1024= 4TB',
    n.aliases = ['Addressing', 'Data block 관리'];

// --- 관계 ---

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: '부슈아데'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: '기본정보'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'owner'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'size'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'timestamps'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'data_정보'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Concept {id: 'addressing'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Document {id: 'OS_050.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'i_node'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부슈아데'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본정보'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owner'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'size'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timestamps'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_정보'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'addressing'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_051: UNIX umask
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_051'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'unix_umask'})
SET     n.name = 'UNIX umask',
    n.name_kr = 'UNIX umask',
    n.domain = 'OS',
    n.aliases = ['UNIX umask'];

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'UNIX',
    n.name_kr = 'UNIX',
    n.domain = 'OS',
    n.aliases = ['UNIX'];

MERGE (n:Concept {id: '보안적_측면'})
SET     n.name = '보안적 측면',
    n.name_kr = '보안적 측면',
    n.domain = 'OS',
    n.definition = '불필요한 권한 부여 방지';

MERGE (n:Concept {id: '운영_효율성_측면'})
SET     n.name = '운영 효율성 측면',
    n.name_kr = '운영 효율성 측면',
    n.domain = 'OS',
    n.definition = '파일/디렉토리 권한 자동 부여';

// --- 관계 ---

MERGE (a:Concept {id: 'unix_umask'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'unix_umask'})
MERGE (b:Concept {id: '보안적_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'unix_umask'})
MERGE (b:Concept {id: '운영_효율성_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'unix_umask'})
MERGE (b:Document {id: 'OS_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'unix_umask'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안적_측면'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_효율성_측면'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_052: Link/unlink
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_052'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'link_unlink'})
SET     n.name = 'Link/unlink',
    n.name_kr = 'Link/unlink',
    n.domain = 'OS',
    n.aliases = ['Link/unlink'];

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'UNIX',
    n.name_kr = 'UNIX',
    n.domain = 'OS',
    n.aliases = ['UNIX'];

MERGE (n:Concept {id: 'hard_link'})
SET     n.name = 'Hard link',
    n.name_kr = 'Hard link',
    n.domain = 'OS',
    n.aliases = ['Hard link'];

MERGE (n:Concept {id: 'symbolic_link'})
SET     n.name = 'Symbolic link',
    n.name_kr = 'Symbolic link',
    n.domain = 'OS',
    n.aliases = ['Symbolic link'];

MERGE (n:Concept {id: 'link_시스템_호출의_장점'})
SET     n.name = 'Link 시스템 호출의 장점',
    n.name_kr = 'Link 시스템 호출의 장점',
    n.domain = 'OS',
    n.definition = '디스크 생성 제한';

MERGE (n:Concept {id: '권한_제한'})
SET     n.name = '권한 제한',
    n.name_kr = '권한 제한',
    n.domain = 'OS',
    n.definition = '슈퍼유저만 디렉토리에 관해 하드링크 생성 가능함 - 디렉토리 링크는 특정 어플리케이션, 라이브러리를 사용하는데 무한 루프를 발생시킬 수 있음';

MERGE (n:Concept {id: 'link_시스템_호출의_단점'})
SET     n.name = 'Link 시스템 호출의 단점',
    n.name_kr = 'Link 시스템 호출의 단점',
    n.domain = 'OS',
    n.definition = '원본 파일 보호 안됨';

MERGE (n:Concept {id: '이름_중복_안됨'})
SET     n.name = '이름 중복 안됨',
    n.name_kr = '이름 중복 안됨',
    n.domain = 'OS',
    n.definition = '새로 만들려는 하드링크의 이름이 이미 존재하면 에러를 발생함';

MERGE (n:Concept {id: '취약점_존재'})
SET     n.name = '취약점 존재',
    n.name_kr = '취약점 존재',
    n.domain = 'OS',
    n.definition = '버퍼 오버플로우 등의 공격을 통해 해킹이 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: 'hard_link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: 'symbolic_link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: 'link_시스템_호출의_장점'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: '권한_제한'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: 'link_시스템_호출의_단점'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: '이름_중복_안됨'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Concept {id: '취약점_존재'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Document {id: 'OS_052'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'link_unlink'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hard_link'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'symbolic_link'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link_시스템_호출의_장점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한_제한'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link_시스템_호출의_단점'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이름_중복_안됨'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점_존재'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_053: Fork
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_053'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'fork'})
SET     n.name = 'Fork',
    n.name_kr = 'Fork',
    n.domain = 'OS',
    n.aliases = ['Fork'];

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'UNIX',
    n.name_kr = 'UNIX',
    n.domain = 'OS',
    n.aliases = ['UNIX'];

MERGE (n:Concept {id: 'system_call'})
SET     n.name = '시스템 호출',
    n.name_kr = '시스템 호출',
    n.domain = 'OS';

MERGE (n:Concept {id: 'unix_내부_함수'})
SET     n.name = 'unix 내부 함수',
    n.name_kr = 'unix 내부 함수',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'fork'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fork'})
MERGE (b:Concept {id: 'system_call'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fork'})
MERGE (b:Concept {id: 'unix_내부_함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fork'})
MERGE (b:Document {id: 'OS_053'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fork'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system_call'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix_내부_함수'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_054: IPC (InterProcess Communication)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_054'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Metric {id: 'interprocess_communication'})
SET     n.name = 'InterProcess Communication',
    n.name_kr = 'IPC',
    n.domain = 'OS',
    n.aliases = ['InterProcess Communication', 'IPC'];

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'UNIX',
    n.name_kr = 'UNIX',
    n.domain = 'OS',
    n.aliases = ['UNIX'];

MERGE (n:Concept {id: 'ipc'})
SET     n.name = 'IPC',
    n.name_kr = 'IPC',
    n.domain = 'OS',
    n.aliases = ['IPC'];

MERGE (n:Concept {id: 'shared_memory'})
SET     n.name = '공유 메모리',
    n.name_kr = '공유 메모리',
    n.domain = 'OS';

MERGE (n:Concept {id: '메시지_전달'})
SET     n.name = '메시지 전달',
    n.name_kr = '메시지 전달',
    n.domain = 'OS';

MERGE (n:Concept {id: 'semaphore'})
SET     n.name = '세마포어',
    n.name_kr = '세마포어',
    n.domain = 'OS';

MERGE (n:Concept {id: 'message_queue'})
SET     n.name = '메시지 큐',
    n.name_kr = '메시지 큐',
    n.domain = 'OS';

MERGE (n:Concept {id: '독립적_프로세스'})
SET     n.name = '독립적 프로세스',
    n.name_kr = '독립적 프로세스',
    n.domain = 'OS',
    n.definition = '다른 프로세스와 자료를 공유하지 않는 프로세스(상호 영향 주지 않은)';

MERGE (n:Concept {id: '협력적_프로세스'})
SET     n.name = '협력적 프로세스',
    n.name_kr = '협력적 프로세스',
    n.domain = 'OS',
    n.definition = '다른 프로세스들과 자료를 공유하는 프로세스(상호 영향을 주고받는)';

MERGE (n:Concept {id: 'information_sharing'})
SET     n.name = 'Information Sharing',
    n.name_kr = '정보공유',
    n.domain = 'OS',
    n.definition = '동일 정보에 병행적으로 접근할 수 있는 환경 제공',
    n.aliases = ['Information Sharing', '정보공유'];

MERGE (n:Concept {id: 'computation_speedup'})
SET     n.name = 'Computation speedup',
    n.name_kr = '계산 가속화',
    n.domain = 'OS',
    n.definition = 'Task를 sub task로 나누어 병렬로 실행하는 환경 제공',
    n.aliases = ['Computation speedup', '계산 가속화'];

MERGE (n:Concept {id: 'modularity'})
SET     n.name = 'Modularity',
    n.name_kr = '모듈성',
    n.domain = 'OS',
    n.definition = '시스템 기능을 별도의 프로세스 또는 thread로 나누어 구성하는 환경 제공',
    n.aliases = ['Modularity', '모듈성'];

MERGE (n:Concept {id: 'convergence'})
SET     n.name = 'Convergence',
    n.name_kr = '편의성',
    n.domain = 'OS',
    n.definition = '개별 사용자가 동시에 많은 작업 처리(편집/인쇄) 환경 제공',
    n.aliases = ['Convergence', '편의성'];

// --- 관계 ---

MERGE (a:Concept {id: 'ipc'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'shared_memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: '메시지_전달'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'semaphore'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'message_queue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: '독립적_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: '협력적_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'information_sharing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'computation_speedup'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'modularity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Concept {id: 'convergence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Document {id: 'OS_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'interprocess_communication'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ipc'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shared_memory'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지_전달'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'semaphore'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'message_queue'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립적_프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협력적_프로세스'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'information_sharing'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computation_speedup'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'convergence'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_056: Interrupt 종류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_056'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'interrupt_종류'})
SET     n.name = 'Interrupt 종류',
    n.name_kr = 'Interrupt 종류',
    n.domain = 'OS';

MERGE (n:Concept {id: 'interrupt'})
SET     n.name = 'Interrupt',
    n.name_kr = 'Interrupt',
    n.domain = 'OS',
    n.aliases = ['Interrupt'];

MERGE (n:Concept {id: 'isr'})
SET     n.name = 'ISR',
    n.name_kr = '인터럽트 처리(서비스) 루틴',
    n.domain = 'OS',
    n.aliases = ['ISR', '인터럽트 처리(서비스) 루틴'];

// --- 관계 ---

MERGE (a:Concept {id: 'interrupt_종류'})
MERGE (b:Concept {id: 'interrupt'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interrupt_종류'})
MERGE (b:Concept {id: 'isr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interrupt_종류'})
MERGE (b:Document {id: 'OS_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interrupt_종류'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interrupt'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isr'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_062: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_062'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_065: 시간지역성(Temporal Locality), 공간지역성(Spatial Locality)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_065'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'temporal_locality'})
SET     n.name = 'Spatial Locality',
    n.name_kr = '시간지역성(Temporal Locality), 공간지역성',
    n.domain = 'OS',
    n.aliases = ['Spatial Locality', '시간지역성(Temporal Locality), 공간지역성'];

MERGE (n:Concept {id: 'locality'})
SET     n.name = 'Locality',
    n.name_kr = 'Locality',
    n.domain = 'OS',
    n.aliases = ['Locality'];

MERGE (n:Concept {id: '공간지역성:_인접_데이터_사용률_높음'})
SET     n.name = '공간지역성: 인접 데이터 사용률 높음',
    n.name_kr = '공간지역성: 인접 데이터 사용률 높음',
    n.domain = 'OS';

MERGE (n:Concept {id: '지역성_최소화'})
SET     n.name = '지역성 최소화',
    n.name_kr = '지역성 최소화',
    n.domain = 'OS',
    n.definition = '적중률(Hit Ratio) = (적중수)/주기억장치 접근의 총수 = (적중수)/(적중의 수 + 실패의 수)';

MERGE (n:Concept {id: 'temporal'})
SET     n.name = '시간적(Temporal) Locality',
    n.name_kr = '시간적(Temporal) Locality',
    n.domain = 'OS',
    n.definition = '최근에 참조된 기억장소가 가까운 장래에 계속 참조될 가능성이 높은 성질';

MERGE (n:Concept {id: 'spatial'})
SET     n.name = '공간적 (Spatial) Locality',
    n.name_kr = '공간적 (Spatial) Locality',
    n.domain = 'OS',
    n.definition = '최근에 참조된 기억장소와 가까운 기억정보가 가까운 장래에 계속 참조될 가능성이 높은 성질';

MERGE (n:Concept {id: 'sequential_locality'})
SET     n.name = 'Sequential Locality',
    n.name_kr = '순차적 지역성',
    n.domain = 'OS',
    n.definition = '따로 분기(branch)가 없는 한 데이터가 기억장치에 저장된 순서대로 순차적으로 인출되고 실행될 가능성이 높음',
    n.aliases = ['Sequential Locality', '순차적 지역성'];

// --- 관계 ---

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Concept {id: '공간지역성:_인접_데이터_사용률_높음'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Concept {id: '지역성_최소화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Concept {id: 'temporal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Concept {id: 'spatial'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Concept {id: 'sequential_locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Document {id: 'OS_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'temporal_locality'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'locality'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간지역성:_인접_데이터_사용률_높음'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지역성_최소화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'temporal'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spatial'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequential_locality'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_066: Thrashing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_066'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'thrashing'})
SET     n.name = 'Thrashing',
    n.name_kr = 'Thrashing',
    n.domain = 'OS',
    n.aliases = ['Thrashing'];

MERGE (n:Concept {id: '부적절한_페이지_교체_정책'})
SET     n.name = '부적절한 페이지 교체 정책',
    n.name_kr = '부적절한 페이지 교체 정책',
    n.domain = 'OS';

MERGE (n:Concept {id: 'locality'})
SET     n.name = 'Locality',
    n.name_kr = 'Locality',
    n.domain = 'OS',
    n.aliases = ['Locality'];

MERGE (n:Concept {id: 'working_set'})
SET     n.name = 'Working-Set',
    n.name_kr = 'WS',
    n.domain = 'OS',
    n.aliases = ['Working-Set', 'WS'];

MERGE (n:Concept {id: 'page_fault_frequency'})
SET     n.name = 'Page Fault Frequency',
    n.name_kr = 'PFF',
    n.domain = 'OS',
    n.aliases = ['Page Fault Frequency', 'PFF'];

MERGE (n:Concept {id: 'working_set_model'})
SET     n.name = 'Working-Set Model',
    n.name_kr = 'Working-Set Model',
    n.domain = 'OS',
    n.definition = '적정 Interval Time',
    n.aliases = ['Working-Set Model'];

MERGE (n:Concept {id: 'pff'})
SET     n.name = 'PFF',
    n.name_kr = 'PFF',
    n.domain = 'OS',
    n.definition = 'Lock Bit 활용',
    n.aliases = ['PFF'];

// --- 관계 ---

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: '부적절한_페이지_교체_정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'locality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'working_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'working_set'})
MERGE (b:Concept {id: 'page_fault_frequency'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'working_set'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'page_fault_frequency'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'working_set_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Concept {id: 'pff'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Document {id: 'OS_066'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'thrashing'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부적절한_페이지_교체_정책'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'locality'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'working_set'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'page_fault_frequency'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'working_set_model'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pff'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_069: Embedded System
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_069'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'embedded_system'})
SET     n.name = 'Embedded System',
    n.name_kr = 'Embedded System',
    n.domain = 'OS',
    n.aliases = ['Embedded System'];

MERGE (n:Concept {id: 'real_time'})
SET     n.name = '실시간 처리',
    n.name_kr = '실시간 처리',
    n.domain = 'OS';

MERGE (n:Concept {id: 'application_specific'})
SET     n.name = '특정목적',
    n.name_kr = '특정목적',
    n.domain = 'OS';

MERGE (n:Concept {id: '신뢰성_향상'})
SET     n.name = '신뢰성 향상',
    n.name_kr = '신뢰성 향상',
    n.domain = 'OS';

MERGE (n:Concept {id: '물리적_특성_반영'})
SET     n.name = '물리적 특성 반영',
    n.name_kr = '물리적 특성 반영',
    n.domain = 'OS',
    n.definition = '실시간 처리(real time), 저전력(low energy) 등 HW 제한';

MERGE (n:Concept {id: 'hw'})
SET     n.name = '하드웨어(HW)와 SW 동시설계',
    n.name_kr = '하드웨어(HW)와 SW 동시설계',
    n.domain = 'OS',
    n.definition = '특정목적(application specific) 수행을 위한 HW와 시스템 SW가 내장됨';

MERGE (n:Concept {id: '강한_제약성'})
SET     n.name = '강한 제약성',
    n.name_kr = '강한 제약성',
    n.domain = 'OS',
    n.definition = '소형, 실시간 반응 요구, 제한된 시스템 자원 사용';

MERGE (n:Concept {id: 'reactive'})
SET     n.name = 'reactive',
    n.name_kr = '반응성',
    n.domain = 'OS',
    n.definition = '외부 사건에 반응하여 작업(계산)이 이루어짐 - 사건의 종류는 주기적 사건과 비주기적 사건이 있음',
    n.aliases = ['reactive', '반응성'];

MERGE (n:Concept {id: 'realtime'})
SET     n.name = 'realtime',
    n.name_kr = '실시간성',
    n.domain = 'OS',
    n.definition = '반응 동작에 시간 제약이 있음 - 주어진 입력에 대해서 정해진 시간(deadline)범위 내에 처리를 해야 하며, 그렇지 못할 경우 문제가 발생하는 시스템 - 시간 제약은 최대 시간 뿐 만 아니라 최소 시간도 지정될 수 있음',
    n.aliases = ['realtime', '실시간성'];

MERGE (n:Concept {id: '물리적_특성'})
SET     n.name = '물리적 특성 (HW 제한)',
    n.name_kr = '물리적 특성 (HW 제한)',
    n.domain = 'OS',
    n.definition = '실시간 처리';

MERGE (n:Concept {id: '연성_실시간_시스템'})
SET     n.name = '연성 실시간 시스템',
    n.name_kr = '연성 실시간 시스템',
    n.domain = 'OS',
    n.definition = '지연된 반응에 대한 치명적 영향을 미치지 않고 시스템에 미세한 영향 - 데스크톱 컴퓨터, 정보단말기 등';

MERGE (n:Concept {id: 'hw/sw_일체형'})
SET     n.name = 'HW/SW 일체형',
    n.name_kr = 'HW/SW 일체형',
    n.domain = 'OS',
    n.definition = '특수목적 처리';

MERGE (n:Concept {id: '정보_단말기'})
SET     n.name = '정보 단말기',
    n.name_kr = '정보 단말기',
    n.domain = 'OS',
    n.definition = '휴대폰, PDA, 스마트폰, 영상전화기 등을 디지털 기기 - 각종 정보검색, 오락, 메시지, 개인정보관리 등의 복합기능 수행';

MERGE (n:Concept {id: 'fa,_factory_automation'})
SET     n.name = 'FA, Factory Automation',
    n.name_kr = '공장자동화',
    n.domain = 'OS',
    n.definition = '산업분야에서 생산공정의 제어에 필요한 시스템 - 공정을 실시간 제어 또는 정밀한 처리가 필요한 과정에서는 고성능 임베디드 시스템을 탑재한 산업용로봇과 같은 장비 필요',
    n.aliases = ['FA, Factory Automation', '공장자동화'];

MERGE (n:Concept {id: 'oa,_office_automation'})
SET     n.name = 'OA, Office Automation',
    n.name_kr = '사무자동화',
    n.domain = 'OS',
    n.definition = '사무활동의 효율화 및 내용의 질적 향상을 위해 전자기기 등을 사용한 사무처리의 자동화 - 프린터, 스캐너, 팩스 등의 기능을 하나로 통합한 복합기 등',
    n.aliases = ['OA, Office Automation', '사무자동화'];

MERGE (n:Concept {id: '물류분야'})
SET     n.name = '물류분야',
    n.name_kr = '물류분야',
    n.domain = 'OS',
    n.definition = '바코드 리더 및 발급기, 무선인식장치, POS 단말기, RFID 등';

MERGE (n:Concept {id: '금융분야'})
SET     n.name = '금융분야',
    n.name_kr = '금융분야',
    n.domain = 'OS',
    n.definition = '자동현금입출금기, 신용카드의 인식기나 발급기, 훼손된 지폐 검출, 지문인식, 음성안내, 감시 카메라를 이용한 감시 기능 등';

MERGE (n:Concept {id: 'low_energy'})
SET     n.name = '저전력',
    n.name_kr = '저전력',
    n.domain = 'OS',
    n.definition = '센서 네트워크';

// --- 관계 ---

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'embedded_system'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'real_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'application_specific'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '신뢰성_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '물리적_특성_반영'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'hw'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '강한_제약성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'reactive'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'realtime'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '물리적_특성'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '연성_실시간_시스템'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'hw/sw_일체형'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '정보_단말기'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'fa,_factory_automation'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'oa,_office_automation'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '물류분야'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: '금융분야'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Concept {id: 'low_energy'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Document {id: 'OS_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'real_time'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'application_specific'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성_향상'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_특성_반영'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강한_제약성'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reactive'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'realtime'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_특성'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연성_실시간_시스템'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw/sw_일체형'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_단말기'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fa,_factory_automation'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oa,_office_automation'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물류분야'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융분야'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'low_energy'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_070: Embedded OS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_070'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'embedded_os'})
SET     n.name = 'Embedded OS',
    n.name_kr = 'Embedded OS',
    n.domain = 'OS',
    n.aliases = ['Embedded OS'];

MERGE (n:Concept {id: 'embedded_system'})
SET     n.name = 'Embedded System',
    n.name_kr = 'Embedded System',
    n.domain = 'OS',
    n.aliases = ['Embedded System'];

MERGE (n:Concept {id: '제한된_자원'})
SET     n.name = '제한된 자원',
    n.name_kr = '제한된 자원',
    n.domain = 'OS';

MERGE (n:Concept {id: '실시간'})
SET     n.name = '실시간',
    n.name_kr = '실시간',
    n.domain = 'OS';

MERGE (n:Concept {id: '특화된_기능'})
SET     n.name = '특화된 기능',
    n.name_kr = '특화된 기능',
    n.domain = 'OS';

MERGE (n:Concept {id: 'tron'})
SET     n.name = 'TRON',
    n.name_kr = 'TRON',
    n.domain = 'OS',
    n.aliases = ['TRON'];

MERGE (n:Concept {id: 'vxworks'})
SET     n.name = 'VxWorks',
    n.name_kr = 'VxWorks',
    n.domain = 'OS',
    n.aliases = ['VxWorks'];

MERGE (n:Concept {id: '스케줄러'})
SET     n.name = '스케줄러',
    n.name_kr = '스케줄러',
    n.domain = 'OS',
    n.definition = '대부분의 임베디드 OS에서는 우선순위에 기반을 둔 스케줄링 알고리즘 사용 - FIFO(First In First Out), Round Robin - 다른 태스크로 실행이 넘어갈 때 문맥전환(context switching) 발생';

MERGE (n:Concept {id: '선점형_커널'})
SET     n.name = '선점형 커널',
    n.name_kr = '선점형 커널',
    n.domain = 'OS',
    n.definition = 'Preemptive kernel - 어떤 태스크가 수행되고 있을 경우 커널이 강제로 그 태스크의 수행을 중지시키고 다른 태스크의 기능을 수행시킬 수 있는 능력을 지닌 커널 - 커널의 안정성을 높게 유지시키기 위해 필요';

MERGE (n:Concept {id: '상호_배제'})
SET     n.name = '상호 배제',
    n.name_kr = '상호 배제',
    n.domain = 'OS',
    n.definition = 'Mutual exclusion - 임계지역 보호: 두개의 태스크가 동시에 하나의 공유자원에 접근하려고 할 때 한 태스크에게 자원 사용에 대한 배타적 권리를 보장하는 것 ⓛ 인터럽트 Enable/Disable ② 세마포어';

MERGE (n:Concept {id: '태스크_커뮤니케이션'})
SET     n.name = '태스크 커뮤니케이션',
    n.name_kr = '태스크 커뮤니케이션',
    n.domain = 'OS',
    n.definition = '태스크간의 데이터 교환 방법 - Global variable: 변수 자체가 임계 지역이 되므로 인터럽트 Enable/ Disable이나 세마포어 등으로 상호 배제해야 함 - Message passing: 큐, 파이프, 메일박스 등. 커널에 의해 자동으로 상호배제가 이루어짐으로 임계지역이 보호';

MERGE (n:Concept {id: '실시간_멀티태스킹_지원'})
SET     n.name = '실시간 멀티태스킹 지원',
    n.name_kr = '실시간 멀티태스킹 지원',
    n.domain = 'OS',
    n.definition = '실시간 스케줄링, 실시간 동기화, 실시간 자원관리';

MERGE (n:Concept {id: '메모리_관리'})
SET     n.name = '메모리 관리',
    n.name_kr = '메모리 관리',
    n.domain = 'OS',
    n.definition = '실시간 보장을 위해 특정 영역의 스왑을 방지하는 메모리 잠금 기술';

MERGE (n:Concept {id: '임베디드_시스템용_파일시스템'})
SET     n.name = '임베디드 시스템용 파일시스템',
    n.name_kr = '임베디드 시스템용 파일시스템',
    n.domain = 'OS',
    n.definition = '다양한 형태의 데이터를 저장하고 관리';

MERGE (n:Concept {id: '빠른_부팅_속도'})
SET     n.name = '빠른 부팅 속도',
    n.name_kr = '빠른 부팅 속도',
    n.domain = 'OS',
    n.definition = '커널 적재를 위한 최소한의 작업만을 수행하도록 펌웨어 최적화 - 커널 구조를 모듈화하여 커널 크기, 초기화 시간, 복구 시간 최소화 - 데스크탑에서 사용하던 기본 명령어 크기 줄임';

MERGE (n:Concept {id: 'xip_기술'})
SET     n.name = 'XIP 기술',
    n.name_kr = 'XIP 기술',
    n.domain = 'OS',
    n.definition = '커널을 메모리에 로드하지 않고 플래시 메모리에서 직접 수행';

MERGE (n:Concept {id: '저전력_지원'})
SET     n.name = '저전력 지원',
    n.name_kr = '저전력 지원',
    n.domain = 'OS',
    n.definition = '모바일 기기의 전력소모 최소화, 시스템 사용시간 최대화, 시스템 발열 절감통한 시스템 안정화, 별도의 팬을 사용하지 않음으로 인한 소음 최소화';

MERGE (n:Concept {id: '자원_관리'})
SET     n.name = '자원 관리',
    n.name_kr = '자원 관리',
    n.domain = 'OS',
    n.definition = 'PnP(Plug & Play)에 의한 디바이스 관리';

MERGE (n:Concept {id: '임베디드용_그래픽/윈도우_시스템'})
SET     n.name = '임베디드용 그래픽/윈도우 시스템',
    n.name_kr = '임베디드용 그래픽/윈도우 시스템',
    n.domain = 'OS',
    n.definition = '임베디드용 GUI는 크기가 작고 프레임버퍼 지원을 통한 실행시간이 빨라야 하며, GDK나 윈도우 API 등의 표준환경을 지원해야 함';

MERGE (n:Standard {id: '네트워크_및_통신기술'})
SET     n.name = '네트워크 및 통신기술',
    n.name_kr = '네트워크 및 통신기술',
    n.domain = 'OS',
    n.definition = '초고속 인터넷 서비스 지원, IEEE1394, 블루투스, USB 등 지원';

MERGE (n:Concept {id: '멀티미디어_지원'})
SET     n.name = '멀티미디어 지원',
    n.name_kr = '멀티미디어 지원',
    n.domain = 'OS',
    n.definition = '동영상 및 게임 등 멀티미디어 서비스를 지원하기 위한 처리 모듈과 응용프로그램에서 요구하는 최소한의 성능을 보장해야 함';

MERGE (n:Concept {id: '응용_프로그램_실행_환경'})
SET     n.name = '응용 프로그램 실행 환경',
    n.name_kr = '응용 프로그램 실행 환경',
    n.domain = 'OS',
    n.definition = '멀티 프로세스 모델';

MERGE (n:Concept {id: 'task'})
SET     n.name = '멀티 쓰레드(Task)모델',
    n.name_kr = '멀티 쓰레드(Task)모델',
    n.domain = 'OS',
    n.definition = '어플리케이션이 OS커널을 공유';

MERGE (n:Concept {id: '실시간_환경'})
SET     n.name = '실시간 환경',
    n.name_kr = '실시간 환경',
    n.domain = 'OS',
    n.definition = 'Soft RTOS';

MERGE (n:Concept {id: 'hard_rtos'})
SET     n.name = 'Hard RTOS',
    n.name_kr = 'Hard RTOS',
    n.domain = 'OS',
    n.definition = 'Time critical System OS',
    n.aliases = ['Hard RTOS'];

// --- 관계 ---

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'embedded_system'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '제한된_자원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '실시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '특화된_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'tron'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'vxworks'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '스케줄러'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '선점형_커널'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '상호_배제'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '태스크_커뮤니케이션'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '실시간_멀티태스킹_지원'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '메모리_관리'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '임베디드_시스템용_파일시스템'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '빠른_부팅_속도'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'xip_기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '저전력_지원'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '자원_관리'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '임베디드용_그래픽/윈도우_시스템'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Standard {id: '네트워크_및_통신기술'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '멀티미디어_지원'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '응용_프로그램_실행_환경'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'task'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: '실시간_환경'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Concept {id: 'hard_rtos'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Document {id: 'OS_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'embedded_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제한된_자원'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특화된_기능'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tron'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vxworks'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스케줄러'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점형_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호_배제'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태스크_커뮤니케이션'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_멀티태스킹_지원'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_관리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임베디드_시스템용_파일시스템'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빠른_부팅_속도'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xip_기술'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력_지원'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_관리'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임베디드용_그래픽/윈도우_시스템'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '네트워크_및_통신기술'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티미디어_지원'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용_프로그램_실행_환경'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'task'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_환경'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hard_rtos'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_071.0: RTOS (Real Time OS)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_071.0'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'real_time_os'})
SET     n.name = 'Real Time OS',
    n.name_kr = 'RTOS',
    n.domain = 'OS',
    n.aliases = ['Real Time OS', 'RTOS'];

MERGE (n:Concept {id: 'embedded_system'})
SET     n.name = 'Embedded System',
    n.name_kr = 'Embedded System',
    n.domain = 'OS',
    n.aliases = ['Embedded System'];

MERGE (n:Concept {id: 'rtos'})
SET     n.name = 'RTOS',
    n.name_kr = 'RTOS',
    n.domain = 'OS',
    n.aliases = ['RTOS'];

MERGE (n:Concept {id: 'deadline'})
SET     n.name = 'Deadline',
    n.name_kr = 'Deadline',
    n.domain = 'OS',
    n.aliases = ['Deadline'];

MERGE (n:Concept {id: 'scheduling'})
SET     n.name = 'Scheduling',
    n.name_kr = 'Scheduling',
    n.domain = 'OS',
    n.aliases = ['Scheduling'];

MERGE (n:Concept {id: 'multi_tasking'})
SET     n.name = 'Multi-tasking',
    n.name_kr = 'Multi-tasking',
    n.domain = 'OS',
    n.aliases = ['Multi-tasking'];

MERGE (n:Concept {id: '선점형_스케줄링'})
SET     n.name = '선점형 스케줄링',
    n.name_kr = '선점형 스케줄링',
    n.domain = 'OS';

MERGE (n:Concept {id: 'micro_kernel'})
SET     n.name = 'Micro kernel',
    n.name_kr = 'Micro kernel',
    n.domain = 'OS',
    n.aliases = ['Micro kernel'];

MERGE (n:Concept {id: 'interrupt_latency'})
SET     n.name = 'Interrupt latency',
    n.name_kr = 'Interrupt latency',
    n.domain = 'OS',
    n.aliases = ['Interrupt latency'];

MERGE (n:Concept {id: 'hard_real_time'})
SET     n.name = 'Hard real time',
    n.name_kr = 'Hard real time',
    n.domain = 'OS',
    n.aliases = ['Hard real time'];

MERGE (n:Concept {id: 'soft_real_time'})
SET     n.name = 'Soft real time',
    n.name_kr = 'Soft real time',
    n.domain = 'OS',
    n.aliases = ['Soft real time'];

MERGE (n:Concept {id: 'gpos'})
SET     n.name = 'GPOS',
    n.name_kr = '범용 운영체제',
    n.domain = 'OS',
    n.aliases = ['GPOS', '범용 운영체제'];

MERGE (n:Concept {id: '경량_kernel'})
SET     n.name = '경량 Kernel',
    n.name_kr = '경량 Kernel',
    n.domain = 'OS',
    n.definition = '임베디드 시스템의 특성에 따른 제한된 자원 사용 - 소형화, 저전력, 빠른 시동, 실시간성 지원';

MERGE (n:Concept {id: 'h_w_abstract'})
SET     n.name = 'H/W Abstract',
    n.name_kr = 'H/W Abstract',
    n.domain = 'OS',
    n.definition = '소프트웨어가 하드웨어 상관없이 일관된 작업 수행 - OS 의 커널 또는 장치 드라이브에서 호출',
    n.aliases = ['H/W Abstract'];

MERGE (n:Concept {id: '소형_footprint'})
SET     n.name = '소형 FootPrint',
    n.name_kr = '소형 FootPrint',
    n.domain = 'OS',
    n.definition = '컴퓨터의 내부 공간을 적게 차지하는 마이크로 컴포넌트 등 - 메모리를 적게 차지하는 소프트웨어로 성능 가속화';

MERGE (n:Technology {id: '외부모듈'})
SET     n.name = '외부모듈',
    n.name_kr = '외부모듈',
    n.domain = 'OS',
    n.definition = '커뮤니케이션 프로토콜 지원, 디바이스 드라이버, 파일 시스템, 그래픽과 윈도우, TCP/IP, 사용자 I/F 요소를 포함';

MERGE (n:Concept {id: '인터럽트'})
SET     n.name = '인터럽트',
    n.name_kr = '인터럽트',
    n.domain = 'OS',
    n.definition = '외부 모듈 입력 신호를 OS 또는 출력장치에서 처리';

MERGE (n:Concept {id: '타이머'})
SET     n.name = '타이머',
    n.name_kr = '타이머',
    n.domain = 'OS',
    n.definition = '운영체제 및 프로그램에게 시간의 흐름을 주기적으로 알림';

MERGE (n:Concept {id: '스케줄러'})
SET     n.name = '스케줄러',
    n.name_kr = '스케줄러',
    n.domain = 'OS',
    n.definition = '정해진 순서에 따른 Task 선택 및 관리를 통해 성능 극대화';

MERGE (n:Concept {id: '동기화'})
SET     n.name = '동기화',
    n.name_kr = '동기화',
    n.domain = 'OS',
    n.definition = '한정된 자원을 여러 개 스레드 동시 접근 시 문제 해결';

MERGE (n:Concept {id: '멀티태스킹'})
SET     n.name = '멀티태스킹',
    n.name_kr = '멀티태스킹',
    n.domain = 'OS',
    n.definition = '코드의 병렬 처리 보장 위해 다수의 작업 처리';

MERGE (n:Metric {id: '컨텍스트_스위칭'})
SET     n.name = '컨텍스트 스위칭',
    n.name_kr = '컨텍스트 스위칭',
    n.domain = 'OS',
    n.definition = '동작 중인 Process, Thread 상태 저장, 다음 순위 Task 를 로딩';

MERGE (n:Concept {id: '메세징'})
SET     n.name = '메세징',
    n.name_kr = '메세징',
    n.domain = 'OS',
    n.definition = 'IPC (프로세스 간 통신) - 프로세스간 데이터 교환';

MERGE (n:Concept {id: '선점형_커널'})
SET     n.name = '선점형 커널',
    n.name_kr = '선점형 커널',
    n.domain = 'OS',
    n.definition = '수행중인 Task 를 중지시키고 priority 높은 Task 수행 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'rtos'})
MERGE (b:Concept {id: 'embedded_system'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'deadline'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'scheduling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'multi_tasking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '선점형_스케줄링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'micro_kernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'interrupt_latency'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'hard_real_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'soft_real_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'gpos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '경량_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'h_w_abstract'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '소형_footprint'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Technology {id: '외부모듈'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '인터럽트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '타이머'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '스케줄러'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '동기화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '멀티태스킹'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Metric {id: '컨텍스트_스위칭'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '메세징'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: '선점형_커널'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'rtos'})
MERGE (b:Concept {id: 'gpos'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'rtos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Concept {id: 'gpos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Document {id: 'OS_071.0'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'real_time_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embedded_system'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtos'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deadline'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scheduling'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_tasking'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점형_스케줄링'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interrupt_latency'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hard_real_time'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soft_real_time'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpos'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량_kernel'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h_w_abstract'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소형_footprint'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '외부모듈'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터럽트'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타이머'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스케줄러'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티태스킹'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '컨텍스트_스위칭'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메세징'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선점형_커널'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_071.1: Tiny OS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_071.1'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'tiny_os'})
SET     n.name = 'Tiny OS',
    n.name_kr = 'Tiny OS',
    n.domain = 'OS',
    n.aliases = ['Tiny OS'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'OS';

MERGE (n:Concept {id: 'iot_환경'})
SET     n.name = 'IoT 환경',
    n.name_kr = 'IoT 환경',
    n.domain = 'OS';

MERGE (n:Concept {id: '스마트_더스트'})
SET     n.name = '스마트 더스트',
    n.name_kr = '스마트 더스트',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: 'tiny_os'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tiny_os'})
MERGE (b:Concept {id: 'iot_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_os'})
MERGE (b:Concept {id: '스마트_더스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tiny_os'})
MERGE (b:Document {id: 'OS_071.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tiny_os'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot_환경'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_더스트'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_072: 워치독 타이머(Watchdog timer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_072'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: 'watchdog_timer'})
SET     n.name = 'Watchdog timer',
    n.name_kr = '워치독 타이머',
    n.domain = 'OS',
    n.aliases = ['Watchdog timer', '워치독 타이머'];

MERGE (n:Concept {id: '유형'})
SET     n.name = '유형(내부/외부)',
    n.name_kr = '유형(내부/외부)',
    n.domain = 'OS';

MERGE (n:Concept {id: 'kick'})
SET     n.name = 'kick',
    n.name_kr = 'kick',
    n.domain = 'OS',
    n.aliases = ['kick'];

MERGE (n:Concept {id: 'reset'})
SET     n.name = 'Reset',
    n.name_kr = 'Reset',
    n.domain = 'OS',
    n.aliases = ['Reset'];

MERGE (n:Concept {id: '초기화'})
SET     n.name = '초기화',
    n.name_kr = '초기화',
    n.domain = 'OS',
    n.definition = 'Setup Value';

MERGE (n:Concept {id: '시작'})
SET     n.name = '시작',
    n.name_kr = '시작',
    n.domain = 'OS',
    n.definition = 'Timer Start';

MERGE (n:Concept {id: '중단'})
SET     n.name = '중단',
    n.name_kr = '중단',
    n.domain = 'OS',
    n.definition = 'Task Runaway';

MERGE (n:Concept {id: '만료'})
SET     n.name = '만료',
    n.name_kr = '만료',
    n.domain = 'OS',
    n.definition = 'Watchdog Timer Expire';

MERGE (n:Concept {id: '리셋'})
SET     n.name = '리셋',
    n.name_kr = '리셋',
    n.domain = 'OS',
    n.definition = 'Reset MCU';

MERGE (n:Concept {id: '외부_워치독_타이머'})
SET     n.name = '외부 워치독 타이머',
    n.name_kr = '외부 워치독 타이머',
    n.domain = 'OS';

MERGE (n:Concept {id: '내부_워치독_타이머'})
SET     n.name = '내부 워치독 타이머',
    n.name_kr = '내부 워치독 타이머',
    n.domain = 'OS';

MERGE (n:Concept {id: '단단계_워치독'})
SET     n.name = '단단계 워치독',
    n.name_kr = '단단계 워치독',
    n.domain = 'OS';

MERGE (n:Concept {id: '다단계_워치독'})
SET     n.name = '다단계 워치독',
    n.name_kr = '다단계 워치독',
    n.domain = 'OS',
    n.definition = '단계별 시정 조치 수행 가능. 제1타이머만 사용자에 의해 컨트롤되며 이후 단계는 Cascading 되어 수행됨. - 동일 Chip 의 Daisy Chain 형태로 Cascading 하여 구성.';

MERGE (n:Concept {id: '시정조치_로직'})
SET     n.name = '시정조치 로직',
    n.name_kr = '시정조치 로직',
    n.domain = 'OS',
    n.definition = '다단계 워치독으로 설계한 경우 1단계 시정조치로 NMI (Non-maskable interrupt) 를 통한 시스템 재 설정 시도. - 실패 시 Hard-reset을 통한 시스템 초기화 수행';

// --- 관계 ---

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: 'kick'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: 'reset'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '초기화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '시작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '중단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '만료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '리셋'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '외부_워치독_타이머'})
MERGE (b:Concept {id: '내부_워치독_타이머'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '외부_워치독_타이머'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '내부_워치독_타이머'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '단단계_워치독'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '다단계_워치독'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Concept {id: '시정조치_로직'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Document {id: 'OS_072'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'watchdog_timer'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kick'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reset'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기화'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시작'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중단'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '만료'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리셋'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_워치독_타이머'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부_워치독_타이머'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단단계_워치독'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다단계_워치독'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시정조치_로직'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_076: 4개 메모리 영역 분류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_076'})
SET doc.domain = 'OS';

// --- 노드 ---

MERGE (n:Concept {id: '4개_메모리_영역_분류'})
SET     n.name = '4개 메모리 영역 분류',
    n.name_kr = '4개 메모리 영역 분류',
    n.domain = 'OS';

MERGE (n:Concept {id: 'unix'})
SET     n.name = 'UNIX',
    n.name_kr = 'UNIX',
    n.domain = 'OS',
    n.aliases = ['UNIX'];

MERGE (n:Concept {id: '코드영역'})
SET     n.name = '코드영역',
    n.name_kr = '코드영역',
    n.domain = 'OS';

MERGE (n:Concept {id: '데이터영역'})
SET     n.name = '데이터영역',
    n.name_kr = '데이터영역',
    n.domain = 'OS';

MERGE (n:Concept {id: '스택영역'})
SET     n.name = '스택영역',
    n.name_kr = '스택영역',
    n.domain = 'OS';

MERGE (n:Concept {id: '힙영역'})
SET     n.name = '힙영역',
    n.name_kr = '힙영역',
    n.domain = 'OS';

// --- 관계 ---

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Concept {id: 'unix'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Concept {id: '코드영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Concept {id: '데이터영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Concept {id: '스택영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Concept {id: '힙영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Document {id: 'OS_076'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '4개_메모리_영역_분류'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unix'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드영역'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터영역'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스택영역'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '힙영역'})
MERGE (b:Domain {id: 'OS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// OS_077: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_077'})
SET doc.domain = 'OS';

// ──────────────────────────────────────
// OS_50.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'OS_50.2'})
SET doc.domain = 'OS';

// ================================================================
// OS 도메인 자동 생성 완료
// 노드: 147개
// 관계: 298개
// ================================================================