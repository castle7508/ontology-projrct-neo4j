// ================================================================
// DS 도메인 (DS_001 ~ DS_022) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// DS_001.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_001.1'})
SET doc.domain = 'DS';

// ──────────────────────────────────────
// DS_001.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_001.2'})
SET doc.domain = 'DS';

// ──────────────────────────────────────
// DS_002: Stack
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_002'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'stack'})
SET     n.name = 'Stack',
    n.name_kr = 'Stack',
    n.domain = 'DS',
    n.aliases = ['Stack'];

MERGE (n:Concept {id: '기본_자료구조'})
SET     n.name = '기본 자료구조',
    n.name_kr = '기본 자료구조',
    n.domain = 'DS';

MERGE (n:Concept {id: 'lifo'})
SET     n.name = 'LIFO',
    n.name_kr = 'LIFO',
    n.domain = 'DS',
    n.aliases = ['LIFO'];

MERGE (n:Concept {id: 'top'})
SET     n.name = 'Top',
    n.name_kr = 'Top',
    n.domain = 'DS',
    n.aliases = ['Top'];

MERGE (n:Concept {id: 'bottom'})
SET     n.name = 'bottom',
    n.name_kr = 'bottom',
    n.domain = 'DS',
    n.aliases = ['bottom'];

MERGE (n:Concept {id: 'push'})
SET     n.name = 'Push',
    n.name_kr = '삽입',
    n.domain = 'DS',
    n.aliases = ['Push', '삽입'];

MERGE (n:Concept {id: 'pop'})
SET     n.name = 'pop',
    n.name_kr = '제거',
    n.domain = 'DS',
    n.aliases = ['pop', '제거'];

MERGE (n:Concept {id: '연산'})
SET     n.name = '연산',
    n.name_kr = '연산',
    n.domain = 'DS',
    n.definition = 'push(item)';

MERGE (n:Concept {id: 'init'})
SET     n.name = 'init()',
    n.name_kr = 'init()',
    n.domain = 'DS',
    n.definition = '스택 초기화 스택 포인트를 0';

MERGE (n:Concept {id: 'isempty'})
SET     n.name = 'isEmpty()',
    n.name_kr = 'isEmpty()',
    n.domain = 'DS',
    n.definition = '스택이 비어 있을 때에 true를 반환';

MERGE (n:Concept {id: '발생_예외'})
SET     n.name = '발생 예외',
    n.name_kr = '발생 예외',
    n.domain = 'DS',
    n.definition = 'Overflow';

MERGE (n:Concept {id: 'underflow'})
SET     n.name = 'Underflow',
    n.name_kr = 'Underflow',
    n.domain = 'DS',
    n.definition = 'Stack Pointer의 주소 0을 가지고 있다면 스택에는 삭제할 자료가 없으므로 Underflow를 발생',
    n.aliases = ['Underflow'];

MERGE (n:Concept {id: '위치'})
SET     n.name = '위치',
    n.name_kr = '위치',
    n.domain = 'DS',
    n.definition = 'TOP';

MERGE (n:Concept {id: 'ret'})
SET     n.name = 'RET',
    n.name_kr = 'RET',
    n.domain = 'DS',
    n.definition = '함수가 호출 되기 전으로 돌아갈 Return Address',
    n.aliases = ['RET'];

MERGE (n:Concept {id: 'extended_base_pointer'})
SET     n.name = 'Extended Base Pointer',
    n.name_kr = 'EBP',
    n.domain = 'DS',
    n.definition = '현재 스택의 가장 바닥을 가리키는 포인터 - 함수가 호출 됐을 때 스택 프레임의 제일 첫번째 주소(함수 시작위치)',
    n.aliases = ['Extended Base Pointer', 'EBP'];

MERGE (n:Concept {id: 'extended_stack_pointer'})
SET     n.name = 'Extended Stack Pointer',
    n.name_kr = 'ESP',
    n.domain = 'DS',
    n.definition = '현재 스택의 가장 위에 들어 있는 데이터를 가리키고 있는 포인터 - 함수가 진행되고 있을 때 Stack의 Bottom (현재 사용중인 메모리 끝)',
    n.aliases = ['Extended Stack Pointer', 'ESP'];

MERGE (n:Concept {id: '삽입과정'})
SET     n.name = '삽입과정',
    n.name_kr = '삽입과정',
    n.domain = 'DS';

MERGE (n:Concept {id: '과정설명'})
SET     n.name = '과정설명',
    n.name_kr = '과정설명',
    n.domain = 'DS',
    n.definition = 'push 연산 : 0번째 배열 부터 순차적으로 삽입 - S -> T -> A -> C -> K 순서대로 스택에 저장';

MERGE (n:Concept {id: '삽입결과'})
SET     n.name = '삽입결과',
    n.name_kr = '삽입결과',
    n.domain = 'DS',
    n.definition = '최종 Top은 K 이며, 최종 Bottom은 S';

MERGE (n:Concept {id: '삭제과정'})
SET     n.name = '삭제과정',
    n.name_kr = '삭제과정',
    n.domain = 'DS';

MERGE (n:Concept {id: '스택_생성'})
SET     n.name = '스택 생성',
    n.name_kr = '스택 생성',
    n.domain = 'DS',
    n.definition = 'Catpactiy : 용량 Top : 최상위 노드의 위치 Node 포인터는 자유 저장소에 할당한 배열의 첫번째 요소를 가르킴';

MERGE (n:Concept {id: '생성'})
SET     n.name = '생성',
    n.name_kr = '생성',
    n.domain = 'DS',
    n.definition = 'void AS_CreateStack(ArrayStack** Stack, int Capacity) { /* 스택을 자유저장소에 생성 */ (*Stack) = (ArrayStack*)malloc(sizeof(ArrayStack)); /* 입력된 Capacity만큼의 노드를 자유저장소에 생성 */ (*Stack)->Nodes = (Node*)malloc(size';

MERGE (n:Concept {id: '소멸'})
SET     n.name = '소멸',
    n.name_kr = '소멸',
    n.domain = 'DS',
    n.definition = 'void AS_DestroyStack(ArrayStack* Stack) { /* 노드를 자유 저장소에서 해제 */ free(Stack->Nodes); /* 스택을 자유 저장소에서 해제 */ free(Stack); }';

