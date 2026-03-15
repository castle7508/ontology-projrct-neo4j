// ================================================================
// SW 도메인 (SW_001 ~ SW_007) -- 온톨로지 Cypher
// 도메인: SW (소프트웨어공학)
// 포함관계: SDLC 모델, 개발방법론, 소프트웨어 품질특성
// ================================================================

// ──────────────────────────────────────
// SW_001.1: 소프트웨어 공학 개요
// ──────────────────────────────────────

// --- Concept 노드 ---

MERGE (c:Concept {id: 'software_engineering'})
SET c.name = 'Software Engineering',
    c.name_kr = '소프트웨어 공학',
    c.domain = 'SW',
    c.definition = '소프트웨어 위기 극복을 위해 공학적 접근, 표준화, 자동화 도구, 품질보증체제를 적용하여 좋은 품질과 생산성 향상을 목표로 하는 학문.',
    c.aliases = ['SW Engineering', 'SE'],
    c.importance = 'high';

MERGE (c:Concept {id: 'software_crisis'})
SET c.name = 'Software Crisis',
    c.name_kr = '소프트웨어 위기',
    c.domain = 'SW',
    c.definition = '시스템 대규모화에 따라 소프트웨어의 신뢰성 저하, 개발비 증대, 계획 지연 등의 현상이 현저히 발생하는 현상.';

MERGE (c:Concept {id: 'sdlc'})
SET c.name = 'Software Development Life Cycle',
    c.name_kr = '소프트웨어 개발 생명주기',
    c.domain = 'SW',
    c.definition = '소프트웨어 시스템이 개발, 운영, 유지보수되어 생명주기를 마칠 때까지의 전체적인 작업 프로세스를 모델화한 것.',
    c.aliases = ['SDLC', '생명주기'],
    c.importance = 'high';

// --- Metric 노드 (소프트웨어 품질 특성) ---

MERGE (m:Metric {id: 'sw_correctness'})
SET m.name = 'Correctness',
    m.name_kr = '정확성',
    m.domain = 'SW',
    m.definition = '기능적으로 맞게 동작하는가, 표준에 적합한가. 요구 분석서의 기능과 일치하는지 점검.';

MERGE (m:Metric {id: 'sw_reliability'})
SET m.name = 'Reliability',
    m.name_kr = '신뢰성',
    m.domain = 'SW',
    m.definition = '소프트웨어가 주어진 기간 동안 바르게 작동할 확률. 오류 발생 확률에 반비례.';

MERGE (m:Metric {id: 'sw_robustness'})
SET m.name = 'Robustness',
    m.name_kr = '강인성',
    m.domain = 'SW',
    m.definition = '요구 명세에 표시하지 않은 상황(오류 입력)에서도 제대로 작동하는 성질.';

MERGE (m:Metric {id: 'sw_performance'})
SET m.name = 'Performance',
    m.name_kr = '성능',
    m.domain = 'SW',
    m.definition = '수행 속도, 데이터/트랜잭션 처리량. 알고리즘의 시간 복잡도.';

MERGE (m:Metric {id: 'sw_usability'})
SET m.name = 'Usability',
    m.name_kr = '사용 용이성',
    m.domain = 'SW',
    m.definition = '시스템을 친근하게 느낄 수 있는 성질. 사용자 인터페이스, Human factor.';

MERGE (m:Metric {id: 'sw_maintainability'})
SET m.name = 'Maintainability',
    m.name_kr = '유지보수성',
    m.domain = 'SW',
    m.definition = '정해진 기간에 소프트웨어 결함을 해결할 수 있는 성질(보수성)과 잠재적 발전 가능성(진화성).';

MERGE (m:Metric {id: 'sw_reusability'})
SET m.name = 'Reusability',
    m.name_kr = '재사용성',
    m.domain = 'SW',
    m.definition = '소프트웨어 부품(라이브러리, 클래스 등)의 확장 가능성, 적응성, 이용 용이성.';

// --- Concept 노드 (소프트웨어 특성) ---

MERGE (c:Concept {id: 'sw_invisibility'})
SET c.name = 'Invisibility',
    c.name_kr = '비가시성',
    c.domain = 'SW',
    c.definition = '소프트웨어의 생산물 구조가 외부에 노출되지 않고 코드에 내재되어 있음.';

MERGE (c:Concept {id: 'sw_complexity'})
SET c.name = 'Complexity',
    c.name_kr = '복잡성',
    c.domain = 'SW',
    c.definition = '정형적 구조가 없어 개발과정이 복잡하고 전산화 대상 업무, 소프트웨어 시스템 자체가 난해함.';

