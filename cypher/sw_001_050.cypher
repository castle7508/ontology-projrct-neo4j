// ================================================================
// SW 도메인 (SW_001 ~ SW_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_001.1: 소프트웨어 공학
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_001.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '소프트웨어_공학'})
SET     n.name = '소프트웨어 공학',
    n.name_kr = '소프트웨어 공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: 'invisibility'})
SET     n.name = '비가시성',
    n.name_kr = '비가시성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'complexity'})
SET     n.name = '복잡성',
    n.name_kr = '복잡성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'changeability'})
SET     n.name = '유연성',
    n.name_kr = '유연성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'intangible'})
SET     n.name = '무형',
    n.name_kr = '무형',
    n.domain = 'SW';

MERGE (n:Concept {id: 'longevity'})
SET     n.name = '장수',
    n.name_kr = '장수',
    n.domain = 'SW';

MERGE (n:Concept {id: '복제가능성'})
SET     n.name = '복제가능성',
    n.name_kr = '복제가능성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'method'})
SET     n.name = '방법',
    n.name_kr = '방법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'tool'})
SET     n.name = '도구',
    n.name_kr = '도구',
    n.domain = 'SW';

MERGE (n:Concept {id: 'process'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'paradigm'})
SET     n.name = '패러다임',
    n.name_kr = '패러다임',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질'})
SET     n.name = '품질',
    n.name_kr = '품질',
    n.domain = 'SW';

MERGE (n:Concept {id: 'productivity'})
SET     n.name = '생산성',
    n.name_kr = '생산성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'duplicability'})
SET     n.name = 'Duplicability',
    n.name_kr = '복제 가능',
    n.domain = 'SW',
    n.definition = '소프트웨어는 간단하고 쉬운 방법으로 복제 가능, 다양한 경로와 노력으로 복제가 가능',
    n.aliases = ['Duplicability', '복제 가능'];

MERGE (n:Metric {id: '프로젝트의_성격'})
SET     n.name = '프로젝트의 성격',
    n.name_kr = '프로젝트의 성격',
    n.domain = 'SW',
    n.definition = '응용분야에 따라 성격이 달라짐 (자료처리 중심, 제어 중심, 시스템 소프트웨어, 인공지능) 크기, 복잡도 (소규모, 중규모, 대규모, 초대규모)';

MERGE (n:Concept {id: 'maturity'})
SET     n.name = 'Maturity',
    n.name_kr = '프로그래머의 역량',
    n.domain = 'SW',
    n.definition = '(미숙한 프로그래머가 작성한 모듈은) 전체 품질이나 일정에 영향 프로그래머의 능력(프로그래밍, 커뮤니케이션, 응용분야에 대한 이해, 프로세스/도구에 대한 이해와 경험) 소프트웨어 공학의 체계적이고 조직적인 접근법을 통하여 일정 부분 상쇄가 가능',
    n.aliases = ['Maturity', '프로그래머의 역량'];

// --- 관계 ---

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'invisibility'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'complexity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'changeability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'intangible'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'longevity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: '복제가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'tool'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'paradigm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: '품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'productivity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'duplicability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Metric {id: '프로젝트의_성격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Concept {id: 'maturity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Document {id: 'SW_001.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소프트웨어_공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invisibility'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complexity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'changeability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intangible'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'longevity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복제가능성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tool'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'process'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paradigm'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'productivity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'duplicability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '프로젝트의_성격'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maturity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_001.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_001.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_002: 폭포수 모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_002'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '폭포수_모델'})
SET     n.name = '폭포수 모델',
    n.name_kr = '폭포수 모델',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw관리'})
SET     n.name = 'SW관리',
    n.name_kr = 'SW관리',
    n.domain = 'SW';

MERGE (n:Method {id: 'sdlc'})
SET     n.name = 'SDLC',
    n.name_kr = 'SDLC',
    n.domain = 'SW',
    n.aliases = ['SDLC'];

MERGE (n:Concept {id: 'waterfall_model'})
SET     n.name = '폭포수모델',
    n.name_kr = '폭포수모델',
    n.domain = 'SW';

MERGE (n:Concept {id: '순차적'})
SET     n.name = '순차적',
    n.name_kr = '순차적',
    n.domain = 'SW';

MERGE (n:Concept {id: '산출물중심'})
SET     n.name = '산출물중심',
    n.name_kr = '산출물중심',
    n.domain = 'SW';

MERGE (n:Concept {id: '단계적_테스팅'})
SET     n.name = '단계적 테스팅',
    n.name_kr = '단계적 테스팅',
    n.domain = 'SW';

MERGE (n:Concept {id: '고전적_모델'})
SET     n.name = '고전적 모델',
    n.name_kr = '고전적 모델',
    n.domain = 'SW';

MERGE (n:Concept {id: '체계적_문서화'})
SET     n.name = '체계적 문서화',
    n.name_kr = '체계적 문서화',
    n.domain = 'SW',
    n.definition = '단계별 정형화된 접근법으로 체계적 문서화 가능';

MERGE (n:Concept {id: '변화가_적은_프로젝트'})
SET     n.name = '변화가 적은 프로젝트',
    n.name_kr = '변화가 적은 프로젝트',
    n.domain = 'SW',
    n.definition = '요구사항 변화가 적은 프로젝트에 적합 - 비교적 소규모 프로젝트 개발에 유리';

MERGE (n:Concept {id: '오류/변경에_취약'})
SET     n.name = '오류/변경에 취약',
    n.name_kr = '오류/변경에 취약',
    n.domain = 'SW',
    n.definition = '단계 결과물이 완벽하지 않으면 다음 단계에 오류가 전파, 요구사항 변경시 전체일정에 부담';

MERGE (n:Concept {id: '프로토타이핑_모델'})
SET     n.name = '프로토타이핑 모델',
    n.name_kr = '프로토타이핑 모델',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Concept {id: 'sw관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Method {id: 'sdlc'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '순차적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '산출물중심'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '단계적_테스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '고전적_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '체계적_문서화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '변화가_적은_프로젝트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '오류/변경에_취약'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '프로토타이핑_모델'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '프로토타이핑_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Document {id: 'SW_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'waterfall_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순차적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물중심'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계적_테스팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고전적_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체계적_문서화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화가_적은_프로젝트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류/변경에_취약'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토타이핑_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_003: 프로토타입 모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_003'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '프로토타입_모델'})
SET     n.name = '프로토타입 모델',
    n.name_kr = '프로토타입 모델',
    n.domain = 'SW';

MERGE (n:Method {id: 'sdlc'})
SET     n.name = 'SDLC',
    n.name_kr = 'SDLC',
    n.domain = 'SW',
    n.aliases = ['SDLC'];

MERGE (n:Concept {id: '시제품'})
SET     n.name = '시제품',
    n.name_kr = '시제품',
    n.domain = 'SW';

MERGE (n:Concept {id: '의사소통'})
SET     n.name = '의사소통',
    n.name_kr = '의사소통',
    n.domain = 'SW';

MERGE (n:Concept {id: '실험적_프로토타입'})
SET     n.name = '실험적 프로토타입',
    n.name_kr = '실험적 프로토타입',
    n.domain = 'SW';

MERGE (n:Concept {id: '진화적_프로토타입'})
SET     n.name = '진화적 프로토타입',
    n.name_kr = '진화적 프로토타입',
    n.domain = 'SW';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SW';

MERGE (n:Concept {id: '극복방안'})
SET     n.name = '극복방안',
    n.name_kr = '극복방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '폭포수_모델'})
SET     n.name = '폭포수 모델',
    n.name_kr = '폭포수 모델',
    n.domain = 'SW';

MERGE (n:Concept {id: '프로토타이핑_모델'})
SET     n.name = '프로토타이핑 모델',
    n.name_kr = '프로토타이핑 모델',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Method {id: 'sdlc'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '시제품'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '의사소통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '실험적_프로토타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '진화적_프로토타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '극복방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '극복방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Concept {id: '프로토타이핑_모델'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '폭포수_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Concept {id: '프로토타이핑_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Document {id: 'SW_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로토타입_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시제품'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사소통'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실험적_프로토타입'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진화적_프로토타입'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '극복방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '폭포수_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토타이핑_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_004: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_004'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_005: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_005'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_006.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_006.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_006.2: Cleanroom software engineering
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_006.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'cleanroom_software_engineering'})
SET     n.name = 'Cleanroom software engineering',
    n.name_kr = 'Cleanroom software engineering',
    n.domain = 'SW',
    n.aliases = ['Cleanroom software engineering'];

MERGE (n:Concept {id: '개발모델'})
SET     n.name = '개발모델',
    n.name_kr = '개발모델',
    n.domain = 'SW';

MERGE (n:Concept {id: '정형명세'})
SET     n.name = '정형명세',
    n.name_kr = '정형명세',
    n.domain = 'SW';

MERGE (n:Concept {id: '통계적사용_테스팅'})
SET     n.name = '통계적사용 테스팅',
    n.name_kr = '통계적사용 테스팅',
    n.domain = 'SW';

MERGE (n:Concept {id: '박스구조_명세(블랙박스'})
SET     n.name = '박스구조 명세(블랙박스',
    n.name_kr = '박스구조 명세(블랙박스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'state_box'})
SET     n.name = '상태박스',
    n.name_kr = '상태박스',
    n.domain = 'SW';

MERGE (n:Concept {id: '클리어박스)'})
SET     n.name = '클리어박스)',
    n.name_kr = '클리어박스)',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: '개발모델'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: '정형명세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: '통계적사용_테스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: '박스구조_명세(블랙박스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: 'state_box'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Concept {id: '클리어박스)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Document {id: 'SW_006.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cleanroom_software_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정형명세'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계적사용_테스팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '박스구조_명세(블랙박스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'state_box'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클리어박스)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_006.3: Rational Unified Process(RUP)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_006.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Metric {id: 'rup'})
SET     n.name = 'RUP',
    n.name_kr = 'Rational Unified Process',
    n.domain = 'SW',
    n.aliases = ['RUP', 'Rational Unified Process'];

MERGE (n:Concept {id: '개발모델'})
SET     n.name = '개발모델',
    n.name_kr = '개발모델',
    n.domain = 'SW';

MERGE (n:Metric {id: 'rational_unified_process'})
SET     n.name = 'Rational Unified Process',
    n.name_kr = 'Rational Unified Process',
    n.domain = 'SW',
    n.aliases = ['Rational Unified Process'];

MERGE (n:Concept {id: '반복적'})
SET     n.name = '반복적',
    n.name_kr = '반복적',
    n.domain = 'SW';

MERGE (n:Concept {id: '점진적'})
SET     n.name = '점진적',
    n.name_kr = '점진적',
    n.domain = 'SW';

MERGE (n:Concept {id: 'inception'})
SET     n.name = '인식 단계',
    n.name_kr = '인식 단계',
    n.domain = 'SW';

MERGE (n:Concept {id: 'elaboration'})
SET     n.name = '구체화 단계',
    n.name_kr = '구체화 단계',
    n.domain = 'SW';

MERGE (n:Concept {id: 'construction'})
SET     n.name = '구축 단계',
    n.name_kr = '구축 단계',
    n.domain = 'SW';

MERGE (n:Concept {id: 'transition'})
SET     n.name = '전이 단계',
    n.name_kr = '전이 단계',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Metric {id: 'rational_unified_process'})
MERGE (b:Concept {id: '개발모델'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: '반복적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: '점진적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: 'inception'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: 'elaboration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: 'construction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Concept {id: 'transition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Document {id: 'SW_006.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'rup'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'rational_unified_process'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반복적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점진적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inception'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'elaboration'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'construction'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_007'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_008: 구조적 개발방법론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_008'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '구조적_개발방법론'})
SET     n.name = '구조적 개발방법론',
    n.name_kr = '구조적 개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구사항_분석'})
SET     n.name = '요구사항 분석',
    n.name_kr = '요구사항 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: '구조적_분석'})
SET     n.name = '구조적 분석',
    n.name_kr = '구조적 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: '구조적_설계'})
SET     n.name = '구조적 설계',
    n.name_kr = '구조적 설계',
    n.domain = 'SW';

MERGE (n:Concept {id: '구조적_방법론'})
SET     n.name = '구조적 방법론',
    n.name_kr = '구조적 방법론',
    n.domain = 'SW';

MERGE (n:Method {id: 'agile_방법론'})
SET     n.name = 'Agile 방법론',
    n.name_kr = 'Agile 방법론',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Concept {id: '요구사항_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Concept {id: '구조적_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Concept {id: '구조적_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Method {id: 'agile_방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Concept {id: '구조적_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Method {id: 'agile_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Document {id: 'SW_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '구조적_개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_009: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_009'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_010: 객체지향 프로그래밍 특징(캡슐화, 추상화, 다형성, 정보은닉, 상속성)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_010'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '객체지향_프로그래밍_특징'})
SET     n.name = '객체지향 프로그래밍 특징(캡슐화, 추상화, 다형성, 정보은닉, 상속성)',
    n.name_kr = '객체지향 프로그래밍 특징(캡슐화, 추상화, 다형성, 정보은닉, 상속성)',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '캡추다정상'})
SET     n.name = '캡추다정상',
    n.name_kr = '캡추다정상',
    n.domain = 'SW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SW';

MERGE (n:Concept {id: '독립성_확보'})
SET     n.name = '독립성 확보',
    n.name_kr = '독립성 확보',
    n.domain = 'SW',
    n.definition = '객체내 정보 손상, 오용 방지하고, 데이터 변경 시 다른 객체에 영향 최소화';

MERGE (n:Concept {id: '재사용성_증가'})
SET     n.name = '재사용성 증가',
    n.name_kr = '재사용성 증가',
    n.domain = 'SW',
    n.definition = '객체 모듈화 통한 새로운 시스템 내 모듈처럼 사용 가능';

MERGE (n:Concept {id: 'access_modifier'})
SET     n.name = '접근 제어자',
    n.name_kr = '접근 제어자',
    n.domain = 'SW',
    n.definition = 'Class';

MERGE (n:Concept {id: 'public'})
SET     n.name = 'Public',
    n.name_kr = 'Public',
    n.domain = 'SW',
    n.definition = '다른 패키지에서 인스턴스(객체)를 생성 가능',
    n.aliases = ['Public'];

MERGE (n:Concept {id: 'method'})
SET     n.name = 'Method',
    n.name_kr = 'Method',
    n.domain = 'SW',
    n.definition = 'Private',
    n.aliases = ['Method'];

MERGE (n:Concept {id: 'protected'})
SET     n.name = 'Protected',
    n.name_kr = 'Protected',
    n.domain = 'SW',
    n.definition = '동일 패키지 내 사용 가능, 다른 패키지인 경우 상속받은 클래스 접근 가능',
    n.aliases = ['Protected'];

MERGE (n:Concept {id: 'code'})
SET     n.name = 'Code',
    n.name_kr = 'Code',
    n.domain = 'SW',
    n.definition = 'public class Clock{ int hour; int minute; int second; public void display(){ //시간 출력 } }',
    n.aliases = ['Code'];

// --- 관계 ---

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: '캡추다정상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: '독립성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: '재사용성_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: 'access_modifier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: 'public'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: 'method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: 'protected'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Concept {id: 'code'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Document {id: 'SW_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '객체지향_프로그래밍_특징'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캡추다정상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립성_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재사용성_증가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access_modifier'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'protected'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'code'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_016: 객체지향 설계의 원리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_016'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '객체지향_설계의_원리'})
SET     n.name = '객체지향 설계의 원리',
    n.name_kr = '객체지향 설계의 원리',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'solid'})
