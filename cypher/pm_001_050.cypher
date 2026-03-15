// ================================================================
// PM 도메인 (PM_001 ~ PM_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// PM_005: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_005'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_006: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_006'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_007'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_008: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_008'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_009: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_009'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_010.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_010.2: Hard Skill / Soft Skill
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.2'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'hard_skill_soft_skill'})
SET     n.name = 'Hard Skill / Soft Skill',
    n.name_kr = 'Hard Skill / Soft Skill',
    n.domain = 'PM',
    n.aliases = ['Hard Skill / Soft Skill'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'pm스킬'})
SET     n.name = 'PM스킬',
    n.name_kr = 'PM스킬',
    n.domain = 'PM';

MERGE (n:Concept {id: '대화'})
SET     n.name = '대화',
    n.name_kr = '대화',
    n.domain = 'PM';

MERGE (n:Concept {id: '촉진'})
SET     n.name = '촉진',
    n.name_kr = '촉진',
    n.domain = 'PM';

MERGE (n:Concept {id: '리더십같이_이끌어_내는_능력'})
SET     n.name = '리더십같이 이끌어 내는 능력',
    n.name_kr = '리더십같이 이끌어 내는 능력',
    n.domain = 'PM';

MERGE (n:Concept {id: 'soft_skill'})
SET     n.name = 'Soft Skill',
    n.name_kr = '소프트 스킬',
    n.domain = 'PM',
    n.definition = '자아와 타인을 다루는 능력, 학습에 의해 취득하기 어려운 능력 (\'소프트 스킬\' 이란, 기업 조직 내에서 커뮤니케이션, 협상, 팀워크, 리더십 등을 활성화할 수 있는 능력)',
    n.aliases = ['Soft Skill', '소프트 스킬'];

MERGE (n:Concept {id: 'hard_skill'})
SET     n.name = 'Hard Skill',
    n.name_kr = '하드 스킬',
    n.domain = 'PM',
    n.definition = '해당 Job을 수행하는데 있어 필요한 기술적인(Technical) 요구사항, 체계적인 학습에 의해 향상시킬 수 있는 능력 (생산, 마케팅, 재무, 회계, 인사조직 등의 일련의 경영 전문지식은 \'하드 스킬\'이라 한다.)',
    n.aliases = ['Hard Skill', '하드 스킬'];

// --- 관계 ---

MERGE (a:Concept {id: 'pm스킬'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: 'pm스킬'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: '대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: '촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: '리더십같이_이끌어_내는_능력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: 'soft_skill'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Concept {id: 'hard_skill'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Document {id: 'PM_010.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hard_skill_soft_skill'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pm스킬'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '촉진'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리더십같이_이끌어_내는_능력'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soft_skill'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hard_skill'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_010.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.3'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_010.4: (외부)EPMO, 공공 PMO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.4'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'epmo,_공공_pmo'})
SET     n.name = '(외부)EPMO, 공공 PMO',
    n.name_kr = '(외부)EPMO, 공공 PMO',
    n.domain = 'PM';

MERGE (n:Concept {id: 'pmo'})
SET     n.name = 'PMO',
    n.name_kr = 'PMO',
    n.domain = 'PM',
    n.aliases = ['PMO'];

MERGE (n:Concept {id: '[기집사]_기획'})
SET     n.name = '[기집사] 기획',
    n.name_kr = '[기집사] 기획',
    n.domain = 'PM';

MERGE (n:Concept {id: '집행'})
SET     n.name = '집행',
    n.name_kr = '집행',
    n.domain = 'PM';

MERGE (n:Concept {id: '사후관리'})
SET     n.name = '사후관리',
    n.name_kr = '사후관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'pmo_조직위치'})
SET     n.name = 'PMO 조직위치',
    n.name_kr = 'PMO 조직위치',
    n.domain = 'PM',
    n.definition = '내부 PMO (Internal PMO)';

MERGE (n:Concept {id: 'external_pmo'})
SET     n.name = 'External PMO',
    n.name_kr = '외부 PMO',
    n.domain = 'PM',
    n.definition = '행정기관 및 구매자가 발주를 통하여, 외부 PMO를 발주자를 지원, 대행, 책임등의 권한을 보유하고 수행하는 조직유형',
    n.aliases = ['External PMO', '외부 PMO'];

MERGE (n:Concept {id: 'hybrid_pmo'})
SET     n.name = 'Hybrid PMO',
    n.name_kr = '혼합 PMO',
    n.domain = 'PM',
    n.definition = '내부 PMO와 외부 PMO의 장점을 취합한 구축하는 조직유형',
    n.aliases = ['Hybrid PMO', '혼합 PMO'];

MERGE (n:Concept {id: 'r&r'})
SET     n.name = 'R&R',
    n.name_kr = 'R&R',
    n.domain = 'PM',
    n.definition = '기상대 모델 (The Weather Station)';

MERGE (n:Concept {id: 'coach'})
SET     n.name = 'Coach',
    n.name_kr = '지도 모델',
    n.domain = 'PM',
    n.definition = '프로젝트 관리 전문인력, 조언자/관리자 역할 - 조직내 공통된 방법론과 SW도구 전파, 의사소통 중계위한 커뮤니티 운영, 프로젝트 성과기록 및 모니터링, PM 훈련',
    n.aliases = ['Coach', '지도 모델'];

MERGE (n:Concept {id: 'control_tower'})
SET     n.name = 'Control Tower',
    n.name_kr = '관제탑 모델',
    n.domain = 'PM',
    n.definition = '조직차원, 관리자/책임자 역할 - 중앙 집중적 프로젝트 관리, 모든 프로젝트에 관여, 의사결정에 깊이 개입, 프로젝트 투입될 자원을 조정 및 결정',
    n.aliases = ['Control Tower', '관제탑 모델'];

MERGE (n:Concept {id: '투여시간_및_직위'})
SET     n.name = '투여시간 및 직위',
    n.name_kr = '투여시간 및 직위',
    n.domain = 'PM',
    n.definition = 'Part-time PMO';

MERGE (n:Concept {id: 'full_time_pmo'})
SET     n.name = 'Full-time PMO',
    n.name_kr = 'Full-time PMO',
    n.domain = 'PM',
    n.definition = '단 하나의 프로젝트를 전담으로 맡아 수행하는 PMO',
    n.aliases = ['Full-time PMO'];

MERGE (n:Concept {id: 'pmo_director'})
SET     n.name = 'PMO Director',
    n.name_kr = 'PMO Director',
    n.domain = 'PM',
    n.definition = '조직장, 임원급 직급에서 선별하는 PMO',
    n.aliases = ['PMO Director'];

MERGE (n:Concept {id: 'vice'})
SET     n.name = '(Vice) President',
    n.name_kr = '(Vice) President',
    n.domain = 'PM',
    n.definition = '부사장, 사장 직급에서 선별하는 PMO';

MERGE (n:Concept {id: '기술_기능'})
SET     n.name = '기술 기능',
    n.name_kr = '기술 기능',
    n.domain = 'PM',
    n.definition = '컨설팅, 평가, 프로세스';

MERGE (n:Concept {id: '개발방법론,_품질,_규정'})
SET     n.name = '개발방법론, 품질, 규정',
    n.name_kr = '개발방법론, 품질, 규정',
    n.domain = 'PM',
    n.definition = '개발방법론, 품질 프로세스, 규적적용등의 역할을 수행하는 PMO';

MERGE (n:Concept {id: '품질_관리,_개발'})
SET     n.name = '품질 관리, 개발',
    n.name_kr = '품질 관리, 개발',
    n.domain = 'PM',
    n.definition = '품질관리, 개발 등의 역할을 수행하는 PMO';

MERGE (n:Concept {id: '비즈니스_관리'})
SET     n.name = '비즈니스 관리',
    n.name_kr = '비즈니스 관리',
    n.domain = 'PM',
    n.definition = '비즈니스, 사업관리 등의 역할을 수행하는 PMO';

MERGE (n:Concept {id: '법적_근거'})
SET     n.name = '법적 근거',
    n.name_kr = '법적 근거',
    n.domain = 'PM';

MERGE (n:Law {id: '전자정부법_제64조의2'})
SET     n.name = '전자정부법 제64조의2',
    n.name_kr = '전자정부법 제64조의2',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리의 위탁) ① 행정기관등의 장은 전자정부사업을 효율적으로 수행하기 위하여 다음 각 호의 어느 하나에 해당하는 사업에 대하여 관리ㆍ감독하는 업무(이하 "전자정부사업관리"라 한다)의 전부 또는 일부를 전문지식과 기술능력을 갖춘 자에게 위탁할 수 있으며, 대상이 되는 전자정부사업의 구체적인 범위 및 전자정부사업관리를 수탁할 수 있는 자의 자격요건';

MERGE (n:Law {id: '전자정부법_제64조의3'})
SET     n.name = '전자정부법 제64조의3',
    n.name_kr = '전자정부법 제64조의3',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리자의 책무 등) 전자정부사업관리자가 전자정부사업관리업무를 수행할 때 계약을 위반하거나 고의나 과실로 발주자에게 손해를 발생시킨 경우에는 그 손해를 배상하여야 한다.';

MERGE (n:Law {id: '전자정부법_시행령_제78조의2'})
SET     n.name = '전자정부법 시행령 제78조의2',
    n.name_kr = '전자정부법 시행령 제78조의2',
    n.domain = 'PM',
    n.definition = '(관리ㆍ감독업무를 위탁할 수 있는 전자정부사업의 범위 등) ① 법 제64조의2제1항에 따른 관리ㆍ감독 업무(이하 "전자정부사업관리"라 한다)를 위탁할 수 있는 전자정부사업의 구체적인 범위는 다음 각 호와 같다.';

MERGE (n:Law {id: '전자정부법_시행령_제78조의3'})
SET     n.name = '전자정부법 시행령 제78조의3',
    n.name_kr = '전자정부법 시행령 제78조의3',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리자의 자격요건) 법 제64조의2제1항에 따라 전자정부사업관리를 수탁할 수 있는 자의 자격요건은 다음 각 호와 같다.';