MERGE (c:Concept {id: 'sw_changeability'})
SET c.name = 'Changeability',
    c.name_kr = '유연성',
    c.domain = 'SW',
    c.definition = '필요에 따라 항상 수정이 가능(진화성). 요구나 환경의 변화에 따라 적절히 변경.';

// --- Standard 노드 ---

MERGE (s:Standard {id: 'cmm'})
SET s.name = 'Capability Maturity Model',
    s.name_kr = 'CMM',
    s.domain = 'SW',
    s.definition = '소프트웨어 프로세스의 성숙도를 평가하는 모델.',
    s.aliases = ['CMM'];

// ──────────────────────────────────────
// SW_001.2: 소프트웨어 2.0
// ──────────────────────────────────────

MERGE (c:Concept {id: 'software_2_0'})
SET c.name = 'Software 2.0',
    c.name_kr = '소프트웨어 2.0',
    c.domain = 'SW',
    c.definition = '데이터를 입력 받은 신경망이 학습을 통해 스스로 최적화와 논리 구성을 수행하여 프로그램을 실행하는 소프트웨어. 귀납적(Bottom-Up) 방식.',
    c.aliases = ['SW 2.0'];

MERGE (c:Concept {id: 'software_1_0'})
SET c.name = 'Software 1.0',
    c.name_kr = '소프트웨어 1.0',
    c.domain = 'SW',
    c.definition = '인간이 논리와 조건을 주면 이를 기반으로 인간이 코딩하고 결과를 도출하는 전통적 소프트웨어. 연역적(Top-Down) 방식.',
    c.aliases = ['SW 1.0'];

MERGE (t:Technology {id: 'mlops'})
SET t.name = 'MLOps',
    t.name_kr = 'MLOps',
    t.category = 'platform',
    t.domain = 'SW',
    t.definition = '맞춤형 AI 모델 개발과 운영서비스 제공. 다양한 학습모델 생성, 배포, 자동화, 관리 등 지원.';

MERGE (t:Technology {id: 'devops'})
SET t.name = 'DevOps',
    t.name_kr = 'DevOps',
    t.category = 'platform',
    t.domain = 'SW',
    t.definition = '개발과 운영을 통합한 소프트웨어 개발 및 배포 방법론.';

// ──────────────────────────────────────
// SW_002: 폭포수 모델
// ──────────────────────────────────────

MERGE (c:Concept {id: 'waterfall_model'})
SET c.name = 'Waterfall Model',
    c.name_kr = '폭포수 모델',
    c.domain = 'SW',
    c.definition = '분석, 설계, 개발, 구현, 시험 및 유지보수 과정을 단계별로 구분하여 순차적으로 접근하는 방법. 산출물 중심 단계별 테스팅, Frozen Delivery 강조.',
    c.aliases = ['Waterfall', '폭포수'],
    c.importance = 'high';

// ──────────────────────────────────────
// SW_003: 프로토타입 모델
// ──────────────────────────────────────

MERGE (c:Concept {id: 'prototyping_model'})
SET c.name = 'Prototyping Model',
    c.name_kr = '프로토타이핑 모델',
    c.domain = 'SW',
    c.definition = '짧은 시간 내에 시제품을 개발하여 사용자가 요구사항을 미리 확인하고, 기술적 문제의 해결가능성을 미리 확인할 수 있도록 한 점진적 개발모델.',
    c.aliases = ['Prototyping', '프로토타입 모델'];

// ──────────────────────────────────────
// SW_004: 나선형(Spiral) 모델
// ──────────────────────────────────────

MERGE (c:Concept {id: 'spiral_model'})
SET c.name = 'Spiral Model',
    c.name_kr = '나선형 모델',
    c.domain = 'SW',
    c.definition = '시스템 개발 중 생기는 위험을 최소화하기 위해 나선을 돌면서 점진적으로 개발하는 모델. 폭포수 모델의 체계적인 측면과 프로토타이핑 모델의 반복적인 특성을 결합하고 위험분석 추가.',
    c.aliases = ['Spiral', '나선형'];

// 나선형 모델 4단계

MERGE (c:Concept {id: 'spiral_planning'})
SET c.name = 'Planning and Definition',
    c.name_kr = '계획 및 정의 단계',
    c.domain = 'SW',
    c.definition = '초기 요구분석 및 프로젝트 계획 수립. 프로젝트 위험 식별 및 상세 관리 계획 수립.';

MERGE (c:Concept {id: 'spiral_risk_analysis'})
SET c.name = 'Risk Analysis',
    c.name_kr = '위험분석 단계',
    c.domain = 'SW',
    c.definition = '위험을 분석, 평가하여 감소시키는 활동. 식별된 위험의 종류에 따라 상세 분류 수행.';