SET     n.name = 'SOLID',
    n.name_kr = 'SOLID',
    n.domain = 'SW',
    n.aliases = ['SOLID'];

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'SW';

MERGE (n:Concept {id: '예시_설명'})
SET     n.name = '예시 설명',
    n.name_kr = '예시 설명',
    n.domain = 'SW',
    n.definition = '(a)는 단일책임 원칙을 따르지 않은 클래스로 메서드가 DB관련 메서드들과 비즈니스 관련 메서드들로 구성되어 있음. - 단일책임의 원칙을 지키기 위해 (b)와 같이 각각의 책임을 갖는 두 개의 클래스로 분할';

MERGE (n:Concept {id: '중복된_코드'})
SET     n.name = '중복된 코드',
    n.name_kr = '중복된 코드',
    n.domain = 'SW',
    n.definition = '기능이나 데이터코드가 중복됨 - 리팩토링 : 중복을 제거';

MERGE (n:Concept {id: '긴_메소드'})
SET     n.name = '긴 메소드',
    n.name_kr = '긴 메소드',
    n.domain = 'SW',
    n.definition = '메소드의 내부가 너무 길다 - 리펙토링:메소드를 적정수준의 크기로 나눔';

MERGE (n:Concept {id: '큰_클래스'})
SET     n.name = '큰 클래스',
    n.name_kr = '큰 클래스',
    n.domain = 'SW',
    n.definition = '한 클래스에 너무 많은 속성과 메소드가 존재 - 리팩토링 :클래스의 몸집을 줄인다';

MERGE (n:Concept {id: '긴_파라미터_리스트'})
SET     n.name = '긴 파라미터 리스트',
    n.name_kr = '긴 파라미터 리스트',
    n.domain = 'SW',
    n.definition = '메소드의 파라미터 개수가 너무 많다 - 리팩토링:파라미터 개수를 줄인다.';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: 'solid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '예시_설명'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '중복된_코드'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '긴_메소드'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '큰_클래스'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Concept {id: '긴_파라미터_리스트'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Document {id: 'SW_016'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '객체지향_설계의_원리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'solid'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시_설명'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복된_코드'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긴_메소드'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '큰_클래스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긴_파라미터_리스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_017: 객체지향 개발방법론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_017'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '객체지향_개발방법론'})
SET     n.name = '객체지향 개발방법론',
    n.name_kr = '객체지향 개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '객동기시개구테'})
SET     n.name = '객동기시개구테',
    n.name_kr = '객동기시개구테',
    n.domain = 'SW';

MERGE (n:Concept {id: 'oose'})
SET     n.name = 'OOSE',
    n.name_kr = 'OOSE',
    n.domain = 'SW',
    n.definition = 'Object Oriented SW Engineering UseCase에 의한 접근 방법으로 UseCase를 모든 모델의 근간으로 활용',
    n.aliases = ['OOSE'];

MERGE (n:Concept {id: 'omt'})
SET     n.name = 'OMT',
    n.name_kr = 'OMT',
    n.domain = 'SW',
    n.definition = 'Object Modeling Technology 객체지향 분석, 시스템설계, 오브젝트설계 및 구현의 4단계로 구성 객체모델링 : 시스템의 정적 구조 표현 동적모델링 : 객체의 제어흐름, 상호반응 표현 기능모델링 : 데이터값의 변화 과정 표현',
    n.aliases = ['OMT'];

MERGE (n:Concept {id: 'booch'})
SET     n.name = 'Booch',
    n.name_kr = 'Booch',
    n.domain = 'SW',
    n.definition = 'OOD(Object Oriented Design)로 Design 부분만 존재 설계 문서화를 강조하여 다이어그램 중심으로 개발하는 방법론',
    n.aliases = ['Booch'];

// --- 관계 ---

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Concept {id: '객동기시개구테'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Concept {id: 'oose'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Concept {id: 'omt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Concept {id: 'booch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Document {id: 'SW_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '객체지향_개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객동기시개구테'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oose'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'omt'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'booch'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_018: 컴포넌트(Component)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_018'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'component'})
SET     n.name = 'Component',
    n.name_kr = '컴포넌트',
    n.domain = 'SW',
    n.aliases = ['Component', '컴포넌트'];

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '식분설구시전'})
SET     n.name = '식분설구시전',
    n.name_kr = '식분설구시전',
    n.domain = 'SW';

MERGE (n:Concept {id: 'class'})
SET     n.name = 'Class',
    n.name_kr = '클래스',
    n.domain = 'SW',
    n.definition = '같은 종류(또는 문제 해결을 위한)의 집단에 속하는 속성(attribute)과 행위(behavior)를 정의한 것 객체 지향 프로그램의 기본적인 사용자 정의 데이터 형 클래스는 프로그래머가 아니지만 해결해야 할 문제가 속하는 영역에 종사하는 사람이라면 사용할 수 있고, 다른 클래스 또는 외부 요소와 독립적으로 디자인',
    n.aliases = ['Class', '클래스'];

MERGE (n:Concept {id: 'building_block'})
SET     n.name = 'Building Block',
    n.name_kr = '빌딩블록',
    n.domain = 'SW',
    n.definition = '컴포넌트는 어플리케이션 혹은 보다 큰 컴포넌트들을 만들기 위해 사용할 수 있는 소프트웨어 빌딩 블록이며, 이것은 독립적으로 사용 가능한 소프트웨어 패키지',
    n.aliases = ['Building Block', '빌딩블록'];

MERGE (n:Concept {id: '캡슐화'})
SET     n.name = '캡슐화',
    n.name_kr = '캡슐화',
    n.domain = 'SW',
    n.definition = '컴포넌트는 그 구현 (내부코드와 데이터)를 숨기고, 오직 명세만을 노출 컴포넌트를 사용하는 소프트웨어는 컴포넌트의 명세만을 참조하므로, 소프트웨어에 영향을 주지 않고도 사용되는 컴포넌트의 구현을 변경할 수 있음';

MERGE (n:Concept {id: '표준준수'})
SET     n.name = '표준준수',
    n.name_kr = '표준준수',
    n.domain = 'SW',
    n.definition = '컴포넌트들은 상호운용 메커니즘이 표준화되어 있어야 상호작용이 가능 (J2EE, COM+, CORBA Component Model)';

MERGE (n:Concept {id: '교체성'})
SET     n.name = '교체성',
    n.name_kr = '교체성',
    n.domain = 'SW',
    n.definition = '컴포넌트의 인터페이스가 호환된다면, 컴포넌트는 또 다른 컴포넌트로 교체 가능함';

MERGE (n:Concept {id: '추상화에_따라_abstraction_ab'})
SET     n.name = '추상화에 따라 Abstraction Ab',
    n.name_kr = '추상화에 따라 Abstraction Ab',
    n.domain = 'SW',
    n.definition = '실제적 추상적';

MERGE (n:Concept {id: '크기에_따라_granularity_gr'})
SET     n.name = '크기에 따라 Granularity Gr',
    n.name_kr = '크기에 따라 Granularity Gr',
    n.domain = 'SW',
    n.definition = '크다 작다';

MERGE (n:Concept {id: '사용범위에_따라_generality_ge'})
SET     n.name = '사용범위에 따라 Generality Ge',
    n.name_kr = '사용범위에 따라 Generality Ge',
    n.domain = 'SW',
    n.definition = '구체적 일반적';

MERGE (n:Concept {id: '기술_플랫폼에_따라_technology_te'})
SET     n.name = '기술 플랫폼에 따라 Technology Te',
    n.name_kr = '기술 플랫폼에 따라 Technology Te',
    n.domain = 'SW',
    n.definition = 'Java (Javabean ,EJB, JSP/Servlet) COM(Active X, .NET, COM+/DCOM,ASP) CORBA(CCM)';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW',
    n.definition = '1) COTS(Commercial off-the-shelf) : 상업용 독립 컴포넌트 2) Wrapping (컴포넌트가 검증된 이후도 컴포넌트간 충돌을 피하기 위해 수정필요) - white-box wrapping: 개발팀이 컴포넌트 내부설계와 코드에 완전접근 - gray-box wrapping: 라이브러리 또는 API 수준으로 접근 가능 - black-bo';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '식분설구시전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: 'class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: 'building_block'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '표준준수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '교체성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '추상화에_따라_abstraction_ab'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '크기에_따라_granularity_gr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '사용범위에_따라_generality_ge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '기술_플랫폼에_따라_technology_te'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Document {id: 'SW_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식분설구시전'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'building_block'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준준수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교체성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추상화에_따라_abstraction_ab'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '크기에_따라_granularity_gr'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용범위에_따라_generality_ge'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_플랫폼에_따라_technology_te'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_019: CBD (Component Based Development)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_019'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'component_based_development'})
SET     n.name = 'Component Based Development',
    n.name_kr = 'CBD',
    n.domain = 'SW',
    n.aliases = ['Component Based Development', 'CBD'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cbd'})
SET     n.name = 'CBD',
    n.name_kr = 'CBD',
    n.domain = 'SW',
    n.aliases = ['CBD'];

MERGE (n:Concept {id: '특징:_생고재변기관사'})
SET     n.name = '특징: 생고재변기관사',
    n.name_kr = '특징: 생고재변기관사',
    n.domain = 'SW';

MERGE (n:Concept {id: '애자일_개발_방법론'})
SET     n.name = '애자일 개발 방법론',
    n.name_kr = '애자일 개발 방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cbd_방법론'})
SET     n.name = 'CBD 방법론',
    n.name_kr = 'CBD 방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cbd방법론'})
SET     n.name = 'CBD방법론',
    n.name_kr = 'CBD방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보공학방법론'})
SET     n.name = '정보공학방법론',
    n.name_kr = '정보공학방법론',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cbd'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: '특징:_생고재변기관사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '애자일_개발_방법론'})
