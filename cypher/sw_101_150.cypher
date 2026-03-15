// ================================================================
// SW 도메인 (SW_101 ~ SW_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_071: Composite Structure Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_071'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'composite_structure_diagram'})
SET     n.name = 'Composite Structure Diagram',
    n.name_kr = 'Composite Structure Diagram',
    n.domain = 'SW',
    n.aliases = ['Composite Structure Diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'uml2_0'})
SET     n.name = 'UML2.0',
    n.name_kr = 'UML2.0',
    n.domain = 'SW',
    n.aliases = ['UML2.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'composite_structure_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'composite_structure_diagram'})
MERGE (b:Concept {id: 'uml2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'composite_structure_diagram'})
MERGE (b:Document {id: 'SW_071'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'composite_structure_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml2_0'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_072: Deployment Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_072'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'deployment_diagram'})
SET     n.name = 'Deployment Diagram',
    n.name_kr = 'Deployment Diagram',
    n.domain = 'SW',
    n.aliases = ['Deployment Diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '노연관'})
SET     n.name = '노(드)연(결)관(계)',
    n.name_kr = '노(드)연(결)관(계)',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'deployment_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deployment_diagram'})
MERGE (b:Concept {id: '노연관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'deployment_diagram'})
MERGE (b:Document {id: 'SW_072'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deployment_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노연관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_073: Interaction Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_073'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'interaction_diagram'})
SET     n.name = 'Interaction Diagram',
    n.name_kr = 'Interaction Diagram',
    n.domain = 'SW',
    n.aliases = ['Interaction Diagram'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '객체간_상호작용'})
SET     n.name = '객체간 상호작용',
    n.name_kr = '객체간 상호작용',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sequence_diagram'})
SET     n.name = '시퀀스 다이어그램',
    n.name_kr = '시퀀스 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: 'communication_diagram'})
SET     n.name = '통신 다이어그램',
    n.name_kr = '통신 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: 'interaction_overview_diagram'})
SET     n.name = '상호작용 개요 다이어그램',
    n.name_kr = '상호작용 개요 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: 'communication'})
SET     n.name = 'Communication',
    n.name_kr = 'Communication',
    n.domain = 'SW',
    n.aliases = ['Communication'];

MERGE (n:Concept {id: 'interaction_overview'})
SET     n.name = 'Interaction Overview',
    n.name_kr = 'Interaction Overview',
    n.domain = 'SW',
    n.aliases = ['Interaction Overview'];

MERGE (n:Concept {id: 'timing))'})
SET     n.name = 'Timing))',
    n.name_kr = 'Timing))',
    n.domain = 'SW';

MERGE (n:Concept {id: '다이어그램'})
SET     n.name = '다이어그램',
    n.name_kr = '다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: '메시지'})
SET     n.name = '메시지',
    n.name_kr = '메시지',
    n.domain = 'SW',
    n.definition = '동기식 : 호출 후 응답을 대기해야 함 -비동기 : 호출 후 응답을 대기할 필요 없음 -응답 : 메시지를 받은 객체로부터 제어가 돌아옴';

MERGE (n:Concept {id: '활성객체'})
SET     n.name = '활성객체',
    n.name_kr = '활성객체',
    n.domain = 'SW',
    n.definition = '메시지 교환에 참여하는 객체 -다이어그램 맨 위에 위치';

MERGE (n:Concept {id: '제어사각형'})
SET     n.name = '제어사각형',
    n.name_kr = '제어사각형',
    n.domain = 'SW',
    n.definition = '객체가 메시지를 주고받는 상태. -생명선 위에 위치';

MERGE (n:Concept {id: '엑터'})
SET     n.name = '엑터',
    n.name_kr = '엑터',
    n.domain = 'SW',
    n.definition = '시스템과 상호작용하는 사용자';

MERGE (n:Concept {id: '프레임'})
SET     n.name = '프레임',
    n.name_kr = '프레임',
    n.domain = 'SW',
    n.definition = 'UML2.0 에서는 시퀀스 다이어그램을 프레임 안에 작성함. 왼쪽 위 부분에 종류와 제목을 표시';

MERGE (n:Concept {id: '연산자'})
SET     n.name = '연산자',
    n.name_kr = '연산자',
    n.domain = 'SW',
    n.definition = 'loop : 여러 번에 걸쳐 실행됨. 반복 조건 명시 -opt : 주어진 조건이 참일 때 실행 -par : 병렬처리 동작을 나타낼 수 있음';

MERGE (n:Concept {id: '객체'})
SET     n.name = '객체',
    n.name_kr = '객체',
    n.domain = 'SW',
    n.definition = '메시지 교환에 참여하는 객체 -다이어그램 맨 위에 위치';

MERGE (n:Concept {id: '링크'})
SET     n.name = '링크',
    n.name_kr = '링크',
    n.domain = 'SW',
    n.definition = '액터 또는 객체 사이의 연관을 나타냄 -메시지를 주고 받는 관계';

MERGE (n:Concept {id: '마감시간'})
SET     n.name = '마감시간',
    n.name_kr = '마감시간',
    n.domain = 'SW',
    n.definition = 'Deadline';

MERGE (n:Concept {id: '착수시간'})
SET     n.name = '착수시간',
    n.name_kr = '착수시간',
    n.domain = 'SW',
    n.definition = 'Initiation time';

MERGE (n:Concept {id: '실행시간'})
SET     n.name = '실행시간',
    n.name_kr = '실행시간',
    n.domain = 'SW',
    n.definition = 'Execute time';

MERGE (n:Concept {id: '머문시간'})
SET     n.name = '머문시간',
    n.name_kr = '머문시간',
    n.domain = 'SW',
    n.definition = 'Dwell time';

MERGE (n:Concept {id: '슬랙타임'})
SET     n.name = '슬랙타임',
    n.name_kr = '슬랙타임',
    n.domain = 'SW',
    n.definition = 'Slack time';

MERGE (n:Concept {id: '전이시간'})
SET     n.name = '전이시간',
    n.name_kr = '전이시간',
    n.domain = 'SW',
    n.definition = 'Transition time';

MERGE (n:Concept {id: '지터'})
SET     n.name = '지터',
    n.name_kr = '지터',
    n.domain = 'SW',
    n.definition = 'Jitter';

MERGE (n:Concept {id: 'initial_final_state'})
SET     n.name = 'Initial/Final State',
    n.name_kr = 'Initial/Final State',
    n.domain = 'SW',
    n.definition = '시작 및 종료 지점 (/ )',
    n.aliases = ['Initial/Final State'];

MERGE (n:Concept {id: 'decision'})
SET     n.name = 'Decision',
    n.name_kr = 'Decision',
    n.domain = 'SW',
    n.definition = '의사결정 지점 ( )',
    n.aliases = ['Decision'];

MERGE (n:Concept {id: 'transition'})
SET     n.name = 'Transition',
    n.name_kr = 'Transition',
    n.domain = 'SW',
    n.definition = '제어 흐름의 전달 ( )',
    n.aliases = ['Transition'];

MERGE (n:Concept {id: 'sequence'})
SET     n.name = 'Sequence',
    n.name_kr = 'Sequence',
    n.domain = 'SW',
    n.definition = '활성 객체',
    n.aliases = ['Sequence'];

MERGE (n:Concept {id: '제어_사각형'})
SET     n.name = '제어 사각형',
    n.name_kr = '제어 사각형',
    n.domain = 'SW',
    n.definition = '객체의 제어와 정보의 대기상태 표시';

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '객체간_상호작용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'sequence_diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'communication_diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'interaction_overview_diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'communication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'interaction_overview'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'timing))'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '메시지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '활성객체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '제어사각형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '엑터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '프레임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '연산자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '객체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '링크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '마감시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '착수시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '실행시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '머문시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '슬랙타임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '전이시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '지터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'initial_final_state'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'decision'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'transition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: 'sequence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Concept {id: '제어_사각형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Document {id: 'SW_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interaction_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체간_상호작용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interaction_overview_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'communication'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interaction_overview'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timing))'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활성객체'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어사각형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엑터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프레임'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산자'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '링크'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마감시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '착수시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '머문시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '슬랙타임'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전이시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'initial_final_state'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sequence'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어_사각형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_074: Interaction Overview Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_074'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'interaction_overview_diagram'})
SET     n.name = 'Interaction Overview Diagram',
    n.name_kr = 'Interaction Overview Diagram',
    n.domain = 'SW',
    n.aliases = ['Interaction Overview Diagram'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'uml_2_0'})
SET     n.name = 'UML 2.0',
    n.name_kr = 'UML 2.0',
    n.domain = 'SW',
    n.aliases = ['UML 2.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interaction_overview_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interaction_overview_diagram'})
MERGE (b:Concept {id: 'uml_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interaction_overview_diagram'})
MERGE (b:Document {id: 'SW_074'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interaction_overview_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml_2_0'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_075: Timing diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_075'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'timing_diagram'})
SET     n.name = 'Timing diagram',
    n.name_kr = 'Timing diagram',
    n.domain = 'SW',
    n.aliases = ['Timing diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '시간제약'})
SET     n.name = '시간제약(시간에 따른 신호 표현)',
    n.name_kr = '시간제약(시간에 따른 신호 표현)',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'timing_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'timing_diagram'})
MERGE (b:Concept {id: '시간제약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'timing_diagram'})
MERGE (b:Document {id: 'SW_075'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'timing_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간제약'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_076: Communication diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_076'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'communication_diagram'})
SET     n.name = 'Communication diagram',
    n.name_kr = 'Communication diagram',
    n.domain = 'SW',
    n.aliases = ['Communication diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '객체간의_관계_강조'})
SET     n.name = '객체간의 관계 강조',
    n.name_kr = '객체간의 관계 강조',
    n.domain = 'SW';

MERGE (n:Concept {id: '자유로운_배열'})
SET     n.name = '자유로운 배열',
    n.name_kr = '자유로운 배열',
    n.domain = 'SW';

MERGE (n:Concept {id: 'frame'})
SET     n.name = 'Frame',
    n.name_kr = '프레임',
    n.domain = 'SW',
    n.definition = '프레임은 좌상단에 통신 다이어그램을 나타내는 cd와 상호작용 이름을 표기한 제목이 있는 사각형으로 구성 제목 구역은 우하단이 잘린 사각형으로 나타냄',
    n.aliases = ['Frame', '프레임'];

MERGE (n:Concept {id: 'lifeline'})
SET     n.name = 'Lifeline',
    n.name_kr = '생명선',
    n.domain = 'SW',
    n.definition = '생명선 이름은 UML 1.x 보다 간단하고 밑줄을 긋지 않음',
    n.aliases = ['Lifeline', '생명선'];

MERGE (n:Concept {id: 'link'})
SET     n.name = 'Link',
    n.name_kr = '링크',
    n.domain = 'SW',
    n.definition = '상호작용의 참여자들(객체) 간 메시지 교환을 나타내기 위해 사용',
    n.aliases = ['Link', '링크'];

MERGE (n:Concept {id: 'message'})
SET     n.name = 'Message',
    n.name_kr = '메시지',
    n.domain = 'SW',
    n.definition = '메시지들이 한 생명선으로부터 다른 생명선으로 보내지는 경로를 보여줌 - 링크에는 메시지를 붙일 수 있음 - 메시지가 보내지는 방향을 나타내는 화살표와 메시지 이름으로 구성',
    n.aliases = ['Message', '메시지'];

// --- 관계 ---

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: '객체간의_관계_강조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: '자유로운_배열'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: 'frame'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: 'lifeline'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: 'link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Concept {id: 'message'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Document {id: 'SW_076'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'communication_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체간의_관계_강조'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자유로운_배열'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'frame'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lifeline'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'message'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_077: Feature diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_077'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'feature_diagram'})
SET     n.name = 'Feature diagram',
    n.name_kr = 'Feature diagram',
    n.domain = 'SW',
    n.aliases = ['Feature diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

// --- 관계 ---

MERGE (a:Concept {id: 'feature_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'feature_diagram'})
MERGE (b:Document {id: 'SW_077'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'feature_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_084: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_084'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_085: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_085'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_086: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_086'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_087: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_087'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_088: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_088'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_089: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_089'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_090: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_090'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_091: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_091'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_092: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_092'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_093: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_093'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_094: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_094'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_095: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_095'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_096: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_096'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_097: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_097'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_098: Chain of Responsibility Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_098'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'chain_of_responsibility_pattern'})
SET     n.name = 'Chain of Responsibility Pattern',
    n.name_kr = 'Chain of Responsibility Pattern',
    n.domain = 'SW',
    n.aliases = ['Chain of Responsibility Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '느슨한_결합'})
SET     n.name = '느슨한 결합',
    n.name_kr = '느슨한 결합',
    n.domain = 'SW';

MERGE (n:Concept {id: 'handler'})
SET     n.name = 'Handler',
    n.name_kr = 'Handler',
    n.domain = 'SW',
    n.aliases = ['Handler'];

MERGE (n:Concept {id: 'concrete_handler'})
SET     n.name = 'Concrete Handler',
    n.name_kr = 'Concrete Handler',
    n.domain = 'SW',
    n.aliases = ['Concrete Handler'];

MERGE (n:Concept {id: 'client'})
SET     n.name = 'Client',
    n.name_kr = 'Client',
    n.domain = 'SW',
    n.aliases = ['Client'];

// --- 관계 ---

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Concept {id: '느슨한_결합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Concept {id: 'handler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Concept {id: 'concrete_handler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Concept {id: 'client'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Document {id: 'SW_098'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'chain_of_responsibility_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '느슨한_결합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'handler'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concrete_handler'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_099: Command Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_099'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'command_pattern'})
SET     n.name = 'Command Pattern',
    n.name_kr = 'Command Pattern',
    n.domain = 'SW',
    n.aliases = ['Command Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '수행할_행위_자체를_객체화'})
SET     n.name = '수행할 행위 자체를 객체화',
    n.name_kr = '수행할 행위 자체를 객체화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'command'})
SET     n.name = 'Command',
    n.name_kr = 'Command',
    n.domain = 'SW',
    n.aliases = ['Command'];

MERGE (n:Concept {id: 'concretecommand'})
SET     n.name = 'ConcreteCommand',
    n.name_kr = 'ConcreteCommand',
    n.domain = 'SW',
    n.aliases = ['ConcreteCommand'];

MERGE (n:Concept {id: 'client'})
SET     n.name = 'Client',
    n.name_kr = 'Client',
    n.domain = 'SW',
    n.aliases = ['Client'];

MERGE (n:Concept {id: 'invoker'})
SET     n.name = 'Invoker',
    n.name_kr = 'Invoker',
    n.domain = 'SW',
    n.aliases = ['Invoker'];

MERGE (n:Concept {id: 'receiver'})
SET     n.name = 'Receiver',
    n.name_kr = 'Receiver',
    n.domain = 'SW',
    n.aliases = ['Receiver'];

// --- 관계 ---

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: '수행할_행위_자체를_객체화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: 'command'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: 'concretecommand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: 'client'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: 'invoker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Concept {id: 'receiver'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Document {id: 'SW_099'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'command_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행할_행위_자체를_객체화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'command'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concretecommand'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invoker'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'receiver'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_100: Mediator Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_100'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'mediator_pattern'})
SET     n.name = 'Mediator Pattern',
    n.name_kr = 'Mediator Pattern',
    n.domain = 'SW',
    n.aliases = ['Mediator Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '중재자_방송국_mediator_패턴'})
SET     n.name = '중재자 방송국 Mediator 패턴',
    n.name_kr = '중재자 방송국 Mediator 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'mediator'})
SET     n.name = 'Mediator',
    n.name_kr = 'Mediator',
    n.domain = 'SW',
    n.aliases = ['Mediator'];

MERGE (n:Concept {id: 'colleague'})
SET     n.name = 'Colleague',
    n.name_kr = 'Colleague',
    n.domain = 'SW',
    n.aliases = ['Colleague'];

MERGE (n:Concept {id: 'concretemediator'})
SET     n.name = 'ConcreteMediator',
    n.name_kr = 'ConcreteMediator',
    n.domain = 'SW',
    n.aliases = ['ConcreteMediator'];

MERGE (n:Concept {id: 'concretecolleague'})
SET     n.name = 'ConcreteColleague',
    n.name_kr = 'ConcreteColleague',
    n.domain = 'SW',
    n.aliases = ['ConcreteColleague'];

// --- 관계 ---

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: '중재자_방송국_mediator_패턴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: 'mediator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: 'colleague'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: 'concretemediator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Concept {id: 'concretecolleague'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Document {id: 'SW_100'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mediator_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중재자_방송국_mediator_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mediator'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'colleague'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concretemediator'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concretecolleague'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_101: Memento Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_101'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'memento_pattern'})
SET     n.name = 'Memento Pattern',
    n.name_kr = 'Memento Pattern',
    n.domain = 'SW',
    n.aliases = ['Memento Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'car_me_o'})
SET     n.name = 'Car-me-o',
    n.name_kr = '카메오',
    n.domain = 'SW',
    n.aliases = ['Car-me-o', '카메오'];

// --- 관계 ---

MERGE (a:Concept {id: 'memento_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'memento_pattern'})
MERGE (b:Concept {id: 'car_me_o'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'memento_pattern'})
MERGE (b:Document {id: 'SW_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'memento_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'car_me_o'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_102: Interpreter Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_102'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'interpreter_pattern'})
SET     n.name = 'Interpreter Pattern',
    n.name_kr = 'Interpreter Pattern',
    n.domain = 'SW',
    n.aliases = ['Interpreter Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '문법_정의'})
SET     n.name = '문법 정의',
    n.name_kr = '문법 정의',
    n.domain = 'SW';

MERGE (n:Concept {id: '해석'})
SET     n.name = '해석',
    n.name_kr = '해석',
    n.domain = 'SW';

MERGE (n:Concept {id: 'abstractexpression'})
SET     n.name = 'AbstractExpression',
    n.name_kr = 'AbstractExpression',
    n.domain = 'SW',
    n.aliases = ['AbstractExpression'];

MERGE (n:Concept {id: 'terminalexpression'})
SET     n.name = 'TerminalExpression',
    n.name_kr = 'TerminalExpression',
    n.domain = 'SW',
    n.aliases = ['TerminalExpression'];

MERGE (n:Concept {id: 'context'})
SET     n.name = 'Context',
    n.name_kr = 'Context',
    n.domain = 'SW',
    n.aliases = ['Context'];

// --- 관계 ---

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: '문법_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: '해석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: 'abstractexpression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: 'terminalexpression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Concept {id: 'context'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Document {id: 'SW_102'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'interpreter_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문법_정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'abstractexpression'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'terminalexpression'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'context'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_103: Iterator Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_103'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'iterator_pattern'})
SET     n.name = 'Iterator Pattern',
    n.name_kr = 'Iterator Pattern',
    n.domain = 'SW',
    n.aliases = ['Iterator Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '반복'})
SET     n.name = '반복',
    n.name_kr = '반복',
    n.domain = 'SW';

MERGE (n:Concept {id: '순차'})
SET     n.name = '순차',
    n.name_kr = '순차',
    n.domain = 'SW';

MERGE (n:Concept {id: '열거'})
SET     n.name = '열거',
    n.name_kr = '열거',
    n.domain = 'SW';

MERGE (n:Concept {id: '리스트_열거'})
SET     n.name = '리스트 열거',
    n.name_kr = '리스트 열거',
    n.domain = 'SW';

MERGE (n:Concept {id: 'iterator'})
SET     n.name = 'Iterator',
    n.name_kr = 'Iterator',
    n.domain = 'SW',
    n.aliases = ['Iterator'];

MERGE (n:Concept {id: 'concreteiterator'})
SET     n.name = 'ConcreteIterator',
    n.name_kr = 'ConcreteIterator',
    n.domain = 'SW',
    n.aliases = ['ConcreteIterator'];

MERGE (n:Concept {id: 'aggregate'})
SET     n.name = 'Aggregate',
    n.name_kr = 'Aggregate',
    n.domain = 'SW',
    n.aliases = ['Aggregate'];

MERGE (n:Concept {id: 'concreteaggregate'})
SET     n.name = 'ConcreteAggregate',
    n.name_kr = 'ConcreteAggregate',
    n.domain = 'SW',
    n.aliases = ['ConcreteAggregate'];

// --- 관계 ---

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: '반복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: '순차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: '열거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: '리스트_열거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: 'iterator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: 'concreteiterator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: 'aggregate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Concept {id: 'concreteaggregate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Document {id: 'SW_103'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iterator_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반복'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '열거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리스트_열거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iterator'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concreteiterator'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aggregate'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concreteaggregate'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_104: State Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_104'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'state_pattern'})
SET     n.name = 'State Pattern',
    n.name_kr = 'State Pattern',
    n.domain = 'SW',
    n.aliases = ['State Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: '상태_캡슐화'})
SET     n.name = '상태 캡슐화',
    n.name_kr = '상태 캡슐화',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'state_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'state_pattern'})
MERGE (b:Concept {id: '상태_캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'state_pattern'})
MERGE (b:Document {id: 'SW_104'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'state_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태_캡슐화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_105: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_105'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_106: Observer Pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_106'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'observer_pattern'})
SET     n.name = 'Observer Pattern',
    n.name_kr = 'Observer Pattern',
    n.domain = 'SW',
    n.aliases = ['Observer Pattern'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'observer'})
SET     n.name = '옵저버',
    n.name_kr = '옵저버',
    n.domain = 'SW';

MERGE (n:Concept {id: 'one_to_many'})
SET     n.name = 'one-to-many',
    n.name_kr = '일대다',
    n.domain = 'SW',
    n.aliases = ['one-to-many', '일대다'];

MERGE (n:Concept {id: 'subject'})
SET     n.name = 'subject',
    n.name_kr = 'subject',
    n.domain = 'SW',
    n.aliases = ['subject'];

MERGE (n:Concept {id: 'push_model'})
SET     n.name = 'push model',
    n.name_kr = 'push model',
    n.domain = 'SW',
    n.aliases = ['push model'];

MERGE (n:Concept {id: 'pull_model'})
SET     n.name = 'pull model',
    n.name_kr = 'pull model',
    n.domain = 'SW',
    n.aliases = ['pull model'];

MERGE (n:Concept {id: 'interface'})
SET     n.name = 'Interface',
    n.name_kr = 'Interface',
    n.domain = 'SW',
    n.definition = 'Subject',
    n.aliases = ['Interface'];

MERGE (n:Concept {id: 'class'})
SET     n.name = 'Class',
    n.name_kr = 'Class',
    n.domain = 'SW',
    n.definition = 'ConcreteSubject',
    n.aliases = ['Class'];

MERGE (n:Concept {id: '동작_방식'})
SET     n.name = '동작 방식',
    n.name_kr = '동작 방식',
    n.domain = 'SW',
    n.definition = 'Push 방식';

MERGE (n:Concept {id: '관계'})
SET     n.name = '관계',
    n.name_kr = '관계',
    n.domain = 'SW',
    n.definition = '1:N 관계';

// --- 관계 ---

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'observer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'one_to_many'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'subject'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'push_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'pull_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'interface'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: 'class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: '동작_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Concept {id: '관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Document {id: 'SW_106'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'observer_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'observer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_to_many'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subject'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pull_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interface'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_107: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_107'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_108: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_108'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_109.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_109.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_109.2: Circuit Breaker
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_109.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'circuit_breaker'})
SET     n.name = 'Circuit Breaker',
    n.name_kr = 'Circuit Breaker',
    n.domain = 'SW',
    n.aliases = ['Circuit Breaker'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'open'})
SET     n.name = 'Open',
    n.name_kr = 'Open',
    n.domain = 'SW',
    n.aliases = ['Open'];

MERGE (n:Concept {id: 'closed'})
SET     n.name = 'Closed',
    n.name_kr = 'Closed',
    n.domain = 'SW',
    n.aliases = ['Closed'];

MERGE (n:Concept {id: 'half_open'})
SET     n.name = 'Half Open',
    n.name_kr = 'Half Open',
    n.domain = 'SW',
    n.aliases = ['Half Open'];

// --- 관계 ---

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Concept {id: 'open'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Concept {id: 'closed'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Concept {id: 'half_open'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Document {id: 'SW_109.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'closed'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'half_open'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_110.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_110.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_114.1: DevOps
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_114.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Method {id: 'devops'})
SET     n.name = 'DevOps',
    n.name_kr = 'DevOps',
    n.domain = 'SW',
    n.aliases = ['DevOps'];

MERGE (n:Concept {id: 'software공학'})
SET     n.name = 'Software공학',
    n.name_kr = 'Software공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'tdd'})
SET     n.name = 'TDD',
    n.name_kr = 'TDD',
    n.domain = 'SW',
    n.aliases = ['TDD'];

MERGE (n:Concept {id: 'ci'})
SET     n.name = 'CI',
    n.name_kr = 'CI',
    n.domain = 'SW',
    n.aliases = ['CI'];

MERGE (n:Concept {id: 'dataops'})
SET     n.name = 'DataOps',
    n.name_kr = '데이터옵스',
    n.domain = 'SW',
    n.aliases = ['DataOps', '데이터옵스'];

// --- 관계 ---

MERGE (a:Concept {id: 'tdd'})
MERGE (b:Concept {id: 'software공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Concept {id: 'tdd'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Concept {id: 'ci'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dataops'})
MERGE (b:Method {id: 'devops'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Concept {id: 'dataops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dataops'})
MERGE (b:Concept {id: 'devops'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Concept {id: 'dataops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Document {id: 'SW_114.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tdd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ci'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dataops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_114.2: CI (Continuous Integration), CD (Continuous Delivery)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_114.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'continuous_integration'})
SET     n.name = 'Continuous Delivery',
    n.name_kr = 'CI (Continuous Integration), CD',
    n.domain = 'SW',
    n.aliases = ['Continuous Delivery', 'CI (Continuous Integration), CD'];

MERGE (n:Method {id: 'tdd_devops'})
SET     n.name = 'TDD/DevOps',
    n.name_kr = 'TDD/DevOps',
    n.domain = 'SW',
    n.aliases = ['TDD/DevOps'];

MERGE (n:Concept {id: 'ci,_cd'})
SET     n.name = 'CI, CD',
    n.name_kr = 'CI, CD',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ci'})
SET     n.name = 'CI',
    n.name_kr = 'CI',
    n.domain = 'SW',
    n.aliases = ['CI'];

MERGE (n:Concept {id: '자동화'})
SET     n.name = '자동화',
    n.name_kr = '자동화',
    n.domain = 'SW';

MERGE (n:Concept {id: '통합'})
SET     n.name = '통합',
    n.name_kr = '통합',
    n.domain = 'SW';

MERGE (n:Concept {id: '빌드'})
SET     n.name = '빌드',
    n.name_kr = '빌드',
    n.domain = 'SW';

MERGE (n:Concept {id: '배포'})
SET     n.name = '배포',
    n.name_kr = '배포',
    n.domain = 'SW';

MERGE (n:Technology {id: 'jenkins'})
SET     n.name = 'Jenkins',
    n.name_kr = 'Jenkins',
    n.domain = 'SW',
    n.aliases = ['Jenkins'];

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'ci,_cd'})
MERGE (b:Method {id: 'tdd_devops'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: 'ci'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: '자동화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: '통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: '빌드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: '배포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Technology {id: 'jenkins'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Document {id: 'SW_114.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'continuous_integration'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'tdd_devops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ci,_cd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ci'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빌드'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배포'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'jenkins'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_114.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_114.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_115.1: SRE (Site Reliability Engineering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_115.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'site_reliability_engineering'})
SET     n.name = 'Site Reliability Engineering',
    n.name_kr = 'SRE',
    n.domain = 'SW',
    n.aliases = ['Site Reliability Engineering', 'SRE'];

MERGE (n:Concept {id: 'software공학'})
SET     n.name = 'Software공학',
    n.name_kr = 'Software공학',
    n.domain = 'SW';

MERGE (n:Method {id: 'tdd_devops'})
SET     n.name = 'TDD/DevOps',
    n.name_kr = 'TDD/DevOps',
    n.domain = 'SW',
    n.aliases = ['TDD/DevOps'];

MERGE (n:Concept {id: 'sre'})
SET     n.name = 'SRE',
    n.name_kr = 'SRE',
    n.domain = 'SW',
    n.aliases = ['SRE'];

MERGE (n:Concept {id: '안정성'})
SET     n.name = '안정성',
    n.name_kr = '안정성',
    n.domain = 'SW';

MERGE (n:Concept {id: '지표'})
SET     n.name = '지표',
    n.name_kr = '지표',
    n.domain = 'SW';

MERGE (n:Concept {id: '용량산정'})
SET     n.name = '용량산정',
    n.name_kr = '용량산정',
    n.domain = 'SW';

MERGE (n:Concept {id: '변화관리'})
SET     n.name = '변화관리',
    n.name_kr = '변화관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '장애_대응'})
SET     n.name = '장애 대응',
    n.name_kr = '장애 대응',
    n.domain = 'SW';

MERGE (n:Concept {id: '문화'})
SET     n.name = '문화',
    n.name_kr = '문화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sli'})
SET     n.name = 'SLI',
    n.name_kr = 'SLI',
    n.domain = 'SW',
    n.aliases = ['SLI'];

MERGE (n:Concept {id: 'slo'})
SET     n.name = 'SLO',
    n.name_kr = 'SLO',
    n.domain = 'SW',
    n.aliases = ['SLO'];

MERGE (n:Concept {id: '카나리_배포'})
SET     n.name = '카나리 배포',
    n.name_kr = '카나리 배포',
    n.domain = 'SW';

MERGE (n:Concept {id: 'toil_관리'})
SET     n.name = 'Toil 관리',
    n.name_kr = 'Toil 관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '적절한_수준'})
SET     n.name = '적절한 수준',
    n.name_kr = '적절한 수준',
    n.domain = 'SW',
    n.definition = '불필요한 안정성 추구는 시간과 경제적 낭비 발생으로 비즈니스 수요에 맞춘 실용적이고 적절한 안정성 제공 (항공, 의료기기 등과 같이 생명 관련 상황은 예외)';

MERGE (n:Concept {id: '데브옵스'})
SET     n.name = '데브옵스',
    n.name_kr = '데브옵스',
    n.domain = 'SW',
    n.definition = '운영과 개발의 간극해소, 배포 과정통합통한 효과성 보장';

// --- 관계 ---

MERGE (a:Method {id: 'tdd_devops'})
MERGE (b:Concept {id: 'software공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sre'})
MERGE (b:Method {id: 'tdd_devops'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '용량산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '변화관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '장애_대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: 'sli'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: 'slo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '카나리_배포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: 'toil_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '적절한_수준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '데브옵스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데브옵스'})
MERGE (b:Concept {id: 'sre'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: '데브옵스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Concept {id: 'sre'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Document {id: 'SW_115.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'site_reliability_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'tdd_devops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sre'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지표'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용량산정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장애_대응'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sli'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slo'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카나리_배포'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'toil_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적절한_수준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데브옵스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_115.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_115.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_115.3: SW Visualization
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_115.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_visualization'})
SET     n.name = 'SW Visualization',
    n.name_kr = 'SW Visualization',
    n.domain = 'SW',
    n.aliases = ['SW Visualization'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '주요지표'})
SET     n.name = '주요지표',
    n.name_kr = '주요지표',
    n.domain = 'SW';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'SW';

MERGE (n:Technology {id: '지속적인_통합'})
SET     n.name = '지속적인 통합',
    n.name_kr = '지속적인 통합',
    n.domain = 'SW',
    n.definition = 'Jenkins';

MERGE (n:Concept {id: '요구사항_관리'})
SET     n.name = '요구사항 관리',
    n.name_kr = '요구사항 관리',
    n.domain = 'SW',
    n.definition = 'Redmine';

MERGE (n:Concept {id: '테스트_케이스'})
SET     n.name = '테스트 케이스',
    n.name_kr = '테스트 케이스',
    n.domain = 'SW',
    n.definition = 'TestLink';

MERGE (n:Concept {id: 'impasse'})
SET     n.name = 'Impasse',
    n.name_kr = 'Impasse',
    n.domain = 'SW',
    n.definition = 'TestLink의 기능을 Redmine에서 사용하도록 만들어진 Redmine의 plugin - TestLink와 유사하나 별도로 요구사항을 입력하지 않고 Redmine에 등록된 요구사항에 대한 테스트 케이스를 관리하는 방식으로 동작',
    n.aliases = ['Impasse'];

MERGE (n:Concept {id: '형상관리'})
SET     n.name = '형상관리',
    n.name_kr = '형상관리',
    n.domain = 'SW',
    n.definition = 'Subver-sion';

MERGE (n:Concept {id: '테스트_자동화'})
SET     n.name = '테스트 자동화',
    n.name_kr = '테스트 자동화',
    n.domain = 'SW';

MERGE (n:Concept {id: '통합개발_환경'})
SET     n.name = '통합개발 환경',
    n.name_kr = '통합개발 환경',
    n.domain = 'SW',
    n.definition = 'Eclipse';

MERGE (n:Concept {id: '기타_플러그인'})
SET     n.name = '기타 플러그인',
    n.name_kr = '기타 플러그인',
    n.domain = 'SW',
    n.definition = 'Mylyn';

MERGE (n:Concept {id: 'subclipse'})
SET     n.name = 'Subclipse',
    n.name_kr = 'Subclipse',
    n.domain = 'SW',
    n.definition = '버전관리 시스템인 Subversion과 연동을 위한 Eclipse plugin - Subclipse를 사용하여 Eclipse에서 Subversion에 등록된 Repository에 접근이 가능하며, Eclipse에서 개발한 코드를 바로 Subversion에 적용',
    n.aliases = ['Subclipse'];

MERGE (n:Concept {id: '요구_사항'})
SET     n.name = '요구 사항',
    n.name_kr = '요구 사항',
    n.domain = 'SW',
    n.definition = '요구사항 추적성';

MERGE (n:Concept {id: '요구사항_달성율'})
SET     n.name = '요구사항 달성율',
    n.name_kr = '요구사항 달성율',
    n.domain = 'SW',
    n.definition = '정의된 요구사항이 시스템으로 구현되고 있는 정도';

MERGE (n:Concept {id: '요구사항_커버리지'})
SET     n.name = '요구사항 커버리지',
    n.name_kr = '요구사항 커버리지',
    n.domain = 'SW',
    n.definition = '시스템이 요구사항을 커버하는 정도(요구사항이 개발되고, 테스트되고 있는지의 정도를 평가)';

MERGE (n:Concept {id: '형상_관리'})
SET     n.name = '형상 관리',
    n.name_kr = '형상 관리',
    n.domain = 'SW',
    n.definition = '형상항목';

MERGE (n:Concept {id: '항목_등록율'})
SET     n.name = '항목 등록율',
    n.name_kr = '항목 등록율',
    n.domain = 'SW',
    n.definition = '관리할 내용이 형상항목으로 설정, 관리되는지 여부';

MERGE (n:Concept {id: '항목_변경율'})
SET     n.name = '항목 변경율',
    n.name_kr = '항목 변경율',
    n.domain = 'SW',
    n.definition = '형상관리 항목 안정도';

MERGE (n:Concept {id: '동적_테스팅'})
SET     n.name = '동적 테스팅',
    n.name_kr = '동적 테스팅',
    n.domain = 'SW',
    n.definition = '기능 검증';

MERGE (n:Concept {id: '비기능_검증'})
SET     n.name = '비기능 검증',
    n.name_kr = '비기능 검증',
    n.domain = 'SW',
    n.definition = '요구된 정량적 품질목표 달성 여부를 확인';

MERGE (n:Concept {id: '정형_검증'})
SET     n.name = '정형 검증',
    n.name_kr = '정형 검증',
    n.domain = 'SW',
    n.definition = '수학적, 논리적 모델을 기반';

MERGE (n:Concept {id: '사용자_검증'})
SET     n.name = '사용자 검증',
    n.name_kr = '사용자 검증',
    n.domain = 'SW',
    n.definition = '알파/베타테스트';

MERGE (n:Concept {id: '구조적_커버리지'})
SET     n.name = '구조적 커버리지',
    n.name_kr = '구조적 커버리지',
    n.domain = 'SW',
    n.definition = 'Basic Path, Statement, Branch, MD/DC Coverage';

MERGE (n:Concept {id: '정적_테스팅'})
SET     n.name = '정적 테스팅',
    n.name_kr = '정적 테스팅',
    n.domain = 'SW',
    n.definition = '코딩표준 준수율';

MERGE (n:Concept {id: '메트릭_만족율'})
SET     n.name = '메트릭 만족율',
    n.name_kr = '메트릭 만족율',
    n.domain = 'SW',
    n.definition = '자동화도구등을기준의 만족여부 활용,메트릭을 측정';

MERGE (n:Concept {id: '정적분석_이행율'})
SET     n.name = '정적분석 이행율',
    n.name_kr = '정적분석 이행율',
    n.domain = 'SW',
    n.definition = 'SW를 실행하지 않은 상태에서 SW의 잠재적 결함을 검출하는분석';

MERGE (n:Concept {id: '결함_수준'})
SET     n.name = '결함 수준',
    n.name_kr = '결함 수준',
    n.domain = 'SW',
    n.definition = '결함 조치율';

MERGE (n:Concept {id: '결함밀도'})
SET     n.name = '결함밀도',
    n.name_kr = '결함밀도',
    n.domain = 'SW',
    n.definition = '산출물별/영역별/전체 등의 결함분포도를 확인, 결함예방 및 통제';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '주요지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Technology {id: '지속적인_통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '요구사항_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '테스트_케이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: 'impasse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '형상관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '테스트_자동화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '통합개발_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '기타_플러그인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: 'subclipse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '요구_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '요구사항_달성율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '요구사항_커버리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '형상_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '항목_등록율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '항목_변경율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '동적_테스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '비기능_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '정형_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '사용자_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '구조적_커버리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '정적_테스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '메트릭_만족율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '정적분석_이행율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '결함_수준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Concept {id: '결함밀도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Document {id: 'SW_115.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_visualization'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요지표'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '지속적인_통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_케이스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'impasse'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형상관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_자동화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합개발_환경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_플러그인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subclipse'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_달성율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형상_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '항목_등록율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '항목_변경율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적_테스팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능_검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정형_검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적_테스팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메트릭_만족율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적분석_이행율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결함_수준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결함밀도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_116.1: Test 일반
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_116.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'test_일반'})
SET     n.name = 'Test 일반',
    n.name_kr = 'Test 일반',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'sw_test_원칙'})
SET     n.name = 'SW Test 원칙',
    n.name_kr = 'SW Test 원칙',
    n.domain = 'SW';

MERGE (n:Concept {id: 'snow_ball_effect'})
SET     n.name = 'Snow Ball Effect',
    n.name_kr = 'Snow Ball Effect',
    n.domain = 'SW',
    n.aliases = ['Snow Ball Effect'];

MERGE (n:Concept {id: 'sw_test_유형'})
SET     n.name = 'SW Test 유형',
    n.name_kr = 'SW Test 유형',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test_harness'})
SET     n.name = 'Test Harness',
    n.name_kr = 'Test Harness',
    n.domain = 'SW',
    n.aliases = ['Test Harness'];

MERGE (n:Concept {id: 'test_exit_criteria'})
SET     n.name = 'Test Exit Criteria',
    n.name_kr = 'Test Exit Criteria',
    n.domain = 'SW',
    n.aliases = ['Test Exit Criteria'];

MERGE (n:Concept {id: '명세'})
SET     n.name = '명세',
    n.name_kr = '명세',
    n.domain = 'SW';

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'SW';

MERGE (n:Concept {id: '경험기반_테스트'})
SET     n.name = '경험기반 테스트',
    n.name_kr = '경험기반 테스트',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'sw_test_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'snow_ball_effect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'sw_test_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'test_harness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: 'test_exit_criteria'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: '명세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Concept {id: '경험기반_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Document {id: 'SW_116.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'test_일반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_test_원칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snow_ball_effect'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_test_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_harness'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_exit_criteria'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경험기반_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_116.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_116.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_117: Test 유형
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_117'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'test_유형'})
SET     n.name = 'Test 유형',
    n.name_kr = 'Test 유형',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '테스트_유형'})
SET     n.name = '테스트 유형',
    n.name_kr = '테스트 유형',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트_정보_획득_대상'})
SET     n.name = '테스트 정보 획득 대상',
    n.name_kr = '테스트 정보 획득 대상',
    n.domain = 'SW',
    n.definition = '화이트박스 테스트 (White Box Test)';

MERGE (n:Concept {id: 'black_box_test'})
SET     n.name = 'Black Box Test',
    n.name_kr = '블랙박스 테스트',
    n.domain = 'SW',
    n.definition = '프로그램 외부 명세를 보면서 테스트(기능 테스트) - 동등분할/경계값분석/Cause-Effect 그래프/오류예측기법 - Data Driven Test',
    n.aliases = ['Black Box Test', '블랙박스 테스트'];

MERGE (n:Concept {id: '프로그램_실행_여부'})
SET     n.name = '프로그램 실행 여부',
    n.name_kr = '프로그램 실행 여부',
    n.domain = 'SW',
    n.definition = '동적 테스트';

MERGE (n:Concept {id: '정적_테스트'})
SET     n.name = '정적 테스트',
    n.name_kr = '정적 테스트',
    n.domain = 'SW',
    n.definition = '프로그램 실행 없이 구조를 분석하여 논리성 검증 - 코드검사(Code Review): 오류 유형 체크리스트 및 역할에 의한 formal한 검사 방법(fagan) - 워크스루(Walk Through): 역할/체크리스트가 없는 비공식적 검사 방법 - Inspection : 공식적 검사';

MERGE (n:Concept {id: 'v_v_model'})
SET     n.name = 'V-V model',
    n.name_kr = '테스트에 대한 시각',
    n.domain = 'SW',
    n.definition = '검증 (Verification)',
    n.aliases = ['V-V model', '테스트에 대한 시각'];

MERGE (n:Concept {id: 'validation'})
SET     n.name = 'Validation',
    n.name_kr = '확인',
    n.domain = 'SW',
    n.definition = '소프트웨어 동작 결과를 테스트 (Are we building the right product?) - 만들어진 제품이 제대로 동작하는지 확인 - 최종 사용자 요구 또는 소프트웨어 요구에 적합한지 판단 - 사용자 시각으로 올바른 소프트웨어가 개발되었는지 입증하는 과정 - 어느 단계의 개발 제품이 최초의 사용자 요구 또는 소프트웨어 요구에 적합한지를 입증하기 위',
    n.aliases = ['Validation', '확인'];

MERGE (n:Concept {id: '테스트_단계'})
SET     n.name = '테스트 단계',
    n.name_kr = '테스트 단계',
    n.domain = 'SW',
    n.definition = '단위 테스트 (Unit Test, 컴포넌트 테스트)';

MERGE (n:Concept {id: 'integration'})
SET     n.name = 'Integration',
    n.name_kr = '통합 테스트',
    n.domain = 'SW',
    n.definition = '모듈 간의 인터페이스 테스트(결함 테스트) - 모듈을 결합하여 하나의 시스템으로 구성 시 수행 - 빅뱅 통합 : 한꺼번에 테스트하므로 오류발생 시 원인 규명 어려움 - 하향식 통합 : 상위 모듈 테스트 시 다수의 하위 스텁(stub) 필요 - 상향식 통합 : 하위 모듈 호출하는 테스트 드라이버(Driver) 필요 - 상,하향식 통합을 결합한 샌드위치 통합방',
    n.aliases = ['Integration', '통합 테스트'];

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = '시스템 테스트',
    n.domain = 'SW',
    n.definition = '통합 모듈에 대한 시스템적 테스트 - 기능적/비기능적 시스템 상위 레벨 요구 사항 검증 - 신뢰성, 견고성, 성능, 안전성 등 비기능적 요구사항 - 회복, 안전, 강도, 성능, 구조 등 - 통합된 시스템에 대해 실제 사용 환경과 유사한 환경에서 다양한 기법의 테스트 수행',
    n.aliases = ['System', '시스템 테스트'];

MERGE (n:Concept {id: 'acceptance'})
SET     n.name = 'Acceptance',
    n.name_kr = '인수 테스트',
    n.domain = 'SW',
    n.definition = '사용자 요구사항 만족도 평가(알파,베타,감마) - 알파 : 개발자 환경에서 사용자가 수행 - 베타 : 일정 수의 사용자가 테스트 후 피드백 - 감마 : 베타버전 배포 이후 다수의 사용자 테스트 - 시스템에 대한 ‘확신’을 얻기 위해 사용자가 주체가 되어 전체 시스템을 검증 - 일반적으로 최종 단계의 테스트',
    n.aliases = ['Acceptance', '인수 테스트'];

MERGE (n:Concept {id: 'installation'})
SET     n.name = 'Installation',
    n.name_kr = '설치 테스트',
    n.domain = 'SW',
    n.definition = '시스템을 설치하면서 수행 - HW체계, SW연결성 등 테스트',
    n.aliases = ['Installation', '설치 테스트'];

MERGE (n:Concept {id: '테스트_목적'})
SET     n.name = '테스트 목적',
    n.name_kr = '테스트 목적',
    n.domain = 'SW',
    n.definition = '기능 테스트 (Functional)';

MERGE (n:Concept {id: 'nonfunctional'})
SET     n.name = 'Nonfunctional',
    n.name_kr = '비기능 테스트',
    n.domain = 'SW',
    n.definition = '성능 테스트, 사용성 테스트 등 비 기능적 요구 사항 또는 품질 목표에 대한 검증 - 시스템이 어떻게 동작하는가에 대한 검증',
    n.aliases = ['Nonfunctional', '비기능 테스트'];

MERGE (n:Metric {id: 'structure'})
SET     n.name = 'Structure',
    n.name_kr = '구조 테스트',
    n.domain = 'SW',
    n.definition = '내부논리경로, 복잡도 평가 - 특정 유형의 구조 커버리지를 평가하여 테스트 보장성 또는 충분함을 측정 - 코드 구조의 커버리지 측정이 대표적 - 자동화 툴을 이용하여 평가 가능 - White Box Test 로 접근',
    n.aliases = ['Structure', '구조 테스트'];

MERGE (n:Concept {id: 'regression'})
SET     n.name = 'Regression',
    n.name_kr = '회귀 테스트',
    n.domain = 'SW',
    n.definition = '변경 또는 교정이 새로운 오류를 발생시키지 않음을 확인 - 결함 수정 이후 변경의 결과로 도입되었거나 발견되지 않았던 또 다른 결함을 발견하기 위한 테스트 - 조치의 결과로 시스템이 퇴행 되었는지 여부 확인',
    n.aliases = ['Regression', '회귀 테스트'];

MERGE (n:Concept {id: 'parallel'})
SET     n.name = 'Parallel',
    n.name_kr = '병행 테스트',
    n.domain = 'SW',
    n.definition = '변경 시스템과 기존 시스템에 동일한 데이터로 결과 비교',
    n.aliases = ['Parallel', '병행 테스트'];

MERGE (n:Concept {id: 'stress'})
SET     n.name = 'Stress',
    n.name_kr = '부하 테스트',
    n.domain = 'SW',
    n.definition = '과다 정보량 부과 - 목표량의 부하를 초과하는 거래량의 부하를 주는 테스트 : 시스템의 안정성 검증',
    n.aliases = ['Stress', '부하 테스트'];

MERGE (n:Concept {id: 'performance'})
SET     n.name = 'Performance',
    n.name_kr = '성능 테스트',
    n.domain = 'SW',
    n.definition = '응답시간, 처리량, 속도에 대한 점검 테스트',
    n.aliases = ['Performance', '성능 테스트'];

MERGE (n:Concept {id: '유지보수_테스트'})
SET     n.name = '유지보수 테스트',
    n.name_kr = '유지보수 테스트',
    n.domain = 'SW',
    n.definition = '기 운영중인 시스템이 변경, 단종, migration 될 때 적용하는 테스트 - Regression Test 와 유사하지만, 개발 완료 이후 수행';

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = '안전 테스트',
    n.domain = 'SW',
    n.definition = '불법적인 소프트웨어',
    n.aliases = ['Security', '안전 테스트'];

MERGE (n:Concept {id: 'recovery'})
SET     n.name = 'Recovery',
    n.name_kr = '회복 테스트',
    n.domain = 'SW',
    n.definition = '고의적 실패를 유도하여 회복시키는 테스트 - 자체결함, 하드웨어 고장, 데이터의 에러 등과 같은 에러 발생 후 소프트웨어가 새로이 시작할 수 있는가를 검증',
    n.aliases = ['Recovery', '회복 테스트'];

MERGE (n:Concept {id: 'record_&_replay'})
SET     n.name = 'Record & Replay',
    n.name_kr = 'Record & Replay',
    n.domain = 'SW',
    n.definition = '타겟 시스템에서 발생하는 사용자 입력 및 외부 이벤트를 녹화해서 테스트 스크립트로 구성하고, 이 스크립트를 재수행해서 결과를 확인하는 방법';

MERGE (n:Concept {id: '테스트_오라클'})
SET     n.name = '테스트 오라클',
    n.name_kr = '테스트 오라클',
    n.domain = 'SW',
    n.definition = '테스트를 수행 한 결과가 참인지 거짓인지를 판단하기 위하여 미리 정의된 참 값을 대입하여 비교하는 기법 및 활동 : 참오라클, 샘플링 오라클, 휴리스틱 오라클';

MERGE (n:Concept {id: '리스크기반_테스트'})
SET     n.name = '리스크기반 테스트',
    n.name_kr = '리스크기반 테스트',
    n.domain = 'SW',
    n.definition = '비즈니스, 기술상의 위험을 정량적으로 측정하여 우순 순위가 높은 부분에 주어진 테스팅 자원을 집중, 전체적인 영향을 줄이기 위한 테스트 전략 발생가능성, 영향';

MERGE (n:Concept {id: 'pairwise_testing'})
SET     n.name = 'Pairwise Testing',
    n.name_kr = 'Pairwise Testing',
    n.domain = 'SW',
    n.definition = '대부분의 결함이 2개 요소의 상호작용 (Interactions of two factors)에 따라 발생됨 - 필요한 각 값들이 다른 파라미터 값과 최소한 한번씩은 조합을 이루는 테스트 케이스 사용',
    n.aliases = ['Pairwise Testing'];

MERGE (n:Concept {id: '준거성_테스트'})
SET     n.name = '준거성 테스트',
    n.name_kr = '준거성 테스트',
    n.domain = 'SW',
    n.definition = 'Compliance Test; 내부 통제가 문서화 자료에 명시된 바대로 경영자의 의도대로 이행되고 있는가를 판단하기 위한 감사 테스트';

MERGE (n:Concept {id: '실증성_테스트'})
SET     n.name = '실증성 테스트',
    n.name_kr = '실증성 테스트',
    n.domain = 'SW',
    n.definition = 'Substantive Test; 활동 또는 거래들의 완전성, 정확성, 또는 그 존재성에 대한 감사 증거를 수집하기 위해 설계되는 세부 활동 및 거래예 대한 테스트 또는 분석적 조사 테스트';

MERGE (n:Concept {id: '명세_기반'})
SET     n.name = '명세 기반',
    n.name_kr = '명세 기반',
    n.domain = 'SW',
    n.definition = '시스템에서 제공하는 기능 및 메뉴 등 명세를 기반으로 Test Case를 설계하는 기법 테스트 대상 및 케이스 설계에 관해 공식적/ 비 공식적 명세 사용';

MERGE (n:Concept {id: '구조_기반'})
SET     n.name = '구조 기반',
    n.name_kr = '구조 기반',
    n.domain = 'SW',
    n.definition = '코드와 개발 설계 등의 소프트웨어 구현 정보를 기반으로 Test Case 를 설계하는 기법 커버리지를 높이기 위해 케이스를 추가';

MERGE (n:Concept {id: '경험_기반'})
SET     n.name = '경험 기반',
    n.name_kr = '경험 기반',
    n.domain = 'SW',
    n.definition = '테스터/개발자/사용자 경험적지식을 활용 발생 가능한 결함과 그 분포 등에 관한 지식 사용';

// --- 관계 ---

MERGE (a:Concept {id: '테스트_유형'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '테스트_정보_획득_대상'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'black_box_test'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '프로그램_실행_여부'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '정적_테스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'v_v_model'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'validation'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '테스트_단계'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'integration'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'system'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'acceptance'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'installation'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '테스트_목적'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'nonfunctional'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Metric {id: 'structure'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'regression'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'parallel'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'stress'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'performance'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '유지보수_테스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'recovery'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'record_&_replay'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '테스트_오라클'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '리스크기반_테스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: 'pairwise_testing'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '준거성_테스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '실증성_테스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '명세_기반'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '구조_기반'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Concept {id: '경험_기반'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Document {id: 'SW_117'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'test_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_정보_획득_대상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'black_box_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램_실행_여부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v_v_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'validation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_단계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'integration'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'acceptance'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'installation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_목적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nonfunctional'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'structure'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'regression'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'parallel'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stress'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'performance'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'record_&_replay'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_오라클'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리스크기반_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준거성_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실증성_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경험_기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_118: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_118'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_120: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_120'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_121: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_121'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_122: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_122'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_123: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_123'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_124: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_124'})
SET doc.domain = 'SW';

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 217개
// 관계: 436개
// ================================================================