MERGE (n:Law {id: '전자정부법_시행령_제78조의4'})
SET     n.name = '전자정부법 시행령 제78조의4',
    n.name_kr = '전자정부법 시행령 제78조의4',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리자의 선정기준) ① 중앙행정기관등의 장은 법 제64조의2제2항에 따른 전자정부사업관리를 위탁받아 수행하는 자(이하 "전자정부사업관리자"라 한다)를 다음 각 호의 기준을 고려하여 평가한 후 선정하여야 한다.';

MERGE (n:Law {id: '전자정부법_시행령_제78조의5'})
SET     n.name = '전자정부법 시행령 제78조의5',
    n.name_kr = '전자정부법 시행령 제78조의5',
    n.domain = 'PM',
    n.definition = '(표준계약서) 행정자치부장관은 중앙행정기관등이 전자정부사업관리에 대한 위탁업무를 효율적으로 처리하기 위하여 필요하다고 인정하는 경우에는 표준계약서를 정하여 고시할 수 있다.';

MERGE (n:Law {id: '위탁규정'})
SET     n.name = '위탁규정',
    n.name_kr = '위탁규정',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리 위탁에 관한 규정) 위탁대상사업, 용역 대가 산정, 전자정부사업관리 수행 등 규정 - 「전자정부법」 제64조의2, 같은 법 시행령 제78조의2부터 제78조의4까지의 규정에서 위임한 사항과 전자정부사업관리의 위탁에 필요한 사항을 정함을 목적';

MERGE (n:Law {id: '위탁계약_특수조건'})
SET     n.name = '위탁계약 특수조건',
    n.name_kr = '위탁계약 특수조건',
    n.domain = 'PM',
    n.definition = '(전자정부사업관리 위탁용역계약 특수조건) 전자정부사업관리 위탁용역계약 특수조건(이하 "위탁계약특수조건"이라 한다)은 「전자정부법」제64조의2에 따른 전자정부사업관리 위탁용역(이하 "위탁용역"이라 한다)을 수행함에 있어 발주기관과 위탁용역 수행자간에 이행해야 할 계약조건을 정함을 목적';

MERGE (n:Concept {id: 'pmo_사업자_자격_요건'})
SET     n.name = 'PMO 사업자 자격 요건',
    n.name_kr = 'PMO 사업자 자격 요건',
    n.domain = 'PM',
    n.definition = '법 제2조제3호에 따른 공공기관(학교는 제외) - 법 제58조에 따라 등록된 감리법인 - 「소프트웨어 진흥법」 제2조제4호에 따른 소프트웨어사업자로서 같은 조 제5호에 따른 소프트웨어기술자를 3명 이상 보유한 법인';

MERGE (n:Concept {id: 'pmo사업자_조직구성'})
SET     n.name = 'PMO사업자 조직구성',
    n.name_kr = 'PMO사업자 조직구성',
    n.domain = 'PM',
    n.definition = '수행책임자, 관리지원인력, 기술지원인력으로 구성 - 수행조직은 발주기관의 장이 제안요청서에서 제시하는 요건을 갖춘 인력으로 구성';

MERGE (n:Concept {id: '도입_대상'})
SET     n.name = '도입 대상',
    n.name_kr = '도입 대상',
    n.domain = 'PM',
    n.definition = '대국민서비스';

MERGE (n:Concept {id: '공통행정_서비스'})
SET     n.name = '공통행정 서비스',
    n.name_kr = '공통행정 서비스',
    n.domain = 'PM',
    n.definition = '행정기관 내 전자문서유통 시스템 등 여러 행정기관 등이 공통적으로 사용하여 행정의 효율성에 큰 영향을 미치는 정보시스템을 구축 또는 고도화하는 사업';

MERGE (n:Concept {id: '통합·연계_사업'})
SET     n.name = '통합·연계 사업',
    n.name_kr = '통합·연계 사업',
    n.domain = 'PM',
    n.definition = '행정정보의 공동이용시스템 등 둘 이상의 정보시스템이 통합·연계되어 고도의 사업관리 역량이 요구되는 사업';

MERGE (n:Concept {id: '행정기관_등의_장이_인정하는_사업'})
SET     n.name = '행정기관 등의 장이 인정하는 사업',
    n.name_kr = '행정기관 등의 장이 인정하는 사업',
    n.domain = 'PM',
    n.definition = '해당 행정기관 등이 전자정부사업관리에 대한 경험 및 전문성 등이 부족하거나 필요 인력 등이 충분하지 아니하여 위탁관리가 필요한 사업 - 그 밖에 전자정부사업의 중요도 및 난이도 등이 대국민·공통행정서비스 및 통합·연계 사업에 준하는 것으로서 전문적인 관리·감독이 필요하다고 인정되는 사업';

MERGE (n:Concept {id: '선정기준'})
SET     n.name = '선정기준',
    n.name_kr = '선정기준',
    n.domain = 'PM';

MERGE (n:Concept {id: '평가항목'})
SET     n.name = '평가항목',
    n.name_kr = '평가항목',
    n.domain = 'PM';

MERGE (n:Concept {id: 'epmo'})
SET     n.name = '(외부) EPMO',
    n.name_kr = '(외부) EPMO',
    n.domain = 'PM';

