// ================================================================
// CA 도메인 (CA_001 ~ CA_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// CA_001: 멧칼프의 법칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_001'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '멧칼프의_법칙'})
SET     n.name = '멧칼프의 법칙',
    n.name_kr = '멧칼프의 법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '유용성'})
SET     n.name = '유용성',
    n.name_kr = '유용성',
    n.domain = 'CA';

MERGE (n:Concept {id: '임계값'})
SET     n.name = '임계값',
    n.name_kr = '임계값',
    n.domain = 'CA';

MERGE (n:Concept {id: '제곱에_비례'})
SET     n.name = '제곱에 비례',
    n.name_kr = '제곱에 비례',
    n.domain = 'CA';

MERGE (n:Concept {id: '네트워크_가치_:_n^2'})
SET     n.name = '네트워크 가치 : N^2',
    n.name_kr = '네트워크 가치 : N^2',
    n.domain = 'CA';

MERGE (n:Concept {id: '무어의_법칙'})
SET     n.name = '무어의 법칙',
    n.name_kr = '무어의 법칙',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '유용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '임계값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '제곱에_비례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '네트워크_가치_:_n^2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '무어의_법칙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '무어의_법칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Document {id: 'CA_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유용성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임계값'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제곱에_비례'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_가치_:_n^2'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_002: 무어의 법칙 (Moore’s LAW)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_002'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '무어의_법칙'})
SET     n.name = '무어의 법칙 (Moore’s LAW)',
    n.name_kr = '무어의 법칙 (Moore’s LAW)',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '18개월'})
SET     n.name = '18개월',
    n.name_kr = '18개월',
    n.domain = 'CA';

MERGE (n:Concept {id: '2배'})
SET     n.name = '2배(성능)',
    n.name_kr = '2배(성능)',
    n.domain = 'CA';

