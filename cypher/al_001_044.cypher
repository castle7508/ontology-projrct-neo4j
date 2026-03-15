// ================================================================
// AL 도메인 (AL_001 ~ AL_044) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// AL_001: O-Notation
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_001'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'o_notation'})
SET     n.name = 'O-Notation',
    n.name_kr = 'O-Notation',
    n.domain = 'AL',
    n.aliases = ['O-Notation'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Metric {id: '시간복잡도'})
SET     n.name = '시간복잡도',
    n.name_kr = '시간복잡도',
    n.domain = 'AL';

MERGE (n:Concept {id: '매개변수n'})
SET     n.name = '매개변수N',
    n.name_kr = '매개변수N',
    n.domain = 'AL';

MERGE (n:Concept {id: 'o'})
SET     n.name = 'O',
    n.name_kr = '1',
    n.domain = 'AL',
    n.definition = '상수 함수 - 알고리즘의 수행에 걸리는 시간이 자료집합의 크기에 상관없이 항상 동일함을 의미 - 대체로 이런 함수들이 가장 빠른 것으로 간주 - 상수 함수는 자료의 크기와 무관하게 항상 같은 속도로 작동',
    n.aliases = ['O', '1'];

MERGE (n:Concept {id: 'log_n'})
SET     n.name = 'log N',
    n.name_kr = 'O',
    n.domain = 'AL',
    n.definition = '기수가 2인 로그 함수(logarithm function, 또는 대수 對數함수). - 기수 2 로그에서 수직 성분은 자료집합의 크기가 두 배가 될 때마다 1 증가 - 예) 1의 로그는 0, 2의 로그는 1, 4의 로그는 3, 8의 로그는 4 - 로그기반 알고리즘은 자료의 크기에 의존적인 알고리즘들 중에서는 가장 효율적인 것으로 알려짐. - log n 함수는',
    n.aliases = ['log N', 'O'];

MERGE (n:Concept {id: 'n'})
SET     n.name = 'N',
    n.name_kr = 'O',
    n.domain = 'AL',
    n.definition = '선형(linear, 線形) 함수 - 자료 크기가 증가함에 따라 일정한 비율로 증가 예) 어떤 O(n) 알고리즘이 1000개의 항목을 20초에 처리한다면, 2000개의 항목은 대략 40초에 처리 - 선형 함수는 자료의 크기와 직접적인 관계로 변함. 데이터가 두 배 증가하면 계산 시간도 두 배로 증가.',
    n.aliases = ['N', 'O'];

MERGE (n:Metric {id: 'n_log_n'})
SET     n.name = 'N log N',
    n.name_kr = 'O',
    n.domain = 'AL',
    n.definition = '일반적으로 정렬(sorting) 알고리즘이 가져야 할 최소한의 복잡도로 간주 - 앞에 나온 모든 함수들보다 비효율적이나, 이후 나올 좀 더 복잡한 함수들보다는 효율적이기 때문에 이 정도면 비교적 효율적이라고 간주됨. - 데이터의 크기에 따라 변하나, 기울기가 비교적 완만한 곡선을 가지기 때문에 효율적인 편',
    n.aliases = ['N log N', 'O'];

MERGE (n:Concept {id: 'n2'})
SET     n.name = 'N2',
    n.name_kr = 'O',
    n.domain = 'AL',
    n.definition = '자료가 증가함에 따라 급격히 커지기 때문에 대부분의 과제들에 대해 비효율적이라고 간주 예) 항목 1000개를 20초에 처리하는 알고리즘이 항목 2000개를 처리하려면 80초가 걸리며, 항목 개수가 2배 증가하면 시간은 4배로 증가. - 전형적인 예는 for 루프 안에 다른 for 루프가 내포된 형태. - 기울기가 매우 급하므로 피하는 것이 효율적임.',
    n.aliases = ['N2', 'O'];

MERGE (n:Concept {id: 'n3'})
SET     n.name = 'N3',
    n.name_kr = 'O',
    n.domain = 'AL',
    n.definition = 'O(N2) 과 비슷해 보이나 증가율은 훨씬 더 큼 예) 1000개를 20초에 처리하는 알고리즘이 2000개를 처리하려면 160초가 필요하게 됨(8배).',
    n.aliases = ['N3', 'O'];

MERGE (n:Concept {id: '핵심_요소'})
SET     n.name = '핵심 요소',
    n.name_kr = '핵심 요소',
    n.domain = 'AL';

MERGE (n:Concept {id: '특징_설명'})
SET     n.name = '특징 설명',
    n.name_kr = '특징 설명',
    n.domain = 'AL';

MERGE (n:Concept {id: 'o_상수_시간_알고리즘'})
SET     n.name = 'O(1) 상수 시간 알고리즘',
    n.name_kr = 'O(1) 상수 시간 알고리즘',
    n.domain = 'AL',
    n.definition = 'Hash 함수';

MERGE (n:Concept {id: 'o_선형_로그_시간_알고리즘'})
SET     n.name = 'O(n*log n) 선형 로그 시간 알고리즘',
    n.name_kr = 'O(n*log n) 선형 로그 시간 알고리즘',
    n.domain = 'AL',
    n.definition = '분할과 정복 정렬';

MERGE (n:Concept {id: 'o_2차_시간_알고리즘'})
SET     n.name = 'O(n^2) 2차 시간 알고리즘',
    n.name_kr = 'O(n^2) 2차 시간 알고리즘',
    n.domain = 'AL',
    n.definition = '정렬 알고리즘';

MERGE (n:Method {id: 'o_3차_시간_알고리즘'})
SET     n.name = 'O(n^3) 3차 시간 알고리즘',
    n.name_kr = 'O(n^3) 3차 시간 알고리즘',
    n.domain = 'AL',
    n.definition = '최단 경로 알고리즘 (Floyd 알고리즘)';