MERGE (c:Concept {id: 'spiral_engineering'})
SET c.name = 'Engineering',
    c.name_kr = '개발 단계',
    c.domain = 'SW',
    c.definition = '시스템의 각 특성에 맞는 개발 모델 선택. 선택한 기능의 개발 및 검증 생산.';

MERGE (c:Concept {id: 'spiral_customer_eval'})
SET c.name = 'Customer Evaluation',
    c.name_kr = '고객평가 단계',
    c.domain = 'SW',
    c.definition = '프로젝트가 검토되고 나선에 대한 추가 반복 수행 여부를 결정. 다음 단계를 위한 계획 수립.';

// ──────────────────────────────────────
// SW_005: 반복적 개발 모델
// ──────────────────────────────────────

MERGE (c:Concept {id: 'iterative_model'})
SET c.name = 'Iterative Model',
    c.name_kr = '반복적 개발 모델',
    c.domain = 'SW',
    c.definition = '사용자의 요구사항이나 개발범위를 분해하여 점증적으로 반복 개발하여 최종시스템으로 완성하는 개발 모델.',
    c.aliases = ['Iteration Model', '반복적 개발'];

MERGE (c:Concept {id: 'incremental_model'})
SET c.name = 'Incremental Model',
    c.name_kr = '증분형 모델',
    c.domain = 'SW',
    c.definition = '요구사항의 일부분을 반복적으로 개발하며 대상범위를 확대해 최종제품을 완성함. 요구사항이 명확한 경우 병행 개발로 기간 단축.';

MERGE (c:Concept {id: 'evolutionary_model'})
SET c.name = 'Evolutionary Model',
    c.name_kr = '진화형 모델',
    c.domain = 'SW',
    c.definition = '시스템의 프로토타입을 개발하면서 지속적으로 발전시켜 나가는 방법. 사전에 요구사항 정의가 어려운 경우에 적합.';

// ──────────────────────────────────────
// SW_006.1: RAD (Rapid Application Development)
// ──────────────────────────────────────

MERGE (c:Concept {id: 'rad'})
SET c.name = 'Rapid Application Development',
    c.name_kr = 'RAD',
    c.domain = 'SW',
    c.definition = '2~3개월의 짧은 개발주기 동안 소프트웨어를 개발하기 위한 순차적인 프로세스 모델. 빠른 개발을 위해 개발 툴을 적극적으로 사용.',
    c.aliases = ['RAD'];

MERGE (c:Concept {id: 'jrp'})
SET c.name = 'Joint Requirement Planning',
    c.name_kr = 'JRP',
    c.domain = 'SW',
    c.definition = '사용자와 함께 요구사항을 분석하고 계획 수립. 1~3주간 비즈니스, 데이터, 프로세스 모델링 작성/검토.',
    c.aliases = ['JRP'];

MERGE (c:Concept {id: 'jad'})
SET c.name = 'Joint Application Development',
    c.name_kr = 'JAD',
    c.domain = 'SW',
    c.definition = '개략적 모델링 후 사용자와 함께 프로토타입 개발/수정/보완 반복을 통한 시스템 설계. 3~5주 수행.',
    c.aliases = ['JAD'];

MERGE (t:Technology {id: 'case_tool'})
SET t.name = 'CASE Tool',
    t.name_kr = 'CASE 도구',
    t.category = 'tool',
    t.domain = 'SW',
    t.definition = 'Computer Aided SW Engineering. SW 개발 관련 작업을 자동화, 보조하는 도구.',
    t.aliases = ['CASE'];

// ──────────────────────────────────────
// SW_006.2: Cleanroom Software Engineering
// ──────────────────────────────────────

MERGE (c:Concept {id: 'cleanroom_engineering'})
SET c.name = 'Cleanroom Software Engineering',
    c.name_kr = '클린룸 소프트웨어 공학',
    c.domain = 'SW',
    c.definition = '시스템의 핵심이 되는 부분을 프로토타입 모형으로 개발하고 계속 증대해나가는 IBM사에서 만든 소프트웨어 개발 모델. 정형명세, 통계적사용 테스팅, 박스구조 명세 활용.',
    c.aliases = ['Cleanroom'];

// 박스 구조

MERGE (c:Concept {id: 'black_box_spec'})
SET c.name = 'Black Box Specification',
    c.name_kr = '블랙박스 명세',
    c.domain = 'SW',
    c.definition = '명세적 입력으로부터 출력을 얻기 위한 기능을 추상적으로 표현. 사용자 관점, 시스템 행위 명시, 이벤트 반응 매핑.';

MERGE (c:Concept {id: 'state_box_spec'})
SET c.name = 'State Box Specification',
    c.name_kr = '상태박스 명세',
    c.domain = 'SW',
    c.definition = '상태 데이터와 서비스 연산을 캡슐화, 처리과정 은닉. 블랙박스에서 기술한 입출력과 매칭 필요.';