MERGE (n:Concept {id: '1/2배'})
SET     n.name = '1/2배(가격)',
    n.name_kr = '1/2배(가격)',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Concept {id: '18개월'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Concept {id: '2배'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Concept {id: '1/2배'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Document {id: 'CA_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '무어의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '18개월'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2배'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1/2배'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_003: 암달의 법칙 (Amdahl’s Law)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_003'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '암달의_법칙'})
SET     n.name = '암달의 법칙 (Amdahl’s Law)',
    n.name_kr = '암달의 법칙 (Amdahl’s Law)',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '병렬처리한계'})
SET     n.name = '병렬처리한계',
    n.name_kr = '병렬처리한계',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '암달의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '암달의_법칙'})
MERGE (b:Concept {id: '병렬처리한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '암달의_법칙'})
MERGE (b:Document {id: 'CA_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '암달의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬처리한계'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_004: 코어스의 법칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_004'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '코어스의_법칙'})
SET     n.name = '코어스의 법칙',
    n.name_kr = '코어스의 법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '거래비용_감소기업_수'})
SET     n.name = '거래비용 감소기업 수',
    n.name_kr = '거래비용 감소기업 수',
    n.domain = 'CA';

MERGE (n:Concept {id: '조직_복잡성_감소'})
SET     n.name = '조직 복잡성 감소',
    n.name_kr = '조직 복잡성 감소',
    n.domain = 'CA';

MERGE (n:Concept {id: '다운사이징'})
SET     n.name = '다운사이징',
    n.name_kr = '다운사이징',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Concept {id: '거래비용_감소기업_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Concept {id: '조직_복잡성_감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Concept {id: '다운사이징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Document {id: 'CA_004'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '코어스의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래비용_감소기업_수'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직_복잡성_감소'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다운사이징'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_005: 길더의 법칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_005'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '길더의_법칙'})
SET     n.name = '길더의 법칙',
    n.name_kr = '길더의 법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙일반'})
SET     n.name = '법칙일반',
    n.name_kr = '법칙일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '광섬유_대역폭_1년에_3배_증가'})
SET     n.name = '광섬유 대역폭 1년에 3배 증가',
    n.name_kr = '광섬유 대역폭 1년에 3배 증가',
    n.domain = 'CA';

MERGE (n:Concept {id: '변화'})
SET     n.name = '변화',
    n.name_kr = '변화',
    n.domain = 'CA',
    n.definition = '가상공간 이용';

MERGE (n:Concept {id: 'life_cycle의_변혁'})
SET     n.name = 'Life Cycle의 변혁',
    n.name_kr = 'Life Cycle의 변혁',
    n.domain = 'CA',
    n.definition = '초고속 통신망에 의한 인간 Life Cycle의 변혁(재택근무, SOHO, Mobile office, 원격 건강 진단 시스템)이 가능해 짐';

MERGE (n:Concept {id: 'eod'})
SET     n.name = 'EOD',
    n.name_kr = 'EOD',
    n.domain = 'CA',
    n.definition = 'EOD(Entertainment On Demand)구현이 가능',
    n.aliases = ['EOD'];

// --- 관계 ---

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Concept {id: '법칙일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Concept {id: '광섬유_대역폭_1년에_3배_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Concept {id: '변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Concept {id: 'life_cycle의_변혁'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Concept {id: 'eod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Document {id: 'CA_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '길더의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광섬유_대역폭_1년에_3배_증가'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'life_cycle의_변혁'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eod'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_006: 요르돈의 법칙(눈덩이 효과)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_006'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '요르돈의_법칙'})
SET     n.name = '요르돈의 법칙(눈덩이 효과)',
    n.name_kr = '요르돈의 법칙(눈덩이 효과)',
    n.domain = 'CA';

MERGE (n:Concept {id: '일반법칙'})
SET     n.name = '일반법칙',
    n.name_kr = '일반법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '부정(초기결함영향'})
SET     n.name = '부정(초기결함영향',
    n.name_kr = '부정(초기결함영향',
    n.domain = 'CA';

MERGE (n:Threat {id: '바이러스확산)'})
SET     n.name = '바이러스확산)',
    n.name_kr = '바이러스확산)',
    n.domain = 'CA';

MERGE (n:Concept {id: '긍정(수확체증법칙'})
SET     n.name = '긍정(수확체증법칙',
    n.name_kr = '긍정(수확체증법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '티핑포인트)'})
SET     n.name = '티핑포인트)',
    n.name_kr = '티핑포인트)',
    n.domain = 'CA';

MERGE (n:Concept {id: '지식관리'})
SET     n.name = '지식관리',
    n.name_kr = '지식관리',
    n.domain = 'CA',
    n.definition = 'e-Business에서 지식은 전통적인 생산요소와 달리 희소하지 않을 뿐만 아니라 많이 사용하고 전달할수록 새로운 지식의 창출이 더욱 늘어남';

MERGE (n:Concept {id: '소프트웨어_배포'})
SET     n.name = '소프트웨어 배포',
    n.name_kr = '소프트웨어 배포',
    n.domain = 'CA',
    n.definition = '소프트웨어는 복제, 배포 등을 토하여 쉽게 확산됨. 버그 및 사용자들의 평가도 마찬가지';

MERGE (n:Threat {id: '바이러스_확산'})
SET     n.name = '바이러스 확산',
    n.name_kr = '바이러스 확산',
    n.domain = 'CA',
    n.definition = '바이러스 및 웜이 네트워크를 통해 기하급수적으로 퍼지면 Zero-Day Effect가 나타남';

MERGE (n:Concept {id: '마켓_티핑'})
SET     n.name = '마켓 티핑',
    n.name_kr = '마켓 티핑',
    n.domain = 'CA',
    n.definition = '기존의 균형을 깨뜨리면서 변화가 확산되어 시장에서 새로운 대세를 이루게 됨';

MERGE (n:Concept {id: '소프트웨어_품질'})
SET     n.name = '소프트웨어 품질',
    n.name_kr = '소프트웨어 품질',
    n.domain = 'CA',
    n.definition = '초기에 발견되지 못한 결함은 분석-설계-개발-구현단계를 통해 심각한 파급효과를 유발';

// --- 관계 ---

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '일반법칙'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '부정(초기결함영향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Threat {id: '바이러스확산)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '긍정(수확체증법칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '티핑포인트)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '지식관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '소프트웨어_배포'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Threat {id: '바이러스_확산'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '마켓_티핑'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Concept {id: '소프트웨어_품질'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Document {id: 'CA_006'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '요르돈의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정(초기결함영향'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '바이러스확산)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긍정(수확체증법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '티핑포인트)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식관리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_배포'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '바이러스_확산'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마켓_티핑'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_품질'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_009: 사노프의 법칙(Sarnoff’s law)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_009'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '사노프의_법칙'})
SET     n.name = '사노프의 법칙(Sarnoff’s law)',
    n.name_kr = '사노프의 법칙(Sarnoff’s law)',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '샤방'})
SET     n.name = '샤방',
    n.name_kr = '샤방',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '사노프의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '사노프의_법칙'})
MERGE (b:Concept {id: '샤방'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사노프의_법칙'})
MERGE (b:Document {id: 'CA_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '사노프의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '샤방'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_010: 리드의 법칙(Reed’s law)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_010'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '리드의_법칙'})
SET     n.name = '리드의 법칙(Reed’s law)',
    n.name_kr = '리드의 법칙(Reed’s law)',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: '2의_n_제곱'})
SET     n.name = '2의 N 제곱',
    n.name_kr = '2의 N 제곱',
    n.domain = 'CA';

MERGE (n:Concept {id: '지수_비례'})
SET     n.name = '지수 비례',
    n.name_kr = '지수 비례',
    n.domain = 'CA';

MERGE (n:Concept {id: '협력_가능성'})
SET     n.name = '협력 가능성',
    n.name_kr = '협력 가능성',
    n.domain = 'CA';

MERGE (n:Concept {id: '함께_일하는_것'})
SET     n.name = '함께 일하는 것',
    n.name_kr = '함께 일하는 것',
    n.domain = 'CA';

MERGE (n:Concept {id: '멧칼프의_법칙'})
SET     n.name = '멧칼프의 법칙',
    n.name_kr = '멧칼프의 법칙',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '2의_n_제곱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '지수_비례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '협력_가능성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '함께_일하는_것'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Concept {id: '리드의_법칙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Concept {id: '멧칼프의_법칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Document {id: 'CA_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '리드의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2의_n_제곱'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지수_비례'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협력_가능성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '함께_일하는_것'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멧칼프의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_011: 구스타프슨의 법칙
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_011'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '구스타프슨의_법칙'})
SET     n.name = '구스타프슨의 법칙',
    n.name_kr = '구스타프슨의 법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '일반법칙'})
SET     n.name = '일반법칙',
    n.name_kr = '일반법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '구스타프슨_법칙'})
SET     n.name = '구스타프슨 법칙',
    n.name_kr = '구스타프슨 법칙',
    n.domain = 'CA';

MERGE (n:Concept {id: '병렬화'})
SET     n.name = '병렬화',
    n.name_kr = '병렬화',
    n.domain = 'CA';

MERGE (n:Concept {id: '암달_반대_개념'})
SET     n.name = '암달 반대 개념',
    n.name_kr = '암달 반대 개념',
    n.domain = 'CA';

MERGE (n:Concept {id: 'p'})
SET     n.name = 'P-1',
    n.name_kr = 'S(P)=P-α',
    n.domain = 'CA',
    n.aliases = ['P-1', 'S(P)=P-α'];

MERGE (n:Concept {id: '암달과_비교'})
SET     n.name = '암달과 비교',
    n.name_kr = '암달과 비교',
    n.domain = 'CA';

MERGE (n:Concept {id: '실질적_대용량_문제_해결'})
SET     n.name = '실질적 대용량 문제 해결',
    n.name_kr = '실질적 대용량 문제 해결',
    n.domain = 'CA',
    n.definition = '제한된 시간안에 가용 장비가 풀 수 있는 문제 크기 프로그래머 지정 필요';

MERGE (n:Concept {id: '동일_시간_문제_풀이'})
SET     n.name = '동일 시간 문제 풀이',
    n.name_kr = '동일 시간 문제 풀이',
    n.domain = 'CA',
    n.definition = '크기 지정 후 초고속, 초 병렬화 컴퓨터 출시 할 경우, 더 큰 문제도 주어진 동일한 시간 안에 연산 가능';

MERGE (n:Concept {id: 'scaled_speedup'})
SET     n.name = 'Scaled Speedup',
    n.name_kr = 'Scaled Speedup',
    n.domain = 'CA',
    n.definition = '구스타프슨은 그의 공식을 Scaled Speedup이라고 부름 - S(P)는 단일 프로세스의 총 실행 시간 대비 프로세스당 병렬 처리 시간의 비율',
    n.aliases = ['Scaled Speedup'];

MERGE (n:Concept {id: '처리_가능_문제_크기'})
SET     n.name = '처리 가능 문제 크기',
    n.name_kr = '처리 가능 문제 크기',
    n.domain = 'CA',
    n.definition = '처리 어려운 대용량 문제를 처리 가능 크기로 지정/가공 하면 동일 시간내 연산';

// --- 관계 ---

MERGE (a:Concept {id: '구스타프슨_법칙'})
MERGE (b:Concept {id: '일반법칙'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '병렬화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '암달_반대_개념'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: 'p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '암달과_비교'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '실질적_대용량_문제_해결'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '동일_시간_문제_풀이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: 'scaled_speedup'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Concept {id: '처리_가능_문제_크기'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Document {id: 'CA_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '구스타프슨의_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구스타프슨_법칙'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암달_반대_개념'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암달과_비교'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실질적_대용량_문제_해결'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동일_시간_문제_풀이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scaled_speedup'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_가능_문제_크기'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_012: 컴퓨터 구조(폰 노이만)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_012'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조(폰 노이만)',
    n.name_kr = '컴퓨터 구조(폰 노이만)',
    n.domain = 'CA';

MERGE (n:Concept {id: '법칙_일반'})
SET     n.name = '법칙 일반',
    n.name_kr = '법칙 일반',
    n.domain = 'CA';

MERGE (n:Concept {id: 'memory'})
SET     n.name = 'Memory',
    n.name_kr = 'Memory',
    n.domain = 'CA',
    n.aliases = ['Memory'];

MERGE (n:Concept {id: 'control_unit'})
SET     n.name = 'Control Unit',
    n.name_kr = 'Control Unit',
    n.domain = 'CA',
    n.aliases = ['Control Unit'];

MERGE (n:Concept {id: 'alu'})
SET     n.name = 'ALU',
    n.name_kr = 'ALU',
    n.domain = 'CA',
    n.aliases = ['ALU'];

MERGE (n:Concept {id: 'sisd'})
SET     n.name = 'SISD',
    n.name_kr = 'SISD',
    n.domain = 'CA',
    n.aliases = ['SISD'];

MERGE (n:Concept {id: 'von_neumann'})
SET     n.name = 'Von Neumann',
    n.name_kr = 'Von Neumann',
    n.domain = 'CA',
    n.aliases = ['Von Neumann'];

MERGE (n:Concept {id: 'harvard'})
SET     n.name = 'Harvard',
    n.name_kr = 'Harvard',
    n.domain = 'CA',
    n.aliases = ['Harvard'];

MERGE (n:Metric {id: '병렬처리개념도입'})
SET     n.name = '병렬처리개념도입',
    n.name_kr = '병렬처리개념도입',
    n.domain = 'CA',
    n.definition = '다중프로세서/다중데이터스트림 처리가 가능한 병렬처리 컴퓨터 등장 - 명령어 병렬처리 기술(Pipeline, Super scalar 등) 적용 - SMP(Shared Memory Processor), MPP(Massively Parallel Processor) 형태의 병렬 처리 - 하나의 Processor에서 여러 개의 Thread를 지원하는 Multi th';

MERGE (n:Concept {id: 'cache_memory'})
SET     n.name = 'Cache Memory',
    n.name_kr = '주기억장치 병목해결',
    n.domain = 'CA',
    n.definition = 'Bus를 Instruction 용과 Data 용으로 분리 - CPU에 Memory Controller를 내장하는 방식 도입 - CPU와 주기억장치 사이에 고속의 Memory를 추가한 계층적 구조로 구성- 최근에는 Bus를 읽기용과 쓰기용으로 세분화하는 Hyper transport 기술 출현',
    n.aliases = ['Cache Memory', '주기억장치 병목해결'];

MERGE (n:Concept {id: 'harvard_아키텍처와_병행_사용'})
SET     n.name = 'Harvard 아키텍처와 병행 사용',
    n.name_kr = 'Harvard 아키텍처와 병행 사용',
    n.domain = 'CA',
    n.definition = '최근 Von Neumann과 Harvard 아키텍처를 함께 사용한 고성능 CPU 개발 - Harvard Architecture: 칩에 내장된 Cache 메모리는 명령어 캐시와 데이터 캐시로 분리 - Von Neumann Architecture: Cache가 적중하지 못한 경우 데이터를 데이터와 명령어로 구분되지 않은 메인 메모리(RAM)에서 찾아오는 경우';

// --- 관계 ---

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: '법칙_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'control_unit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'alu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'sisd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'von_neumann'})
MERGE (b:Concept {id: 'harvard'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'von_neumann'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'harvard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Metric {id: '병렬처리개념도입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'cache_memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Concept {id: 'harvard_아키텍처와_병행_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Document {id: 'CA_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙_일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_unit'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sisd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'von_neumann'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'harvard'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '병렬처리개념도입'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'harvard_아키텍처와_병행_사용'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_013: Stored program computer
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_013'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'stored_program_computer'})
SET     n.name = 'Stored program computer',
    n.name_kr = 'Stored program computer',
    n.domain = 'CA',
    n.aliases = ['Stored program computer'];

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'CA';

MERGE (n:Concept {id: '5가지_구성_요소(제어장치'})
SET     n.name = '5가지 구성 요소(제어장치',
    n.name_kr = '5가지 구성 요소(제어장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '연산장치'})
SET     n.name = '연산장치',
    n.name_kr = '연산장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '메모리'})
SET     n.name = '메모리',
    n.name_kr = '메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: '입력장치'})
SET     n.name = '입력장치',
    n.name_kr = '입력장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '출력장치)'})
SET     n.name = '출력장치)',
    n.name_kr = '출력장치)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'reprogrammable'})
SET     n.name = 'Reprogrammable',
    n.name_kr = 'Reprogrammable',
    n.domain = 'CA',
    n.aliases = ['Reprogrammable'];

MERGE (n:Concept {id: 'fetch'})
SET     n.name = 'Fetch',
    n.name_kr = 'Fetch',
    n.domain = 'CA',
    n.aliases = ['Fetch'];

MERGE (n:Concept {id: 'ir'})
SET     n.name = 'IR',
    n.name_kr = 'IR',
    n.domain = 'CA',
    n.aliases = ['IR'];

MERGE (n:Concept {id: 'pc'})
SET     n.name = 'PC',
    n.name_kr = 'PC',
    n.domain = 'CA',
    n.aliases = ['PC'];

// --- 관계 ---

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '5가지_구성_요소(제어장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '연산장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '메모리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '입력장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: '출력장치)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: 'reprogrammable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: 'fetch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: 'ir'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Concept {id: 'pc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Document {id: 'CA_013'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stored_program_computer'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5가지_구성_요소(제어장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연산장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입력장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력장치)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reprogrammable'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fetch'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ir'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_014: 하버드 아키텍쳐
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_014'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '하버드_아키텍쳐'})
SET     n.name = '하버드 아키텍쳐',
    n.name_kr = '하버드 아키텍쳐',
    n.domain = 'CA';

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'data_memory'})
SET     n.name = 'Data Memory',
    n.name_kr = 'Data Memory',
    n.domain = 'CA',
    n.aliases = ['Data Memory'];

MERGE (n:Concept {id: 'instruction_memory'})
SET     n.name = 'Instruction Memory',
    n.name_kr = 'Instruction Memory',
    n.domain = 'CA',
    n.aliases = ['Instruction Memory'];

MERGE (n:Concept {id: 'alu'})
SET     n.name = 'ALU',
    n.name_kr = 'ALU',
    n.domain = 'CA',
    n.aliases = ['ALU'];

MERGE (n:Concept {id: 'control'})
SET     n.name = 'Control',
    n.name_kr = 'Control',
    n.domain = 'CA',
    n.aliases = ['Control'];

// --- 관계 ---

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Concept {id: 'data_memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Concept {id: 'instruction_memory'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Concept {id: 'alu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Document {id: 'CA_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '하버드_아키텍쳐'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'instruction_memory'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_015: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_015'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_016: ALU
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_016'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'alu'})
SET     n.name = 'ALU',
    n.name_kr = 'ALU',
    n.domain = 'CA',
    n.aliases = ['ALU'];

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: '가보시누데상'})
SET     n.name = '가보시누데상',
    n.name_kr = '가보시누데상',
    n.domain = 'CA';

MERGE (n:Concept {id: '주요기능'})
SET     n.name = '주요기능',
    n.name_kr = '주요기능',
    n.domain = 'CA',
    n.definition = '산술연산';

MERGE (n:Concept {id: '논리연산'})
SET     n.name = '논리연산',
    n.name_kr = '논리연산',
    n.domain = 'CA',
    n.definition = 'AND, OR, XOR, NOT 연산 수행';

MERGE (n:Concept {id: '복합연산'})
SET     n.name = '복합연산',
    n.name_kr = '복합연산',
    n.domain = 'CA',
    n.definition = '클럭 계산, 제곱근 계산, 소프트웨어 에뮬레이션';

MERGE (n:Concept {id: '시프트_레지스터'})
SET     n.name = '시프트 레지스터',
    n.name_kr = '시프트 레지스터',
    n.domain = 'CA',
    n.definition = '비트 이동';

MERGE (n:Concept {id: 'complementer'})
SET     n.name = '보수기',
    n.name_kr = '보수기',
    n.domain = 'CA',
    n.definition = '뺄셈이나 나눗셈 연산을 위해 보수로 바꾸어 주는 기능';

// --- 관계 ---

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '가보시누데상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '주요기능'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '논리연산'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '복합연산'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: '시프트_레지스터'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Concept {id: 'complementer'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Document {id: 'CA_016'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'alu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가보시누데상'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기능'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리연산'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복합연산'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시프트_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complementer'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_017.1: 레지스터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_017.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'register'})
SET     n.name = 'Register',
    n.name_kr = '레지스터',
    n.domain = 'CA',
    n.aliases = ['레지스터'];

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_레지스터'})
SET     n.name = '데이터 레지스터',
    n.name_kr = '데이터 레지스터',
    n.domain = 'CA',
    n.definition = '정수 값을 저장할 수 있는 레지스터';

MERGE (n:Concept {id: '주소_레지스터'})
SET     n.name = '주소 레지스터',
    n.name_kr = '주소 레지스터',
    n.domain = 'CA',
    n.definition = '메모리 주소를 저장하여 메모리 접근에 사용되는 레지스터. 어떤 프로세서에서는 주소를 저장하는 것이 아니라 조작하기 위한 목적으로 색인 레지스터를 사용하기도 함';

MERGE (n:Concept {id: '범용_레지스터'})
SET     n.name = '범용 레지스터',
    n.name_kr = '범용 레지스터',
    n.domain = 'CA',
    n.definition = '데이터와 주소를 모두 저장할 수 있는 레지스터';

MERGE (n:Concept {id: '부동_소수점_레지스터'})
SET     n.name = '부동 소수점 레지스터',
    n.name_kr = '부동 소수점 레지스터',
    n.domain = 'CA',
    n.definition = '많은 시스템에서 부동소수점 값을 저장하기 위해 사용';

MERGE (n:Concept {id: '상수_레지스터'})
SET     n.name = '상수 레지스터',
    n.name_kr = '상수 레지스터',
    n.domain = 'CA',
    n.definition = '0이나 1 등 고정된 값을 저장하고 있는 레지스터.';

MERGE (n:Concept {id: '특수_레지스터'})
SET     n.name = '특수 레지스터',
    n.name_kr = '특수 레지스터',
    n.domain = 'CA',
    n.definition = '프로그램의 상태를 저장. 프로그램 카운터, 스택 포인터, 상태 레지스터 등 명령 레지스터 : 현재 실행중인 명령어를 저장 색인 레지스터 : 실행중에 피연산자의 주소를 계산하는 데 사용';

// --- 관계 ---

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '데이터_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '주소_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '범용_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '부동_소수점_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '상수_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Concept {id: '특수_레지스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Document {id: 'CA_017.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'register'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범용_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부동_소수점_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상수_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특수_레지스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_017.2: 시스템버스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_017.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '시스템버스'})
SET     n.name = '시스템버스',
    n.name_kr = '시스템버스',
    n.domain = 'CA';

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_버스'})
SET     n.name = '데이터 버스',
    n.name_kr = '데이터 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: '주소_버스'})
SET     n.name = '주소 버스',
    n.name_kr = '주소 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: '제어_버스'})
SET     n.name = '제어 버스',
    n.name_kr = '제어 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'fsb'})
SET     n.name = 'FSB',
    n.name_kr = 'FSB',
    n.domain = 'CA',
    n.aliases = ['FSB'];

MERGE (n:Concept {id: 'qpi'})
SET     n.name = 'QPI',
    n.name_kr = 'QPI',
    n.domain = 'CA',
    n.aliases = ['QPI'];

// --- 관계 ---

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: '데이터_버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: '주소_버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: '제어_버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: 'fsb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Concept {id: 'qpi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Document {id: 'CA_017.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '시스템버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주소_버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어_버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fsb'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qpi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_017.3: 데이터버스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_017.3'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '데이터버스'})
SET     n.name = '데이터버스',
    n.name_kr = '데이터버스',
    n.domain = 'CA';

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'address_bus'})
SET     n.name = '주소 버스',
    n.name_kr = '주소 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'control_bus'})
SET     n.name = '제어 버스',
    n.name_kr = '제어 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'data_bus'})
SET     n.name = '데이터 버스',
    n.name_kr = '데이터 버스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'fsb'})
SET     n.name = 'FSB',
    n.name_kr = 'FSB',
    n.domain = 'CA',
    n.aliases = ['FSB'];

MERGE (n:Concept {id: 'qpi'})
SET     n.name = 'QPI',
    n.name_kr = 'QPI',
    n.domain = 'CA',
    n.aliases = ['QPI'];

// --- 관계 ---

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: 'address_bus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: 'control_bus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: 'data_bus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: 'fsb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Concept {id: 'qpi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Document {id: 'CA_017.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터버스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'address_bus'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_bus'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_bus'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fsb'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qpi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_017.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_017.4'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_017.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_017.5'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_018: GPU
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_018'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'gpu'})
SET     n.name = 'GPU',
    n.name_kr = 'GPU',
    n.domain = 'CA',
    n.aliases = ['GPU'];

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'CA';

MERGE (n:Concept {id: '3차원게임'})
SET     n.name = '3차원게임',
    n.name_kr = '3차원게임',
    n.domain = 'CA';

MERGE (n:Concept {id: '3차원_랜더링_목적'})
SET     n.name = '3차원 랜더링 목적',
    n.name_kr = '3차원 랜더링 목적',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'CA',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: 'fpga'})
SET     n.name = 'FPGA',
    n.name_kr = 'FPGA',
    n.domain = 'CA',
    n.aliases = ['FPGA'];

// --- 관계 ---

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: '3차원게임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: '3차원_랜더링_목적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fpga'})
MERGE (b:Concept {id: 'gpu'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'fpga'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fpga'})
MERGE (b:Concept {id: 'gpu'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Concept {id: 'fpga'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Document {id: 'CA_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'gpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3차원게임'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3차원_랜더링_목적'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fpga'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_019.1: GPGPU-CUDA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_019.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'gpgpu_cuda'})
SET     n.name = 'GPGPU-CUDA',
    n.name_kr = 'GPGPU-CUDA',
    n.domain = 'CA',
    n.aliases = ['GPGPU-CUDA'];

MERGE (n:Concept {id: '컴퓨터_구조'})
SET     n.name = '컴퓨터 구조',
    n.name_kr = '컴퓨터 구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'gpgpu기반_컴퓨팅_플랫폼의_종류'})
SET     n.name = 'GPGPU기반 컴퓨팅 플랫폼의 종류',
    n.name_kr = 'GPGPU기반 컴퓨팅 플랫폼의 종류',
    n.domain = 'CA';

MERGE (n:Concept {id: '코어집적'})
SET     n.name = '코어집적(다수코어)',
    n.name_kr = '코어집적(다수코어)',
    n.domain = 'CA';

MERGE (n:Concept {id: '단순병렬계산(행렬'})
SET     n.name = '단순병렬계산(행렬',
    n.name_kr = '단순병렬계산(행렬',
    n.domain = 'CA';

MERGE (n:Concept {id: '백터연산)'})
SET     n.name = '백터연산)',
    n.name_kr = '백터연산)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cuda'})
SET     n.name = 'CUDA',
    n.name_kr = 'CUDA',
    n.domain = 'CA',
    n.aliases = ['CUDA'];

MERGE (n:Concept {id: 'opencl'})
SET     n.name = 'OpenCL',
    n.name_kr = 'OpenCL',
    n.domain = 'CA',
    n.aliases = ['OpenCL'];

MERGE (n:Concept {id: 'c++amp'})
SET     n.name = 'C++AMP',
    n.name_kr = 'C++AMP',
    n.domain = 'CA';

MERGE (n:Concept {id: 'openacc'})
SET     n.name = 'OpenACC',
    n.name_kr = 'OpenACC',
    n.domain = 'CA',
    n.aliases = ['OpenACC'];

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'CA',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: 'gpgpu'})
SET     n.name = 'GPGPU',
    n.name_kr = 'GPGPU',
    n.domain = 'CA',
    n.aliases = ['GPGPU'];

// --- 관계 ---

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: '컴퓨터_구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'gpgpu기반_컴퓨팅_플랫폼의_종류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: '코어집적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: '단순병렬계산(행렬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: '백터연산)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'cuda'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'opencl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'c++amp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'openacc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Concept {id: 'gpgpu'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Concept {id: 'gpgpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Document {id: 'CA_019.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'gpgpu_cuda'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터_구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpgpu기반_컴퓨팅_플랫폼의_종류'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코어집적'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순병렬계산(행렬'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백터연산)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cuda'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opencl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'c++amp'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openacc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gpgpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_019.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_019.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_020: APU
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_020'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'apu'})
SET     n.name = 'APU',
    n.name_kr = 'APU',
    n.domain = 'CA',
    n.aliases = ['APU'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'apu'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'apu'})
MERGE (b:Document {id: 'CA_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'apu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_021: AMP (Asymmetric Multicore Processor)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_021'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Metric {id: 'asymmetric_multicore_processor'})
SET     n.name = 'Asymmetric Multicore Processor',
    n.name_kr = 'AMP',
    n.domain = 'CA',
    n.aliases = ['Asymmetric Multicore Processor', 'AMP'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'CA';

MERGE (n:Concept {id: '고성능'})
SET     n.name = '고성능(고전력/순차처리/복잡연산)',
    n.name_kr = '고성능(고전력/순차처리/복잡연산)',
    n.domain = 'CA';

MERGE (n:Concept {id: '저성능'})
SET     n.name = '저성능(저전력/병렬처리/단순연산)',
    n.name_kr = '저성능(저전력/병렬처리/단순연산)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'arm'})
SET     n.name = 'big.LITTLE',
    n.name_kr = 'ARM',
    n.domain = 'CA',
    n.aliases = ['big.LITTLE', 'ARM'];

MERGE (n:Concept {id: 'openmp'})
SET     n.name = 'OpenMP',
    n.name_kr = 'OpenMP',
    n.domain = 'CA',
    n.aliases = ['OpenMP'];

MERGE (n:Concept {id: 'opencl'})
SET     n.name = 'OpenCL',
    n.name_kr = 'OpenCL',
    n.domain = 'CA',
    n.aliases = ['OpenCL'];

MERGE (n:Concept {id: 'webcl'})
SET     n.name = 'WebCL',
    n.name_kr = 'WebCL',
    n.domain = 'CA',
    n.aliases = ['WebCL'];

MERGE (n:Concept {id: 'opencv'})
SET     n.name = 'OpenCV',
    n.name_kr = 'OpenCV',
    n.domain = 'CA',
    n.aliases = ['OpenCV'];

MERGE (n:Concept {id: 'openvg'})
SET     n.name = 'OpenVG',
    n.name_kr = 'OpenVG',
    n.domain = 'CA',
    n.aliases = ['OpenVG'];

MERGE (n:Concept {id: 'opengl'})
SET     n.name = 'OpenGL',
    n.name_kr = 'OpenGL',
    n.domain = 'CA',
    n.aliases = ['OpenGL'];

MERGE (n:Metric {id: 'open_multi_processing'})
SET     n.name = 'Open Multi-Processing',
    n.name_kr = 'OpenMP',
    n.domain = 'CA',
    n.definition = '공유 메모리 다중 처리 프로그래밍 API - 대칭형 멀티프로세서에서 태스크 병렬성을 향상시켜줄 수 있는 병렬 프로그래밍 모델',
    n.aliases = ['Open Multi-Processing', 'OpenMP'];

MERGE (n:Concept {id: 'open_computing_language'})
SET     n.name = 'Open Computing Language',
    n.name_kr = 'OpenCL',
    n.domain = 'CA',
    n.definition = '개방형 범용 병렬 컴퓨팅 프레임워크 - 여러 CPU, GPU 및 기타 프로세서 등으로 이루어진 다중 플랫폼에서 구동해야 하는 데이터 및 태스크 병렬성을 갖는 프로그램 작성할 수 있게 해주는 프레임워크',
    n.aliases = ['Open Computing Language', 'OpenCL'];

MERGE (n:Concept {id: 'open_compute_vision'})
SET     n.name = 'Open Compute Vision',
    n.name_kr = 'OpenCV',
    n.domain = 'CA',
    n.definition = '오픈 소스 컴퓨터 비전 C 라이브러리로 주로 실시간 이미지 프로세싱을 하기 위해 GPU 사용',
    n.aliases = ['Open Compute Vision', 'OpenCV'];

// --- 관계 ---

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: '고성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: '저성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'arm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'openmp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'opencl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'webcl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'opencv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'openvg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'opengl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Metric {id: 'open_multi_processing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'open_computing_language'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Concept {id: 'open_compute_vision'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Document {id: 'CA_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'asymmetric_multicore_processor'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고성능'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저성능'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arm'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openmp'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opencl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'webcl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opencv'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openvg'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opengl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'open_multi_processing'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_computing_language'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_compute_vision'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_022: 터보부스터/오버클로킹
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_022'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '터보부스터/오버클로킹'})
SET     n.name = '터보부스터/오버클로킹',
    n.name_kr = '터보부스터/오버클로킹',
    n.domain = 'CA';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: '터보부스터/오버클로킹'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '터보부스터/오버클로킹'})
MERGE (b:Document {id: 'CA_022'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '터보부스터/오버클로킹'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_023.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_023.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_023.2: 하드 디스크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_023.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: '하드_디스크'})
SET     n.name = '하드 디스크',
    n.name_kr = '하드 디스크',
    n.domain = 'CA';

MERGE (n:Concept {id: '디스크'})
SET     n.name = '디스크',
    n.name_kr = '디스크',
    n.domain = 'CA';

MERGE (n:Concept {id: 'lru'})
SET     n.name = 'LRU',
    n.name_kr = 'LRU',
    n.domain = 'CA',
    n.aliases = ['LRU'];

MERGE (n:Concept {id: 'lfu'})
SET     n.name = 'LFU',
    n.name_kr = 'LFU',
    n.domain = 'CA',
    n.aliases = ['LFU'];

MERGE (n:Concept {id: 'fifo'})
SET     n.name = 'FIFO',
    n.name_kr = 'FIFO',
    n.domain = 'CA',
    n.aliases = ['FIFO'];

MERGE (n:Concept {id: 'rr'})
SET     n.name = 'RR',
    n.name_kr = 'RR',
    n.domain = 'CA',
    n.aliases = ['RR'];

// --- 관계 ---

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Concept {id: '디스크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Concept {id: 'lru'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Concept {id: 'lfu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Concept {id: 'fifo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Concept {id: 'rr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Document {id: 'CA_023.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '하드_디스크'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lru'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lfu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fifo'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rr'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_026: SSD
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_026'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'ssd'})
SET     n.name = 'SSD',
    n.name_kr = 'SSD',
    n.domain = 'CA',
    n.aliases = ['SSD'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ssd_컨트롤러'})
SET     n.name = 'SSD 컨트롤러',
    n.name_kr = 'SSD 컨트롤러',
    n.domain = 'CA';

MERGE (n:Concept {id: 'cpu'})
SET     n.name = 'CPU',
    n.name_kr = 'CPU',
    n.domain = 'CA',
    n.aliases = ['CPU'];

MERGE (n:Concept {id: 'dram'})
SET     n.name = 'DRAM',
    n.name_kr = 'DRAM',
    n.domain = 'CA',
    n.aliases = ['DRAM'];

MERGE (n:Concept {id: 'flash_controller'})
SET     n.name = '플래시 컨트롤러',
    n.name_kr = '플래시 컨트롤러',
    n.domain = 'CA';

MERGE (n:Concept {id: '플래시_메모리'})
SET     n.name = '플래시 메모리',
    n.name_kr = '플래시 메모리',
    n.domain = 'CA';

MERGE (n:Concept {id: 'host_interface'})
SET     n.name = 'Host Interface',
    n.name_kr = 'Host Interface',
    n.domain = 'CA',
    n.aliases = ['Host Interface'];

MERGE (n:Concept {id: '플래시_컨트롤러)'})
SET     n.name = '플래시 컨트롤러)',
    n.name_kr = '플래시 컨트롤러)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'nand_플래시'})
SET     n.name = 'NAND 플래시',
    n.name_kr = 'NAND 플래시',
    n.domain = 'CA';

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'CA';

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'CA',
    n.definition = 'SSD 컨트롤러';

MERGE (n:Concept {id: 'capacitor'})
SET     n.name = 'Capacitor',
    n.name_kr = '축전기',
    n.domain = 'CA',
    n.definition = 'DRAM과 같이 휘발성 메모리에 저장된 사용자 데이터와 매핑 데이터를 갑작스런 정전 대비하여 플래시 메모리에 저장',
    n.aliases = ['Capacitor', '축전기'];

MERGE (n:Concept {id: '임베디드_프로세서'})
SET     n.name = '임베디드 프로세서',
    n.name_kr = '임베디드 프로세서',
    n.domain = 'CA',
    n.definition = '플래시 메모리 어플리케이션을 위한 Firmware구동, 보안 관련 기능 등을 수행';

MERGE (n:Concept {id: '호스트_인터페이스_컨트롤러'})
SET     n.name = '호스트 인터페이스 컨트롤러',
    n.name_kr = '호스트 인터페이스 컨트롤러',
    n.domain = 'CA',
    n.definition = '호스트로부터 명령어를 받아서 데이터가 읽혀지거나 쓰여질 논리주소를 해석하고, 데이터의 양을 결정 호스트 혹은 플래시 메모리로부터 이동된 데이터를 임시로 저장하기 위한 버퍼메모리 관리 수행';

MERGE (n:Concept {id: 'dram_컨트롤러'})
SET     n.name = 'DRAM 컨트롤러',
    n.name_kr = 'DRAM 컨트롤러',
    n.domain = 'CA',
    n.definition = '호스트와 NAND 플래시 사이의 데이터 완충 역할을 하는 DRAM 버퍼를 제어';

MERGE (n:Technology {id: 'ecc'})
SET     n.name = 'ECC',
    n.name_kr = '오류 제어',
    n.domain = 'CA',
    n.definition = '플래시 메모리를 읽고 쓰는 과정에서 잡음, 디바이스 결함 등에 의해 발생하기 쉬운 오류를 감지하고 정정하는 logic 별도의 하드웨어를 추가하여 오류 정정에 대한 신뢰도를 향상',
    n.aliases = ['ECC', '오류 제어'];

MERGE (n:Concept {id: 'hdd'})
SET     n.name = 'HDD',
    n.name_kr = 'HDD',
    n.domain = 'CA',
    n.aliases = ['HDD'];

MERGE (n:Concept {id: 'descending_i_o_path'})
SET     n.name = 'Descending I/O path',
    n.name_kr = 'Descending I/O path',
    n.domain = 'CA',
    n.definition = '애플리케이션에서 하드웨어 디바이스까지 거치는 커널 함수 SSD같은 고성능디바이스는 I/O요청 처리가 빠르기 때문에 I/O 스케줄러가 빈번하게 플러시 발생 I/O 스케줄러에 의해 I/O 오버 헤드 및 latency 발생 가능',
    n.aliases = ['Descending I/O path'];

MERGE (n:Concept {id: 'ascending_i_o_path'})
SET     n.name = 'Ascending I/O path',
    n.name_kr = 'Ascending I/O path',
    n.domain = 'CA',
    n.definition = '하드웨어 디바이스에서 어떤 애플리케이션까지 올라오는 커널 함수 I/O path의 비동기적 설계로 소프트웨어 latency 발생 가능',
    n.aliases = ['Ascending I/O path'];

// --- 관계 ---

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'ssd_컨트롤러'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'cpu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'dram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'flash_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '플래시_메모리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'host_interface'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '플래시_컨트롤러)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'nand_플래시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'capacitor'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '임베디드_프로세서'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: '호스트_인터페이스_컨트롤러'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'dram_컨트롤러'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Technology {id: 'ecc'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'hdd'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'hdd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'descending_i_o_path'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Concept {id: 'ascending_i_o_path'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Document {id: 'CA_026'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ssd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssd_컨트롤러'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dram'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flash_controller'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플래시_메모리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'host_interface'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플래시_컨트롤러)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nand_플래시'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'capacitor'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임베디드_프로세서'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스트_인터페이스_컨트롤러'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dram_컨트롤러'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ecc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hdd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'descending_i_o_path'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ascending_i_o_path'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_027: Write-Cliff
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_027'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'write_cliff'})
SET     n.name = 'Write-Cliff',
    n.name_kr = 'Write-Cliff',
    n.domain = 'CA',
    n.aliases = ['Write-Cliff'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ssd의_급격한_쓰기속도_저하_문제'})
SET     n.name = 'SSD의 급격한 쓰기속도 저하 문제',
    n.name_kr = 'SSD의 급격한 쓰기속도 저하 문제',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'write_cliff'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'write_cliff'})
MERGE (b:Concept {id: 'ssd의_급격한_쓰기속도_저하_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'write_cliff'})
MERGE (b:Document {id: 'CA_027'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'write_cliff'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssd의_급격한_쓰기속도_저하_문제'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_028: FMD(플래시 모듈 드라이브)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_028'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'fmd'})
SET     n.name = 'FMD',
    n.name_kr = '플래시 모듈 드라이브',
    n.domain = 'CA',
    n.aliases = ['FMD', '플래시 모듈 드라이브'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '멀티코어_모듈'})
SET     n.name = '멀티코어 모듈',
    n.name_kr = '멀티코어 모듈',
    n.domain = 'CA';

MERGE (n:Concept {id: '플래시_모듈'})
SET     n.name = '플래시 모듈',
    n.name_kr = '플래시 모듈',
    n.domain = 'CA';

MERGE (n:Concept {id: 'mlc'})
SET     n.name = 'MLC',
    n.name_kr = 'MLC',
    n.domain = 'CA',
    n.aliases = ['MLC'];

MERGE (n:Concept {id: 'wear_leveling'})
SET     n.name = 'Wear Leveling',
    n.name_kr = 'Wear Leveling',
    n.domain = 'CA',
    n.aliases = ['Wear Leveling'];

MERGE (n:Concept {id: '압축'})
SET     n.name = '압축',
    n.name_kr = '압축',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: '멀티코어_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: '플래시_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: 'mlc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: 'wear_leveling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Concept {id: '압축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Document {id: 'CA_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fmd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티코어_모듈'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플래시_모듈'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mlc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wear_leveling'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_031: FTL (Flash Translation Layer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_031'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'flash_translation_layer'})
SET     n.name = 'Flash Translation Layer',
    n.name_kr = 'FTL',
    n.domain = 'CA',
    n.aliases = ['Flash Translation Layer', 'FTL'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ftl'})
SET     n.name = 'FTL',
    n.name_kr = 'FTL',
    n.domain = 'CA',
    n.aliases = ['FTL'];

MERGE (n:Concept {id: 'stl(mapping'})
SET     n.name = 'STL(Mapping',
    n.name_kr = 'STL(Mapping',
    n.domain = 'CA';

MERGE (n:Concept {id: 'garbage_collection'})
SET     n.name = 'Garbage Collection',
    n.name_kr = 'Garbage Collection',
    n.domain = 'CA',
    n.aliases = ['Garbage Collection'];

MERGE (n:Concept {id: 'wear_leveling)'})
SET     n.name = 'Wear Leveling)',
    n.name_kr = 'Wear Leveling)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'flash_interface'})
SET     n.name = 'Flash Interface',
    n.name_kr = 'LLD',
    n.domain = 'CA',
    n.aliases = ['Flash Interface', 'LLD'];

MERGE (n:Concept {id: 'over_provisioning'})
SET     n.name = 'Over Provisioning',
    n.name_kr = 'Over Provisioning',
    n.domain = 'CA',
    n.aliases = ['Over Provisioning'];

// --- 관계 ---

MERGE (a:Concept {id: 'ftl'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Concept {id: 'stl(mapping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Concept {id: 'garbage_collection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Concept {id: 'wear_leveling)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Concept {id: 'flash_interface'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Concept {id: 'over_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Document {id: 'CA_031'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'flash_translation_layer'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ftl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stl(mapping'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'garbage_collection'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wear_leveling)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flash_interface'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'over_provisioning'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_032.1: SATA ( Serial ATA), SAS (Serial Attached SCSI )
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_032.1'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'serial_attached_scsi'})
SET     n.name = 'Serial Attached SCSI',
    n.name_kr = 'SATA ( Serial ATA), SAS',
    n.domain = 'CA',
    n.aliases = ['Serial Attached SCSI', 'SATA ( Serial ATA), SAS'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'sata,_sas'})
SET     n.name = 'SATA, SAS',
    n.name_kr = 'SATA, SAS',
    n.domain = 'CA';

MERGE (n:Concept {id: 'sata_:_직렬화'})
SET     n.name = 'SATA : 직렬화',
    n.name_kr = 'SATA : 직렬화',
    n.domain = 'CA';

MERGE (n:Concept {id: '디퍼런셜_전송'})
SET     n.name = '디퍼런셜 전송',
    n.name_kr = '디퍼런셜 전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '8bit/10bit인코딩'})
SET     n.name = '8bit/10bit인코딩',
    n.name_kr = '8bit/10bit인코딩',
    n.domain = 'CA';

MERGE (n:Concept {id: '150_300_600mb_s'})
SET     n.name = '150/300/600(450)MB/s',
    n.name_kr = '150/300/600(450)MB/s',
    n.domain = 'CA';

MERGE (n:Concept {id: 'sat_:_직렬화'})
SET     n.name = 'SAT : 직렬화',
    n.name_kr = 'SAT : 직렬화',
    n.domain = 'CA';

MERGE (n:Concept {id: 'dual_porting'})
SET     n.name = 'Dual Porting',
    n.name_kr = 'Dual Porting',
    n.domain = 'CA',
    n.aliases = ['Dual Porting'];

MERGE (n:Concept {id: 'point_to_point'})
SET     n.name = 'Point-to-Point',
    n.name_kr = 'Point-to-Point',
    n.domain = 'CA',
    n.aliases = ['Point-to-Point'];

MERGE (n:Concept {id: '적용기술'})
SET     n.name = '적용기술',
    n.name_kr = '적용기술',
    n.domain = 'CA',
    n.definition = '기가비트 기술';

MERGE (n:Concept {id: '8bit_/_10bit_인코딩'})
SET     n.name = '8bit / 10bit 인코딩',
    n.name_kr = '8bit / 10bit 인코딩',
    n.domain = 'CA',
    n.definition = '8bit 의 데이터를 10bit 로 인코딩하면서 CRC와 제어정보를 효율적으로 이용';

MERGE (n:Concept {id: '물리적_특징'})
SET     n.name = '물리적 특징',
    n.name_kr = '물리적 특징',
    n.domain = 'CA',
    n.definition = '케이블';

MERGE (n:Concept {id: '커넥터'})
SET     n.name = '커넥터',
    n.name_kr = '커넥터',
    n.domain = 'CA',
    n.definition = '크기 작음, 데이터와 전원으로 구분되며, 5v대신 0.5v 전원사용';

// --- 관계 ---

MERGE (a:Concept {id: 'sata,_sas'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: 'sata_:_직렬화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '디퍼런셜_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '8bit/10bit인코딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '150_300_600mb_s'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: 'sat_:_직렬화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: 'dual_porting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: 'point_to_point'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '적용기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '8bit_/_10bit_인코딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '물리적_특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Concept {id: '커넥터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Document {id: 'CA_032.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'serial_attached_scsi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sata,_sas'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sata_:_직렬화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디퍼런셜_전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8bit/10bit인코딩'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '150_300_600mb_s'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sat_:_직렬화'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dual_porting'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'point_to_point'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용기술'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8bit_/_10bit_인코딩'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적_특징'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커넥터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_032.2: SCSI
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_032.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'scsi'})
SET     n.name = 'SCSI',
    n.name_kr = 'SCSI',
    n.domain = 'CA',
    n.aliases = ['SCSI'];

MERGE (n:Concept {id: '보조기억_장치'})
SET     n.name = '보조기억 장치',
    n.name_kr = '보조기억 장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ide'})
SET     n.name = 'IDE',
    n.name_kr = 'IDE',
    n.domain = 'CA',
    n.aliases = ['IDE'];

MERGE (n:Concept {id: 'scsi_컨트롤러'})
SET     n.name = 'SCSI 컨트롤러',
    n.name_kr = 'SCSI 컨트롤러',
    n.domain = 'CA';

MERGE (n:Concept {id: '규격'})
SET     n.name = '규격',
    n.name_kr = '규격',
    n.domain = 'CA';

MERGE (n:Concept {id: '전송속도'})
SET     n.name = '전송속도',
    n.name_kr = '전송속도',
    n.domain = 'CA';

MERGE (n:Concept {id: '연결대수/길이'})
SET     n.name = '연결대수/길이',
    n.name_kr = '연결대수/길이',
    n.domain = 'CA';

MERGE (n:Concept {id: 'fc'})
SET     n.name = 'FC',
    n.name_kr = 'FC',
    n.domain = 'CA',
    n.aliases = ['FC'];

MERGE (n:Concept {id: 'sas'})
SET     n.name = 'SAS',
    n.name_kr = 'SAS',
    n.domain = 'CA',
    n.aliases = ['SAS'];

MERGE (n:Concept {id: 'e_ide'})
SET     n.name = 'E-IDE',
    n.name_kr = 'E-IDE',
    n.domain = 'CA',
    n.definition = 'Enhanced Integrated Drive Electronics -IDE를 확장한 것으로 528MB 이상 디스크 접근이 가능하고 기억 장치 직접 접근(DMA), 읽기 전용 콤팩트디스크 기억 장치(CD-ROM), ATA 패킷 인터페이스를 통한 테이프 장치들을 지원한다. -528MB 이상의 구동 장치에 접근하기 위해서는 28비트 LBA(Logical Blo',
    n.aliases = ['E-IDE'];

MERGE (n:Concept {id: 'sata'})
SET     n.name = 'SATA',
    n.name_kr = 'SATA',
    n.domain = 'CA',
    n.definition = 'Serial ATA, 직렬 ATA -하드 디스크 드라이브(HDD), 디지털 비디오 디스크(DVD) 및 CD-RW 등 기존 IDE(Integrated Drive Electronics) 장치의 접속 규격인 병렬 방식의 각종 ATA 규격과 호환성을 갖는 직렬 방식의 인터페이스 규격. -연결선은 병렬 신호 40개에서 직렬 신호 6개로 줄었고, 데이터 전송 속도는',
    n.aliases = ['SATA'];

MERGE (n:Concept {id: 'iscsi'})
SET     n.name = 'iSCSI',
    n.name_kr = 'iSCSI',
    n.domain = 'CA',
    n.definition = 'Internet Small Computer System Interface -데이터 스토리지 시설을 이어주는 IP기반의 스토리지 네트워킹 표준 -iSCSI는 IP망을 통해 SCSI 명령을 전달함으로써 인트라넷을 거쳐 데이터 전송을 쉽게 하고, 먼 거리에 걸쳐 스토리지 관리하는데 쓰인다. -근거리 통신망과 원거리 통신망, 또는 인터넷을 통해 데이터를 전송하는',
    n.aliases = ['iSCSI'];

// --- 관계 ---

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: '보조기억_장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'ide'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'scsi_컨트롤러'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '규격'})
MERGE (b:Concept {id: '전송속도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '규격'})
MERGE (b:Concept {id: '연결대수/길이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: '규격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전송속도'})
MERGE (b:Concept {id: '연결대수/길이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: '전송속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: '연결대수/길이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fc'})
MERGE (b:Concept {id: 'sas'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'fc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'sas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'e_ide'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'sata'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Concept {id: 'iscsi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Document {id: 'CA_032.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억_장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ide'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scsi_컨트롤러'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규격'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송속도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결대수/길이'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sas'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_ide'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sata'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iscsi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_033: 썬더볼트(Thunderbolt)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_033'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'thunderbolt'})
SET     n.name = 'Thunderbolt',
    n.name_kr = '썬더볼트',
    n.domain = 'CA',
    n.aliases = ['Thunderbolt', '썬더볼트'];

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Technology {id: 'pci_express'})
SET     n.name = 'PCI Express',
    n.name_kr = 'PCIe',
    n.domain = 'CA',
    n.aliases = ['PCI Express', 'PCIe'];

MERGE (n:Concept {id: 'display'})
SET     n.name = 'Display',
    n.name_kr = 'Display',
    n.domain = 'CA',
    n.aliases = ['Display'];

MERGE (n:Concept {id: 'usb_c_type'})
SET     n.name = 'USB-C Type',
    n.name_kr = 'USB-C Type',
    n.domain = 'CA',
    n.aliases = ['USB-C Type'];

// --- 관계 ---

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Technology {id: 'pci_express'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Concept {id: 'display'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Concept {id: 'usb_c_type'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Document {id: 'CA_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'thunderbolt'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'pci_express'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'display'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_c_type'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_034: USB 3.0, USB3.1
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_034'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'usb_3.0,_usb3.1'})
SET     n.name = 'USB 3.0, USB3.1',
    n.name_kr = 'USB 3.0, USB3.1',
    n.domain = 'CA';

MERGE (n:Concept {id: '보조기억장치'})
SET     n.name = '보조기억장치',
    n.name_kr = '보조기억장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'usb_3.0,_usb_3.1'})
SET     n.name = 'USB 3.0, USB 3.1',
    n.name_kr = 'USB 3.0, USB 3.1',
    n.domain = 'CA';

MERGE (n:Concept {id: 'usb_3.1_:_10gbps'})
SET     n.name = 'USB 3.1 : 10Gbps',
    n.name_kr = 'USB 3.1 : 10Gbps',
    n.domain = 'CA';

MERGE (n:Concept {id: '최대_100w(20v'})
SET     n.name = '최대 100W(20V',
    n.name_kr = '최대 100W(20V',
    n.domain = 'CA';

MERGE (n:Concept {id: '5a)'})
SET     n.name = '5A)',
    n.name_kr = '5A)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'all-in-one_단자'})
SET     n.name = 'All-in-one 단자',
    n.name_kr = 'All-in-one 단자',
    n.domain = 'CA';

MERGE (n:Concept {id: 'type_c'})
SET     n.name = 'Type-C',
    n.name_kr = 'Type-C',
    n.domain = 'CA',
    n.aliases = ['Type-C'];

MERGE (n:Concept {id: 'super_speed_+'})
SET     n.name = 'Super Speed +',
    n.name_kr = 'Super Speed +',
    n.domain = 'CA';

MERGE (n:Concept {id: 'usb_3.0_:_5gbps'})
SET     n.name = 'USB 3.0 : 5Gbps',
    n.name_kr = 'USB 3.0 : 5Gbps',
    n.domain = 'CA';

MERGE (n:Concept {id: 'super_speed'})
SET     n.name = 'Super Speed',
    n.name_kr = 'Super Speed',
    n.domain = 'CA',
    n.aliases = ['Super Speed'];

MERGE (n:Concept {id: 'usb_2.0_:_480mbps'})
SET     n.name = 'USB 2.0 : 480Mbps',
    n.name_kr = 'USB 2.0 : 480Mbps',
    n.domain = 'CA';

MERGE (n:Concept {id: 'high_speed'})
SET     n.name = 'High Speed',
    n.name_kr = 'High Speed',
    n.domain = 'CA',
    n.aliases = ['High Speed'];

MERGE (n:Concept {id: 'usb'})
SET     n.name = 'USB',
    n.name_kr = 'USB',
    n.domain = 'CA',
    n.aliases = ['USB'];

MERGE (n:Concept {id: 'thunderbolt설명'})
SET     n.name = 'Thunderbolt설명',
    n.name_kr = 'Thunderbolt설명',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'usb_3.0,_usb_3.1'})
MERGE (b:Concept {id: '보조기억장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'usb_3.1_:_10gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: '최대_100w(20v'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: '5a)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'all-in-one_단자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'type_c'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'super_speed_+'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'usb_3.0_:_5gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'super_speed'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'usb_2.0_:_480mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'high_speed'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb'})
MERGE (b:Concept {id: 'thunderbolt설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'usb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Concept {id: 'thunderbolt설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Document {id: 'CA_034'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb3.1'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_3.0,_usb_3.1'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_3.1_:_10gbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_100w(20v'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5a)'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'all-in-one_단자'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'type_c'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'super_speed_+'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_3.0_:_5gbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'super_speed'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_2.0_:_480mbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'high_speed'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'thunderbolt설명'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_035.2: USB3.1 Type C
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_035.2'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'usb3_1_type_c'})
SET     n.name = 'USB3.1 Type C',
    n.name_kr = 'USB3.1 Type C',
    n.domain = 'CA',
    n.aliases = ['USB3.1 Type C'];

MERGE (n:Concept {id: '보조기억_장치'})
SET     n.name = '보조기억 장치',
    n.name_kr = '보조기억 장치',
    n.domain = 'CA';

MERGE (n:Concept {id: 'usb_if'})
SET     n.name = 'USB-IF',
    n.name_kr = 'USB-IF',
    n.domain = 'CA',
    n.aliases = ['USB-IF'];

MERGE (n:Concept {id: 'ss_rx_tx'})
SET     n.name = 'SS RX/TX(+/-)',
    n.name_kr = 'SS RX/TX(+/-)',
    n.domain = 'CA';

MERGE (n:Concept {id: 'd'})
SET     n.name = 'D',
    n.name_kr = '+/-',
    n.domain = 'CA',
    n.aliases = ['D', '+/-'];

MERGE (n:Standard {id: 'cc'})
SET     n.name = 'CC',
    n.name_kr = 'CC',
    n.domain = 'CA',
    n.aliases = ['CC'];

MERGE (n:Concept {id: '10gbps'})
SET     n.name = '10Gbps',
    n.name_kr = '10Gbps',
    n.domain = 'CA';

MERGE (n:Concept {id: '100w'})
SET     n.name = '100W(20V/5A)',
    n.name_kr = '100W(20V/5A)',
    n.domain = 'CA';

MERGE (n:Concept {id: '리버시블_커넥터'})
SET     n.name = '리버시블 커넥터',
    n.name_kr = '리버시블 커넥터',
    n.domain = 'CA';

MERGE (n:Concept {id: '전송속도'})
SET     n.name = '전송속도',
    n.name_kr = '전송속도',
    n.domain = 'CA',
    n.definition = 'USB 3.1 전송규격 10Gbps 지원';

MERGE (n:Concept {id: '전력'})
SET     n.name = '전력',
    n.name_kr = '전력',
    n.domain = 'CA',
    n.definition = '최대 100W 전력 전달';

MERGE (n:Concept {id: '호환성'})
SET     n.name = '호환성',
    n.name_kr = '호환성',
    n.domain = 'CA',
    n.definition = '썬더볼트 3, MHL 호환';

MERGE (n:Concept {id: '편의성'})
SET     n.name = '편의성',
    n.name_kr = '편의성',
    n.domain = 'CA',
    n.definition = '리버시블 커넥터 (위/아래 구분 없음) 연결시 소리로 정상 연결 확인 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '보조기억_장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: 'usb_if'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: 'ss_rx_tx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: 'd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Standard {id: 'cc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '10gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '100w'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '리버시블_커넥터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '전송속도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '전력'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '호환성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Concept {id: '편의성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Document {id: 'CA_035.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'usb3_1_type_c'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보조기억_장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'usb_if'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ss_rx_tx'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'cc'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10gbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '100w'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리버시블_커넥터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송속도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호환성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편의성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_035.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_035.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_036.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.1'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_036.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.2'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_036.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.3'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_036.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.4'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_036.5: DAS, NAS, SAN, SDS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.5'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'das,_nas,_san,_sds'})
SET     n.name = 'DAS, NAS, SAN, SDS',
    n.name_kr = 'DAS, NAS, SAN, SDS',
    n.domain = 'CA';

MERGE (n:Concept {id: '컴퓨터구조'})
SET     n.name = '컴퓨터구조',
    n.name_kr = '컴퓨터구조',
    n.domain = 'CA';

MERGE (n:Concept {id: 'storage_구축'})
SET     n.name = 'Storage 구축',
    n.name_kr = 'Storage 구축',
    n.domain = 'CA';

MERGE (n:Concept {id: 'scsi'})
SET     n.name = 'SCSI',
    n.name_kr = 'SCSI',
    n.domain = 'CA',
    n.aliases = ['SCSI'];

MERGE (n:Standard {id: 'ieee1394'})
SET     n.name = 'IEEE1394',
    n.name_kr = 'IEEE1394',
    n.domain = 'CA',
    n.aliases = ['IEEE1394'];

MERGE (n:Concept {id: 'fiber_channel'})
SET     n.name = 'Fiber Channel',
    n.name_kr = 'FC',
    n.domain = 'CA',
    n.aliases = ['Fiber Channel', 'FC'];

MERGE (n:Concept {id: 'wan_망을_통해_접속'})
SET     n.name = 'WAN 망을 통해 접속',
    n.name_kr = 'WAN 망을 통해 접속',
    n.domain = 'CA';

MERGE (n:Concept {id: '스토리지_접근'})
SET     n.name = '스토리지 접근',
    n.name_kr = '스토리지 접근',
    n.domain = 'CA';

MERGE (n:Concept {id: 'das'})
SET     n.name = 'DAS',
    n.name_kr = 'DAS',
    n.domain = 'CA',
    n.aliases = ['DAS'];

MERGE (n:Concept {id: 'san'})
SET     n.name = 'SAN',
    n.name_kr = 'SAN',
    n.domain = 'CA',
    n.aliases = ['SAN'];

MERGE (n:Concept {id: 'nas'})
SET     n.name = 'NAS',
    n.name_kr = 'NAS',
    n.domain = 'CA',
    n.aliases = ['NAS'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'CA';

MERGE (n:Concept {id: 'full_name'})
SET     n.name = 'Full Name',
    n.name_kr = 'Full Name',
    n.domain = 'CA',
    n.definition = 'Software Defined Storage',
    n.aliases = ['Full Name'];

MERGE (n:Technology {id: 'interface'})
SET     n.name = 'Interface',
    n.name_kr = 'Interface',
    n.domain = 'CA',
    n.definition = 'TCP/IP, Fiber Channel, i-SCSI',
    n.aliases = ['Interface'];

MERGE (n:Concept {id: '데이터공유'})
SET     n.name = '데이터공유',
    n.name_kr = '데이터공유',
    n.domain = 'CA',
    n.definition = '가능';

MERGE (n:Concept {id: '스토리지_확장'})
SET     n.name = '스토리지 확장',
    n.name_kr = '스토리지 확장',
    n.domain = 'CA',
    n.definition = '무정지 확장가능';

MERGE (n:Concept {id: '관리자_편의성'})
SET     n.name = '관리자 편의성',
    n.name_kr = '관리자 편의성',
    n.domain = 'CA',
    n.definition = '쉬움';

MERGE (n:Concept {id: '초기설정'})
SET     n.name = '초기설정',
    n.name_kr = '초기설정',
    n.domain = 'CA',
    n.definition = '즉시(provisionning 측면)';

MERGE (n:Concept {id: '제어부'})
SET     n.name = '제어부',
    n.name_kr = '제어부',
    n.domain = 'CA',
    n.definition = '스토리지 모니터링, 가상 자원 관리, 스토리지 접근 등 스토리지 풀을 제어';

MERGE (n:Concept {id: '가상화부'})
SET     n.name = '가상화부',
    n.name_kr = '가상화부',
    n.domain = 'CA',
    n.definition = '이기종 스토리지를 논리적으로 통합해 스토리지 풀을 구성하고 저장되어있는 데이터를 추상화(Data Abstraction)';

MERGE (n:Concept {id: '정책부'})
SET     n.name = '정책부',
    n.name_kr = '정책부',
    n.domain = 'CA',
    n.definition = '스토리지 제공자, 서비스 및 사용자의 정책을 관리';

MERGE (n:Concept {id: '보안부'})
SET     n.name = '보안부',
    n.name_kr = '보안부',
    n.domain = 'CA',
    n.definition = '인증, 권한, 데이터 보안 등 보안 전반을 관리하며 보안 정책은 정책부에 명시된 정책을 따름';

// --- 관계 ---

MERGE (a:Concept {id: 'storage_구축'})
MERGE (b:Concept {id: '컴퓨터구조'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'scsi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Standard {id: 'ieee1394'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'fiber_channel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'wan_망을_통해_접속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '스토리지_접근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'das'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'san'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'das'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nas'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: 'full_name'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Technology {id: 'interface'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '데이터공유'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '스토리지_확장'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '관리자_편의성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '초기설정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '제어부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '가상화부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '정책부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Concept {id: '보안부'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Document {id: 'CA_036.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'das,_nas,_san,_sds'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터구조'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage_구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scsi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee1394'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fiber_channel'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wan_망을_통해_접속'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지_접근'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'san'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nas'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_name'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'interface'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터공유'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지_확장'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자_편의성'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초기설정'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안부'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_036.6: FAN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.6'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'fan'})
SET     n.name = 'FAN',
    n.name_kr = 'FAN',
    n.domain = 'CA',
    n.aliases = ['FAN'];

MERGE (n:Concept {id: 'storage'})
SET     n.name = 'Storage',
    n.name_kr = 'Storage',
    n.domain = 'CA',
    n.aliases = ['Storage'];

MERGE (n:Concept {id: 'file_area_network'})
SET     n.name = 'File area network',
    n.name_kr = 'File area network',
    n.domain = 'CA',
    n.aliases = ['File area network'];

MERGE (n:Concept {id: 'san'})
SET     n.name = 'SAN',
    n.name_kr = 'SAN',
    n.domain = 'CA',
    n.aliases = ['SAN'];

// --- 관계 ---

MERGE (a:Concept {id: 'fan'})
MERGE (b:Concept {id: 'storage'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fan'})
MERGE (b:Concept {id: 'file_area_network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'san'})
MERGE (b:Concept {id: 'fan'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fan'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fan'})
MERGE (b:Document {id: 'CA_036.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fan'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'file_area_network'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'san'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_036.7: IP SAN
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.7'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'ip_san'})
SET     n.name = 'IP SAN',
    n.name_kr = 'IP SAN',
    n.domain = 'CA',
    n.aliases = ['IP SAN'];

MERGE (n:Concept {id: 'storage구축'})
SET     n.name = 'Storage구축',
    n.name_kr = 'Storage구축',
    n.domain = 'CA';

MERGE (n:Concept {id: 'ifcp'})
SET     n.name = 'iFCP',
    n.name_kr = 'iFCP',
    n.domain = 'CA',
    n.aliases = ['iFCP'];

MERGE (n:Concept {id: 'fcip'})
SET     n.name = 'FCIP',
    n.name_kr = 'FCIP',
    n.domain = 'CA',
    n.aliases = ['FCIP'];

MERGE (n:Concept {id: 'internet_scsi'})
SET     n.name = 'Internet SCSI',
    n.name_kr = 'iSCSI',
    n.domain = 'CA',
    n.aliases = ['Internet SCSI', 'iSCSI'];

MERGE (n:Concept {id: 'fcoe'})
SET     n.name = 'FCoE',
    n.name_kr = 'FCoE',
    n.domain = 'CA',
    n.aliases = ['FCoE'];

// --- 관계 ---

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Concept {id: 'storage구축'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Concept {id: 'ifcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Concept {id: 'fcip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Concept {id: 'internet_scsi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Concept {id: 'fcoe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Document {id: 'CA_036.7'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ip_san'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ifcp'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fcip'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internet_scsi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fcoe'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_036.8: 스토리지 티어링
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.8'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'storage_tiering'})
SET     n.name = 'Storage Tiering',
    n.name_kr = '스토리지 티어링',
    n.domain = 'CA',
    n.aliases = ['스토리지 티어링'];

MERGE (n:Concept {id: 'storage구축'})
SET     n.name = 'Storage구축',
    n.name_kr = 'Storage구축',
    n.domain = 'CA';

MERGE (n:Concept {id: '중요한_데이터는_ssd'})
SET     n.name = '중요한 데이터는 SSD',
    n.name_kr = '중요한 데이터는 SSD',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Concept {id: 'storage_tiering'})
MERGE (b:Concept {id: 'storage구축'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'storage_tiering'})
MERGE (b:Concept {id: '중요한_데이터는_ssd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'storage_tiering'})
MERGE (b:Document {id: 'CA_036.8'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'storage_tiering'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요한_데이터는_ssd'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_036.9: 스토리지 프로비저닝
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_036.9'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'storage_provisioning'})
SET     n.name = 'Storage Provisioning',
    n.name_kr = '스토리지 프로비저닝',
    n.domain = 'CA',
    n.aliases = ['스토리지 프로비저닝'];

MERGE (n:Concept {id: 'storage_구축'})
SET     n.name = 'Storage 구축',
    n.name_kr = 'Storage 구축',
    n.domain = 'CA';

MERGE (n:Concept {id: 'thick_provisioning'})
SET     n.name = 'Thick Provisioning',
    n.name_kr = 'Thick Provisioning',
    n.domain = 'CA',
    n.aliases = ['Thick Provisioning'];

MERGE (n:Concept {id: 'thin_provisioning'})
SET     n.name = 'Thin Provisioning',
    n.name_kr = 'Thin Provisioning',
    n.domain = 'CA',
    n.aliases = ['Thin Provisioning'];

// --- 관계 ---

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Concept {id: 'storage_구축'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'thick_provisioning'})
MERGE (b:Concept {id: 'thin_provisioning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Concept {id: 'thick_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Concept {id: 'thin_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'thick_provisioning'})
MERGE (b:Concept {id: 'thin_provisioning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Concept {id: 'thick_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Concept {id: 'thin_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Document {id: 'CA_036.9'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'storage_provisioning'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage_구축'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'thick_provisioning'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'thin_provisioning'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_037: I2C
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_037'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Concept {id: 'i2c'})
SET     n.name = 'I2C',
    n.name_kr = 'I2C',
    n.domain = 'CA',
    n.aliases = ['I2C'];

MERGE (n:Concept {id: '법칙일반'})
SET     n.name = '법칙일반',
    n.name_kr = '법칙일반',
    n.domain = 'CA';

MERGE (n:Concept {id: 'master_slave'})
SET     n.name = 'Master-Slave',
    n.name_kr = 'Master-Slave',
    n.domain = 'CA',
    n.aliases = ['Master-Slave'];

MERGE (n:Concept {id: 'sw_address'})
SET     n.name = 'SW Address',
    n.name_kr = 'SW Address',
    n.domain = 'CA',
    n.aliases = ['SW Address'];

MERGE (n:Concept {id: '7bit_주소'})
SET     n.name = '7bit 주소',
    n.name_kr = '7bit 주소',
    n.domain = 'CA';

MERGE (n:Concept {id: '8bit_데이터_전송'})
SET     n.name = '8bit 데이터 전송',
    n.name_kr = '8bit 데이터 전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '표준모드:_100kbps'})
SET     n.name = '표준모드: 100kbps',
    n.name_kr = '표준모드: 100kbps',
    n.domain = 'CA';

MERGE (n:Concept {id: 'fast_모드:_400kbps'})
SET     n.name = 'Fast 모드: 400kbps',
    n.name_kr = 'Fast 모드: 400kbps',
    n.domain = 'CA';

MERGE (n:Concept {id: 'twi'})
SET     n.name = 'TWI',
    n.name_kr = 'TWI',
    n.domain = 'CA',
    n.aliases = ['TWI'];

MERGE (n:Concept {id: '동기전송'})
SET     n.name = '동기전송',
    n.name_kr = '동기전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '양방향_전송'})
SET     n.name = '양방향 전송',
    n.name_kr = '양방향 전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '다중_마스터'})
SET     n.name = '다중 마스터',
    n.name_kr = '다중 마스터',
    n.domain = 'CA';

MERGE (n:Concept {id: '다양한_전송속도'})
SET     n.name = '다양한 전송속도',
    n.name_kr = '다양한 전송속도',
    n.domain = 'CA';

MERGE (n:Concept {id: 'bus_release_status'})
SET     n.name = 'Bus Release Status',
    n.name_kr = 'Bus Release Status',
    n.domain = 'CA',
    n.aliases = ['Bus Release Status'];

MERGE (n:Concept {id: 'master_시작신호'})
SET     n.name = 'Master 시작신호',
    n.name_kr = 'Master 시작신호',
    n.domain = 'CA';

MERGE (n:Concept {id: 'slave_ack_응답'})
SET     n.name = 'Slave Ack 응답',
    n.name_kr = 'Slave Ack 응답',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이터_전송'})
SET     n.name = '데이터 전송',
    n.name_kr = '데이터 전송',
    n.domain = 'CA';

MERGE (n:Concept {id: '정지'})
SET     n.name = '정지',
    n.name_kr = '정지',
    n.domain = 'CA';

MERGE (n:Concept {id: 'master'})
SET     n.name = 'Master',
    n.name_kr = 'Master',
    n.domain = 'CA',
    n.definition = 'I2C 버스 초기화 기능, SCL에 Clock 출력 기능',
    n.aliases = ['Master'];

MERGE (n:Concept {id: 'slave'})
SET     n.name = 'Slave',
    n.name_kr = 'Slave',
    n.domain = 'CA',
    n.definition = 'Master에 의해 호출됨(주로 센서류, 메모리, 출력장치 등)',
    n.aliases = ['Slave'];

MERGE (n:Concept {id: 'scl'})
SET     n.name = 'SCL',
    n.name_kr = 'SCL',
    n.domain = 'CA',
    n.definition = '통신의 동기를 위한 Clock용 선, 오픈 드레인으로 풀업 저항 연결',
    n.aliases = ['SCL'];

MERGE (n:Concept {id: 'sda'})
SET     n.name = 'SDA',
    n.name_kr = 'SDA',
    n.domain = 'CA',
    n.definition = '데이터용 선, 오픈 드레인으로 풀업 저항 연결',
    n.aliases = ['SDA'];

MERGE (n:Concept {id: 'data_stable'})
SET     n.name = 'Data Stable',
    n.name_kr = 'Data Stable',
    n.domain = 'CA',
    n.definition = 'SCL이 High이면 SDA신호는 일정해야 함 (Data 안정화) - SCL이 Low일 때 SDA의 상태변화가 허용됨',
    n.aliases = ['Data Stable'];

MERGE (n:Concept {id: 'start/stop_조건'})
SET     n.name = 'Start/Stop 조건',
    n.name_kr = 'Start/Stop 조건',
    n.domain = 'CA',
    n.definition = 'Start조건: SCL이 High 상태에서 SDA가 High → Low로 변화 - Stop 조건: SCL이 High 상태에서 SDA가 Low → High로 변화';

// --- 관계 ---

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '법칙일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'master_slave'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'sw_address'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '7bit_주소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '8bit_데이터_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '표준모드:_100kbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'fast_모드:_400kbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'twi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '동기전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '양방향_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '다중_마스터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '다양한_전송속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'bus_release_status'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'master_시작신호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'slave_ack_응답'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '데이터_전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: '정지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'master'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'slave'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'scl'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'sda'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'data_stable'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Concept {id: 'start/stop_조건'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Document {id: 'CA_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'i2c'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법칙일반'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'master_slave'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_address'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7bit_주소'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8bit_데이터_전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준모드:_100kbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_모드:_400kbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'twi'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향_전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_마스터'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_전송속도'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bus_release_status'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'master_시작신호'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slave_ack_응답'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_전송'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정지'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'master'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slave'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scl'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sda'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_stable'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'start/stop_조건'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_038: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_038'})
SET doc.domain = 'CA';

// ──────────────────────────────────────
// CA_039: IEEE 1394
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_039'})
SET doc.domain = 'CA';

// --- 노드 ---

MERGE (n:Standard {id: 'ieee_1394'})
SET     n.name = 'IEEE 1394',
    n.name_kr = 'IEEE 1394',
    n.domain = 'CA',
    n.aliases = ['IEEE 1394'];

MERGE (n:Concept {id: '주변장치'})
SET     n.name = '주변장치',
    n.name_kr = '주변장치',
    n.domain = 'CA';

MERGE (n:Concept {id: '고속_시리얼_버스_인터페이스'})
SET     n.name = '고속 시리얼 버스 인터페이스',
    n.name_kr = '고속 시리얼 버스 인터페이스',
    n.domain = 'CA';

MERGE (n:Concept {id: 'plug&play'})
SET     n.name = 'Plug&Play',
    n.name_kr = 'Plug&Play',
    n.domain = 'CA';

MERGE (n:Concept {id: 'hot_pugging'})
SET     n.name = 'Hot Pugging',
    n.name_kr = 'Hot Pugging',
    n.domain = 'CA',
    n.aliases = ['Hot Pugging'];

MERGE (n:Concept {id: '최대_3.2gbps'})
SET     n.name = '최대 3.2Gbps',
    n.name_kr = '최대 3.2Gbps',
    n.domain = 'CA';

MERGE (n:Concept {id: '100m_거리'})
SET     n.name = '100m 거리',
    n.name_kr = '100m 거리',
    n.domain = 'CA';

MERGE (n:Concept {id: '최대_63개_장비'})
SET     n.name = '최대 63개 장비',
    n.name_kr = '최대 63개 장비',
    n.domain = 'CA';

MERGE (n:Concept {id: '양방향_통신'})
SET     n.name = '양방향 통신',
    n.name_kr = '양방향 통신',
    n.domain = 'CA';

MERGE (n:Concept {id: '데이지_체인'})
SET     n.name = '데이지 체인',
    n.name_kr = '데이지 체인',
    n.domain = 'CA';

// --- 관계 ---

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '주변장치'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '고속_시리얼_버스_인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: 'plug&play'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: 'hot_pugging'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '최대_3.2gbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '100m_거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '최대_63개_장비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '양방향_통신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Concept {id: '데이지_체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Document {id: 'CA_039'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'ieee_1394'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주변장치'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고속_시리얼_버스_인터페이스'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plug&play'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hot_pugging'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_3.2gbps'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '100m_거리'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_63개_장비'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향_통신'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이지_체인'})
MERGE (b:Domain {id: 'CA'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// CA_040.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'CA_040.1'})
SET doc.domain = 'CA';

// ================================================================
// CA 도메인 자동 생성 완료
// 노드: 328개
// 관계: 681개
// ================================================================