// --- 관계 ---

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '기본_자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'lifo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'top'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'bottom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'push'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'pop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '연산'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'init'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'isempty'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '발생_예외'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'underflow'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '위치'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'ret'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'extended_base_pointer'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: 'extended_stack_pointer'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '삽입과정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '과정설명'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '삽입결과'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '삭제과정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '스택_생성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '생성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Concept {id: '소멸'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Document {id: 'DS_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lifo'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'top'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bottom'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pop'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'init'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isempty'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생_예외'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'underflow'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ret'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extended_base_pointer'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extended_stack_pointer'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입과정'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과정설명'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입결과'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삭제과정'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스택_생성'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소멸'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_003: Queue
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_003'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'queue'})
SET     n.name = 'Queue',
    n.name_kr = 'Queue',
    n.domain = 'DS',
    n.aliases = ['Queue'];

MERGE (n:Concept {id: '기본_자료구조'})
SET     n.name = '기본 자료구조',
    n.name_kr = '기본 자료구조',
    n.domain = 'DS';

MERGE (n:Concept {id: 'fifo'})
SET     n.name = 'FIFO',
    n.name_kr = 'FIFO',
    n.domain = 'DS',
    n.aliases = ['FIFO'];

MERGE (n:Concept {id: '선형큐'})
SET     n.name = '선형큐',
    n.name_kr = '선형큐',
    n.domain = 'DS';

MERGE (n:Concept {id: '순환큐'})
SET     n.name = '순환큐(원형큐)',
    n.name_kr = '순환큐(원형큐)',
    n.domain = 'DS';

MERGE (n:Concept {id: '링크드리스트큐'})
SET     n.name = '링크드리스트큐',
    n.name_kr = '링크드리스트큐',
    n.domain = 'DS';

MERGE (n:Concept {id: 'front'})
SET     n.name = 'Front',
    n.name_kr = 'Front',
    n.domain = 'DS',
    n.definition = '줄의 맨 앞을 전단(Front)',
    n.aliases = ['Front'];

MERGE (n:Concept {id: 'rear'})
SET     n.name = 'Rear',
    n.name_kr = 'Rear',
    n.domain = 'DS',
    n.definition = '맨 뒤를 후단(Rear)',
    n.aliases = ['Rear'];

MERGE (n:Concept {id: 'createqueue'})
SET     n.name = 'createQueue()',
    n.name_kr = 'createQueue()',
    n.domain = 'DS',
    n.definition = '최대 n개의 원소를 가질 수 있는 큐 생성';

MERGE (n:Concept {id: 'deletequeue'})
SET     n.name = 'deleteQueue()',
    n.name_kr = 'deleteQueue()',
    n.domain = 'DS',
    n.definition = '큐를 제거 (할당된 메모리 해제)';

MERGE (n:Concept {id: 'isfull'})
SET     n.name = 'isFull()',
    n.name_kr = 'isFull()',
    n.domain = 'DS',
    n.definition = '큐가 가득차있는지 판단(배열만해당)';

MERGE (n:Concept {id: 'isempty'})
SET     n.name = 'isEmpty()',
    n.name_kr = 'isEmpty()',
    n.domain = 'DS',
    n.definition = '큐가 공백 큐인지 확인';

MERGE (n:Concept {id: 'enqueue'})
SET     n.name = 'Enqueue',
    n.name_kr = 'Enqueue',
    n.domain = 'DS',
    n.definition = '후단에 데이터를 삽입하는 작업',
    n.aliases = ['Enqueue'];

MERGE (n:Concept {id: 'dequeue'})
SET     n.name = 'Dequeue',
    n.name_kr = 'Dequeue',
    n.domain = 'DS',
    n.definition = '전단의 데이터를 삭제하는 작업',
    n.aliases = ['Dequeue'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: '기본_자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'fifo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: '선형큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: '순환큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: '링크드리스트큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'front'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'rear'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'createqueue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'deletequeue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'isfull'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'isempty'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'enqueue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: 'dequeue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Document {id: 'DS_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fifo'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형큐'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순환큐'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '링크드리스트큐'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'front'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rear'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'createqueue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deletequeue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isfull'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isempty'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enqueue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dequeue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_004: 우선순위 Queue
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_004'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: '우선순위_queue'})
SET     n.name = '우선순위 Queue',
    n.name_kr = '우선순위 Queue',
    n.domain = 'DS';

MERGE (n:Concept {id: '기본_자료구조'})
SET     n.name = '기본 자료구조',
    n.name_kr = '기본 자료구조',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: '우선순위_queue'})
MERGE (b:Concept {id: '기본_자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '우선순위_queue'})
MERGE (b:Document {id: 'DS_004'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '우선순위_queue'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_005: 연결리스트, Single Linked List
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_005'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: '연결리스트,_single_linked_list'})
SET     n.name = '연결리스트, Single Linked List',
    n.name_kr = '연결리스트, Single Linked List',
    n.domain = 'DS';

MERGE (n:Concept {id: 'linked_list'})
SET     n.name = 'Linked List',
    n.name_kr = '연결 리스트',
    n.domain = 'DS',
    n.aliases = ['Linked List', '연결 리스트'];

MERGE (n:Concept {id: 'node'})
SET     n.name = 'node',
    n.name_kr = '노드',
    n.domain = 'DS',
    n.aliases = ['node', '노드'];

MERGE (n:Concept {id: 'link'})
SET     n.name = 'link',
    n.name_kr = '링크',
    n.domain = 'DS',
    n.aliases = ['link', '링크'];

MERGE (n:Concept {id: 'pointer'})
SET     n.name = 'pointer',
    n.name_kr = '포인터',
    n.domain = 'DS',
    n.aliases = ['pointer', '포인터'];

MERGE (n:Concept {id: 'head'})
SET     n.name = 'Head',
    n.name_kr = '헤드',
    n.domain = 'DS',
    n.aliases = ['Head', '헤드'];

MERGE (n:Concept {id: 'tail'})
SET     n.name = '테일(tail)\\',
    n.name_kr = '테일(tail)\\',
    n.domain = 'DS';

MERGE (n:Concept {id: '삽입_알고리즘._삭제_알고리즘'})
SET     n.name = '삽입 알고리즘. 삭제 알고리즘',
    n.name_kr = '삽입 알고리즘. 삭제 알고리즘',
    n.domain = 'DS';

MERGE (n:Concept {id: '배열'})
SET     n.name = '배열',
    n.name_kr = '배열',
    n.domain = 'DS';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'linked_list'})
MERGE (b:Concept {id: 'linked_list'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'pointer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'head'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: '삽입_알고리즘._삭제_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_list'})
MERGE (b:Concept {id: '배열'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: 'linked_list'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: '배열'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Document {id: 'DS_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '연결리스트,_single_linked_list'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'linked_list'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pointer'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'head'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tail'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입_알고리즘._삭제_알고리즘'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배열'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_006: Double Linked List
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_006'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'double_linked_list'})
SET     n.name = 'Double Linked List',
    n.name_kr = 'Double Linked List',
    n.domain = 'DS',
    n.aliases = ['Double Linked List'];

MERGE (n:Concept {id: '자료구조'})
SET     n.name = '자료구조',
    n.name_kr = '자료구조',
    n.domain = 'DS';

MERGE (n:Concept {id: '양방향_탐색'})
SET     n.name = '양방향 탐색',
    n.name_kr = '양방향 탐색',
    n.domain = 'DS';

MERGE (n:Concept {id: 'head'})
SET     n.name = 'Head',
    n.name_kr = 'Head',
    n.domain = 'DS',
    n.aliases = ['Head'];

MERGE (n:Concept {id: 'prev'})
SET     n.name = 'Prev',
    n.name_kr = 'Prev',
    n.domain = 'DS',
    n.aliases = ['Prev'];

MERGE (n:Concept {id: 'data'})
SET     n.name = 'Data',
    n.name_kr = 'Data',
    n.domain = 'DS',
    n.aliases = ['Data'];

MERGE (n:Concept {id: 'next'})
SET     n.name = 'Next',
    n.name_kr = 'Next',
    n.domain = 'DS',
    n.aliases = ['Next'];

MERGE (n:Concept {id: 'node'})
SET     n.name = 'Node',
    n.name_kr = 'Node',
    n.domain = 'DS',
    n.aliases = ['Node'];

// --- 관계 ---

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: '자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: '양방향_탐색'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: 'head'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: 'prev'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: 'next'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Concept {id: 'node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Document {id: 'DS_006'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'double_linked_list'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향_탐색'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'head'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prev'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'next'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_007: Circular Linked List(환형)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_007'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'circular_linked_list'})
SET     n.name = 'Circular Linked List',
    n.name_kr = '환형',
    n.domain = 'DS',
    n.aliases = ['Circular Linked List', '환형'];

MERGE (n:Concept {id: '자료구조'})
SET     n.name = '자료구조',
    n.name_kr = '자료구조',
    n.domain = 'DS';

MERGE (n:Concept {id: 'head'})
SET     n.name = 'Head',
    n.name_kr = 'Head',
    n.domain = 'DS',
    n.aliases = ['Head'];

MERGE (n:Concept {id: 'prev'})
SET     n.name = 'Prev',
    n.name_kr = 'Prev',
    n.domain = 'DS',
    n.aliases = ['Prev'];

MERGE (n:Concept {id: 'data'})
SET     n.name = 'Data',
    n.name_kr = 'Data',
    n.domain = 'DS',
    n.aliases = ['Data'];

MERGE (n:Concept {id: 'next'})
SET     n.name = 'Next',
    n.name_kr = 'Next',
    n.domain = 'DS',
    n.aliases = ['Next'];

MERGE (n:Concept {id: 'node'})
SET     n.name = 'Node',
    n.name_kr = 'Node',
    n.domain = 'DS',
    n.aliases = ['Node'];

MERGE (n:Concept {id: 'tail'})
SET     n.name = 'Tail',
    n.name_kr = 'Tail',
    n.domain = 'DS',
    n.aliases = ['Tail'];

// --- 관계 ---

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: '자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'head'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'prev'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'next'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Concept {id: 'tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Document {id: 'DS_007'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'circular_linked_list'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'head'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prev'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'next'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tail'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_008: 이진트리 (Binary Tree)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_008'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'binary_tree'})
SET     n.name = 'Binary Tree',
    n.name_kr = '이진트리',
    n.domain = 'DS',
    n.aliases = ['Binary Tree', '이진트리'];

MERGE (n:Concept {id: 'tree'})
SET     n.name = 'Tree',
    n.name_kr = 'Tree',
    n.domain = 'DS',
    n.aliases = ['Tree'];

MERGE (n:Concept {id: 'depth'})
SET     n.name = '깊이',
    n.name_kr = '깊이',
    n.domain = 'DS';

MERGE (n:Concept {id: 'dgree'})
SET     n.name = 'Dgree',
    n.name_kr = '차수',
    n.domain = 'DS',
    n.aliases = ['Dgree', '차수'];

MERGE (n:Concept {id: '전위_순회'})
SET     n.name = '전위 순회',
    n.name_kr = '전위 순회',
    n.domain = 'DS';

MERGE (n:Concept {id: '중위_순회'})
SET     n.name = '중위 순회',
    n.name_kr = '중위 순회',
    n.domain = 'DS';

MERGE (n:Concept {id: '후위_순회'})
SET     n.name = '후위 순회',
    n.name_kr = '후위 순회',
    n.domain = 'DS';

MERGE (n:Concept {id: 'complete_binary_tree'})
SET     n.name = 'Complete Binary Tree',
    n.name_kr = '완전 이진 트리',
    n.domain = 'DS',
    n.definition = '마지막 레벨을 제외하고 모든 레벨이 완전히 채워져 있으며, 마지막 레벨의 모든 노드는 가능한 한 가장 왼쪽부터 채워지는 이진트리',
    n.aliases = ['Complete Binary Tree', '완전 이진 트리'];

MERGE (n:Concept {id: 'skewed_binary_tree'})
SET     n.name = 'skewed binary tree',
    n.name_kr = '경사 이진트리',
    n.domain = 'DS',
    n.definition = '트리의 노드가 왼쪽이나 오른쪽으로 한쪽으로만 노드가 있는 트리',
    n.aliases = ['skewed binary tree', '경사 이진트리'];

MERGE (n:Concept {id: 'height_balance_tree'})
SET     n.name = 'Height Balance Tree',
    n.name_kr = 'AVL 트리',
    n.domain = 'DS',
    n.definition = '루트 노드를 기준으로 왼쪽 하위 트리와 오른쪽 하위트리의 높이가 1이상 차이 나지 않는 이진트리',
    n.aliases = ['Height Balance Tree', 'AVL 트리'];

MERGE (n:Concept {id: 'expression_binary_tree'})
SET     n.name = 'Expression Binary Tree',
    n.name_kr = '수식 이진 트리',
    n.domain = 'DS',
    n.definition = '산술식을 트리 형태로 표현한 이진트리 - 루트노드나 Branch노드 : 연산자(Operator) - Leaf 노드 : 피연산자(Operand)',
    n.aliases = ['Expression Binary Tree', '수식 이진 트리'];

MERGE (n:Concept {id: 'degree_of_tree'})
SET     n.name = 'Degree of Tree',
    n.name_kr = '트리의 차수',
    n.domain = 'DS',
    n.definition = '트리 내에 있는 노드들 가운데 자식 노드가 가장 많은 노드의 차수',
    n.aliases = ['Degree of Tree', '트리의 차수'];

MERGE (n:Concept {id: '문제_풀이'})
SET     n.name = '문제 풀이',
    n.name_kr = '문제 풀이',
    n.domain = 'DS',
    n.definition = '문제 정의';

MERGE (n:Concept {id: 'degree'})
SET     n.name = '노드 차수(Degree) 계산',
    n.name_kr = '노드 차수(Degree) 계산',
    n.domain = 'DS';

MERGE (n:Concept {id: '하위_디렉토리의_구조_및_용량_파악'})
SET     n.name = '하위 디렉토리의 구조 및 용량 파악',
    n.name_kr = '하위 디렉토리의 구조 및 용량 파악',
    n.domain = 'DS',
    n.definition = '리눅스 OS 등에서 하위 디렉토리의 구조 및 용량 파악 시 활용';

MERGE (n:Concept {id: '계산기-수식'})
SET     n.name = '계산기-수식',
    n.name_kr = '계산기-수식',
    n.domain = 'DS',
    n.definition = '전자 계산기 등에서 계산식 순서 적용에 활용';

MERGE (n:Concept {id: '게임'})
SET     n.name = '게임',
    n.name_kr = '게임',
    n.domain = 'DS',
    n.definition = '각종 장기, 체스, 길찾기 등의 게임에서 경우의 수를 트리 로 구현 후, 트리 순회 적용';

// --- 관계 ---

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'tree'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'depth'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'dgree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '전위_순회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '중위_순회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '후위_순회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'complete_binary_tree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'skewed_binary_tree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'height_balance_tree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'expression_binary_tree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'degree_of_tree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '문제_풀이'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: 'degree'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '하위_디렉토리의_구조_및_용량_파악'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '계산기-수식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Concept {id: '게임'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Document {id: 'DS_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'binary_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'depth'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dgree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전위_순회'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중위_순회'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후위_순회'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complete_binary_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'skewed_binary_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'height_balance_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'expression_binary_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'degree_of_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_풀이'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'degree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하위_디렉토리의_구조_및_용량_파악'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산기-수식'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게임'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_009: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_009'})
SET doc.domain = 'DS';

// ──────────────────────────────────────
// DS_010: Balanced Tree/B-Tree(비트리)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_010'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'balanced_tree_b_tree'})
SET     n.name = 'Balanced Tree/B-Tree(비트리)',
    n.name_kr = 'Balanced Tree/B-Tree(비트리)',
    n.domain = 'DS';

MERGE (n:Concept {id: '알고리즘_자료구조'})
SET     n.name = '알고리즘_자료구조',
    n.name_kr = '알고리즘_자료구조',
    n.domain = 'DS';

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 'b_tree'})
SET     n.name = 'B-Tree',
    n.name_kr = '비트리',
    n.domain = 'DS',
    n.aliases = ['B-Tree', '비트리'];

MERGE (n:Concept {id: '균형유지'})
SET     n.name = '균형유지',
    n.name_kr = '균형유지',
    n.domain = 'DS';

MERGE (n:Concept {id: 'avl_tree'})
SET     n.name = 'AVL Tree',
    n.name_kr = 'AVL Tree',
    n.domain = 'DS',
    n.aliases = ['AVL Tree'];

MERGE (n:Concept {id: '2_3_tree'})
SET     n.name = '2-3 tree(이삼트리)',
    n.name_kr = '2-3 tree(이삼트리)',
    n.domain = 'DS';

MERGE (n:Concept {id: 'red_black_tree'})
SET     n.name = 'Red-Black Tree',
    n.name_kr = 'Red-Black Tree',
    n.domain = 'DS',
    n.aliases = ['Red-Black Tree'];

// --- 관계 ---

MERGE (a:Concept {id: '트리'})
MERGE (b:Concept {id: '알고리즘_자료구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'b_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Concept {id: '균형유지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Concept {id: 'avl_tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Concept {id: '2_3_tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Concept {id: 'red_black_tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Document {id: 'DS_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'balanced_tree_b_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘_자료구조'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '균형유지'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_011: B+ Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_011'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'b+_tree'})
SET     n.name = 'B+ Tree',
    n.name_kr = 'B+ Tree',
    n.domain = 'DS';

MERGE (n:Concept {id: 'tree'})
SET     n.name = 'Tree',
    n.name_kr = 'Tree',
    n.domain = 'DS',
    n.aliases = ['Tree'];

MERGE (n:Concept {id: 'b*tree'})
SET     n.name = 'B*Tree',
    n.name_kr = 'B*Tree',
    n.domain = 'DS';

MERGE (n:Concept {id: 'b트리'})
SET     n.name = 'B트리',
    n.name_kr = 'B트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 'b+트리'})
SET     n.name = 'B+트리',
    n.name_kr = 'B+트리',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Concept {id: 'tree'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'b*tree'})
MERGE (b:Concept {id: 'b+_tree'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Concept {id: 'b*tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b트리'})
MERGE (b:Concept {id: 'b+트리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Concept {id: 'b트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Concept {id: 'b+트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Document {id: 'DS_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b*tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b+트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_012: B* Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_012'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'b*_tree'})
SET     n.name = 'B* Tree',
    n.name_kr = 'B* Tree',
    n.domain = 'DS';

MERGE (n:Concept {id: 'tree'})
SET     n.name = 'Tree',
    n.name_kr = 'Tree',
    n.domain = 'DS',
    n.aliases = ['Tree'];

MERGE (n:Concept {id: '재분배'})
SET     n.name = '재분배',
    n.name_kr = '재분배',
    n.domain = 'DS',
    n.definition = 'B* 트리에서는 노드에 넘침 상태가 생기면, 즉시 노드를 분리하는 대신, 새로운 노드를 생성을 지연시키고 데이터들을 형제 노드들 간에 재분배. -노드의 분리는 모든 형제 노드들이 모두 꽉 찼을 때 만 발생. 노드가 분리되면, 2개의 꽉 찬 형제 노드로부터 데이터를 균등하게 분배하여 새로운 노드에 옮겨서 결국은 3 노드 모두가 2/3가 차게 만듦';

MERGE (n:Concept {id: '삽입'})
SET     n.name = '삽입',
    n.name_kr = '삽입',
    n.domain = 'DS',
    n.definition = '1) B-Tree에서와 같은 방법으로 삽입 2) 노드가 가득차면 이웃한 형제 노드를 살펴 빈 자리가 있으면 정렬하여 재배치 3) 인접 노드에도 key 넘침 현상(overflow)이 일어나서 더 이상 빈 자리가 없을 경우, 가득찬 두 노드를 분열하여 2/3 정도 채워진 3개의 노드로 생성 -이 과정에서 재배치 동작은 2번 발생 (가득찬 두 노드를 분열하여 3';

MERGE (n:Concept {id: '삭제'})
SET     n.name = '삭제',
    n.name_kr = '삭제',
    n.domain = 'DS',
    n.definition = 'B-Tree와 똑같이 삭제 후 key 값의 개수가 모자라면 이웃한 형제 노드로 부터 재배치하고 재배치도 할 수 없는 경우 합병 - 합병할 때는 세 개의 노드를 두 개의 노드로 합병.';

MERGE (n:Concept {id: 'b*tree'})
SET     n.name = 'B*Tree',
    n.name_kr = 'B*Tree',
    n.domain = 'DS';

MERGE (n:Concept {id: 'b+_tree'})
SET     n.name = 'B+ Tree',
    n.name_kr = 'B+ Tree',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: 'tree'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: '재분배'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: '삽입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: '삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b*tree'})
MERGE (b:Concept {id: 'b+_tree'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: 'b*tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Concept {id: 'b+_tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Document {id: 'DS_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'b*_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재분배'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삭제'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b*tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'b+_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_013: 수식트리(Expression Tree)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_013'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'expression_tree'})
SET     n.name = 'Expression Tree',
    n.name_kr = '수식트리',
    n.domain = 'DS',
    n.aliases = ['Expression Tree', '수식트리'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: '수식을_표현하는_이진_트리'})
SET     n.name = '수식을 표현하는 이진 트리',
    n.name_kr = '수식을 표현하는 이진 트리',
    n.domain = 'DS';

MERGE (n:Concept {id: '수식표기법_종류'})
SET     n.name = '수식표기법 종류',
    n.name_kr = '수식표기법 종류',
    n.domain = 'DS',
    n.definition = '전위 표기법 (Prefix Notation)';

MERGE (n:Concept {id: 'infix_notation'})
SET     n.name = 'Infix Notation',
    n.name_kr = '중위 표기법',
    n.domain = 'DS',
    n.definition = '연산자를 피연산자의 사이에 표기하는 방법. - Left(피연산자) -> 연산자 -> Right(피연산자) 예제) A + B',
    n.aliases = ['Infix Notation', '중위 표기법'];

MERGE (n:Concept {id: 'postfix_notation'})
SET     n.name = 'Postfix Notation',
    n.name_kr = '후위 표기법',
    n.domain = 'DS',
    n.definition = '연산자를 피연산자의 뒤에 표기하는 방법. - 컴퓨터에서 수식을 계산하기 위해서는 후위 표기법 변경해야 함 - Left(피연산자) -> Right(피연산자) -> 연산자 예제) A B +',
    n.aliases = ['Postfix Notation', '후위 표기법'];

MERGE (n:Concept {id: '수식트리_작성_순서'})
SET     n.name = '수식트리 작성 순서',
    n.name_kr = '수식트리 작성 순서',
    n.domain = 'DS',
    n.definition = '중위 표기법 → 후위 표기법 → 수식 트리 순';

MERGE (n:Concept {id: '수식트리_구성'})
SET     n.name = '수식트리 구성',
    n.name_kr = '수식트리 구성',
    n.domain = 'DS',
    n.definition = '연산자 : 루트노트(리프 노드(leaf node)가 아닌 노드)는 연산자로 구성 - 피연산자 : 연산자 노드의 자식노드로 구성';

MERGE (n:Concept {id: '수식'})
SET     n.name = '수식',
    n.name_kr = '수식',
    n.domain = 'DS',
    n.definition = '212*+324*+*';

MERGE (n:Concept {id: '표기법'})
SET     n.name = '표기법',
    n.name_kr = '표기법',
    n.domain = 'DS',
    n.definition = '후위 표기법';

MERGE (n:Concept {id: '연산_결과값'})
SET     n.name = '연산 결과값',
    n.name_kr = '연산 결과값',
    n.domain = 'DS',
    n.definition = '44';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'DS',
    n.definition = '후위 표기법 -> 전위 표기법 순서로 변환 수행';

MERGE (n:Concept {id: '1)'})
SET     n.name = '1)',
    n.name_kr = '1)',
    n.domain = 'DS',
    n.definition = '인접한 두 개의 피연산자와 오른쪽의 연산자를 괄호로 묶음';

MERGE (n:Concept {id: '2)'})
SET     n.name = '2)',
    n.name_kr = '2)',
    n.domain = 'DS',
    n.definition = '각 연산자를 묶고 있는 괄호의 왼쪽 괄호로 연산자를 이동';

MERGE (n:Concept {id: '3)'})
SET     n.name = '3)',
    n.name_kr = '3)',
    n.domain = 'DS',
    n.definition = '불필요한 괄호를 제거';

MERGE (n:Concept {id: '변환_결과'})
SET     n.name = '변환 결과',
    n.name_kr = '변환 결과',
    n.domain = 'DS',
    n.definition = '결과 : - / * A + B C D E';

// --- 관계 ---

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '수식을_표현하는_이진_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '수식표기법_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: 'infix_notation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: 'postfix_notation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '수식트리_작성_순서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '수식트리_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '수식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '표기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '연산_결과값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '1)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '2)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '3)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Concept {id: '변환_결과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Document {id: 'DS_013'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'expression_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식을_표현하는_이진_트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식표기법_종류'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infix_notation'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'postfix_notation'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식트리_작성_순서'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식트리_구성'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표기법'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산_결과값'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1)'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변환_결과'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_014: AVL Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_014'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'avl_tree'})
SET     n.name = 'AVL Tree',
    n.name_kr = 'AVL Tree',
    n.domain = 'DS',
    n.aliases = ['AVL Tree'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 'balance_factor'})
SET     n.name = 'Balance Factor',
    n.name_kr = 'Balance Factor',
    n.domain = 'DS',
    n.aliases = ['Balance Factor'];

MERGE (n:Concept {id: 'rotation'})
SET     n.name = '회전',
    n.name_kr = '회전',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Concept {id: 'balance_factor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Concept {id: 'rotation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Document {id: 'DS_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'avl_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'balance_factor'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rotation'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_015: 2-3 Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_015'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: '2_3_tree'})
SET     n.name = '2-3 Tree',
    n.name_kr = '2-3 Tree',
    n.domain = 'DS';

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: '2-3_트리'})
SET     n.name = '2-3 트리',
    n.name_kr = '2-3 트리',
    n.domain = 'DS';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DS',
    n.definition = '2-노드와 3-노드';

MERGE (n:Concept {id: 'mid_subtree'})
SET     n.name = 'mid subtree',
    n.name_kr = 'mid subtree',
    n.domain = 'DS',
    n.definition = 'left key(D) 보다 크고, right key(X) 보다 작은 값들이 이루는 tree 2 node의 경우에는 mid subtree 없음.',
    n.aliases = ['mid subtree'];

MERGE (n:Concept {id: 'right_subtree'})
SET     n.name = 'right subtree',
    n.name_kr = 'right subtree',
    n.domain = 'DS',
    n.definition = 'right key (X) 보다 큰 값들이 이루는 tree',
    n.aliases = ['right subtree'];

MERGE (n:Concept {id: '이진탐색_트리'})
SET     n.name = '이진탐색 트리',
    n.name_kr = '이진탐색 트리',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: '2-3_트리'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Concept {id: 'mid_subtree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Concept {id: 'right_subtree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이진탐색_트리'})
MERGE (b:Concept {id: '2-3_트리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Concept {id: '이진탐색_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Concept {id: '2-3_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Document {id: 'DS_015'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '2_3_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2-3_트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mid_subtree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'right_subtree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이진탐색_트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_016: Red-Black Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_016'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'red_black_tree'})
SET     n.name = 'Red-Black Tree',
    n.name_kr = 'Red-Black Tree',
    n.domain = 'DS',
    n.aliases = ['Red-Black Tree'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Metric {id: 'log_n'})
SET     n.name = 'log n',
    n.name_kr = '시간복잡도 O',
    n.domain = 'DS',
    n.aliases = ['log n', '시간복잡도 O'];

MERGE (n:Concept {id: 'double_red'})
SET     n.name = 'Double Red',
    n.name_kr = 'Double Red',
    n.domain = 'DS',
    n.aliases = ['Double Red'];

MERGE (n:Concept {id: 'restructuring'})
SET     n.name = 'Restructuring',
    n.name_kr = 'Restructuring',
    n.domain = 'DS',
    n.aliases = ['Restructuring'];

MERGE (n:Concept {id: 'recoloring'})
SET     n.name = 'Recoloring',
    n.name_kr = 'Recoloring',
    n.domain = 'DS',
    n.aliases = ['Recoloring'];

MERGE (n:Concept {id: 'worst_case_guarantees'})
SET     n.name = 'worst-case guarantees',
    n.name_kr = 'worst-case guarantees',
    n.domain = 'DS',
    n.definition = '자료의 삽입과 삭제, 검색에서 최악의 경우에도 일정한 실행 시간을 보장',
    n.aliases = ['worst-case guarantees'];

MERGE (n:Concept {id: '실시간_처리_유용'})
SET     n.name = '실시간 처리 유용',
    n.name_kr = '실시간 처리 유용',
    n.domain = 'DS',
    n.definition = '실행시간이 중요한 경우에 유용하게 쓰임(일정한 실행 시간 보장)';

MERGE (n:Concept {id: '트리_구성요소'})
SET     n.name = '트리 구성요소',
    n.name_kr = '트리 구성요소',
    n.domain = 'DS',
    n.definition = 'Red Node';

MERGE (n:Concept {id: 'black_node'})
SET     n.name = 'Black Node',
    n.name_kr = 'Black Node',
    n.domain = 'DS',
    n.definition = 'Root, Branch, Leaf Node 역할 수행하는 노드 (Black 표기)',
    n.aliases = ['Black Node'];

MERGE (n:Concept {id: 'nil'})
SET     n.name = 'NIL',
    n.name_kr = 'NIL',
    n.domain = 'DS',
    n.definition = '트리의 Leaf 노드로 Null 포인터',
    n.aliases = ['NIL'];

MERGE (n:Concept {id: '트리_속성'})
SET     n.name = '트리 속성',
    n.name_kr = '트리 속성',
    n.domain = 'DS',
    n.definition = 'Structure Property';

MERGE (n:Concept {id: 'root_property'})
SET     n.name = 'Root Property',
    n.name_kr = 'Root Property',
    n.domain = 'DS',
    n.definition = 'Root Node 는 Black Node 만 허용',
    n.aliases = ['Root Property'];

MERGE (n:Concept {id: 'external_property'})
SET     n.name = 'External Property',
    n.name_kr = 'External Property',
    n.domain = 'DS',
    n.definition = '모든 널( NIL) 포인터는 Black',
    n.aliases = ['External Property'];

MERGE (n:Concept {id: 'internal_property'})
SET     n.name = 'Internal Property',
    n.name_kr = 'Internal Property',
    n.domain = 'DS',
    n.definition = 'Red Node 의 자식노드는 Black Node (No Double Red)',
    n.aliases = ['Internal Property'];

MERGE (n:Concept {id: 'depth_property'})
SET     n.name = 'Depth Property',
    n.name_kr = 'Depth Property',
    n.domain = 'DS',
    n.definition = 'Leaf노드 제외한 모든 경로에는 동일한 갯수의 Black Node 보유',
    n.aliases = ['Depth Property'];

MERGE (n:Concept {id: '트리_균형_조정'})
SET     n.name = '트리 균형 조정',
    n.name_kr = '트리 균형 조정',
    n.domain = 'DS',
    n.definition = 'Restructuring';

MERGE (n:Concept {id: 'avl_트리'})
SET     n.name = 'AVL 트리',
    n.name_kr = 'AVL 트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 'red_black_트리'})
SET     n.name = 'Red Black 트리',
    n.name_kr = 'Red Black 트리',
    n.domain = 'DS';

// --- 관계 ---

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Metric {id: 'log_n'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'double_red'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'restructuring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'recoloring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'worst_case_guarantees'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: '실시간_처리_유용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: '트리_구성요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'black_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'nil'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: '트리_속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'root_property'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'external_property'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'internal_property'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'depth_property'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: '트리_균형_조정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'avl_트리'})
MERGE (b:Concept {id: 'red_black_트리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'avl_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Concept {id: 'red_black_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Document {id: 'DS_016'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'red_black_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'log_n'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'double_red'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'restructuring'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recoloring'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'worst_case_guarantees'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_처리_유용'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리_구성요소'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'black_node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nil'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리_속성'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'root_property'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external_property'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internal_property'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'depth_property'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리_균형_조정'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'avl_트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'red_black_트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_017: Heap
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_017'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'heap'})
SET     n.name = 'Heap',
    n.name_kr = 'Heap',
    n.domain = 'DS',
    n.aliases = ['Heap'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 'max_heap'})
SET     n.name = 'max-heap',
    n.name_kr = 'max-heap',
    n.domain = 'DS',
    n.aliases = ['max-heap'];

MERGE (n:Concept {id: 'min_heap'})
SET     n.name = 'min-heap',
    n.name_kr = 'min-heap',
    n.domain = 'DS',
    n.aliases = ['min-heap'];

MERGE (n:Concept {id: 'memory_사용_공간'})
SET     n.name = 'Memory 사용 공간',
    n.name_kr = 'Memory 사용 공간',
    n.domain = 'DS',
    n.definition = 'n개의 원소에 대해 n개의 메모리 공간 사용 - 크기 n의 Heap 저장공간';

MERGE (n:Concept {id: '연산시간'})
SET     n.name = '연산시간',
    n.name_kr = '연산시간',
    n.domain = 'DS',
    n.definition = 'Heap 재구성 연산시간 1) n개의 Node에 대해 완전 이진트리는 log2(n+1)의 Level을 가지므로 Heap 구성 평균시간은 O(log n) 2) n개의 Node에 대해 n번의 Heap 재구성 작업 수행';

MERGE (n:Metric {id: '평균_시간_복잡도'})
SET     n.name = '평균 시간 복잡도',
    n.name_kr = '평균 시간 복잡도',
    n.domain = 'DS',
    n.definition = 'O(n log n)';

MERGE (n:Concept {id: '비교_회수'})
SET     n.name = '비교 회수',
    n.name_kr = '비교 회수',
    n.domain = 'DS',
    n.definition = '2n log n';

// --- 관계 ---

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'max_heap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'min_heap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'max_heap'})
MERGE (b:Concept {id: 'min_heap'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'max_heap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'min_heap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: 'memory_사용_공간'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '연산시간'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Metric {id: '평균_시간_복잡도'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Concept {id: '비교_회수'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Document {id: 'DS_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'heap'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'max_heap'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'min_heap'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'memory_사용_공간'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산시간'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '평균_시간_복잡도'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비교_회수'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_018: T-Tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_018'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 't_tree'})
SET     n.name = 'T-Tree',
    n.name_kr = 'T-Tree',
    n.domain = 'DS',
    n.aliases = ['T-Tree'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: 't-tree의_노드'})
SET     n.name = 'T-Tree의 노드',
    n.name_kr = 'T-Tree의 노드',
    n.domain = 'DS',
    n.definition = '내부 노드(Internal Node)';

MERGE (n:Concept {id: 'half_leaf_node'})
SET     n.name = 'Half-leaf Node',
    n.name_kr = '하프리프 노드',
    n.domain = 'DS',
    n.definition = '방향과 상관 없이 한쪽 서브 트리만을 가지며 하나의 자식 포인터만 가짐',
    n.aliases = ['Half-leaf Node', '하프리프 노드'];

MERGE (n:Concept {id: 'leaf_node'})
SET     n.name = 'Leaf Node',
    n.name_kr = '리프 노드',
    n.domain = 'DS',
    n.definition = '자식포인터가 하나도 없음',
    n.aliases = ['Leaf Node', '리프 노드'];

MERGE (n:Concept {id: '내부노드'})
SET     n.name = '내부노드',
    n.name_kr = '내부노드',
    n.domain = 'DS',
    n.definition = '각 내부노드 A(개념도 참조)에 대해, 그 노드의 최소값보다 작은 값을 가지는 서브트리는 트리의 좌측 서브트리가 되고, 반대로 그 노드의 최대값보다 큰 값을 가지는 서브트리는 우측 서브트리가 됨';

MERGE (n:Concept {id: 'greatest_lower_bound'})
SET     n.name = 'Greatest Lower Bound',
    n.name_kr = 'GLB',
    n.domain = 'DS',
    n.definition = '내부 노드A의 좌측 서브트리 값 중에서 A의 최소값과 가장 근접한 값',
    n.aliases = ['Greatest Lower Bound', 'GLB'];

MERGE (n:Concept {id: 'lowest_upper_bound'})
SET     n.name = 'Lowest Upper Bound',
    n.name_kr = 'LUB',
    n.domain = 'DS',
    n.definition = 'A의 우측 서브트리 값 중에서 A의 최대값과 가장 근접한 값',
    n.aliases = ['Lowest Upper Bound', 'LUB'];

MERGE (n:Concept {id: '탐색'})
SET     n.name = '탐색',
    n.name_kr = '탐색',
    n.domain = 'DS',
    n.definition = '1) 루트에서부터 탐색을 시작함 2) 찾는 값이 노드의 최소 데이터보다 작으면 왼쪽 서브 트리로 이동하여 탐색을 계속함 3) 찾는 값이 노드의 최대 데이터보다 크면 오른쪽 서브 트리로 이동하여 탐색을 계속함 4) 그렇지 않으면 노드에 포함된 데이터들과 비교하여 탐색하는 키를 찾음';

MERGE (n:Concept {id: '삽입'})
SET     n.name = '삽입',
    n.name_kr = '삽입',
    n.domain = 'DS',
    n.definition = '1) 데이터가 삽입될 노드를 탐색에 의해 찾음 2) 데이터를 삽입할 노드 A에 여유공간이 있는지 검사함 3) 공간이 있으면 노드 A에 데이터를 삽입하고 종료함. 이때, 노드에 포함되는 데이터들 사이에 순서가 유지되도록 함 4) 공간이 없으면 노드 A에 포함한 데이터 중에서 최소 데이터를 삭제하고, 그 공간을 이용하여 데이터를 삽입함. 5) 삭제한 데이터를';

MERGE (n:Concept {id: '삭제'})
SET     n.name = '삭제',
    n.name_kr = '삭제',
    n.domain = 'DS',
    n.definition = '1) 삭제할 데이터를 갖고 있는 노드 A를 탐색함 2) 노드 A가 내부 노드인 경우 2-1) 데이터를 삭제하기 전에 노드 A에 포함된 데이터의 개수가 최소값 MinT보다 큰 지를 조사함 2-2) 노드 A에서 데이터를 삭제해도 노드 A의 개수가 MinT 이상이면, 노드 A에서 데이터를 삭제한 후에 수행을 마침 2-3) MinT보다 작으면 노드 A의 최소 데이';

// --- 관계 ---

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: 't-tree의_노드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: 'half_leaf_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: 'leaf_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: '내부노드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: 'greatest_lower_bound'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: 'lowest_upper_bound'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: '탐색'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: '삽입'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Concept {id: '삭제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Document {id: 'DS_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 't_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 't-tree의_노드'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'half_leaf_node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'leaf_node'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부노드'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'greatest_lower_bound'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lowest_upper_bound'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐색'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삭제'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_019: R-tree
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_019'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'r_tree'})
SET     n.name = 'R-tree',
    n.name_kr = 'R-tree',
    n.domain = 'DS',
    n.aliases = ['R-tree'];

MERGE (n:Concept {id: '트리'})
SET     n.name = '트리',
    n.name_kr = '트리',
    n.domain = 'DS';

MERGE (n:Concept {id: '공간_데이터'})
SET     n.name = '공간 데이터',
    n.name_kr = '공간 데이터',
    n.domain = 'DS';

MERGE (n:Concept {id: 'mbr'})
SET     n.name = 'MBR',
    n.name_kr = 'MBR',
    n.domain = 'DS',
    n.aliases = ['MBR'];

MERGE (n:Concept {id: 'intersection'})
SET     n.name = '교차질의',
    n.name_kr = '교차질의',
    n.domain = 'DS';

MERGE (n:Concept {id: 'containment'})
SET     n.name = '포함질의',
    n.name_kr = '포함질의',
    n.domain = 'DS';

MERGE (n:Concept {id: 'nearest_neighbor'})
SET     n.name = '근접이웃질의',
    n.name_kr = '근접이웃질의',
    n.domain = 'DS';

MERGE (n:Concept {id: '삽입'})
SET     n.name = '삽입',
    n.name_kr = '삽입',
    n.domain = 'DS',
    n.definition = '1. 노드가 어느 위치로 삽입될지 찾고 값을 해당 노드에 삽입 2. 부적절한 상태의 노드가 없다면, 삽입 과정을 종료 3. 만약, 어떤 노드가 너무 많은 항목을 가지고 있다면, 이를 두 노드로 분리. 이 과정을 반복적으로 트리를 타고 올라가며 진행. 만약 루트 노드를 분리하였다면, 새로운 루트 노드를 생성 4. B-트리 와는 달리, 노드 분리(node sp';

MERGE (n:Concept {id: '삭제'})
SET     n.name = '삭제',
    n.name_kr = '삭제',
    n.domain = 'DS',
    n.definition = '1. 우선, 지울 값의 위치를 찾고 그 값을 가진 노드를 삭제 2. 부적절한 상태의 노드가 없다면, 삭제 과정을 종료 3. 만약 부적절한 상태의 노드가 있다면, B-트리와 유사하게 해결';

// --- 관계 ---

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: '트리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: '공간_데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: 'mbr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: 'intersection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: 'containment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: 'nearest_neighbor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: '삽입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Concept {id: '삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Document {id: 'DS_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'r_tree'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트리'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간_데이터'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mbr'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intersection'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'containment'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nearest_neighbor'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삽입'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삭제'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_020: 트라이(Trie)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_020'})
SET doc.domain = 'DS';

// --- 노드 ---

MERGE (n:Concept {id: 'trie'})
SET     n.name = 'Trie',
    n.name_kr = '트라이',
    n.domain = 'DS',
    n.aliases = ['Trie', '트라이'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DS';

MERGE (n:Concept {id: 'cache_friendly'})
SET     n.name = 'Cache Friendly',
    n.name_kr = 'Cache Friendly',
    n.domain = 'DS',
    n.aliases = ['Cache Friendly'];

MERGE (n:Concept {id: 'standard'})
SET     n.name = 'Standard',
    n.name_kr = 'Standard',
    n.domain = 'DS',
    n.aliases = ['Standard'];

MERGE (n:Concept {id: 'compact'})
SET     n.name = 'Compact',
    n.name_kr = 'Compact',
    n.domain = 'DS',
    n.aliases = ['Compact'];

MERGE (n:Concept {id: 'radix_trie'})
SET     n.name = 'Radix trie',
    n.name_kr = 'Radix trie',
    n.domain = 'DS',
    n.aliases = ['Radix trie'];

MERGE (n:Concept {id: 'suffix_trie'})
SET     n.name = 'Suffix Trie',
    n.name_kr = 'Suffix Trie',
    n.domain = 'DS',
    n.aliases = ['Suffix Trie'];

MERGE (n:Concept {id: 'standard_tries'})
SET     n.name = 'Standard Tries',
    n.name_kr = 'Standard Tries',
    n.domain = 'DS',
    n.aliases = ['Standard Tries'];

MERGE (n:Concept {id: 'compressed_tries'})
SET     n.name = 'Compressed Tries',
    n.name_kr = 'Compressed Tries',
    n.domain = 'DS',
    n.definition = '분기가 없는 redundant node를 제거한 Trie',
    n.aliases = ['Compressed Tries'];

MERGE (n:Concept {id: 'patricia_trie'})
SET     n.name = 'Patricia trie',
    n.name_kr = 'Radix trie',
    n.domain = 'DS',
    n.definition = '머지된 하나의 자식노드로 압축 표현되는 Trie',
    n.aliases = ['Patricia trie', 'Radix trie'];

MERGE (n:Concept {id: 'suffix_tries'})
SET     n.name = 'Suffix Tries',
    n.name_kr = 'Suffix Tries',
    n.domain = 'DS',
    n.definition = '모든 문자열의 부분집합을 가지는 Trie',
    n.aliases = ['Suffix Tries'];

// --- 관계 ---

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'cache_friendly'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'standard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'compact'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'radix_trie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'suffix_trie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'standard_tries'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'compressed_tries'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'patricia_trie'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Concept {id: 'suffix_tries'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Document {id: 'DS_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'trie'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_friendly'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'standard'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compact'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'radix_trie'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'suffix_trie'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'standard_tries'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compressed_tries'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'patricia_trie'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'suffix_tries'})
MERGE (b:Domain {id: 'DS'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DS_021: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DS_021'})
SET doc.domain = 'DS';

// ================================================================
// DS 도메인 자동 생성 완료
// 노드: 188개
// 관계: 385개
// ================================================================