MERGE (c:Concept {id: 'clear_box_spec'})
SET c.name = 'Clear Box Specification',
    c.name_kr = '클리어박스 명세',
    c.domain = 'SW',
    c.definition = '상태박스 상세, 전이기능 정의, 절차 설계 포함. 내부 블랙박스간 제어 흐름 및 시간적 의존 관계를 자세히 기술.';

// Cleanroom 방법

MERGE (me:Method {id: 'formal_specification'})
SET me.name = 'Formal Specification',
    me.name_kr = '정형명세',
    me.category = 'technique',
    me.domain = 'SW',
    me.definition = '명확한 요구사항을 수집, 분석을 위해 정형 명세화하는 기법.';

MERGE (me:Method {id: 'statistical_usage_testing'})
SET me.name = 'Statistical Usage Testing',
    me.name_kr = '통계적사용 테스팅',
    me.category = 'testing',
    me.domain = 'SW',
    me.definition = '소프트웨어 사용법을 예측/분석 후 확률 분포를 조사하여 테스트 케이스를 계획하고 설계 및 테스트하는 기법.';

// ──────────────────────────────────────
// SW_006.3: RUP (Rational Unified Process)
// ──────────────────────────────────────

MERGE (c:Concept {id: 'rup'})
SET c.name = 'Rational Unified Process',
    c.name_kr = 'RUP',
    c.domain = 'SW',
    c.definition = '2003년에 IBM에서 발표한 다양한 유형의 소프트웨어 시스템, 도메인, 조직의 통합 프로세스를 위한 반복적/점진적 소프트웨어 개발 모델.',
    c.aliases = ['RUP'],
    c.importance = 'high';

// RUP 4단계

MERGE (c:Concept {id: 'rup_inception'})
SET c.name = 'Inception Phase',
    c.name_kr = '인식 단계',
    c.domain = 'SW',
    c.definition = '시스템의 최종 목표와 업무사례규정 프로젝트 범위 정의. 요구사항의 전반적인 이해 및 개발 범위 규정.';

MERGE (c:Concept {id: 'rup_elaboration'})
SET c.name = 'Elaboration Phase',
    c.name_kr = '구체화 단계',
    c.domain = 'SW',
    c.definition = '활동과 자원에 대한 구체적인 계획 수립. 아키텍처 설계 및 구현.';

MERGE (c:Concept {id: 'rup_construction'})
SET c.name = 'Construction Phase',
    c.name_kr = '구축 단계',
    c.domain = 'SW',
    c.definition = '목표에 따른 시스템 구축 및 사용자 인도 준비.';

MERGE (c:Concept {id: 'rup_transition'})
SET c.name = 'Transition Phase',
    c.name_kr = '전이 단계',
    c.domain = 'SW',
    c.definition = '사용자에게 소프트웨어를 사용하게 한 뒤 발생한 문제점을 수정하는 단계.';

// ──────────────────────────────────────
// SW_007: SW 개발방법론
// ──────────────────────────────────────

MERGE (c:Concept {id: 'sw_development_methodology'})
SET c.name = 'SW Development Methodology',
    c.name_kr = 'SW 개발방법론',
    c.domain = 'SW',
    c.definition = '소프트웨어 개발에 관한 계획, 분석, 설계 및 구축에 관련 정형화된 방법과 절차, 도구 등이 공학적 기법으로 체계적으로 정리하여 표준화한 이론.',
    c.importance = 'high';

// 개발방법론 유형

MERGE (c:Concept {id: 'structured_methodology'})
SET c.name = 'Structured Methodology',
    c.name_kr = '구조적 방법론',
    c.domain = 'SW',
    c.definition = '정형화된 분석절차 적용. 프로세스 중심, 분할과 정복, 하향식 기능분해. 1970년대.',
    c.era = '1970s';

MERGE (c:Concept {id: 'information_engineering'})
SET c.name = 'Information Engineering Methodology',
    c.name_kr = '정보공학 방법론',
    c.domain = 'SW',
    c.definition = '기업의 전체/주요부분을 계획, 분석, 설계 및 구축에 정형화된 기법들을 상호 연관성 있게 통합, 적용. CASE 도구 등 공학적 접근. 데이터모델 중심. 1980년대.',
    c.era = '1980s';

MERGE (c:Concept {id: 'object_oriented_methodology'})
SET c.name = 'Object-Oriented Methodology',
    c.name_kr = '객체지향 방법론',
    c.domain = 'SW',
    c.definition = '분석, 설계 과정의 전 단계를 객체 중심으로 진행. 캡슐화, 추상화, 다형성, 정보은닉, 상속 적용. 1990년대.',
    c.era = '1990s';