MERGE (b:Concept {id: 'cbd_방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: '애자일_개발_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: 'cbd_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '애자일_개발_방법론'})
MERGE (b:Concept {id: 'cbd방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: '애자일_개발_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: 'cbd방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보공학방법론'})
MERGE (b:Concept {id: 'cbd방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: '정보공학방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: 'cbd방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Document {id: 'SW_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징:_생고재변기관사'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애자일_개발_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbd_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbd방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보공학방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_020: Product Line
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_020'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'product_line'})
SET     n.name = 'Product Line',
    n.name_kr = 'Product Line',
    n.domain = 'SW',
    n.aliases = ['Product Line'];

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'domain_engineering'})
SET     n.name = 'Domain Engineering',
    n.name_kr = 'Domain Engineering',
    n.domain = 'SW',
    n.aliases = ['Domain Engineering'];

MERGE (n:Concept {id: 'core_asset'})
SET     n.name = 'Core Asset',
    n.name_kr = 'Core Asset',
    n.domain = 'SW',
    n.aliases = ['Core Asset'];

MERGE (n:Concept {id: 'component_based_development'})
SET     n.name = 'Component Based Development',
    n.name_kr = 'CBD',
    n.domain = 'SW',
    n.aliases = ['Component Based Development', 'CBD'];

MERGE (n:Concept {id: 'service_oriented_architecture'})
SET     n.name = 'Service Oriented Architecture',
    n.name_kr = 'SOA',
    n.domain = 'SW',
    n.aliases = ['Service Oriented Architecture', 'SOA'];

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: 'domain_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: 'core_asset'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: 'product_line'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Concept {id: 'service_oriented_architecture'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: 'component_based_development'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: 'service_oriented_architecture'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Concept {id: 'service_oriented_architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Document {id: 'SW_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core_asset'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'component_based_development'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_oriented_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_021: 도메인공학 (Domain Engineering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_021'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'domain_engineering'})
SET     n.name = 'Domain Engineering',
    n.name_kr = '도메인공학',
    n.domain = 'SW',
    n.aliases = ['Domain Engineering', '도메인공학'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cbd'})
SET     n.name = 'CBD',
    n.name_kr = 'CBD',
    n.domain = 'SW',
    n.aliases = ['CBD'];

MERGE (n:Concept {id: 'core_asset'})
SET     n.name = 'Core Asset',
    n.name_kr = 'Core Asset',
    n.domain = 'SW',
    n.aliases = ['Core Asset'];

MERGE (n:Concept {id: 'product_line'})
SET     n.name = 'Product line',
    n.name_kr = 'Product line',
    n.domain = 'SW',
    n.aliases = ['Product line'];

MERGE (n:Concept {id: '재사용'})
SET     n.name = '재사용',
    n.name_kr = '재사용',
    n.domain = 'SW';

MERGE (n:Concept {id: '도메인_식별_및_범위_정의'})
SET     n.name = '도메인 식별 및 범위 정의',
    n.name_kr = '도메인 식별 및 범위 정의',
    n.domain = 'SW',
    n.definition = '도메인의 내/외부 분석 - 이해관계자 식별';

MERGE (n:Concept {id: 'domain_analysis'})
SET     n.name = 'Domain Analysis',
    n.name_kr = '도메인 분석',
    n.domain = 'SW',
    n.definition = '도메인 어휘(lexicon)의 생성 - 공통성과 가변성 식별 - 재사용 가능한 요구사항 집합의 정의 - 도메인 전문가에 의해서 개발자가 도메인을 이해할 수 있도록 하는 절차 - 도메인 모델(Domain Model): 도메인 지식에 대한 명시적인 표현. 도메인 어휘와 논리 모델(다이어그램 등), Feature 모델로 구성 - Feature: 가시적이고 주요한',
    n.aliases = ['Domain Analysis', '도메인 분석'];

MERGE (n:Concept {id: 'domain_design'})
SET     n.name = 'Domain Design',
    n.name_kr = '도메인 설계',
    n.domain = 'SW',
    n.definition = '공통 아키텍쳐 설계',
    n.aliases = ['Domain Design', '도메인 설계'];

MERGE (n:Concept {id: 'domain_implement'})
SET     n.name = 'Domain Implement',
    n.name_kr = '도메인 구현',
    n.domain = 'SW',
    n.definition = '재사용 가능한 자산(Asset)의 구현 - 모델, 컴포넌트, Generator, reuse 기반 구조',
    n.aliases = ['Domain Implement', '도메인 구현'];

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'cbd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'core_asset'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'product_line'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: '재사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: '도메인_식별_및_범위_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'domain_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'domain_design'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Concept {id: 'domain_implement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Document {id: 'SW_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'domain_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core_asset'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'product_line'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재사용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도메인_식별_및_범위_정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'domain_analysis'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'domain_design'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'domain_implement'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_022: 요구 공학
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_022'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'requirements_engineering'})
SET     n.name = 'Requirements Engineering',
    n.name_kr = '요구 공학',
    n.domain = 'SW',
    n.aliases = ['요구 공학'];

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구공학'})
SET     n.name = '요구공학',
    n.name_kr = '요구공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cmmi_l3_pa'})
SET     n.name = '요구사항 개발(추분명검)',
    n.name_kr = '요구사항 개발(추분명검)',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구사항_관리'})
SET     n.name = '요구사항 관리(협기변검)',
    n.name_kr = '요구사항 관리(협기변검)',
    n.domain = 'SW';

MERGE (n:Concept {id: '명세원리:_정명일완수이검추'})
SET     n.name = '명세원리: 정명일완수이검추',
    n.name_kr = '명세원리: 정명일완수이검추',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '요구공학'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'requirements_engineering'})
MERGE (b:Concept {id: 'cmmi_l3_pa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'requirements_engineering'})
MERGE (b:Concept {id: '요구사항_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'requirements_engineering'})
MERGE (b:Concept {id: '명세원리:_정명일완수이검추'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'requirements_engineering'})
MERGE (b:Document {id: 'SW_022'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'requirements_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cmmi_l3_pa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세원리:_정명일완수이검추'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_023: 요구사항
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_023'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '요구사항'})
SET     n.name = '요구사항',
    n.name_kr = '요구사항',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능_요구사항'})
SET     n.name = '기능 요구사항',
    n.name_kr = '기능 요구사항',
    n.domain = 'SW',
    n.definition = '목표시스템이 반드시 수행하여야 하거나 목표시스템을 이용하여 사용자가 반드시 수행할 수 있어야하는 기능으로 분석, 설계, 구현, 시험 공정을 거쳐 개발하는 요구사항 - 목표시스템이 수행해야할 기능';

MERGE (n:Concept {id: '비기능_요구사항'})
SET     n.name = '비기능 요구사항',
    n.name_kr = '비기능 요구사항',
    n.domain = 'SW',
    n.definition = '기능 요구사항을 제외한 성능, 보안, 연계복잡성 등 SW 개발 생산성에 영향을 미치는 요인 - 목표시스템의 원활한 실행 및 성능확보 방안';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW',
    n.definition = '시스템 유지관리 단계에서 안정적 운영방안 기술 - 시스템 구축 시 컨설팅 및 공사관련 사항';

MERGE (n:Concept {id: '비기능'})
SET     n.name = '비기능',
    n.name_kr = '비기능',
    n.domain = 'SW',
    n.definition = '② 성능 요구사항';

MERGE (n:Concept {id: '③_시스템_장비구성_요구사항'})
SET     n.name = '③ 시스템 장비구성 요구사항',
    n.name_kr = '③ 시스템 장비구성 요구사항',
    n.domain = 'SW',
    n.definition = '목표사업수행을 위해 필요한 HW, SW, NW 등의 도입 장비 내역 등 시스템 장비 구성에 대한 요구 사항을 기술';

MERGE (n:Concept {id: '④_인터페이스_요구사항'})
SET     n.name = '④ 인터페이스 요구사항',
    n.name_kr = '④ 인터페이스 요구사항',
    n.domain = 'SW',
    n.definition = '목표시스템과 외부를 연결하는 시스템 인터페이스와 사용자 인터페이스에 대한 요구사항을 기술 (타 소프트웨어, 하드웨어, 통신 인터페이스, 타 시스템들과의 정보교환에 이용되는 프로토콜과의 연계도 포함) - 단, 인터페이스 요구사항의 경우 사용자 편의성, 사용자 경험 등의 사용자 중심의 요구사항을 기술';

MERGE (n:Concept {id: '⑤_데이터_요구사항'})
SET     n.name = '⑤ 데이터 요구사항',
    n.name_kr = '⑤ 데이터 요구사항',
    n.domain = 'SW',
    n.definition = '목표 시스템의 서비스에 필요한 초기자료 구축 및 데이터 변환을 위한 대상, 방법, 보안이 필요한 데이터 등 데이터를 구축하기 위해 필요한 요구사항을 기술';

MERGE (n:Concept {id: '⑥_테스트_요구사항'})
SET     n.name = '⑥ 테스트 요구사항',
    n.name_kr = '⑥ 테스트 요구사항',
    n.domain = 'SW',
    n.definition = '구축된 시스템이 목표 대비 제대로 운영되는지 테스트하고 점검하기 위한 요구사항을 찾아내어 기술 - 목표 시스템의 테스트 유형(단위, 통합, 시스템 및 성능 테스트 등), 테스트 환경, 방법, 절차 등에 대한 요구사항을 기술';

MERGE (n:Metric {id: '⑦_보안_요구사항'})
SET     n.name = '⑦ 보안 요구사항',
    n.name_kr = '⑦ 보안 요구사항',
    n.domain = 'SW',
    n.definition = '정보 자산의 기밀성과 무결성을 확보하기 위해 목표 시스템의 데이터 및 기능, 운영 접근을 통제하기 위한 요구사항을 기술';

MERGE (n:Concept {id: '⑧_품질_요구사항'})
SET     n.name = '⑧ 품질 요구사항',
    n.name_kr = '⑧ 품질 요구사항',
    n.domain = 'SW',
    n.definition = '목표 사업의 원활한 수행 및 운영을 위해 관리가 필요한 품질 항목, 품질 평가 대상 및 목표에 대한 요구사항을 기술 - 신뢰성, 사용성, 유지보수성, 이식성, 보안성으로 구분하여 기술';

MERGE (n:Concept {id: '⑨_제약사항'})
SET     n.name = '⑨ 제약사항',
    n.name_kr = '⑨ 제약사항',
    n.domain = 'SW',
    n.definition = '목표시스템 설계, 구축, 운영과 관련하여 사전에 파악된 기술·표준·업무·법제도 등 제약조건 등을 파악하여 기술';

MERGE (n:Concept {id: '⑩_프로젝트_관리_요구사항'})
SET     n.name = '⑩ 프로젝트 관리 요구사항',
    n.name_kr = '⑩ 프로젝트 관리 요구사항',
    n.domain = 'SW',
    n.definition = '프로젝트의 원활한 수행을 위한 관리 방법 및 추진 단계별 수행방안에 대한 요구사항을 기술';

MERGE (n:Concept {id: '⑪_프로젝트_지원_요구사항'})
SET     n.name = '⑪ 프로젝트 지원 요구사항',
    n.name_kr = '⑪ 프로젝트 지원 요구사항',
    n.domain = 'SW',
    n.definition = '프로젝트의 원활한 수행을 위해 필요한 지원 사항 및 방안에 대한 요구사항을 기술 - 시스템/서비스 안정화 및 운영, 교육훈련 및 기술지원, 하자보수 또는 유지관리 요구사항 등을 기술';

MERGE (n:Concept {id: '⑬_유지관리_인력_요구사항'})
SET     n.name = '⑬ 유지관리 인력 요구사항',
    n.name_kr = '⑬ 유지관리 인력 요구사항',
    n.domain = 'SW',
    n.definition = '유지관리 수행을 위해 필요한 운영인력 체계, 담당자 별 역할 및 책임을 포함한 효율적인 유지관리 방안을 기술 - 유지관리 범위와 서비스를 고려하여 적정한 인원과 투입인력 자격 조건에 대한 요구사항을 기술';

MERGE (n:Concept {id: '⑭_컨설팅_요구사항'})
SET     n.name = '⑭ 컨설팅 요구사항',
    n.name_kr = '⑭ 컨설팅 요구사항',
    n.domain = 'SW',
    n.definition = '정보화사업의 업무 효율성과 생산성을 높이는 정보시스템 구축 및 운영을 위한 제반사항을 지원하는 요구사항 기술';

MERGE (n:Concept {id: '⑮_공사_요구사항'})
SET     n.name = '⑮ 공사 요구사항',
    n.name_kr = '⑮ 공사 요구사항',
    n.domain = 'SW',
    n.definition = '정보화 사업 중 전산실 공사, 상황실 공사, 내부 인테리어 등을 요구하는 경우에 기술';

MERGE (n:Concept {id: '작성기준'})
SET     n.name = '작성기준',
    n.name_kr = '작성기준',
    n.domain = 'SW',
    n.definition = '필수 기능 기술';

MERGE (n:Concept {id: '상세화'})
SET     n.name = '상세화',
    n.name_kr = '상세화',
    n.domain = 'SW',
    n.definition = '기능은 로그인, 정보등록, 정보 삭제, 정보 조회 등과 같이 최소단계로 상세화';

MERGE (n:Concept {id: '기능점수_활용'})
SET     n.name = '기능점수 활용',
    n.name_kr = '기능점수 활용',
    n.domain = 'SW',
    n.definition = '요구사항 작성 전, 기능점수를 이용해 외부 애플리케이션과 사용자 영역 사이의 경계를 수립하는 것이 필요';

MERGE (n:Concept {id: '에러_및_복구_명시'})
SET     n.name = '에러 및 복구 명시',
    n.name_kr = '에러 및 복구 명시',
    n.domain = 'SW',
    n.definition = '비정상적인 상황에서의 행위에 대한 에러처리와 복구를 명시';

MERGE (n:Concept {id: '충족요건'})
SET     n.name = '충족요건',
    n.name_kr = '충족요건',
    n.domain = 'SW',
    n.definition = '기능이름, 애플리케이션 이름, 기능의 입력 및 출력정보, 입출력 유형, 관련파일 및 유형, 기능내용, 기능검증, 관련 요구사항 정보';

MERGE (n:Concept {id: '장비구성'})
SET     n.name = '장비구성',
    n.name_kr = '장비구성',
    n.domain = 'SW',
    n.definition = '목표시스템 구성을 위해 필요한 HW, SW, NW등의 도입 장비 내역(품목, 규격, 수량, 용도) 등 시스템 장비 구성에 대한 요구사항을 기술';

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'SW',
    n.definition = '목표 시스템의 서비스에 필요한 초기자료 구축 및 데이터 변환을 위한 대상, 방법, 보안이 필요한 데이터 등을 구축하기 위해 필요한 요구사항을 기술';

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SW',
    n.definition = '구현된 시스템을 테스트하고 점검하기 위한 요구사항을 찾아내어 기술';

MERGE (n:Metric {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SW',
    n.definition = '자산의 기밀성과 무결성을 확보하기 위해 목표 시스템의 데이터 및 기능, 운영 접근을 통제하기 위한 요구사항을 기술';

MERGE (n:Concept {id: '인터페이스_요구사항'})
SET     n.name = '인터페이스 요구사항',
    n.name_kr = '인터페이스 요구사항',
    n.domain = 'SW',
    n.definition = '시스템 인터페이스 요구사항';

MERGE (n:Concept {id: '사용자_인터페이스_요구사항'})
SET     n.name = '사용자 인터페이스 요구사항',
    n.name_kr = '사용자 인터페이스 요구사항',
    n.domain = 'SW',
    n.definition = '시스템 간, 화면 간, 화면 내 동선 최소화, 업무흐름(Work Flow)과 일치하는 화면 구성, 정보 우선순위의 시각적 명확화, 팝업 창 및 스크롤 최소화 등 사용자 편의성을 고려하여 사용자 중심의 사용자 인터페이스 프레임워크 및 화면 설계에 대한 요건을 기술 - 사용자 인터페이스 이름, 관련 애플리케이션/기능, 사용자 인터페이스 내용, 전자중부서비스 호';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '해결방안_설명'})
SET     n.name = '해결방안 설명',
    n.name_kr = '해결방안 설명',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '기능_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '비기능_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '비기능'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '③_시스템_장비구성_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '④_인터페이스_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑤_데이터_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑥_테스트_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Metric {id: '⑦_보안_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑧_품질_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑨_제약사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑩_프로젝트_관리_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑪_프로젝트_지원_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑬_유지관리_인력_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑭_컨설팅_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '⑮_공사_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '작성기준'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '상세화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '기능점수_활용'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '에러_및_복구_명시'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '충족요건'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '장비구성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Metric {id: '보안'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '인터페이스_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '사용자_인터페이스_요구사항'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Concept {id: '해결방안_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Concept {id: '해결방안_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Document {id: 'SW_023'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_시스템_장비구성_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_인터페이스_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_데이터_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑥_테스트_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '⑦_보안_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑧_품질_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑨_제약사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑩_프로젝트_관리_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑪_프로젝트_지원_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑬_유지관리_인력_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑭_컨설팅_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑮_공사_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작성기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능점수_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에러_및_복구_명시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '충족요건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비구성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '보안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_인터페이스_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안_설명'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_024.1: 요구사항 명세서/SRS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_024.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '요구사항_명세서/srs'})
SET     n.name = '요구사항 명세서/SRS',
    n.name_kr = '요구사항 명세서/SRS',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구사항명세서'})
SET     n.name = '요구사항명세서',
    n.name_kr = '요구사항명세서',
    n.domain = 'SW';

MERGE (n:Concept {id: '검토가능'})
SET     n.name = '검토가능',
    n.name_kr = '검토가능',
    n.domain = 'SW';

MERGE (n:Concept {id: '추적가능'})
SET     n.name = '추적가능',
    n.name_kr = '추적가능',
    n.domain = 'SW';

MERGE (n:Concept {id: '명확성'})
SET     n.name = '명확성',
    n.name_kr = '명확성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'consistent'})
SET     n.name = '일관성',
    n.name_kr = '일관성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'complete'})
SET     n.name = '완전성',
    n.name_kr = '완전성',
    n.domain = 'SW';

MERGE (n:Concept {id: '수정가능'})
SET     n.name = '수정가능',
    n.name_kr = '수정가능',
    n.domain = 'SW';

MERGE (n:Concept {id: 'correct'})
SET     n.name = '정확성',
    n.name_kr = '정확성',
    n.domain = 'SW';

MERGE (n:Concept {id: '상호성'})
SET     n.name = '상호성',
    n.name_kr = '상호성',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능정의'})
SET     n.name = '기능정의',
    n.name_kr = '기능정의',
    n.domain = 'SW';

MERGE (n:Concept {id: '제약조건'})
SET     n.name = '제약조건',
    n.name_kr = '제약조건',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트_기준'})
SET     n.name = '테스트 기준',
    n.name_kr = '테스트 기준',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질_측정'})
SET     n.name = '품질 측정',
    n.name_kr = '품질 측정',
    n.domain = 'SW';

MERGE (n:Concept {id: 'introduction'})
SET     n.name = 'Introduction',
    n.name_kr = '개요',
    n.domain = 'SW',
    n.definition = '범위(Scope)',
    n.aliases = ['Introduction', '개요'];

MERGE (n:Concept {id: 'purpose'})
SET     n.name = 'Purpose',
    n.name_kr = '목적',
    n.domain = 'SW',
    n.definition = '명세서의 작성 목적을 기술',
    n.aliases = ['Purpose', '목적'];

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = '시스템 개요',
    n.domain = 'SW',
    n.definition = '시스템 전반적인 내용을 요약하여 기술',
    n.aliases = ['System', '시스템 개요'];

MERGE (n:Concept {id: 'constraints'})
SET     n.name = 'Constraints',
    n.name_kr = '일반 제약사항',
    n.domain = 'SW',
    n.definition = '다른 표준이나 하드웨어 제한으로 인해 적용되는 제한사항에 대하여 기술',
    n.aliases = ['Constraints', '일반 제약사항'];

MERGE (n:Concept {id: '기능적_요구사항'})
SET     n.name = '기능적 요구사항',
    n.name_kr = '기능적 요구사항',
    n.domain = 'SW',
    n.definition = '기능요구사항(Functional Requirement)';

MERGE (n:Concept {id: '기타_요구_및_제약_사항'})
SET     n.name = '기타 요구 및 제약 사항',
    n.name_kr = '기타 요구 및 제약 사항',
    n.domain = 'SW',
    n.definition = '성능 요구사항(Performance Requirement)';

MERGE (n:Concept {id: 'hw_요구_사항'})
SET     n.name = 'HW 요구 사항',
    n.name_kr = 'HW 요구 사항',
    n.domain = 'SW',
    n.definition = '기억 장치 규모, 통신 수용도 등의 필요 요구 사항 기술';

MERGE (n:Concept {id: 'software_system_attribute'})
SET     n.name = 'Software System Attribute',
    n.name_kr = '소프트웨어 시스템 속성',
    n.domain = 'SW',
    n.definition = '신뢰도(Reliability), 사용가능성(Availability), 보안(Security), 유지보수(Maintainability), 이식성(Portability) 등',
    n.aliases = ['Software System Attribute', '소프트웨어 시스템 속성'];

MERGE (n:Concept {id: '인수_조건'})
SET     n.name = '인수 조건',
    n.name_kr = '인수 조건',
    n.domain = 'SW',
    n.definition = '기능 및 성능 시험';

MERGE (n:Concept {id: '요구사항_평가'})
SET     n.name = '요구사항 평가',
    n.name_kr = '요구사항 평가',
    n.domain = 'SW',
    n.definition = '정확성';

MERGE (n:Metric {id: '정확도'})
SET     n.name = '정확도',
    n.name_kr = '정확도',
    n.domain = 'SW',
    n.definition = '로직 및 인터페이스의 정밀도가 만족하는지 확인';

MERGE (n:Concept {id: '판독성'})
SET     n.name = '판독성',
    n.name_kr = '판독성',
    n.domain = 'SW',
    n.definition = '문서가 알기쉽고 명확하게 작성되었는지 입증';

MERGE (n:Concept {id: '시험성'})
SET     n.name = '시험성',
    n.name_kr = '시험성',
    n.domain = 'SW',
    n.definition = 'SRS의 요구사항을 입증하기 위한 객관적인 시험 기준이 되는지 확인';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'SW',
    n.definition = '인터페이스 요구사항의 유효성 확인';

MERGE (n:Concept {id: '추적성'})
SET     n.name = '추적성',
    n.name_kr = '추적성',
    n.domain = 'SW',
    n.definition = 'SW요구사항과 시스템 요구사항 사이의 관계가 정확성을 갖는지 확인';

// --- 관계 ---

MERGE (a:Concept {id: '요구사항명세서'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '검토가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '추적가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '명확성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'consistent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'complete'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '수정가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'correct'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '상호성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '기능정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '제약조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '테스트_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '품질_측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'introduction'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'purpose'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'constraints'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '기능적_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '기타_요구_및_제약_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'hw_요구_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'software_system_attribute'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '인수_조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '요구사항_평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Metric {id: '정확도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '판독성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '시험성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '추적성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Document {id: 'SW_024.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항명세서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검토가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추적가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명확성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consistent'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complete'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수정가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correct'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제약조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_측정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'introduction'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'purpose'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'constraints'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능적_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_요구_및_제약_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_요구_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software_system_attribute'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인수_조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '정확도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판독성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시험성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추적성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_024.2: 요구사항 상세화 실무 가이드 라인
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_024.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '요구사항_상세화_실무_가이드_라인'})
SET     n.name = '요구사항 상세화 실무 가이드 라인',
    n.name_kr = '요구사항 상세화 실무 가이드 라인',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구사항관리'})
SET     n.name = '요구사항관리(범위관리/발주)',
    n.name_kr = '요구사항관리(범위관리/발주)',
    n.domain = 'SW';

MERGE (n:Concept {id: '요구사항_상세화_실무_가이드라인'})
SET     n.name = '요구사항 상세화 실무 가이드라인',
    n.name_kr = '요구사항 상세화 실무 가이드라인',
    n.domain = 'SW';

MERGE (n:Metric {id: 'fp'})
SET     n.name = 'FP',
    n.name_kr = '기능점수',
    n.domain = 'SW',
    n.aliases = ['FP', '기능점수'];

MERGE (n:Concept {id: '규모산정'})
SET     n.name = '규모산정',
    n.name_kr = '규모산정',
    n.domain = 'SW';

MERGE (n:Concept {id: '성능_목표'})
SET     n.name = '성능 목표',
    n.name_kr = '성능 목표',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능/비기능'})
SET     n.name = '기능/비기능',
    n.name_kr = '기능/비기능',
    n.domain = 'SW';

MERGE (n:Concept {id: '잠재_요구사항_도출'})
SET     n.name = '잠재 요구사항 도출',
    n.name_kr = '잠재 요구사항 도출',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_산업진흥법_20조'})
SET     n.name = '소프트웨어 산업진흥법 20조',
    n.name_kr = '소프트웨어 산업진흥법 20조',
    n.domain = 'SW';

MERGE (n:Concept {id: 'nipa)'})
SET     n.name = 'NIPA)',
    n.name_kr = 'NIPA)',
    n.domain = 'SW';

MERGE (n:Concept {id: '상세화_방안'})
SET     n.name = '상세화 방안',
    n.name_kr = '상세화 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '세부_기법'})
SET     n.name = '세부 기법',
    n.name_kr = '세부 기법',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능_요구사항'})
SET     n.name = '기능 요구사항',
    n.name_kr = '기능 요구사항',
    n.domain = 'SW',
    n.definition = '목표시스템이 반드시 수행하여야 하거나 목표시스템을 이용하여 사용자가 반드시 수행할 수 있어야하는 기능으로 분석, 설계, 구현, 시험 공정을 거쳐 개발하는 요구사항 - 목표시스템이 수행해야할 기능';

MERGE (n:Concept {id: '비기능_요구사항'})
SET     n.name = '비기능 요구사항',
    n.name_kr = '비기능 요구사항',
    n.domain = 'SW',
    n.definition = '기능 요구사항을 제외한 성능, 보안, 연계복잡성 등 SW 개발 생산성에 영향을 미치는 요인 - 목표시스템의 원활한 실행 및 성능확보 방안';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW',
    n.definition = '시스템 유지관리 단계에서 안정적 운영방안 기술 - 시스템 구축 시 컨설팅 및 공사관련 사항';

MERGE (n:Concept {id: '비기능'})
SET     n.name = '비기능',
    n.name_kr = '비기능',
    n.domain = 'SW',
    n.definition = '② 성능 요구사항';

MERGE (n:Concept {id: '③_시스템_장비구성_요구사항'})
SET     n.name = '③ 시스템 장비구성 요구사항',
    n.name_kr = '③ 시스템 장비구성 요구사항',
    n.domain = 'SW',
    n.definition = '목표사업수행을 위해 필요한 HW, SW, NW 등의 도입 장비 내역 등 시스템 장비 구성에 대한 요구 사항을 기술';

MERGE (n:Concept {id: '④_인터페이스_요구사항'})
SET     n.name = '④ 인터페이스 요구사항',
    n.name_kr = '④ 인터페이스 요구사항',
    n.domain = 'SW',
    n.definition = '목표시스템과 외부를 연결하는 시스템 인터페이스와 사용자 인터페이스에 대한 요구사항을 기술 (타 소프트웨어, 하드웨어, 통신 인터페이스, 타 시스템들과의 정보교환에 이용되는 프로토콜과의 연계도 포함) - 단, 인터페이스 요구사항의 경우 사용자 편의성, 사용자 경험 등의 사용자 중심의 요구사항을 기술';

MERGE (n:Concept {id: '⑤_데이터_요구사항'})
SET     n.name = '⑤ 데이터 요구사항',
    n.name_kr = '⑤ 데이터 요구사항',
    n.domain = 'SW',
    n.definition = '목표 시스템의 서비스에 필요한 초기자료 구축 및 데이터 변환을 위한 대상, 방법, 보안이 필요한 데이터 등 데이터를 구축하기 위해 필요한 요구사항을 기술';

MERGE (n:Concept {id: '⑥_테스트_요구사항'})
SET     n.name = '⑥ 테스트 요구사항',
    n.name_kr = '⑥ 테스트 요구사항',
    n.domain = 'SW',
    n.definition = '구축된 시스템이 목표 대비 제대로 운영되는지 테스트하고 점검하기 위한 요구사항을 찾아내어 기술 - 목표 시스템의 테스트 유형(단위, 통합, 시스템 및 성능 테스트 등), 테스트 환경, 방법, 절차 등에 대한 요구사항을 기술';

MERGE (n:Metric {id: '⑦_보안_요구사항'})
SET     n.name = '⑦ 보안 요구사항',
    n.name_kr = '⑦ 보안 요구사항',
    n.domain = 'SW',
    n.definition = '정보 자산의 기밀성과 무결성을 확보하기 위해 목표 시스템의 데이터 및 기능, 운영 접근을 통제하기 위한 요구사항을 기술';

MERGE (n:Concept {id: '⑧_품질_요구사항'})
SET     n.name = '⑧ 품질 요구사항',
    n.name_kr = '⑧ 품질 요구사항',
    n.domain = 'SW',
    n.definition = '목표 사업의 원활한 수행 및 운영을 위해 관리가 필요한 품질 항목, 품질 평가 대상 및 목표에 대한 요구사항을 기술 - 신뢰성, 사용성, 유지보수성, 이식성, 보안성으로 구분하여 기술';

MERGE (n:Concept {id: '⑨_제약사항'})
SET     n.name = '⑨ 제약사항',
    n.name_kr = '⑨ 제약사항',
    n.domain = 'SW',
    n.definition = '목표시스템 설계, 구축, 운영과 관련하여 사전에 파악된 기술·표준·업무·법제도 등 제약조건 등을 파악하여 기술';

MERGE (n:Concept {id: '⑩_프로젝트_관리_요구사항'})
SET     n.name = '⑩ 프로젝트 관리 요구사항',
    n.name_kr = '⑩ 프로젝트 관리 요구사항',
    n.domain = 'SW',
    n.definition = '프로젝트의 원활한 수행을 위한 관리 방법 및 추진 단계별 수행방안에 대한 요구사항을 기술';

MERGE (n:Concept {id: '⑪_프로젝트_지원_요구사항'})
SET     n.name = '⑪ 프로젝트 지원 요구사항',
    n.name_kr = '⑪ 프로젝트 지원 요구사항',
    n.domain = 'SW',
    n.definition = '프로젝트의 원활한 수행을 위해 필요한 지원 사항 및 방안에 대한 요구사항을 기술 - 시스템/서비스 안정화 및 운영, 교육훈련 및 기술지원, 하자보수 또는 유지관리 요구사항 등을 기술';

MERGE (n:Concept {id: '⑬_유지관리_인력_요구사항'})
SET     n.name = '⑬ 유지관리 인력 요구사항',
    n.name_kr = '⑬ 유지관리 인력 요구사항',
    n.domain = 'SW',
    n.definition = '유지관리 수행을 위해 필요한 운영인력 체계, 담당자 별 역할 및 책임을 포함한 효율적인 유지관리 방안을 기술 - 유지관리 범위와 서비스를 고려하여 적정한 인원과 투입인력 자격 조건에 대한 요구사항을 기술';

MERGE (n:Concept {id: '⑭_컨설팅_요구사항'})
SET     n.name = '⑭ 컨설팅 요구사항',
    n.name_kr = '⑭ 컨설팅 요구사항',
    n.domain = 'SW',
    n.definition = '정보화사업의 업무 효율성과 생산성을 높이는 정보시스템 구축 및 운영을 위한 제반사항을 지원하는 요구사항 기술';

MERGE (n:Concept {id: '⑮_공사_요구사항'})
SET     n.name = '⑮ 공사 요구사항',
    n.name_kr = '⑮ 공사 요구사항',
    n.domain = 'SW',
    n.definition = '정보화 사업 중 전산실 공사, 상황실 공사, 내부 인테리어 등을 요구하는 경우에 기술';

MERGE (n:Concept {id: '성능요구사항_정의'})
SET     n.name = '성능요구사항 정의',
    n.name_kr = '성능요구사항 정의',
    n.domain = 'SW',
    n.definition = '사용자들에게 최적화된 정보 시스템 서비스를 제공하고, 안정적인 운영과 유지를 위해 요구되는 기술적인 요소로 장비 및 시스템이 해당 기능을 수행할 때 얼마나 빨리, 잘 처리할 수 있는지에 대한 요구사항';

MERGE (n:Concept {id: '성능요구사항_중요성'})
SET     n.name = '성능요구사항 중요성',
    n.name_kr = '성능요구사항 중요성',
    n.domain = 'SW',
    n.definition = '최종 사용자가 느끼는 시스템의 체감 품질에 많은 영향 - 시스템처리속도, 화면 별 응답시간, 페이지 오류 및 정지시간 등은 서비스 수준 관리에 있어 치명적인 불만족 요소';

MERGE (n:Metric {id: '성능요구사항_기술범위'})
SET     n.name = '성능요구사항 기술범위',
    n.name_kr = '성능요구사항 기술범위',
    n.domain = 'SW',
    n.definition = '목표시스템의 일부기능이 달성해야 하는 최고 또는 최저능력을 명시하는 것으로, 목표시스템의 처리속도, 시간, 처리량, 동적·정적용량, 가용성 등 성능에 대한 요구사항 기술';

// --- 관계 ---

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드라인'})
MERGE (b:Concept {id: '요구사항관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Metric {id: 'fp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '규모산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '성능_목표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '기능/비기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '잠재_요구사항_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '소프트웨어_산업진흥법_20조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: 'nipa)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상세화_방안'})
MERGE (b:Concept {id: '세부_기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '상세화_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '세부_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '기능_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '비기능_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '비기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '③_시스템_장비구성_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '④_인터페이스_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑤_데이터_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑥_테스트_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Metric {id: '⑦_보안_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑧_품질_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑨_제약사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑩_프로젝트_관리_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑪_프로젝트_지원_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑬_유지관리_인력_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑭_컨설팅_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '⑮_공사_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '성능요구사항_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Concept {id: '성능요구사항_중요성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Metric {id: '성능요구사항_기술범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Document {id: 'SW_024.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드_라인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_상세화_실무_가이드라인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'fp'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규모산정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_목표'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능/비기능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잠재_요구사항_도출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_산업진흥법_20조'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nipa)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세화_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_시스템_장비구성_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_인터페이스_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_데이터_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑥_테스트_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '⑦_보안_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑧_품질_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑨_제약사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑩_프로젝트_관리_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑪_프로젝트_지원_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑬_유지관리_인력_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑭_컨설팅_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑮_공사_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능요구사항_정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능요구사항_중요성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '성능요구사항_기술범위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_024.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_024.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_025: 페르소나 (Persona)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_025'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'persona'})
SET     n.name = 'Persona',
    n.name_kr = '페르소나',
    n.domain = 'SW',
    n.aliases = ['Persona', '페르소나'];

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SW';

MERGE (n:Concept {id: '리서치'})
SET     n.name = '리서치',
    n.name_kr = '리서치',
    n.domain = 'SW';

MERGE (n:Concept {id: '실체화'})
SET     n.name = '실체화',
    n.name_kr = '실체화',
    n.domain = 'SW';

MERGE (n:Concept {id: '다양한_요구사항'})
SET     n.name = '다양한 요구사항',
    n.name_kr = '다양한 요구사항',
    n.domain = 'SW';

MERGE (n:Concept {id: '재구성'})
SET     n.name = '재구성',
    n.name_kr = '재구성',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '리서치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '실체화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '다양한_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Concept {id: '재구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Document {id: 'SW_025'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'persona'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리서치'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실체화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재구성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_026: 개발 방법론 테일러링(Tailoring)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_026'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'tailoring'})
SET     n.name = 'Tailoring',
    n.name_kr = '개발 방법론 테일러링',
    n.domain = 'SW',
    n.aliases = ['Tailoring', '개발 방법론 테일러링'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '문서'})
SET     n.name = '문서',
    n.name_kr = '문서',
    n.domain = 'SW';

MERGE (n:Concept {id: '생명주기'})
SET     n.name = '생명주기',
    n.name_kr = '생명주기',
    n.domain = 'SW';

MERGE (n:Concept {id: '활동'})
SET     n.name = '활동',
    n.name_kr = '활동',
    n.domain = 'SW';

MERGE (n:Concept {id: '작업'})
SET     n.name = '작업',
    n.name_kr = '작업',
    n.domain = 'SW';

MERGE (n:Concept {id: '산출물_조정'})
SET     n.name = '산출물 조정',
    n.name_kr = '산출물 조정',
    n.domain = 'SW';

MERGE (n:Concept {id: '세부_절차'})
SET     n.name = '세부 절차',
    n.name_kr = '세부 절차',
    n.domain = 'SW';

MERGE (n:Concept {id: '입출력_산출물'})
SET     n.name = '입출력 산출물',
    n.name_kr = '입출력 산출물',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '문서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '생명주기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '활동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '작업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '산출물_조정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_절차'})
MERGE (b:Concept {id: '입출력_산출물'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '세부_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Concept {id: '입출력_산출물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Document {id: 'SW_026'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tailoring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생명주기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물_조정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_절차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_산출물'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_027.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_027.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_027.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_027.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_027.3: 의존성 주입(Dependency Injection)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_027.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'dependency_injection'})
SET     n.name = 'Dependency Injection',
    n.name_kr = '의존성 주입',
    n.domain = 'SW',
    n.aliases = ['Dependency Injection', '의존성 주입'];

MERGE (n:Concept {id: '개발방법론'})
SET     n.name = '개발방법론',
    n.name_kr = '개발방법론',
    n.domain = 'SW';

MERGE (n:Concept {id: '구현의_분리'})
SET     n.name = '구현의 분리',
    n.name_kr = '구현의 분리',
    n.domain = 'SW';

MERGE (n:Concept {id: '변경_용이성'})
SET     n.name = '변경 용이성',
    n.name_kr = '변경 용이성',
    n.domain = 'SW';

MERGE (n:Concept {id: '모듈성_강화'})
SET     n.name = '모듈성 강화',
    n.name_kr = '모듈성 강화',
    n.domain = 'SW';

MERGE (n:Concept {id: '아키텍터_관점'})
SET     n.name = '아키텍터 관점',
    n.name_kr = '아키텍터 관점',
    n.domain = 'SW',
    n.definition = '구현의 분리';

MERGE (n:Concept {id: '개발자_및_테스트_관점'})
SET     n.name = '개발자 및 테스트 관점',
    n.name_kr = '개발자 및 테스트 관점',
    n.domain = 'SW',
    n.definition = '다형성 사용';

MERGE (n:Concept {id: 'mocking_용이'})
SET     n.name = 'Mocking 용이',
    n.name_kr = 'Mocking 용이',
    n.domain = 'SW',
    n.definition = '다른 mock 객체를 DI 가능 - 테스트 대상 클래스가 Constructor로 의존성을 받는다면 외부에서 mock객체를 만들어서 DI 해주면 되나, 클래스 내부에서 Util클래스를 직접 불러 사용하면 mocking 불가능 - 외부에서 mock객체를 만들어서 DI 해주는 것은 직접 Constructor에 넣어주는 방법도 있고, Spring을 사용하면 @Pr';

MERGE (n:Concept {id: 'configuration_활용'})
SET     n.name = 'Configuration 활용',
    n.name_kr = 'Configuration 활용',
    n.domain = 'SW',
    n.definition = 'Configuration이 필요한 경우, 설정이 적용된 Bean을 각 서비스에서 DI 받을 수 있음';

MERGE (n:Concept {id: '형식의_변화_유연성'})
SET     n.name = '형식의 변화 유연성',
    n.name_kr = '형식의 변화 유연성',
    n.domain = 'SW',
    n.definition = 'RestTemplate 같은 다른 Bean과 형식을 맞춰 사용 가능';

MERGE (n:Concept {id: 'lifecycle_관리'})
SET     n.name = 'Lifecycle 관리',
    n.name_kr = 'Lifecycle 관리',
    n.domain = 'SW',
    n.definition = 'DI 주체인 외부 컨테이너에서 Singleton lifecycle을 관리';

// --- 관계 ---

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '개발방법론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '구현의_분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '변경_용이성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '모듈성_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '아키텍터_관점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '개발자_및_테스트_관점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: 'mocking_용이'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: 'configuration_활용'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: '형식의_변화_유연성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Concept {id: 'lifecycle_관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Document {id: 'SW_027.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dependency_injection'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현의_분리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경_용이성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모듈성_강화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍터_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자_및_테스트_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mocking_용이'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'configuration_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형식의_변화_유연성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lifecycle_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_028: Agile 방법론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_028'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Method {id: 'agile_방법론'})
SET     n.name = 'Agile 방법론',
    n.name_kr = 'Agile 방법론',
    n.domain = 'SW';

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'SW',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '개변동고_공계문계'})
SET     n.name = '개변동고 공계문계',
    n.name_kr = '개변동고 공계문계',
    n.domain = 'SW';

MERGE (n:Concept {id: '고요배의_동대소지_좋단자효'})
SET     n.name = '고요배의 동대소지 좋단자효',
    n.name_kr = '고요배의 동대소지 좋단자효',
    n.domain = 'SW';

MERGE (n:Concept {id: 'delivery_time_감소'})
SET     n.name = 'Delivery Time 감소',
    n.name_kr = 'Delivery Time 감소',
    n.domain = 'SW',
    n.definition = 'Time to Market 실현';

MERGE (n:Concept {id: '창의력_향상'})
SET     n.name = '창의력 향상',
    n.name_kr = '창의력 향상',
    n.domain = 'SW',
    n.definition = '팀 자율성 강화';

MERGE (n:Concept {id: '생산성_향상'})
SET     n.name = '생산성 향상',
    n.name_kr = '생산성 향상',
    n.domain = 'SW',
    n.definition = '불필요한 산출물 제거';

MERGE (n:Concept {id: '제품_품질_향상'})
SET     n.name = '제품 품질 향상',
    n.name_kr = '제품 품질 향상',
    n.domain = 'SW',
    n.definition = '주기적 피드백, 테스트';

MERGE (n:Concept {id: '리스크_관리_부족'})
SET     n.name = '리스크 관리 부족',
    n.name_kr = '리스크 관리 부족',
    n.domain = 'SW',
    n.definition = '개발자 위주의 측정지표';

MERGE (n:Concept {id: '체계적인_문서_및_지침_부족'})
SET     n.name = '체계적인 문서 및 지침 부족',
    n.name_kr = '체계적인 문서 및 지침 부족',
    n.domain = 'SW',
    n.definition = '적용지원, 지침, 통합, 테스팅 등 관련';

MERGE (n:Concept {id: '감리대응_문제'})
SET     n.name = '감리대응 문제',
    n.name_kr = '감리대응 문제',
    n.domain = 'SW',
    n.definition = '적은 양의 문서, 감리기준 미부합 산출물';

MERGE (n:Concept {id: '사전준비'})
SET     n.name = '사전준비',
    n.name_kr = '사전준비',
    n.domain = 'SW',
    n.definition = '프로세스 정립 위한 애자일 가이드라인 배포 - 경영진 참여 유도 / 이해관계자 식별';

MERGE (n:Concept {id: '요구정의'})
SET     n.name = '요구정의',
    n.name_kr = '요구정의',
    n.domain = 'SW',
    n.definition = 'Product backlog / Sprint backlog 작성 및 문서화 - 요구사항의 Story화';

MERGE (n:Concept {id: '분석/설계'})
SET     n.name = '분석/설계',
    n.name_kr = '분석/설계',
    n.domain = 'SW',
    n.definition = '의사소통 채널 정리 - 분석/설계 반복 수행';

MERGE (n:Concept {id: '개발/검증'})
SET     n.name = '개발/검증',
    n.name_kr = '개발/검증',
    n.domain = 'SW',
    n.definition = '작업과 개발자의 분배문제 극복하기위한 팀워크 활동 - 개발 반복 수행 - TDD 적용';

MERGE (n:Method {id: '배포'})
SET     n.name = '배포',
    n.name_kr = '배포',
    n.domain = 'SW',
    n.definition = '정기 배포 자동화 - CI/CD 프로세스 도입';

MERGE (n:Concept {id: '회고'})
SET     n.name = '회고',
    n.name_kr = '회고',
    n.domain = 'SW',
    n.definition = '기술 부채 정리 - 회고 미팅 후 다음 스프린트 이관';

MERGE (n:Concept {id: '준비'})
SET     n.name = '준비',
    n.name_kr = '준비',
    n.domain = 'SW',
    n.definition = '작업 요구 능력 및 팀원 능력 수집';

MERGE (n:Concept {id: '측정'})
SET     n.name = '측정',
    n.name_kr = '측정',
    n.domain = 'SW',
    n.definition = '팀원 능력 측정';

MERGE (n:Concept {id: '우선순위'})
SET     n.name = '우선순위',
    n.name_kr = '우선순위',
    n.domain = 'SW',
    n.definition = '작업 난이도와 순위 결정';

MERGE (n:Concept {id: '배치'})
SET     n.name = '배치',
    n.name_kr = '배치',
    n.domain = 'SW',
    n.definition = '작업에 개발인력 적절 배치';

MERGE (n:Concept {id: '검증'})
SET     n.name = '검증',
    n.name_kr = '검증',
    n.domain = 'SW',
    n.definition = '인력 배치 적절성 검증';

MERGE (n:Concept {id: '문서화'})
SET     n.name = '문서화',
    n.name_kr = '문서화',
    n.domain = 'SW',
    n.definition = '프로젝트 문서화';

MERGE (n:Threat {id: '가변적_요구_대응'})
SET     n.name = '가변적 요구 대응',
    n.name_kr = '가변적 요구 대응',
    n.domain = 'SW',
    n.definition = 'Predictive 보다 Adaptive 우선';

MERGE (n:Concept {id: '고객_만족'})
SET     n.name = '고객 만족',
    n.name_kr = '고객 만족',
    n.domain = 'SW',
    n.definition = '요구사항 변화를 적극 반영하여 요구 사항 신속 적용(Big Q)';

MERGE (n:Concept {id: '개발자_동기부여'})
SET     n.name = '개발자 동기부여',
    n.name_kr = '개발자 동기부여',
    n.domain = 'SW',
    n.definition = '개발자 환경 고려';

MERGE (n:Concept {id: 'pm_역할_변화'})
SET     n.name = 'PM 역할 변화',
    n.name_kr = 'PM 역할 변화',
    n.domain = 'SW',
    n.definition = '관리자 -> 촉진자 역할 변화';

MERGE (n:Concept {id: 'sweet_spots'})
SET     n.name = 'Sweet Spots',
    n.name_kr = 'Sweet Spots',
    n.domain = 'SW',
    n.definition = '한 작업실에 5~8명 구성',
    n.aliases = ['Sweet Spots'];

MERGE (n:Concept {id: '구조적_방법론'})
SET     n.name = '구조적 방법론',
    n.name_kr = '구조적 방법론',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개변동고_공계문계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '고요배의_동대소지_좋단자효'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'delivery_time_감소'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '창의력_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '생산성_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '제품_품질_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '리스크_관리_부족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '체계적인_문서_및_지침_부족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '감리대응_문제'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '사전준비'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '요구정의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '분석/설계'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개발/검증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Method {id: '배포'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '회고'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '준비'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '측정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '우선순위'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '배치'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '검증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '문서화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Threat {id: '가변적_요구_대응'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '고객_만족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개발자_동기부여'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'pm_역할_변화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'sweet_spots'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Method {id: 'agile_방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '구조적_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Document {id: 'SW_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개변동고_공계문계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고요배의_동대소지_좋단자효'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delivery_time_감소'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '창의력_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산성_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품_품질_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리스크_관리_부족'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체계적인_문서_및_지침_부족'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리대응_문제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전준비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석/설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발/검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '배포'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선순위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '가변적_요구_대응'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_만족'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자_동기부여'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pm_역할_변화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sweet_spots'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_031.1: 소프트웨어 발주 프로세스 총정리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_031.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '소프트웨어_발주_프로세스_총정리'})
SET     n.name = '소프트웨어 발주 프로세스 총정리',
    n.name_kr = '소프트웨어 발주 프로세스 총정리',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주준비'})
SET     n.name = '발주준비',
    n.name_kr = '발주준비',
    n.domain = 'SW';

MERGE (n:Concept {id: '제안요청서_준비'})
SET     n.name = '제안요청서 준비',
    n.name_kr = '제안요청서 준비',
    n.domain = 'SW';

MERGE (n:Concept {id: '계약_및_변경'})
SET     n.name = '계약 및 변경',
    n.name_kr = '계약 및 변경',
    n.domain = 'SW';

MERGE (n:Concept {id: '공급자_관리'})
SET     n.name = '공급자 관리',
    n.name_kr = '공급자 관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '인수_및_종료'})
SET     n.name = '인수 및 종료',
    n.name_kr = '인수 및 종료',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_관련_행정적_측면'})
SET     n.name = '발주 관련 행정적 측면',
    n.name_kr = '발주 관련 행정적 측면',
    n.domain = 'SW',
    n.definition = '공공 SW 사업 법제도 준수 필요';

MERGE (n:Concept {id: '보안성_검토,_sw_영향평가_미승인_우려'})
SET     n.name = '보안성 검토, SW 영향평가 미승인 우려',
    n.name_kr = '보안성 검토, SW 영향평가 미승인 우려',
    n.domain = 'SW',
    n.definition = '시스템 아키텍처, 보안 측면에서의 보안성 미승인 발생, 시장 영향 발생 시 SW영향평가 기준 사업 재검토 발생';

MERGE (n:Concept {id: '정보화_사업_과업_측면'})
SET     n.name = '정보화 사업 과업 측면',
    n.name_kr = '정보화 사업 과업 측면',
    n.domain = 'SW',
    n.definition = '이해관계자 도출 모호';

MERGE (n:Concept {id: '법_제도,_운영환경_변화'})
SET     n.name = '법 제도, 운영환경 변화',
    n.name_kr = '법 제도, 운영환경 변화',
    n.domain = 'SW',
    n.definition = '정보화 사업 계획 후 관련 법이나 제도, 운영환경 등의 변화로 인한 과업 변화';

MERGE (n:Concept {id: '정보화_사업_제안_측면'})
SET     n.name = '정보화 사업 제안 측면',
    n.name_kr = '정보화 사업 제안 측면',
    n.domain = 'SW',
    n.definition = '경쟁입찰 참여 시 비용 발생';

MERGE (n:Concept {id: '수주기업_수익성_저조_및_악화'})
SET     n.name = '수주기업 수익성 저조 및 악화',
    n.name_kr = '수주기업 수익성 저조 및 악화',
    n.domain = 'SW',
    n.definition = '공공 SW 사업의 수익성은 매우 낮으며, 그마저도 악화되고 있음';

MERGE (n:Concept {id: '정보화_사업_수주_측면'})
SET     n.name = '정보화 사업 수주 측면',
    n.name_kr = '정보화 사업 수주 측면',
    n.domain = 'SW',
    n.definition = '요구사항 구체화 필요';

MERGE (n:Concept {id: 'sw_사업_수익성_악화'})
SET     n.name = 'SW 사업 수익성 악화',
    n.name_kr = 'SW 사업 수익성 악화',
    n.domain = 'SW',
    n.definition = '가격 평가 수행 시 사업금액의 80%가 가격평가 시 만점으로 책정되어 있음';

MERGE (n:Concept {id: '발주_관련_행정적_측면에서_개선_방안'})
SET     n.name = '발주 관련 행정적 측면에서 개선 방안',
    n.name_kr = '발주 관련 행정적 측면에서 개선 방안',
    n.domain = 'SW',
    n.definition = 'SW 발주기술지원센터 활용';

MERGE (n:Concept {id: '과업심의위원회_강화_수행'})
SET     n.name = '과업심의위원회 강화 수행',
    n.name_kr = '과업심의위원회 강화 수행',
    n.domain = 'SW',
    n.definition = '과업내용 확정, 요구사항 명확화, 적정 사업기간 등의 산정';

MERGE (n:Concept {id: '정보화_사업_과업측면에서_개선_방안'})
SET     n.name = '정보화 사업 과업측면에서 개선 방안',
    n.name_kr = '정보화 사업 과업측면에서 개선 방안',
    n.domain = 'SW',
    n.definition = '단계별 발주 검토, ISP/ISMP 선 수행';

MERGE (n:Concept {id: '법_제도,_운영_환경_변화_대비_추경_예산_확보'})
SET     n.name = '법 제도, 운영 환경 변화 대비 추경 예산 확보',
    n.name_kr = '법 제도, 운영 환경 변화 대비 추경 예산 확보',
    n.domain = 'SW',
    n.definition = '과업 변경 발생 시 추경 확보를 통한 계약 변경';

MERGE (n:Concept {id: '정보화_사업_제안_측면에서_개선_방안'})
SET     n.name = '정보화 사업 제안 측면에서 개선 방안',
    n.name_kr = '정보화 사업 제안 측면에서 개선 방안',
    n.domain = 'SW',
    n.definition = '제안서 보상 기준 강화';

MERGE (n:Concept {id: '도메인_특화_인력_구성'})
SET     n.name = '도메인 특화 인력 구성',
    n.name_kr = '도메인 특화 인력 구성',
    n.domain = 'SW',
    n.definition = '참여하는 사업의 도메인에 특화된 인력으로 구성';

MERGE (n:Concept {id: '정보화_사업_수주_측면에서_개선_방안'})
SET     n.name = '정보화 사업 수주 측면에서 개선 방안',
    n.name_kr = '정보화 사업 수주 측면에서 개선 방안',
    n.domain = 'SW',
    n.definition = '정보화 사업 ROI 검토';

MERGE (n:Concept {id: 'rfi_수행_기관_위주로_사업_참여'})
SET     n.name = 'RFI 수행 기관 위주로 사업 참여',
    n.name_kr = 'RFI 수행 기관 위주로 사업 참여',
    n.domain = 'SW',
    n.definition = 'RFP 작성 전 RFI 요청 기관 대상으로 사업 참여';

// --- 관계 ---

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '발주준비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '제안요청서_준비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '계약_및_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '공급자_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '인수_및_종료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '발주_관련_행정적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '보안성_검토,_sw_영향평가_미승인_우려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_과업_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '법_제도,_운영환경_변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_제안_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '수주기업_수익성_저조_및_악화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_수주_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: 'sw_사업_수익성_악화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '발주_관련_행정적_측면에서_개선_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '과업심의위원회_강화_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_과업측면에서_개선_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '법_제도,_운영_환경_변화_대비_추경_예산_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_제안_측면에서_개선_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '도메인_특화_인력_구성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: '정보화_사업_수주_측면에서_개선_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Concept {id: 'rfi_수행_기관_위주로_사업_참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Document {id: 'SW_031.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소프트웨어_발주_프로세스_총정리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주준비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제안요청서_준비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계약_및_변경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공급자_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인수_및_종료'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_관련_행정적_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안성_검토,_sw_영향평가_미승인_우려'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_과업_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법_제도,_운영환경_변화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_제안_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수주기업_수익성_저조_및_악화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_수주_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_사업_수익성_악화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_관련_행정적_측면에서_개선_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업심의위원회_강화_수행'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_과업측면에서_개선_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법_제도,_운영_환경_변화_대비_추경_예산_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_제안_측면에서_개선_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도메인_특화_인력_구성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_사업_수주_측면에서_개선_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfi_수행_기관_위주로_사업_참여'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_031.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_031.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_032: 공공 소프트웨어 사업 제안 요청서 작성 가이드라인
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_032'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
SET     n.name = '공공 소프트웨어 사업 제안 요청서 작성 가이드라인',
    n.name_kr = '공공 소프트웨어 사업 제안 요청서 작성 가이드라인',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '사업개요'})
SET     n.name = '사업개요',
    n.name_kr = '사업개요',
    n.domain = 'SW';

MERGE (n:Concept {id: '현황_및_문제점'})
SET     n.name = '현황 및 문제점',
    n.name_kr = '현황 및 문제점',
    n.domain = 'SW';

MERGE (n:Concept {id: '사업추진_방안'})
SET     n.name = '사업추진 방안',
    n.name_kr = '사업추진 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '제안요청내용'})
SET     n.name = '제안요청내용',
    n.name_kr = '제안요청내용',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Concept {id: '사업개요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Concept {id: '현황_및_문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Concept {id: '사업추진_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Concept {id: '제안요청내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Document {id: 'SW_032'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '공공_소프트웨어_사업_제안_요청서_작성_가이드라인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업개요'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현황_및_문제점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업추진_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제안요청내용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_033.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_033.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_033.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_033.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_033.3: SW영향평가제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_033.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw영향평가제'})
SET     n.name = 'SW영향평가제',
    n.name_kr = 'SW영향평가제',
    n.domain = 'SW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '2)_대국민서비스형'})
SET     n.name = '2) 대국민서비스형',
    n.name_kr = '2) 대국민서비스형',
    n.domain = 'SW';

MERGE (n:Concept {id: '2)_실행유의'})
SET     n.name = '2) 실행유의',
    n.name_kr = '2) 실행유의',
    n.domain = 'SW';

MERGE (n:Concept {id: '도입_배경'})
SET     n.name = '도입 배경',
    n.name_kr = '도입 배경',
    n.domain = 'SW',
    n.definition = '민간 소프트웨어 기업의 경쟁력 확보 - 공공과 민간의 중복개발에 따른 예산 낭비 방지 - 공공과 민간의 불필요한 경쟁 방지 - 국가기관 등이 소프트웨어를 무상 배포함에 따라 민간 소프트웨어 시장을 위축시켜 소프트웨어 산업 육성을 저해한다는 문제가 지속 제기 - 업무효율성 증진, 비용절감, 대국민 서비스 향상 등의 이유로 소프트웨어를 개발한 후 무상 배포함에';

MERGE (n:Concept {id: '법적근거'})
SET     n.name = '법적근거',
    n.name_kr = '법적근거',
    n.domain = 'SW',
    n.definition = '「소프트웨어 진흥법」 제43조(소프트웨어사업 영향평가)';

MERGE (n:Concept {id: '대상기관'})
SET     n.name = '대상기관',
    n.name_kr = '대상기관',
    n.domain = 'SW',
    n.definition = '국가기관, 지방자치단체 또는 국가·지방자치단체가 투자하거나 출연한 법인·단체로서 대통령으로 정하는 기관 (「소프트웨어 진흥법」 제21조 제4항) - 「소프트웨어 진흥법 시행령」 제21조 규정에 해당하는 모든 기관';

MERGE (n:Concept {id: '대상사업'})
SET     n.name = '대상사업',
    n.name_kr = '대상사업',
    n.domain = 'SW',
    n.definition = '국가기관등의 장이 발주하는 소프트웨어 기획, 구축, 유지관리 사업 - 단, 대통령령으로 정하는 소프트웨어 사업은 제외 (「소프트웨어 진흥법」제43조 제1항, 「소프트웨어 진흥법 시행령」제 36조, 「소프트웨어사업 계약 및 관리감독에 관한 지침」제6조)';

MERGE (n:Concept {id: '제외사업'})
SET     n.name = '제외사업',
    n.name_kr = '제외사업',
    n.domain = 'SW',
    n.definition = '1. 상용소프트웨어의 구매·설치 및 유지ㆍ관리 사업 2. 국가안보, 치안, 외교 등의 분야와 관련된 소프트웨어사업으로서 민간이 서비스하는 것이 부적합한 소프트웨어사업 3. 민간투자형 소프트웨어사업 4. 그 밖에 민간 소프트웨어 시장에 미치는 영향을 고려하여 과학기술정보통신부장관이 정하여 고시하는 소프트웨어사업 (1. 단일기관 내부사용 목적의 소프트웨어사업';

MERGE (n:Concept {id: '평가항목'})
SET     n.name = '평가항목',
    n.name_kr = '평가항목',
    n.domain = 'SW',
    n.definition = '민간 소프트웨어 시장 침해가능성';

MERGE (n:Concept {id: '소프트웨어사업의_필요성ㆍ공공성'})
SET     n.name = '소프트웨어사업의 필요성ㆍ공공성',
    n.name_kr = '소프트웨어사업의 필요성ㆍ공공성',
    n.domain = 'SW',
    n.definition = '민간 소프트웨어가 있음에도 불구하고 사업을 추진해야 하는 필요성ㆍ공공성을 기재';

MERGE (n:Concept {id: '평가결과'})
SET     n.name = '평가결과',
    n.name_kr = '평가결과',
    n.domain = 'SW';

MERGE (n:Concept {id: '민간_소프트웨어_기업의_경쟁력_확보'})
SET     n.name = '민간 소프트웨어 기업의 경쟁력 확보',
    n.name_kr = '민간 소프트웨어 기업의 경쟁력 확보',
    n.domain = 'SW',
    n.definition = '공공과 민간의 중복개발에 따른 예산 낭비 방지';

MERGE (n:Concept {id: '사업유형별_소프트웨어사업_영향평가'})
SET     n.name = '사업유형별 소프트웨어사업 영향평가',
    n.name_kr = '사업유형별 소프트웨어사업 영향평가',
    n.domain = 'SW',
    n.definition = '기획 사업';

MERGE (n:Concept {id: '구축_사업'})
SET     n.name = '구축 사업',
    n.name_kr = '구축 사업',
    n.domain = 'SW',
    n.definition = '소프트웨어 구축 사업 발주 전, 주요기능과 동일·유사한 소프트웨어를 민간 에서 제공하는지 여부 사전 검토';

MERGE (n:Concept {id: '유지관리_사업'})
SET     n.name = '유지관리 사업',
    n.name_kr = '유지관리 사업',
    n.domain = 'SW',
    n.definition = '소프트웨어 유지관리 사업 중 기능 개선 및 추가 시 동일·유사한 소프트웨어를 민간에서 제공하는지 여부 검토';

MERGE (n:Concept {id: '적용범위'})
SET     n.name = '적용범위',
    n.name_kr = '적용범위',
    n.domain = 'SW',
    n.definition = '연구개발과제';

MERGE (n:Concept {id: '법령에_따른_기관_고유업무'})
SET     n.name = '법령에 따른 기관 고유업무',
    n.name_kr = '법령에 따른 기관 고유업무',
    n.domain = 'SW',
    n.definition = '전문위원 간 상호점검 절차 정립';

MERGE (n:Concept {id: '부처_간_중복_사업'})
SET     n.name = '부처 간 중복 사업',
    n.name_kr = '부처 간 중복 사업',
    n.domain = 'SW',
    n.definition = '영향평가 범위 제외, 발견시 한국정보화진흥원에 이관';

MERGE (n:Concept {id: '평가_프로세스_개선'})
SET     n.name = '평가 프로세스 개선',
    n.name_kr = '평가 프로세스 개선',
    n.domain = 'SW',
    n.definition = '부실평가 방지';

MERGE (n:Concept {id: '평가_일관성_확보'})
SET     n.name = '평가 일관성 확보',
    n.name_kr = '평가 일관성 확보',
    n.domain = 'SW',
    n.definition = '선례확보, 평가위원 간의 정보 공유, 검증 프로세스 및 기준 강화';

MERGE (n:Concept {id: '정책_우선순위_제약'})
SET     n.name = '정책 우선순위 제약',
    n.name_kr = '정책 우선순위 제약',
    n.domain = 'SW',
    n.definition = '정부 정책에 의한 우선순위 상에서 영향평가 선행 근거 마련';

MERGE (n:Concept {id: '정성적_평가기준_보완'})
SET     n.name = '정성적 평가기준 보완',
    n.name_kr = '정성적 평가기준 보완',
    n.domain = 'SW',
    n.definition = '정성적 평가 척도의 구체화를 통한 세분화된 기준 마련';

MERGE (n:Concept {id: '미제출_사업_한계보완'})
SET     n.name = '미제출 사업 한계보완',
    n.name_kr = '미제출 사업 한계보완',
    n.domain = 'SW',
    n.definition = '기재부 예산안편성 세부지침 연계, SW 영향평가를 거치도록 제도화';

MERGE (n:Concept {id: '법적_근거_강화'})
SET     n.name = '법적 근거 강화',
    n.name_kr = '법적 근거 강화',
    n.domain = 'SW',
    n.definition = '법적근거 강화';

MERGE (n:Concept {id: '상시_sw영향평가_법적_근거_마련'})
SET     n.name = '상시 SW영향평가 법적 근거 마련',
    n.name_kr = '상시 SW영향평가 법적 근거 마련',
    n.domain = 'SW',
    n.definition = '상위 기관장의 개선권고에 대한 효력 규정 진행 중인 사업에 대한 자체 SW 영향평가 의무화 조정권한 강화-상위 기관장 직권 강화';

MERGE (n:Concept {id: '인력확보'})
SET     n.name = '인력확보',
    n.name_kr = '인력확보',
    n.domain = 'SW',
    n.definition = '전담팀 신설';

// --- 관계 ---

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '2)_대국민서비스형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '2)_실행유의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '도입_배경'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '법적근거'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '대상기관'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '대상사업'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '제외사업'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '평가항목'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '소프트웨어사업의_필요성ㆍ공공성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '평가결과'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '민간_소프트웨어_기업의_경쟁력_확보'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '사업유형별_소프트웨어사업_영향평가'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '구축_사업'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '유지관리_사업'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '적용범위'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '법령에_따른_기관_고유업무'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '부처_간_중복_사업'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '평가_프로세스_개선'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '평가_일관성_확보'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '정책_우선순위_제약'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '정성적_평가기준_보완'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '미제출_사업_한계보완'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '법적_근거_강화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '상시_sw영향평가_법적_근거_마련'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Concept {id: '인력확보'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Document {id: 'SW_033.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw영향평가제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_대국민서비스형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_실행유의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도입_배경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적근거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대상기관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대상사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제외사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업의_필요성ㆍ공공성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가결과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간_소프트웨어_기업의_경쟁력_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업유형별_소프트웨어사업_영향평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축_사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지관리_사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용범위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법령에_따른_기관_고유업무'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부처_간_중복_사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_프로세스_개선'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_일관성_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책_우선순위_제약'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정성적_평가기준_보완'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미제출_사업_한계보완'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_근거_강화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상시_sw영향평가_법적_근거_마련'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인력확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_034.1: 상용SW 직접구매 제도(구, 분리발주)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '상용sw_직접구매_제도'})
SET     n.name = '상용SW 직접구매 제도(구, 분리발주)',
    n.name_kr = '상용SW 직접구매 제도(구, 분리발주)',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '분리발주'})
SET     n.name = '분리발주',
    n.name_kr = '분리발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '3억원_이상'})
SET     n.name = '3억원 이상',
    n.name_kr = '3억원 이상',
    n.domain = 'SW';

MERGE (n:Concept {id: '5천만원'})
SET     n.name = '5천만원',
    n.name_kr = '5천만원',
    n.domain = 'SW';

MERGE (n:Concept {id: '민간투자형_소프트웨어_산업'})
SET     n.name = '민간투자형 소프트웨어 산업',
    n.name_kr = '민간투자형 소프트웨어 산업',
    n.domain = 'SW';

MERGE (n:Concept {id: '구매_및_대상'})
SET     n.name = '구매 및 대상',
    n.name_kr = '구매 및 대상',
    n.domain = 'SW',
    n.definition = '소프트웨어 진흥법';

MERGE (n:Concept {id: '소프트웨어사업_계약_및_관리감독에_관한_지침'})
SET     n.name = '소프트웨어사업 계약 및 관리감독에 관한 지침',
    n.name_kr = '소프트웨어사업 계약 및 관리감독에 관한 지침',
    n.domain = 'SW',
    n.definition = '제7조(상용소프트웨어 직접구매 대상)';

MERGE (n:Concept {id: '예외'})
SET     n.name = '예외',
    n.name_kr = '예외',
    n.domain = 'SW',
    n.definition = '제8조(상용소프트웨어 직접구매의 제외)';

MERGE (n:Concept {id: '국가를_당사자로_하는_계약에_관한_법률_시행규칙'})
SET     n.name = '국가를 당사자로 하는 계약에 관한 법률 시행규칙',
    n.name_kr = '국가를 당사자로 하는 계약에 관한 법률 시행규칙',
    n.domain = 'SW',
    n.definition = '제84조(소프트웨어사업에 대한 소프트웨어의 관급)';

MERGE (n:Concept {id: '지방자치단체를_당사자로_하는_계약에_관한_법률_시행규칙'})
SET     n.name = '지방자치단체를 당사자로 하는 계약에 관한 법률 시행규칙',
    n.name_kr = '지방자치단체를 당사자로 하는 계약에 관한 법률 시행규칙',
    n.domain = 'SW',
    n.definition = '제87조(소프트웨어 제품 및 콘텐츠 제작의 관급)';

MERGE (n:Concept {id: '조달청_내자구매업무_처리규정'})
SET     n.name = '조달청 내자구매업무 처리규정',
    n.name_kr = '조달청 내자구매업무 처리규정',
    n.domain = 'SW',
    n.definition = '제6조의2(소프트웨어 분리발주 제외사유 사전검토 요청)';

MERGE (n:Concept {id: '예외_기준'})
SET     n.name = '예외 기준',
    n.name_kr = '예외 기준',
    n.domain = 'SW';

MERGE (n:Concept {id: '세부_설명'})
SET     n.name = '세부 설명',
    n.name_kr = '세부 설명',
    n.domain = 'SW';

MERGE (n:Concept {id: '사업발주'})
SET     n.name = '사업발주',
    n.name_kr = '사업발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가/계약'})
SET     n.name = '평가/계약',
    n.name_kr = '평가/계약',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발'})
SET     n.name = '개발',
    n.name_kr = '개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '분리_발주'})
SET     n.name = '분리 발주',
    n.name_kr = '분리 발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '분할_발주'})
SET     n.name = '분할 발주',
    n.name_kr = '분할 발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SW';

MERGE (n:Concept {id: '상세_사유'})
SET     n.name = '상세 사유',
    n.name_kr = '상세 사유',
    n.domain = 'SW';

MERGE (n:Concept {id: '해결_방안'})
SET     n.name = '해결 방안',
    n.name_kr = '해결 방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '상세_방안'})
SET     n.name = '상세 방안',
    n.name_kr = '상세 방안',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '분리발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '3억원_이상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '5천만원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '민간투자형_소프트웨어_산업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '구매_및_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '소프트웨어사업_계약_및_관리감독에_관한_지침'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '예외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '국가를_당사자로_하는_계약에_관한_법률_시행규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '지방자치단체를_당사자로_하는_계약에_관한_법률_시행규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '조달청_내자구매업무_처리규정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '예외_기준'})
MERGE (b:Concept {id: '세부_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '예외_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '세부_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사업발주'})
MERGE (b:Concept {id: '평가/계약'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '사업발주'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '사업발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '평가/계약'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '평가/계약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분리_발주'})
MERGE (b:Concept {id: '분할_발주'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '분리_발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '분할_발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Concept {id: '상세_사유'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '상세_사유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Concept {id: '상세_방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Concept {id: '상세_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Document {id: 'SW_034.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '상용sw_직접구매_제도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분리발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3억원_이상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5천만원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간투자형_소프트웨어_산업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구매_및_대상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업_계약_및_관리감독에_관한_지침'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가를_당사자로_하는_계약에_관한_법률_시행규칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지방자치단체를_당사자로_하는_계약에_관한_법률_시행규칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조달청_내자구매업무_처리규정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예외_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_설명'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가/계약'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분리_발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할_발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_사유'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_034.2: SW 분할발주
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_분할발주'})
SET     n.name = 'SW 분할발주',
    n.name_kr = 'SW 분할발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '공정분할'})
SET     n.name = '공정분할',
    n.name_kr = '공정분할',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능분할'})
SET     n.name = '기능분할',
    n.name_kr = '기능분할',
    n.domain = 'SW';

MERGE (n:Concept {id: '부품분할'})
SET     n.name = '부품분할',
    n.name_kr = '부품분할',
    n.domain = 'SW';

MERGE (n:Concept {id: '기본설계'})
SET     n.name = '기본설계',
    n.name_kr = '기본설계',
    n.domain = 'SW';

MERGE (n:Concept {id: '상세설계_이후로_구분'})
SET     n.name = '상세설계 이후로 구분',
    n.name_kr = '상세설계 이후로 구분',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_분리발주'})
SET     n.name = 'SW 분리발주',
    n.name_kr = 'SW 분리발주',
    n.domain = 'SW';

MERGE (n:Concept {id: '일괄발주'})
SET     n.name = '일괄발주 (현행)',
    n.name_kr = '일괄발주 (현행)',
    n.domain = 'SW';

MERGE (n:Concept {id: '분할발주'})
SET     n.name = '분할발주',
    n.name_kr = '분할발주',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '공정분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '기능분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '부품분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '기본설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '상세설계_이후로_구분'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분리발주'})
MERGE (b:Concept {id: 'sw_분할발주'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: 'sw_분리발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일괄발주'})
MERGE (b:Concept {id: '분할발주'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '일괄발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Concept {id: '분할발주'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Document {id: 'SW_034.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_분할발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공정분할'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능분할'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부품분할'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세설계_이후로_구분'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_분리발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일괄발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할발주'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_034.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_034.4: 민간투자형 SW사업(PPP)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'ppp'})
SET     n.name = 'PPP',
    n.name_kr = '민간투자형 SW사업',
    n.domain = 'SW',
    n.aliases = ['PPP', '민간투자형 SW사업'];

MERGE (n:Concept {id: '소프트웨어진흥법'})
SET     n.name = '소프트웨어진흥법',
    n.name_kr = '소프트웨어진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'bto'})
SET     n.name = 'BTO',
    n.name_kr = 'BTO',
    n.domain = 'SW',
    n.aliases = ['BTO'];

MERGE (n:Concept {id: 'btl'})
SET     n.name = 'BTL',
    n.name_kr = 'BTL',
    n.domain = 'SW',
    n.aliases = ['BTL'];

MERGE (n:Concept {id: '민간협력_sw'})
SET     n.name = '민간협력 SW',
    n.name_kr = '민간협력 SW',
    n.domain = 'SW';

MERGE (n:Concept {id: '민관협력방식의_공공사업'})
SET     n.name = '민관협력방식의 공공사업',
    n.name_kr = '민관협력방식의 공공사업',
    n.domain = 'SW',
    n.definition = '민관협력을 통한 사회기반시설 구축사업 등 공공서비스 영역에 민관협력방식의 도입이 일반화';

MERGE (n:Concept {id: '정부예산_한계_극복'})
SET     n.name = '정부예산 한계 극복',
    n.name_kr = '정부예산 한계 극복',
    n.domain = 'SW',
    n.definition = '운영의 효율성 제고와 정부예산의 한계를 극복하기 위해 민관협력방식을 도입필요';

MERGE (n:Concept {id: '민간의_역량_활용'})
SET     n.name = '민간의 역량 활용',
    n.name_kr = '민간의 역량 활용',
    n.domain = 'SW',
    n.definition = '민간기업이 공공 서비스 운영의 수익을 취하는 대신 위험을 직접 부담하면서 기업 스스로가 기술 및 운영노하우를 적극적으로 사업에 투입하도록 유도';

MERGE (n:Concept {id: '새로운_수익모델을_통한_산업진흥'})
SET     n.name = '새로운 수익모델을 통한 산업진흥',
    n.name_kr = '새로운 수익모델을 통한 산업진흥',
    n.domain = 'SW',
    n.definition = '공공서비스 이용료·수수료 등을 원천으로 하되 기업역량에 따라 부대사업을 통해 보다 높은 수익을 거둘 수 있도록 허용';

MERGE (n:Concept {id: 'sw융합기술을_활용한_공공사업'})
SET     n.name = 'SW융합기술을 활용한 공공사업',
    n.name_kr = 'SW융합기술을 활용한 공공사업',
    n.domain = 'SW',
    n.definition = 'SW기반의 융·복합 기술의 발전에 따라 사회기반시설이나 국민생활문제해결에서도 중요한 위치를 차지';

MERGE (n:Concept {id: '사회기반시설과_sw'})
SET     n.name = '사회기반시설과 SW',
    n.name_kr = '사회기반시설과 SW',
    n.domain = 'SW',
    n.definition = '전자통관시스템, ITS 등 SW기술을 중심으로 사회기반시설 구축사업이 증가';

MERGE (n:Concept {id: '민관협력기반_사회기반시설형_sw사업'})
SET     n.name = '민관협력기반 사회기반시설형 SW사업',
    n.name_kr = '민관협력기반 사회기반시설형 SW사업',
    n.domain = 'SW',
    n.definition = '사회기반시설 구축 시 전통적으로 사업을 민관협력방식으로 추진하는 사례가 많고, 민관협력의 다양한 이점을 살리기 유리';

MERGE (n:Concept {id: 'sw를_활용한_사회문제해결'})
SET     n.name = 'SW를 활용한 사회문제해결',
    n.name_kr = 'SW를 활용한 사회문제해결',
    n.domain = 'SW',
    n.definition = 'SW기반의 융·복합 기술이 사회문제의 원인 진단과 효과적인 개선을 위한 주요 도구로 주목받으며 이를 활용하여 사회문제를 해결하려는 움직임이 증가';

MERGE (n:Concept {id: '민관협력기반_사회문제해결형_sw사업'})
SET     n.name = '민관협력기반 사회문제해결형 SW사업',
    n.name_kr = '민관협력기반 사회문제해결형 SW사업',
    n.domain = 'SW',
    n.definition = 'IT신기술을 기반으로 국가 현안의 적극 해결은 물론 민간의 참여를 통한 새로운 서비스 모델 발굴, 시장 확대 등 공공의 편익과 경제적 효과 모두에 초점';

MERGE (n:Concept {id: '수익형'})
SET     n.name = '수익형',
    n.name_kr = '수익형',
    n.domain = 'SW',
    n.definition = '시스템 (SW) 사용자가 지불하는 사용료로 투자비를 회수하는 방식의 사업 - (대상사업) 시스템 사용자에게 사용료 부과로 투자비 회수가 가능한 사업 - (투자비 회수) 시스템사용자사용료';

MERGE (n:Concept {id: '요건'})
SET     n.name = '요건',
    n.name_kr = '요건',
    n.domain = 'SW',
    n.definition = '민간부문이 이미 개발한 소프트웨어';

MERGE (n:Concept {id: '서비스_형태로_이용'})
SET     n.name = '서비스 형태로 이용',
    n.name_kr = '서비스 형태로 이용',
    n.domain = 'SW',
    n.definition = '클라우드 기반의 SaaS(Software as a Service)';

MERGE (n:Concept {id: '사용료를_지급하는_방식'})
SET     n.name = '사용료를 지급하는 방식',
    n.name_kr = '사용료를 지급하는 방식',
    n.domain = 'SW',
    n.definition = '사용한 기간(월, 연단위), 라이선스, Core 수 등 사용한 만큼 사용료를 지출하는 방식';

MERGE (n:Law {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW',
    n.definition = '「클라우드컴퓨팅법 시행령」 제8조의 2에 따른 디지털서비스를 이용하는 사업은 민간투자형 SW사업(구매형)로 고시한 것으로 간주 (디지털서비스 전문계약제도적용)';

MERGE (n:Concept {id: '민간자본_유치'})
SET     n.name = '민간자본 유치',
    n.name_kr = '민간자본 유치',
    n.domain = 'SW',
    n.definition = '공공 및 민간 SW 시장 활성화';

MERGE (n:Concept {id: '가이드라인_마련'})
SET     n.name = '가이드라인 마련',
    n.name_kr = '가이드라인 마련',
    n.domain = 'SW',
    n.definition = '공공기관 발주 가이드 등 개정 점검';

MERGE (n:Concept {id: '시범사업_지원'})
SET     n.name = '시범사업 지원',
    n.name_kr = '시범사업 지원',
    n.domain = 'SW',
    n.definition = '공공과 민간 매칭, 전문 과제 시범 수행';

MERGE (n:Concept {id: '기업간_동반_성장'})
SET     n.name = '기업간 동반 성장',
    n.name_kr = '기업간 동반 성장',
    n.domain = 'SW',
    n.definition = '대기업, 중소/중견기업 상생 협력형 체제';

MERGE (n:Concept {id: '임대형'})
SET     n.name = '임대형',
    n.name_kr = '임대형',
    n.domain = 'SW',
    n.definition = 'BTL (Build-Transfer-Lease)';

MERGE (n:Concept {id: 'build_operate_transfer'})
SET     n.name = 'Build-Operate-Transfer',
    n.name_kr = 'BOT',
    n.domain = 'SW',
    n.definition = '시설의 준공 후 일정기간 동안 사업시행자에게 해당 시설의 소유권이 인정되며 그 기간이 만료되면 시설소유권이 국가 또는 지방자치단체에 귀속되는 방식',
    n.aliases = ['Build-Operate-Transfer', 'BOT'];

MERGE (n:Concept {id: 'build_own_operate'})
SET     n.name = 'Build-Own-Operate',
    n.name_kr = 'BOO',
    n.domain = 'SW',
    n.definition = '건설의 준공과 동시에 사업시행자에게 해당 시설의 소유권이 인정되는 방식',
    n.aliases = ['Build-Own-Operate', 'BOO'];

MERGE (n:Concept {id: '공공_sw사업'})
SET     n.name = '공공 SW사업',
    n.name_kr = '공공 SW사업',
    n.domain = 'SW';

MERGE (n:Concept {id: '민간_투자형_sw사업'})
SET     n.name = '민간 투자형 SW사업',
    n.name_kr = '민간 투자형 SW사업',
    n.domain = 'SW';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'SW',
    n.definition = '서울시 스마트 교통카드 시스템';

MERGE (n:Concept {id: '안산시_u-city_구축'})
SET     n.name = '안산시 U-City 구축',
    n.name_kr = '안산시 U-City 구축',
    n.domain = 'SW',
    n.definition = 'BTL 방식으로 안산시가 KT 컨소시업과 U-City 인프라 구축';

MERGE (n:Concept {id: '국외'})
SET     n.name = '국외',
    n.name_kr = '국외',
    n.domain = 'SW',
    n.definition = '싱가포르 전자 통관망 TradeNet';

MERGE (n:Technology {id: '뉴욕시_linknyc'})
SET     n.name = '뉴욕시 LinkNYC',
    n.name_kr = '뉴욕시 LinkNYC',
    n.domain = 'SW',
    n.definition = 'PPP 사업으로 노후화된 공중전화부스를 뉴욕시와 CityBridge가 협력, 무료 Wifi 및 모바일 기기충전등 서비스를 제공하는 부스로 전환/구축';

// --- 관계 ---

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '소프트웨어진흥법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'bto'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'btl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민간협력_sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민관협력방식의_공공사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '정부예산_한계_극복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민간의_역량_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '새로운_수익모델을_통한_산업진흥'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'sw융합기술을_활용한_공공사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '사회기반시설과_sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민관협력기반_사회기반시설형_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'sw를_활용한_사회문제해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민관협력기반_사회문제해결형_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '수익형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '요건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '서비스_형태로_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '사용료를_지급하는_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Law {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민간자본_유치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '가이드라인_마련'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '시범사업_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '기업간_동반_성장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '임대형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'build_operate_transfer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: 'build_own_operate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공공_sw사업'})
MERGE (b:Concept {id: '민간_투자형_sw사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '공공_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '민간_투자형_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '안산시_u-city_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Concept {id: '국외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Technology {id: '뉴욕시_linknyc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Document {id: 'SW_034.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ppp'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bto'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'btl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간협력_sw'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민관협력방식의_공공사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부예산_한계_극복'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간의_역량_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '새로운_수익모델을_통한_산업진흥'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw융합기술을_활용한_공공사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회기반시설과_sw'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민관협력기반_사회기반시설형_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw를_활용한_사회문제해결'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민관협력기반_사회문제해결형_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_형태로_이용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용료를_지급하는_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간자본_유치'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가이드라인_마련'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시범사업_지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업간_동반_성장'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임대형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'build_operate_transfer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'build_own_operate'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간_투자형_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안산시_u-city_구축'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '뉴욕시_linknyc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_034.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.5'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_034.6: AI조달가이드(공공부문 조달 분야 인공지능(AI) 도입)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_034.6'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'ai'})
SET     n.name = 'AI조달가이드(공공부문 조달 분야 인공지능(AI) 도입)',
    n.name_kr = 'AI조달가이드(공공부문 조달 분야 인공지능(AI) 도입)',
    n.domain = 'SW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW';

MERGE (n:Concept {id: '[방해요인]_데이터_활용'})
SET     n.name = '[방해요인] 데이터 활용',
    n.name_kr = '[방해요인] 데이터 활용',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ai기술'})
SET     n.name = 'AI기술',
    n.name_kr = 'AI기술',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ai생태계'})
SET     n.name = 'AI생태계',
    n.name_kr = 'AI생태계',
    n.domain = 'SW';

MERGE (n:Concept {id: '조직문화'})
SET     n.name = '조직문화',
    n.name_kr = '조직문화',
    n.domain = 'SW';

MERGE (n:Concept {id: '조달_메커니즘'})
SET     n.name = '조달 메커니즘',
    n.name_kr = '조달 메커니즘',
    n.domain = 'SW';

MERGE (n:Concept {id: '[개선]_ai전문성_및_전문인력_양성'})
SET     n.name = '[개선] AI전문성 및 전문인력 양성',
    n.name_kr = '[개선] AI전문성 및 전문인력 양성',
    n.domain = 'SW';

MERGE (n:Concept {id: '문제의_명확화'})
SET     n.name = '문제의 명확화',
    n.name_kr = '문제의 명확화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ai편향'})
SET     n.name = 'AI편향',
    n.name_kr = 'AI편향',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ai윤리_이슈'})
SET     n.name = 'AI윤리 이슈',
    n.name_kr = 'AI윤리 이슈',
    n.domain = 'SW';

MERGE (n:Concept {id: '2019.12.31)'})
SET     n.name = '2019.12.31)',
    n.name_kr = '2019.12.31)',
    n.domain = 'SW';

MERGE (n:Concept {id: '2019.10.15)'})
SET     n.name = '2019.10.15)',
    n.name_kr = '2019.10.15)',
    n.domain = 'SW';

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SW',
    n.definition = '데이터 활용의 어려움';

// --- 관계 ---

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '[방해요인]_데이터_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: 'ai기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: 'ai생태계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '조직문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '조달_메커니즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '[개선]_ai전문성_및_전문인력_양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '문제의_명확화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: 'ai편향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: 'ai윤리_이슈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '2019.12.31)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '2019.10.15)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Document {id: 'SW_034.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[방해요인]_데이터_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai기술'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai생태계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직문화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조달_메커니즘'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[개선]_ai전문성_및_전문인력_양성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제의_명확화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai편향'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai윤리_이슈'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2019.12.31)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2019.10.15)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_035.1: 조달청 협상에 의한 계약 제안서평가 세부기준
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_035.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '조달청_협상에_의한_계약_제안서평가_세부기준'})
SET     n.name = '조달청 협상에 의한 계약 제안서평가 세부기준',
    n.name_kr = '조달청 협상에 의한 계약 제안서평가 세부기준',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '정소시운데공디'})
SET     n.name = '정소시운데공디',
    n.name_kr = '정소시운데공디',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '조달청_협상에_의한_계약_제안서평가_세부기준'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '조달청_협상에_의한_계약_제안서평가_세부기준'})
MERGE (b:Concept {id: '정소시운데공디'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '조달청_협상에_의한_계약_제안서평가_세부기준'})
MERGE (b:Document {id: 'SW_035.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '조달청_협상에_의한_계약_제안서평가_세부기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정소시운데공디'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_035.2: 제안서 평가항목 및 배점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_035.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '제안서_평가항목_및_배점'})
SET     n.name = '제안서 평가항목 및 배점',
    n.name_kr = '제안서 평가항목 및 배점',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가항목'})
SET     n.name = '평가항목(예시)',
    n.name_kr = '평가항목(예시)',
    n.domain = 'SW';

MERGE (n:Concept {id: '배점한도'})
SET     n.name = '배점한도',
    n.name_kr = '배점한도',
    n.domain = 'SW';

MERGE (n:Concept {id: '비고'})
SET     n.name = '비고',
    n.name_kr = '비고',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Concept {id: '배점한도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Concept {id: '평가항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '배점한도'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Concept {id: '배점한도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Document {id: 'SW_035.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '제안서_평가항목_및_배점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배점한도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_035.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_035.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_035.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_035.4'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_036.1: 계약체결 방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_036.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '계약체결_방식'})
SET     n.name = '계약체결 방식',
    n.name_kr = '계약체결 방식',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주_프로세스'})
SET     n.name = '발주 프로세스',
    n.name_kr = '발주 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '경쟁적_협상'})
SET     n.name = '경쟁적 협상',
    n.name_kr = '경쟁적 협상',
    n.domain = 'SW';

MERGE (n:Concept {id: '혁신제품'})
SET     n.name = '혁신제품',
    n.name_kr = '혁신제품',
    n.domain = 'SW';

MERGE (n:Concept {id: '기술:가격점수_9:1'})
SET     n.name = '기술:가격점수 9:1',
    n.name_kr = '기술:가격점수 9:1',
    n.domain = 'SW';

MERGE (n:Concept {id: '협상에_의한_계약_체결_방식'})
SET     n.name = '협상에 의한 계약 체결 방식',
    n.name_kr = '협상에 의한 계약 체결 방식',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질등에_따른_낙찰자_결정_방식'})
SET     n.name = '품질등에 따른 낙찰자 결정 방식',
    n.name_kr = '품질등에 따른 낙찰자 결정 방식',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '경쟁적_협상'})
MERGE (b:Concept {id: '발주_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Concept {id: '혁신제품'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Concept {id: '기술:가격점수_9:1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '협상에_의한_계약_체결_방식'})
MERGE (b:Concept {id: '품질등에_따른_낙찰자_결정_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Concept {id: '협상에_의한_계약_체결_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Concept {id: '품질등에_따른_낙찰자_결정_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Document {id: 'SW_036.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '계약체결_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경쟁적_협상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혁신제품'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술:가격점수_9:1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협상에_의한_계약_체결_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질등에_따른_낙찰자_결정_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_036.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_036.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_036.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_036.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_036.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_036.4'})
SET doc.domain = 'SW';

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 438개
// 관계: 895개
// ================================================================