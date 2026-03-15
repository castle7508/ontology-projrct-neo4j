// ================================================================
// SW 도메인 (SW_201 ~ SW_250) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_175: Reuse
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_175'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'reuse'})
SET     n.name = 'Reuse',
    n.name_kr = 'Reuse',
    n.domain = 'SW',
    n.aliases = ['Reuse'];

MERGE (n:Concept {id: 'sw유지관리'})
SET     n.name = 'SW유지관리(유지보수 변경)',
    n.name_kr = 'SW유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: '3r'})
SET     n.name = '3R',
    n.name_kr = '3R',
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

MERGE (n:Concept {id: '소프트웨어_생산성_극대화'})
SET     n.name = '소프트웨어 생산성 극대화',
    n.name_kr = '소프트웨어 생산성 극대화',
    n.domain = 'SW';

MERGE (n:Concept {id: 're_enginerring'})
SET     n.name = '재공학',
    n.name_kr = '재공학',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '3r'})
MERGE (b:Concept {id: 'sw유지관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Concept {id: 'reverse_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Concept {id: 'reengineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Concept {id: '소프트웨어_생산성_극대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Concept {id: 're_enginerring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Concept {id: 'reuse'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Concept {id: 'reverse_engineering'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 're_enginerring'})
MERGE (b:Concept {id: 'reuse'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Concept {id: 're_enginerring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Document {id: 'SW_175'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'reuse'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3r'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reverse_engineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reengineering'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_생산성_극대화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 're_enginerring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_176.1: 코드 스멜(Code Smell)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_176.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'code_smell'})
SET     n.name = 'Code Smell',
    n.name_kr = '코드 스멜',
    n.domain = 'SW',
    n.aliases = ['Code Smell', '코드 스멜'];

MERGE (n:Method {id: 'tdd_devops'})
SET     n.name = 'TDD/DevOps',
    n.name_kr = 'TDD/DevOps',
    n.domain = 'SW',
    n.aliases = ['TDD/DevOps'];

MERGE (n:Concept {id: 'refactoring'})
SET     n.name = 'Refactoring',
    n.name_kr = 'Refactoring',
    n.domain = 'SW',
    n.aliases = ['Refactoring'];

MERGE (n:Concept {id: 'large_class'})
SET     n.name = 'large Class',
    n.name_kr = 'large Class',
    n.domain = 'SW',
    n.aliases = ['large Class'];

MERGE (n:Concept {id: 'long_method'})
SET     n.name = 'Long Method',
    n.name_kr = 'Long Method',
    n.domain = 'SW',
    n.aliases = ['Long Method'];

MERGE (n:Concept {id: 'vague_method_names'})
SET     n.name = 'Vague Method Names',
    n.name_kr = 'Vague Method Names',
    n.domain = 'SW',
    n.aliases = ['Vague Method Names'];

MERGE (n:Concept {id: 'rename'})
SET     n.name = 'Rename',
    n.name_kr = 'Rename',
    n.domain = 'SW',
    n.aliases = ['Rename'];

// --- 관계 ---

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Method {id: 'tdd_devops'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Concept {id: 'refactoring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Concept {id: 'large_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Concept {id: 'long_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Concept {id: 'vague_method_names'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Concept {id: 'rename'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Document {id: 'SW_176.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'code_smell'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'tdd_devops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'large_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vague_method_names'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rename'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_176.2: 소프트웨어 리팩토링 (Refactoring)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_176.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'refactoring'})
SET     n.name = 'Refactoring',
    n.name_kr = '소프트웨어 리팩토링',
    n.domain = 'SW',
    n.aliases = ['Refactoring', '소프트웨어 리팩토링'];

MERGE (n:Concept {id: '유지관리'})
SET     n.name = '유지관리(유지보수 변경)',
    n.name_kr = '유지관리(유지보수 변경)',
    n.domain = 'SW';

MERGE (n:Concept {id: 'inline_class'})
SET     n.name = 'Inline Class',
    n.name_kr = 'Inline Class',
    n.domain = 'SW',
    n.aliases = ['Inline Class'];

MERGE (n:Concept {id: 'inline_method'})
SET     n.name = 'Inline Method',
    n.name_kr = 'Inline Method',
    n.domain = 'SW',
    n.aliases = ['Inline Method'];

MERGE (n:Concept {id: 'extract_class'})
SET     n.name = 'Extract Class',
    n.name_kr = 'Extract Class',
    n.domain = 'SW',
    n.aliases = ['Extract Class'];

MERGE (n:Concept {id: 'extract_method'})
SET     n.name = 'Extract Method',
    n.name_kr = 'Extract Method',
    n.domain = 'SW',
    n.aliases = ['Extract Method'];

MERGE (n:Concept {id: 'extract_interface'})
SET     n.name = 'Extract Interface',
    n.name_kr = 'Extract Interface',
    n.domain = 'SW',
    n.aliases = ['Extract Interface'];

MERGE (n:Concept {id: 'move_class'})
SET     n.name = 'Move Class',
    n.name_kr = 'Move Class',
    n.domain = 'SW',
    n.aliases = ['Move Class'];

MERGE (n:Concept {id: 'move_method'})
SET     n.name = 'Move Method',
    n.name_kr = 'Move Method',
    n.domain = 'SW',
    n.aliases = ['Move Method'];

MERGE (n:Concept {id: 'move_field'})
SET     n.name = 'Move Field',
    n.name_kr = 'Move Field',
    n.domain = 'SW',
    n.aliases = ['Move Field'];

MERGE (n:Concept {id: 'pull_up_method'})
SET     n.name = 'Pull Up Method',
    n.name_kr = 'Pull Up Method',
    n.domain = 'SW',
    n.aliases = ['Pull Up Method'];

MERGE (n:Concept {id: 'pull_up_field'})
SET     n.name = 'Pull Up Field',
    n.name_kr = 'Pull Up Field',
    n.domain = 'SW',
    n.aliases = ['Pull Up Field'];

MERGE (n:Concept {id: 'push_down_method'})
SET     n.name = '/ Push Down Method',
    n.name_kr = '/ Push Down Method',
    n.domain = 'SW';

MERGE (n:Concept {id: 'push_down_field'})
SET     n.name = 'Push Down Field',
    n.name_kr = 'Push Down Field',
    n.domain = 'SW',
    n.aliases = ['Push Down Field'];

MERGE (n:Concept {id: 'rename_method'})
SET     n.name = 'Rename Method',
    n.name_kr = 'Rename Method',
    n.domain = 'SW',
    n.aliases = ['Rename Method'];

MERGE (n:Metric {id: '결합도_측면'})
SET     n.name = '결합도 측면',
    n.name_kr = '결합도 측면',
    n.domain = 'SW',
    n.definition = '이동 (Move)';

MERGE (n:Concept {id: 'extract'})
SET     n.name = 'Extract',
    n.name_kr = '분리',
    n.domain = 'SW',
    n.definition = 'Extract Class',
    n.aliases = ['Extract', '분리'];

MERGE (n:Metric {id: '응집도_측면'})
SET     n.name = '응집도 측면',
    n.name_kr = '응집도 측면',
    n.domain = 'SW',
    n.definition = '일반화';

MERGE (n:Concept {id: '통합'})
SET     n.name = '통합',
    n.name_kr = '통합',
    n.domain = 'SW',
    n.definition = 'inline Class';

MERGE (n:Concept {id: '가독성_측면'})
SET     n.name = '가독성 측면',
    n.name_kr = '가독성 측면',
    n.domain = 'SW',
    n.definition = '재명명(Rename)';

MERGE (n:Concept {id: 'rename_field'})
SET     n.name = 'Rename Field',
    n.name_kr = 'Rename Field',
    n.domain = 'SW',
    n.definition = '변수의 용도와 이름이 상이한 경우 변경',
    n.aliases = ['Rename Field'];

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_refactoring'})
SET     n.name = '리팩토링',
    n.name_kr = '리팩토링',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'inline_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'inline_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'extract_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'extract_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'extract_interface'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'move_class'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'move_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'move_field'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'pull_up_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'pull_up_field'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'push_down_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'push_down_field'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'rename_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Metric {id: '결합도_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'extract'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Metric {id: '응집도_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: '통합'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: '가독성_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'rename_field'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Concept {id: 'sw_refactoring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'sw_refactoring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Concept {id: 'sw_refactoring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Concept {id: 'sw_refactoring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Document {id: 'SW_176.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'refactoring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inline_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inline_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extract_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extract_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extract_interface'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'move_class'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'move_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'move_field'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pull_up_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pull_up_field'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push_down_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push_down_field'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rename_method'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '결합도_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extract'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '응집도_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가독성_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rename_field'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_refactoring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_176.3: 클린코드(Clean Code)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_176.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'clean_code'})
SET     n.name = 'Clean Code',
    n.name_kr = '클린코드',
    n.domain = 'SW',
    n.aliases = ['Clean Code', '클린코드'];

MERGE (n:Method {id: 'tdd_devops'})
SET     n.name = 'TDD/DevOps',
    n.name_kr = 'TDD/DevOps',
    n.domain = 'SW',
    n.aliases = ['TDD/DevOps'];

MERGE (n:Concept {id: '유지보수'})
SET     n.name = '유지보수',
    n.name_kr = '유지보수',
    n.domain = 'SW';

MERGE (n:Concept {id: '유연'})
SET     n.name = '유연',
    n.name_kr = '유연',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질'})
SET     n.name = '품질',
    n.name_kr = '품질',
    n.domain = 'SW';

MERGE (n:Concept {id: 'naming'})
SET     n.name = 'Naming',
    n.name_kr = 'Naming',
    n.domain = 'SW',
    n.aliases = ['Naming'];

MERGE (n:Concept {id: 'function'})
SET     n.name = 'Function',
    n.name_kr = 'Function',
    n.domain = 'SW',
    n.aliases = ['Function'];

MERGE (n:Concept {id: 'comment'})
SET     n.name = 'Comment',
    n.name_kr = 'Comment',
    n.domain = 'SW',
    n.aliases = ['Comment'];

MERGE (n:Concept {id: 'error'})
SET     n.name = 'Error',
    n.name_kr = 'Error',
    n.domain = 'SW',
    n.aliases = ['Error'];

MERGE (n:Concept {id: '이름'})
SET     n.name = '이름',
    n.name_kr = '이름',
    n.domain = 'SW',
    n.definition = '분명한 작성의도';

MERGE (n:Concept {id: '그릇된_정보는_피함'})
SET     n.name = '그릇된 정보는 피함',
    n.name_kr = '그릇된 정보는 피함',
    n.domain = 'SW',
    n.definition = '길고 서로 흡사한 이름은 피함 - 연속적인 숫자를 붙인 이름은 피함';

MERGE (n:Concept {id: '문맥에_맞는_단어_사용'})
SET     n.name = '문맥에 맞는 단어 사용',
    n.name_kr = '문맥에 맞는 단어 사용',
    n.domain = 'SW',
    n.definition = '이해하는데 시간을 소모하지 않기 위해 일관성 있는 단어 사용 - 한 단어를 여러 목적으로의 사용을 피함';

MERGE (n:Concept {id: '일관성_있는_클래스_이름'})
SET     n.name = '일관성 있는 클래스 이름',
    n.name_kr = '일관성 있는 클래스 이름',
    n.domain = 'SW',
    n.definition = '클래스 이름은 명사 또는 명사구로 작성';

MERGE (n:Concept {id: '일관성_있는_함수_이름'})
SET     n.name = '일관성 있는 함수 이름',
    n.name_kr = '일관성 있는 함수 이름',
    n.domain = 'SW',
    n.definition = '함수 이름은 동사 또는 동사구로 작성';

MERGE (n:Concept {id: '함수'})
SET     n.name = '함수',
    n.name_kr = '함수',
    n.domain = 'SW',
    n.definition = '작은 단위';

MERGE (n:Concept {id: '한가지_기능'})
SET     n.name = '한가지 기능',
    n.name_kr = '한가지 기능',
    n.domain = 'SW',
    n.definition = '동일 레벨로 추상화된 작업만 하도록 작성';

MERGE (n:Concept {id: '작은_인수'})
SET     n.name = '작은 인수',
    n.name_kr = '작은 인수',
    n.domain = 'SW',
    n.definition = '이상적인 인수개수는 0개이고 그 다음은 1개 - 3개 이상의 인수가 필요하다면 객체 사용을 고려';

MERGE (n:Concept {id: '중복_방지'})
SET     n.name = '중복 방지',
    n.name_kr = '중복 방지',
    n.domain = 'SW',
    n.definition = '변경 시 여러 부분을 수정해야 하므로 오류 발생 확률이 높아짐';

MERGE (n:Concept {id: '주석'})
SET     n.name = '주석',
    n.name_kr = '주석',
    n.domain = 'SW',
    n.definition = '코드만으로 의도 표현';

MERGE (n:Concept {id: '명쾌한_의도파악'})
SET     n.name = '명쾌한 의도파악',
    n.name_kr = '명쾌한 의도파악',
    n.domain = 'SW',
    n.definition = '제 3자가 이해하기 힘든 주석은 배제';

MERGE (n:Concept {id: '주석_삭제'})
SET     n.name = '주석 삭제',
    n.name_kr = '주석 삭제',
    n.domain = 'SW',
    n.definition = '없어도 되는 주석 - 이력 및 저자를 기록하는 주석은 SCM 도구를 사용해서 해결 - 주석 처리한 코드';

MERGE (n:Concept {id: '형식'})
SET     n.name = '형식',
    n.name_kr = '형식',
    n.domain = 'SW',
    n.definition = '팀 규칙';

MERGE (n:Concept {id: '신문기사처럼_작성'})
SET     n.name = '신문기사처럼 작성',
    n.name_kr = '신문기사처럼 작성',
    n.domain = 'SW',
    n.definition = '이름은 간단하면서도 설명적으로 작성 - 위에서 아래로 읽기 좋게 구성';

MERGE (n:Concept {id: '세로_형식'})
SET     n.name = '세로 형식',
    n.name_kr = '세로 형식',
    n.domain = 'SW',
    n.definition = '서로 밀접한 개념은 세로로 가까이 - 변수는 사용하는 위치에 최대한 가까이 선언 - 인스턴스 변수는 클래스 맨 처음 선언';

MERGE (n:Concept {id: '가로_형식'})
SET     n.name = '가로 형식',
    n.name_kr = '가로 형식',
    n.domain = 'SW',
    n.definition = '소스 파일은 윤곽도와 계층이 비슷';

MERGE (n:Concept {id: '오류'})
SET     n.name = '오류',
    n.name_kr = '오류',
    n.domain = 'SW',
    n.definition = '예외 사용';

MERGE (n:Concept {id: 'null_반환금지'})
SET     n.name = 'Null 반환금지',
    n.name_kr = 'Null 반환금지',
    n.domain = 'SW',
    n.definition = 'Null을 반환하는 경우를 최소화 하여 null 체크 코드를 축소';

MERGE (n:Concept {id: 'name'})
SET     n.name = 'Name',
    n.name_kr = 'Name',
    n.domain = 'SW',
    n.definition = 'N1',
    n.aliases = ['Name'];

MERGE (n:Concept {id: 'n2'})
SET     n.name = 'N2',
    n.name_kr = 'N2',
    n.domain = 'SW',
    n.definition = '함수의 이름과 함수가 맡은 역할이 일치하는가',
    n.aliases = ['N2'];

MERGE (n:Concept {id: 'n3'})
SET     n.name = 'N3',
    n.name_kr = 'N3',
    n.domain = 'SW',
    n.definition = '코드 작성자를 제외한 나머지 팀원이 이름만 보고 구현일 짐작할 수 있는가',
    n.aliases = ['N3'];

MERGE (n:Concept {id: 'f2'})
SET     n.name = 'F2',
    n.name_kr = 'F2',
    n.domain = 'SW',
    n.definition = '함수에 전달된 인수가 객체의 상태를 변경하지 않는가',
    n.aliases = ['F2'];

MERGE (n:Concept {id: 'f3'})
SET     n.name = 'F3',
    n.name_kr = 'F3',
    n.domain = 'SW',
    n.definition = '함수가 한가지 작업만 하고 있는가',
    n.aliases = ['F3'];

MERGE (n:Concept {id: 'f4'})
SET     n.name = 'F4',
    n.name_kr = 'F4',
    n.domain = 'SW',
    n.definition = 'BOOLEAN 값을 가지는 인수는 없는가',
    n.aliases = ['F4'];

MERGE (n:Concept {id: 'f5'})
SET     n.name = 'F5',
    n.name_kr = 'F5',
    n.domain = 'SW',
    n.definition = '호출되지 않는 죽은 함수는 없는가',
    n.aliases = ['F5'];

MERGE (n:Concept {id: 'c2'})
SET     n.name = 'C2',
    n.name_kr = 'C2',
    n.domain = 'SW',
    n.definition = '오래되거나 잘못된 주석이 있는가',
    n.aliases = ['C2'];

MERGE (n:Concept {id: 'c3'})
SET     n.name = 'C3',
    n.name_kr = 'C3',
    n.domain = 'SW',
    n.definition = '코드로 표현된 내용 이외의 정보가 쓸모 없는 주석은 없는가',
    n.aliases = ['C3'];

MERGE (n:Concept {id: 'c4'})
SET     n.name = 'C4',
    n.name_kr = 'C4',
    n.domain = 'SW',
    n.definition = 'Reviewer들이 모든 주석의 내용을 이해하는가',
    n.aliases = ['C4'];

MERGE (n:Concept {id: 'c5'})
SET     n.name = 'C5',
    n.name_kr = 'C5',
    n.domain = 'SW',
    n.definition = '주석 처리된 코드는 없는가',
    n.aliases = ['C5'];

MERGE (n:Concept {id: 'general'})
SET     n.name = 'General',
    n.name_kr = 'General',
    n.domain = 'SW',
    n.definition = 'G1',
    n.aliases = ['General'];

MERGE (n:Concept {id: 'g2'})
SET     n.name = 'G2',
    n.name_kr = 'G2',
    n.domain = 'SW',
    n.definition = 'If문 또는 switch/case문 구조에서 절대 실행되지 않는 블록이 존재하는가',
    n.aliases = ['G2'];

MERGE (n:Concept {id: 'g3'})
SET     n.name = 'G3',
    n.name_kr = 'G3',
    n.domain = 'SW',
    n.definition = '사용되지 않는 변수가 존재하는가',
    n.aliases = ['G3'];

MERGE (n:Concept {id: 'g4'})
SET     n.name = 'G4',
    n.name_kr = 'G4',
    n.domain = 'SW',
    n.definition = '상수화(#define, static final)하지 않고 사용하는 숫자가 존재하는가',
    n.aliases = ['G4'];

MERGE (n:Concept {id: 'g5'})
SET     n.name = 'G5',
    n.name_kr = 'G5',
    n.domain = 'SW',
    n.definition = '수정해야 하는 이유가 하나 이상인(하나 이상의 역할을 하는) 클래스가 존재하는가',
    n.aliases = ['G5'];

MERGE (n:Concept {id: 'g7'})
SET     n.name = 'G7',
    n.name_kr = 'G7',
    n.domain = 'SW',
    n.definition = '의도하지 않게 외부로 노출된 인터페이스가 존재하는가',
    n.aliases = ['G7'];

MERGE (n:Concept {id: 'g8'})
SET     n.name = 'G8',
    n.name_kr = 'G8',
    n.domain = 'SW',
    n.definition = '비어있는 생성자가 존재하는가',
    n.aliases = ['G8'];

MERGE (n:Concept {id: 'g9'})
SET     n.name = 'G9',
    n.name_kr = 'G9',
    n.domain = 'SW',
    n.definition = '팀의 구현 표준이 명시한 괄호 넣기 위치를 어기고 있는가',
    n.aliases = ['G9'];

MERGE (n:Concept {id: 'g10'})
SET     n.name = 'G10',
    n.name_kr = 'G10',
    n.domain = 'SW',
    n.definition = '팀의 구현 표준이 명시한 변수 선언 위치를 어기고 있는가',
    n.aliases = ['G10'];

// --- 관계 ---

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Method {id: 'tdd_devops'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '유지보수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '유연'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'naming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'function'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'comment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'error'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '이름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '그릇된_정보는_피함'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '문맥에_맞는_단어_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '일관성_있는_클래스_이름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '일관성_있는_함수_이름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '한가지_기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '작은_인수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '중복_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '주석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '명쾌한_의도파악'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '주석_삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '신문기사처럼_작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '세로_형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '가로_형식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: '오류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'null_반환금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'name'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'n2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'n3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'f2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'f3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'f4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'f5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'c2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'c3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'c4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'c5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'general'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g7'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g8'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g9'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Concept {id: 'g10'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Document {id: 'SW_176.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'clean_code'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'tdd_devops'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'naming'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'function'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'comment'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'error'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이름'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그릇된_정보는_피함'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문맥에_맞는_단어_사용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성_있는_클래스_이름'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성_있는_함수_이름'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한가지_기능'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작은_인수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중복_방지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명쾌한_의도파악'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주석_삭제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신문기사처럼_작성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세로_형식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가로_형식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'null_반환금지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'name'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f4'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f5'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c4'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c5'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'general'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g4'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g5'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g7'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g8'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g9'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g10'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_177.2: 정보시스템 운영 성과관리 및 성과평가
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_177.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
SET     n.name = '정보시스템 운영 성과관리 및 성과평가',
    n.name_kr = '정보시스템 운영 성과관리 및 성과평가',
    n.domain = 'SW';

MERGE (n:Concept {id: 'op'})
SET     n.name = 'OP',
    n.name_kr = '운영',
    n.domain = 'SW',
    n.aliases = ['OP', '운영'];

MERGE (n:Concept {id: '정보시스템_운영_성과평가'})
SET     n.name = '정보시스템 운영 성과평가',
    n.name_kr = '정보시스템 운영 성과평가',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템_운영_성과측정_모델'})
SET     n.name = '정보시스템 운영 성과측정 모델',
    n.name_kr = '정보시스템 운영 성과측정 모델',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템_운영성과_측정_절차'})
SET     n.name = '정보시스템 운영성과 측정 절차',
    n.name_kr = '정보시스템 운영성과 측정 절차',
    n.domain = 'SW';

MERGE (n:Concept {id: '1차_성과측정_기준'})
SET     n.name = '1차 성과측정 기준',
    n.name_kr = '1차 성과측정 기준',
    n.domain = 'SW';

MERGE (n:Concept {id: '2차_성과측정_기준'})
SET     n.name = '2차 성과측정 기준',
    n.name_kr = '2차 성과측정 기준',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템_운영_관리_개념'})
SET     n.name = '정보시스템 운영 관리 개념',
    n.name_kr = '정보시스템 운영 관리 개념',
    n.domain = 'SW';

MERGE (n:Concept {id: '누적유지보수비_비율'})
SET     n.name = '누적유지보수비 비율',
    n.name_kr = '누적유지보수비 비율',
    n.domain = 'SW';

MERGE (n:Concept {id: '투입운영_유지비_증감률'})
SET     n.name = '투입운영 유지비 증감률',
    n.name_kr = '투입운영 유지비 증감률',
    n.domain = 'SW';

MERGE (n:Concept {id: '평균운영_유지비증감률'})
SET     n.name = '평균운영 유지비증감률',
    n.name_kr = '평균운영 유지비증감률',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능활용도'})
SET     n.name = '기능활용도',
    n.name_kr = '기능활용도',
    n.domain = 'SW';

MERGE (n:Concept {id: '사용_편의성'})
SET     n.name = '사용 편의성',
    n.name_kr = '사용 편의성',
    n.domain = 'SW';

MERGE (n:Concept {id: '업무성과_달성도'})
SET     n.name = '업무성과 달성도',
    n.name_kr = '업무성과 달성도',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템_개발비'})
SET     n.name = '정보시스템 개발비',
    n.name_kr = '정보시스템 개발비',
    n.domain = 'SW';

MERGE (n:Concept {id: '유지보수비'})
SET     n.name = '유지보수비',
    n.name_kr = '유지보수비',
    n.domain = 'SW';

MERGE (n:Concept {id: '운영비'})
SET     n.name = '운영비',
    n.name_kr = '운영비',
    n.domain = 'SW';

MERGE (n:Concept {id: '활용규모'})
SET     n.name = '활용규모',
    n.name_kr = '활용규모',
    n.domain = 'SW';

MERGE (n:Concept {id: '기능_수_사용편의성_측정_점수'})
SET     n.name = '기능 수 사용편의성 측정 점수',
    n.name_kr = '기능 수 사용편의성 측정 점수',
    n.domain = 'SW';

MERGE (n:Concept {id: '업무성과'})
SET     n.name = '업무성과',
    n.name_kr = '업무성과',
    n.domain = 'SW';

MERGE (n:Concept {id: '유지관리_유형'})
SET     n.name = '유지관리 유형',
    n.name_kr = '유지관리 유형',
    n.domain = 'SW';

MERGE (n:Concept {id: '통폐합'})
SET     n.name = '통폐합',
    n.name_kr = '통폐합',
    n.domain = 'SW';

MERGE (n:Concept {id: '재개발'})
SET     n.name = '재개발',
    n.name_kr = '재개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '폐기_자원효율성_측정'})
SET     n.name = '폐기 자원효율성 측정',
    n.name_kr = '폐기 자원효율성 측정',
    n.domain = 'SW';

MERGE (n:Concept {id: '구축방안'})
SET     n.name = '구축방안',
    n.name_kr = '구축방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '투자_타당성_분석'})
SET     n.name = '투자 타당성 분석',
    n.name_kr = '투자 타당성 분석',
    n.domain = 'SW';

MERGE (n:Law {id: '적용_기관'})
SET     n.name = '적용 기관',
    n.name_kr = '적용 기관',
    n.domain = 'SW',
    n.definition = '중앙행정기관 및 그 소속기관, 지방자치단체, 전자정부법 시행령 기준에 해당하는 공공기관의 정보시스템 운영 및 성과관리에 적용';

MERGE (n:Concept {id: '정보시스템_구축_시점'})
SET     n.name = '정보시스템 구축 시점',
    n.name_kr = '정보시스템 구축 시점',
    n.domain = 'SW',
    n.definition = '개발 및 구축이 완료되어 서비스 운영이 개시된 시점으로부터 5년이 경과한 정보시스템 개발중인 정보시스템의 경우, 완료된 부분 시스템만 성과측정이 가능. 5년 미만의 정보시스템에 대한 성과측정이 필요하다고 판단되는 경우, 행정기관 등의 장은 측정지표의 변경 등을 행정자치부장관과 협의하여 성과측정을 할 수 있다.';

MERGE (n:Concept {id: '모바일_웹'})
SET     n.name = '모바일 웹',
    n.name_kr = '모바일 웹',
    n.domain = 'SW',
    n.definition = '모바일 웹은 행정자치부장관이 별도로 고시하는 「모바일 전자정부 서비스 관리지침(행정자치부 예규 25호, 2015.8.28.)」을 참고하여 각 행정기관에서 기 구축되어 운영 중인 대국민 모바일 서비스를 대상으로 함 운영관리는 시스템이 구축되어 운영부서로 이관된 시점부터 폐기로 결정된 시점으로 정의함';

MERGE (n:Concept {id: '비용_측면'})
SET     n.name = '비용 측면',
    n.name_kr = '비용 측면',
    n.domain = 'SW',
    n.definition = '운영의 적정성';

MERGE (n:Concept {id: '유지의_용이성'})
SET     n.name = '유지의 용이성',
    n.name_kr = '유지의 용이성',
    n.domain = 'SW',
    n.definition = '투입되는 운영/유지의 증감수준을 분석하여 해당 정보시스템 유지 용이성을 판단하기 위한 항목 (운영유지비 = 운영비 + 유지보수비)';

MERGE (n:Concept {id: '비용의_효율성'})
SET     n.name = '비용의 효율성',
    n.name_kr = '비용의 효율성',
    n.domain = 'SW',
    n.definition = '정보시스템의 활용규모 변동에 따른 운영/유지비 규모 변동의 적절성을 판단하기 위한 항목';

MERGE (n:Concept {id: '업무_측면'})
SET     n.name = '업무 측면',
    n.name_kr = '업무 측면',
    n.domain = 'SW',
    n.definition = '업무수행 영향도';

MERGE (n:Concept {id: '사용상의_편의성'})
SET     n.name = '사용상의 편의성',
    n.name_kr = '사용상의 편의성',
    n.domain = 'SW',
    n.definition = '정보시스템 사용자의 편의성을 측정하여 편의성 제고를 위한 기능개선의 필요성을 판단하기 위한 항목';

MERGE (n:Concept {id: '이용실적'})
SET     n.name = '이용실적',
    n.name_kr = '이용실적',
    n.domain = 'SW',
    n.definition = '이용률 제고 및 최초 구축 시점의 목표달성을 위해 기능 개선 및 고도화의 필요성을 판단하기 위한 항목';

MERGE (n:Concept {id: '비용측면'})
SET     n.name = '비용측면',
    n.name_kr = '비용측면',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '정보시스템_운영_성과평가'})
MERGE (b:Concept {id: 'op'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '정보시스템_운영_성과측정_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '정보시스템_운영성과_측정_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '1차_성과측정_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '2차_성과측정_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '정보시스템_운영_관리_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '누적유지보수비_비율'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '투입운영_유지비_증감률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '평균운영_유지비증감률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '기능활용도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '사용_편의성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '업무성과_달성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '정보시스템_개발비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '유지보수비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '운영비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '활용규모'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '기능_수_사용편의성_측정_점수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '업무성과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '유지관리_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '통폐합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '재개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '폐기_자원효율성_측정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '구축방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '투자_타당성_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Law {id: '적용_기관'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '정보시스템_구축_시점'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '모바일_웹'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '비용_측면'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '유지의_용이성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '비용의_효율성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '업무_측면'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '사용상의_편의성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '이용실적'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '비용측면'})
MERGE (b:Concept {id: '업무_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '비용측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Concept {id: '업무_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Document {id: 'SW_177.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과관리_및_성과평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'op'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_운영_성과측정_모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_운영성과_측정_절차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1차_성과측정_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2차_성과측정_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_운영_관리_개념'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '누적유지보수비_비율'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투입운영_유지비_증감률'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균운영_유지비증감률'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능활용도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용_편의성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무성과_달성도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_개발비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용규모'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_수_사용편의성_측정_점수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무성과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지관리_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통폐합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '폐기_자원효율성_측정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '투자_타당성_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '적용_기관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템_구축_시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_웹'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지의_용이성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용의_효율성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용상의_편의성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용실적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_182.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_182.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_182.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_182.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_182.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_182.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_183: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_183'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_184: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_184'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_187: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_187'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_188: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_188'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_189: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_189'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_191: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_191'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_192.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_192.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_192.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_192.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_193.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_193.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_193.2: SP (Software Process) 인증
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_193.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Metric {id: 'software_process'})
SET     n.name = 'SP (Software Process) 인증',
    n.name_kr = 'SP (Software Process) 인증',
    n.domain = 'SW';

MERGE (n:Concept {id: '조프개지프'})
SET     n.name = '조프개지프',
    n.name_kr = '조프개지프',
    n.domain = 'SW';

MERGE (n:Concept {id: '제외'})
SET     n.name = '제외',
    n.name_kr = '제외',
    n.domain = 'SW',
    n.definition = '1. 기술성 및 경제적 가치가 미흡한 단순기능 소프트웨어 제품 2. 독자적인 환경에서만 운영되는 범용성이 없는 소프트웨어 제품 3. 「게임산업진흥에 관한 법률」 제2조제1의2호에 따른 사행성 소프트웨어 제품 4. 건전한 기업활동을 저해하는 위해성 소프트웨어 제품';

MERGE (n:Concept {id: '인증_등급'})
SET     n.name = '인증 등급',
    n.name_kr = '인증 등급',
    n.domain = 'SW',
    n.definition = '1등급';

MERGE (n:Concept {id: '2등급'})
SET     n.name = '2등급',
    n.name_kr = '2등급',
    n.domain = 'SW',
    n.definition = '품질평가(60%)와 업무적합성 평가(40%) 점수의 합계가 70점 이상(100점 기준)';

MERGE (n:Concept {id: '품질_평가_기준'})
SET     n.name = '품질 평가 기준',
    n.name_kr = '품질 평가 기준',
    n.domain = 'SW',
    n.definition = '제품설명서 품질인증 기준';

MERGE (n:Concept {id: '사용자취급_설명서_품질인증_기준'})
SET     n.name = '사용자취급 설명서 품질인증 기준',
    n.name_kr = '사용자취급 설명서 품질인증 기준',
    n.domain = 'SW',
    n.definition = '① 완전성 ② 정확성 ③ 일관성 ④ 이해 가능성 ⑤ 사용성 및 운영성';

MERGE (n:Concept {id: '실행_소프트웨어_품질인증_기준'})
SET     n.name = '실행 소프트웨어 품질인증 기준',
    n.name_kr = '실행 소프트웨어 품질인증 기준',
    n.domain = 'SW',
    n.definition = '① 기능적합성 ② 성능효율성 ③ 호환성 ④ 사용성 ⑤ 신뢰성 ⑥ 보안성 ⑦ 유지보수성 ⑧ 이식성';

// --- 관계 ---

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '조프개지프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '제외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '인증_등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '2등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '품질_평가_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '사용자취급_설명서_품질인증_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Concept {id: '실행_소프트웨어_품질인증_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Document {id: 'SW_193.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'software_process'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조프개지프'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_등급'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2등급'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_평가_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자취급_설명서_품질인증_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행_소프트웨어_품질인증_기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_194: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_194'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_195: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_195'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_196: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_196'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_198: TMMi
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_198'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'tmmi'})
SET     n.name = 'TMMi',
    n.name_kr = 'TMMi',
    n.domain = 'SW',
    n.aliases = ['TMMi'];

MERGE (n:Concept {id: '초관정관최'})
SET     n.name = '초관정관최',
    n.name_kr = '초관정관최',
    n.domain = 'SW';

MERGE (n:Standard {id: 'cmmi'})
SET     n.name = 'CMMi',
    n.name_kr = 'CMMi',
    n.domain = 'SW',
    n.aliases = ['CMMi'];

// --- 관계 ---

MERGE (a:Concept {id: 'tmmi'})
MERGE (b:Concept {id: '초관정관최'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tmmi'})
MERGE (b:Standard {id: 'cmmi'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'tmmi'})
MERGE (b:Standard {id: 'cmmi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tmmi'})
MERGE (b:Document {id: 'SW_198'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tmmi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초관정관최'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'cmmi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_199.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_199.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_199.3: ISO/IEC19770-1
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_199.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'iso_iec19770_1'})
SET     n.name = 'ISO/IEC19770-1',
    n.name_kr = 'ISO/IEC19770-1',
    n.domain = 'SW',
    n.aliases = ['ISO/IEC19770-1'];

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sam'})
SET     n.name = 'SAM',
    n.name_kr = 'SAM',
    n.domain = 'SW',
    n.aliases = ['SAM'];

MERGE (n:Concept {id: '요구_기준_규정'})
SET     n.name = '요구 기준 규정',
    n.name_kr = '요구 기준 규정',
    n.domain = 'SW',
    n.definition = '새로운 SW 제품, 새로운 Version, Patch 필요성 판단 - 비즈니스 효과 분석 - 기존 SW 제품을 계속 사용할 경우의 리스크 분석';

MERGE (n:Concept {id: '디자인'})
SET     n.name = '디자인',
    n.name_kr = '디자인',
    n.domain = 'SW',
    n.definition = '지체개발 SW: 디자인, 실행환경, 운영모델 - 와부구입 SW: 다른 시스템과의 통합성, 일관성, 기능적 요구 충족 등';

MERGE (n:Concept {id: '평가'})
SET     n.name = '평가',
    n.name_kr = '평가',
    n.domain = 'SW',
    n.definition = 'ToR(Term of Reference: 위탁 조건 사항) 작성 - SoR(Statement of Requirement: 소요 목록) 작성';

MERGE (n:Concept {id: '구매'})
SET     n.name = '구매',
    n.name_kr = '구매',
    n.domain = 'SW',
    n.definition = '지체개발 SW: 설계, 코딩, 통합, 구현, 테스트 포함 - 와부구입 SW: 통합, 구현, 테스트';

MERGE (n:Concept {id: '구현'})
SET     n.name = '구현',
    n.name_kr = '구현',
    n.domain = 'SW',
    n.definition = '진행상황에 맞도록 자산DB 정보 Update 필요';

MERGE (n:Concept {id: '배치/운영'})
SET     n.name = '배치/운영',
    n.name_kr = '배치/운영',
    n.domain = 'SW',
    n.definition = 'SW 설치 - 예외상황 모니터링';

MERGE (n:Concept {id: '폐기'})
SET     n.name = '폐기',
    n.name_kr = '폐기',
    n.domain = 'SW',
    n.definition = 'H/W 폐기 시 같이 폐기되어야 하는 S/W 가 있는가를 확인 - License를 유지해서 Upgrade에 활용할 것인가를 확인';

MERGE (n:Metric {id: '최적화'})
SET     n.name = '최적화',
    n.name_kr = '최적화',
    n.domain = 'SW',
    n.definition = '배치가 최종 사용자의 요구에 부응하는지 확인 - 필요 시 재배치 또는 다른 S/W 배치 - 서비스 목표에 맞는 운영, 자원, 관리 상황 모니터링 - SW 자산관리 Process 자체의 효율성과 유효성 지속적 평가/개선 - 공급업체의 지원 중단, License 조건변경 등에 대처';

MERGE (n:Metric {id: 'process'})
SET     n.name = 'Process',
    n.name_kr = 'ISO/IEC 19770-1',
    n.domain = 'SW',
    n.definition = 'SW 자산관리 프로세스 표준, 27개 프로세스 (조직관리, 핵심프로세스, 프로세스 인터페이스 등) - SW를 자산으로 관리해야 하는 규정 명시 - ITSM 지원 및 기업 거버넌스 요구 충족 지원',
    n.aliases = ['Process', 'ISO/IEC 19770-1'];

MERGE (n:Concept {id: 'iso_iec_19770_2'})
SET     n.name = 'ISO/IEC 19770-2 (SW 식별 태그)',
    n.name_kr = 'ISO/IEC 19770-2 (SW 식별 태그)',
    n.domain = 'SW',
    n.definition = 'SW 태그 부착을 위한 SW 자산관리 데이터 표준 - SW 식별 태그: SW 형상 항목에 대한 식별 정보 부착';

MERGE (n:Concept {id: 'iso_iec_19770_3'})
SET     n.name = 'ISO/IEC 19770-3 (SW 라이센스 태그)',
    n.name_kr = 'ISO/IEC 19770-3 (SW 라이센스 태그)',
    n.domain = 'SW',
    n.definition = 'SW 라이센스 태그에 대한 SW 자산관리 데이터 표준 - SW 라이센스 태그: 라이센스에 관한 정보를 보유한 컴퓨터 파일';

MERGE (n:Concept {id: '활동'})
SET     n.name = '활동',
    n.name_kr = '활동',
    n.domain = 'SW';

MERGE (n:Concept {id: 'check_list'})
SET     n.name = 'Check List',
    n.name_kr = 'Check List',
    n.domain = 'SW',
    n.aliases = ['Check List'];

// --- 관계 ---

MERGE (a:Concept {id: 'sam'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: 'sam'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '요구_기준_규정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '디자인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '구매'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '구현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '배치/운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '폐기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Metric {id: '최적화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Metric {id: 'process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: 'iso_iec_19770_2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: 'iso_iec_19770_3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Concept {id: 'check_list'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: '활동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Concept {id: 'check_list'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Document {id: 'SW_199.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iso_iec19770_1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구_기준_규정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구매'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치/운영'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '폐기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '최적화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_19770_2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_19770_3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'check_list'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_204: SW 안전성 분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_204'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_안전성_분석'})
SET     n.name = 'SW 안전성 분석',
    n.name_kr = 'SW 안전성 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_안전성_분석기법'})
SET     n.name = '소프트웨어 안전성 분석기법',
    n.name_kr = '소프트웨어 안전성 분석기법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_안전성_분석_개념'})
SET     n.name = 'SW 안전성 분석 개념',
    n.name_kr = 'SW 안전성 분석 개념',
    n.domain = 'SW';

MERGE (n:Concept {id: '항공'})
SET     n.name = '항공',
    n.name_kr = '항공',
    n.domain = 'SW';

MERGE (n:Concept {id: '상향식/귀납적_분석'})
SET     n.name = '상향식/귀납적 분석',
    n.name_kr = '상향식/귀납적 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: '하향식/연역적_분석'})
SET     n.name = '하향식/연역적 분석',
    n.name_kr = '하향식/연역적 분석',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_안전성_분석_개념'})
MERGE (b:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석'})
MERGE (b:Concept {id: '항공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상향식/귀납적_분석'})
MERGE (b:Concept {id: '하향식/연역적_분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석'})
MERGE (b:Concept {id: '상향식/귀납적_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석'})
MERGE (b:Concept {id: '하향식/연역적_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석'})
MERGE (b:Document {id: 'SW_204'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_안전성_분석_개념'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '항공'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상향식/귀납적_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하향식/연역적_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_205: FTA (결함 트리 분석)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_205'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'fta'})
SET     n.name = 'FTA',
    n.name_kr = '결함 트리 분석',
    n.domain = 'SW',
    n.aliases = ['FTA', '결함 트리 분석'];

MERGE (n:Concept {id: '소프트웨어_안전성_분석기법'})
SET     n.name = '소프트웨어 안전성 분석기법',
    n.name_kr = '소프트웨어 안전성 분석기법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'fault_tree_analysis'})
SET     n.name = 'Fault Tree Analysis',
    n.name_kr = 'Fault Tree Analysis',
    n.domain = 'SW',
    n.aliases = ['Fault Tree Analysis'];

MERGE (n:Concept {id: '연역적기법'})
SET     n.name = '연역적기법',
    n.name_kr = '연역적기법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'fmea'})
SET     n.name = 'FMEA',
    n.name_kr = 'FMEA',
    n.domain = 'SW',
    n.aliases = ['FMEA'];

// --- 관계 ---

MERGE (a:Concept {id: 'fta'})
MERGE (b:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Concept {id: 'fault_tree_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Concept {id: '연역적기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Concept {id: 'fmea'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Document {id: 'SW_205'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fault_tree_analysis'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연역적기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_206: FMEA (Failure Mode and Effects Analysis)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_206'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'failure_mode_and_effects_analysis'})
SET     n.name = 'Failure Mode and Effects Analysis',
    n.name_kr = 'FMEA',
    n.domain = 'SW',
    n.aliases = ['Failure Mode and Effects Analysis', 'FMEA'];

MERGE (n:Concept {id: '소프트웨어_안전성_분석기법'})
SET     n.name = '소프트웨어 안전성 분석기법',
    n.name_kr = '소프트웨어 안전성 분석기법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'fmea'})
SET     n.name = 'FMEA',
    n.name_kr = 'FMEA',
    n.domain = 'SW',
    n.aliases = ['FMEA'];

MERGE (n:Concept {id: 'rpn=심각도x발생도x검출도'})
SET     n.name = 'RPN=심각도x발생도x검출도',
    n.name_kr = 'RPN=심각도x발생도x검출도',
    n.domain = 'SW';

MERGE (n:Concept {id: '주요_목표'})
SET     n.name = '주요 목표',
    n.name_kr = '주요 목표',
    n.domain = 'SW';

MERGE (n:Concept {id: '수행_단계'})
SET     n.name = '수행 단계',
    n.name_kr = '수행 단계',
    n.domain = 'SW';

MERGE (n:Concept {id: '추가_산출물'})
SET     n.name = '추가 산출물',
    n.name_kr = '추가 산출물',
    n.domain = 'SW';

MERGE (n:Concept {id: 'fta'})
SET     n.name = 'FTA',
    n.name_kr = 'FTA',
    n.domain = 'SW',
    n.aliases = ['FTA'];

MERGE (n:Concept {id: '비용/시점'})
SET     n.name = '비용/시점',
    n.name_kr = '비용/시점',
    n.domain = 'SW',
    n.definition = '적절한 분석 비용과 품질';

// --- 관계 ---

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: 'rpn=심각도x발생도x검출도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요_목표'})
MERGE (b:Concept {id: '수행_단계'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: '주요_목표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: '수행_단계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '주요_목표'})
MERGE (b:Concept {id: '추가_산출물'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: '주요_목표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: '추가_산출물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Concept {id: 'fta'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: 'fmea'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: 'fta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Concept {id: '비용/시점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Document {id: 'SW_206'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'failure_mode_and_effects_analysis'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fmea'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rpn=심각도x발생도x검출도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_목표'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행_단계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추가_산출물'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용/시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_207.1: HAZOP (Hazard and Operability Study)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'hazard_and_operability_study'})
SET     n.name = 'Hazard and Operability Study',
    n.name_kr = 'HAZOP',
    n.domain = 'SW',
    n.aliases = ['Hazard and Operability Study', 'HAZOP'];

MERGE (n:Concept {id: '소프트웨어_안전성_분석기법'})
SET     n.name = '소프트웨어 안전성 분석기법',
    n.name_kr = '소프트웨어 안전성 분석기법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'hazop'})
SET     n.name = 'HAZOP',
    n.name_kr = 'HAZOP',
    n.domain = 'SW',
    n.aliases = ['HAZOP'];

MERGE (n:Concept {id: '경험기반'})
SET     n.name = '경험기반',
    n.name_kr = '경험기반',
    n.domain = 'SW';

MERGE (n:Concept {id: '일반변수)'})
SET     n.name = '일반변수)',
    n.name_kr = '일반변수)',
    n.domain = 'SW';

MERGE (n:Concept {id: '휴먼_hazop'})
SET     n.name = '휴먼 HAZOP',
    n.name_kr = '휴먼 HAZOP',
    n.domain = 'SW',
    n.definition = '특화된 HAZOPs의 한 계열로 기술적 실패 보다는 사람 에러에 더 집중함';

MERGE (n:Concept {id: '프로시져_hazop'})
SET     n.name = '프로시져 HAZOP',
    n.name_kr = '프로시져 HAZOP',
    n.domain = 'SW',
    n.definition = '절차 또는 운용 시퀀스의 검토. SAFOP(SAFe Operation Study)로 표기';

MERGE (n:Concept {id: '소프트웨어_hazop'})
SET     n.name = '소프트웨어 HAZOP',
    n.name_kr = '소프트웨어 HAZOP',
    n.domain = 'SW',
    n.definition = '소프트웨어 개발에서의 가능한 에러를 식별';

MERGE (n:Concept {id: '평가'})
SET     n.name = '평가',
    n.name_kr = '평가',
    n.domain = 'SW',
    n.definition = '평가 방식';

MERGE (n:Concept {id: 'deviation'})
SET     n.name = 'Deviation',
    n.name_kr = '이탈',
    n.domain = 'SW',
    n.definition = '설계 의도(정상운전조건)에서 벗어난 상태',
    n.aliases = ['Deviation', '이탈'];

MERGE (n:Concept {id: '사람_에러'})
SET     n.name = '사람 에러',
    n.name_kr = '사람 에러',
    n.domain = 'SW',
    n.definition = '오퍼레이터, 설계가, 제조자, 기타 관련 작업자의 행위로 인해 심각한 결과를 초래하는 위험이 발생';

MERGE (n:Concept {id: '장비_오류'})
SET     n.name = '장비 오류',
    n.name_kr = '장비 오류',
    n.domain = 'SW',
    n.definition = '기계적, 구조적, 운용상의 결함으로 인해 위험 발생';

MERGE (n:Concept {id: '외부_요인'})
SET     n.name = '외부 요인',
    n.name_kr = '외부 요인',
    n.domain = 'SW',
    n.definition = '외부 요인이 노드 운용에 영향을 주어 위험을 발생 시킴 (예, 정전, 수도 공급 중단, 날씨, 지진의 장애 등)';

MERGE (n:Metric {id: 'process_parameter'})
SET     n.name = 'Process Parameter',
    n.name_kr = '공정변수',
    n.domain = 'SW',
    n.definition = '특정변수',
    n.aliases = ['Process Parameter', '공정변수'];

MERGE (n:Concept {id: '일반변수'})
SET     n.name = '일반변수',
    n.name_kr = '일반변수',
    n.domain = 'SW',
    n.definition = '단독으로 이탈 발생하는 변수';

MERGE (n:Concept {id: 'guide_words'})
SET     n.name = 'Guide Words',
    n.name_kr = '가이드워드',
    n.domain = 'SW',
    n.definition = '없음',
    n.aliases = ['Guide Words', '가이드워드'];

MERGE (n:Concept {id: '증가'})
SET     n.name = '증가',
    n.name_kr = '증가',
    n.domain = 'SW',
    n.definition = '변수가 양적으로 증가되는 상태';

MERGE (n:Concept {id: '감소'})
SET     n.name = '감소',
    n.name_kr = '감소',
    n.domain = 'SW',
    n.definition = '변수가 양적으로 감소되는 상태';

MERGE (n:Concept {id: '반대'})
SET     n.name = '반대',
    n.name_kr = '반대',
    n.domain = 'SW',
    n.definition = '설계 의도와 정반대로 나타나는 상태';

MERGE (n:Concept {id: '부가'})
SET     n.name = '부가',
    n.name_kr = '부가',
    n.domain = 'SW',
    n.definition = '설계의도 외에 다른 변수가 부가되는 상태 (오염)';

MERGE (n:Concept {id: '부분'})
SET     n.name = '부분',
    n.name_kr = '부분',
    n.domain = 'SW',
    n.definition = '설계의도대로 완전히 이루어지지 않는 상태';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SW',
    n.definition = '설계의도대로 설치되지 않거나 운전 유지되지 않는 상태';

// --- 관계 ---

MERGE (a:Concept {id: 'hazop'})
MERGE (b:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '경험기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '일반변수)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '휴먼_hazop'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '프로시져_hazop'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '소프트웨어_hazop'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '평가'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: 'deviation'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '사람_에러'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '장비_오류'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '외부_요인'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Metric {id: 'process_parameter'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '일반변수'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: 'guide_words'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '증가'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '감소'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '반대'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '부가'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '부분'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Document {id: 'SW_207.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hazard_and_operability_study'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_안전성_분석기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hazop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경험기반'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반변수)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '휴먼_hazop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로시져_hazop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_hazop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deviation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사람_에러'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비_오류'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_요인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process_parameter'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반변수'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'guide_words'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감소'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반대'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_207.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.4: 의료 기기 표준
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '의료_기기_표준'})
SET     n.name = '의료 기기 표준',
    n.name_kr = '의료 기기 표준',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_품질_표준_및_종합'})
SET     n.name = 'SW 품질 표준 및 종합',
    n.name_kr = 'SW 품질 표준 및 종합',
    n.domain = 'SW';

MERGE (n:Concept {id: '의료기기_소프트웨어_관련_주요_표준'})
SET     n.name = '의료기기 소프트웨어 관련 주요 표준',
    n.name_kr = '의료기기 소프트웨어 관련 주요 표준',
    n.domain = 'SW';

MERGE (n:Concept {id: 'iso_13485의_주요_내용'})
SET     n.name = 'ISO 13485의 주요 내용',
    n.name_kr = 'ISO 13485의 주요 내용',
    n.domain = 'SW';

MERGE (n:Concept {id: '품질관리시스템의_유효성_유지'})
SET     n.name = '품질관리시스템의 유효성 유지',
    n.name_kr = '품질관리시스템의 유효성 유지',
    n.domain = 'SW';

MERGE (n:Standard {id: '의료기기_관리표준'})
SET     n.name = '의료기기 관리표준',
    n.name_kr = '의료기기 관리표준',
    n.domain = 'SW',
    n.definition = 'ISO 14971';

MERGE (n:Standard {id: 'iso_13485'})
SET     n.name = 'ISO 13485',
    n.name_kr = 'ISO 13485',
    n.domain = 'SW',
    n.definition = '의료기기 품질관리 시스템에 적용이 되는 표준 - 의료기기 소프트웨어 개발 시 반드시 적용 - 의료기기 제조업체가 의료기기 제품의 품질 관점에서 기업으로써 수행해야 하는 모든 내용 포함 - 고개 요구사항과 의료기기 관련 규제 요구사항을 충족시키는 품질관리시스템 대한 요구사항 제시',
    n.aliases = ['ISO 13485'];

MERGE (n:Standard {id: '의료기기_프로세스_표준'})
SET     n.name = '의료기기 프로세스 표준',
    n.name_kr = '의료기기 프로세스 표준',
    n.domain = 'SW',
    n.definition = 'ISO 62304';

MERGE (n:Standard {id: 'iso_62366_1'})
SET     n.name = 'ISO 62366-1',
    n.name_kr = 'ISO 62366-1',
    n.domain = 'SW',
    n.definition = '의료기기 사용적합성(Usability Engineering)을 위한 표준으로 의료기기 소프트웨어의 사용에 있어 안전성 및 유효성 측면의 위험을 감소시키기 위해 적용',
    n.aliases = ['ISO 62366-1'];

MERGE (n:Concept {id: '의료기기_제품표준'})
SET     n.name = '의료기기 제품표준',
    n.name_kr = '의료기기 제품표준',
    n.domain = 'SW',
    n.definition = 'IEC 60601-1';

MERGE (n:Concept {id: 'iec_61010_1'})
SET     n.name = 'IEC 61010-1',
    n.name_kr = 'IEC 61010-1',
    n.domain = 'SW',
    n.definition = '체외진단 의료기기에 적용되는 표준으로 의료기기 소프트웨어가 체외진단 의료기기 내에 삽입되거나 체외진단 의료기기의 사용목적을 갖는 경우 적용 가능',
    n.aliases = ['IEC 61010-1'];

MERGE (n:Concept {id: 'iec_82304_1'})
SET     n.name = 'IEC 82304-1',
    n.name_kr = 'IEC 82304-1',
    n.domain = 'SW',
    n.definition = '헬스 소프트웨어 의 안전성 및 보안을 위한 요구사항 제시 - 개발하는 의료기기 소프트웨어가 독립형 의료기기 소프트웨어 (SaMD, Software as a Medical Device) 형태인 경우 적용',
    n.aliases = ['IEC 82304-1'];

MERGE (n:Concept {id: '5_management_responsibility'})
SET     n.name = '5 Management responsibility',
    n.name_kr = '5 Management responsibility',
    n.domain = 'SW',
    n.definition = '관리 의지 : QMS 개발 및 실행 그리고 유효성 유지에 대한 의지 - 고객 중심, 품질방침, QMS 계획, 책임/권한 및 의사소통, 관리 검토';

MERGE (n:Concept {id: '6_resource_management'})
SET     n.name = '6 Resource management',
    n.name_kr = '6 Resource management',
    n.domain = 'SW',
    n.definition = '인적 자원 : 수행 인원은 적절한 교육, 훈련, 기술 및 경험에 근거한 능력 요구됨 - 기반 시설, 업무 환경 및 오염 관리';

MERGE (n:Concept {id: '7_product_realization'})
SET     n.name = '7 Product realization',
    n.name_kr = '7 Product realization',
    n.domain = 'SW',
    n.definition = '고객 요구사항과 일관성 있는 제품 실현 - 고객 관련 프로세스, 설계 및 개발, 구매, 생산 및 서비스, 모니터링 및 측정 장치 관리';

MERGE (n:Concept {id: '8_measurement,_analysis_and_improvement'})
SET     n.name = '8 Measurement, analysis and improvement',
    n.name_kr = '8 Measurement, analysis and improvement',
    n.domain = 'SW',
    n.definition = '제품, QMS, QMS 유효성 유지를 위하여 측정, 분석 및 프로세스 개선 - 모니터링 및 측정, 부적합 제품 관리, 데이터 분석, 개선';

MERGE (n:Concept {id: '질관리_시스템_유효성'})
SET     n.name = '질관리 시스템 유효성',
    n.name_kr = '질관리 시스템 유효성',
    n.domain = 'SW',
    n.definition = 'Maintain effectiveness of QMS';

// --- 관계 ---

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: 'sw_품질_표준_및_종합'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '의료기기_소프트웨어_관련_주요_표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: 'iso_13485의_주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '품질관리시스템의_유효성_유지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Standard {id: '의료기기_관리표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Standard {id: 'iso_13485'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Standard {id: '의료기기_프로세스_표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Standard {id: 'iso_62366_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '의료기기_제품표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: 'iec_61010_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: 'iec_82304_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '5_management_responsibility'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '6_resource_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '7_product_realization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '8_measurement,_analysis_and_improvement'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Concept {id: '질관리_시스템_유효성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Document {id: 'SW_207.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '의료_기기_표준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_품질_표준_및_종합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료기기_소프트웨어_관련_주요_표준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_13485의_주요_내용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리시스템의_유효성_유지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '의료기기_관리표준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_13485'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '의료기기_프로세스_표준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'iso_62366_1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료기기_제품표준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_61010_1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iec_82304_1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5_management_responsibility'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6_resource_management'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7_product_realization'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8_measurement,_analysis_and_improvement'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '질관리_시스템_유효성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_207.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.5'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.6'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.7'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.8'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_207.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_207.9'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_208.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_208.2: 감리조건
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '감리조건'})
SET     n.name = '감리조건',
    n.name_kr = '감리조건',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템관리'})
SET     n.name = '정보시스템관리',
    n.name_kr = '정보시스템관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '대공연장_(대국민서비스'})
SET     n.name = '대공연장 (대국민서비스',
    n.name_kr = '대공연장 (대국민서비스',
    n.domain = 'SW';

MERGE (n:Concept {id: '공동사용'})
SET     n.name = '공동사용',
    n.name_kr = '공동사용',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보_연계이용'})
SET     n.name = '정보 연계이용',
    n.name_kr = '정보 연계이용',
    n.domain = 'SW';

MERGE (n:Concept {id: '행정기관_장이_인정)'})
SET     n.name = '행정기관 장이 인정)',
    n.name_kr = '행정기관 장이 인정)',
    n.domain = 'SW';

MERGE (n:Concept {id: '의무대상'})
SET     n.name = '의무대상',
    n.name_kr = '의무대상',
    n.domain = 'SW';

MERGE (n:Concept {id: '예외사항'})
SET     n.name = '예외사항',
    n.name_kr = '예외사항',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '정보시스템관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '대공연장_(대국민서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '공동사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '정보_연계이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '행정기관_장이_인정)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의무대상'})
MERGE (b:Concept {id: '예외사항'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '의무대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '예외사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '의무대상'})
MERGE (b:Concept {id: '예외사항'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '의무대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Concept {id: '예외사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Document {id: 'SW_208.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '감리조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대공연장_(대국민서비스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공동사용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_연계이용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행정기관_장이_인정)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의무대상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예외사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_208.3: 감리원의 종류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '감리원의_종류'})
SET     n.name = '감리원의 종류',
    n.name_kr = '감리원의 종류',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템감리'})
SET     n.name = '정보시스템감리',
    n.name_kr = '정보시스템감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리원'})
SET     n.name = '감리원',
    n.name_kr = '감리원',
    n.domain = 'SW';

MERGE (n:Concept {id: '총괄_감리원'})
SET     n.name = '총괄 감리원',
    n.name_kr = '총괄 감리원',
    n.domain = 'SW';

MERGE (n:Concept {id: '수석_감리원'})
SET     n.name = '수석 감리원',
    n.name_kr = '수석 감리원',
    n.domain = 'SW';

MERGE (n:Concept {id: '상주_감리원'})
SET     n.name = '상주 감리원',
    n.name_kr = '상주 감리원',
    n.domain = 'SW';

MERGE (n:Concept {id: '현장감리'})
SET     n.name = '현장감리',
    n.name_kr = '현장감리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'pmo'})
SET     n.name = 'PMO',
    n.name_kr = 'PMO',
    n.domain = 'SW',
    n.aliases = ['PMO'];

// --- 관계 ---

MERGE (a:Concept {id: '정보시스템감리'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리원'})
MERGE (b:Concept {id: '정보시스템감리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: '총괄_감리원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: '수석_감리원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: '상주_감리원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '현장감리'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: '현장감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '현장감리'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: '현장감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Concept {id: 'pmo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Document {id: 'SW_208.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '감리원의_종류'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '총괄_감리원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수석_감리원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상주_감리원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현장감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmo'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_208.4: 수행시점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '수행시점'})
SET     n.name = '수행시점',
    n.name_kr = '수행시점',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템감리'})
SET     n.name = '정보시스템감리',
    n.name_kr = '정보시스템감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '정상추_23'})
SET     n.name = '정상추 23',
    n.name_kr = '정상추 23',
    n.domain = 'SW';

MERGE (n:Concept {id: '요설종'})
SET     n.name = '요설종',
    n.name_kr = '요설종',
    n.domain = 'SW';

MERGE (n:Concept {id: '정기_감리'})
SET     n.name = '정기 감리',
    n.name_kr = '정기 감리',
    n.domain = 'SW',
    n.definition = '정보시스템 개발사업, EA·ISP 수립, DB구축, 운영·유지보수 등 모든 유형의 정보화사업에 대하여 해당 사업의 단계 또는 특정시점에 실시하는 감리 - 정보시스템 구축사업 제외';

MERGE (n:Concept {id: '상주_감리'})
SET     n.name = '상주 감리',
    n.name_kr = '상주 감리',
    n.domain = 'SW',
    n.definition = '감리 대상 사업을 현장에 상주하며 사업관리 업무를 지원하고, 자문 등을 수행하는 감리';

MERGE (n:Concept {id: '추가_감리'})
SET     n.name = '추가 감리',
    n.name_kr = '추가 감리',
    n.domain = 'SW',
    n.definition = '발주기관이 단계별 감리, 상주 감리 외에 추가로 감리를 요청할 경우 발주기관과 감리법인 간 명확한 소통을 위하여 \'추가 감리\'로 표현';

MERGE (n:Concept {id: '3단계_감리'})
SET     n.name = '3단계 감리',
    n.name_kr = '3단계 감리',
    n.domain = 'SW',
    n.definition = '정보시스템 구축사업에 대하여 관리 시점을 3단계로 나누어 시행 - 과업 이행여부를 필수적으로 점검';

MERGE (n:Concept {id: '2단계_감리'})
SET     n.name = '2단계 감리',
    n.name_kr = '2단계 감리',
    n.domain = 'SW',
    n.definition = '3단계 감리에서 요구정의 단계 생략';

MERGE (n:Concept {id: '정기감리'})
SET     n.name = '정기감리',
    n.name_kr = '정기감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '상주감리'})
SET     n.name = '상주감리',
    n.name_kr = '상주감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '추가감리'})
SET     n.name = '추가감리',
    n.name_kr = '추가감리',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '정보시스템감리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '정상추_23'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '요설종'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '정기_감리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '상주_감리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '추가_감리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '3단계_감리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '2단계_감리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '정기감리'})
MERGE (b:Concept {id: '상주감리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '정기감리'})
MERGE (b:Concept {id: '추가감리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '정기감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상주감리'})
MERGE (b:Concept {id: '추가감리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '상주감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '추가감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2단계_감리'})
MERGE (b:Concept {id: '3단계_감리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '2단계_감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Concept {id: '3단계_감리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Document {id: 'SW_208.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '수행시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정상추_23'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요설종'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정기_감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상주_감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추가_감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3단계_감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2단계_감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정기감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상주감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추가감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_208.5: 감리절차
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.5'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '감리절차'})
SET     n.name = '감리절차',
    n.name_kr = '감리절차',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템감리'})
SET     n.name = '정보시스템감리',
    n.name_kr = '정보시스템감리',
    n.domain = 'SW';

MERGE (n:Concept {id: '고객'})
SET     n.name = '고객(발주기관)',
    n.name_kr = '고객(발주기관)',
    n.domain = 'SW';

MERGE (n:Concept {id: '피감리인'})
SET     n.name = '피감리인',
    n.name_kr = '피감리인',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리업체'})
SET     n.name = '감리업체',
    n.name_kr = '감리업체',
    n.domain = 'SW';

MERGE (n:Concept {id: '활동'})
SET     n.name = '활동',
    n.name_kr = '활동',
    n.domain = 'SW';

MERGE (n:Concept {id: '상세_내용'})
SET     n.name = '상세 내용',
    n.name_kr = '상세 내용',
    n.domain = 'SW';

MERGE (n:Concept {id: '산출물'})
SET     n.name = '산출물',
    n.name_kr = '산출물',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '정보시스템감리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '고객'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '피감리인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '감리업체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Concept {id: '상세_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Concept {id: '산출물'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '활동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상세_내용'})
MERGE (b:Concept {id: '산출물'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '상세_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Concept {id: '산출물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Document {id: 'SW_208.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '감리절차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피감리인'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리업체'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_내용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_208.6: 정보시스템 감리 Framework
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.6'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '정보시스템_감리_framework'})
SET     n.name = '정보시스템 감리 Framework',
    n.name_kr = '정보시스템 감리 Framework',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템감리'})
SET     n.name = '정보시스템감리',
    n.name_kr = '정보시스템감리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'framework'})
SET     n.name = 'Framework',
    n.name_kr = 'Framework',
    n.domain = 'SW',
    n.aliases = ['Framework'];

MERGE (n:Concept {id: '시영관(사업유형/감리시점'})
SET     n.name = '시영관(사업유형/감리시점',
    n.name_kr = '시영관(사업유형/감리시점',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리영역'})
SET     n.name = '감리영역',
    n.name_kr = '감리영역',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리관점/점검기준)'})
SET     n.name = '감리관점/점검기준)',
    n.name_kr = '감리관점/점검기준)',
    n.domain = 'SW';

MERGE (n:Concept {id: '성산절(성과'})
SET     n.name = '성산절(성과',
    n.name_kr = '성산절(성과',
    n.domain = 'SW';

MERGE (n:Concept {id: 'product'})
SET     n.name = '산출물',
    n.name_kr = '산출물',
    n.domain = 'SW';

MERGE (n:Concept {id: '절차)'})
SET     n.name = '절차)',
    n.name_kr = '절차)',
    n.domain = 'SW';

MERGE (n:Concept {id: '점검분야'})
SET     n.name = '점검분야',
    n.name_kr = '점검분야',
    n.domain = 'SW';

MERGE (n:Concept {id: '점검항목'})
SET     n.name = '점검항목',
    n.name_kr = '점검항목',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sd'})
SET     n.name = 'SD',
    n.name_kr = '시스템 구축',
    n.domain = 'SW',
    n.aliases = ['SD', '시스템 구축'];

MERGE (n:Concept {id: 'op'})
SET     n.name = 'OP',
    n.name_kr = '시스템 운영',
    n.domain = 'SW',
    n.aliases = ['OP', '시스템 운영'];

// --- 관계 ---

MERGE (a:Concept {id: 'framework'})
MERGE (b:Concept {id: '정보시스템감리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '시영관(사업유형/감리시점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '감리영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '감리관점/점검기준)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '성산절(성과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: 'product'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '절차)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '점검분야'})
MERGE (b:Concept {id: '점검항목'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '점검분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: '점검항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sd'})
MERGE (b:Concept {id: 'op'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: 'sd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Concept {id: 'op'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Document {id: 'SW_208.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정보시스템_감리_framework'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템감리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'framework'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시영관(사업유형/감리시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리영역'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리관점/점검기준)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성산절(성과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'product'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절차)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검분야'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'op'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_208.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.7'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_208.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_208.8'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_212: 감리산출물
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_212'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '감리산출물'})
SET     n.name = '감리산출물',
    n.name_kr = '감리산출물',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템관리'})
SET     n.name = '정보시스템관리',
    n.name_kr = '정보시스템관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '감리계획서_목차'})
SET     n.name = '감리계획서 목차(근목기 대기절 일편)',
    n.name_kr = '감리계획서 목차(근목기 대기절 일편)',
    n.domain = 'SW';

MERGE (n:Concept {id: '개선_권고_유형'})
SET     n.name = '개선 권고 유형',
    n.name_kr = '개선 권고 유형',
    n.domain = 'SW',
    n.definition = '필수';

MERGE (n:Concept {id: '협의'})
SET     n.name = '협의',
    n.name_kr = '협의',
    n.domain = 'SW',
    n.definition = '발견된 문제점 또는 발생 가능성이 큰 문제점 중 발주기관과 피감리인이 상호 협의를 거쳐 반영여부를 결정할 수 있는 사항';

MERGE (n:Concept {id: '권고'})
SET     n.name = '권고',
    n.name_kr = '권고',
    n.domain = 'SW',
    n.definition = '감리의 대상범위를 벗어나지만 사업목표 달성에 도움이 되는 사항';

MERGE (n:Concept {id: '개선_시점'})
SET     n.name = '개선 시점',
    n.name_kr = '개선 시점',
    n.domain = 'SW',
    n.definition = '장기';

MERGE (n:Concept {id: '단기'})
SET     n.name = '단기',
    n.name_kr = '단기',
    n.domain = 'SW',
    n.definition = '감리대상 사업의 해당 구축 단계 종료 이전에 개선해야 하는 사항';

MERGE (n:Concept {id: '과업내용_이행_여부'})
SET     n.name = '과업내용 이행 여부',
    n.name_kr = '과업내용 이행 여부',
    n.domain = 'SW',
    n.definition = '적합';

MERGE (n:Concept {id: '점검_제외'})
SET     n.name = '점검 제외',
    n.name_kr = '점검 제외',
    n.domain = 'SW',
    n.definition = '1) 점검과정에서 테스트 환경이 준비되지 않거나, 2) 선행 기능의 결함으로 점검하지 못한 경우와 3) 외부환경 변화, 4) 발주기관의 요청이나 합의에 의해 진행중인 경우 - 점검제외 인 경우 관련 증빙에 점검 제외 사유를 명확히 작성하여야 함. [주의] 점검 제외는 작업이 미완료된 작업이 아니라, 점검을 못하는 것이다.';

// --- 관계 ---

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '정보시스템관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '감리계획서_목차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '개선_권고_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '협의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '권고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '개선_시점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '단기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '과업내용_이행_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Concept {id: '점검_제외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Document {id: 'SW_212'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '감리산출물'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리계획서_목차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선_권고_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선_시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업내용_이행_여부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검_제외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_213: 감리결과 보고서
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_213'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '감리결과_보고서'})
SET     n.name = '감리결과 보고서',
    n.name_kr = '감리결과 보고서',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '정보시스템관리'})
SET     n.name = '정보시스템관리',
    n.name_kr = '정보시스템관리',
    n.domain = 'SW';

MERGE (n:Concept {id: '개선_권고_사항'})
SET     n.name = '개선 권고 사항',
    n.name_kr = '개선 권고 사항',
    n.domain = 'SW';

MERGE (n:Concept {id: '필수_개선'})
SET     n.name = '필수 개선',
    n.name_kr = '필수 개선',
    n.domain = 'SW';

MERGE (n:Concept {id: '협의_개선'})
SET     n.name = '협의 개선',
    n.name_kr = '협의 개선',
    n.domain = 'SW';

MERGE (n:Concept {id: '권고_사항'})
SET     n.name = '권고 사항',
    n.name_kr = '권고 사항',
    n.domain = 'SW';

MERGE (n:Concept {id: '적합/부적합'})
SET     n.name = '적합/부적합',
    n.name_kr = '적합/부적합',
    n.domain = 'SW';

MERGE (n:Concept {id: '개선_권고_유형'})
SET     n.name = '개선 권고 유형',
    n.name_kr = '개선 권고 유형',
    n.domain = 'SW',
    n.definition = '필수';

MERGE (n:Concept {id: '협의'})
SET     n.name = '협의',
    n.name_kr = '협의',
    n.domain = 'SW',
    n.definition = '발견된 문제점 또는 발생 가능성이 큰 문제점 중 발주기관과 피감리인이 상호 협의를 거쳐 반영여부를 결정할 수 있는 사항';

MERGE (n:Concept {id: '권고'})
SET     n.name = '권고',
    n.name_kr = '권고',
    n.domain = 'SW',
    n.definition = '감리의 대상범위를 벗어나지만 사업목표 달성에 도움이 되는 사항';

MERGE (n:Concept {id: '개선_시점'})
SET     n.name = '개선 시점',
    n.name_kr = '개선 시점',
    n.domain = 'SW',
    n.definition = '장기';

MERGE (n:Concept {id: '단기'})
SET     n.name = '단기',
    n.name_kr = '단기',
    n.domain = 'SW',
    n.definition = '감리대상 사업의 해당 구축 단계 종료 이전에 개선해야 하는 사항';

MERGE (n:Concept {id: '과업내용_이행_여부'})
SET     n.name = '과업내용 이행 여부',
    n.name_kr = '과업내용 이행 여부',
    n.domain = 'SW',
    n.definition = '적합';

MERGE (n:Concept {id: '점검_제외'})
SET     n.name = '점검 제외',
    n.name_kr = '점검 제외',
    n.domain = 'SW',
    n.definition = '1) 점검과정에서 테스트 환경이 준비되지 않거나, 2) 선행 기능의 결함으로 점검하지 못한 경우와 3) 외부환경 변화, 4) 발주기관의 요청이나 합의에 의해 진행중인 경우 - 점검제외 인 경우 관련 증빙에 점검 제외 사유를 명확히 작성하여야 함. [주의] 점검 제외는 작업이 미완료된 작업이 아니라, 점검을 못하는 것이다.';

MERGE (n:Concept {id: '점검_방법'})
SET     n.name = '점검 방법',
    n.name_kr = '점검 방법',
    n.domain = 'SW',
    n.definition = '관리여부 검토';

MERGE (n:Concept {id: '검사항목_구체화'})
SET     n.name = '검사항목 구체화',
    n.name_kr = '검사항목 구체화',
    n.domain = 'SW',
    n.definition = '세부검사항목은 화면과 프로그램으로 구체화 되어야 함.';

MERGE (n:Concept {id: '검사기준'})
SET     n.name = '검사기준',
    n.name_kr = '검사기준',
    n.domain = 'SW',
    n.definition = '관련된 테스트 시나리오(통합테스트 또는 단위테스트 시나리오)의 세부 시험항목으로 연결되어야 함';

MERGE (n:Concept {id: '요구사항과_기능과의_관계'})
SET     n.name = '요구사항과 기능과의 관계',
    n.name_kr = '요구사항과 기능과의 관계',
    n.domain = 'SW',
    n.definition = '기능 요구사항과 세부검사항목과의 관계는 요구사항과 기능(화면 및 프로그램)이 1:1 또는 1:N의 관계가 되도록 작성.';

MERGE (n:Concept {id: '세부_검사기준_포함_점검'})
SET     n.name = '세부 검사기준 포함 점검',
    n.name_kr = '세부 검사기준 포함 점검',
    n.domain = 'SW',
    n.definition = '기능 요구사항에 대한 검사기준에서는 단위기능 검사 뿐만 아니라, 기능 간의 통합과 연계에 대한 사항도 확인할 수 있는 세부 검사기준이 포함되었는지 점검';

MERGE (n:Concept {id: '검사_기준서_작성_사례'})
SET     n.name = '검사 기준서 작성 사례',
    n.name_kr = '검사 기준서 작성 사례',
    n.domain = 'SW';

MERGE (n:Concept {id: '판정_방법'})
SET     n.name = '판정 방법',
    n.name_kr = '판정 방법',
    n.domain = 'SW',
    n.definition = '기능 요구사항';

MERGE (n:Concept {id: '비기능적_요구사항'})
SET     n.name = '비기능적 요구사항',
    n.name_kr = '비기능적 요구사항',
    n.domain = 'SW',
    n.definition = '비기능적 요구사항의 과업이행여부 점검은 검사항목별로 검사기준에 명시된 목표를 달성한 경우에 적합으로 인정';

MERGE (n:Concept {id: '문서_검토'})
SET     n.name = '문서 검토',
    n.name_kr = '문서 검토',
    n.domain = 'SW',
    n.definition = '테스트 불가능한 기능이나 비기능 과업에 대해서는 사업자 제출 문서(증빙)를 검토하여 과업 이행여부를 판정';

MERGE (n:Concept {id: '적부_판정_유형'})
SET     n.name = '적부 판정 유형',
    n.name_kr = '적부 판정 유형',
    n.domain = 'SW',
    n.definition = '적합';

MERGE (n:Concept {id: '점검제외'})
SET     n.name = '점검제외',
    n.name_kr = '점검제외',
    n.domain = 'SW',
    n.definition = '점검 과정에서 테스트 환경이 준비되지 않거나, 선행 기능의 결함으로 점검하지 못한 경우와 외부환경 변화, 발주기관의 요청이나 합의에 의해 진행 중인 경우';

MERGE (n:Concept {id: '과업_이행여부_점검결과'})
SET     n.name = '과업 이행여부 점검결과 (감리원 작성 예시)',
    n.name_kr = '과업 이행여부 점검결과 (감리원 작성 예시)',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '정보시스템관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '개선_권고_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '필수_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '협의_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '권고_사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '적합/부적합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '개선_권고_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '협의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '권고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '개선_시점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '단기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '과업내용_이행_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '점검_제외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '점검_방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '검사항목_구체화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '검사기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '요구사항과_기능과의_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '세부_검사기준_포함_점검'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '검사_기준서_작성_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '판정_방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '비기능적_요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '문서_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '적부_판정_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '점검제외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Concept {id: '과업_이행여부_점검결과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Document {id: 'SW_213'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '감리결과_보고서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보시스템관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선_권고_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필수_개선'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협의_개선'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권고_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적합/부적합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선_권고_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개선_시점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업내용_이행_여부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검_제외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검_방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검사항목_구체화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검사기준'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항과_기능과의_관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_검사기준_포함_점검'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검사_기준서_작성_사례'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판정_방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비기능적_요구사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서_검토'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적부_판정_유형'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '점검제외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업_이행여부_점검결과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_217.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_217.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_217.2: 오픈소스 프로젝트관리 소프트웨어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_217.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
SET     n.name = '오픈소스 프로젝트관리 소프트웨어',
    n.name_kr = '오픈소스 프로젝트관리 소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw공학'})
SET     n.name = 'SW공학',
    n.name_kr = 'SW공학',
    n.domain = 'SW';

MERGE (n:Concept {id: '오픈소스'})
SET     n.name = '오픈소스',
    n.name_kr = '오픈소스',
    n.domain = 'SW';

MERGE (n:Concept {id: '오픈소스_프로젝트_관리_소프트웨어'})
SET     n.name = '오픈소스 프로젝트 관리 소프트웨어',
    n.name_kr = '오픈소스 프로젝트 관리 소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: 'redmine'})
SET     n.name = 'Redmine',
    n.name_kr = 'Redmine',
    n.domain = 'SW',
    n.aliases = ['Redmine'];

MERGE (n:Concept {id: 'trello'})
SET     n.name = 'Trello',
    n.name_kr = '트렐로',
    n.domain = 'SW',
    n.aliases = ['Trello', '트렐로'];

MERGE (n:Concept {id: 'slack'})
SET     n.name = 'Slack',
    n.name_kr = '슬랙',
    n.domain = 'SW',
    n.aliases = ['Slack', '슬랙'];

MERGE (n:Concept {id: 'asana'})
SET     n.name = 'asana',
    n.name_kr = '아사나',
    n.domain = 'SW',
    n.aliases = ['asana', '아사나'];

MERGE (n:Concept {id: 'ganttproject'})
SET     n.name = 'GanttProject',
    n.name_kr = 'GanttProject',
    n.domain = 'SW',
    n.aliases = ['GanttProject'];

MERGE (n:Concept {id: 'chanty'})
SET     n.name = 'Chanty',
    n.name_kr = 'Chanty',
    n.domain = 'SW',
    n.aliases = ['Chanty'];

MERGE (n:Concept {id: 'twist'})
SET     n.name = 'Twist',
    n.name_kr = 'Twist',
    n.domain = 'SW',
    n.aliases = ['Twist'];

MERGE (n:Concept {id: 'github'})
SET     n.name = 'Github',
    n.name_kr = 'Github',
    n.domain = 'SW',
    n.aliases = ['Github'];

MERGE (n:Concept {id: 'gitlab'})
SET     n.name = 'GitLab',
    n.name_kr = 'GitLab',
    n.domain = 'SW',
    n.aliases = ['GitLab'];

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

MERGE (n:Concept {id: 'bugzilla'})
SET     n.name = 'Bugzilla',
    n.name_kr = 'Bugzilla',
    n.domain = 'SW',
    n.aliases = ['Bugzilla'];

MERGE (n:Concept {id: 'findbugs'})
SET     n.name = 'FindBugs',
    n.name_kr = 'FindBugs',
    n.domain = 'SW',
    n.aliases = ['FindBugs'];

MERGE (n:Concept {id: 'ant'})
SET     n.name = 'Ant',
    n.name_kr = 'Ant',
    n.domain = 'SW',
    n.aliases = ['Ant'];

MERGE (n:Concept {id: 'gradle'})
SET     n.name = 'Gradle',
    n.name_kr = 'Gradle',
    n.domain = 'SW',
    n.aliases = ['Gradle'];

MERGE (n:Concept {id: 'maven'})
SET     n.name = 'Maven',
    n.name_kr = 'Maven',
    n.domain = 'SW',
    n.aliases = ['Maven'];

MERGE (n:Concept {id: 'evernote'})
SET     n.name = 'Evernote',
    n.name_kr = 'Evernote',
    n.domain = 'SW',
    n.aliases = ['Evernote'];

MERGE (n:Concept {id: 'dropbox'})
SET     n.name = 'Dropbox',
    n.name_kr = 'Dropbox',
    n.domain = 'SW',
    n.aliases = ['Dropbox'];

MERGE (n:Concept {id: '프로젝트_관리와_협업'})
SET     n.name = '프로젝트 관리와 협업',
    n.name_kr = '프로젝트 관리와 협업',
    n.domain = 'SW',
    n.definition = '트렐로(Trello)';

MERGE (n:Concept {id: 'mylyn'})
SET     n.name = 'Mylyn',
    n.name_kr = 'Mylyn',
    n.domain = 'SW',
    n.definition = '프로젝트 관리, 버그 및 이슈관리 등이 가능한 소프트웨어',
    n.aliases = ['Mylyn'];

MERGE (n:Concept {id: 'openproj'})
SET     n.name = 'OpenProj',
    n.name_kr = 'OpenProj',
    n.domain = 'SW',
    n.definition = '다양한 OS환경에서 사용이 가능하며, 간트차트, 다이어그램, WBS등 제공',
    n.aliases = ['OpenProj'];

MERGE (n:Concept {id: 'proofhub'})
SET     n.name = 'ProofHub',
    n.name_kr = 'ProofHub',
    n.domain = 'SW',
    n.definition = '클라우드 기반의 프로젝트 관리 및 협업용 소프트웨어',
    n.aliases = ['ProofHub'];

MERGE (n:Concept {id: 'teamwork'})
SET     n.name = 'Teamwork',
    n.name_kr = 'Teamwork',
    n.domain = 'SW',
    n.definition = '프로젝트와 연관된 거의 모든 자원을 통합관리 - 계획, 일정, 파일 공유, 업무 배정이 가능',
    n.aliases = ['Teamwork'];

MERGE (n:Concept {id: 'scoro'})
SET     n.name = 'Scoro',
    n.name_kr = 'Scoro',
    n.domain = 'SW',
    n.definition = '업무에 사용한 시간 관리, 모든 자원에 걸려 있는 업무량 확인',
    n.aliases = ['Scoro'];

MERGE (n:Concept {id: 'clarizen'})
SET     n.name = 'Clarizen',
    n.name_kr = 'Clarizen',
    n.domain = 'SW',
    n.definition = '클라우드 기반. 업무관리와 조직의 목표 관리를 간결하게 표현',
    n.aliases = ['Clarizen'];

MERGE (n:Concept {id: '팀_커뮤니케이션'})
SET     n.name = '팀 커뮤니케이션',
    n.name_kr = '팀 커뮤니케이션',
    n.domain = 'SW',
    n.definition = 'Chanty';

MERGE (n:Metric {id: 'rocket_chat'})
SET     n.name = 'Rocket.chat',
    n.name_kr = 'Rocket.chat',
    n.domain = 'SW',
    n.definition = '토의, 파일 공유를 실시간으로 가능한 도구',
    n.aliases = ['Rocket.chat'];

MERGE (n:Concept {id: 'convo'})
SET     n.name = 'Convo',
    n.name_kr = 'Convo',
    n.domain = 'SW',
    n.definition = '팀원들이 아이디어, 생각, 이미지, 웹링크, 문서 등을 공유할 수 있는 커뮤니케이션 도구',
    n.aliases = ['Convo'];

MERGE (n:Concept {id: '일정_관리'})
SET     n.name = '일정 관리',
    n.name_kr = '일정 관리',
    n.domain = 'SW',
    n.definition = 'Timely';

MERGE (n:Concept {id: 'everhour'})
SET     n.name = 'Everhour',
    n.name_kr = 'Everhour',
    n.domain = 'SW',
    n.definition = '프로젝트 예산, 일정 알림, 향후의 리소스 관리 가능한 도구',
    n.aliases = ['Everhour'];

MERGE (n:Concept {id: 'clicktime'})
SET     n.name = 'ClickTime',
    n.name_kr = 'ClickTime',
    n.domain = 'SW',
    n.definition = '프로젝트 예산 관리, 과업 리뷰, 업무 진행 상황을 확인 가능한 도구',
    n.aliases = ['ClickTime'];

MERGE (n:Concept {id: 'toggl'})
SET     n.name = 'Toggl',
    n.name_kr = 'Toggl',
    n.domain = 'SW',
    n.definition = '업무 시간 및 여유 시간을 기록. 모든 직원의 업무 시간을 관리',
    n.aliases = ['Toggl'];

MERGE (n:Concept {id: '공동_작업'})
SET     n.name = '공동 작업',
    n.name_kr = '공동 작업',
    n.domain = 'SW',
    n.definition = '깃허브';

MERGE (n:Concept {id: 'git,_svn'})
SET     n.name = 'Git, SVN',
    n.name_kr = 'Git, SVN',
    n.domain = 'SW',
    n.definition = '분산 및 중앙집중식 형상/버전관리 도구';

MERGE (n:Concept {id: '개발_및_테스트'})
SET     n.name = '개발 및 테스트',
    n.name_kr = '개발 및 테스트',
    n.domain = 'SW',
    n.definition = 'Bugzilla';

MERGE (n:Concept {id: 'findbugs,_pmd_checkstyle'})
SET     n.name = 'FindBugs, PMD CheckStyle',
    n.name_kr = 'FindBugs, PMD CheckStyle',
    n.domain = 'SW',
    n.definition = '개발자, 테스터등이 결함을 발견하기 위한 정적분석 도구';

MERGE (n:Concept {id: 'jmeter,_soapui_selenum'})
SET     n.name = 'JMeter, SoapUI Selenum',
    n.name_kr = 'JMeter, SoapUI Selenum',
    n.domain = 'SW',
    n.definition = '성능부하 테스트, 결합 도출, 기록 및 재생 등 테스트 도구';

MERGE (n:Concept {id: 'ant,_gradle_maven'})
SET     n.name = 'Ant, Gradle Maven',
    n.name_kr = 'Ant, Gradle Maven',
    n.domain = 'SW',
    n.definition = '빌드 및 릴리즈 등을 자동으로 수행하는 도구';

MERGE (n:Concept {id: '업무_정리_및_공유'})
SET     n.name = '업무 정리 및 공유',
    n.name_kr = '업무 정리 및 공유',
    n.domain = 'SW',
    n.definition = 'Evernote';

MERGE (n:Concept {id: 'zapier'})
SET     n.name = 'Zapier',
    n.name_kr = 'Zapier',
    n.domain = 'SW',
    n.definition = '코드 필요 없는 노코드 업무 자동화 도구',
    n.aliases = ['Zapier'];

MERGE (n:Concept {id: 'invoicebus'})
SET     n.name = 'Invoicebus',
    n.name_kr = 'Invoicebus',
    n.domain = 'SW',
    n.definition = '금융 기록을 관리하는 무료 온라인 인보이스 앱.',
    n.aliases = ['Invoicebus'];

MERGE (n:Concept {id: 'wiki'})
SET     n.name = 'wiki',
    n.name_kr = '위키',
    n.domain = 'SW',
    n.definition = 'lessons learned 이론 정리 등 지원',
    n.aliases = ['wiki', '위키'];

// --- 관계 ---

MERGE (a:Concept {id: '오픈소스'})
MERGE (b:Concept {id: 'sw공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트_관리_소프트웨어'})
MERGE (b:Concept {id: '오픈소스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'redmine'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'trello'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'slack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'asana'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'ganttproject'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'chanty'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'twist'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'github'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'gitlab'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'git'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'svn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'bugzilla'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'findbugs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'ant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'gradle'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'maven'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'evernote'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'dropbox'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '프로젝트_관리와_협업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'mylyn'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'openproj'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'proofhub'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'teamwork'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'scoro'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'clarizen'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '팀_커뮤니케이션'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Metric {id: 'rocket_chat'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'convo'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '일정_관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'everhour'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'clicktime'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'toggl'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '공동_작업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'git,_svn'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '개발_및_테스트'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'findbugs,_pmd_checkstyle'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'jmeter,_soapui_selenum'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'ant,_gradle_maven'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: '업무_정리_및_공유'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'zapier'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'invoicebus'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Concept {id: 'wiki'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Document {id: 'SW_217.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트관리_소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈소스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈소스_프로젝트_관리_소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'redmine'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trello'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slack'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'asana'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ganttproject'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'chanty'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'twist'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'github'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gitlab'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'git'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'svn'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bugzilla'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'findbugs'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ant'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gradle'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maven'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'evernote'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dropbox'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_관리와_협업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mylyn'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openproj'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proofhub'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'teamwork'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scoro'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clarizen'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '팀_커뮤니케이션'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'rocket_chat'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'convo'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일정_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'everhour'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clicktime'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'toggl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공동_작업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'git,_svn'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_및_테스트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'findbugs,_pmd_checkstyle'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jmeter,_soapui_selenum'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ant,_gradle_maven'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_정리_및_공유'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zapier'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invoicebus'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wiki'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_218: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_218'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_219: OSS 양립성
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_219'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'oss_양립성'})
SET     n.name = 'OSS 양립성',
    n.name_kr = 'OSS 양립성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'oss'})
SET     n.name = 'OSS',
    n.name_kr = 'OSS',
    n.domain = 'SW',
    n.aliases = ['OSS'];

MERGE (n:Concept {id: 'copyleft'})
SET     n.name = 'CopyLeft',
    n.name_kr = 'CopyLeft',
    n.domain = 'SW',
    n.aliases = ['CopyLeft'];

MERGE (n:Concept {id: '엄격한/제한된/비_copyleft'})
SET     n.name = '엄격한/제한된/비 CopyLeft',
    n.name_kr = '엄격한/제한된/비 CopyLeft',
    n.domain = 'SW';

MERGE (n:Concept {id: 'permissive_license'})
SET     n.name = '허용적 라이선스',
    n.name_kr = '허용적 라이선스',
    n.domain = 'SW',
    n.definition = '기존 오픈소스 라이선스를 수정하여 배포 다른 라이선스로 전환 가능 해당 라이선스가 적용된 오픈소스는 미공개';

MERGE (n:Concept {id: '카피레프트_라이선스'})
SET     n.name = '카피레프트 라이선스',
    n.name_kr = '카피레프트 라이선스',
    n.domain = 'SW',
    n.definition = '약한 카피레프트';

MERGE (n:Concept {id: '강한_카피레프트'})
SET     n.name = '강한 카피레프트',
    n.name_kr = '강한 카피레프트',
    n.domain = 'SW',
    n.definition = '기존 오픈소스 라이선스를 문자 그대로 유지할 것을 요구하는 라이선스로, 다른 라이선스로 전환 불가 해당 라이선스가 적용된 오픈소스 혹은 SW결과물을 공개';

// --- 관계 ---

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: 'oss'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: 'copyleft'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: '엄격한/제한된/비_copyleft'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: 'permissive_license'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: '카피레프트_라이선스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Concept {id: '강한_카피레프트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Document {id: 'SW_219'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'oss_양립성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oss'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'copyleft'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엄격한/제한된/비_copyleft'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'permissive_license'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카피레프트_라이선스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '강한_카피레프트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 348개
// 관계: 724개
// ================================================================