MERGE (c:Concept {id: 'cbd_methodology'})
SET c.name = 'Component Based Development',
    c.name_kr = 'CBD 방법론',
    c.domain = 'SW',
    c.definition = '개발된 S/W 컴포넌트를 조립하여 시스템 개발. 도메인별 컴포넌트 개발, 컴포넌트 기반 개발 진행. Black Box Reuse 지향. 2000년대.',
    c.aliases = ['CBD'],
    c.era = '2000s';

MERGE (c:Concept {id: 'sspl_methodology'})
SET c.name = 'Software & System Product Line',
    c.name_kr = 'SSPL 방법론',
    c.domain = 'SW',
    c.definition = '핵심자산 재사용, 가변요소 선택개발. 자산베이스를 통한 개발로 대량고객 맞춤화, 제품 개량 수행.',
    c.aliases = ['SSPL', 'Software Product Line', 'SPL'];

MERGE (c:Concept {id: 'agile_methodology'})
SET c.name = 'Agile Methodology',
    c.name_kr = '애자일 방법론',
    c.domain = 'SW',
    c.definition = '변화에 대한 민첩한 대응, 고객과의 협력 중시. 핵심 기능의 단계별 고객 전달, 요구사항 변경 적극 수용.',
    c.aliases = ['Agile'],
    c.importance = 'high';

// 프로그래밍 패러다임

MERGE (c:Concept {id: 'procedure_oriented_programming'})
SET c.name = 'Procedure Oriented Programming',
    c.name_kr = '절차지향 프로그래밍',
    c.domain = 'SW',
    c.definition = '프로시저 호출의 개념을 바탕으로 하는 구조적 프로그래밍. Top-Down 방식, 프로세스 지향 설계.';

MERGE (c:Concept {id: 'object_oriented_programming'})
SET c.name = 'Object Oriented Programming',
    c.name_kr = '객체지향 프로그래밍',
    c.domain = 'SW',
    c.definition = '현실 세계의 개체(Entity)를 Attribute와 Method가 결합된 객체(Object)로 모델링하여 Software를 개발하는 방법. Bottom-Up 방식.',
    c.aliases = ['OOP'];

// 테일러링

MERGE (c:Concept {id: 'methodology_tailoring'})
SET c.name = 'Methodology Tailoring',
    c.name_kr = '방법론 테일러링',
    c.domain = 'SW',
    c.definition = '프로젝트 도입 시 현장 특성을 충분히 고려하여 최적화된 개발방법론을 도입하기 위해 방법론을 조정하는 것.';

// --- Technology 노드 (분석/설계 도구) ---

MERGE (t:Technology {id: 'dfd'})
SET t.name = 'Data Flow Diagram',
    t.name_kr = 'DFD',
    t.category = 'modeling',
    t.domain = 'SW',
    t.definition = '기능/시스템환경/데이터를 종합하여 데이터 흐름을 도식화하는 구조적 분석 도구.',
    t.aliases = ['DFD'];

MERGE (t:Technology {id: 'erd'})
SET t.name = 'Entity Relationship Diagram',
    t.name_kr = 'ERD',
    t.category = 'modeling',
    t.domain = 'SW',
    t.definition = '데이터 모델링을 위한 개체-관계 다이어그램.',
    t.aliases = ['ERD'];

MERGE (t:Technology {id: 'uml'})
SET t.name = 'Unified Modeling Language',
    t.name_kr = 'UML',
    t.category = 'modeling',
    t.domain = 'SW',
    t.definition = '객체지향 소프트웨어 시스템의 표준 모델링 언어. Use Case, Class, Sequence 다이어그램 등 포함.',
    t.aliases = ['UML'];

// --- Method 노드 ---

MERGE (me:Method {id: 'function_point'})
SET me.name = 'Function Point',
    me.name_kr = '기능점수',
    me.category = 'estimation',
    me.domain = 'SW',
    me.definition = '소프트웨어의 무형성을 유형화하기 위한 소프트웨어 규모 측정 기법.',
    me.aliases = ['FP'];

// ================================================================
// 관계 정의
// ================================================================

// ──────────────────────────────────────
// SW_001.1 관계: 소프트웨어 공학
// ──────────────────────────────────────

// 소프트웨어 위기 -> 소프트웨어 공학 탄생 계기
MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Concept {id: 'software_crisis'})
MERGE (a)-[:DEPENDS_ON {description: '소프트웨어 위기 극복을 위해 탄생'}]->(b);