// --- 관계 ---

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Metric {id: '시간복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '매개변수n'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'o'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'log_n'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'n'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Metric {id: 'n_log_n'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'n2'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'n3'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '핵심_요소'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '핵심_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'o_상수_시간_알고리즘'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '핵심_요소'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '핵심_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'o_선형_로그_시간_알고리즘'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '핵심_요소'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '핵심_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: '특징_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Concept {id: 'o_2차_시간_알고리즘'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Method {id: 'o_3차_시간_알고리즘'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Document {id: 'AL_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'o_notation'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매개변수n'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'log_n'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'n_log_n'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n2'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n3'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심_요소'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특징_설명'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o_상수_시간_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o_선형_로그_시간_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o_2차_시간_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'o_3차_시간_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_003: 알고리즘 평가방법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_003'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '알고리즘_평가방법'})
SET     n.name = '알고리즘 평가방법',
    n.name_kr = '알고리즘 평가방법',
    n.domain = 'AL';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'AL';

MERGE (n:Metric {id: '복잡도'})
SET     n.name = '복잡도',
    n.name_kr = '복잡도',
    n.domain = 'AL';

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'AL';

MERGE (n:Concept {id: 'time_complexity'})
SET     n.name = 'Time complexity',
    n.name_kr = 'Time complexity',
    n.domain = 'AL',
    n.aliases = ['Time complexity'];

MERGE (n:Concept {id: 'space_complexity'})
SET     n.name = 'Space complexity',
    n.name_kr = 'Space complexity',
    n.domain = 'AL',
    n.aliases = ['Space complexity'];

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'AL',
    n.definition = '순차';

// --- 관계 ---

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: '성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Metric {id: '복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: 'time_complexity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: 'space_complexity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'time_complexity'})
MERGE (b:Metric {id: 'space_complexity'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Metric {id: 'time_complexity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Metric {id: 'space_complexity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Document {id: 'AL_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '알고리즘_평가방법'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_complexity'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'space_complexity'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_004: 정렬 분류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_004'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '정렬_분류'})
SET     n.name = '정렬 분류',
    n.name_kr = '정렬 분류',
    n.domain = 'AL';

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '내부정렬'})
SET     n.name = '내부정렬',
    n.name_kr = '내부정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '비교_정렬'})
SET     n.name = '비교 정렬',
    n.name_kr = '비교 정렬',
    n.domain = 'AL',
    n.definition = '원소의 순서에만 의존하는 알고리즘 숫자, 문자, 객체에서 순서가 결정되어 있다면 적용가능';

MERGE (n:Concept {id: '안정_정렬/_불안정_정렬'})
SET     n.name = '안정 정렬/ 불안정 정렬',
    n.name_kr = '안정 정렬/ 불안정 정렬',
    n.domain = 'AL',
    n.definition = '같은 것을 처리하는 방법에 따른 분류 안정 정렬은 같은 값에 대해 원래 순서를 보장하지만 불안정 정렬은 원래 순서가 뒤바뀔 수 있음';

MERGE (n:Concept {id: '제자리_정렬'})
SET     n.name = '제자리 정렬',
    n.name_kr = '제자리 정렬',
    n.domain = 'AL',
    n.definition = '원소 개수에 비해 충분히 무시할 만한 저장 공간만을 더 사용하는 정렬 알고리즘';

MERGE (n:Concept {id: '온라인_정렬'})
SET     n.name = '온라인 정렬',
    n.name_kr = '온라인 정렬',
    n.domain = 'AL',
    n.definition = '모든 원소들이 처음부터 주어지지 않고 차례대로 들어오는 경우도 처리할 수 있는 정렬 알고리즘';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '정렬'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '내부정렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '비교_정렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '안정_정렬/_불안정_정렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '제자리_정렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '온라인_정렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Document {id: 'AL_004'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정렬_분류'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비교_정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정_정렬/_불안정_정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제자리_정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_005: 버블 정렬(Bubble Sort)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_005'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Method {id: 'bubble_sort'})
SET     n.name = 'Bubble Sort',
    n.name_kr = '버블 정렬',
    n.domain = 'AL',
    n.aliases = ['Bubble Sort', '버블 정렬'];

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: 'flag'})
SET     n.name = 'Flag',
    n.name_kr = 'Flag',
    n.domain = 'AL',
    n.aliases = ['Flag'];

// --- 관계 ---

MERGE (a:Concept {id: 'bubble_sort'})
MERGE (b:Concept {id: '정렬'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'bubble_sort'})
MERGE (b:Concept {id: 'flag'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'bubble_sort'})
MERGE (b:Document {id: 'AL_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'bubble_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flag'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_006: 삽입 정렬(Insertion Sort)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_006'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'insertion_sort'})
SET     n.name = 'Insertion Sort',
    n.name_kr = '삽입 정렬',
    n.domain = 'AL',
    n.aliases = ['Insertion Sort', '삽입 정렬'];

MERGE (n:Concept {id: 'sorting'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: 'insertion_sort'})
MERGE (b:Concept {id: 'sorting'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'insertion_sort'})
MERGE (b:Document {id: 'AL_006'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'insertion_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sorting'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_007: 쉘 정렬(Shell Sort)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_007'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'shell_sort'})
SET     n.name = 'Shell Sort',
    n.name_kr = '쉘 정렬',
    n.domain = 'AL',
    n.aliases = ['Shell Sort', '쉘 정렬'];

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: 'shell_sorting'})
SET     n.name = '쉘 정렬',
    n.name_kr = '쉘 정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '부분_리스트_반복'})
SET     n.name = '부분 리스트 반복',
    n.name_kr = '부분 리스트 반복',
    n.domain = 'AL';

MERGE (n:Concept {id: 'n2'})
SET     n.name = 'N2',
    n.name_kr = '최악 O',
    n.domain = 'AL',
    n.aliases = ['N2', '최악 O'];

MERGE (n:Concept {id: '평균_o'})
SET     n.name = 'N1.5',
    n.name_kr = '평균 O',
    n.domain = 'AL',
    n.aliases = ['N1.5', '평균 O'];

MERGE (n:Concept {id: 'h개_분할'})
SET     n.name = 'H개 분할',
    n.name_kr = 'H개 분할',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: 'shell_sorting'})
