// ================================================================
// SW 도메인 (SW_151 ~ SW_200) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_125: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_125'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_127: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_127'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_129.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_129.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_129.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_129.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_129.3: 위험기반 테스트(Risk Based Testing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_129.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'risk_based_testing'})
SET     n.name = 'Risk Based Testing',
    n.name_kr = '위험기반 테스트',
    n.domain = 'SW',
    n.aliases = ['Risk Based Testing', '위험기반 테스트'];

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트_자원_한정'})
SET     n.name = '테스트 자원 한정',
    n.name_kr = '테스트 자원 한정',
    n.domain = 'SW';

MERGE (n:Concept {id: '효과성/효율성'})
SET     n.name = '효과성/효율성',
    n.name_kr = '효과성/효율성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sta'})
SET     n.name = 'STA',
    n.name_kr = 'STA',
    n.domain = 'SW',
    n.aliases = ['STA'];

MERGE (n:Concept {id: 'stta'})
SET     n.name = 'STTA',
    n.name_kr = 'STTA',
    n.domain = 'SW',
    n.aliases = ['STTA'];

MERGE (n:Concept {id: 'ita'})
SET     n.name = 'ITA',
    n.name_kr = 'ITA',
    n.domain = 'SW',
    n.aliases = ['ITA'];

MERGE (n:Concept {id: 'fta'})
SET     n.name = 'FTA',
    n.name_kr = 'FTA',
    n.domain = 'SW',
    n.aliases = ['FTA'];

// --- 관계 ---

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: '테스트_자원_한정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: '효과성/효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: 'sta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: 'stta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: 'ita'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Concept {id: 'fta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Document {id: 'SW_129.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'risk_based_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_자원_한정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효과성/효율성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ita'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_130: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_130'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_131.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_131.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_131.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_131.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_132: 테스트 오라클
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_132'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'test_oracle'})
SET     n.name = 'Test Oracle',
    n.name_kr = '테스트 오라클',
    n.domain = 'SW',
    n.aliases = ['테스트 오라클'];

MERGE (n:Concept {id: '샘플링'})
SET     n.name = '샘플링',
    n.name_kr = '샘플링',
    n.domain = 'SW';

MERGE (n:Concept {id: '휴리스틱'})
SET     n.name = '휴리스틱',
    n.name_kr = '휴리스틱',
    n.domain = 'SW';

MERGE (n:Concept {id: '일관성_검사'})
SET     n.name = '일관성 검사',
    n.name_kr = '일관성 검사',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'test_oracle'})