// 소프트웨어 특성 -> 소프트웨어 공학
MERGE (a:Concept {id: 'sw_invisibility'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:BELONGS_TO {description: 'SW 주요 특성'}]->(b);

MERGE (a:Concept {id: 'sw_complexity'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:BELONGS_TO {description: 'SW 주요 특성'}]->(b);

MERGE (a:Concept {id: 'sw_changeability'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:BELONGS_TO {description: 'SW 주요 특성'}]->(b);

// 품질 특성 -> 소프트웨어 공학
MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_correctness'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_reliability'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_robustness'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_performance'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_usability'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_maintainability'})
MERGE (a)-[:MEASURED_BY]->(b);

MERGE (a:Concept {id: 'software_engineering'})
MERGE (b:Metric {id: 'sw_reusability'})
MERGE (a)-[:MEASURED_BY]->(b);

// CMM -> 소프트웨어 공학
MERGE (a:Standard {id: 'cmm'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:DEFINED_BY]->(b);

// FP -> 소프트웨어 공학
MERGE (a:Method {id: 'function_point'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:IMPLEMENTS]->(b);

// SDLC -> 소프트웨어 공학
MERGE (a:Concept {id: 'sdlc'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// ──────────────────────────────────────
// SW_001.2 관계: 소프트웨어 2.0
// ──────────────────────────────────────

MERGE (a:Concept {id: 'software_2_0'})
MERGE (b:Concept {id: 'software_1_0'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['실행방식', '중심', '도구'],
    summary: 'SW 1.0은 연역적/모델플랫폼/DevOps, SW 2.0은 귀납적/데이터플랫폼/MLOps'
}]->(b);

MERGE (a:Concept {id: 'software_2_0'})
MERGE (b:Technology {id: 'mlops'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'software_1_0'})
MERGE (b:Technology {id: 'devops'})
MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// SW_002~005 관계: SDLC 모델 계층
// ──────────────────────────────────────

// SDLC 모델들은 SDLC의 하위
MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'prototyping_model'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'spiral_model'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'iterative_model'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'rad'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'rup'})
MERGE (b:Concept {id: 'sdlc'})
MERGE (a)-[:HAS_TYPE]->(b);

// 나선형 모델 4단계
MERGE (a:Concept {id: 'spiral_model'})
MERGE (b:Concept {id: 'spiral_planning'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'spiral_model'})
MERGE (b:Concept {id: 'spiral_risk_analysis'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'spiral_model'})
MERGE (b:Concept {id: 'spiral_engineering'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'spiral_model'})
MERGE (b:Concept {id: 'spiral_customer_eval'})
MERGE (a)-[:HAS_PHASE]->(b);

// RUP 4단계
MERGE (a:Concept {id: 'rup'})
MERGE (b:Concept {id: 'rup_inception'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'rup'})
MERGE (b:Concept {id: 'rup_elaboration'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'rup'})
MERGE (b:Concept {id: 'rup_construction'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'rup'})
MERGE (b:Concept {id: 'rup_transition'})
MERGE (a)-[:HAS_PHASE]->(b);

// 반복적 개발 모델 하위 유형
MERGE (a:Concept {id: 'incremental_model'})
MERGE (b:Concept {id: 'iterative_model'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'evolutionary_model'})
MERGE (b:Concept {id: 'iterative_model'})
MERGE (a)-[:HAS_TYPE]->(b);

// Cleanroom 구성요소
MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Concept {id: 'black_box_spec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Concept {id: 'state_box_spec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Concept {id: 'clear_box_spec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Method {id: 'formal_specification'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cleanroom_engineering'})
MERGE (b:Method {id: 'statistical_usage_testing'})
MERGE (a)-[:USES]->(b);

// RAD 구성요소
MERGE (a:Concept {id: 'rad'})
MERGE (b:Concept {id: 'jrp'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'rad'})
MERGE (b:Concept {id: 'jad'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'rad'})
MERGE (b:Technology {id: 'case_tool'})
MERGE (a)-[:USES]->(b);

// 모델 간 비교 관계
MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Concept {id: 'prototyping_model'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['특징', '적용유형'],
    summary: '폭포수는 순차적/산출물 명확/위험 낮은 프로젝트, 프로토타이핑은 시제품 기반/위험 높은 프로젝트'
}]->(b);

MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Concept {id: 'spiral_model'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['정의', '특징', '장단점', '적용범위'],
    summary: '폭포수는 순차적/소규모 적합, 나선형은 위험분석 추가/대규모 적합'
}]->(b);

MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Concept {id: 'agile_methodology'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['개발방식', '요구사항 대응', '테스팅 프로세스'],
    summary: '폭포수는 순차적/예측적, 애자일은 반복적/적응적'
}]->(b);

MERGE (a:Concept {id: 'incremental_model'})
MERGE (b:Concept {id: 'evolutionary_model'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['요구사항 명확도', '개발방식'],
    summary: '증분형은 요구사항 명확/병행개발, 진화형은 요구사항 불명확/N단계 진화'
}]->(b);