MERGE (b:Concept {id: '정렬'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Concept {id: '부분_리스트_반복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Concept {id: 'n2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Concept {id: '평균_o'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Concept {id: 'h개_분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Document {id: 'AL_007'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'shell_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shell_sorting'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분_리스트_반복'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n2'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_o'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h개_분할'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_008: 퀵정렬
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_008'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'quick_sort'})
SET     n.name = 'Quick Sort',
    n.name_kr = '퀵정렬',
    n.domain = 'AL',
    n.aliases = ['퀵정렬'];

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '피봇'})
SET     n.name = '피봇',
    n.name_kr = '피봇',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: 'quick_sort'})
MERGE (b:Concept {id: '정렬'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'quick_sort'})
MERGE (b:Concept {id: '피봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'quick_sort'})
MERGE (b:Document {id: 'AL_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'quick_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피봇'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_009: 선택정렬(Select Sort)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_009'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'select_sort'})
SET     n.name = 'Select Sort',
    n.name_kr = '선택정렬',
    n.domain = 'AL',
    n.aliases = ['Select Sort', '선택정렬'];

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '최소값_또는_최대값_선택'})
SET     n.name = '최소값 또는 최대값 선택',
    n.name_kr = '최소값 또는 최대값 선택',
    n.domain = 'AL';

MERGE (n:Concept {id: '위치_교환'})
SET     n.name = '위치 교환',
    n.name_kr = '위치 교환',
    n.domain = 'AL';

MERGE (n:Concept {id: '의사코드'})
SET     n.name = '의사코드',
    n.name_kr = '의사코드',
    n.domain = 'AL',
    n.definition = 'for i = 0 to n : a[i]부터 a[n-1]까지 차례로 비교하여 가장 작은 값이 a[j]에 있다고 하자 a[i]와 a[j]의 값을 서로 맞바꾼다';

MERGE (n:Metric {id: '시간_복잡도'})
SET     n.name = '시간 복잡도',
    n.name_kr = '시간 복잡도',
    n.domain = 'AL',
    n.definition = 'n개의 데이터가 있을 때, 최악의 경우 n(n-1)/2번의 비교를 하게 되므로 O(n2)';

// --- 관계 ---

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Concept {id: '최소값_또는_최대값_선택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Concept {id: '위치_교환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Concept {id: '의사코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Metric {id: '시간_복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Document {id: 'AL_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'select_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최소값_또는_최대값_선택'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치_교환'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사코드'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_010.1: 병합정렬(Merge Sort)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_010.1'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Method {id: 'merge_sort'})
SET     n.name = 'Merge Sort',
    n.name_kr = '병합정렬',
    n.domain = 'AL',
    n.aliases = ['Merge Sort', '병합정렬'];

MERGE (n:Concept {id: '정렬'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: '분할과_정복'})
SET     n.name = '분할과 정복',
    n.name_kr = '분할과 정복',
    n.domain = 'AL';

MERGE (n:Metric {id: '공간복잡도'})
SET     n.name = '공간복잡도',
    n.name_kr = '공간복잡도',
    n.domain = 'AL',
    n.definition = '배열 값이 정해져 있으므로 O(n)';

MERGE (n:Metric {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'AL',
    n.definition = '최악의 경우 O(n^2)을 복잡도를 가지는 퀵 소트에 비해 성능 느림';

MERGE (n:Concept {id: '원리'})
SET     n.name = '원리',
    n.name_kr = '원리',
    n.domain = 'AL',
    n.definition = '분할';

MERGE (n:Concept {id: '정복'})
SET     n.name = '정복',
    n.name_kr = '정복',
    n.domain = 'AL',
    n.definition = '병합 정렬을 이용해서 재귀적으로 그 두 부분 수열을 정렬 (소문제들을 순환적으로 처리하여 정복)';

MERGE (n:Concept {id: '결합'})
SET     n.name = '결합',
    n.name_kr = '결합',
    n.domain = 'AL',
    n.definition = '정렬된 두 개의 부분 수열을 병합해 하나의 정렬된 수열을 완성 (소문제에 대한 해를 합병하여 원래 문제의 해를 구함)';

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'AL';

MERGE (n:Metric {id: '시간복잡도'})
SET     n.name = '시간복잡도',
    n.name_kr = '시간복잡도',
    n.domain = 'AL',
    n.definition = 'n개의 원소로 구성된 배열에 병합 정렬을 적용하면 그 실행 시간은 n/2개의 원소로 된 두 개의 부분 배열을 정렬하는 시간과 이들을 합병하는 데 드는 시간의 합으로 O(nlogn)';

MERGE (n:Concept {id: '안정성'})
SET     n.name = '안정성',
    n.name_kr = '안정성',
    n.domain = 'AL',
    n.definition = '병합 정렬에서는 동일한 두 키의 상대 위치가 정렬 과정에서 변하지 않으므로 안정적이나, 합병하는 과정에서 입력 배열의 크기만큼의 메모리 공간이 요구되므로 제자리 정렬은 아님';

MERGE (n:Concept {id: '활용'})
SET     n.name = '활용',
    n.name_kr = '활용',
    n.domain = 'AL',
    n.definition = '외부정렬에 주로 활용됨';

MERGE (n:Concept {id: '분할'})
SET     n.name = '분할',
    n.name_kr = '분할',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '분할과_정복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Metric {id: '공간복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Metric {id: '성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '정복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '결합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Metric {id: '시간복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Concept {id: '분할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Document {id: 'AL_010.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'merge_sort'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할과_정복'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '공간복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '성능'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원리'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정복'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결합'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_010.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_010.2'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_011: 힙 정렬
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_011'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '힙_정렬'})
SET     n.name = '힙 정렬',
    n.name_kr = '힙 정렬',
    n.domain = 'AL';

MERGE (n:Concept {id: 'sorting'})
SET     n.name = '정렬',
    n.name_kr = '정렬',
    n.domain = 'AL';

MERGE (n:Metric {id: '시간_복잡도'})
SET     n.name = '시간 복잡도',
    n.name_kr = '시간 복잡도',
    n.domain = 'AL',
    n.definition = '힙 재구성 연산 시간';

MERGE (n:Metric {id: '평균_시간_복잡도'})
SET     n.name = '평균 시간 복잡도',
    n.name_kr = '평균 시간 복잡도',
    n.domain = 'AL',
    n.definition = 'O(n log n)';

MERGE (n:Metric {id: '공간_복잡도'})
SET     n.name = '공간 복잡도',
    n.name_kr = '공간 복잡도',
    n.domain = 'AL',
    n.definition = '메모리 사용 공간';

MERGE (n:Metric {id: '평균_공간_복잡도'})
SET     n.name = '평균 공간 복잡도',
    n.name_kr = '평균 공간 복잡도',
    n.domain = 'AL',
    n.definition = 'O(1)';

MERGE (n:Concept {id: 'memory_사용_공간'})
SET     n.name = 'Memory 사용 공간',
    n.name_kr = 'Memory 사용 공간',
    n.domain = 'AL',
    n.definition = 'n개의 원소에 대해 n개의 메모리 공간 사용 - 크기 n의 Heap 저장공간';

MERGE (n:Concept {id: '연산시간'})
SET     n.name = '연산시간',
    n.name_kr = '연산시간',
    n.domain = 'AL',
    n.definition = 'Heap 재구성 연산시간 1) n개의 Node에 대해 완전 이진트리는 log2(n+1)의 Level을 가지므로 Heap 구성 평균시간은 O(log n) 2) n개의 Node에 대해 n번의 Heap 재구성 작업 수행';

MERGE (n:Concept {id: '비교_회수'})
SET     n.name = '비교 회수',
    n.name_kr = '비교 회수',
    n.domain = 'AL',
    n.definition = '2n log n';

// --- 관계 ---

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Concept {id: 'sorting'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Metric {id: '시간_복잡도'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Metric {id: '평균_시간_복잡도'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Metric {id: '공간_복잡도'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Metric {id: '평균_공간_복잡도'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Concept {id: 'memory_사용_공간'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Concept {id: '연산시간'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Concept {id: '비교_회수'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Document {id: 'AL_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '힙_정렬'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sorting'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '평균_시간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '공간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '평균_공간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'memory_사용_공간'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산시간'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비교_회수'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_012: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_012'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_013.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_013.1'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_013.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_013.2'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_014.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_014.1'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_014.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_014.2'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_014.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_014.3'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_015: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_015'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_016.0: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_016.0'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_016.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_016.1'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_017: 그래프 개념
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_017'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '그래프_개념'})
SET     n.name = '그래프 개념',
    n.name_kr = '그래프 개념',
    n.domain = 'AL';

MERGE (n:Concept {id: '그래프'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Concept {id: 'undirected_graph'})
SET     n.name = 'Undirected Graph',
    n.name_kr = '무방향성 그래프',
    n.domain = 'AL',
    n.aliases = ['Undirected Graph', '무방향성 그래프'];

MERGE (n:Concept {id: 'directed_graph'})
SET     n.name = 'Directed Graph',
    n.name_kr = '방향성 그래프',
    n.domain = 'AL',
    n.definition = '<A, B> ≠<B, A>',
    n.aliases = ['Directed Graph', '방향성 그래프'];

MERGE (n:Concept {id: 'weighted_graph'})
SET     n.name = 'Network',
    n.name_kr = '가중치 그래프(Weighted Graph), 네트워크',
    n.domain = 'AL',
    n.definition = '간선에 비용이나 가중치가 할당',
    n.aliases = ['Network', '가중치 그래프(Weighted Graph), 네트워크'];

MERGE (n:Concept {id: 'g1'})
SET     n.name = 'G1',
    n.name_kr = 'G1',
    n.domain = 'AL',
    n.aliases = ['G1'];

MERGE (n:Concept {id: 'g2'})
SET     n.name = 'G2',
    n.name_kr = 'G2',
    n.domain = 'AL',
    n.aliases = ['G2'];

MERGE (n:Concept {id: 'g3'})
SET     n.name = 'G3',
    n.name_kr = 'G3',
    n.domain = 'AL',
    n.aliases = ['G3'];

MERGE (n:Concept {id: '본원적_특성'})
SET     n.name = '본원적 특성',
    n.name_kr = '본원적 특성',
    n.domain = 'AL',
    n.definition = '비 순환 그래프';

MERGE (n:Concept {id: '유향성'})
SET     n.name = '유향성',
    n.name_kr = '유향성',
    n.domain = 'AL',
    n.definition = '시작 노드가 존재';

MERGE (n:Concept {id: '활용적_특성'})
SET     n.name = '활용적 특성 (블록체인 3.0)',
    n.name_kr = '활용적 특성 (블록체인 3.0)',
    n.domain = 'AL',
    n.definition = '높은 트랜잭션 속도';

MERGE (n:Concept {id: '저렴한_수수료'})
SET     n.name = '저렴한 수수료',
    n.name_kr = '저렴한 수수료',
    n.domain = 'AL',
    n.definition = 'DAG알고리즘에서는 블록을 형성해주는 채굴자 개념이 없음';

MERGE (n:Concept {id: '뛰어난_확장성'})
SET     n.name = '뛰어난 확장성',
    n.name_kr = '뛰어난 확장성',
    n.domain = 'AL',
    n.definition = '트랜잭션이 늘수록 추후 생성되는 트랜잭션에 대해 검증을 해줄 수 있는 가능성이 늘어남';

// --- 관계 ---

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '그래프'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'undirected_graph'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'directed_graph'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'weighted_graph'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'g1'})
MERGE (b:Concept {id: 'g2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'g1'})
MERGE (b:Concept {id: 'g3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'g1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'g2'})
MERGE (b:Concept {id: 'g3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'g2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: 'g3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '본원적_특성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '유향성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '활용적_특성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '저렴한_수수료'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Concept {id: '뛰어난_확장성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Document {id: 'AL_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '그래프_개념'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래프'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undirected_graph'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'directed_graph'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'weighted_graph'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g1'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g2'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g3'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '본원적_특성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유향성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용적_특성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저렴한_수수료'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '뛰어난_확장성'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_018.1: 최단경로탐색
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_018.1'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '최단경로탐색'})
SET     n.name = '최단경로탐색',
    n.name_kr = '최단경로탐색',
    n.domain = 'AL';

MERGE (n:Concept {id: '그래프'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Concept {id: 'dijkstra'})
SET     n.name = '다익스트라',
    n.name_kr = '다익스트라',
    n.domain = 'AL';

MERGE (n:Concept {id: 'floyd'})
SET     n.name = '플로이드',
    n.name_kr = '플로이드',
    n.domain = 'AL';

MERGE (n:Concept {id: '벨만포드'})
SET     n.name = '벨만포드',
    n.name_kr = '벨만포드',
    n.domain = 'AL';

MERGE (n:Concept {id: 'a*'})
SET     n.name = 'A*',
    n.name_kr = 'A*',
    n.domain = 'AL';

MERGE (n:Concept {id: '용도'})
SET     n.name = '용도',
    n.name_kr = '용도',
    n.domain = 'AL';

MERGE (n:Concept {id: '상세_종류'})
SET     n.name = '상세 종류',
    n.name_kr = '상세 종류',
    n.domain = 'AL';

MERGE (n:Concept {id: '고안자'})
SET     n.name = '고안자',
    n.name_kr = '고안자',
    n.domain = 'AL',
    n.definition = '네덜란드의 컴퓨터과학자 에츠허르 데이트스트라';

MERGE (n:Concept {id: '기반이론'})
SET     n.name = '기반이론',
    n.name_kr = '기반이론',
    n.domain = 'AL',
    n.definition = 'Greedy 알고리즘(욕심쟁이 알고리즘)';

MERGE (n:Concept {id: '실행방법'})
SET     n.name = '실행방법',
    n.name_kr = '실행방법',
    n.domain = 'AL',
    n.definition = '1. 맨 처음 출발점에 인접한 정점은 해당 간선의 가중치로 거리값을 부여하고 나머지 정점은 ∞로 부여함 2. 선택 과정의 각 단계에서 미선택 정점 집합 중 거리가 최소인 정점을 선택하고 그 정점의 인접 정점들에 대하여 그 정점을 지나는 거리와 기존 거리 중에 작은 것을 새 거리 값으로 조정 3. 이 과정을 모든 정점이 선택될 때 까지 반복';

MERGE (n:Metric {id: '시간복잡도'})
SET     n.name = '시간복잡도',
    n.name_kr = '시간복잡도',
    n.domain = 'AL',
    n.definition = 'O(n²) – for문 두개';

MERGE (n:Concept {id: '계산식'})
SET     n.name = '계산식',
    n.name_kr = '계산식',
    n.domain = 'AL',
    n.definition = 'dij(k) = min(dij(k-1), dik(k-1)+dkj(k-1)), dij(0) = w(i, j) - dij: 정점 i에서 정점 j까지의 최단 경로의 길이 - dij(k): 정점 번호가 k 이하인 정점만을 경유하는 정점 i에서 정점 j까지의 최단 경로의 길이';

// --- 관계 ---

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '그래프'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: 'dijkstra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: 'floyd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '벨만포드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: 'a*'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '용도'})
MERGE (b:Concept {id: '상세_종류'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '용도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '상세_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dijkstra'})
MERGE (b:Concept {id: 'a*'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: 'dijkstra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: 'a*'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '고안자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '기반이론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '실행방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Metric {id: '시간복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Concept {id: '계산식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Document {id: 'AL_018.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '최단경로탐색'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래프'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dijkstra'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'floyd'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벨만포드'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'a*'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_종류'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고안자'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반이론'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행방법'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산식'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_018.2: Dijkstra 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_018.2'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Method {id: 'dijkstra_알고리즘'})
SET     n.name = 'Dijkstra 알고리즘',
    n.name_kr = 'Dijkstra 알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '그래프'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Concept {id: '최단경로_탐색_알고리즘'})
SET     n.name = '최단경로 탐색 알고리즘',
    n.name_kr = '최단경로 탐색 알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '최소비용'})
SET     n.name = '최소비용',
    n.name_kr = '최소비용',
    n.domain = 'AL';

MERGE (n:Concept {id: '너비우선'})
SET     n.name = '너비우선',
    n.name_kr = '너비우선',
    n.domain = 'AL';

MERGE (n:Concept {id: 'greedy_알고리즘활용'})
SET     n.name = 'Greedy 알고리즘활용',
    n.name_kr = 'Greedy 알고리즘활용',
    n.domain = 'AL';

MERGE (n:Concept {id: '단계.1'})
SET     n.name = '단계.1',
    n.name_kr = '단계.1',
    n.domain = 'AL',
    n.definition = '시작점 A를 0으로 초기화 - 나머지 정점의 최단거리를 ∞로 설정';

MERGE (n:Concept {id: '단계.2'})
SET     n.name = '단계.2',
    n.name_kr = '단계.2',
    n.domain = 'AL',
    n.definition = '시작점 A에서 인접 정점들에 이르는 거리를 계산하고 이 값을 임시 저장함';

MERGE (n:Concept {id: '단계.3'})
SET     n.name = '단계.3',
    n.name_kr = '단계.3',
    n.domain = 'AL',
    n.definition = '계산되어 있는 정점 중 최단 거리가 가장 짧은 점점에서 인접 정점들의 거리를 계산 후 임시 저장 - 이 때, 최단 거리는 시작점부터 최단 거리이며, 더 짧은 최단 거리가 있을 경우 업데이트 함.';

MERGE (n:Concept {id: '단계.4'})
SET     n.name = '단계.4',
    n.name_kr = '단계.4',
    n.domain = 'AL',
    n.definition = '정점 B 다음으로 최단거리가 가장 짧은 정점 D에서 시작하여 인접 정점들의 거리를 계산 후 임시 저장 - 정점 E 10으로 최단거리가 업데이트 됨 (ABE에서 ADE로 변경)';

MERGE (n:Concept {id: '단계.5'})
SET     n.name = '단계.5',
    n.name_kr = '단계.5',
    n.domain = 'AL',
    n.definition = '앞의 단계를 반복 수행하여 모든 정점의 최단 거리를 계산';

MERGE (n:Concept {id: '최단경로'})
SET     n.name = '최단경로',
    n.name_kr = '최단경로',
    n.domain = 'AL',
    n.definition = 'A를 시작점으로 하는 모든 정점의 최단경로 구성';

// --- 관계 ---

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '그래프'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '최단경로_탐색_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '최소비용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '너비우선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: 'greedy_알고리즘활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '단계.1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '단계.2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '단계.3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '단계.4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '단계.5'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Concept {id: '최단경로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Document {id: 'AL_018.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'dijkstra_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래프'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최단경로_탐색_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최소비용'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '너비우선'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'greedy_알고리즘활용'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.1'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.2'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.3'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.4'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.5'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최단경로'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_019.1: A* 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_019.1'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'a*_알고리즘'})
SET     n.name = 'A* 알고리즘',
    n.name_kr = 'A* 알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '그래프'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Concept {id: '휴리스틱_추정값'})
SET     n.name = '휴리스틱 추정값',
    n.name_kr = '휴리스틱 추정값',
    n.domain = 'AL';

MERGE (n:Concept {id: 'n'})
SET     n.name = 'n',
    n.name_kr = 'f(n) = g(n) + h',
    n.domain = 'AL',
    n.aliases = ['n', 'f(n) = g(n) + h'];

MERGE (n:Concept {id: '열린목록'})
SET     n.name = '열린목록',
    n.name_kr = '열린목록',
    n.domain = 'AL';

MERGE (n:Concept {id: '닫힌목록'})
SET     n.name = '닫힌목록',
    n.name_kr = '닫힌목록',
    n.domain = 'AL';

MERGE (n:Concept {id: '단계.1'})
SET     n.name = '단계.1',
    n.name_kr = '단계.1',
    n.domain = 'AL';

MERGE (n:Concept {id: '단계.2'})
SET     n.name = '단계.2',
    n.name_kr = '단계.2',
    n.domain = 'AL',
    n.definition = 'f(G) = g(G)+h(G) = 8+14+7=29 - f(E) = g(E)+h(E) = 8+2+3=13 - 선택되지 않은 노드는 더 이상 탐색하지 않음';

MERGE (n:Concept {id: '단계.3'})
SET     n.name = '단계.3',
    n.name_kr = '단계.3',
    n.domain = 'AL',
    n.definition = 'f(H) = g(H)+h(H) = 10+3 =13 - 최단경로는 ADEH 임';

// --- 관계 ---

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '그래프'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '휴리스틱_추정값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: 'n'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '열린목록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '닫힌목록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '단계.1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '단계.2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Concept {id: '단계.3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Document {id: 'AL_019.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'a*_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래프'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '휴리스틱_추정값'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'n'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '열린목록'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '닫힌목록'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.1'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.2'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계.3'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_019.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_019.2'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_021.1: 그래프 순회
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_021.1'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'graph_traversal'})
SET     n.name = 'Graph Traversal',
    n.name_kr = '그래프 순회',
    n.domain = 'AL',
    n.aliases = ['그래프 순회'];

MERGE (n:Concept {id: 'graph'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Method {id: 'dfs'})
SET     n.name = 'DFS',
    n.name_kr = '깊이 우선 방식',
    n.domain = 'AL',
    n.aliases = ['DFS', '깊이 우선 방식'];

MERGE (n:Method {id: 'bfs'})
SET     n.name = 'BFS',
    n.name_kr = '너비 우선 방식',
    n.domain = 'AL',
    n.aliases = ['BFS', '너비 우선 방식'];

MERGE (n:Concept {id: '다익스트라'})
SET     n.name = '다익스트라',
    n.name_kr = '다익스트라',
    n.domain = 'AL';

MERGE (n:Concept {id: 'queue'})
SET     n.name = '큐(Queue)이용',
    n.name_kr = '큐(Queue)이용',
    n.domain = 'AL',
    n.definition = 'Queue를 이용해서 구현';

MERGE (n:Concept {id: '구현기법'})
SET     n.name = '구현기법',
    n.name_kr = '구현기법',
    n.domain = 'AL',
    n.definition = '큐(Queue) 자료구조를 이용해 반복문을 구성하기 때문에 재귀함수가 아닌, 이중 반복문을 통해 노드 순회';

MERGE (n:Concept {id: '자료구조'})
SET     n.name = '자료구조',
    n.name_kr = '자료구조',
    n.domain = 'AL',
    n.definition = '큐가 비거나 정답이 되는 노드를 찾기 전까지 계속해서 큐에서 노드를 하나 빼서 다음 갈 수 있는 노드를 삽입 반복';

MERGE (n:Metric {id: '시간_복잡도'})
SET     n.name = '시간 복잡도',
    n.name_kr = '시간 복잡도',
    n.domain = 'AL',
    n.definition = '인접 행렬로 구현할 때 모든 Queue에 대해 정점만큼 반복 - 인접 리스트로 구현 시, 간선 수만큼 Queue에 추가';

MERGE (n:Method {id: '의사_코드'})
SET     n.name = '의사 코드 (인접 행렬)',
    n.name_kr = '의사 코드 (인접 행렬)',
    n.domain = 'AL',
    n.definition = 'BFS(v){ visited[v] = TRUE Q.enqueue(v) while(Q){ for(i adjacent to Q.dequeue()){ if(!visited[i] && i != value){ visitied[w] = TRUE Q.enqueue(w) }}}}';

MERGE (n:Concept {id: 'stack'})
SET     n.name = '스택(Stack)이용',
    n.name_kr = '스택(Stack)이용',
    n.domain = 'AL',
    n.definition = '스택(Stack)를 이용해서 구현';

MERGE (n:Concept {id: 'backtracking'})
SET     n.name = '백트래킹(Backtracking) 사용',
    n.name_kr = '백트래킹(Backtracking) 사용',
    n.domain = 'AL',
    n.definition = '만약 노드를 만나지 못하고 경로가 끝나게 되면 백트래킹(Backtracking)으로 탐사한 적이 없는 경로로 탐색을 계속 진행';

// --- 관계 ---

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: 'graph'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Method {id: 'dfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Method {id: 'bfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: '다익스트라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: 'queue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: '구현기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: '자료구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Metric {id: '시간_복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Method {id: '의사_코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: 'stack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Concept {id: 'backtracking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Document {id: 'AL_021.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'graph_traversal'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'graph'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'dfs'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'bfs'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다익스트라'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현기법'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료구조'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '의사_코드'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stack'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_021.2: 백트래킹(Backtracking)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_021.2'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'backtracking'})
SET     n.name = 'Backtracking',
    n.name_kr = '백트래킹',
    n.domain = 'AL',
    n.aliases = ['Backtracking', '백트래킹'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Method {id: 'dfs'})
SET     n.name = 'DFS',
    n.name_kr = '깊이우선탐색',
    n.domain = 'AL',
    n.aliases = ['DFS', '깊이우선탐색'];

MERGE (n:Concept {id: 'pruning'})
SET     n.name = 'Pruning',
    n.name_kr = '가지치기',
    n.domain = 'AL',
    n.aliases = ['Pruning', '가지치기'];

MERGE (n:Method {id: '구현기법'})
SET     n.name = '구현기법',
    n.name_kr = '구현기법',
    n.domain = 'AL',
    n.definition = '기본적으로 DFS(Depth First Search) 알고리즘과 동일하게 동작하므로, 가지치기(Pruning) 부분을 제외하고 동일';

MERGE (n:Concept {id: '자료구조'})
SET     n.name = '자료구조',
    n.name_kr = '자료구조',
    n.domain = 'AL',
    n.definition = '재귀함수 구조 자체가 스택(Stack) 구조를 이용하는 것이므로 동일한 원리';

MERGE (n:Metric {id: '시간_복잡도'})
SET     n.name = '시간 복잡도',
    n.name_kr = '시간 복잡도',
    n.domain = 'AL',
    n.definition = '인접 행렬로 구현할 때 모든 Queue에 대해 정점만큼 반복 - 인접 리스트로 구현 시, 간선 수만큼 Queue에 추가';

MERGE (n:Concept {id: '의사_코드'})
SET     n.name = '의사 코드 (인접 행렬)',
    n.name_kr = '의사 코드 (인접 행렬)',
    n.domain = 'AL',
    n.definition = 'Backtracking(c){ if reject(P, c) then return if accept(P, c) then output s = first(P, c) while s != NULL do{ Backtracking(s) s = next(P,s)}}';

// --- 관계 ---

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Method {id: 'dfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Concept {id: 'pruning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Method {id: '구현기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Concept {id: '자료구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Metric {id: '시간_복잡도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Concept {id: '의사_코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Document {id: 'AL_021.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'backtracking'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'dfs'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pruning'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '구현기법'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료구조'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '시간_복잡도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사_코드'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_022: 최소 신장 트리 (Minimum Spanning Tree)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_022'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'minimum_spanning_tree'})
SET     n.name = 'Minimum Spanning Tree',
    n.name_kr = '최소 신장 트리',
    n.domain = 'AL',
    n.aliases = ['Minimum Spanning Tree', '최소 신장 트리'];

MERGE (n:Concept {id: '그래프'})
SET     n.name = '그래프',
    n.name_kr = '그래프',
    n.domain = 'AL';

MERGE (n:Concept {id: '신장트리'})
SET     n.name = '신장트리',
    n.name_kr = '신장트리',
    n.domain = 'AL';

MERGE (n:Concept {id: '비순환'})
SET     n.name = '비순환',
    n.name_kr = '비순환',
    n.domain = 'AL';

MERGE (n:Method {id: 'prim'})
SET     n.name = 'Prim',
    n.name_kr = 'Prim',
    n.domain = 'AL',
    n.aliases = ['Prim'];

MERGE (n:Concept {id: 'kruscal'})
SET     n.name = 'Kruscal',
    n.name_kr = 'Kruscal',
    n.domain = 'AL',
    n.aliases = ['Kruscal'];

MERGE (n:Method {id: '매커니즘'})
SET     n.name = '매커니즘',
    n.name_kr = '매커니즘',
    n.domain = 'AL',
    n.definition = '1) Prim 알고리즘은 시작 정점에서부터 출발하여 신장 트리 집합을 단계적으로 확장해 감. 2) 시작 단계에서는 시작 정점만이 신장 트리 집합에 포함 3) 앞 단계에서 만들어진 신장 트리 집합에 인접한 정점들 중에서 최저 간선으로 연결된 정점을 선택하면서 트리를 확장함. 4) 과정의 종료는 트리가 ‘n-1’의 간선을 가질 때 종료됨.';

MERGE (n:Concept {id: '구현절차_개념도'})
SET     n.name = '구현절차 개념도',
    n.name_kr = '구현절차 개념도',
    n.domain = 'AL';

MERGE (n:Concept {id: '구현절차_설명'})
SET     n.name = '구현절차 설명',
    n.name_kr = '구현절차 설명',
    n.domain = 'AL',
    n.definition = '1) 시작점 ‘A’에서 3개의 node중에 가장 적은 5 가중치로 연결된 ‘F’ 선택 2) 선택된 간선들로 두 정점을 연결했을 때 사이클이 생기면 간선을 포기하고, 사이클이 생기지 않으면 신장트리에 추가. F’와 이미 연결된 5를 제외한 ‘G’와 ‘E’ 중에서 적은 7의 가중치인 ‘G’ 선택 3) 선택된 간선들 중에서 가중치가 가장 적은 간선들을 택함. ‘';

MERGE (n:Concept {id: '문제풀이'})
SET     n.name = '문제풀이',
    n.name_kr = '문제풀이',
    n.domain = 'AL',
    n.definition = '1. 각 정점에 연결된 간선 중 가장 가중치 낮는 간선 동시 선택';

MERGE (n:Concept {id: '문제_풀이'})
SET     n.name = '문제 풀이',
    n.name_kr = '문제 풀이',
    n.domain = 'AL',
    n.definition = '1. 임의의 정점 0 선택';

MERGE (n:Concept {id: '2._간선_1_선택'})
SET     n.name = '2. 간선 1 선택',
    n.name_kr = '2. 간선 1 선택',
    n.domain = 'AL',
    n.definition = '3. 간선 2 선택';

MERGE (n:Concept {id: '4._간선_3_선택'})
SET     n.name = '4. 간선 3 선택',
    n.name_kr = '4. 간선 3 선택',
    n.domain = 'AL',
    n.definition = '5. 간선 6 선택';

// --- 관계 ---

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '그래프'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '신장트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '비순환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Method {id: 'prim'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: 'kruscal'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Method {id: '매커니즘'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '구현절차_개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '구현절차_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '문제풀이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '문제_풀이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '2._간선_1_선택'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Concept {id: '4._간선_3_선택'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Document {id: 'AL_022'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'minimum_spanning_tree'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그래프'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신장트리'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비순환'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'prim'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kruscal'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '매커니즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현절차_개념도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현절차_설명'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제풀이'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_풀이'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._간선_1_선택'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._간선_3_선택'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_023: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_023'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_024.0: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_024.0'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_024.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_024.1'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_025: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_025'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_026: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_026'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_027: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_027'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_028: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_028'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_030: 플렌옵틱 영상처리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_030'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'plenoptic_image_processing'})
SET     n.name = 'Plenoptic Image Processing',
    n.name_kr = '플렌옵틱 영상처리',
    n.domain = 'AL',
    n.aliases = ['플렌옵틱 영상처리'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '영상처리'})
SET     n.name = '영상처리',
    n.name_kr = '영상처리',
    n.domain = 'AL';

MERGE (n:Concept {id: 'light_field'})
SET     n.name = 'Light Field',
    n.name_kr = 'Light Field',
    n.domain = 'AL',
    n.aliases = ['Light Field'];

MERGE (n:Concept {id: 'main_lens'})
SET     n.name = 'Main Lens',
    n.name_kr = 'Main Lens',
    n.domain = 'AL',
    n.aliases = ['Main Lens'];

MERGE (n:Concept {id: 'micro_lens_array'})
SET     n.name = 'Micro lens array',
    n.name_kr = 'Micro lens array',
    n.domain = 'AL',
    n.aliases = ['Micro lens array'];

MERGE (n:Concept {id: 'lytro'})
SET     n.name = 'Lytro',
    n.name_kr = 'Lytro',
    n.domain = 'AL',
    n.aliases = ['Lytro'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'AL';

MERGE (n:Concept {id: '원리'})
SET     n.name = '원리',
    n.name_kr = '원리',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: '영상처리'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: '영상처리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: 'light_field'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: 'main_lens'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: 'micro_lens_array'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: 'lytro'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '원리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Concept {id: '원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Document {id: 'AL_030'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'plenoptic_image_processing'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상처리'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'light_field'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'main_lens'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_lens_array'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lytro'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원리'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_031.1: 재귀 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_031.1'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '재귀_알고리즘'})
SET     n.name = '재귀 알고리즘',
    n.name_kr = '재귀 알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '재귀알고리즘'})
SET     n.name = '재귀알고리즘',
    n.name_kr = '재귀알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '반복_호출'})
SET     n.name = '반복 호출',
    n.name_kr = '반복 호출',
    n.domain = 'AL';

MERGE (n:Concept {id: '베이스케이스'})
SET     n.name = '베이스케이스',
    n.name_kr = '베이스케이스',
    n.domain = 'AL';

MERGE (n:Concept {id: '동적계획법'})
SET     n.name = '동적계획법',
    n.name_kr = '동적계획법',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: '재귀알고리즘'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '재귀_알고리즘'})
MERGE (b:Concept {id: '반복_호출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '재귀_알고리즘'})
MERGE (b:Concept {id: '베이스케이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '재귀_알고리즘'})
MERGE (b:Concept {id: '동적계획법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '재귀_알고리즘'})
MERGE (b:Document {id: 'AL_031.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '재귀_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재귀알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반복_호출'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베이스케이스'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적계획법'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_031.2: 탐욕 알고리즘(Greedy알고리즘)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_031.2'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '탐욕_알고리즘'})
SET     n.name = '탐욕 알고리즘(Greedy알고리즘)',
    n.name_kr = '탐욕 알고리즘(Greedy알고리즘)',
    n.domain = 'AL';

MERGE (n:Concept {id: '해선택'})
SET     n.name = '해선택',
    n.name_kr = '해선택',
    n.domain = 'AL';

MERGE (n:Concept {id: '적합성검증'})
SET     n.name = '적합성검증',
    n.name_kr = '적합성검증',
    n.domain = 'AL';

MERGE (n:Concept {id: '해검증'})
SET     n.name = '해검증(해적검)',
    n.name_kr = '해검증(해적검)',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Concept {id: '탐욕_알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Concept {id: '해선택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Concept {id: '적합성검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Concept {id: '해검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Document {id: 'AL_031.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '탐욕_알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해선택'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적합성검증'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해검증'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_031.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_031.3'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_032: 동적 계획법 (Dynamic Programming)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_032'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'dynamic_programming'})
SET     n.name = 'Dynamic Programming',
    n.name_kr = '동적 계획법',
    n.domain = 'AL',
    n.aliases = ['Dynamic Programming', '동적 계획법'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: 'recursive_property'})
SET     n.name = 'Recursive Property',
    n.name_kr = 'Recursive Property',
    n.domain = 'AL',
    n.aliases = ['Recursive Property'];

MERGE (n:Concept {id: '최적성의_원리'})
SET     n.name = '최적성의 원리',
    n.name_kr = '최적성의 원리',
    n.domain = 'AL';

// --- 관계 ---

MERGE (a:Concept {id: 'dynamic_programming'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dynamic_programming'})
MERGE (b:Concept {id: 'recursive_property'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic_programming'})
MERGE (b:Concept {id: '최적성의_원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dynamic_programming'})
MERGE (b:Document {id: 'AL_032'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dynamic_programming'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recursive_property'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적성의_원리'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_033.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_033.2'})
SET doc.domain = 'AL';

// ──────────────────────────────────────
// AL_034: 대기행렬이론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_034'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: 'queuing_theory'})
SET     n.name = 'Queuing Theory',
    n.name_kr = '대기행렬이론',
    n.domain = 'AL',
    n.aliases = ['대기행렬이론'];

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: '모집단'})
SET     n.name = '모집단',
    n.name_kr = '모집단',
    n.domain = 'AL';

MERGE (n:Concept {id: '대기열'})
SET     n.name = '대기열',
    n.name_kr = '대기열',
    n.domain = 'AL';

MERGE (n:Concept {id: 'balk'})
SET     n.name = 'Balk',
    n.name_kr = '진입포기',
    n.domain = 'AL',
    n.aliases = ['Balk', '진입포기'];

MERGE (n:Concept {id: '중도이탈'})
SET     n.name = '중도이탈',
    n.name_kr = '중도이탈',
    n.domain = 'AL';

MERGE (n:Concept {id: '줄바꿈'})
SET     n.name = '줄바꿈',
    n.name_kr = '줄바꿈',
    n.domain = 'AL';

MERGE (n:Concept {id: '포아송_분포'})
SET     n.name = '포아송 분포',
    n.name_kr = '포아송 분포',
    n.domain = 'AL';

MERGE (n:Concept {id: '지수_분포'})
SET     n.name = '지수 분포',
    n.name_kr = '지수 분포',
    n.domain = 'AL';

MERGE (n:Concept {id: '확률밀도함수'})
SET     n.name = '확률밀도함수',
    n.name_kr = '확률밀도함수',
    n.domain = 'AL';

MERGE (n:Concept {id: 'fcfs'})
SET     n.name = 'FCFS',
    n.name_kr = 'FCFS',
    n.domain = 'AL',
    n.aliases = ['FCFS'];

MERGE (n:Concept {id: 'lcfs'})
SET     n.name = 'LCFS',
    n.name_kr = 'LCFS',
    n.domain = 'AL',
    n.aliases = ['LCFS'];

MERGE (n:Concept {id: 'siro'})
SET     n.name = 'SIRO',
    n.name_kr = 'SIRO',
    n.domain = 'AL',
    n.aliases = ['SIRO'];

MERGE (n:Concept {id: 'priority'})
SET     n.name = 'Priority',
    n.name_kr = 'Priority',
    n.domain = 'AL',
    n.aliases = ['Priority'];

MERGE (n:Concept {id: 'kendall'})
SET     n.name = 'Kendall',
    n.name_kr = 'Kendall',
    n.domain = 'AL',
    n.aliases = ['Kendall'];

MERGE (n:Concept {id: 'static_queue_규칙'})
SET     n.name = 'Static Queue 규칙',
    n.name_kr = 'Static Queue 규칙',
    n.domain = 'AL',
    n.definition = 'FCFS';

MERGE (n:Concept {id: 'dynamic_queue_규칙'})
SET     n.name = 'Dynamic queue 규칙',
    n.name_kr = 'Dynamic queue 규칙',
    n.domain = 'AL',
    n.definition = 'SIRO';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'AL',
    n.definition = '도착률 λ';

MERGE (n:Concept {id: '서비스율_μ'})
SET     n.name = '서비스율 μ',
    n.name_kr = '서비스율 μ',
    n.domain = 'AL',
    n.definition = 'μ = 60/14 = 4, 분 당 4대 처리';

MERGE (n:Concept {id: '이용률_ρ'})
SET     n.name = '이용률 ρ',
    n.name_kr = '이용률 ρ',
    n.domain = 'AL',
    n.definition = 'ρ = (2/4) * 100 = 50%';

MERGE (n:Concept {id: '시스템_내_평균_고객_수'})
SET     n.name = '시스템 내 평균 고객 수',
    n.name_kr = '시스템 내 평균 고객 수',
    n.domain = 'AL';

MERGE (n:Concept {id: '결과'})
SET     n.name = '결과',
    n.name_kr = '결과',
    n.domain = 'AL',
    n.definition = '톨게이트 이용률은 50%, 평균 대기 시간은 15초로 서비스 시스템에 충분한 여유가 있으며 시간 당 240대 이상이 아닌 경우 톨게이트 숫자를 늘릴 필요가 없음';

// --- 관계 ---

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '모집단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '대기열'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'balk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '중도이탈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '줄바꿈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '포아송_분포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '지수_분포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '확률밀도함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'fcfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'lcfs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'siro'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'priority'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'kendall'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'static_queue_규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: 'dynamic_queue_규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '서비스율_μ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '이용률_ρ'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '시스템_내_평균_고객_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Concept {id: '결과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Document {id: 'AL_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'queuing_theory'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모집단'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대기열'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'balk'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중도이탈'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '줄바꿈'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포아송_분포'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지수_분포'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확률밀도함수'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fcfs'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lcfs'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'siro'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'priority'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kendall'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'static_queue_규칙'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dynamic_queue_규칙'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스율_μ'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용률_ρ'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_내_평균_고객_수'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_035: 피보나치수
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_035'})
SET doc.domain = 'AL';

// --- 노드 ---

MERGE (n:Concept {id: '피보나치수'})
SET     n.name = '피보나치수',
    n.name_kr = '피보나치수',
    n.domain = 'AL';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'AL';

MERGE (n:Concept {id: 'self_call'})
SET     n.name = 'Self Call',
    n.name_kr = 'Self Call',
    n.domain = 'AL',
    n.aliases = ['Self Call'];

MERGE (n:Concept {id: 'boomerang'})
SET     n.name = 'Boomerang',
    n.name_kr = 'Boomerang',
    n.domain = 'AL',
    n.aliases = ['Boomerang'];

// --- 관계 ---

MERGE (a:Concept {id: '피보나치수'})
MERGE (b:Concept {id: 'self_call'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '피보나치수'})
MERGE (b:Concept {id: 'boomerang'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '피보나치수'})
MERGE (b:Document {id: 'AL_035'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '피보나치수'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_call'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'boomerang'})
MERGE (b:Domain {id: 'AL'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// AL_036: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'AL_036'})
SET doc.domain = 'AL';

// ================================================================
// AL 도메인 자동 생성 완료
// 노드: 205개
// 관계: 425개
// ================================================================