MERGE (b:Concept {id: '샘플링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_oracle'})
MERGE (b:Concept {id: '휴리스틱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_oracle'})
MERGE (b:Concept {id: '일관성_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_oracle'})
MERGE (b:Document {id: 'SW_132'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'test_oracle'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '샘플링'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '휴리스틱'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성_검사'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_134: Crowdingsourcing Test
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_134'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'crowdingsourcing_test'})
SET     n.name = 'Crowdingsourcing Test',
    n.name_kr = 'Crowdingsourcing Test',
    n.domain = 'SW',
    n.aliases = ['Crowdingsourcing Test'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '범위관리'})
SET     n.name = '범위관리',
    n.name_kr = '범위관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'wbs'})
SET     n.name = 'WBS',
    n.name_kr = 'WBS',
    n.domain = 'SW',
    n.aliases = ['WBS'];

MERGE (n:Concept {id: '대중'})
SET     n.name = '대중',
    n.name_kr = '대중',
    n.domain = 'SW';

MERGE (n:Concept {id: 'usage'})
SET     n.name = 'Usage',
    n.name_kr = 'Usage',
    n.domain = 'SW',
    n.aliases = ['Usage'];

MERGE (n:Concept {id: 'beta'})
SET     n.name = 'Beta',
    n.name_kr = 'Beta',
    n.domain = 'SW',
    n.aliases = ['Beta'];

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = 'System',
    n.domain = 'SW',
    n.aliases = ['System'];

MERGE (n:Concept {id: 'functional'})
SET     n.name = 'Functional',
    n.name_kr = 'Functional',
    n.domain = 'SW',
    n.aliases = ['Functional'];

MERGE (n:Concept {id: '집중을_통한_가치_최대화'})
SET     n.name = '집중을 통한 가치 최대화',
    n.name_kr = '집중을 통한 가치 최대화',
    n.domain = 'SW',
    n.definition = 'SW개발자와 테스트 전문가가 각각의 영역에 집중 - 핵심 역량에 집중해 가치 최대화';

MERGE (n:Concept {id: '개발_비용_절감'})
SET     n.name = '개발 비용 절감',
    n.name_kr = '개발 비용 절감',
    n.domain = 'SW',
    n.definition = '발견된 버그에 대해서만 비용 지불(Pay-per-bug)';

MERGE (n:Concept {id: 'sanity_testing'})
SET     n.name = 'Sanity Testing',
    n.name_kr = 'Sanity Testing',
    n.domain = 'SW',
    n.definition = '신속하게 문제 해결 여부를 확인 가능 - 특정 분류의 고객을 대상으로 피드백 수집 가능',
    n.aliases = ['Sanity Testing'];

MERGE (n:Concept {id: '사용성_제고'})
SET     n.name = '사용성 제고',
    n.name_kr = '사용성 제고',
    n.domain = 'SW',
    n.definition = '사용자와 개발자 사이의 사용성 사각 지대를 신속히 발견 가능';

MERGE (n:Concept {id: '테스트_커버리지_확대'})
SET     n.name = '테스트 커버리지 확대',
    n.name_kr = '테스트 커버리지 확대',
    n.domain = 'SW',
    n.definition = '수십에서 수백명의 테스터 투입으로 다양성에 기반한 테스트 커버리지 확대 가능';

MERGE (n:Concept {id: '빠른_테스트'})
SET     n.name = '빠른 테스트',
    n.name_kr = '빠른 테스트',
    n.domain = 'SW',
    n.definition = 'In-house 테스트에 조직이 가질 수 있는 편향성을 제거';

MERGE (n:Concept {id: '유연성'})
SET     n.name = '유연성',
    n.name_kr = '유연성',
    n.domain = 'SW',
    n.definition = '짧은 시간 내에 테스트 인력의 확장이 가능';

MERGE (n:Concept {id: '전문성'})
SET     n.name = '전문성',
    n.name_kr = '전문성',
    n.domain = 'SW',
    n.definition = '사외의 전문가들이 가진 열정을 기반으로 제품 품질의 개선 가능';

MERGE (n:Concept {id: '포괄성'})
SET     n.name = '포괄성',
    n.name_kr = '포괄성',
    n.domain = 'SW',
    n.definition = 'In-house테스트 조직이 가질 수 있는 편향성을 제거';

// --- 관계 ---

MERGE (a:Concept {id: '범위관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Concept {id: '범위관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '대중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: 'usage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: 'beta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: 'system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: 'functional'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '집중을_통한_가치_최대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '개발_비용_절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: 'sanity_testing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '사용성_제고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '테스트_커버리지_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '빠른_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '유연성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '전문성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Concept {id: '포괄성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Document {id: 'SW_134'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'crowdingsourcing_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범위관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wbs'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대중'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'functional'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집중을_통한_가치_최대화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_비용_절감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sanity_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용성_제고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_커버리지_확대'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빠른_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전문성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포괄성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_135: Compliance Test (준거성 테스트)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_135'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'compliance_test'})
SET     n.name = 'Compliance Test',
    n.name_kr = '준거성 테스트',
    n.domain = 'SW',
    n.aliases = ['Compliance Test', '준거성 테스트'];

MERGE (n:Concept {id: '테스트기법'})
SET     n.name = '테스트기법',
    n.name_kr = '테스트기법',
    n.domain = 'SW';

MERGE (n:Concept {id: '감사'})
SET     n.name = '감사',
    n.name_kr = '감사',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리'})
SET     n.name = '감리',
    n.name_kr = '감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '내부통제'})
SET     n.name = '내부통제',
    n.name_kr = '내부통제',
    n.domain = 'SW';

MERGE (n:Concept {id: 'substantive_test'})
SET     n.name = 'Substantive Test',
    n.name_kr = '실증성 테스트',
    n.domain = 'SW',
    n.definition = '활동 또는 거래들의 완전성, 정확성 또는 그 존재성에 대한 감사 증거를 수집하기 위해 설계된 세부 활동 및 거래에 대한 테스트 또는 분석적 조사 테스트',
    n.aliases = ['Substantive Test', '실증성 테스트'];

MERGE (n:Concept {id: '준거성'})
SET     n.name = '준거성',
    n.name_kr = '준거성',
    n.domain = 'SW',
    n.definition = '프로세스 준수';

MERGE (n:Concept {id: '실증성'})
SET     n.name = '실증성',
    n.name_kr = '실증성',
    n.domain = 'SW',
    n.definition = '증거수집';

MERGE (n:Metric {id: '증거평가'})
SET     n.name = '증거평가',
    n.name_kr = '증거평가',
    n.domain = 'SW',
    n.definition = '자산보호 및 자료를 무결성 평가기법, 효과성 평가기법, 효율성 평가기법';

MERGE (n:Concept {id: '실증적_테스트'})
SET     n.name = '실증적 테스트',
    n.name_kr = '실증적 테스트',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '테스트기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '감사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '내부통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: 'substantive_test'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '준거성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '실증성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Metric {id: '증거평가'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '실증적_테스트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Concept {id: '실증적_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Document {id: 'SW_135'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'compliance_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감사'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부통제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'substantive_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준거성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실증성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '증거평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실증적_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_136: 모델기반 테스트 (Model-based Test; MBT)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_136'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '모델기반_테스트'})
SET     n.name = '모델기반 테스트 (Model-based Test; MBT)',
    n.name_kr = '모델기반 테스트 (Model-based Test; MBT)',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트기법'})
SET     n.name = '테스트기법',
    n.name_kr = '테스트기법',
    n.domain = 'SW';

MERGE (n:Concept {id: '정형화된_표기법'})
SET     n.name = '정형화된 표기법',
    n.name_kr = '정형화된 표기법',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트_케이스_자동_생성'})
SET     n.name = '테스트 케이스 자동 생성',
    n.name_kr = '테스트 케이스 자동 생성',
    n.domain = 'SW';

MERGE (n:Concept {id: '기존_테스트'})
SET     n.name = '기존 테스트',
    n.name_kr = '기존 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'model_based_test'})
SET     n.name = '모델 기반 테스트',
    n.name_kr = '모델 기반 테스트',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '테스트기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '정형화된_표기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '테스트_케이스_자동_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '기존_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '기존_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: '기존_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Concept {id: 'model_based_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Document {id: 'SW_136'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '모델기반_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정형화된_표기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_케이스_자동_생성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'model_based_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_138: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_138'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_139: 사용성 테스트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_139'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'ut,_usability_testing'})
SET     n.name = 'Ut, Usability Testing',
    n.name_kr = '사용성 테스트',
    n.domain = 'SW',
    n.aliases = ['사용성 테스트'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '사용성테스트'})
SET     n.name = '사용성테스트',
    n.name_kr = '사용성테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: '카드소팅'})
SET     n.name = '카드소팅',
    n.name_kr = '카드소팅',
    n.domain = 'SW';

MERGE (n:Concept {id: '페이퍼목업'})
SET     n.name = '페이퍼목업',
    n.name_kr = '페이퍼목업',
    n.domain = 'SW';

MERGE (n:Concept {id: '스크린목업'})
SET     n.name = '스크린목업',
    n.name_kr = '스크린목업',
    n.domain = 'SW';

MERGE (n:Concept {id: '규모(massive'})
SET     n.name = '규모(Massive',
    n.name_kr = '규모(Massive',
    n.domain = 'SW';

MERGE (n:Concept {id: 'rapid)'})
SET     n.name = 'Rapid)',
    n.name_kr = 'Rapid)',
    n.domain = 'SW';

MERGE (n:Concept {id: '시기(formative'})
SET     n.name = '시기(Formative',
    n.name_kr = '시기(Formative',
    n.domain = 'SW';

MERGE (n:Concept {id: 'summative)'})
SET     n.name = 'Summative)',
    n.name_kr = 'Summative)',
    n.domain = 'SW';

MERGE (n:Concept {id: 'formative,_summative'})
SET     n.name = '시기',
    n.name_kr = '시기',
    n.domain = 'SW';

MERGE (n:Concept {id: '방법'})
SET     n.name = '방법',
    n.name_kr = '방법',
    n.domain = 'SW';

MERGE (n:Concept {id: '비고'})
SET     n.name = '비고',
    n.name_kr = '비고',
    n.domain = 'SW';

MERGE (n:Concept {id: 'card_sorting'})
SET     n.name = 'Card Sorting',
    n.name_kr = '카드 소팅',
    n.domain = 'SW',
    n.definition = '사용자 리서치를 통해 메뉴 컨셉이 잡히면 원시 컨텐츠 들의 분류 작업 수행 - 시스템을 이용할 사용자가 참여해야 하며 인포메이션 아키텍처 전문가의 분석을 통해 여러 번 수행되어짐',
    n.aliases = ['Card Sorting', '카드 소팅'];

MERGE (n:Concept {id: 'paper_mock_up'})
SET     n.name = 'Paper Mock-up',
    n.name_kr = '페이퍼 목업',
    n.domain = 'SW',
    n.definition = '카드 소팅이 끝나 메뉴 체계에 대한 컨셉과 그룹핑이 어느 정도 완성되면 실제화면에 대한 설계 작업을 종이로 만들어 사용성 테스트 수행 - 네비게이션 스트럭처 작업의 윤곽 드러남',
    n.aliases = ['Paper Mock-up', '페이퍼 목업'];

MERGE (n:Concept {id: 'screen_mock_up'})
SET     n.name = 'Screen Mock-up',
    n.name_kr = '스크린 목업',
    n.domain = 'SW',
    n.definition = '페이퍼 목업 테스트의 반복을 거쳐 화면 설계와 네비게이션 구조가 정해지면 워드 문서로 이를 작성하고 실제 화면에서 네비게이션이나 레이블링에 대한 사용성 테스트 수행 - 시스템 기능이나 세부 화면 항목에 대한 오류도 측정 가능',
    n.aliases = ['Screen Mock-up', '스크린 목업'];

MERGE (n:Concept {id: 'massive_usability_testing'})
SET     n.name = 'Massive Usability Testing',
    n.name_kr = 'Massive Usability Testing',
    n.domain = 'SW',
    n.aliases = ['Massive Usability Testing'];

MERGE (n:Concept {id: 'rapid_usability_testing'})
SET     n.name = 'Rapid Usability Testing',
    n.name_kr = 'Rapid Usability Testing',
    n.domain = 'SW',
    n.aliases = ['Rapid Usability Testing'];

MERGE (n:Concept {id: 'formative_usability_testing'})
SET     n.name = 'Formative Usability Testing',
    n.name_kr = 'Formative Usability Testing',
    n.domain = 'SW',
    n.aliases = ['Formative Usability Testing'];

MERGE (n:Concept {id: 'summative_usability_testing'})
SET     n.name = 'Summative Usability Testing',
    n.name_kr = 'Summative Usability Testing',
    n.domain = 'SW',
    n.aliases = ['Summative Usability Testing'];

// --- 관계 ---

MERGE (a:Concept {id: '사용성테스트'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '카드소팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '페이퍼목업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '스크린목업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '규모(massive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'rapid)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '시기(formative'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'summative)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'formative,_summative'})
MERGE (b:Concept {id: '방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'formative,_summative'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'formative,_summative'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '방법'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: '비고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'card_sorting'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'paper_mock_up'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'screen_mock_up'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'massive_usability_testing'})
MERGE (b:Concept {id: 'rapid_usability_testing'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'massive_usability_testing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'rapid_usability_testing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'formative_usability_testing'})
MERGE (b:Concept {id: 'summative_usability_testing'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'formative_usability_testing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Concept {id: 'summative_usability_testing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Document {id: 'SW_139'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ut,_usability_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용성테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카드소팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '페이퍼목업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스크린목업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규모(massive'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rapid)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시기(formative'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'summative)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'formative,_summative'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'card_sorting'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paper_mock_up'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'screen_mock_up'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'massive_usability_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rapid_usability_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'formative_usability_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'summative_usability_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_140: 빅뱅 테스트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_140'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '빅뱅_테스트'})
SET     n.name = '빅뱅 테스트',
    n.name_kr = '빅뱅 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'bigbang_test'})
SET     n.name = '빅뱅테스트',
    n.name_kr = '빅뱅테스트',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'bigbang_test'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '빅뱅_테스트'})
MERGE (b:Document {id: 'SW_140'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '빅뱅_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bigbang_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_141: 패키지 소프트웨어 테스트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_141'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '패키지_소프트웨어_테스트'})
SET     n.name = '패키지 소프트웨어 테스트',
    n.name_kr = '패키지 소프트웨어 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Standard {id: 'iso_14598->25041'})
SET     n.name = 'ISO 14598->25041',
    n.name_kr = 'ISO 14598->25041',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가_요구_사항_정의'})
SET     n.name = '평가 요구 사항 정의',
    n.name_kr = '평가 요구 사항 정의',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가_명세'})
SET     n.name = '평가 명세',
    n.name_kr = '평가 명세',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가_설계'})
SET     n.name = '평가 설계',
    n.name_kr = '평가 설계',
    n.domain = 'SW';

MERGE (n:Concept {id: '평가_수행'})
SET     n.name = '평가 수행',
    n.name_kr = '평가 수행',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능성'})
SET     n.name = '기능성',
    n.name_kr = '기능성',
    n.domain = 'SW',
    n.definition = '적합성';

MERGE (n:Concept {id: '정확성'})
SET     n.name = '정확성',
    n.name_kr = '정확성',
    n.domain = 'SW',
    n.definition = '기능구현 정확성, 정밀성';

MERGE (n:Concept {id: '상호운영성'})
SET     n.name = '상호운영성',
    n.name_kr = '상호운영성',
    n.domain = 'SW',
    n.definition = '데이터 교환성';

MERGE (n:Concept {id: '보안성'})
SET     n.name = '보안성',
    n.name_kr = '보안성',
    n.domain = 'SW',
    n.definition = '접근통제가능성, 접근감시가능성';

MERGE (n:Concept {id: '준수성'})
SET     n.name = '준수성',
    n.name_kr = '준수성',
    n.domain = 'SW',
    n.definition = '기능표준준수율, 인터페이스준수율';

MERGE (n:Concept {id: '신뢰성'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'SW',
    n.definition = '성숙성';

MERGE (n:Concept {id: '오류허용성'})
SET     n.name = '오류허용성',
    n.name_kr = '오류허용성',
    n.domain = 'SW',
    n.definition = '다운회피율, 고장회피율, 오조작회피율, 경계값처리가능성, 오류방지성';

MERGE (n:Concept {id: '회복성'})
SET     n.name = '회복성',
    n.name_kr = '회복성',
    n.domain = 'SW',
    n.definition = '데이터복구율, 복구가능율, 복구효과율, 문제해결구현율';

MERGE (n:Concept {id: '사용성'})
SET     n.name = '사용성',
    n.name_kr = '사용성',
    n.domain = 'SW',
    n.definition = '이해가능성';

MERGE (n:Concept {id: '학습가능성'})
SET     n.name = '학습가능성',
    n.name_kr = '학습가능성',
    n.domain = 'SW',
    n.definition = '기능학습용이성, 도움말접근용이성';

MERGE (n:Concept {id: '운영성'})
SET     n.name = '운영성',
    n.name_kr = '운영성',
    n.domain = 'SW',
    n.definition = '운영절차조정가능성, 운영절차일관성, 진행상태파악가능성, 오류복구용이성, 문제해결정보제공';

MERGE (n:Concept {id: '선호도'})
SET     n.name = '선호도',
    n.name_kr = '선호도',
    n.domain = 'SW',
    n.definition = '인터페이스변경가능, 인터페이스선호도, 사용성표준준수';

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'SW',
    n.definition = '시간효율성';

MERGE (n:Concept {id: '자원효율성'})
SET     n.name = '자원효율성',
    n.name_kr = '자원효율성',
    n.domain = 'SW',
    n.definition = '입출력자원사용율, 메모리사용율, 데이터전송율, CPU사용율';

MERGE (n:Concept {id: '유지_보수성'})
SET     n.name = '유지 보수성',
    n.name_kr = '유지 보수성',
    n.domain = 'SW',
    n.definition = '분석성';

MERGE (n:Concept {id: '변경성'})
SET     n.name = '변경성',
    n.name_kr = '변경성',
    n.domain = 'SW',
    n.definition = '변경가능성, 소프트웨어변경통제가능성, 변경용이성';

MERGE (n:Concept {id: '안정성'})
SET     n.name = '안정성',
    n.name_kr = '안정성',
    n.domain = 'SW',
    n.definition = '변경성공율';

MERGE (n:Concept {id: '시험가능성'})
SET     n.name = '시험가능성',
    n.name_kr = '시험가능성',
    n.domain = 'SW',
    n.definition = '내장형시험기능보유성';

MERGE (n:Concept {id: '이식성'})
SET     n.name = '이식성',
    n.name_kr = '이식성',
    n.domain = 'SW',
    n.definition = '적응성';

MERGE (n:Concept {id: '설치가능성'})
SET     n.name = '설치가능성',
    n.name_kr = '설치가능성',
    n.domain = 'SW',
    n.definition = '설치가능율, 제거가능율';

MERGE (n:Concept {id: '대체성'})
SET     n.name = '대체성',
    n.name_kr = '대체성',
    n.domain = 'SW',
    n.definition = '데이터지속가능율, 기능지속가능율';

MERGE (n:Concept {id: '공존성'})
SET     n.name = '공존성',
    n.name_kr = '공존성',
    n.domain = 'SW',
    n.definition = '공존가능율';

// --- 관계 ---

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Standard {id: 'iso_14598->25041'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '평가_요구_사항_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '평가_명세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '평가_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '평가_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '기능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '정확성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '상호운영성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '보안성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '준수성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '오류허용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '회복성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '사용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '학습가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '운영성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '선호도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '자원효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '유지_보수성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '변경성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '시험가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '이식성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '설치가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '대체성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Concept {id: '공존성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Document {id: 'SW_141'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '패키지_소프트웨어_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_14598->25041'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_요구_사항_정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_명세'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_수행'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정확성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운영성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준수성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류허용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습가능성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선호도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원효율성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지_보수성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시험가능성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이식성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설치가능성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대체성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공존성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_142: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_142'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_143: 지각 테스팅
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_143'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '지각_테스팅'})
SET     n.name = '지각 테스팅',
    n.name_kr = '지각 테스팅',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'ui_자동화_테스트'})
SET     n.name = 'UI 자동화 테스트',
    n.name_kr = 'UI 자동화 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'dpxdt'})
SET     n.name = 'DPXDT',
    n.name_kr = 'DPXDT',
    n.domain = 'SW',
    n.aliases = ['DPXDT'];

MERGE (n:Concept {id: 'viff'})
SET     n.name = 'Viff',
    n.name_kr = 'Viff',
    n.domain = 'SW',
    n.aliases = ['Viff'];

MERGE (n:Concept {id: 'pix_diff'})
SET     n.name = 'Pix-Diff',
    n.name_kr = 'Pix-Diff',
    n.domain = 'SW',
    n.aliases = ['Pix-Diff'];

MERGE (n:Concept {id: 'applitools'})
SET     n.name = 'Applitools',
    n.name_kr = 'Applitools',
    n.domain = 'SW',
    n.aliases = ['Applitools'];

// --- 관계 ---

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'ui_자동화_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'dpxdt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'viff'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'pix_diff'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Concept {id: 'applitools'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Document {id: 'SW_143'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '지각_테스팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ui_자동화_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dpxdt'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'viff'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pix_diff'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'applitools'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_144.1: 성능 테스트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_144.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '성능_테스트'})
SET     n.name = '성능 테스트',
    n.name_kr = '성능 테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '루스확가티'})
SET     n.name = '루스확가티',
    n.name_kr = '루스확가티',
    n.domain = 'SW';

MERGE (n:Metric {id: '방법'})
SET     n.name = '방법',
    n.name_kr = '방법',
    n.domain = 'SW',
    n.definition = 'Loop Back 시험 , Tier 시험, Spike 시험 , 확장성 시험, 가용성 시험';

MERGE (n:Concept {id: '테스트_방법_측면'})
SET     n.name = '테스트 방법 측면',
    n.name_kr = '테스트 방법 측면',
    n.domain = 'SW',
    n.definition = 'Loop back Test';

MERGE (n:Concept {id: 'spike_test'})
SET     n.name = 'Spike Test',
    n.name_kr = 'Spike Test',
    n.domain = 'SW',
    n.definition = '특정시점에 순간적으로 대량의 트랜잭션 동시 발생',
    n.aliases = ['Spike Test'];

MERGE (n:Concept {id: 'tier_test'})
SET     n.name = 'Tier Test',
    n.name_kr = 'Tier Test',
    n.domain = 'SW',
    n.definition = '구체적인 성능 병목 구간을 찾기 위해 개발 소스상의 직접적 변경없이 시험',
    n.aliases = ['Tier Test'];

MERGE (n:Concept {id: '확장성_테스트'})
SET     n.name = '확장성 테스트',
    n.name_kr = '확장성 테스트',
    n.domain = 'SW',
    n.definition = '시스템 증설에 대한 성능 향상 비율 측정';

MERGE (n:Concept {id: 'load_test'})
SET     n.name = 'Load Test',
    n.name_kr = 'Load Test',
    n.domain = 'SW',
    n.definition = '일정시간 동안 부하를 가하여 최대 TPS와 응답시간 산출',
    n.aliases = ['Load Test'];

MERGE (n:Concept {id: 'stress_test'})
SET     n.name = 'Stress Test',
    n.name_kr = 'Stress Test',
    n.domain = 'SW',
    n.definition = '정상 상황보다 더 많은 부하를 가하여 시스템의 최대수용범위 측정',
    n.aliases = ['Stress Test'];

MERGE (n:Concept {id: 'endurance_test'})
SET     n.name = 'Endurance Test',
    n.name_kr = 'Endurance Test',
    n.domain = 'SW',
    n.definition = '긴 시간동안 부하를 가하여 시스템의 내구성을 테스트',
    n.aliases = ['Endurance Test'];

MERGE (n:Concept {id: 'breakpoint_test'})
SET     n.name = 'Breakpoint Test',
    n.name_kr = 'Breakpoint Test',
    n.domain = 'SW',
    n.definition = '부하를 점진적으로 증가시켜, 시스템의 장애발생 지점 테스트',
    n.aliases = ['Breakpoint Test'];

MERGE (n:Concept {id: 'availability_test'})
SET     n.name = 'Availability Test',
    n.name_kr = 'Availability Test',
    n.domain = 'SW',
    n.definition = '시스템 이중구성의 상태에서 장애 유도 후 장애로 인한 서비스전환 동작 여부 테스트',
    n.aliases = ['Availability Test'];

MERGE (n:Concept {id: '테스트_목적_측면'})
SET     n.name = '테스트 목적 측면',
    n.name_kr = '테스트 목적 측면',
    n.domain = 'SW',
    n.definition = '단위 성능 테스트';

MERGE (n:Concept {id: '복합_성능_테스트'})
SET     n.name = '복합 성능 테스트',
    n.name_kr = '복합 성능 테스트',
    n.domain = 'SW',
    n.definition = '실제 시스템이 사용되는 상황을 재현하여 테스트 수행';

MERGE (n:Concept {id: '임계_성능_테스트'})
SET     n.name = '임계 성능 테스트',
    n.name_kr = '임계 성능 테스트',
    n.domain = 'SW',
    n.definition = '시스템이 최대로 발휘할 수 있는 성능을 테스트';

MERGE (n:Concept {id: '장시간_테스트'})
SET     n.name = '장시간 테스트',
    n.name_kr = '장시간 테스트',
    n.domain = 'SW',
    n.definition = '시스템 운영 중 발생 가능한 메모리 누수 및 예기치 못한 오류들을 사전에 검증하기 위한 테스트';

// --- 관계 ---

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '루스확가티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Metric {id: '방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '테스트_방법_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'spike_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'tier_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '확장성_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'load_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'stress_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'endurance_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'breakpoint_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: 'availability_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '테스트_목적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '복합_성능_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '임계_성능_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Concept {id: '장시간_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Document {id: 'SW_144.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '성능_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '루스확가티'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_방법_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spike_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tier_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'load_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stress_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'endurance_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'breakpoint_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'availability_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_목적_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복합_성능_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임계_성능_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장시간_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_144.2: 성능시험 결과보고서
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_144.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '성능시험_결과보고서'})
SET     n.name = '성능시험 결과보고서',
    n.name_kr = '성능시험 결과보고서',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'weblog분석'})
SET     n.name = 'Weblog분석',
    n.name_kr = 'Weblog분석',
    n.domain = 'SW';

MERGE (n:Concept {id: 'workload_모델링'})
SET     n.name = 'Workload 모델링',
    n.name_kr = 'Workload 모델링',
    n.domain = 'SW';

MERGE (n:Concept {id: '작성_사전_준비'})
SET     n.name = '작성 사전 준비',
    n.name_kr = '작성 사전 준비',
    n.domain = 'SW',
    n.definition = '① 성능테스트 데이터 항목 숙지';

MERGE (n:Concept {id: '②_성능테스트_관련_데이터_통합,_분류_및_분석'})
SET     n.name = '② 성능테스트 관련 데이터 통합, 분류 및 분석',
    n.name_kr = '② 성능테스트 관련 데이터 통합, 분류 및 분석',
    n.domain = 'SW',
    n.definition = '스프레드시트 프로그램 등을 활용하여 사전 작업 진행 - 모든 수치, 통계, 원시 데이터를 복사하여 붙여 넣고, 이를 분류하고 분석';

MERGE (n:Concept {id: '작성'})
SET     n.name = '작성',
    n.name_kr = '작성',
    n.domain = 'SW',
    n.definition = '③ 성능테스트 보고서 작성';

MERGE (n:Concept {id: '사후검토'})
SET     n.name = '사후검토',
    n.name_kr = '사후검토',
    n.domain = 'SW',
    n.definition = '④ 성능테스트 검토/ 제출';

// --- 관계 ---

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: 'weblog분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: 'workload_모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: '작성_사전_준비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: '②_성능테스트_관련_데이터_통합,_분류_및_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: '작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Concept {id: '사후검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Document {id: 'SW_144.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '성능시험_결과보고서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'weblog분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'workload_모델링'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작성_사전_준비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_성능테스트_관련_데이터_통합,_분류_및_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사후검토'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_145: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_145'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_146: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_146'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_147: PT(Pilot Test)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_147'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'pilot_test'})
SET     n.name = 'Pilot Test',
    n.name_kr = 'PT',
    n.domain = 'SW',
    n.aliases = ['Pilot Test', 'PT'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '사전_개발'})
SET     n.name = '사전 개발',
    n.name_kr = '사전 개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '위헙발견'})
SET     n.name = '위헙발견',
    n.name_kr = '위헙발견',
    n.domain = 'SW';

MERGE (n:Concept {id: '기술검증'})
SET     n.name = '기술검증',
    n.name_kr = '기술검증',
    n.domain = 'SW';

MERGE (n:Concept {id: '소규모선행'})
SET     n.name = '소규모선행',
    n.name_kr = '소규모선행',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Concept {id: '사전_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Concept {id: '위헙발견'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Concept {id: '기술검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Concept {id: '소규모선행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Document {id: 'SW_147'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pilot_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전_개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위헙발견'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소규모선행'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_148: Fuzzy Testing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_148'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'fuzzy_testing'})
SET     n.name = 'Fuzzy Testing',
    n.name_kr = 'Fuzzy Testing',
    n.domain = 'SW',
    n.aliases = ['Fuzzy Testing'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '입무_간신_고자특징'})
SET     n.name = '입무 간신 고자특징',
    n.name_kr = '입무 간신 고자특징',
    n.domain = 'SW';

MERGE (n:Concept {id: '화박'})
SET     n.name = '화박',
    n.name_kr = '화박',
    n.domain = 'SW';

MERGE (n:Concept {id: '블박퍼징_종류_파미스공'})
SET     n.name = '블박퍼징 종류 파미스공',
    n.name_kr = '블박퍼징 종류 파미스공',
    n.domain = 'SW';

MERGE (n:Concept {id: 'app'})
SET     n.name = 'APP',
    n.name_kr = 'APP',
    n.domain = 'SW',
    n.aliases = ['APP'];

MERGE (n:Concept {id: 'ip무선공격_테스트범위'})
SET     n.name = 'IP무선공격 테스트범위',
    n.name_kr = 'IP무선공격 테스트범위',
    n.domain = 'SW';

MERGE (n:Concept {id: '2)_입력_값_선정'})
SET     n.name = '2) 입력 값 선정',
    n.name_kr = '2) 입력 값 선정',
    n.domain = 'SW',
    n.definition = '오류를 유발시킬 수 있는 입력값을 선정 - 미디어 파일, 다큐먼트 파일, 프로토콜, 비정상 입력값';

MERGE (n:Technology {id: '3)_테스트_케이스_생성'})
SET     n.name = '3) 테스트 케이스 생성',
    n.name_kr = '3) 테스트 케이스 생성',
    n.domain = 'SW',
    n.definition = '입력값에 대한 테스트 케이스 생성 - 제너레이션, 뮤테이션 (Tool : FuzzBox, Seed gathering)';

MERGE (n:Concept {id: '4)_테스트_실행'})
SET     n.name = '4) 테스트 실행',
    n.name_kr = '4) 테스트 실행',
    n.domain = 'SW',
    n.definition = '테스트 케이스를 입력하여 프로그램 실행 - Command line 인터페이스';

MERGE (n:Concept {id: '5)_시스템_동작_모니터링'})
SET     n.name = '5) 시스템 동작 모니터링',
    n.name_kr = '5) 시스템 동작 모니터링',
    n.domain = 'SW',
    n.definition = '문제 발생시 로그 수집 (System log, kernel log Crash call stack)';

MERGE (n:Threat {id: '6)_문제_분류_및_해결'})
SET     n.name = '6) 문제 분류 및 해결',
    n.name_kr = '6) 문제 분류 및 해결',
    n.domain = 'SW',
    n.definition = '문제 발생 항목 점검, 원인 분석 및 코드 수정 - Null pointer dereferencing divide by 0, buffer overflow';

MERGE (n:Concept {id: '테스팅_기법'})
SET     n.name = '테스팅 기법',
    n.name_kr = '테스팅 기법',
    n.domain = 'SW',
    n.definition = '블랙박스 퍼징';

MERGE (n:Concept {id: '화이트박스_퍼징'})
SET     n.name = '화이트박스 퍼징',
    n.name_kr = '화이트박스 퍼징',
    n.domain = 'SW',
    n.definition = '소스 코드 기반으로 시스템을 분석 후 입력값을 산출하는 퍼즈 테스팅';

MERGE (n:Concept {id: '그레이박스_퍼징'})
SET     n.name = '그레이박스 퍼징',
    n.name_kr = '그레이박스 퍼징',
    n.domain = 'SW',
    n.definition = '시스템의 내부구조를 일부만 알고 이 정보를 기반으로 입력값을 생성하여 블랙박스 테스트 수행';

MERGE (n:Concept {id: '데이터_변조_방식'})
SET     n.name = '데이터 변조 방식',
    n.name_kr = '데이터 변조 방식',
    n.domain = 'SW',
    n.definition = '뮤테이션 기반 퍼징';

MERGE (n:Concept {id: '제너레이션_퍼징'})
SET     n.name = '제너레이션 퍼징',
    n.name_kr = '제너레이션 퍼징',
    n.domain = 'SW',
    n.definition = '대상 시스템의 파일 포멧이나 프로토콜 스펙을 분석 후 취약점을 공격할 수 있는 형태로 입력값 변조 - 스펙을 모두 분석해야 되므로 Intelligent Fuzzer라고도 불림';

MERGE (n:Concept {id: '데이터_생성'})
SET     n.name = '데이터 생성',
    n.name_kr = '데이터 생성',
    n.domain = 'SW',
    n.definition = 'Dumb Fuzzing';

MERGE (n:Concept {id: 'smart_fuzzing'})
SET     n.name = 'Smart Fuzzing',
    n.name_kr = 'Smart Fuzzing',
    n.domain = 'SW',
    n.definition = 'Input 모델에 기반한 새로운 유형의 테스트 데이터 정의',
    n.aliases = ['Smart Fuzzing'];

MERGE (n:Concept {id: 'evolutionary'})
SET     n.name = 'Evolutionary',
    n.name_kr = 'Evolutionary',
    n.domain = 'SW',
    n.definition = '응답 결과에 따라 새로운 데이터를 생성',
    n.aliases = ['Evolutionary'];

MERGE (n:Concept {id: '데이터_투입'})
SET     n.name = '데이터 투입',
    n.name_kr = '데이터 투입',
    n.domain = 'SW',
    n.definition = 'Valid Case Fuzzing';

MERGE (n:Concept {id: 'invalid_case_skip_fuzzing'})
SET     n.name = 'Invalid Case Skip Fuzzing',
    n.name_kr = 'Invalid Case Skip Fuzzing',
    n.domain = 'SW',
    n.definition = '비정상 테스트 데이터 투입 후 시스템이 무응답 상태에서 정상 테이트 전송 Fail/Crash 여부 확인',
    n.aliases = ['Invalid Case Skip Fuzzing'];

MERGE (n:Concept {id: 'invalid_case_fail_fuzzing'})
SET     n.name = 'Invalid Case Fail Fuzzing',
    n.name_kr = 'Invalid Case Fail Fuzzing',
    n.domain = 'SW',
    n.definition = '비정상 테스트 데이트 투입 후 시스템 Fail 유도, 이후 정상데이터 투입 시스템 정상 응답 체크',
    n.aliases = ['Invalid Case Fail Fuzzing'];

MERGE (n:Concept {id: '변조_대상'})
SET     n.name = '변조 대상',
    n.name_kr = '변조 대상',
    n.domain = 'SW',
    n.definition = 'Mutation based Fuzzing';

MERGE (n:Concept {id: 'generation_based_fuzzing'})
SET     n.name = 'Generation based Fuzzing',
    n.name_kr = 'Generation based Fuzzing',
    n.domain = 'SW',
    n.definition = '구조변형을 기반으로 한 Fuzz테스팅',
    n.aliases = ['Generation based Fuzzing'];

MERGE (n:Concept {id: 'black_box_fuzzing'})
SET     n.name = 'Black Box Fuzzing',
    n.name_kr = 'Black Box Fuzzing',
    n.domain = 'SW',
    n.definition = '코드 흐름에 대한 검증 없이 수행하는 무작위 Fuzz 테스팅 입력 값은 무작위적이며 단순하다. 어플리케이션의 실행이 멈추거나(crash) 실행이 일시적으로 보류(hang)되면 테스트에서 실패한 것으로 간주되고, 그렇지 않다면 테스트 통과 단순하지만, 취약점 발견 확률이 낮음',
    n.aliases = ['Black Box Fuzzing'];

MERGE (n:Concept {id: 'web_application_fuzz_툴'})
SET     n.name = 'Web Application Fuzz 툴',
    n.name_kr = 'Web Application Fuzz 툴',
    n.domain = 'SW',
    n.definition = 'MielieTool';

MERGE (n:Concept {id: 'wapiti'})
SET     n.name = 'Wapiti',
    n.name_kr = 'Wapiti',
    n.domain = 'SW',
    n.definition = 'Python으로 구현된 웹 어플리케이션 fuzzer 웹 취약점 스캐너 일종',
    n.aliases = ['Wapiti'];

MERGE (n:Threat {id: 'webfuzzer'})
SET     n.name = 'WebFuzzer',
    n.name_kr = 'WebFuzzer',
    n.domain = 'SW',
    n.definition = '원격 취약점 점검 웹 어플리케이션 fuzzer sql injection, cross site scripting, 원격 코드 실행, file disclosure, directory traversal, php including, shell escaping 13 및 안전하지 않은 perl open() 호출 등',
    n.aliases = ['WebFuzzer'];

MERGE (n:Concept {id: 'browser_fuzz_툴'})
SET     n.name = 'Browser Fuzz 툴',
    n.name_kr = 'Browser Fuzz 툴',
    n.domain = 'SW',
    n.definition = 'MangleMe';

MERGE (n:Concept {id: 'axman'})
SET     n.name = 'AxMan',
    n.name_kr = 'AxMan',
    n.domain = 'SW',
    n.definition = 'H.D.Moore 개발, 웹 기반의 ActiveX Fuzz 엔진 IE를 통해 노출된 COM 오브젝트 취약점 발견',
    n.aliases = ['AxMan'];

MERGE (n:Concept {id: 'comraider'})
SET     n.name = 'COMRaider',
    n.name_kr = 'COMRaider',
    n.domain = 'SW',
    n.definition = 'David Zimmer개발 COM Object 인터페이스를 Fuzz하기 위한 툴 경로, 파일명, guid로 COM 오브젝트 스캔',
    n.aliases = ['COMRaider'];

// --- 관계 ---

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '입무_간신_고자특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '화박'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '블박퍼징_종류_파미스공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'app'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'ip무선공격_테스트범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '2)_입력_값_선정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Technology {id: '3)_테스트_케이스_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '4)_테스트_실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '5)_시스템_동작_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Threat {id: '6)_문제_분류_및_해결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '테스팅_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '화이트박스_퍼징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '그레이박스_퍼징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '데이터_변조_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '제너레이션_퍼징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '데이터_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'smart_fuzzing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'evolutionary'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '데이터_투입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'invalid_case_skip_fuzzing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'invalid_case_fail_fuzzing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: '변조_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'generation_based_fuzzing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'black_box_fuzzing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'web_application_fuzz_툴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'wapiti'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Threat {id: 'webfuzzer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'browser_fuzz_툴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'axman'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Concept {id: 'comraider'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Document {id: 'SW_148'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fuzzy_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입무_간신_고자특징'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화박'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블박퍼징_종류_파미스공'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'app'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip무선공격_테스트범위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_입력_값_선정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '3)_테스트_케이스_생성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_테스트_실행'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_시스템_동작_모니터링'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '6)_문제_분류_및_해결'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스팅_기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화이트박스_퍼징'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그레이박스_퍼징'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_변조_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제너레이션_퍼징'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_생성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_fuzzing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'evolutionary'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_투입'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invalid_case_skip_fuzzing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invalid_case_fail_fuzzing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변조_대상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generation_based_fuzzing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'black_box_fuzzing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_application_fuzz_툴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wapiti'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'webfuzzer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'browser_fuzz_툴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'axman'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'comraider'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_149: Concolic Testing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_149'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'concolic_testing'})
SET     n.name = 'Concolic Testing',
    n.name_kr = 'Concolic Testing',
    n.domain = 'SW',
    n.aliases = ['Concolic Testing'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'concrete'})
SET     n.name = 'Concrete',
    n.name_kr = 'Concrete',
    n.domain = 'SW',
    n.aliases = ['Concrete'];

MERGE (n:Concept {id: 'symbolic'})
SET     n.name = 'Symbolic',
    n.name_kr = 'Symbolic',
    n.domain = 'SW',
    n.aliases = ['Symbolic'];

MERGE (n:Concept {id: 'probe'})
SET     n.name = 'Probe',
    n.name_kr = 'Probe',
    n.domain = 'SW',
    n.aliases = ['Probe'];

MERGE (n:Concept {id: 'symbolic_제약_조건'})
SET     n.name = 'Symbolic 제약 조건',
    n.name_kr = 'Symbolic 제약 조건',
    n.domain = 'SW';

MERGE (n:Method {id: 'dfs'})
SET     n.name = 'DFS',
    n.name_kr = 'DFS',
    n.domain = 'SW',
    n.aliases = ['DFS'];

MERGE (n:Method {id: 'bfs'})
SET     n.name = 'BFS',
    n.name_kr = 'BFS',
    n.domain = 'SW',
    n.aliases = ['BFS'];

MERGE (n:Concept {id: 'smt_solver'})
SET     n.name = 'SMT solver',
    n.name_kr = 'SMT solver',
    n.domain = 'SW',
    n.aliases = ['SMT solver'];

MERGE (n:Concept {id: 'unsat'})
SET     n.name = 'UNSAT',
    n.name_kr = 'UNSAT',
    n.domain = 'SW',
    n.aliases = ['UNSAT'];

// --- 관계 ---

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'concrete'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'symbolic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'probe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'symbolic_제약_조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Method {id: 'dfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Method {id: 'bfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'smt_solver'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Concept {id: 'unsat'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Document {id: 'SW_149'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'concolic_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concrete'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'symbolic'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'probe'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'symbolic_제약_조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'dfs'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'bfs'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smt_solver'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unsat'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_151: Smoke Test
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_151'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'smoke_test'})
SET     n.name = 'Smoke Test',
    n.name_kr = 'Smoke Test',
    n.domain = 'SW',
    n.aliases = ['Smoke Test'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: 'cursory_test'})
SET     n.name = 'Cursory Test',
    n.name_kr = '개발팀',
    n.domain = 'SW',
    n.aliases = ['Cursory Test', '개발팀'];

MERGE (n:Concept {id: 'sanity_test'})
SET     n.name = 'Sanity Test',
    n.name_kr = '예비테스트',
    n.domain = 'SW',
    n.aliases = ['Sanity Test', '예비테스트'];

// --- 관계 ---

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Concept {id: 'cursory_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Concept {id: 'sanity_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Document {id: 'SW_151'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sanity_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_152: Fuzzy 이론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_152'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'fuzzy_이론'})
SET     n.name = 'Fuzzy 이론',
    n.name_kr = 'Fuzzy 이론',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

// --- 관계 ---

MERGE (a:Concept {id: 'fuzzy_이론'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fuzzy_이론'})
MERGE (b:Document {id: 'SW_152'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fuzzy_이론'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_153: Cursory Test
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_153'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'cursory_test'})
SET     n.name = 'Cursory Test',
    n.name_kr = 'Cursory Test',
    n.domain = 'SW',
    n.aliases = ['Cursory Test'];

MERGE (n:Concept {id: 'test'})
SET     n.name = 'Test',
    n.name_kr = 'Test',
    n.domain = 'SW',
    n.aliases = ['Test'];

MERGE (n:Concept {id: '즉흥적'})
SET     n.name = '즉흥적',
    n.name_kr = '즉흥적',
    n.domain = 'SW';

MERGE (n:Concept {id: 'cursory'})
SET     n.name = 'Cursory',
    n.name_kr = 'Cursory',
    n.domain = 'SW',
    n.aliases = ['Cursory'];

MERGE (n:Concept {id: 'sanity'})
SET     n.name = 'Sanity',
    n.name_kr = 'Sanity',
    n.domain = 'SW',
    n.aliases = ['Sanity'];

MERGE (n:Concept {id: 'smoke_test'})
SET     n.name = 'Smoke test',
    n.name_kr = 'Smoke test',
    n.domain = 'SW',
    n.aliases = ['Smoke test'];

// --- 관계 ---

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Concept {id: 'test'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Concept {id: '즉흥적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Concept {id: 'cursory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Concept {id: 'sanity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Concept {id: 'smoke_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Document {id: 'SW_153'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cursory_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '즉흥적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cursory'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sanity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smoke_test'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_154: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_154'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_155: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_155'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_156: Pairwise Testing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_156'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'pairwise_testing'})
SET     n.name = 'Pairwise Testing',
    n.name_kr = 'Pairwise Testing',
    n.domain = 'SW',
    n.aliases = ['Pairwise Testing'];

MERGE (n:Method {id: 'sdlc'})
SET     n.name = 'SDLC',
    n.name_kr = 'SDLC',
    n.domain = 'SW',
    n.aliases = ['SDLC'];

MERGE (n:Concept {id: '테스트_케이스'})
SET     n.name = '테스트 케이스',
    n.name_kr = '테스트 케이스',
    n.domain = 'SW';

MERGE (n:Concept {id: '2개요소_상호작용'})
SET     n.name = '2개요소 상호작용',
    n.name_kr = '2개요소 상호작용',
    n.domain = 'SW';

MERGE (n:Concept {id: '명세기반'})
SET     n.name = '명세기반',
    n.name_kr = '명세기반',
    n.domain = 'SW';

MERGE (n:Concept {id: '비용절감'})
SET     n.name = '비용절감',
    n.name_kr = '비용절감',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스팅_한계'})
SET     n.name = '테스팅 한계',
    n.name_kr = '테스팅 한계',
    n.domain = 'SW',
    n.definition = '모든 조합을 고려해 테스팅 했을 때 발견할 수 있는 결함을 모두 발견할 수 없는 한계 존재';

MERGE (n:Concept {id: '해결_전략'})
SET     n.name = '해결 전략',
    n.name_kr = '해결 전략',
    n.domain = 'SW',
    n.definition = '경험적으로 의미 있고, 결함을 발견할 가능성이 높은 조합을 추가하여 테스트 효과성 향상 - 테스트 가능 시간과 비용, 품질수준을 고려한 테스트 전략 수립';

// --- 관계 ---

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Method {id: 'sdlc'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '테스트_케이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '2개요소_상호작용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '명세기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '비용절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '테스팅_한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Concept {id: '해결_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Document {id: 'SW_156'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pairwise_testing'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'sdlc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_케이스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2개요소_상호작용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용절감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스팅_한계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_전략'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_157: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_157'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_158: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_158'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_160.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_160.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_160.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_160.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_161: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_161'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_162: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_162'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_163: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_163'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_164: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_164'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_165.1: Test Coverage, 코드 커버리지
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_165.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'test_coverage,_코드_커버리지'})
SET     n.name = 'Test Coverage, 코드 커버리지',
    n.name_kr = 'Test Coverage, 코드 커버리지',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_공학'})
SET     n.name = 'SW 공학',
    n.name_kr = 'SW 공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '테스트'})
SET     n.name = '테스트',
    n.name_kr = '테스트',
    n.domain = 'SW';

MERGE (n:Concept {id: 'test_coverage'})
SET     n.name = 'Test Coverage',
    n.name_kr = 'Test Coverage',
    n.domain = 'SW',
    n.aliases = ['Test Coverage'];

MERGE (n:Concept {id: '구문'})
SET     n.name = '구문',
    n.name_kr = '구문',
    n.domain = 'SW';

MERGE (n:Concept {id: '결정'})
SET     n.name = '결정',
    n.name_kr = '결정',
    n.domain = 'SW';

MERGE (n:Concept {id: '조건/결정'})
SET     n.name = '조건/결정',
    n.name_kr = '조건/결정',
    n.domain = 'SW';

MERGE (n:Concept {id: '변경_조건/결정'})
SET     n.name = 'MC/DC',
    n.name_kr = '변경 조건/결정',
    n.domain = 'SW',
    n.aliases = ['MC/DC', '변경 조건/결정'];

MERGE (n:Concept {id: '다중_조건/결정'})
SET     n.name = '다중 조건/결정',
    n.name_kr = '다중 조건/결정',
    n.domain = 'SW';

MERGE (n:Concept {id: '중복_제거'})
SET     n.name = '중복 제거',
    n.name_kr = '중복 제거',
    n.domain = 'SW',
    n.definition = '프로젝트에서 별로 의미가 없는 테스트 사례를 식별하고 제거하는 데 특히 유용함';

MERGE (n:Concept {id: '높은_roi'})
SET     n.name = '높은 ROI',
    n.name_kr = '높은 ROI',
    n.domain = 'SW',
    n.definition = '테스트 적용 범위는 ROI에 상당한 영향을 미칠 수 있음';

MERGE (n:Concept {id: '테스트_미수행_지역_발견'})
SET     n.name = '테스트 미수행 지역 발견',
    n.name_kr = '테스트 미수행 지역 발견',
    n.domain = 'SW',
    n.definition = '테스트 케이스는 테스트 케이스에서 다루지 않는 영역 찾음';

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'SW';

MERGE (n:Concept {id: 'statement_coverage'})
SET     n.name = 'Statement Coverage',
    n.name_kr = 'Statement Coverage',
    n.domain = 'SW',
    n.definition = '소스 코드의 모든 명령문이 최소 한 번 테스트되었음을 보장 - 커버리지: 1A-2C-3D-E-4G-5H',
    n.aliases = ['Statement Coverage'];

MERGE (n:Concept {id: 'branch_coverage'})
SET     n.name = 'Branch Coverage',
    n.name_kr = 'Branch Coverage',
    n.domain = 'SW',
    n.definition = '가능한 모든 경로 또는 분기가 적용되는지 확인 - 커버리지#1(True 조건 점검): 1A-2C-3D-E-4G-5H - 커버리지#2(False 조건 점검): 1A-2B-E-4F',
    n.aliases = ['Branch Coverage'];

MERGE (n:Concept {id: 'path_coverage'})
SET     n.name = 'Path Coverage',
    n.name_kr = 'Path Coverage',
    n.domain = 'SW',
    n.definition = '가능한 모든 실행 경로를 찾기 위해 프로그램의 소스 코드를 사용하는 것 - 처음부터 끝까지 모든 경로의 적용을 보장함 - 커버리지#1: 1A-2B-E-4F - 커버리지#2: 1A-2B-E-4G-5H - 커버리지#3: 1A-2C-3D-E-4G-5H - 커버리지#4: 1A-2C-3D- E-4F',
    n.aliases = ['Path Coverage'];

MERGE (n:Concept {id: '구문_커버리지'})
SET     n.name = '구문 커버리지',
    n.name_kr = '구문 커버리지',
    n.domain = 'SW',
    n.definition = 'if(a>b) System.out.printf("hellow world");';

MERGE (n:Concept {id: 'decision_coverage'})
SET     n.name = '결정 커버리지',
    n.name_kr = '결정 커버리지',
    n.domain = 'SW';

MERGE (n:Concept {id: 'condition_coverage'})
SET     n.name = '조건 커버리지',
    n.name_kr = '조건 커버리지',
    n.domain = 'SW',
    n.definition = '결정 명령문 내의 각 조건이 적어도 한번은 참과 거짓의 결과가 되도록 수행하는 Test Case';

MERGE (n:Concept {id: '조건/결정_커버리지'})
SET     n.name = '조건/결정 커버리지',
    n.name_kr = '조건/결정 커버리지',
    n.domain = 'SW',
    n.definition = '전체 조건 식 뿐만 아니라 개별 조건식도 참, 거짓이 한번씩 결과가 되도록 수행하는 Test Case';

MERGE (n:Concept {id: '변경조건/결정_커버리지'})
SET     n.name = '변경조건/결정 커버리지',
    n.name_kr = '변경조건/결정 커버리지',
    n.domain = 'SW',
    n.definition = '각 개별 조건식이 다른 개별 조건 식에 영향을 받지 않고 전체 조건 식의 독립적 영향을 주도록 하는 Test Case';

MERGE (n:Concept {id: '다중조건_커버리지'})
SET     n.name = '다중조건 커버리지',
    n.name_kr = '다중조건 커버리지',
    n.domain = 'SW',
    n.definition = '결정 포인트 내에 있는 모든 개별 식 조건의 모든 조합을 고려한 커버리지';

MERGE (n:Concept {id: 'code_coverage'})
SET     n.name = '코드 커버리지',
    n.name_kr = '코드 커버리지',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '테스트'})
MERGE (b:Concept {id: 'sw_공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'test_coverage'})
MERGE (b:Concept {id: '테스트'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '구문'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '조건/결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '변경_조건/결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '다중_조건/결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '중복_제거'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '높은_roi'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '테스트_미수행_지역_발견'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'statement_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'branch_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'path_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '구문_커버리지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'decision_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'condition_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '조건/결정_커버리지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '변경조건/결정_커버리지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: '다중조건_커버리지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage'})
MERGE (b:Concept {id: 'code_coverage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'test_coverage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Concept {id: 'code_coverage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Document {id: 'SW_165.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'test_coverage,_코드_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구문'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조건/결정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경_조건/결정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_조건/결정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복_제거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '높은_roi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_미수행_지역_발견'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'statement_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'branch_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'path_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구문_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'condition_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조건/결정_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경조건/결정_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중조건_커버리지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'code_coverage'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_165.2: MC/DC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_165.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'mc_dc'})
SET     n.name = 'MC/DC',
    n.name_kr = 'MC/DC',
    n.domain = 'SW',
    n.aliases = ['MC/DC'];

MERGE (n:Concept {id: '결과_독립적'})
SET     n.name = '결과 독립적',
    n.name_kr = '결과 독립적',
    n.domain = 'SW';

MERGE (n:Concept {id: 'n+1'})
SET     n.name = 'N+1',
    n.name_kr = 'N+1',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'mc_dc'})
MERGE (b:Concept {id: '결과_독립적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mc_dc'})
MERGE (b:Concept {id: 'n+1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mc_dc'})
MERGE (b:Document {id: 'SW_165.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mc_dc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과_독립적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n+1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_166: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_166'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_169.1: Lehman 소프트웨어 변화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_169.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'lehman_소프트웨어_변화'})
SET     n.name = 'Lehman 소프트웨어 변화',
    n.name_kr = 'Lehman 소프트웨어 변화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리',
    n.name_kr = 'SW유지관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'continuing_change'})
SET     n.name = 'Continuing Change',
    n.name_kr = 'Continuing Change',
    n.domain = 'SW',
    n.aliases = ['Continuing Change'];

MERGE (n:Concept {id: 'program_evolution'})
SET     n.name = 'Program Evolution',
    n.name_kr = 'Program Evolution',
    n.domain = 'SW',
    n.aliases = ['Program Evolution'];

MERGE (n:Concept {id: '계자조친_피지증감'})
SET     n.name = '계자조친 피지증감',
    n.name_kr = '계자조친 피지증감',
    n.domain = 'SW';

MERGE (n:Concept {id: 'static'})
SET     n.name = 'Static',
    n.name_kr = 'S-type',
    n.domain = 'SW',
    n.definition = 'Specification and solutions (명세)',
    n.aliases = ['Static', 'S-type'];

MERGE (n:Metric {id: 'practical'})
SET     n.name = 'Practical',
    n.name_kr = 'P-type',
    n.domain = 'SW',
    n.definition = 'Procedures (절차)',
    n.aliases = ['Practical', 'P-type'];

MERGE (n:Concept {id: 'embedded'})
SET     n.name = 'Embedded',
    n.name_kr = 'E-type',
    n.domain = 'SW',
    n.definition = 'Environment (환경)',
    n.aliases = ['Embedded', 'E-type'];

MERGE (n:Concept {id: '완전적_유지_보수'})
SET     n.name = '완전적 유지 보수',
    n.name_kr = '완전적 유지 보수',
    n.domain = 'SW',
    n.definition = '기능 개선 (perfective maintenance)';

MERGE (n:Concept {id: '예방적_유지_보수'})
SET     n.name = '예방적 유지 보수',
    n.name_kr = '예방적 유지 보수',
    n.domain = 'SW',
    n.definition = '정기적인 유지보수(preventive maintenance)';

MERGE (n:Threat {id: '적응적_유지_보수'})
SET     n.name = '적응적 유지 보수',
    n.name_kr = '적응적 유지 보수',
    n.domain = 'SW',
    n.definition = '변화, 갱신의 적용(adaptive/porting maintenance)';

MERGE (n:Concept {id: '프로그램_유지보수'})
SET     n.name = '프로그램 유지보수',
    n.name_kr = '프로그램 유지보수',
    n.domain = 'SW',
    n.definition = '프로그램의 변경 및 오류에 대한 처리';

MERGE (n:Concept {id: '문서_유지보수'})
SET     n.name = '문서 유지보수',
    n.name_kr = '문서 유지보수',
    n.domain = 'SW',
    n.definition = '문서 표준의 변경이나 기타 필요시';

MERGE (n:Concept {id: '시스템_유지보수'})
SET     n.name = '시스템 유지보수',
    n.name_kr = '시스템 유지보수',
    n.domain = 'SW',
    n.definition = '시스템의 변경 및 장애에 대한 처리';

MERGE (n:Concept {id: '예방_유지보수'})
SET     n.name = '예방 유지보수',
    n.name_kr = '예방 유지보수',
    n.domain = 'SW',
    n.definition = '미리 예방 차원에서의 유지보수';

MERGE (n:Concept {id: '응급_유지보수'})
SET     n.name = '응급 유지보수',
    n.name_kr = '응급 유지보수',
    n.domain = 'SW',
    n.definition = '긴급한 경우의 유지보수, 사후 승인 필요';

MERGE (n:Concept {id: '지연_유지보수'})
SET     n.name = '지연 유지보수',
    n.name_kr = '지연 유지보수',
    n.domain = 'SW',
    n.definition = '시스템에 대해 변경된 부분에 대한 추후 지원';

// --- 관계 ---

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: 'continuing_change'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: 'program_evolution'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '계자조친_피지증감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: 'static'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Metric {id: 'practical'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: 'embedded'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '완전적_유지_보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '예방적_유지_보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Threat {id: '적응적_유지_보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '프로그램_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '문서_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '시스템_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '예방_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '응급_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Concept {id: '지연_유지보수'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Document {id: 'SW_169.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lehman_소프트웨어_변화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'continuing_change'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'program_evolution'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계자조친_피지증감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'static'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'practical'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'embedded'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '완전적_유지_보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예방적_유지_보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '적응적_유지_보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예방_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응급_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지연_유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_169.2: 유지보수
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_169.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '유지보수'})
SET     n.name = '유지보수',
    n.name_kr = '유지보수',
    n.domain = 'SW';

MERGE (n:Concept {id: '유지관리'})
SET     n.name = '유지관리(유지보수 변경)',
    n.name_kr = '유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: '수완이의_예적'})
SET     n.name = '수완이의 예적',
    n.name_kr = '수완이의 예적',
    n.domain = 'SW';

MERGE (n:Concept {id: '계속적_변경_continuing_change'})
SET     n.name = '계속적 변경 Continuing change',
    n.name_kr = '계속적 변경 Continuing change',
    n.domain = 'SW',
    n.definition = '소프트웨어는 계속 진화하며 요구사항에 의해 계속적으로 변경됨';

MERGE (n:Metric {id: '복잡도_증가_increasing_complexity'})
SET     n.name = '복잡도 증가 Increasing complexity',
    n.name_kr = '복잡도 증가 Increasing complexity',
    n.domain = 'SW',
    n.definition = '변경이 가해질수록 구조는 복잡해짐';

MERGE (n:Concept {id: '대규모_프로그램_진화_program_evolution'})
SET     n.name = '대규모 프로그램 진화 Program evolution',
    n.name_kr = '대규모 프로그램 진화 Program evolution',
    n.domain = 'SW',
    n.definition = '프로그램 별로 변경되는 고유한 추세가 있음';

MERGE (n:Concept {id: '조직의_안정화_organizational_stability'})
SET     n.name = '조직의 안정화 Organizational Stability',
    n.name_kr = '조직의 안정화 Organizational Stability',
    n.domain = 'SW',
    n.definition = '개발생산성이 변화에 민감하지 않고 안정됨';

MERGE (n:Concept {id: '친근성의_유지_conservation_of_familiarity'})
SET     n.name = '친근성의 유지 Conservation of familiarity',
    n.name_kr = '친근성의 유지 Conservation of familiarity',
    n.domain = 'SW',
    n.definition = '소프트웨어 각 버전의 변화는 일정함';

MERGE (n:Concept {id: 'continuing_growth'})
SET     n.name = 'Continuing Growth',
    n.name_kr = 'Continuing Growth',
    n.domain = 'SW',
    n.definition = '소프트웨어의 Lifetime 내내, 기능 내용은 사용자 만족도를 유지하기 위해 증가가 계속됨(1991년 내용추가)',
    n.aliases = ['Continuing Growth'];

MERGE (n:Concept {id: 'declining_quality'})
SET     n.name = 'Declining Quality',
    n.name_kr = 'Declining Quality',
    n.domain = 'SW',
    n.definition = '소프트웨어는 엄격하게 관리 및 운영되지 않거나, 환경 변화에 적응 하지 않는다면 품질은 감소함(1996년 추가)',
    n.aliases = ['Declining Quality'];

MERGE (n:Concept {id: 'feedback_system'})
SET     n.name = 'Feedback System',
    n.name_kr = 'Feedback System',
    n.domain = 'SW',
    n.definition = '진화 프로세스는 다중레벨, 다중루프, Multi-Agent 피드백 시스템을 수용하고 중요한 제품개선을 달성하기 위해 소프트웨어를 피드백으로 구성되어야 함(1996년 추가)',
    n.aliases = ['Feedback System'];

// --- 관계 ---

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: '수완이의_예적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: '계속적_변경_continuing_change'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Metric {id: '복잡도_증가_increasing_complexity'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: '대규모_프로그램_진화_program_evolution'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: '조직의_안정화_organizational_stability'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: '친근성의_유지_conservation_of_familiarity'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: 'continuing_growth'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: 'declining_quality'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Concept {id: 'feedback_system'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Document {id: 'SW_169.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수완이의_예적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계속적_변경_continuing_change'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '복잡도_증가_increasing_complexity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대규모_프로그램_진화_program_evolution'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직의_안정화_organizational_stability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '친근성의_유지_conservation_of_familiarity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'continuing_growth'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'declining_quality'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'feedback_system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_169.3: 프로젝트 형상관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_169.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_형상관리'})
SET     n.name = '프로젝트 형상관리',
    n.name_kr = '프로젝트 형상관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질관리'})
SET     n.name = '품질관리',
    n.name_kr = '품질관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '식통감기_/_계요설개테운-기분설시제운'})
SET     n.name = '식통감기 / 계요설개테운-기분설시제운',
    n.name_kr = '식통감기 / 계요설개테운-기분설시제운',
    n.domain = 'SW';

MERGE (n:Concept {id: '저장관리_측면'})
SET     n.name = '저장관리 측면',
    n.name_kr = '저장관리 측면',
    n.domain = 'SW',
    n.definition = 'CVS, SVN - Git';

MERGE (n:Concept {id: '변경관리_측면'})
SET     n.name = '변경관리 측면',
    n.name_kr = '변경관리 측면',
    n.domain = 'SW',
    n.definition = '변경요청서, 형상상태보고서 등 문서';

MERGE (n:Concept {id: 'git'})
SET     n.name = 'Git',
    n.name_kr = 'Git',
    n.domain = 'SW',
    n.aliases = ['Git'];

MERGE (n:Concept {id: 'svn'})
SET     n.name = 'SVN',
    n.name_kr = 'SVN',
    n.domain = 'SW',
    n.aliases = ['SVN'];

// --- 관계 ---

MERGE (a:Concept {id: '품질관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: '품질관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: '식통감기_/_계요설개테운-기분설시제운'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: '저장관리_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: '변경관리_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'git'})
MERGE (b:Concept {id: 'svn'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: 'git'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Concept {id: 'svn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Document {id: 'SW_169.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_형상관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식통감기_/_계요설개테운-기분설시제운'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저장관리_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경관리_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'git'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'svn'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_170: 모듈화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_170'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'modularity'})
SET     n.name = 'Modularity',
    n.name_kr = '모듈화',
    n.domain = 'SW',
    n.aliases = ['모듈화'];

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리',
    n.name_kr = 'SW유지관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '내공외제스자'})
SET     n.name = '내공외제스자',
    n.name_kr = '내공외제스자',
    n.domain = 'SW';

MERGE (n:Concept {id: '우논시절통순기'})
SET     n.name = '우논시절통순기',
    n.name_kr = '우논시절통순기',
    n.domain = 'SW';

MERGE (n:Concept {id: '논리적'})
SET     n.name = '논리적',
    n.name_kr = '논리적',
    n.domain = 'SW',
    n.definition = '유사한 성격의 작업들을 모음';

MERGE (n:Concept {id: '시간적'})
SET     n.name = '시간적',
    n.name_kr = '시간적',
    n.domain = 'SW',
    n.definition = '같은 시간대에 처리되어야 하는 것들을 모음';

MERGE (n:Concept {id: '절차적'})
SET     n.name = '절차적',
    n.name_kr = '절차적',
    n.domain = 'SW',
    n.definition = '모듈 진행 요소들이 서로 관계되어지고 순서대로 진행';

MERGE (n:Concept {id: '통신적'})
SET     n.name = '통신적',
    n.name_kr = '통신적',
    n.domain = 'SW',
    n.definition = '동일한 입/출력 자료를 이용하여 서로 다른 기능을 수행하는 기능';

MERGE (n:Concept {id: '순차적'})
SET     n.name = '순차적',
    n.name_kr = '순차적',
    n.domain = 'SW',
    n.definition = '작업의 결과가 다른 모듈의 입력자료로 사용';

MERGE (n:Concept {id: '기능적'})
SET     n.name = '기능적',
    n.name_kr = '기능적',
    n.domain = 'SW',
    n.definition = '하나의 기능만 수행하는 모듈';

MERGE (n:Concept {id: '자료'})
SET     n.name = '자료',
    n.name_kr = '자료',
    n.domain = 'SW',
    n.definition = '모듈들이 간단히 변수를 파라미터로 교환';

MERGE (n:Concept {id: '스탬프'})
SET     n.name = '스탬프',
    n.name_kr = '스탬프',
    n.domain = 'SW',
    n.definition = '모듈 사이에 자료구조 교환';

MERGE (n:Concept {id: '제어'})
SET     n.name = '제어',
    n.name_kr = '제어',
    n.domain = 'SW',
    n.definition = '제어용 신호, 정보를 주고 받아 제어하는 경우';

MERGE (n:Concept {id: '외부'})
SET     n.name = '외부',
    n.name_kr = '외부',
    n.domain = 'SW',
    n.definition = '모듈들이 소프트웨어의 외부환경과 연관 되는 경우';

MERGE (n:Concept {id: '공통'})
SET     n.name = '공통',
    n.name_kr = '공통',
    n.domain = 'SW',
    n.definition = '많은 모듈들이 전역변수를 참조할 때 발생';

MERGE (n:Concept {id: '컴포넌트'})
SET     n.name = '컴포넌트',
    n.name_kr = '컴포넌트',
    n.domain = 'SW';

MERGE (n:Concept {id: '모듈'})
SET     n.name = '모듈',
    n.name_kr = '모듈',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '내공외제스자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '우논시절통순기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '논리적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '시간적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '절차적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '통신적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '순차적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '기능적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '자료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '스탬프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '외부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '공통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴포넌트'})
MERGE (b:Concept {id: '모듈'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Concept {id: '모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Document {id: 'SW_170'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'modularity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내공외제스자'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우논시절통순기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절차적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순차적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스탬프'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴포넌트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모듈'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_171: Fan-out, Fan-in
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_171'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'fan-out,_fan-in'})
SET     n.name = 'Fan-out, Fan-in',
    n.name_kr = 'Fan-out, Fan-in',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리(유지보수 변경)',
    n.name_kr = 'SW유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SW',
    n.definition = '자신을 사용하는 모듈의 수 ( A : 0, B : 1, C : 1, D : 1, E : 1, F : 2, G : 1, H : 2, I : 1, J : 1 )';

// --- 관계 ---

MERGE (a:Concept {id: 'fan-out,_fan-in'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fan-out,_fan-in'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fan-out,_fan-in'})
MERGE (b:Document {id: 'SW_171'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fan-out,_fan-in'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_172: 3R(Reverse Engineering, Re-Engineering, Reuse)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_172'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '3r'})
SET     n.name = 'Reverse Engineering, Re-Engineering, Reuse',
    n.name_kr = '3R',
    n.domain = 'SW',
    n.aliases = ['Reverse Engineering, Re-Engineering, Reuse', '3R'];

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리',
    n.name_kr = 'SW유지관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'reverse_engineering'})
SET     n.name = 'Reverse Engineering',
    n.name_kr = 'Reverse Engineering',
    n.domain = 'SW',
    n.aliases = ['Reverse Engineering'];

MERGE (n:Concept {id: 'reengineering'})
SET     n.name = 'Reengineering',
    n.name_kr = 'Reengineering',
    n.domain = 'SW',
    n.aliases = ['Reengineering'];

MERGE (n:Concept {id: 'reuse'})
SET     n.name = 'Reuse',
    n.name_kr = 'Reuse',
    n.domain = 'SW',
    n.aliases = ['Reuse'];

MERGE (n:Concept {id: '소프트웨어_생산성_극대화'})
SET     n.name = '소프트웨어 생산성 극대화',
    n.name_kr = '소프트웨어 생산성 극대화',
    n.domain = 'SW';

MERGE (n:Concept {id: '유지보수성_향상'})
SET     n.name = '유지보수성 향상',
    n.name_kr = '유지보수성 향상',
    n.domain = 'SW',
    n.definition = '기존 시스템의 자료와 정보를 설계 수준에서 분석 가능해 유지보수성 향상';

MERGE (n:Concept {id: 'case_재사용_가능'})
SET     n.name = 'CASE 재사용 가능',
    n.name_kr = 'CASE 재사용 가능',
    n.domain = 'SW',
    n.definition = '기존 시스템 정보를 Repository 에 보관하여 CASE의 재사용 용이';

MERGE (n:Concept {id: '1._code_추출'})
SET     n.name = '1. Code 추출',
    n.name_kr = '1. Code 추출',
    n.domain = 'SW',
    n.definition = 'Ollydbg, JD-GUI 등의 Tool 사용 - Dirty Code 추출';

MERGE (n:Concept {id: '2._code_분석/수정'})
SET     n.name = '2. Code 분석/수정',
    n.name_kr = '2. Code 분석/수정',
    n.domain = 'SW',
    n.definition = '정적/동적 분석 및 Clean Code 화 - WireShark 와 같은 툴을 사용하여 실제 동작 시 발생하는 Packet, Log file 을을 추출하여 분석';

MERGE (n:Concept {id: '3._문서화'})
SET     n.name = '3. 문서화',
    n.name_kr = '3. 문서화',
    n.domain = 'SW',
    n.definition = '분석된 Source code 와 해당 분야의 도메인 지식을 활용하여 Program, Data 구조에 대한 명세서 작성';

MERGE (n:Concept {id: '자료_역공학'})
SET     n.name = '자료 역공학',
    n.name_kr = '자료 역공학',
    n.domain = 'SW',
    n.definition = '기존 데이터베이스를 수정하거나 새로운 데이터베이스 관리 시스템 으로 전이하는 역할';

MERGE (n:Concept {id: '재문서화'})
SET     n.name = '재문서화',
    n.name_kr = '재문서화',
    n.domain = 'SW',
    n.definition = '기존 소스코드 분석 후 해당 내용을 기반으로 명세화, 문서화 진행';

MERGE (n:Concept {id: '설계_복구'})
SET     n.name = '설계 복구',
    n.name_kr = '설계 복구',
    n.domain = 'SW',
    n.definition = '프로그램, 데이터 구조를 기반으로 초기 설계 정보 복구';

MERGE (n:Concept {id: '표준의_준수,_case의_사용_용이'})
SET     n.name = '표준의 준수, CASE의 사용 용이',
    n.name_kr = '표준의 준수, CASE의 사용 용이',
    n.domain = 'SW',
    n.definition = '모듈화, 구조화 된 프로그램을 생성하여 자동화 도구 사용성 향상 - 데이터 재공학 및 재구성 진행 시 품질 표준 적용 가능';

MERGE (n:Concept {id: '유지_보수_비용,_시간_절감'})
SET     n.name = '유지 보수 비용, 시간 절감',
    n.name_kr = '유지 보수 비용, 시간 절감',
    n.domain = 'SW',
    n.definition = '기분석한 내용을 기반으로 설계된 프로그램의 분석 시간 감소 - 모듈화, 표준화, 구조화 된 내용 기반의 유지 보수 비용, 시간 절감';

MERGE (n:Concept {id: '1_reverse_engineering'})
SET     n.name = '1. Reverse Engineering',
    n.name_kr = '1. Reverse Engineering',
    n.domain = 'SW',
    n.definition = 'Source Code, 설계 문서 추출 - 대상 실행 file 구조 분석 및 Assembly Code 를 추출하는 단계';

MERGE (n:Concept {id: '2._재구조화'})
SET     n.name = '2. 재구조화',
    n.name_kr = '2. 재구조화',
    n.domain = 'SW',
    n.definition = 'Target System에서 추출한 code 와 repository에서 획득한 코드 및 문서 기반 의미론적 정보 추출 - Program 구조와 데이터를 재구조화 하는 단계';

MERGE (n:Concept {id: '3._구현'})
SET     n.name = '3. 구현',
    n.name_kr = '3. 구현',
    n.domain = 'SW',
    n.definition = '재구조화된 Program 과 Data를 합성 - 성능이 개선된 실제 Target System을 Build 하는 단계';

MERGE (n:Concept {id: '재구조화'})
SET     n.name = '재구조화',
    n.name_kr = '재구조화',
    n.domain = 'SW',
    n.definition = 'SW 부품을 라이브러리에 모아 놓고 새로운 SW 개발에 필요한 부품을 찾아내어 결합하는 방법';

MERGE (n:Metric {id: '재모듈화'})
SET     n.name = '재모듈화',
    n.name_kr = '재모듈화',
    n.domain = 'SW',
    n.definition = '시스템의 모듈 구조를 변화시키는 것으로 시스템 구성 요소의 클러스터 분석 및 결합도와 관련됨';

MERGE (n:Concept {id: '의미론적_정보_추출'})
SET     n.name = '의미론적 정보 추출',
    n.name_kr = '의미론적 정보 추출',
    n.domain = 'SW',
    n.definition = '코드 수준이 아닌 문서 수준의 복구방법';

MERGE (n:Concept {id: '필요_속성'})
SET     n.name = '필요 속성',
    n.name_kr = '필요 속성',
    n.domain = 'SW',
    n.definition = '신뢰성';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'SW',
    n.definition = '검증된 기능 기반으로 시스템 내 성능 및 기능 확장 기대';

MERGE (n:Method {id: '생산성'})
SET     n.name = '생산성',
    n.name_kr = '생산성',
    n.domain = 'SW',
    n.definition = '비용, 시간, 위험 등 SDLC 전반에 걸친 생산성 확보 가능';

MERGE (n:Concept {id: '사용성'})
SET     n.name = '사용성',
    n.name_kr = '사용성',
    n.domain = 'SW',
    n.definition = '독립된 컴포넌트로서의 조립 및 추가 활용 가능';

MERGE (n:Concept {id: '유지보수성'})
SET     n.name = '유지보수성',
    n.name_kr = '유지보수성',
    n.domain = 'SW',
    n.definition = '품질개선, 오류수정, 운영, 업데이트 등의 용이성 확보';

MERGE (n:Concept {id: '적응성'})
SET     n.name = '적응성',
    n.name_kr = '적응성',
    n.domain = 'SW',
    n.definition = '독립된 컴포넌트로서의 새로운 확장 모듈 추가 적용 간편';

MERGE (n:Concept {id: '1_forward_engineering'})
SET     n.name = '1. Forward Engineering',
    n.name_kr = '1. Forward Engineering',
    n.domain = 'SW',
    n.definition = 'OOP, COBA, COM, 형상관리 - 초기 개발 시 단계별/모듈별 분할과 추상화를 통해 구현 - 향후 재사용 가능하도록 하는 단계';

MERGE (n:Concept {id: '2_re_use'})
SET     n.name = '2. Re-Use',
    n.name_kr = '2. Re-Use',
    n.domain = 'SW',
    n.definition = '생성 중심 : Repository에서 재사용 단위를 찾아 만들어 내는 기술 - 합성 중심 : Repository에서 재사용 가능 모듈 추출 및 조립';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'SW',
    n.definition = 'Library';

MERGE (n:Concept {id: 'design_pattern'})
SET     n.name = 'Design Pattern',
    n.name_kr = 'Design Pattern',
    n.domain = 'SW',
    n.definition = '프로그램 개발 과정에서 자주 발생하는 디자인 문제를 정리, 해결 가능',
    n.aliases = ['Design Pattern'];

MERGE (n:Concept {id: 'cbd'})
SET     n.name = 'CBD',
    n.name_kr = 'CBD',
    n.domain = 'SW',
    n.definition = '도메인 공학 기반 Component 개발, 재조립 통한 신규 Component 생성',
    n.aliases = ['CBD'];

MERGE (n:Concept {id: 're_enginerring'})
SET     n.name = '재공학',
    n.name_kr = '재공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 're_use'})
SET     n.name = '재사용',
    n.name_kr = '재사용',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'reverse_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'reengineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'reuse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '소프트웨어_생산성_극대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '유지보수성_향상'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'case_재사용_가능'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '1._code_추출'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '2._code_분석/수정'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '3._문서화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '자료_역공학'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '재문서화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '설계_복구'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '표준의_준수,_case의_사용_용이'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '유지_보수_비용,_시간_절감'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '1_reverse_engineering'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '2._재구조화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '3._구현'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '재구조화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Metric {id: '재모듈화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '의미론적_정보_추출'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '필요_속성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Method {id: '생산성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '사용성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '유지보수성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '적응성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '1_forward_engineering'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '2_re_use'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'design_pattern'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'cbd'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Concept {id: 're_enginerring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Concept {id: 're_use'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'reverse_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_enginerring'})
MERGE (b:Concept {id: 're_use'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 're_enginerring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 're_use'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Document {id: 'SW_172'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reengineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_생산성_극대화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수성_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'case_재사용_가능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1._code_추출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._code_분석/수정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._문서화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료_역공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재문서화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계_복구'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준의_준수,_case의_사용_용이'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지_보수_비용,_시간_절감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_reverse_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._재구조화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._구현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재구조화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '재모듈화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의미론적_정보_추출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필요_속성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '생산성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적응성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_forward_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_re_use'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'design_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 're_enginerring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 're_use'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_173: Reverse Engineering
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_173'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'reverse_engineering'})
SET     n.name = 'Reverse Engineering',
    n.name_kr = 'Reverse Engineering',
    n.domain = 'SW',
    n.aliases = ['Reverse Engineering'];

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리(유지보수 변경)',
    n.name_kr = 'SW유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: '3r'})
SET     n.name = '3R',
    n.name_kr = '3R',
    n.domain = 'SW';

MERGE (n:Concept {id: '유지보수성'})
SET     n.name = '유지보수성',
    n.name_kr = '유지보수성',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Concept {id: '유지보수성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Document {id: 'SW_173'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_174: 재공학(Re-Engineering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_174'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 're_engineering'})
SET     n.name = 'Re-Engineering',
    n.name_kr = '재공학',
    n.domain = 'SW',
    n.aliases = ['Re-Engineering', '재공학'];

MERGE (n:Concept {id: 'sw_유지관리'})
SET     n.name = 'SW 유지관리(유지보수 변경)',
    n.name_kr = 'SW 유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: '소스코드로부터_정보추출'})
SET     n.name = '소스코드로부터 정보추출',
    n.name_kr = '소스코드로부터 정보추출',
    n.domain = 'SW';

MERGE (n:Concept {id: '순공학'})
SET     n.name = '순공학(설계와 최적화)',
    n.name_kr = '순공학(설계와 최적화)',
    n.domain = 'SW';

MERGE (n:Concept {id: 'reverse_engineering'})
SET     n.name = '역공학',
    n.name_kr = '역공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '소스코드_생성'})
SET     n.name = '소스코드 생성',
    n.name_kr = '소스코드 생성',
    n.domain = 'SW';

MERGE (n:Concept {id: '시스템_향상과_검증'})
SET     n.name = '시스템 향상과 검증',
    n.name_kr = '시스템 향상과 검증',
    n.domain = 'SW';

MERGE (n:Concept {id: '재구조화'})
SET     n.name = '재구조화',
    n.name_kr = '재구조화',
    n.domain = 'SW';

MERGE (n:Concept {id: '의미론적_정보추출'})
SET     n.name = '의미론적 정보추출',
    n.name_kr = '의미론적 정보추출',
    n.domain = 'SW';

MERGE (n:Concept {id: '재모듈화'})
SET     n.name = '재모듈화',
    n.name_kr = '재모듈화',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: 'sw_유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '소스코드로부터_정보추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '순공학'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: 'reverse_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '소스코드_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '시스템_향상과_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '재구조화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '의미론적_정보추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Concept {id: '재모듈화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Document {id: 'SW_174'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 're_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소스코드로부터_정보추출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소스코드_생성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_향상과_검증'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재구조화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의미론적_정보추출'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재모듈화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 329개
// 관계: 672개
// ================================================================