// ──────────────────────────────────────
// SW_007 관계: 개발방법론
// ──────────────────────────────────────

// 개발방법론 -> 소프트웨어 공학
MERGE (a:Concept {id: 'sw_development_methodology'})
MERGE (b:Concept {id: 'software_engineering'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// 개발방법론 유형들
MERGE (a:Concept {id: 'structured_methodology'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'information_engineering'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'object_oriented_methodology'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cbd_methodology'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'sspl_methodology'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'agile_methodology'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:HAS_TYPE]->(b);

// 테일러링 -> 개발방법론
MERGE (a:Concept {id: 'methodology_tailoring'})
MERGE (b:Concept {id: 'sw_development_methodology'})
MERGE (a)-[:DEPENDS_ON]->(b);

// 프로그래밍 패러다임 비교
MERGE (a:Concept {id: 'procedure_oriented_programming'})
MERGE (b:Concept {id: 'object_oriented_programming'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['설계방법', '접근방식', '재사용성', '유지보수성', '실행속도'],
    summary: '절차지향은 Top-Down/프로세스중심/빠른속도, 객체지향은 Bottom-Up/객체중심/유지보수용이'
}]->(b);

// 구조적 방법론 -> DFD 사용
MERGE (a:Concept {id: 'structured_methodology'})
MERGE (b:Technology {id: 'dfd'})
MERGE (a)-[:USES]->(b);

// 정보공학 방법론 -> ERD 사용
MERGE (a:Concept {id: 'information_engineering'})
MERGE (b:Technology {id: 'erd'})
MERGE (a)-[:USES]->(b);

// 객체지향 방법론 -> UML 사용
MERGE (a:Concept {id: 'object_oriented_methodology'})
MERGE (b:Technology {id: 'uml'})
MERGE (a)-[:USES]->(b);

// CBD 방법론 -> UML 사용
MERGE (a:Concept {id: 'cbd_methodology'})
MERGE (b:Technology {id: 'uml'})
MERGE (a)-[:USES]->(b);

// 객체지향 방법론 vs CBD vs 애자일 비교
MERGE (a:Concept {id: 'object_oriented_methodology'})
MERGE (b:Concept {id: 'cbd_methodology'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['개발패턴', '재사용성', '프로세스'],
    summary: '객체지향은 모든 프로그램 개발/White Box Reuse, CBD는 컴포넌트 결합/Black Box Reuse'
}]->(b);

MERGE (a:Concept {id: 'cbd_methodology'})
MERGE (b:Concept {id: 'agile_methodology'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['개발패턴', '특징', '프로세스'],
    summary: 'CBD는 컴포넌트 결합/재사용성, 애자일은 점진적 개발/가변적 요구대응'
}]->(b);

// 구조적 방법론 -> 절차지향
MERGE (a:Concept {id: 'structured_methodology'})
MERGE (b:Concept {id: 'procedure_oriented_programming'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 객체지향 방법론 -> 객체지향 프로그래밍
MERGE (a:Concept {id: 'object_oriented_methodology'})
MERGE (b:Concept {id: 'object_oriented_programming'})
MERGE (a)-[:IMPLEMENTS]->(b);

// ──────────────────────────────────────
// Domain 연결
// ──────────────────────────────────────

MERGE (d:Domain {id: 'SW'})
SET d.name = 'Software Engineering',
    d.name_kr = '소프트웨어공학';

MATCH (n) WHERE n.domain = 'SW' AND (n:Concept OR n:Technology OR n:Method OR n:Standard OR n:Metric)
MERGE (d:Domain {id: 'SW'})
MERGE (n)-[:BELONGS_TO]->(d);

// ──────────────────────────────────────
// Document 추적
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_001.1'})
SET doc.filename = 'SW_001.1_소프트웨어 공학.docx', doc.domain = 'SW', doc.format = 'docx';

MERGE (doc:Document {id: 'SW_001.2'})
SET doc.filename = 'SW_001.2_소프트웨어 2.0.doc', doc.domain = 'SW', doc.format = 'doc';

MERGE (doc:Document {id: 'SW_002'})
SET doc.filename = 'SW_002_폭포수모델.docx', doc.domain = 'SW', doc.format = 'docx';

MERGE (doc:Document {id: 'SW_003'})
SET doc.filename = 'SW_003_프로토타입모델.docx', doc.domain = 'SW', doc.format = 'docx';

MERGE (doc:Document {id: 'SW_004'})
SET doc.filename = 'SW_004_Spiral모델.doc', doc.domain = 'SW', doc.format = 'doc';

MERGE (doc:Document {id: 'SW_005'})
SET doc.filename = 'SW_005_반복적 개발 모델.doc', doc.domain = 'SW', doc.format = 'doc';

MERGE (doc:Document {id: 'SW_006.1'})
SET doc.filename = 'SW_006.1_RAD(락스).doc', doc.domain = 'SW', doc.format = 'doc';

MERGE (doc:Document {id: 'SW_006.2'})
SET doc.filename = 'SW_006.2_cleanroom_software_engineering.docx', doc.domain = 'SW', doc.format = 'docx';

MERGE (doc:Document {id: 'SW_006.3'})
SET doc.filename = 'SW_006.3_RUP.docx', doc.domain = 'SW', doc.format = 'docx';

MERGE (doc:Document {id: 'SW_007'})
SET doc.filename = 'SW_007_SW개발방법론.doc', doc.domain = 'SW', doc.format = 'doc';

// ──────────────────────────────────────
// MENTIONED_IN 관계 (문서별)
// ──────────────────────────────────────

// SW_001.1
MERGE (c:Concept {id: 'software_engineering'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'software_crisis'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'sw_invisibility'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'sw_complexity'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'sw_changeability'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (s:Standard {id: 'cmm'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (s)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'function_point'}) MERGE (doc:Document {id: 'SW_001.1'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// SW_001.2
MERGE (c:Concept {id: 'software_2_0'}) MERGE (doc:Document {id: 'SW_001.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'software_1_0'}) MERGE (doc:Document {id: 'SW_001.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'mlops'}) MERGE (doc:Document {id: 'SW_001.2'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'devops'}) MERGE (doc:Document {id: 'SW_001.2'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SW_002
MERGE (c:Concept {id: 'waterfall_model'}) MERGE (doc:Document {id: 'SW_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'sdlc'}) MERGE (doc:Document {id: 'SW_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SW_003
MERGE (c:Concept {id: 'prototyping_model'}) MERGE (doc:Document {id: 'SW_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SW_004
MERGE (c:Concept {id: 'spiral_model'}) MERGE (doc:Document {id: 'SW_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'spiral_planning'}) MERGE (doc:Document {id: 'SW_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'spiral_risk_analysis'}) MERGE (doc:Document {id: 'SW_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'spiral_engineering'}) MERGE (doc:Document {id: 'SW_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'spiral_customer_eval'}) MERGE (doc:Document {id: 'SW_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SW_005
MERGE (c:Concept {id: 'iterative_model'}) MERGE (doc:Document {id: 'SW_005'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'incremental_model'}) MERGE (doc:Document {id: 'SW_005'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'evolutionary_model'}) MERGE (doc:Document {id: 'SW_005'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SW_006.1
MERGE (c:Concept {id: 'rad'}) MERGE (doc:Document {id: 'SW_006.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'jrp'}) MERGE (doc:Document {id: 'SW_006.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'jad'}) MERGE (doc:Document {id: 'SW_006.1'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'case_tool'}) MERGE (doc:Document {id: 'SW_006.1'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SW_006.2
MERGE (c:Concept {id: 'cleanroom_engineering'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'black_box_spec'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'state_box_spec'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'clear_box_spec'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'formal_specification'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (m)-[:MENTIONED_IN]->(doc);
MERGE (m:Method {id: 'statistical_usage_testing'}) MERGE (doc:Document {id: 'SW_006.2'}) MERGE (m)-[:MENTIONED_IN]->(doc);

// SW_006.3
MERGE (c:Concept {id: 'rup'}) MERGE (doc:Document {id: 'SW_006.3'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'rup_inception'}) MERGE (doc:Document {id: 'SW_006.3'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'rup_elaboration'}) MERGE (doc:Document {id: 'SW_006.3'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'rup_construction'}) MERGE (doc:Document {id: 'SW_006.3'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'rup_transition'}) MERGE (doc:Document {id: 'SW_006.3'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SW_007
MERGE (c:Concept {id: 'sw_development_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'structured_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'information_engineering'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'object_oriented_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'cbd_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'sspl_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'agile_methodology'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'procedure_oriented_programming'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'object_oriented_programming'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'methodology_tailoring'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'dfd'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'erd'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'uml'}) MERGE (doc:Document {id: 'SW_007'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// ================================================================
// SW 도메인 완료
// 노드: Concept 37개, Technology 7개, Method 3개, Standard 1개,
//       Metric 7개, Document 10개, Domain 1개 = 총 66개
// 관계: SUBCLASS_OF 2개, HAS_TYPE 15개, HAS_PHASE 10개,
//       HAS_COMPONENT 3개, COMPARED_WITH 7개, DEPENDS_ON 2개,
//       MEASURED_BY 7개, DEFINED_BY 1개, IMPLEMENTS 4개,
//       USES 7개, BELONGS_TO 3+N개(동적),
//       MENTIONED_IN 43개
// ================================================================