MERGE (n:Concept {id: '공공_pmo'})
SET     n.name = '공공 PMO',
    n.name_kr = '공공 PMO',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '[기집사]_기획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '집행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '사후관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'pmo_조직위치'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'external_pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'hybrid_pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'r&r'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'coach'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'control_tower'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '투여시간_및_직위'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'full_time_pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'pmo_director'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'vice'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '기술_기능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '개발방법론,_품질,_규정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '품질_관리,_개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '비즈니스_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '법적_근거'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_제64조의2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_제64조의3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_시행령_제78조의2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_시행령_제78조의3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_시행령_제78조의4'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '전자정부법_시행령_제78조의5'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '위탁규정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Law {id: '위탁계약_특수조건'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'pmo_사업자_자격_요건'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'pmo사업자_조직구성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '도입_대상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '공통행정_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '통합·연계_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '행정기관_등의_장이_인정하는_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '선정기준'})
MERGE (b:Concept {id: '평가항목'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '선정기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '평가항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo'})
MERGE (b:Concept {id: '공공_pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: 'epmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Concept {id: '공공_pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Document {id: 'PM_010.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'epmo,_공공_pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[기집사]_기획'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집행'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사후관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo_조직위치'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external_pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hybrid_pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'r&r'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coach'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_tower'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투여시간_및_직위'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_time_pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo_director'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vice'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_기능'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발방법론,_품질,_규정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_관리,_개발'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_근거'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_제64조의2'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_제64조의3'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_시행령_제78조의2'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_시행령_제78조의3'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_시행령_제78조의4'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '전자정부법_시행령_제78조의5'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '위탁규정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '위탁계약_특수조건'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo_사업자_자격_요건'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo사업자_조직구성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도입_대상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통행정_서비스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합·연계_사업'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행정기관_등의_장이_인정하는_사업'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선정기준'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'epmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공_pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_010.5: PMO, 감리, 상주감리 비교
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.5'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'pmo,_감리,_상주감리_비교'})
SET     n.name = 'PMO, 감리, 상주감리 비교',
    n.name_kr = 'PMO, 감리, 상주감리 비교',
    n.domain = 'PM';

MERGE (n:Concept {id: 'pmo'})
SET     n.name = 'PMO',
    n.name_kr = 'PMO',
    n.domain = 'PM',
    n.aliases = ['PMO'];

MERGE (n:Concept {id: '프로젝트_기간'})
SET     n.name = '프로젝트 기간',
    n.name_kr = '프로젝트 기간',
    n.domain = 'PM',
    n.definition = '대규모의 장기 프로젝트는 다양한 위험요소(일정, 이슈, 자원 등) 존재';

MERGE (n:Concept {id: '대규모_인력_및_예산'})
SET     n.name = '대규모 인력 및 예산',
    n.name_kr = '대규모 인력 및 예산',
    n.domain = 'PM',
    n.definition = '대규모 인력관리 누수 발생, 초기 예측하지 못한 변수 발생으로 프로젝트 예산 초과';

MERGE (n:Concept {id: '다양한_이해관계자'})
SET     n.name = '다양한 이해관계자',
    n.name_kr = '다양한 이해관계자',
    n.domain = 'PM',
    n.definition = '이해관계자의 기대수준이 상이, 이해관계자들간의 커뮤니케이션 문제발생';

MERGE (n:Concept {id: '프로세스_변화_및_신기술'})
SET     n.name = '프로세스 변화 및 신기술',
    n.name_kr = '프로세스 변화 및 신기술',
    n.domain = 'PM',
    n.definition = '업무 프로세스의 변화 및 신기술의 적용으로 현업과 IT 인력에 대한 지속적인 변화문제 발생 위험';

MERGE (n:Concept {id: '감리'})
SET     n.name = '감리',
    n.name_kr = '감리',
    n.domain = 'PM';

MERGE (n:Concept {id: '한계점'})
SET     n.name = '한계점',
    n.name_kr = '한계점',
    n.domain = 'PM';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'PM';

MERGE (n:Concept {id: '발주_단계'})
SET     n.name = '발주 단계',
    n.name_kr = '발주 단계',
    n.domain = 'PM',
    n.definition = 'Pre-PMO 도입';

MERGE (n:Concept {id: '사업_수행_단계'})
SET     n.name = '사업 수행 단계',
    n.name_kr = '사업 수행 단계',
    n.domain = 'PM',
    n.definition = '각 분야별 사업 PMO 도입 - 상주 감리, 2 단계 감리 수행';

MERGE (n:Concept {id: '완료_단계'})
SET     n.name = '완료 단계',
    n.name_kr = '완료 단계',
    n.domain = 'PM',
    n.definition = '상시 PMO 조직의 운영시스템 확인 - 상주 감리의 시정조치 확인';

MERGE (n:Concept {id: 'project_management_office'})
SET     n.name = 'Project Management Office',
    n.name_kr = 'PMO',
    n.domain = 'PM',
    n.aliases = ['Project Management Office', 'PMO'];

MERGE (n:Concept {id: '상주감리'})
SET     n.name = '상주감리',
    n.name_kr = '상주감리',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '프로젝트_기간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '대규모_인력_및_예산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '다양한_이해관계자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '프로세스_변화_및_신기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '한계점'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '한계점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '한계점'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '한계점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '발주_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '사업_수행_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '완료_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'project_management_office'})
MERGE (b:Concept {id: '상주감리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: 'project_management_office'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Concept {id: '상주감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Document {id: 'PM_010.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pmo,_감리,_상주감리_비교'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_기간'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대규모_인력_및_예산'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_이해관계자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_변화_및_신기술'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주_단계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업_수행_단계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완료_단계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'project_management_office'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상주감리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_010.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_010.6'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_011: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_011'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_012: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_012'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_013.1: 지식 영역(KA)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_013.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'ka'})
SET     n.name = 'KA',
    n.name_kr = '지식 영역',
    n.domain = 'PM',
    n.aliases = ['KA', '지식 영역'];

MERGE (n:Concept {id: '프로젝트_관리_일반'})
SET     n.name = '프로젝트 관리 일반',
    n.name_kr = '프로젝트 관리 일반',
    n.domain = 'PM';

MERGE (n:Concept {id: '1+3+1+rcr+p+s'})
SET     n.name = '1+3+1+RCR+P+S',
    n.name_kr = '1+3+1+RCR+P+S',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'ka'})
MERGE (b:Concept {id: '프로젝트_관리_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ka'})
MERGE (b:Concept {id: '1+3+1+rcr+p+s'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ka'})
MERGE (b:Document {id: 'PM_013.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ka'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_관리_일반'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1+3+1+rcr+p+s'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_013.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_013.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.1: 프로젝트 통합관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_통합관리'})
SET     n.name = '프로젝트 통합관리',
    n.name_kr = '프로젝트 통합관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'cr'})
SET     n.name = '변경관리(CR) 유형',
    n.name_kr = '변경관리(CR) 유형',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Concept {id: '프로젝트_통합관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Concept {id: 'cr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Document {id: 'PM_018.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cr'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_018.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.3'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.4'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.5'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.6'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_018.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_018.7'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_019: 프로젝트 헌장(Charter)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_019'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'charter'})
SET     n.name = 'Charter',
    n.name_kr = '프로젝트 헌장',
    n.domain = 'PM',
    n.aliases = ['Charter', '프로젝트 헌장'];

MERGE (n:Concept {id: '프로젝트_통합관리'})
SET     n.name = '프로젝트 통합관리',
    n.name_kr = '프로젝트 통합관리',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'charter'})
MERGE (b:Concept {id: '프로젝트_통합관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'charter'})
MERGE (b:Document {id: 'PM_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'charter'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_020: 프로젝트 관리 계획서
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_020'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_관리_계획서'})
SET     n.name = '프로젝트 관리 계획서',
    n.name_kr = '프로젝트 관리 계획서',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트_통합관리'})
SET     n.name = '프로젝트 통합관리',
    n.name_kr = '프로젝트 통합관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리계획서'})
SET     n.name = '프로젝트관리계획서',
    n.name_kr = '프로젝트관리계획서',
    n.domain = 'PM';

MERGE (n:Concept {id: '[개업일인교통품수정]_개요'})
SET     n.name = '[개업일인교통품수정] 개요',
    n.name_kr = '[개업일인교통품수정] 개요',
    n.domain = 'PM';

MERGE (n:Concept {id: '업무'})
SET     n.name = '업무',
    n.name_kr = '업무',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정'})
SET     n.name = '일정',
    n.name_kr = '일정',
    n.domain = 'PM';

MERGE (n:Concept {id: '인력'})
SET     n.name = '인력',
    n.name_kr = '인력',
    n.domain = 'PM';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육',
    n.name_kr = '교육',
    n.domain = 'PM';

MERGE (n:Concept {id: '통제'})
SET     n.name = '통제',
    n.name_kr = '통제',
    n.domain = 'PM';

MERGE (n:Concept {id: '품질'})
SET     n.name = '품질',
    n.name_kr = '품질',
    n.domain = 'PM';

MERGE (n:Concept {id: '인수'})
SET     n.name = '인수',
    n.name_kr = '인수',
    n.domain = 'PM';

MERGE (n:Concept {id: '측정'})
SET     n.name = '측정',
    n.name_kr = '측정',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '프로젝트관리계획서'})
MERGE (b:Concept {id: '프로젝트_통합관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '[개업일인교통품수정]_개요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '업무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '일정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '인력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '인수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Concept {id: '측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Document {id: 'PM_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_관리_계획서'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_통합관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리계획서'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[개업일인교통품수정]_개요'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인력'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통제'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인수'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_021.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_021.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_021.2: 교훈물 관리 대장(Lessons Learned Register)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_021.2'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'lessons_learned_register'})
SET     n.name = 'Lessons Learned Register',
    n.name_kr = '교훈물 관리 대장',
    n.domain = 'PM',
    n.aliases = ['Lessons Learned Register', '교훈물 관리 대장'];

MERGE (n:Concept {id: '프로젝트_관리_일반'})
SET     n.name = '프로젝트 관리 일반',
    n.name_kr = '프로젝트 관리 일반',
    n.domain = 'PM';

MERGE (n:Concept {id: '개념_및_목적'})
SET     n.name = '개념 및 목적',
    n.name_kr = '개념 및 목적',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'lessons_learned_register'})
MERGE (b:Concept {id: '프로젝트_관리_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lessons_learned_register'})
MERGE (b:Concept {id: '개념_및_목적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lessons_learned_register'})
MERGE (b:Document {id: 'PM_021.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lessons_learned_register'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_관리_일반'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념_및_목적'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_022: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_022'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_024.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_024.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_024.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_024.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_024.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_024.3'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_024.4: 요구사항 명세서/SRS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_024.4'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '요구사항_명세서/srs'})
SET     n.name = '요구사항 명세서/SRS',
    n.name_kr = '요구사항 명세서/SRS',
    n.domain = 'PM';

MERGE (n:Concept {id: 'scope'})
SET     n.name = '프로젝트 범위(Scope) 관리',
    n.name_kr = '프로젝트 범위(Scope) 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '검토가능'})
SET     n.name = '검토가능',
    n.name_kr = '검토가능',
    n.domain = 'PM';

MERGE (n:Concept {id: '추적가능'})
SET     n.name = '추적가능',
    n.name_kr = '추적가능',
    n.domain = 'PM';

MERGE (n:Concept {id: '명확성'})
SET     n.name = '명확성',
    n.name_kr = '명확성',
    n.domain = 'PM';

MERGE (n:Concept {id: '일관성'})
SET     n.name = '일관성',
    n.name_kr = '일관성',
    n.domain = 'PM';

MERGE (n:Concept {id: '완전성'})
SET     n.name = '완전성',
    n.name_kr = '완전성',
    n.domain = 'PM';

MERGE (n:Concept {id: '수정가능'})
SET     n.name = '수정가능',
    n.name_kr = '수정가능',
    n.domain = 'PM';

MERGE (n:Concept {id: '정확성'})
SET     n.name = '정확성',
    n.name_kr = '정확성',
    n.domain = 'PM';

MERGE (n:Concept {id: '상호성'})
SET     n.name = '상호성',
    n.name_kr = '상호성',
    n.domain = 'PM';

MERGE (n:Concept {id: '기능정의'})
SET     n.name = '기능정의',
    n.name_kr = '기능정의',
    n.domain = 'PM';

MERGE (n:Concept {id: '제약조건'})
SET     n.name = '제약조건',
    n.name_kr = '제약조건',
    n.domain = 'PM';

MERGE (n:Concept {id: '테스트_기준'})
SET     n.name = '테스트 기준',
    n.name_kr = '테스트 기준',
    n.domain = 'PM';

MERGE (n:Concept {id: '품질_측정'})
SET     n.name = '품질 측정',
    n.name_kr = '품질 측정',
    n.domain = 'PM';

MERGE (n:Concept {id: 'introduction'})
SET     n.name = 'Introduction',
    n.name_kr = '개요',
    n.domain = 'PM',
    n.definition = '범위(Scope)',
    n.aliases = ['Introduction', '개요'];

MERGE (n:Concept {id: 'purpose'})
SET     n.name = 'Purpose',
    n.name_kr = '목적',
    n.domain = 'PM',
    n.definition = '명세서의 작성 목적을 기술',
    n.aliases = ['Purpose', '목적'];

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = '시스템 개요',
    n.domain = 'PM',
    n.definition = '시스템 전반적인 내용을 요약하여 기술',
    n.aliases = ['System', '시스템 개요'];

MERGE (n:Concept {id: 'constraints'})
SET     n.name = 'Constraints',
    n.name_kr = '일반 제약사항',
    n.domain = 'PM',
    n.definition = '다른 표준이나 하드웨어 제한으로 인해 적용되는 제한사항에 대하여 기술',
    n.aliases = ['Constraints', '일반 제약사항'];

MERGE (n:Concept {id: '기능적_요구사항'})
SET     n.name = '기능적 요구사항',
    n.name_kr = '기능적 요구사항',
    n.domain = 'PM',
    n.definition = '기능요구사항(Functional Requirement)';

MERGE (n:Concept {id: '기타_요구_및_제약_사항'})
SET     n.name = '기타 요구 및 제약 사항',
    n.name_kr = '기타 요구 및 제약 사항',
    n.domain = 'PM',
    n.definition = '성능 요구사항(Performance Requirement)';

MERGE (n:Concept {id: 'hw_요구_사항'})
SET     n.name = 'HW 요구 사항',
    n.name_kr = 'HW 요구 사항',
    n.domain = 'PM',
    n.definition = '기억 장치 규모, 통신 수용도 등의 필요 요구 사항 기술';

MERGE (n:Concept {id: 'software_system_attribute'})
SET     n.name = 'Software System Attribute',
    n.name_kr = '소프트웨어 시스템 속성',
    n.domain = 'PM',
    n.definition = '신뢰도(Reliability), 사용가능성(Availability), 보안(Security), 유지보수(Maintainability), 이식성(Portability) 등',
    n.aliases = ['Software System Attribute', '소프트웨어 시스템 속성'];

MERGE (n:Concept {id: '인수_조건'})
SET     n.name = '인수 조건',
    n.name_kr = '인수 조건',
    n.domain = 'PM',
    n.definition = '기능 및 성능 시험';

MERGE (n:Concept {id: '요구사항_평가'})
SET     n.name = '요구사항 평가',
    n.name_kr = '요구사항 평가',
    n.domain = 'PM',
    n.definition = '정확성';

MERGE (n:Metric {id: '정확도'})
SET     n.name = '정확도',
    n.name_kr = '정확도',
    n.domain = 'PM',
    n.definition = '로직 및 인터페이스의 정밀도가 만족하는지 확인';

MERGE (n:Concept {id: '판독성'})
SET     n.name = '판독성',
    n.name_kr = '판독성',
    n.domain = 'PM',
    n.definition = '문서가 알기쉽고 명확하게 작성되었는지 입증';

MERGE (n:Concept {id: '시험성'})
SET     n.name = '시험성',
    n.name_kr = '시험성',
    n.domain = 'PM',
    n.definition = 'SRS의 요구사항을 입증하기 위한 객관적인 시험 기준이 되는지 확인';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'PM',
    n.definition = '인터페이스 요구사항의 유효성 확인';

MERGE (n:Concept {id: '추적성'})
SET     n.name = '추적성',
    n.name_kr = '추적성',
    n.domain = 'PM',
    n.definition = 'SW요구사항과 시스템 요구사항 사이의 관계가 정확성을 갖는지 확인';

// --- 관계 ---

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: 'scope'})
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
MERGE (b:Concept {id: '일관성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '완전성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '수정가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Concept {id: '정확성'})
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
MERGE (b:Document {id: 'PM_024.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '요구사항_명세서/srs'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scope'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검토가능'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추적가능'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명확성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완전성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수정가능'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정확성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제약조건'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_기준'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_측정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'introduction'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'purpose'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'constraints'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능적_요구사항'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_요구_및_제약_사항'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_요구_사항'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software_system_attribute'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인수_조건'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_평가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '정확도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판독성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시험성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추적성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_024.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_024.5'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_025: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_025'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_026: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_026'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_028: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_028'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_029: 골드플레팅(Gold-plating)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_029'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'gold_plating'})
SET     n.name = 'Gold-plating',
    n.name_kr = '골드플레팅',
    n.domain = 'PM',
    n.aliases = ['Gold-plating', '골드플레팅'];

MERGE (n:Concept {id: 'scope'})
SET     n.name = '프로젝트 범위(Scope) 관리',
    n.name_kr = '프로젝트 범위(Scope) 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '요구하지_않은_기능과_품질'})
SET     n.name = '요구하지 않은 기능과 품질',
    n.name_kr = '요구하지 않은 기능과 품질',
    n.domain = 'PM';

MERGE (n:Concept {id: 'scope_creep'})
SET     n.name = 'Scope Creep',
    n.name_kr = 'Scope Creep',
    n.domain = 'PM',
    n.aliases = ['Scope Creep'];

// --- 관계 ---

MERGE (a:Concept {id: 'gold_plating'})
MERGE (b:Concept {id: 'scope'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'gold_plating'})
MERGE (b:Concept {id: '요구하지_않은_기능과_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scope_creep'})
MERGE (b:Concept {id: 'gold_plating'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gold_plating'})
MERGE (b:Concept {id: 'scope_creep'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gold_plating'})
MERGE (b:Document {id: 'PM_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'gold_plating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scope'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구하지_않은_기능과_품질'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scope_creep'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_030: 프로젝트 일정관리(시간)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_030'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'schedule_management'})
SET     n.name = '프로젝트 일정관리(시간)',
    n.name_kr = '프로젝트 일정관리(시간)',
    n.domain = 'PM';

MERGE (n:Concept {id: '[계정순기개통]_일정관리_계획수립'})
SET     n.name = '[계정순기개통] 일정관리 계획수립',
    n.name_kr = '[계정순기개통] 일정관리 계획수립',
    n.domain = 'PM';

MERGE (n:Concept {id: '활동정의'})
SET     n.name = '활동정의',
    n.name_kr = '활동정의',
    n.domain = 'PM';

MERGE (n:Concept {id: '활동순서_배열'})
SET     n.name = '활동순서 배열',
    n.name_kr = '활동순서 배열',
    n.domain = 'PM';

MERGE (n:Concept {id: '활동기간_산정'})
SET     n.name = '활동기간 산정',
    n.name_kr = '활동기간 산정',
    n.domain = 'PM';

MERGE (n:Concept {id: 'schedule_development'})
SET     n.name = '일정 개발',
    n.name_kr = '일정 개발',
    n.domain = 'PM';

MERGE (n:Concept {id: 'schedule_control'})
SET     n.name = '일정 통제',
    n.name_kr = '일정 통제',
    n.domain = 'PM';

MERGE (n:Concept {id: '주요기법'})
SET     n.name = '주요기법',
    n.name_kr = '주요기법',
    n.domain = 'PM';

MERGE (n:Concept {id: '특징_및_설명'})
SET     n.name = '특징 및 설명',
    n.name_kr = '특징 및 설명',
    n.domain = 'PM';

MERGE (n:Concept {id: '경험_기반'})
SET     n.name = '경험 기반',
    n.name_kr = '경험 기반',
    n.domain = 'PM',
    n.definition = '전문가 판단 (Expert Judgment)';

MERGE (n:Concept {id: '산술_통계_기반'})
SET     n.name = '산술 통계 기반',
    n.name_kr = '산술 통계 기반',
    n.domain = 'PM',
    n.definition = '모수 산정 (Parametric Estimating)';

MERGE (n:Concept {id: '협의_기반'})
SET     n.name = '협의 기반',
    n.name_kr = '협의 기반',
    n.domain = 'PM',
    n.definition = '의사결정 (Decision Making)';

MERGE (n:Concept {id: 'activity_definition'})
SET     n.name = 'Activity Definition',
    n.name_kr = '활동 정의',
    n.domain = 'PM',
    n.definition = '목적',
    n.aliases = ['Activity Definition', '활동 정의'];

MERGE (n:Concept {id: '투입물'})
SET     n.name = '투입물',
    n.name_kr = '투입물',
    n.domain = 'PM',
    n.definition = 'WBS, 범위 기준선, 기업 환경 요소(EEF), 조직 프로세스 자산(OPA)';

MERGE (n:Concept {id: '도구'})
SET     n.name = '도구',
    n.name_kr = '도구',
    n.domain = 'PM',
    n.definition = '분할, 연동 기획(Rolling Wave Planning), 템플릿, 전문가 판단';

MERGE (n:Concept {id: '산출물'})
SET     n.name = '산출물',
    n.name_kr = '산출물',
    n.domain = 'PM',
    n.definition = 'Activity 목록(속성), Milestone 목록';

MERGE (n:Concept {id: 'activity_sequencing'})
SET     n.name = 'Activity Sequencing',
    n.name_kr = '활동 순서 결정',
    n.domain = 'PM',
    n.definition = 'Activity 사이의 관계를 식별하여 문서화 - Activity간의 선후관계를 정의 - 프로젝트 내의 작업 종속성을 식별하고 문서화',
    n.aliases = ['Activity Sequencing', '활동 순서 결정'];

MERGE (n:Concept {id: 'activity_resource_estimating'})
SET     n.name = 'Activity Resource Estimating',
    n.name_kr = '활동 자원 산정',
    n.domain = 'PM',
    n.definition = '각 Activity 수행에 필요한 자원의 종류와 양을 산정 - 각 Activity를 완료하기 위해 필요한 자원의 종류와 양을 산정',
    n.aliases = ['Activity Resource Estimating', '활동 자원 산정'];

MERGE (n:Concept {id: 'activity_duration_estimating'})
SET     n.name = 'Activity Duration Estimating',
    n.name_kr = '활동 기간 산정',
    n.domain = 'PM',
    n.definition = '산정된 자원으로 개별 Activity를 완료하는데 필요한 기간 산정 - 각각의 Activity들을 완료하는데 필요한 작업기간 산정',
    n.aliases = ['Activity Duration Estimating', '활동 기간 산정'];

// --- 관계 ---

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '[계정순기개통]_일정관리_계획수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '활동정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '활동순서_배열'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '활동기간_산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'schedule_development'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'schedule_control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요기법'})
MERGE (b:Concept {id: '특징_및_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '주요기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '특징_및_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '경험_기반'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '산술_통계_기반'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '협의_기반'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'activity_definition'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '투입물'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '도구'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: '산출물'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'activity_sequencing'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'activity_resource_estimating'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Concept {id: 'activity_duration_estimating'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Document {id: 'PM_030'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'schedule_management'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[계정순기개통]_일정관리_계획수립'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동순서_배열'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동기간_산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'schedule_development'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'schedule_control'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징_및_설명'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경험_기반'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산술_통계_기반'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협의_기반'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity_definition'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투입물'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도구'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity_sequencing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity_resource_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity_duration_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_031.1: 성과 측정 규칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_031.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '성과_측정_규칙'})
SET     n.name = '성과 측정 규칙',
    n.name_kr = '성과 측정 규칙',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '0/100%'})
SET     n.name = '0/100%',
    n.name_kr = '0/100%',
    n.domain = 'PM';

MERGE (n:Concept {id: '50_50'})
SET     n.name = '50/50',
    n.name_kr = '50/50',
    n.domain = 'PM';

MERGE (n:Concept {id: '20/80%_진척율법'})
SET     n.name = '20/80% 진척율법',
    n.name_kr = '20/80% 진척율법',
    n.domain = 'PM';

MERGE (n:Concept {id: '마일스톤'})
SET     n.name = '마일스톤',
    n.name_kr = '마일스톤',
    n.domain = 'PM';

MERGE (n:Concept {id: '20/80%'})
SET     n.name = '20/80%',
    n.name_kr = '20/80%',
    n.domain = 'PM',
    n.definition = '착수 20% 인정, 80% 마지막 확인 후 인정 기법';

MERGE (n:Concept {id: '진척율법'})
SET     n.name = '진척율법',
    n.name_kr = '진척율법',
    n.domain = 'PM',
    n.definition = '(공정진척/공정목표)*100으로 완료율을 평가하는 방법';

MERGE (n:Concept {id: 'evm_규칙'})
SET     n.name = 'EVM 규칙',
    n.name_kr = 'EVM 규칙',
    n.domain = 'PM',
    n.definition = 'SV(shcedule Variance)와 SPI(Schedule Performance Index)와 같은 일정 성과 측정을 사용하여 초기 일정 기준선에서 차이 측정';

// --- 관계 ---

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '0/100%'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '50_50'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '20/80%_진척율법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '마일스톤'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '20/80%'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: '진척율법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Concept {id: 'evm_규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Document {id: 'PM_031.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '성과_측정_규칙'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0/100%'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '50_50'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '20/80%_진척율법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마일스톤'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '20/80%'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진척율법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'evm_규칙'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_031.2: 연동기획 (Rolling Wave Planning)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_031.2'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'rolling_wave_planning'})
SET     n.name = 'Rolling Wave Planning',
    n.name_kr = '연동기획',
    n.domain = 'PM',
    n.aliases = ['Rolling Wave Planning', '연동기획'];

MERGE (n:Concept {id: 'scope'})
SET     n.name = '프로젝트 범위(Scope) 관리',
    n.name_kr = '프로젝트 범위(Scope) 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'wbs'})
SET     n.name = 'WBS',
    n.name_kr = 'WBS',
    n.domain = 'PM',
    n.aliases = ['WBS'];

MERGE (n:Concept {id: '활동_정의'})
SET     n.name = '활동 정의',
    n.name_kr = '활동 정의',
    n.domain = 'PM';

MERGE (n:Standard {id: 'pmbok'})
SET     n.name = 'PMBOK',
    n.name_kr = 'PMBOK',
    n.domain = 'PM',
    n.aliases = ['PMBOK'];

// --- 관계 ---

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Concept {id: 'scope'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Concept {id: 'wbs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Concept {id: '활동_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Standard {id: 'pmbok'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Document {id: 'PM_031.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rolling_wave_planning'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scope'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동_정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'pmbok'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_032: 활동기간 산정 기법들
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_032'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '활동기간_산정_기법들'})
SET     n.name = '활동기간 산정 기법들',
    n.name_kr = '활동기간 산정 기법들',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[유모3판]_유사산정'})
SET     n.name = '[유모3판] 유사산정',
    n.name_kr = '[유모3판] 유사산정',
    n.domain = 'PM';

MERGE (n:Concept {id: '모수산정'})
SET     n.name = '모수산정',
    n.name_kr = '모수산정',
    n.domain = 'PM';

MERGE (n:Concept {id: '3점산정'})
SET     n.name = '3점산정',
    n.name_kr = '3점산정',
    n.domain = 'PM';

MERGE (n:Concept {id: '전문가판단'})
SET     n.name = '전문가판단',
    n.name_kr = '전문가판단',
    n.domain = 'PM';

MERGE (n:Concept {id: '전문가_판단_expert_judgment'})
SET     n.name = '전문가 판단 Expert Judgment',
    n.name_kr = '전문가 판단 Expert Judgment',
    n.domain = 'PM',
    n.definition = '과거 유사 프로젝트 수행 정보를 활용하는 전문가를 통해 활동 기간을 산정하는 방법';

MERGE (n:Metric {id: '유사_산정_analogous_estimating'})
SET     n.name = '유사 산정 Analogous Estimating',
    n.name_kr = '유사 산정 Analogous Estimating',
    n.domain = 'PM',
    n.definition = '프로젝트의 기간, 규모, 복잡도 같은 특성을 고려해서 과거 유사한 프로젝트의 실제 기간을 참조하여 산정하는 방법, 하향식 산정방법';

MERGE (n:Concept {id: '모수_산정_parametric_estimating'})
SET     n.name = '모수 산정 Parametric Estimating',
    n.name_kr = '모수 산정 Parametric Estimating',
    n.domain = 'PM',
    n.definition = '수집 또는 보유한 과거 실적 데이터를 기반으로 수학적인 함수를 정의하여 산출하는 방법';

MERGE (n:Concept {id: '3점_산정_three_point_estimating'})
SET     n.name = '3점 산정 Three Point Estimating',
    n.name_kr = '3점 산정 Three Point Estimating',
    n.domain = 'PM',
    n.definition = '낙관치(Optimistic), 비관치(Pessimisic), 평균치(Most likely) 산정 값의 평균을 계산하여 기간을 산정하는 방법 - 삼각분포 Triangular Distribution : tE = (tO + tM + tP) / 3 - 베타분포 Beta Distribution : tE = (tO + 4tM + tP) / 6 * t : Time';

MERGE (n:Concept {id: '상향식_산정_bottom-up_estimating'})
SET     n.name = '상향식 산정 Bottom-Up Estimating',
    n.name_kr = '상향식 산정 Bottom-Up Estimating',
    n.domain = 'PM',
    n.definition = '작업 분류 체계(WBS)의 활동별로 기간을 산정한 뒤, 모든 산정치를 집계하는 방법';

MERGE (n:Concept {id: '데이터_분석_data_analysis'})
SET     n.name = '데이터 분석 Data Analysis',
    n.name_kr = '데이터 분석 Data Analysis',
    n.domain = 'PM',
    n.definition = '대안 분석 : 자동, 수동 구현, 자체 개발, 위탁 개발 등 여러가지 도구를 비교하여 대안 분석을 통해 프로젝트 활동기간 결정 - 예비 분석 : 기간 산정의 불확실성을 대비해 위험을 고려하여 우발사태를 대비하는 기간(버퍼)을 전체 일정에 포함하는 방법';

MERGE (n:Concept {id: '의사결정_decision_making'})
SET     n.name = '의사결정 Decision Making',
    n.name_kr = '의사결정 Decision Making',
    n.domain = 'PM',
    n.definition = '만장일치, 과반수, 다수결, 단독 결정 등의 기법 사용 - 투표 방법의 예로 손가락 거수법(Fist to Five) 이 있음 (강한반대 : 주먹, 강한찬성 : 손가락5개를 폄)';

MERGE (n:Concept {id: '미팅_meeting'})
SET     n.name = '미팅 Meeting',
    n.name_kr = '미팅 Meeting',
    n.domain = 'PM',
    n.definition = '팀원들이 참여하는 미팅을 통해 활동 기간을 산정 - 스크럼의 스프린트 백로그 기간 산정시 팀원 전원이 플래닝 포커에 참여';

MERGE (n:Concept {id: 'duration_estimates'})
SET     n.name = 'Duration Estimates',
    n.name_kr = '기간 산정치',
    n.domain = 'PM',
    n.definition = '활동을 수행하는데 필요한 작업기간 산정치',
    n.aliases = ['Duration Estimates', '기간 산정치'];

MERGE (n:Concept {id: 'basis_of_estimates'})
SET     n.name = 'Basis of Estimates',
    n.name_kr = '산정 근거',
    n.domain = 'PM',
    n.definition = '기간에 대한 산정 근거 예) 개발 활동 기간, 테스트 기간 등 근거 제시',
    n.aliases = ['Basis of Estimates', '산정 근거'];

MERGE (n:Concept {id: 'project_document_updates'})
SET     n.name = 'Project Document Updates',
    n.name_kr = '프로젝트 문서 갱신',
    n.domain = 'PM',
    n.definition = '프로젝트 문서 활동 목록, 활동 속성, 자원 달력에 갱신한다. 3.1 활동속성(Activity Attributes) 3.2 가정사항 로그 3.3 교훈물 관리대장',
    n.aliases = ['Project Document Updates', '프로젝트 문서 갱신'];

// --- 관계 ---

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '[유모3판]_유사산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '모수산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '3점산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '전문가판단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '전문가_판단_expert_judgment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Metric {id: '유사_산정_analogous_estimating'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '모수_산정_parametric_estimating'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '3점_산정_three_point_estimating'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '상향식_산정_bottom-up_estimating'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '데이터_분석_data_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '의사결정_decision_making'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: '미팅_meeting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: 'duration_estimates'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: 'basis_of_estimates'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Concept {id: 'project_document_updates'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Document {id: 'PM_032'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '활동기간_산정_기법들'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[유모3판]_유사산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모수산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3점산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전문가판단'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전문가_판단_expert_judgment'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '유사_산정_analogous_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모수_산정_parametric_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3점_산정_three_point_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상향식_산정_bottom-up_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석_data_analysis'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정_decision_making'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미팅_meeting'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'duration_estimates'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'basis_of_estimates'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'project_document_updates'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_033: 3점 산정(Three-Point Estimating)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_033'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'three_point_estimating'})
SET     n.name = 'Three-Point Estimating',
    n.name_kr = '3점 산정',
    n.domain = 'PM',
    n.aliases = ['Three-Point Estimating', '3점 산정'];

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '요소_:_[비평낙]_비관치'})
SET     n.name = '요소 : [비평낙] 비관치',
    n.name_kr = '요소 : [비평낙] 비관치',
    n.domain = 'PM';

MERGE (n:Concept {id: 'm'})
SET     n.name = '평균치',
    n.name_kr = '평균치',
    n.domain = 'PM';

MERGE (n:Concept {id: 'optimistic,_to'})
SET     n.name = '낙관치',
    n.name_kr = '낙관치',
    n.domain = 'PM';

MERGE (n:Concept {id: '종류_:_[삼베표]_삼각분호'})
SET     n.name = '종류 : [삼베표] 삼각분호',
    n.name_kr = '종류 : [삼베표] 삼각분호',
    n.domain = 'PM';

MERGE (n:Concept {id: '베타분포'})
SET     n.name = '베타분포',
    n.name_kr = '베타분포',
    n.domain = 'PM';

MERGE (n:Concept {id: '표준편차'})
SET     n.name = '표준편차',
    n.name_kr = '표준편차',
    n.domain = 'PM';

MERGE (n:Concept {id: '추정치_요소'})
SET     n.name = '추정치 요소',
    n.name_kr = '추정치 요소',
    n.domain = 'PM',
    n.definition = '낙관치(o) 평균치(m) 비관치(p)';

MERGE (n:Concept {id: '계산식_종류'})
SET     n.name = '계산식 종류',
    n.name_kr = '계산식 종류',
    n.domain = 'PM',
    n.definition = '삼각분포 베타분포 표준편차';

MERGE (n:Concept {id: '3점추정'})
SET     n.name = '3점추정',
    n.name_kr = '3점추정',
    n.domain = 'PM';

MERGE (n:Concept {id: '모수산정'})
SET     n.name = '모수산정',
    n.name_kr = '모수산정',
    n.domain = 'PM';

MERGE (n:Concept {id: '유사산정'})
SET     n.name = '유사산정',
    n.name_kr = '유사산정',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '요소_:_[비평낙]_비관치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: 'm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: 'optimistic,_to'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '종류_:_[삼베표]_삼각분호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '베타분포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '표준편차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '추정치_요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '계산식_종류'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3점추정'})
MERGE (b:Concept {id: '모수산정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3점추정'})
MERGE (b:Concept {id: '유사산정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '3점추정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모수산정'})
MERGE (b:Concept {id: '유사산정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '모수산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Concept {id: '유사산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Document {id: 'PM_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'three_point_estimating'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요소_:_[비평낙]_비관치'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'optimistic,_to'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종류_:_[삼베표]_삼각분호'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베타분포'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준편차'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추정치_요소'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산식_종류'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3점추정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모수산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유사산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_034.1: 프로젝트 일정 개발
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_034.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_일정_개발'})
SET     n.name = '프로젝트 일정 개발',
    n.name_kr = '프로젝트 일정 개발',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트_일정_관리'})
SET     n.name = '프로젝트 일정 관리',
    n.name_kr = '프로젝트 일정 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'cpm'})
SET     n.name = 'CPM',
    n.name_kr = 'CPM',
    n.domain = 'PM',
    n.aliases = ['CPM'];

MERGE (n:Concept {id: 'ccm'})
SET     n.name = 'CCM',
    n.name_kr = 'CCM',
    n.domain = 'PM',
    n.aliases = ['CCM'];

MERGE (n:Concept {id: '자원평준화'})
SET     n.name = '자원평준화',
    n.name_kr = '자원평준화',
    n.domain = 'PM';

MERGE (n:Concept {id: 'resource_smoothing'})
SET     n.name = '자원 평활화',
    n.name_kr = '자원 평활화',
    n.domain = 'PM';

MERGE (n:Concept {id: 'crashing'})
SET     n.name = 'Crashing',
    n.name_kr = '크래싱',
    n.domain = 'PM',
    n.aliases = ['Crashing', '크래싱'];

MERGE (n:Concept {id: '자원_최적화_기법'})
SET     n.name = '자원 최적화 기법',
    n.name_kr = '자원 최적화 기법',
    n.domain = 'PM',
    n.definition = 'Resource Leveling(자원 평준화)';

MERGE (n:Concept {id: '일정_단축_기법'})
SET     n.name = '일정 단축 기법',
    n.name_kr = '일정 단축 기법',
    n.domain = 'PM',
    n.definition = 'Crashing(공정 압축법)';

MERGE (n:Concept {id: 'fast_tracking'})
SET     n.name = 'Fast Tracking',
    n.name_kr = '공정중첩 단축법',
    n.domain = 'PM',
    n.definition = '작업 병행 - 재작업 위험 증가',
    n.aliases = ['Fast Tracking', '공정중첩 단축법'];

// --- 관계 ---

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: 'cpm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: 'ccm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: '자원평준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: 'resource_smoothing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: 'crashing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: '자원_최적화_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: '일정_단축_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Concept {id: 'fast_tracking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Document {id: 'PM_034.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_일정_개발'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_일정_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ccm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원평준화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource_smoothing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crashing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_최적화_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정_단축_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_tracking'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_034.2: CPM(Critical Path Method)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_034.2'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'critical_path_method'})
SET     n.name = 'Critical Path Method',
    n.name_kr = 'CPM',
    n.domain = 'PM',
    n.aliases = ['Critical Path Method', 'CPM'];

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'cpm'})
SET     n.name = 'CPM',
    n.name_kr = 'CPM',
    n.domain = 'PM',
    n.aliases = ['CPM'];

MERGE (n:Concept {id: 'forward_pass'})
SET     n.name = 'Forward pass',
    n.name_kr = '전진계산',
    n.domain = 'PM',
    n.definition = '프로젝트 시작일 기준으로 예상종료일을 계산하여 ES와 EF를 구하는 방식',
    n.aliases = ['Forward pass', '전진계산'];

MERGE (n:Concept {id: 'early_start'})
SET     n.name = 'Early Start',
    n.name_kr = 'ES',
    n.domain = 'PM',
    n.definition = '빠른 개시일 (Early Start Date) - ES = 선행활동의 빠른 종료일(EF) + 1',
    n.aliases = ['Early Start', 'ES'];

MERGE (n:Concept {id: 'early_finish'})
SET     n.name = 'Early Finish',
    n.name_kr = 'EF',
    n.domain = 'PM',
    n.definition = '빠른 종료일 (Early Finish Date) - EF = 빠른 개시일(ES) + 기간 - 1',
    n.aliases = ['Early Finish', 'EF'];

MERGE (n:Concept {id: 'backward_pass'})
SET     n.name = 'Backward pass',
    n.name_kr = '후행계산',
    n.domain = 'PM',
    n.definition = '프로젝트 종료일을 기준으로 시작일을 도출하여 LS와 LF를 구하는 방식',
    n.aliases = ['Backward pass', '후행계산'];

MERGE (n:Concept {id: 'late_finish'})
SET     n.name = 'Late Finish',
    n.name_kr = 'LF',
    n.domain = 'PM',
    n.definition = '늦은 종료일 (Late Finish Date) - LF = 후행활동의 늦은 개시일(LS) - 1',
    n.aliases = ['Late Finish', 'LF'];

MERGE (n:Concept {id: 'late_start'})
SET     n.name = 'Late Start',
    n.name_kr = 'LS',
    n.domain = 'PM',
    n.definition = '늦은 종료일 (Late Start Date) - LS = 늦은 종료일(LF) – 기간 + 1',
    n.aliases = ['Late Start', 'LS'];

MERGE (n:Concept {id: 'float'})
SET     n.name = 'Float',
    n.name_kr = '여유시간 계산',
    n.domain = 'PM',
    n.definition = '프로젝트 납기에 영향을 주지 않고 해당 활동에 주어진 여유시간',
    n.aliases = ['Float', '여유시간 계산'];

MERGE (n:Concept {id: 'total_float'})
SET     n.name = 'Total Float',
    n.name_kr = 'TF',
    n.domain = 'PM',
    n.definition = '프로젝트 종료일을 지연시키지 않으면서 한 활동이 가질 수 있는 총 여유시간 - TF = 늦은 종료일(LF) – 빠른 종료일(EF) - TF = 늦은 개시일(LS) – 빠른 개시일(ES)',
    n.aliases = ['Total Float', 'TF'];

MERGE (n:Concept {id: 'free_float'})
SET     n.name = 'Free Float',
    n.name_kr = 'FF',
    n.domain = 'PM',
    n.definition = '자유 여유 (Free Float) - FF = 후행 활동의 빠른 개시일(ES) - 빠른 종료일(EF) – 1 (1일 시작기준)',
    n.aliases = ['Free Float', 'FF'];

MERGE (n:Concept {id: 'cp'})
SET     n.name = 'CP',
    n.name_kr = 'CP',
    n.domain = 'PM',
    n.definition = 'Critical Path: 여유기간이 ‘0’인 경로를 연결한 경로',
    n.aliases = ['CP'];

MERGE (n:Concept {id: 'ccm'})
SET     n.name = 'CCM',
    n.name_kr = 'CCM',
    n.domain = 'PM',
    n.aliases = ['CCM'];

MERGE (n:Concept {id: 'pert'})
SET     n.name = 'PERT',
    n.name_kr = 'PERT',
    n.domain = 'PM',
    n.aliases = ['PERT'];

MERGE (n:Concept {id: '프로젝트_완료_일'})
SET     n.name = '프로젝트 완료 일',
    n.name_kr = '프로젝트 완료 일',
    n.domain = 'PM',
    n.definition = '프로젝트 완료일 : 17 일';

MERGE (n:Concept {id: '주공정_경로'})
SET     n.name = '주공정 경로',
    n.name_kr = '주공정 경로',
    n.domain = 'PM',
    n.definition = '주공정 경로 : 나->다->라->바->사';

MERGE (n:Concept {id: '활동_“마”_float'})
SET     n.name = '활동 “마” Float',
    n.name_kr = '활동 “마” Float',
    n.domain = 'PM',
    n.definition = '총 여유(Total Float) : 2일 자유 여유(Free Float) : 2일';

// --- 관계 ---

MERGE (a:Concept {id: 'cpm'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'forward_pass'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'early_start'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'early_finish'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'backward_pass'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'late_finish'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'late_start'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'float'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'total_float'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'free_float'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'cpm'})
MERGE (b:Concept {id: 'ccm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'cpm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'ccm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpm'})
MERGE (b:Concept {id: 'pert'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'cpm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: 'pert'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: '프로젝트_완료_일'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: '주공정_경로'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Concept {id: '활동_“마”_float'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Document {id: 'PM_034.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'critical_path_method'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'forward_pass'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'early_start'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'early_finish'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backward_pass'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'late_finish'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'late_start'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'total_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'free_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cp'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ccm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pert'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_완료_일'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주공정_경로'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동_“마”_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_036: CCM(Critical Chain Method)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_036'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'critical_chain_method'})
SET     n.name = 'Critical Chain Method',
    n.name_kr = 'CCM',
    n.domain = 'PM',
    n.aliases = ['Critical Chain Method', 'CCM'];

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'ccm'})
SET     n.name = 'CCM',
    n.name_kr = 'CCM',
    n.domain = 'PM',
    n.aliases = ['CCM'];

MERGE (n:Concept {id: '버퍼_:_[프피자]_프로젝트(안모행'})
SET     n.name = '버퍼 : [프피자] 프로젝트(안모행',
    n.name_kr = '버퍼 : [프피자] 프로젝트(안모행',
    n.domain = 'PM';

MERGE (n:Concept {id: '안전'})
SET     n.name = '안전',
    n.name_kr = '안전',
    n.domain = 'PM';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'PM';

MERGE (n:Concept {id: '행동)'})
SET     n.name = '행동)',
    n.name_kr = '행동)',
    n.domain = 'PM';

MERGE (n:Concept {id: '피딩'})
SET     n.name = '피딩',
    n.name_kr = '피딩',
    n.domain = 'PM';

MERGE (n:Concept {id: '자원'})
SET     n.name = '자원',
    n.name_kr = '자원',
    n.domain = 'PM';

MERGE (n:Concept {id: '지연_:_[파자후학]_파킨슨'})
SET     n.name = '지연 : [파자후학] 파킨슨',
    n.name_kr = '지연 : [파자후학] 파킨슨',
    n.domain = 'PM';

MERGE (n:Concept {id: '자기방어'})
SET     n.name = '자기방어',
    n.name_kr = '자기방어',
    n.domain = 'PM';

MERGE (n:Concept {id: '후행공정_준비_미흡'})
SET     n.name = '후행공정 준비 미흡',
    n.name_kr = '후행공정 준비 미흡',
    n.domain = 'PM';

MERGE (n:Concept {id: '학생증후군'})
SET     n.name = '학생증후군',
    n.name_kr = '학생증후군',
    n.domain = 'PM';

MERGE (n:Concept {id: 'project_buffer'})
SET     n.name = 'Project Buffer',
    n.name_kr = '프로젝트 버퍼',
    n.domain = 'PM',
    n.definition = 'Critical Chain사의 활동에서 확보한 버퍼를 Critical Chain 끝에 두어 관리 - 안전영역, 모니터 영역, 행동 영역으로 나누어 관리 ∙ 안전영역: 사용해도 안전한 버퍼 ∙ 모니터링 영역: 버퍼 사용 추이 및 원인을 모니터링 하는 영역 ∙ 행동영역: 버퍼 통제를 위한 조치를 취하는 영역',
    n.aliases = ['Project Buffer', '프로젝트 버퍼'];

MERGE (n:Concept {id: 'feeding_buffer'})
SET     n.name = 'Feeding Buffer',
    n.name_kr = '피딩 버퍼',
    n.domain = 'PM',
    n.definition = 'Critical Chain에 연결되는 Non-Critical Chain의 끝에 두어 관리 - Critical Chain의 작업 착수 지연 방지',
    n.aliases = ['Feeding Buffer', '피딩 버퍼'];

MERGE (n:Concept {id: 'resource_buffer'})
SET     n.name = 'Resource buffer',
    n.name_kr = '자원 버퍼',
    n.domain = 'PM',
    n.definition = '일종의 경보장치로, critical chain상의 작업착수 전에 해당자원에게 수행시기를 알려줌',
    n.aliases = ['Resource buffer', '자원 버퍼'];

MERGE (n:Concept {id: 'critical_path_management'})
SET     n.name = 'Critical Path Management',
    n.name_kr = 'Critical Path Management',
    n.domain = 'PM',
    n.aliases = ['Critical Path Management'];

MERGE (n:Concept {id: 'critical_chain_management'})
SET     n.name = 'Critical Chain Management',
    n.name_kr = 'Critical Chain Management',
    n.domain = 'PM',
    n.aliases = ['Critical Chain Management'];

// --- 관계 ---

MERGE (a:Concept {id: 'ccm'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '버퍼_:_[프피자]_프로젝트(안모행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '안전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '행동)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '피딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '자원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '지연_:_[파자후학]_파킨슨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '자기방어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '후행공정_준비_미흡'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: '학생증후군'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: 'project_buffer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: 'feeding_buffer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: 'resource_buffer'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_path_management'})
MERGE (b:Concept {id: 'critical_chain_management'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: 'critical_path_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Concept {id: 'critical_chain_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Document {id: 'PM_036'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'critical_chain_method'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ccm'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버퍼_:_[프피자]_프로젝트(안모행'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안전'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행동)'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피딩'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지연_:_[파자후학]_파킨슨'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기방어'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후행공정_준비_미흡'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학생증후군'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'project_buffer'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'feeding_buffer'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource_buffer'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_path_management'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_chain_management'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_037: Free Float, Total Float
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_037'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'free_float,_total_float'})
SET     n.name = 'Free Float, Total Float',
    n.name_kr = 'Free Float, Total Float',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '여유시간'})
SET     n.name = '여유시간',
    n.name_kr = '여유시간',
    n.domain = 'PM';

MERGE (n:Concept {id: 'lf_ef'})
SET     n.name = 'LF - EF',
    n.name_kr = 'LF - EF',
    n.domain = 'PM',
    n.aliases = ['LF - EF'];

MERGE (n:Concept {id: 'ls_–_es'})
SET     n.name = 'LS – ES',
    n.name_kr = 'LS – ES',
    n.domain = 'PM';

MERGE (n:Concept {id: 'es_ef_1'})
SET     n.name = 'ES - EF -1',
    n.name_kr = 'ES - EF -1',
    n.domain = 'PM',
    n.aliases = ['ES - EF -1'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'PM';

MERGE (n:Concept {id: '수식'})
SET     n.name = '수식',
    n.name_kr = '수식',
    n.domain = 'PM',
    n.definition = '총 여유(Total Float) = 늦은 종료일(LF) - 빠른 종료일(EF) = 늦은 개시일(LS) - 빠른 개시일 (ES)';

MERGE (n:Concept {id: 'total_float'})
SET     n.name = 'Total Float',
    n.name_kr = 'Total Float',
    n.domain = 'PM',
    n.definition = 'LF-EF or LS ==> 11-5 =6 ( 위 그림의 붉은 글자)',
    n.aliases = ['Total Float'];

MERGE (n:Concept {id: 'free_float'})
SET     n.name = 'Free Float',
    n.name_kr = 'Free Float',
    n.domain = 'PM',
    n.definition = 'ES(후행 활동) - EF - 1 = 8-5-1 = 2 (위 그림에서는 6일과 7일에 해당하는 날짜가 됨',
    n.aliases = ['Free Float'];

MERGE (n:Concept {id: 'critical_path'})
SET     n.name = 'Critical Path',
    n.name_kr = 'Critical Path',
    n.domain = 'PM',
    n.definition = 'A -> D -> E -> F, 임계 경로이며 여유 시간이 없음',
    n.aliases = ['Critical Path'];

MERGE (n:Concept {id: 'crashing'})
SET     n.name = 'Crashing',
    n.name_kr = 'Crashing',
    n.domain = 'PM',
    n.aliases = ['Crashing'];

MERGE (n:Concept {id: 'fast_tracking'})
SET     n.name = 'Fast Tracking',
    n.name_kr = 'Fast Tracking',
    n.domain = 'PM',
    n.aliases = ['Fast Tracking'];

// --- 관계 ---

MERGE (a:Concept {id: '여유시간'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'lf_ef'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'ls_–_es'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'es_ef_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: '수식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'total_float'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'free_float'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'critical_path'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crashing'})
MERGE (b:Concept {id: 'fast_tracking'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'crashing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Concept {id: 'fast_tracking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Document {id: 'PM_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'free_float,_total_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '여유시간'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lf_ef'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ls_–_es'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'es_ef_1'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'total_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'free_float'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_path'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crashing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_tracking'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_039: 일정단축기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_039'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '일정단축기법'})
SET     n.name = '일정단축기법',
    n.name_kr = '일정단축기법',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '크자패병'})
SET     n.name = '크자패병',
    n.name_kr = '크자패병',
    n.domain = 'PM';

MERGE (n:Concept {id: '투입인력의_r&r_미지정_및_모호'})
SET     n.name = '투입인력의 R&R 미지정 및 모호',
    n.name_kr = '투입인력의 R&R 미지정 및 모호',
    n.domain = 'PM',
    n.definition = '투입인력의 명확한 R&R 지정 미흡, 업무 Gray zone 방치';

MERGE (n:Concept {id: '도구_측면'})
SET     n.name = '도구 측면',
    n.name_kr = '도구 측면',
    n.domain = 'PM',
    n.definition = '개발 프레임워크 및 System 미흡';

MERGE (n:Concept {id: '자동화된_테스트_도구_미흡'})
SET     n.name = '자동화된 테스트 도구 미흡',
    n.name_kr = '자동화된 테스트 도구 미흡',
    n.domain = 'PM',
    n.definition = '개발된 SW 에 대한 자동화 테스트 도구 미흡';

MERGE (n:Concept {id: '커뮤니케이션_측면'})
SET     n.name = '커뮤니케이션 측면',
    n.name_kr = '커뮤니케이션 측면',
    n.domain = 'PM',
    n.definition = '전담 상주 인력 부재';

MERGE (n:Concept {id: '개발자간_의사소통_부족'})
SET     n.name = '개발자간 의사소통 부족',
    n.name_kr = '개발자간 의사소통 부족',
    n.domain = 'PM',
    n.definition = '개발자간 원활한 커뮤니티 체계 및 동기부여 미흡으로 업무 공유 및 업무연속성 저하';

MERGE (n:Concept {id: '개발_측면'})
SET     n.name = '개발 측면',
    n.name_kr = '개발 측면',
    n.domain = 'PM',
    n.definition = '범위 및 요구사항 누락';

MERGE (n:Concept {id: '불명확한_목표설정'})
SET     n.name = '불명확한 목표설정',
    n.name_kr = '불명확한 목표설정',
    n.domain = 'PM',
    n.definition = '목표에 대한 관리자의 불확실한 목표설정';

MERGE (n:Concept {id: '일정_수행_관점'})
SET     n.name = '일정 수행 관점',
    n.name_kr = '일정 수행 관점',
    n.domain = 'PM',
    n.definition = '파킨슨의 법칙';

MERGE (n:Concept {id: '일정_단축_관점'})
SET     n.name = '일정 단축 관점',
    n.name_kr = '일정 단축 관점',
    n.domain = 'PM',
    n.definition = '후행공정 작업준비 미흡';

MERGE (n:Concept {id: 'crashing'})
SET     n.name = 'Crashing',
    n.name_kr = 'Crashing',
    n.domain = 'PM',
    n.aliases = ['Crashing'];

MERGE (n:Concept {id: 'fast_tracking'})
SET     n.name = 'Fast Tracking',
    n.name_kr = 'Fast Tracking',
    n.domain = 'PM',
    n.aliases = ['Fast Tracking'];

MERGE (n:Concept {id: '단축기법_측면'})
SET     n.name = '단축기법 측면',
    n.name_kr = '단축기법 측면',
    n.domain = 'PM',
    n.definition = 'Crashing';

MERGE (n:Concept {id: 'critical_chain_상의_버퍼_제거'})
SET     n.name = 'Critical Chain 상의 버퍼 제거',
    n.name_kr = 'Critical Chain 상의 버퍼 제거',
    n.domain = 'PM',
    n.definition = 'Critical Chain 상에 포함된 낙관적 일정 산정치인 버퍼를 제거함으로써 프로젝트 일정을 단축 시키는 방법';

MERGE (n:Concept {id: '아웃소싱'})
SET     n.name = '아웃소싱',
    n.name_kr = '아웃소싱',
    n.domain = 'PM',
    n.definition = '비핵심 기능이나 모듈에 대해 전문업체에 위임하여 관리 - 목표 기능을 구현하기 위한 경험자와 Co- Work';

MERGE (n:Concept {id: '테스트_자동화'})
SET     n.name = '테스트 자동화',
    n.name_kr = '테스트 자동화',
    n.domain = 'PM',
    n.definition = 'SW 에 대한 자동화 툴 제공 (CI 도구 제공) - Git, Zenkins, Eclipse, SonarQube, J-unit 등의 OSS 기반 도구 제공';

MERGE (n:Concept {id: '동기부여,_r&r_명확화'})
SET     n.name = '동기부여, R&R 명확화',
    n.name_kr = '동기부여, R&R 명확화',
    n.domain = 'PM',
    n.definition = '생산성 향상 및 변화관리 위한 동기부여 및 정체성 확보 - 업무체계 명확화, 개인/그룹/도메인 간 역할 및 책임성 확보';

MERGE (n:Concept {id: 'critical_path_의_분류_및_집중_관리'})
SET     n.name = 'Critical Path 의 분류 및 집중 관리',
    n.name_kr = 'Critical Path 의 분류 및 집중 관리',
    n.domain = 'PM',
    n.definition = '지연 요인에 대한 구체적인 내용 파악 후 영향도 파악 - 사전 Critical Path 가 발생되지 않도록 관리';

MERGE (n:Concept {id: '직접_일정_단축'})
SET     n.name = '직접 일정 단축',
    n.name_kr = '직접 일정 단축',
    n.domain = 'PM',
    n.definition = 'Crashing (자원추가)';

MERGE (n:Concept {id: '자원_제약_해결'})
SET     n.name = '자원 제약 해결',
    n.name_kr = '자원 제약 해결',
    n.domain = 'PM',
    n.definition = 'Resource Leveling';

MERGE (n:Concept {id: '추가_위험식별에_대한_대응'})
SET     n.name = '추가 위험식별에 대한 대응',
    n.name_kr = '추가 위험식별에 대한 대응',
    n.domain = 'PM',
    n.definition = 'What-If 분석 (몬테카를로분석)';

// --- 관계 ---

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '크자패병'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '투입인력의_r&r_미지정_및_모호'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '도구_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '자동화된_테스트_도구_미흡'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '커뮤니케이션_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '개발자간_의사소통_부족'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '개발_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '불명확한_목표설정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '일정_수행_관점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '일정_단축_관점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'crashing'})
MERGE (b:Concept {id: 'fast_tracking'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: 'crashing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: 'fast_tracking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '단축기법_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: 'critical_chain_상의_버퍼_제거'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '아웃소싱'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '테스트_자동화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '동기부여,_r&r_명확화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: 'critical_path_의_분류_및_집중_관리'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '직접_일정_단축'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '자원_제약_해결'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Concept {id: '추가_위험식별에_대한_대응'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Document {id: 'PM_039'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '일정단축기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '크자패병'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투입인력의_r&r_미지정_및_모호'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도구_측면'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화된_테스트_도구_미흡'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커뮤니케이션_측면'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자간_의사소통_부족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_측면'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불명확한_목표설정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정_수행_관점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정_단축_관점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crashing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_tracking'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단축기법_측면'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_chain_상의_버퍼_제거'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_자동화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기부여,_r&r_명확화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_path_의_분류_및_집중_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직접_일정_단축'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_제약_해결'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추가_위험식별에_대한_대응'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_040: 수확 체감의 법칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_040'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'law_of_diminishing_returns'})
SET     n.name = 'Law Of Diminishing Returns',
    n.name_kr = '수확 체감의 법칙',
    n.domain = 'PM',
    n.aliases = ['수확 체감의 법칙'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '활동_및_자원_고려'})
SET     n.name = '활동 및 자원 고려',
    n.name_kr = '활동 및 자원 고려',
    n.domain = 'PM',
    n.definition = '프로젝트 활동 기간 산정에 대한 중요성으로 프로젝트 활동과 자원을 종합적으로 고려해야 함';

MERGE (n:Concept {id: 'resource_smoothing'})
SET     n.name = 'Resource Smoothing',
    n.name_kr = '자원평활화',
    n.domain = 'PM',
    n.definition = '프로젝트 주공정을 변경하지 않고, 완료일을 지연하지 않으면서 자원 한도를 초과하지 않도록, 일정 활동을 조정하는 작업',
    n.aliases = ['Resource Smoothing', '자원평활화'];

// --- 관계 ---

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'law_of_diminishing_returns'})
MERGE (b:Concept {id: '활동_및_자원_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'law_of_diminishing_returns'})
MERGE (b:Concept {id: 'resource_smoothing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'law_of_diminishing_returns'})
MERGE (b:Document {id: 'PM_040'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'law_of_diminishing_returns'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동_및_자원_고려'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource_smoothing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_041: 브룩스 법칙(Brook's Law)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_041'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '브룩스_법칙'})
SET     n.name = '브룩스 법칙(Brook\'s Law)',
    n.name_kr = '브룩스 법칙(Brook\'s Law)',
    n.domain = 'PM';

MERGE (n:Concept {id: '일정관리'})
SET     n.name = '일정관리',
    n.name_kr = '일정관리',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '브룩스_법칙'})
MERGE (b:Concept {id: '일정관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '브룩스_법칙'})
MERGE (b:Document {id: 'PM_041'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '브룩스_법칙'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_042: 프로젝트 원가(예산)관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_042'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_원가관리'})
SET     n.name = '프로젝트 원가(예산)관리',
    n.name_kr = '프로젝트 원가(예산)관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '원가관리'})
SET     n.name = '원가관리',
    n.name_kr = '원가관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[계산결통]_원가관리_계획수립'})
SET     n.name = '[계산결통] 원가관리 계획수립',
    n.name_kr = '[계산결통] 원가관리 계획수립',
    n.domain = 'PM';

MERGE (n:Concept {id: '원산_산정'})
SET     n.name = '원산 산정',
    n.name_kr = '원산 산정',
    n.domain = 'PM';

MERGE (n:Concept {id: '예산_결정'})
SET     n.name = '예산 결정',
    n.name_kr = '예산 결정',
    n.domain = 'PM';

MERGE (n:Concept {id: '원가_통제'})
SET     n.name = '원가 통제',
    n.name_kr = '원가 통제',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '원가관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Concept {id: '[계산결통]_원가관리_계획수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Concept {id: '원산_산정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Concept {id: '예산_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Concept {id: '원가_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Document {id: 'PM_042'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_원가관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[계산결통]_원가관리_계획수립'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원산_산정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예산_결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가_통제'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_043: 원가 산정 기법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_043'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '원가_산정_기법'})
SET     n.name = '원가 산정 기법',
    n.name_kr = '원가 산정 기법',
    n.domain = 'PM';

MERGE (n:Concept {id: '원가관리'})
SET     n.name = '원가관리',
    n.name_kr = '원가관리',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '원가_산정_기법'})
MERGE (b:Concept {id: '원가관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원가_산정_기법'})
MERGE (b:Document {id: 'PM_043'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '원가_산정_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// PM 도메인 자동 생성 완료
// 노드: 277개
// 관계: 574개
// ================================================================