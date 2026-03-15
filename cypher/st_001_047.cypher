// ================================================================
// ST 도메인 (ST_001 ~ ST_047) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// ST_001: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_001'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_004.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_004.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_004.2: 박스플롯(Box plot)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_004.2'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'box_plot'})
SET     n.name = 'Box plot',
    n.name_kr = '박스플롯',
    n.domain = 'ST',
    n.aliases = ['Box plot', '박스플롯'];

MERGE (n:Concept {id: '통계학'})
SET     n.name = '통계학',
    n.name_kr = '통계학',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: 'box_plot'})
MERGE (b:Document {id: 'ST_004.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'box_plot'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계학'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_004.3: 타당도(Validity)와 신뢰도(Reliablity)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_004.3'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'validity'})
SET     n.name = 'Reliablity',
    n.name_kr = '타당도(Validity)와 신뢰도',
    n.domain = 'ST',
    n.aliases = ['Reliablity', '타당도(Validity)와 신뢰도'];

MERGE (n:Concept {id: '통계학'})
SET     n.name = '통계학',
    n.name_kr = '통계학',
    n.domain = 'ST';

MERGE (n:Concept {id: '내용타당도'})
SET     n.name = '내용타당도',
    n.name_kr = '내용타당도',
    n.domain = 'ST';

MERGE (n:Concept {id: '구인타당도'})
SET     n.name = '구인타당도',
    n.name_kr = '구인타당도',
    n.domain = 'ST';

MERGE (n:Concept {id: '준거_타당도(예측타당도'})
SET     n.name = '준거 타당도(예측타당도',
    n.name_kr = '준거 타당도(예측타당도',
    n.domain = 'ST';

MERGE (n:Concept {id: '동시타당도)'})
SET     n.name = '동시(공인)타당도)',
    n.name_kr = '동시(공인)타당도)',
    n.domain = 'ST';

MERGE (n:Concept {id: 'test_retest_reliability'})
SET     n.name = '재검사 신뢰도',
    n.name_kr = '재검사 신뢰도',
    n.domain = 'ST';

MERGE (n:Concept {id: 'equivalent_form_reliability'})
SET     n.name = '동형검사 신뢰도',
    n.name_kr = '동형검사 신뢰도',
    n.domain = 'ST';

MERGE (n:Concept {id: 'split_half_reliability'})
SET     n.name = '반분 신뢰도',
    n.name_kr = '반분 신뢰도',
    n.domain = 'ST';

MERGE (n:Concept {id: '문항_내적_합치도'})
SET     n.name = '문항 내적 합치도(내적일관성 신뢰도)',
    n.name_kr = '문항 내적 합치도(내적일관성 신뢰도)',
    n.domain = 'ST';

MERGE (n:Concept {id: '준거_타당도'})
SET     n.name = '준거 타당도',
    n.name_kr = '준거 타당도',
    n.domain = 'ST',
    n.definition = '검사와 준거의 관련성을 분석하는 것으로써 한 검사의 점수와 어떤 외적 준거와의 상관계수로 나타냄 (준거 : 다른 검사점수나 미래의 행위)';

MERGE (n:Concept {id: '예측타당도'})
SET     n.name = '예측타당도',
    n.name_kr = '예측타당도',
    n.domain = 'ST',
    n.definition = '척도가 측정하고자 하는 결과가 미래에 발생하는지 비교검증 (미래 시점적)';

MERGE (n:Concept {id: '동시타당도'})
SET     n.name = '동시타당도 (공인타당도)',
    n.name_kr = '동시타당도 (공인타당도)',
    n.domain = 'ST',
    n.definition = '검사점수와 그 검사 이외의 현재 다른 어떤 준거 점수 간의 상관관계(현재 시점적)';

MERGE (n:Concept {id: '속성'})
SET     n.name = '속성',
    n.name_kr = '속성',
    n.domain = 'ST',
    n.definition = '안정성';

MERGE (n:Concept {id: '동등성'})
SET     n.name = '동등성',
    n.name_kr = '동등성',
    n.domain = 'ST',
    n.definition = '동일한 현상을 측정함에 있어서 둘 이상의 측정도구를 사용할 때 이들 측정도구간의 동등성이 곧 신뢰도가 되는 것';

MERGE (n:Concept {id: '동질성'})
SET     n.name = '동질성',
    n.name_kr = '동질성',
    n.domain = 'ST',
    n.definition = '측정도구에 사용된 모든 문항이 동일한 속성을 측정해야 하는 원리';

// --- 관계 ---

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '통계학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '내용타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '구인타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '준거_타당도(예측타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '동시타당도)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: 'test_retest_reliability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: 'equivalent_form_reliability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: 'split_half_reliability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '문항_내적_합치도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '준거_타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '예측타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '동시타당도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '동등성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Concept {id: '동질성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Document {id: 'ST_004.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'validity'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계학'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내용타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구인타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준거_타당도(예측타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시타당도)'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'test_retest_reliability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'equivalent_form_reliability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'split_half_reliability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문항_내적_합치도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준거_타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예측타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동시타당도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동등성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동질성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_006: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_006'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_008: 베이즈 정리, 베이지안 이론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_008'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: '베이즈_정리,_베이지안_이론'})
SET     n.name = '베이즈 정리, 베이지안 이론',
    n.name_kr = '베이즈 정리, 베이지안 이론',
    n.domain = 'ST';

MERGE (n:Concept {id: 'probability'})
SET     n.name = '확률',
    n.name_kr = '확률',
    n.domain = 'ST';

MERGE (n:Concept {id: '조건부_확률'})
SET     n.name = '조건부 확률',
    n.name_kr = '조건부 확률',
    n.domain = 'ST';

MERGE (n:Concept {id: '전확률의_정리'})
SET     n.name = '전확률의 정리',
    n.name_kr = '전확률의 정리',
    n.domain = 'ST';

MERGE (n:Concept {id: '베이즈정리'})
SET     n.name = '베이즈정리',
    n.name_kr = '베이즈정리',
    n.domain = 'ST';

MERGE (n:Concept {id: '베이지안이론'})
SET     n.name = '베이지안이론',
    n.name_kr = '베이지안이론',
    n.domain = 'ST';

MERGE (n:Concept {id: 'prior_probability'})
SET     n.name = '사전확률',
    n.name_kr = '사전확률',
    n.domain = 'ST';

MERGE (n:Concept {id: 'likelyhood'})
SET     n.name = 'Likelyhood',
    n.name_kr = '우도',
    n.domain = 'ST',
    n.aliases = ['Likelyhood', '우도'];

MERGE (n:Concept {id: 'posterior_probability'})
SET     n.name = '사후확률',
    n.name_kr = '사후확률',
    n.domain = 'ST';

MERGE (n:Concept {id: '조건부확률'})
SET     n.name = '조건부확률',
    n.name_kr = '조건부확률',
    n.domain = 'ST';

MERGE (n:Concept {id: '확률의_곱셈정리'})
SET     n.name = '확률의 곱셈정리',
    n.name_kr = '확률의 곱셈정리',
    n.domain = 'ST';

MERGE (n:Concept {id: '전_확률의_정리'})
SET     n.name = '전 확률의 정리',
    n.name_kr = '전 확률의 정리',
    n.domain = 'ST';

MERGE (n:Concept {id: '수식'})
SET     n.name = '수식',
    n.name_kr = '수식',
    n.domain = 'ST';

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'ST',
    n.definition = '사전확률 (Prior Probability)';

MERGE (n:Concept {id: '활용_분야'})
SET     n.name = '활용 분야',
    n.name_kr = '활용 분야',
    n.domain = 'ST',
    n.definition = '스팸필터링, 비정상 행위 감지, 의학적 질병 진단, 문서 분류 등';

MERGE (n:Concept {id: '문제_정리'})
SET     n.name = '문제 정리',
    n.name_kr = '문제 정리',
    n.domain = 'ST',
    n.definition = '국내 코로나19 확진환자는 5천만명중 50,000명';

MERGE (n:Concept {id: '코로나19_확진환자를_대상으로_진단키트_검사시_95%_양성'})
SET     n.name = '코로나19 확진환자를 대상으로 진단키트 검사시 95% 양성',
    n.name_kr = '코로나19 확진환자를 대상으로 진단키트 검사시 95% 양성',
    n.domain = 'ST',
    n.definition = '양성 : B, 음성 : B1 - 양성 확률 : P(B|A) = 95/100 = 0.95 -> 정상 - 음성 확률 : P(B1|A) = 5/100 = 0.05 -> 잘못 진단';

MERGE (n:Concept {id: '건강한_사람_대상으로_진단키트_검사시_98%_음성'})
SET     n.name = '건강한 사람 대상으로 진단키트 검사시 98% 음성',
    n.name_kr = '건강한 사람 대상으로 진단키트 검사시 98% 음성',
    n.domain = 'ST',
    n.definition = '양성 확률 : P(B|A1) = 2 / 100 = 0.02 -> 잘못 진단 - 음성 확률 : P(B1|A1) = 98 / 100 = 0.98 -> 정상';

MERGE (n:Concept {id: '진단키트_이용_검사결과_양성반응시_코로나19_판정_확률?'})
SET     n.name = '진단키트 이용 검사결과 양성반응시 코로나19 판정 확률?',
    n.name_kr = '진단키트 이용 검사결과 양성반응시 코로나19 판정 확률?',
    n.domain = 'ST',
    n.definition = 'P(A|B) = ?';

MERGE (n:Concept {id: '풀이'})
SET     n.name = '풀이',
    n.name_kr = '풀이',
    n.domain = 'ST';

MERGE (n:Concept {id: '발열이_나는_확률'})
SET     n.name = '발열이 나는 확률',
    n.name_kr = '발열이 나는 확률',
    n.domain = 'ST',
    n.definition = 'P(발열) = 0.1';

MERGE (n:Concept {id: '기침을_하는_확률'})
SET     n.name = '기침을 하는 확률',
    n.name_kr = '기침을 하는 확률',
    n.domain = 'ST',
    n.definition = 'P(기침) = 0.05';

MERGE (n:Concept {id: '독감에_걸린_사람이_발열이_날_확률'})
SET     n.name = '독감에 걸린 사람이 발열이 날 확률',
    n.name_kr = '독감에 걸린 사람이 발열이 날 확률',
    n.domain = 'ST',
    n.definition = 'P(발열|독감) = 0.3';

MERGE (n:Concept {id: '독감에_걸린_사람이_기침을_하는_확률'})
SET     n.name = '독감에 걸린 사람이 기침을 하는 확률',
    n.name_kr = '독감에 걸린 사람이 기침을 하는 확률',
    n.domain = 'ST',
    n.definition = 'P(기침|독감) = 0.4';

MERGE (n:Concept {id: '발열이_나고_기침을_하는_환자가_독감에_걸릴_확률'})
SET     n.name = '발열이 나고 기침을 하는 환자가 독감에 걸릴 확률',
    n.name_kr = '발열이 나고 기침을 하는 환자가 독감에 걸릴 확률',
    n.domain = 'ST',
    n.definition = 'P(독감|발열,기침) = ?';

// --- 관계 ---

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: 'probability'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '조건부_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '전확률의_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '베이즈정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '베이지안이론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: 'prior_probability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: 'likelyhood'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: 'posterior_probability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '조건부확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '확률의_곱셈정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '전_확률의_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '수식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '활용_분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '문제_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '코로나19_확진환자를_대상으로_진단키트_검사시_95%_양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '건강한_사람_대상으로_진단키트_검사시_98%_음성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '진단키트_이용_검사결과_양성반응시_코로나19_판정_확률?'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '풀이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '발열이_나는_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '기침을_하는_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '독감에_걸린_사람이_발열이_날_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '독감에_걸린_사람이_기침을_하는_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Concept {id: '발열이_나고_기침을_하는_환자가_독감에_걸릴_확률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Document {id: 'ST_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '베이즈_정리,_베이지안_이론'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'probability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조건부_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전확률의_정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베이즈정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '베이지안이론'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prior_probability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'likelyhood'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'posterior_probability'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조건부확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확률의_곱셈정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전_확률의_정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수식'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용_분야'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코로나19_확진환자를_대상으로_진단키트_검사시_95%_양성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '건강한_사람_대상으로_진단키트_검사시_98%_음성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진단키트_이용_검사결과_양성반응시_코로나19_판정_확률?'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '풀이'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발열이_나는_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기침을_하는_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독감에_걸린_사람이_발열이_날_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독감에_걸린_사람이_기침을_하는_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발열이_나고_기침을_하는_환자가_독감에_걸릴_확률'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_011: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_011'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_012: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_012'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_014.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_014.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_014.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_014.2'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_014.3: 중심극한정리 CLT(Central Limit Theorem)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_014.3'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'central_limit_theorem'})
SET     n.name = 'Central Limit Theorem',
    n.name_kr = '중심극한정리 CLT',
    n.domain = 'ST',
    n.aliases = ['Central Limit Theorem', '중심극한정리 CLT'];

MERGE (n:Concept {id: '확률분포'})
SET     n.name = '확률분포',
    n.name_kr = '확률분포',
    n.domain = 'ST';

MERGE (n:Concept {id: 'ctl'})
SET     n.name = '중심극한정리',
    n.name_kr = '중심극한정리',
    n.domain = 'ST';

MERGE (n:Concept {id: '표분평균'})
SET     n.name = '표분평균',
    n.name_kr = '표분평균',
    n.domain = 'ST';

MERGE (n:Concept {id: '정규분포'})
SET     n.name = '정규분포',
    n.name_kr = '정규분포',
    n.domain = 'ST';

MERGE (n:Concept {id: '복원추출'})
SET     n.name = '복원추출',
    n.name_kr = '복원추출',
    n.domain = 'ST';

MERGE (n:Concept {id: '중심_극한_정리'})
SET     n.name = '중심 극한 정리',
    n.name_kr = '중심 극한 정리',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: 'ctl'})
MERGE (b:Concept {id: '확률분포'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Concept {id: '표분평균'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Concept {id: '정규분포'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Concept {id: '복원추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Concept {id: '중심_극한_정리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Document {id: 'ST_014.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'central_limit_theorem'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확률분포'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ctl'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표분평균'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규분포'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복원추출'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중심_극한_정리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_023: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_023'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_028: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_028'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_031: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_031'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_032.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_032.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_032.2: ANOVA(ANalysis Of VAriance) – 분산분석, One-Way ANOVA, Two-Way ANOVA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_032.2'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'anova'})
SET     n.name = 'ANOVA',
    n.name_kr = 'ANOVA',
    n.domain = 'ST',
    n.aliases = ['ANOVA'];

MERGE (n:Concept {id: '분산분석,_one-way_anova,_two-way_anova'})
SET     n.name = '분산분석, One-Way ANOVA, Two-Way ANOVA',
    n.name_kr = '분산분석, One-Way ANOVA, Two-Way ANOVA',
    n.domain = 'ST';

MERGE (n:Concept {id: '등분산성'})
SET     n.name = '등분산성',
    n.name_kr = '등분산성',
    n.domain = 'ST';

MERGE (n:Concept {id: '독립성'})
SET     n.name = '독립성',
    n.name_kr = '독립성',
    n.domain = 'ST';

MERGE (n:Concept {id: 'sstr'})
SET     n.name = 'SSTR',
    n.name_kr = 'SSTR',
    n.domain = 'ST',
    n.aliases = ['SSTR'];

MERGE (n:Concept {id: 'sse'})
SET     n.name = 'SSE',
    n.name_kr = 'SSE',
    n.domain = 'ST',
    n.aliases = ['SSE'];

MERGE (n:Concept {id: 'sst'})
SET     n.name = 'SST',
    n.name_kr = 'SST',
    n.domain = 'ST',
    n.aliases = ['SST'];

MERGE (n:Concept {id: 'mstr'})
SET     n.name = 'MSTR',
    n.name_kr = 'MSTR',
    n.domain = 'ST',
    n.aliases = ['MSTR'];

MERGE (n:Concept {id: 'mse'})
SET     n.name = 'MSE',
    n.name_kr = 'MSE',
    n.domain = 'ST',
    n.aliases = ['MSE'];

MERGE (n:Concept {id: '자유도'})
SET     n.name = '자유도',
    n.name_kr = '자유도',
    n.domain = 'ST';

MERGE (n:Concept {id: 'f_통계량'})
SET     n.name = 'F 통계량',
    n.name_kr = 'F 통계량',
    n.domain = 'ST';

MERGE (n:Concept {id: '개념도_사례'})
SET     n.name = '개념도 사례',
    n.name_kr = '개념도 사례',
    n.domain = 'ST';

MERGE (n:Concept {id: '독립변수'})
SET     n.name = '독립변수',
    n.name_kr = '독립변수',
    n.domain = 'ST';

MERGE (n:Concept {id: '종속변수'})
SET     n.name = '종속변수',
    n.name_kr = '종속변수',
    n.domain = 'ST';

MERGE (n:Concept {id: 'f-분포'})
SET     n.name = 'F-분포',
    n.name_kr = 'F-분포',
    n.domain = 'ST',
    n.definition = '2개 이상의 표본평균들이 동일한 모평균을 가진 집단에서 추출되었는지 아니면 서로 다른 모집단에서 추출된 것인지를 판단하기 위하여 이용';

MERGE (n:Concept {id: 'f_검정량'})
SET     n.name = 'F 검정량',
    n.name_kr = 'F 검정량',
    n.domain = 'ST',
    n.definition = '두 집단의 샘플 분산의 비율 - F 검정량이 커질수록 집단내 분산, 설명된 분산이 상대적으로 크다는 뜻이며 이는 그룹 간의 평균 차가 크지 않고 유사하다는 것을 의미';

MERGE (n:Concept {id: 'one_way_anova'})
SET     n.name = 'One-way ANOVA',
    n.name_kr = 'One-way ANOVA',
    n.domain = 'ST',
    n.aliases = ['One-way ANOVA'];

MERGE (n:Concept {id: 'f_value'})
SET     n.name = 'F-value',
    n.name_kr = 'F-value',
    n.domain = 'ST',
    n.definition = 'T 검정의 t-value와 유사한 역할로 0~1사이의 확률로 판단',
    n.aliases = ['F-value'];

// --- 관계 ---

MERGE (a:Concept {id: '분산분석,_one-way_anova,_two-way_anova'})
MERGE (b:Concept {id: 'anova'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '등분산성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '독립성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'sstr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'sse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'sst'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'mstr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'mse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '자유도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'f_통계량'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도_사례'})
MERGE (b:Concept {id: '독립변수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '개념도_사례'})
MERGE (b:Concept {id: '종속변수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '개념도_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '독립변수'})
MERGE (b:Concept {id: '종속변수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '독립변수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: '종속변수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'f-분포'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'f_검정량'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'one_way_anova'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Concept {id: 'f_value'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'analysis_of_variance'})
MERGE (b:Document {id: 'ST_032.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'anova'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산분석,_one-way_anova,_two-way_anova'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '등분산성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sstr'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sse'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sst'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mstr'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mse'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자유도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f_통계량'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도_사례'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립변수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속변수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f-분포'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f_검정량'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_way_anova'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'f_value'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_035: 관계검정, 교차분석, 상관분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_035'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: '관계검정,_교차분석,_상관분석'})
SET     n.name = '관계검정, 교차분석, 상관분석',
    n.name_kr = '관계검정, 교차분석, 상관분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '관계검정'})
SET     n.name = '관계검정',
    n.name_kr = '관계검정',
    n.domain = 'ST';

MERGE (n:Concept {id: '교차분석'})
SET     n.name = '교차분석',
    n.name_kr = '교차분석',
    n.domain = 'ST';

MERGE (n:Concept {id: 'correlation_analysis'})
SET     n.name = '상관분석',
    n.name_kr = '상관분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '선형성'})
SET     n.name = '선형성',
    n.name_kr = '선형성',
    n.domain = 'ST';

MERGE (n:Concept {id: '등분산성'})
SET     n.name = '등분산성',
    n.name_kr = '등분산성',
    n.domain = 'ST';

MERGE (n:Concept {id: '정규분포성'})
SET     n.name = '정규분포성',
    n.name_kr = '정규분포성',
    n.domain = 'ST';

MERGE (n:Concept {id: '독립표본'})
SET     n.name = '독립표본',
    n.name_kr = '독립표본',
    n.domain = 'ST';

MERGE (n:Concept {id: '스피어만/피어슨/켄달_상관_계수'})
SET     n.name = '스피어만/피어슨/켄달 상관 계수',
    n.name_kr = '스피어만/피어슨/켄달 상관 계수',
    n.domain = 'ST';

MERGE (n:Concept {id: 'regression_analysis'})
SET     n.name = '회귀분석',
    n.name_kr = '회귀분석',
    n.domain = 'ST',
    n.definition = '독립변수와 종속변수의 인과적 관계 분석';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'ST',
    n.definition = '카이제곱 - 기대빈도와 관찰빈도가 차이가 거의 없는 경우, 두 변인은 상호 독립적인 것으로 평가 E = 기대빈도 = (열의 합계*행의 합계)/전체 합계 C, R = 행,열에 속한 케이스의 총합 N = 케이스의 총합 O = 관찰 빈도 X²(카이제곱) = 관찰빈도와 기대빈도 간 차이를 수량화';

MERGE (n:Concept {id: '2)_가설_설정'})
SET     n.name = '2) 가설 설정',
    n.name_kr = '2) 가설 설정',
    n.domain = 'ST',
    n.definition = '귀무가설, 대립가설 설정';

MERGE (n:Concept {id: '3)_기대빈도_도출'})
SET     n.name = '3) 기대빈도 도출',
    n.name_kr = '3) 기대빈도 도출',
    n.domain = 'ST',
    n.definition = '각 셀에 두 변수가 결합된 기대빈도 도출 - 기대빈도 = (열의 합계*행의 합계)/전체합계';

MERGE (n:Concept {id: '4)_검증통계량_계산'})
SET     n.name = '4) 검증통계량 계산',
    n.name_kr = '4) 검증통계량 계산',
    n.domain = 'ST';

MERGE (n:Concept {id: '5)_기각역_설정'})
SET     n.name = '5) 기각역 설정',
    n.name_kr = '5) 기각역 설정',
    n.domain = 'ST',
    n.definition = '통계표에서 임계치를 찾아 기각역 설정(거의 대부분 우측검증만 사용)';

MERGE (n:Concept {id: '4)_검정'})
SET     n.name = '4) 검정',
    n.name_kr = '4) 검정',
    n.domain = 'ST',
    n.definition = '귀무가설의 기각여부 결정 - 기대와 관측빈도를 비교하여 두 변수가 독립성 혹은 연관성이 있는지를 판단';

MERGE (n:Concept {id: '기본_가정'})
SET     n.name = '기본 가정',
    n.name_kr = '기본 가정',
    n.domain = 'ST',
    n.definition = '정규 분포';

MERGE (n:Concept {id: '독립_표본'})
SET     n.name = '독립 표본',
    n.name_kr = '독립 표본',
    n.domain = 'ST',
    n.definition = '모집단에서 표본을 뽑을 때 다른 값에 종속되지 않도록 확률적으로 선택';

MERGE (n:Concept {id: '표현'})
SET     n.name = '표현',
    n.name_kr = '표현',
    n.domain = 'ST';

MERGE (n:Concept {id: 'r'})
SET     n.name = '상관계수',
    n.name_kr = '상관계수',
    n.domain = 'ST',
    n.definition = '변수간의 관계의 정도나 방향을 하나의 수치로 요약해 표시해 주는 지수임';

MERGE (n:Concept {id: '지수의_관계'})
SET     n.name = '지수의 관계',
    n.name_kr = '지수의 관계',
    n.domain = 'ST',
    n.definition = '양의 값';

MERGE (n:Concept {id: '음의_값'})
SET     n.name = '음의 값',
    n.name_kr = '음의 값',
    n.domain = 'ST',
    n.definition = '한 변수가 감소할 때 다른 변수는 증가하는 경우이며(반비례), 마찬가지로상관계수(r)이 -1에 가까울수록 두 변수 간 상관 관계가 강한 것을 나타냄';

MERGE (n:Concept {id: '0의_값'})
SET     n.name = '0의 값',
    n.name_kr = '0의 값',
    n.domain = 'ST',
    n.definition = '두 변수 간 상관 관계가 약함을 나타내고, 0인 경우에는 상관이 없음을 나타냄';

MERGE (n:Concept {id: '상관_계수'})
SET     n.name = '상관 계수',
    n.name_kr = '상관 계수',
    n.domain = 'ST',
    n.definition = '피어슨 (Pearson)';

MERGE (n:Concept {id: 'spearman'})
SET     n.name = 'Spearman',
    n.name_kr = '스피어만',
    n.domain = 'ST',
    n.definition = '피어슨 상관계수의 비모수 버전으로 서열척도로 측정된 자료 분석 - 스피어만 상관 계수( ρ : rho ) - 변수값 대신 순위로 바꿔서 이용하는 상관계수 (학교등급, 졸업학위 level) - 비모수 검정 (non-parametric test) -데이터 내 편차와 애러에 민감하며, 일반적으로 켄달 상관계수보다 높은 값을 가짐 - 적용 대상 : 서열 척도, 순',
    n.aliases = ['Spearman', '스피어만'];

MERGE (n:Concept {id: '분석_유형'})
SET     n.name = '분석 유형',
    n.name_kr = '분석 유형',
    n.domain = 'ST',
    n.definition = '단순 상관 분석';

MERGE (n:Concept {id: '다중_상관_분석'})
SET     n.name = '다중 상관 분석',
    n.name_kr = '다중 상관 분석',
    n.domain = 'ST',
    n.definition = '세 개 이상의 변수 간 상관 관계 분석';

MERGE (n:Concept {id: '편_상관_분석'})
SET     n.name = '편 상관 분석',
    n.name_kr = '편 상관 분석',
    n.domain = 'ST',
    n.definition = '다중 상관 분석에서 특정 변수 고정 후 나머지 변수의 관계 분석';

MERGE (n:Concept {id: '분산'})
SET     n.name = '분산',
    n.name_kr = '분산',
    n.domain = 'ST',
    n.definition = 'var(x, y = NULL, na.rm = FALSE)';

MERGE (n:Concept {id: 'covariance'})
SET     n.name = '공분산',
    n.name_kr = '공분산',
    n.domain = 'ST',
    n.definition = 'cov(x, y = NULL, use = ‘everything”, method = c(“pearson”, “kendall”, “spearman”))';

MERGE (n:Concept {id: '상관_관계'})
SET     n.name = '상관 관계',
    n.name_kr = '상관 관계',
    n.domain = 'ST',
    n.definition = 'cor(x, y = NULL, use = “everything”, mothod = c(“pearson”, “kendall”, “spearman”))';

MERGE (n:Concept {id: '공식'})
SET     n.name = '공식',
    n.name_kr = '공식',
    n.domain = 'ST',
    n.definition = 'Cov(X, Y) = E[(X - μ_X)(Y - μ_Y)] μ_X: X의 평균값 μ_Y: Y의 평균값 표현식: 이산형: 연속형:';

MERGE (n:Concept {id: '계산_방법'})
SET     n.name = '계산 방법',
    n.name_kr = '계산 방법',
    n.domain = 'ST',
    n.definition = '1. X와 Y의 각각의 값에서 평균을 뺀다. 2. 뺀 값들을 곱한다. 3. 곱한 값들의 평균을 구한다.';

MERGE (n:Concept {id: '해석'})
SET     n.name = '해석',
    n.name_kr = '해석',
    n.domain = 'ST',
    n.definition = '1. 공분산 값이 양수일 경우, X와 Y는 양의 관계를 가진다. 2. 공분산 값이 음수일 경우, X와 Y는 음의 관계를 가진다. 3. 공분산 값이 0일 경우, X와 Y는 서로 독립적이다.';

MERGE (n:Concept {id: '한계'})
SET     n.name = '한계',
    n.name_kr = '한계',
    n.domain = 'ST',
    n.definition = '1. X와 Y의 척도(scale)에 따라 공분산 값이 달라질 수 있다. 2. 공분산 값 자체로는 두 변수의 관계 정도를 파악하기 어렵다.';

// --- 관계 ---

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '교차분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'correlation_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '선형성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '등분산성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '정규분포성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '독립표본'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '스피어만/피어슨/켄달_상관_계수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'regression_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '2)_가설_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '3)_기대빈도_도출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '4)_검증통계량_계산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '5)_기각역_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '4)_검정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '기본_가정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '독립_표본'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'r'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '지수의_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '음의_값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '0의_값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '상관_계수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'spearman'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '분석_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '다중_상관_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '편_상관_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '분산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'covariance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '상관_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '공식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '계산_방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '해석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: '한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'correlation_analysis'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'regression_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'correlation_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'correlation_analysis'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'regression_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Concept {id: 'correlation_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Document {id: 'ST_035'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '관계검정,_교차분석,_상관분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계검정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교차분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correlation_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '등분산성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규분포성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립표본'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스피어만/피어슨/켄달_상관_계수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_가설_설정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_기대빈도_도출'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_검증통계량_계산'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_기각역_설정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_검정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_가정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립_표본'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표현'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'r'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지수의_관계'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음의_값'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0의_값'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상관_계수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spearman'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_유형'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_상관_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편_상관_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'covariance'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상관_관계'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공식'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산_방법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_036.1: 회귀 분석 (Regression Analysis)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_036.1'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'regression_analysis'})
SET     n.name = 'Regression Analysis',
    n.name_kr = '회귀 분석',
    n.domain = 'ST',
    n.aliases = ['Regression Analysis', '회귀 분석'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'ST';

MERGE (n:Concept {id: 'x'})
SET     n.name = '독립변수',
    n.name_kr = '독립변수',
    n.domain = 'ST';

MERGE (n:Concept {id: '종속변수'})
SET     n.name = '종속변수',
    n.name_kr = '종속변수',
    n.domain = 'ST';

MERGE (n:Concept {id: '단순회귀분석'})
SET     n.name = '단순회귀분석',
    n.name_kr = '단순회귀분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '다중회귀분석'})
SET     n.name = '다중회귀분석',
    n.name_kr = '다중회귀분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '선형회귀분석'})
SET     n.name = '선형회귀분석',
    n.name_kr = '선형회귀분석',
    n.domain = 'ST';

MERGE (n:Concept {id: 'logistic_regression'})
SET     n.name = '로지스틱 회귀분석',
    n.name_kr = '로지스틱 회귀분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '독립변수_수'})
SET     n.name = '독립변수 수',
    n.name_kr = '독립변수 수',
    n.domain = 'ST',
    n.definition = '단순회귀분석';

MERGE (n:Concept {id: '독립변수_척도'})
SET     n.name = '독립변수 척도',
    n.name_kr = '독립변수 척도',
    n.domain = 'ST',
    n.definition = '일반회귀분석';

MERGE (n:Concept {id: '더미변수_회귀분석'})
SET     n.name = '더미변수 회귀분석',
    n.name_kr = '더미변수 회귀분석',
    n.domain = 'ST',
    n.definition = '명목척도(성별, 지역, 직업 구분 등), 서열척도(직급, 선호순위 등)';

MERGE (n:Concept {id: '종속변수_기준'})
SET     n.name = '종속변수 기준',
    n.name_kr = '종속변수 기준',
    n.domain = 'ST',
    n.definition = '일변량 회귀분석';

MERGE (n:Concept {id: '다변량_회귀분석'})
SET     n.name = '다변량 회귀분석',
    n.name_kr = '다변량 회귀분석',
    n.domain = 'ST',
    n.definition = '분석 예측, 종속변수 다수';

MERGE (n:Concept {id: '예측/분류_모델'})
SET     n.name = '예측/분류 모델',
    n.name_kr = '예측/분류 모델',
    n.domain = 'ST',
    n.definition = '선형회귀분석';

MERGE (n:Concept {id: '분산형태_기준'})
SET     n.name = '분산형태 기준',
    n.name_kr = '분산형태 기준',
    n.domain = 'ST',
    n.definition = '분산 분석';

MERGE (n:Concept {id: '공분산_분석'})
SET     n.name = '공분산 분석',
    n.name_kr = '공분산 분석',
    n.domain = 'ST',
    n.definition = '독립변수의 질적, 양적 포함';

MERGE (n:Concept {id: '모델_선택'})
SET     n.name = '모델 선택',
    n.name_kr = '모델 선택',
    n.domain = 'ST',
    n.definition = '오차제곱합(SSE)';

MERGE (n:Concept {id: 'r_squared'})
SET     n.name = 'R-squared',
    n.name_kr = '결정계수',
    n.domain = 'ST',
    n.definition = 'R-squared 값이 클수록 좋은 모형 설명력',
    n.aliases = ['R-squared', '결정계수'];

MERGE (n:Concept {id: 'adj_r_squared'})
SET     n.name = 'adj-R-squared',
    n.name_kr = '수정된 결정계수',
    n.domain = 'ST',
    n.definition = '변수 수에 따라 R-squared가 크게 변화하지 않도록 보정한값',
    n.aliases = ['adj-R-squared', '수정된 결정계수'];

MERGE (n:Concept {id: '모델_검증'})
SET     n.name = '모델 검증',
    n.name_kr = '모델 검증',
    n.domain = 'ST',
    n.definition = 'F검정(F-test)';

MERGE (n:Concept {id: '변수_검증'})
SET     n.name = '변수 검증',
    n.name_kr = '변수 검증',
    n.domain = 'ST',
    n.definition = 't검정(t-test)';

MERGE (n:Concept {id: '선택_기준'})
SET     n.name = '선택 기준',
    n.name_kr = '선택 기준',
    n.domain = 'ST',
    n.definition = 'AIC(Akaike Information Criterion)';

MERGE (n:Concept {id: 'bayesian_information_criterion'})
SET     n.name = 'Bayesian Information Criterion',
    n.name_kr = 'BIC',
    n.domain = 'ST',
    n.definition = 'AIC와 유사, 변수 수가 크면 패널티 더 부여하는 선택 기준',
    n.aliases = ['Bayesian Information Criterion', 'BIC'];

MERGE (n:Concept {id: '필터_방식'})
SET     n.name = '필터 방식 (정적 선택)',
    n.name_kr = '필터 방식 (정적 선택)',
    n.domain = 'ST',
    n.definition = '상관관계 분석';

MERGE (n:Concept {id: '단일변수_기반'})
SET     n.name = '단일변수 기반',
    n.name_kr = '단일변수 기반',
    n.domain = 'ST',
    n.definition = '각 변수 독립적 평가 기반 예측력 낮은 변수 제거 방식 - 단순선형회귀모형, t-검정, F-검정, AIC, BIC, RFE 방법, ANOVA 분석, Lasso 회귀모형을 활용';

MERGE (n:Concept {id: '래퍼_방식'})
SET     n.name = '래퍼 방식 (동적 선택)',
    n.name_kr = '래퍼 방식 (동적 선택)',
    n.domain = 'ST',
    n.definition = '전진 선택법';

MERGE (n:Concept {id: '후진_제거법'})
SET     n.name = '후진 제거법',
    n.name_kr = '후진 제거법',
    n.domain = 'ST',
    n.definition = '모든 변수 선택 후 불필요한 변수 단계적 제거 및 최적 변수 조합';

MERGE (n:Concept {id: '단계적_선택법'})
SET     n.name = '단계적 선택법',
    n.name_kr = '단계적 선택법',
    n.domain = 'ST',
    n.definition = '전진 선택법과 후진 제거법 혼합 방식 - 모든변수 포함 - 가장 영향력 없는 변수 삭제 또는 좋은 변수 추가 - 전체 변수 대상 최적 변수 조합 탐색 방식';

MERGE (n:Concept {id: '임베디드_방식'})
SET     n.name = '임베디드 방식 (통합 선택)',
    n.name_kr = '임베디드 방식 (통합 선택)',
    n.domain = 'ST',
    n.definition = 'Lasso';

MERGE (n:Concept {id: 'ridge'})
SET     n.name = 'Ridge',
    n.name_kr = 'Ridge',
    n.domain = 'ST',
    n.definition = 'L2 규제 사용 - 모든 변수를 함께 평가 - 예측력 낮은 변수의 계수를 0에 가깝게 만들어 제거',
    n.aliases = ['Ridge'];

MERGE (n:Concept {id: 'elasticnet'})
SET     n.name = 'ElasticNet',
    n.name_kr = 'ElasticNet',
    n.domain = 'ST',
    n.definition = '변수선택 가능, 정규화, L1/L2',
    n.aliases = ['ElasticNet'];

MERGE (n:Concept {id: '주요지표'})
SET     n.name = '주요지표',
    n.name_kr = '주요지표',
    n.domain = 'ST',
    n.definition = 'AIC (Akaike information criterion)';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'ST',
    n.definition = '전진선택법 (Forward selection)';

MERGE (n:Concept {id: 'backward_elimination'})
SET     n.name = 'backward elimination',
    n.name_kr = '후진제거법',
    n.domain = 'ST',
    n.definition = '독립변수 후보 모두를 포함한 모형에서 출발해 제곱합의 기준으로 가장 작은 영향을 변수부터 하나씩 제거하면서 변수를 선택하는 기법 - 더 이상 유의하지 않은 변수가 없을 때까지 설명변수를 제거, 모델 선택 - 전체 변수들의 정보를 이용 - 변수가 많은 경우 분석 어려움',
    n.aliases = ['backward elimination', '후진제거법'];

MERGE (n:Concept {id: 'stepwise_method'})
SET     n.name = 'Stepwise method',
    n.name_kr = '단계별 선택방법',
    n.domain = 'ST',
    n.definition = '전진선택법에 의해 변수를 추가하면서 새롭게 추가된 변수로 인해 기존 변수가 그 중요도가 약화되면 해당 변수를 제거하는 기법 - 단계별로 추가 또는 제거되는 변수의 여부를 검토해 더 이상 선택할 변수가 없을 때 중단. - 전진 선택법과 후진 제거법의 장점을 취합한 기법',
    n.aliases = ['Stepwise method', '단계별 선택방법'];

MERGE (n:Concept {id: 'correlation'})
SET     n.name = '상관계수',
    n.name_kr = '상관계수',
    n.domain = 'ST',
    n.definition = '독립변수들간의 상관계수 도출';

MERGE (n:Concept {id: 'variance_inflation_factor,_vif'})
SET     n.name = '분산팽창요인',
    n.name_kr = '분산팽창요인',
    n.domain = 'ST',
    n.definition = '분산팽창요인(Variance Inflation Factor, VIF)를 구하여 이 값이 10을 넘는다면 보통 다중공선성의 문제가 있다고 봄';

MERGE (n:Concept {id: '확인_기법'})
SET     n.name = '확인 기법',
    n.name_kr = '확인 기법',
    n.domain = 'ST';

MERGE (n:Concept {id: '상세설명'})
SET     n.name = '상세설명',
    n.name_kr = '상세설명',
    n.domain = 'ST';

MERGE (n:Concept {id: '문제_확인'})
SET     n.name = '문제 확인',
    n.name_kr = '문제 확인',
    n.domain = 'ST',
    n.definition = '분산팽창요인(VIF, Variance Inflation Factor) 계산';

MERGE (n:Concept {id: '독립변수간_상관관계_분석'})
SET     n.name = '독립변수간 상관관계 분석',
    n.name_kr = '독립변수간 상관관계 분석',
    n.domain = 'ST',
    n.definition = '독립변수간 상관관계 분석을 하여 상관관계를 확인 - 독립변수간의 산점도 그래프를 확인 - 상관계수가 0.9 이상이면 다중공선성 문제';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'ST',
    n.definition = '선행연구 수행';

MERGE (n:Concept {id: '문제_독립변수제거'})
SET     n.name = '문제 독립변수제거',
    n.name_kr = '문제 독립변수제거',
    n.domain = 'ST',
    n.definition = '분산팽창요인의 값이 10이상인 독립변수를 제거';

MERGE (n:Concept {id: '자료의_변경'})
SET     n.name = '자료의 변경',
    n.name_kr = '자료의 변경',
    n.domain = 'ST',
    n.definition = '관측값을 늘려 표본크기를 증가 - 원자료에 대해 차분 혹은 로그변환을 하거나 명목변수는 실질변수를 사용';

MERGE (n:Concept {id: '독립변수_변경_및_추가'})
SET     n.name = '독립변수 변경 및 추가',
    n.name_kr = '독립변수 변경 및 추가',
    n.domain = 'ST',
    n.definition = '변인이 다르게 구분될 수 있게 하는 독립변수를 변경 및 추가하여 상관도 값 하락유도';

MERGE (n:Concept {id: '해결방법'})
SET     n.name = '해결방법',
    n.name_kr = '해결방법',
    n.domain = 'ST';

MERGE (n:Concept {id: '로지스틱_회귀_분석'})
SET     n.name = '로지스틱 회귀 분석',
    n.name_kr = '로지스틱 회귀 분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '다중공선성_방지기준'})
SET     n.name = '다중공선성 방지기준',
    n.name_kr = '다중공선성 방지기준',
    n.domain = 'ST',
    n.definition = 'Ridge 회귀분석';

MERGE (n:Metric {id: '정확도_향상기준'})
SET     n.name = '정확도 향상기준',
    n.name_kr = '정확도 향상기준',
    n.domain = 'ST',
    n.definition = 'Lasso 회귀분석';

MERGE (n:Concept {id: '하이브리드_회귀법_구현기준'})
SET     n.name = '하이브리드 회귀법 구현기준',
    n.name_kr = '하이브리드 회귀법 구현기준',
    n.domain = 'ST',
    n.definition = 'ElasticNet 회귀분석';

// --- 관계 ---

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'x'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '종속변수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '단순회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '다중회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '선형회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'logistic_regression'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '독립변수_수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '독립변수_척도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '더미변수_회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '종속변수_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '다변량_회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '예측/분류_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '분산형태_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '공분산_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '모델_선택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'r_squared'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'adj_r_squared'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '모델_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '변수_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '선택_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'bayesian_information_criterion'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '필터_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '단일변수_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '래퍼_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '후진_제거법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '단계적_선택법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '임베디드_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'ridge'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'elasticnet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '주요지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'backward_elimination'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'stepwise_method'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'correlation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: 'variance_inflation_factor,_vif'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '확인_기법'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '확인_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '문제_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '독립변수간_상관관계_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '문제_독립변수제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '자료의_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '독립변수_변경_및_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '해결방법'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '해결방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '다중회귀분석'})
MERGE (b:Concept {id: '로지스틱_회귀_분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '다중회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '로지스틱_회귀_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '다중공선성_방지기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Metric {id: '정확도_향상기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Concept {id: '하이브리드_회귀법_구현기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Document {id: 'ST_036.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'regression_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'x'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속변수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립변수_수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립변수_척도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '더미변수_회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속변수_기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다변량_회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예측/분류_모델'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산형태_기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공분산_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델_선택'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'r_squared'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adj_r_squared'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델_검증'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변수_검증'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선택_기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bayesian_information_criterion'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필터_방식'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단일변수_기반'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '래퍼_방식'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후진_제거법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계적_선택법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임베디드_방식'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ridge'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'elasticnet'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요지표'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backward_elimination'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stepwise_method'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correlation'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'variance_inflation_factor,_vif'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확인_기법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세설명'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_확인'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립변수간_상관관계_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_독립변수제거'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료의_변경'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독립변수_변경_및_추가'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로지스틱_회귀_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중공선성_방지기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '정확도_향상기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_회귀법_구현기준'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_036.2: 선형 회귀분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_036.2'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'linear_regression'})
SET     n.name = 'Linear Regression',
    n.name_kr = '선형 회귀분석',
    n.domain = 'ST',
    n.aliases = ['선형 회귀분석'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'ST';

MERGE (n:Concept {id: '로지스틱_회귀분석'})
SET     n.name = '로지스틱 회귀분석',
    n.name_kr = '로지스틱 회귀분석',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Concept {id: '로지스틱_회귀분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Concept {id: '로지스틱_회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Concept {id: '로지스틱_회귀분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Concept {id: '로지스틱_회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Document {id: 'ST_036.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'linear_regression'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로지스틱_회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_036.3: 로지스틱 회귀분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_036.3'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'logistic_regression'})
SET     n.name = 'Logistic Regression',
    n.name_kr = '로지스틱 회귀분석',
    n.domain = 'ST',
    n.aliases = ['로지스틱 회귀분석'];

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'ST';

MERGE (n:Concept {id: '용어'})
SET     n.name = '용어',
    n.name_kr = '용어',
    n.domain = 'ST',
    n.definition = '승산비(odds)';

MERGE (n:Concept {id: 'log'})
SET     n.name = 'Log',
    n.name_kr = 'Log',
    n.domain = 'ST',
    n.definition = '(-∞, ∞)의 값 가능하여 회귀 모형이 성립이 가능',
    n.aliases = ['Log'];

MERGE (n:Concept {id: 'logit'})
SET     n.name = 'Logit',
    n.name_kr = 'Logit',
    n.domain = 'ST',
    n.definition = 'Log 연산을 통한 Logit 획득(0 ~ 1)',
    n.aliases = ['Logit'];

MERGE (n:Concept {id: '가정'})
SET     n.name = '가정',
    n.name_kr = '가정',
    n.domain = 'ST',
    n.definition = '독립 변수';

MERGE (n:Concept {id: '종속_변수'})
SET     n.name = '종속 변수',
    n.name_kr = '종속 변수',
    n.domain = 'ST',
    n.definition = '일반적으로 베르누이 분포의 데이터로서 표현. 각 종속 변수는 관찰되지 않은 확률 pi 에 의해 결정';

MERGE (n:Concept {id: '선형_예측_변수'})
SET     n.name = '선형 예측 변수',
    n.name_kr = '선형 예측 변수',
    n.domain = 'ST',
    n.definition = '기본적인 접근은 이미 개발되어 있는 선형 회귀의 방식을 사용. 즉, 독립 변수의 선형 결합과 회귀 계수에 관한 선형 예측 함수에서 비롯됨';

MERGE (n:Concept {id: '로지스틱_함수_유도'})
SET     n.name = '로지스틱 함수 유도',
    n.name_kr = '로지스틱 함수 유도',
    n.domain = 'ST',
    n.definition = '결과 값의 범위가 [-∞,∞]인 선형 회귀의 식을 결과 값의 범위가 [0,1]이 되도록 로짓 변환을 수행';

MERGE (n:Concept {id: '서수_로지스틱_회귀'})
SET     n.name = '서수 로지스틱 회귀',
    n.name_kr = '서수 로지스틱 회귀',
    n.domain = 'ST',
    n.definition = '다수의 범주를 가지면서 범주에 순서가 존재';

MERGE (n:Concept {id: '분석_과정'})
SET     n.name = '분석 과정',
    n.name_kr = '분석 과정',
    n.domain = 'ST',
    n.definition = '1단계';

MERGE (n:Concept {id: '2단계'})
SET     n.name = '2단계',
    n.name_kr = '2단계',
    n.domain = 'ST',
    n.definition = '추정확률 분류 기준값(cut-off) 적용 특정범주로 분류 예) P(Y=1) ≥ 0.5 집단 1로 분류 P(Y=1) < 0.5 집단 0으로 분류';

MERGE (n:Concept {id: '다중회귀분석'})
SET     n.name = '다중회귀분석',
    n.name_kr = '다중회귀분석',
    n.domain = 'ST';

MERGE (n:Concept {id: '로지스틱_회귀_분석'})
SET     n.name = '로지스틱 회귀 분석',
    n.name_kr = '로지스틱 회귀 분석',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '용어'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: 'log'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: 'logit'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '가정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '종속_변수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '선형_예측_변수'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '로지스틱_함수_유도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '서수_로지스틱_회귀'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '분석_과정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '2단계'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '다중회귀분석'})
MERGE (b:Concept {id: '로지스틱_회귀_분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '다중회귀분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Concept {id: '로지스틱_회귀_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Document {id: 'ST_036.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'logistic_regression'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용어'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'log'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'logit'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속_변수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형_예측_변수'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로지스틱_함수_유도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서수_로지스틱_회귀'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_과정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2단계'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로지스틱_회귀_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_036.4: 다차원척도법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_036.4'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: '다차원척도법'})
SET     n.name = '다차원척도법',
    n.name_kr = '다차원척도법',
    n.domain = 'ST';

MERGE (n:Concept {id: '통계학'})
SET     n.name = '통계학',
    n.name_kr = '통계학',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: '다차원척도법'})
MERGE (b:Concept {id: '통계학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '다차원척도법'})
MERGE (b:Document {id: 'ST_036.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '다차원척도법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계학'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_036.5: 판별분석(discriminant analysis)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_036.5'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'discriminant_analysis'})
SET     n.name = 'discriminant analysis',
    n.name_kr = '판별분석',
    n.domain = 'ST',
    n.aliases = ['discriminant analysis', '판별분석'];

MERGE (n:Concept {id: '관계검정'})
SET     n.name = '관계검정',
    n.name_kr = '관계검정',
    n.domain = 'ST';

MERGE (n:Concept {id: '정규분포의_공분산행렬에_따른_구분'})
SET     n.name = '정규분포의 공분산행렬에 따른 구분',
    n.name_kr = '정규분포의 공분산행렬에 따른 구분',
    n.domain = 'ST',
    n.definition = '선형판별분석 LDA(Linear DA)';

MERGE (n:Concept {id: 'quadratic_da'})
SET     n.name = 'Quadratic DA',
    n.name_kr = '이차판별분석 QDA',
    n.domain = 'ST',
    n.definition = '정규분포의 분산-공분산 행렬이 범주 별로 다른 경우',
    n.aliases = ['Quadratic DA', '이차판별분석 QDA'];

MERGE (n:Concept {id: '종속변수의_집단수에_따른_구분'})
SET     n.name = '종속변수의 집단수에 따른 구분',
    n.name_kr = '종속변수의 집단수에 따른 구분',
    n.domain = 'ST',
    n.definition = '판별분석 (discriminant analysis)';

MERGE (n:Concept {id: '다중판별분석'})
SET     n.name = '다중판별분석 (multiple DA: MDA)',
    n.name_kr = '다중판별분석 (multiple DA: MDA)',
    n.domain = 'ST',
    n.definition = '종속변수의 집단수가 3개 이상인 경우';

// --- 관계 ---

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Concept {id: '정규분포의_공분산행렬에_따른_구분'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Concept {id: 'quadratic_da'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Concept {id: '종속변수의_집단수에_따른_구분'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Concept {id: '다중판별분석'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Document {id: 'ST_036.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'discriminant_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계검정'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규분포의_공분산행렬에_따른_구분'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quadratic_da'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '종속변수의_집단수에_따른_구분'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중판별분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_037.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_037.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_037.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_037.2'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_038: SEMMA분석 방법론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_038'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'semma분석_방법론'})
SET     n.name = 'SEMMA분석 방법론',
    n.name_kr = 'SEMMA분석 방법론',
    n.domain = 'ST';

MERGE (n:Concept {id: '데이터분석_방법론'})
SET     n.name = '데이터분석 방법론',
    n.name_kr = '데이터분석 방법론',
    n.domain = 'ST';

MERGE (n:Concept {id: 'sample'})
SET     n.name = 'Sample',
    n.name_kr = 'Sample',
    n.domain = 'ST',
    n.aliases = ['Sample'];

MERGE (n:Concept {id: 'explore'})
SET     n.name = 'Explore',
    n.name_kr = 'Explore',
    n.domain = 'ST',
    n.aliases = ['Explore'];

MERGE (n:Concept {id: 'modify'})
SET     n.name = 'Modify',
    n.name_kr = 'Modify',
    n.domain = 'ST',
    n.aliases = ['Modify'];

MERGE (n:Concept {id: 'model'})
SET     n.name = 'Model',
    n.name_kr = 'Model',
    n.domain = 'ST',
    n.aliases = ['Model'];

MERGE (n:Concept {id: 'assess'})
SET     n.name = 'Assess',
    n.name_kr = 'Assess',
    n.domain = 'ST',
    n.aliases = ['Assess'];

// --- 관계 ---

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Concept {id: 'sample'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Concept {id: 'explore'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Concept {id: 'modify'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Concept {id: 'model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Concept {id: 'assess'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Document {id: 'ST_038'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'semma분석_방법론'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터분석_방법론'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sample'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'explore'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modify'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'model'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'assess'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_039.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_039.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_040.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_040.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_040.2: 데이터분석(Data analysis)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_040.2'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'data_analysis'})
SET     n.name = 'Data analysis',
    n.name_kr = '데이터분석',
    n.domain = 'ST',
    n.aliases = ['Data analysis', '데이터분석'];

MERGE (n:Concept {id: '회귀분석'})
SET     n.name = '회귀분석',
    n.name_kr = '회귀분석',
    n.domain = 'ST',
    n.definition = '선형회귀 (Linear Regression)';

MERGE (n:Concept {id: 'penalized_linear_regression'})
SET     n.name = 'Penalized Linear Regression',
    n.name_kr = '제약선형회귀',
    n.domain = 'ST',
    n.definition = '변수가 많은 경우의 선형회귀 분석시 과적합 발생을 방지 - 회귀계수에 제약조건 추가하여 계수가 0으로 수렴되게 진행 - Ridge(릿지), Lasso(라쏘), Elastic Net(엘라스틱넷) Regression',
    n.aliases = ['Penalized Linear Regression', '제약선형회귀'];

MERGE (n:Concept {id: '분류분석'})
SET     n.name = '분류분석',
    n.name_kr = '분류분석',
    n.domain = 'ST',
    n.definition = '로지스틱 회귀 (Logistic Regression)';

MERGE (n:Concept {id: 'decision_tree'})
SET     n.name = 'Decision Tree',
    n.name_kr = '의사결정나무',
    n.domain = 'ST',
    n.definition = '데이터로부터 트리 구조의 일반화된 지식을 추출 - 데이터를 나누는 분기점을 노드(Node)라 하며, 불순도(Impurity) 측정하여 노드를 분할',
    n.aliases = ['Decision Tree', '의사결정나무'];

MERGE (n:Method {id: 'support_vector_machine'})
SET     n.name = 'Support Vector Machine',
    n.name_kr = 'SVM',
    n.domain = 'ST',
    n.definition = '데이터를 분리할 수 있는 최적의 경계를 찾아 나누는 방법 - 데이터분류의 기준이 되는 경계선(Hyperplane)과 경계와 가장 가까운 데이터의 분류 경계(Margin)을 기반으로 분류',
    n.aliases = ['Support Vector Machine', 'SVM'];

MERGE (n:Concept {id: '계층적_분석'})
SET     n.name = '계층적 분석',
    n.name_kr = '계층적 분석',
    n.domain = 'ST',
    n.definition = '계층적 군집분석';

MERGE (n:Method {id: '비계층적_분석'})
SET     n.name = '비계층적 분석',
    n.name_kr = '비계층적 분석',
    n.domain = 'ST',
    n.definition = 'K-Means Clustering';

MERGE (n:Concept {id: 'mean_shift_clustering'})
SET     n.name = 'Mean-Shift Clustering',
    n.name_kr = '평균점 이동 군집분석',
    n.domain = 'ST',
    n.definition = '임의의 초기점 선택하여 일정 영역 내 포함된 모든 데이터의 평균점 계산하고 이를 새로운 중심점으로 지정 - 슬라이딩 윈도우 기반으로 계속 이동하면서 군집 생성',
    n.aliases = ['Mean-Shift Clustering', '평균점 이동 군집분석'];

MERGE (n:Method {id: 'dbscan'})
SET     n.name = 'DBSCAN',
    n.name_kr = 'DBSCAN',
    n.domain = 'ST',
    n.definition = '밀도 접근성을 활용한 Core기반 군집화 기법 - 밀도 있게 연결도어 있는 데이터이 집합은 동일한 군집',
    n.aliases = ['DBSCAN'];

MERGE (n:Method {id: 'expectation_maximization'})
SET     n.name = 'Expectation Maximization',
    n.name_kr = 'EM알고리즘',
    n.domain = 'ST',
    n.definition = 'K-Means 절차와 유사. 확률분포를 도입하여 군집을 수행 - E-step에서 평균값 계산, M-step에서 확률값 계산을 반복',
    n.aliases = ['Expectation Maximization', 'EM알고리즘'];

// --- 관계 ---

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: '회귀분석'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: 'penalized_linear_regression'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: '분류분석'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: 'decision_tree'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Method {id: 'support_vector_machine'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: '계층적_분석'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Method {id: '비계층적_분석'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Concept {id: 'mean_shift_clustering'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Method {id: 'dbscan'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Method {id: 'expectation_maximization'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Document {id: 'ST_040.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회귀분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'penalized_linear_regression'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분류분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'support_vector_machine'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계층적_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '비계층적_분석'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mean_shift_clustering'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'dbscan'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'expectation_maximization'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_040.3: 데이터 전처리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_040.3'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'data_preprocessing'})
SET     n.name = 'Data Preprocessing',
    n.name_kr = '데이터 전처리',
    n.domain = 'ST',
    n.aliases = ['데이터 전처리'];

MERGE (n:Concept {id: '데이터전처리'})
SET     n.name = '데이터전처리',
    n.name_kr = '데이터전처리',
    n.domain = 'ST';

MERGE (n:Concept {id: '표준화'})
SET     n.name = '표준화',
    n.name_kr = '표준화',
    n.domain = 'ST';

MERGE (n:Concept {id: 'normalization'})
SET     n.name = '정규화',
    n.name_kr = '정규화',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: '표준화'})
MERGE (b:Concept {id: 'normalization'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'data_preprocessing'})
MERGE (b:Concept {id: '표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_preprocessing'})
MERGE (b:Concept {id: 'normalization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_preprocessing'})
MERGE (b:Document {id: 'ST_040.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_preprocessing'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터전처리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'normalization'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_040.4: 이상값, 결측값
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_040.4'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: '이상값,_결측값'})
SET     n.name = '이상값, 결측값',
    n.name_kr = '이상값, 결측값',
    n.domain = 'ST';

MERGE (n:Concept {id: '통계학'})
SET     n.name = '통계학',
    n.name_kr = '통계학',
    n.domain = 'ST';

MERGE (n:Concept {id: '제거_필요'})
SET     n.name = '제거 필요',
    n.name_kr = '제거 필요',
    n.domain = 'ST',
    n.definition = '잘못 입력된 데이터';

MERGE (n:Concept {id: '부합하지_않는_데이터'})
SET     n.name = '부합하지 않는 데이터',
    n.name_kr = '부합하지 않는 데이터',
    n.domain = 'ST',
    n.definition = '의도하지 않게 입력되었으나, 분석 목적에도 부합하지 않음';

MERGE (n:Concept {id: '제거_불필요'})
SET     n.name = '제거 불필요',
    n.name_kr = '제거 불필요',
    n.domain = 'ST',
    n.definition = '분석 필요 데이터';

MERGE (n:Concept {id: '의도된_이상값'})
SET     n.name = '의도된 이상값',
    n.name_kr = '의도된 이상값',
    n.domain = 'ST',
    n.definition = '과적합을 방지하기 위해 주입한 의도된 이상값';

MERGE (n:Concept {id: '검출_방법'})
SET     n.name = '검출 방법',
    n.name_kr = '검출 방법',
    n.domain = 'ST',
    n.definition = 'Boxplot 이용';

MERGE (n:Concept {id: '정규분포_이용'})
SET     n.name = '정규분포 이용',
    n.name_kr = '정규분포 이용',
    n.domain = 'ST',
    n.definition = '정규분포에서 97.5% 이상 또는 2.5%의 이하에 포함되는 값을 판별';

MERGE (n:Concept {id: 'likelihood'})
SET     n.name = 'Likelihood',
    n.name_kr = 'Likelihood',
    n.domain = 'ST',
    n.definition = '베이즈 정리에 의해 데이터 세트가 가지는 두가지 샘플(정상, 이상)에 대한 발생 확률로 판별',
    n.aliases = ['Likelihood'];

MERGE (n:Concept {id: 'nearest_neighbor'})
SET     n.name = 'Nearest neighbor',
    n.name_kr = 'NN',
    n.domain = 'ST',
    n.definition = '모든 데이터 쌍의 거리를 계산하여 검출',
    n.aliases = ['Nearest neighbor', 'NN'];

MERGE (n:Concept {id: 'density'})
SET     n.name = 'Density',
    n.name_kr = 'Density',
    n.domain = 'ST',
    n.definition = '측정값의 LOF(Local Outlier Factor; 데이터가 가지는 상대적인 밀도까지 고려한 이상치 탐지 기법)를 계산하여 값이 가장 큰 데이터를 이상값으로 추정. 밀도에서 가장 먼 데이터 검출',
    n.aliases = ['Density'];

MERGE (n:Concept {id: 'clustering'})
SET     n.name = 'Clustering',
    n.name_kr = 'Clustering',
    n.domain = 'ST',
    n.definition = '여러 클러스터로 구분한 후 작은 크기의 클러스터나 클러스터 사이의 거리가 먼 경우 이상값으로 판별',
    n.aliases = ['Clustering'];

MERGE (n:Concept {id: '처리_방법'})
SET     n.name = '처리 방법',
    n.name_kr = '처리 방법',
    n.domain = 'ST',
    n.definition = '하한/상한값 대체';

MERGE (n:Concept {id: '표준편차_대체'})
SET     n.name = '표준편차 대체',
    n.name_kr = '표준편차 대체',
    n.domain = 'ST',
    n.definition = '평균의 표준편차로 대체';

MERGE (n:Concept {id: '절대_편차_대체'})
SET     n.name = '절대 편차 대체',
    n.name_kr = '절대 편차 대체',
    n.domain = 'ST',
    n.definition = '평균의 절대 편차로 대체(중위수로부터 n편차 큰 값)';

MERGE (n:Concept {id: '극_백분위수_대체'})
SET     n.name = '극 백분위수 대체',
    n.name_kr = '극 백분위수 대체',
    n.domain = 'ST',
    n.definition = '극 백분위수로 대체(상위 p번째 백분위수보다 큰 값)';

MERGE (n:Concept {id: '제거'})
SET     n.name = '제거',
    n.name_kr = '제거',
    n.domain = 'ST',
    n.definition = '대부분의 이상값은 제거하여 데이터 분석 수행';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'ST',
    n.definition = '참여자 요인';

MERGE (n:Concept {id: '설계_요인'})
SET     n.name = '설계 요인',
    n.name_kr = '설계 요인',
    n.domain = 'ST',
    n.definition = '어떤 설문이 너무 많은 참여자의 시간을 요구하는 경우';

MERGE (n:Concept {id: '참여자와_설계의_상호작용_요인'})
SET     n.name = '참여자와 설계의 상호작용 요인',
    n.name_kr = '참여자와 설계의 상호작용 요인',
    n.domain = 'ST',
    n.definition = '특정 성향이 있는 사람이 답변하지 못하는 질문을 포함하는 경우';

MERGE (n:Concept {id: '결측_매커니즘'})
SET     n.name = '결측 매커니즘',
    n.name_kr = '결측 매커니즘',
    n.domain = 'ST',
    n.definition = '완전임의결측(MCAR)';

MERGE (n:Concept {id: 'mar'})
SET     n.name = 'MAR',
    n.name_kr = '임의결측',
    n.domain = 'ST',
    n.definition = 'Missing At Random. 어떤 변수 상의 결측 데이터가 관측된 다른 변수와 연관되어 있지만, 그 자체의 비 관측된 값들과는 연관되어 있지 않는 결측 데이터 Ex) 여자는 몸무게를 적지 않을 확률이 높지만, 여자인것과 몸무게는 연관이 없음',
    n.aliases = ['MAR', '임의결측'];

MERGE (n:Concept {id: 'nmar'})
SET     n.name = 'NMAR',
    n.name_kr = '비임의결측',
    n.domain = 'ST',
    n.definition = 'Not Missing At Random - 어떤 변수의 결측 데이터가 완전 무작위 or 무작위 결측이 아닌 결측 데이터 ex) 소득이 적은 사람이 설문에 자기 소득을 밝히기 싫어함 Ex) 몸무게가 많이 나가는 사람은, 몸무게를 적지 않을 확률이 높음. 결측치인 경우 몸무게가 평균 이상일 것이라고 예상 가능.',
    n.aliases = ['NMAR', '비임의결측'];

MERGE (n:Concept {id: 'deletion'})
SET     n.name = '제거법',
    n.name_kr = '제거법',
    n.domain = 'ST',
    n.definition = '완전 제거법';

MERGE (n:Concept {id: '한쌍_제거법'})
SET     n.name = '한쌍 제거법',
    n.name_kr = '한쌍 제거법',
    n.domain = 'ST',
    n.definition = '상관관계 분석과 같이 두 변수 간의 관계를 분석하는 경우 분석의 대상이 되는 두 변수 모두 관측된 경우만 분석에 포함하는 방식';

MERGE (n:Concept {id: 'imputation'})
SET     n.name = '대체법',
    n.name_kr = '대체법',
    n.domain = 'ST',
    n.definition = '평균 대체법';

MERGE (n:Concept {id: '회귀_대체법'})
SET     n.name = '회귀 대체법',
    n.name_kr = '회귀 대체법',
    n.domain = 'ST',
    n.definition = '결측된 변수의 관측된 값을 종속변수로 하고, 나머지 변수를 설명변수로 하여 추정한 회귀식을 활용하여 결측된 변수의 결측치를 추정하여 대체';

MERGE (n:Concept {id: '확률적_회귀대체법'})
SET     n.name = '확률적 회귀대체법',
    n.name_kr = '확률적 회귀대체법',
    n.domain = 'ST',
    n.definition = '결측변수의 결측치의 추정에 일정한 확률오차항(random error term)을 포함시켜 변동성(variability)을 고려하는 방식';

MERGE (n:Concept {id: '행렬기반_대체법'})
SET     n.name = '행렬기반 대체법',
    n.name_kr = '행렬기반 대체법',
    n.domain = 'ST',
    n.definition = '행렬을 분해 및 재구성함으로써 데이터 간 상관관계를 도출하여 결측값을 대치하는 방법';

MERGE (n:Concept {id: 'interpolation_method'})
SET     n.name = 'Interpolation Method',
    n.name_kr = '보삽법',
    n.domain = 'ST',
    n.definition = '시계열 자료와 누락된 데이터 보완함 - 인구나 정부 예산처럼 심한 변동을 나타내지 않는 변수의 추정 시 유용함',
    n.aliases = ['Interpolation Method', '보삽법'];

MERGE (n:Concept {id: 'estimating_values_approach'})
SET     n.name = 'Estimating Values Approach',
    n.name_kr = '평가치 추정법',
    n.domain = 'ST',
    n.definition = '작은 오차만을 감수하면서 원래의 값 추정 - 맥락적 사정이나 행렬식의 자료를 고려하여 추정',
    n.aliases = ['Estimating Values Approach', '평가치 추정법'];

MERGE (n:Concept {id: '처리방안'})
SET     n.name = '처리방안',
    n.name_kr = '처리방안',
    n.domain = 'ST';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'ST';

MERGE (n:Concept {id: 'missing_value'})
SET     n.name = '결측값',
    n.name_kr = '결측값',
    n.domain = 'ST';

MERGE (n:Concept {id: 'outlier'})
SET     n.name = '이상값',
    n.name_kr = '이상값',
    n.domain = 'ST';

MERGE (n:Concept {id: 'completes_analysis'})
SET     n.name = '완전 분석법',
    n.name_kr = '완전 분석법',
    n.domain = 'ST',
    n.definition = '불완전 자료는 모두 무시하고 완전하게 관측된 자료만 사용하여 분석하는 방법 - 분석은 쉽지만 부분적으로 관측된 자료가 무시되어 효율성이 상실되고 통계적 추론의 타당성 문제가 발생';

MERGE (n:Concept {id: '평균_대치법'})
SET     n.name = '평균 대치법',
    n.name_kr = '평균 대치법',
    n.domain = 'ST',
    n.definition = '관측 또는 실험되어 얻어진 자료의 평균값으로 결측값을 대치해서 불완전한 자료를 완전한 자료로 만드는 방법 - 비 조건부 평균 대치법: 관측값이 빠져있을 경우 평균으로 결측값을 대치하는 방법 - 조건부 평균 대치법: 회귀 분석을 활용하여 결측값을 대치하는 방법';

MERGE (n:Concept {id: 'cold_deck'})
SET     n.name = '콜드덱(Cold-Deck) 대체',
    n.name_kr = '콜드덱(Cold-Deck) 대체',
    n.domain = 'ST',
    n.definition = '핫덱과 비슷하나 대체할 자료를 현재 진행 중인 연구에서 얻는 것이 아니라 외부 출처 또는 이전의 비슷한 연구에서 가져오는 방법';

MERGE (n:Concept {id: '혼합_방법'})
SET     n.name = '혼합 방법',
    n.name_kr = '혼합 방법',
    n.domain = 'ST',
    n.definition = '몇 가지 다른 방법을 혼합하는 방법 - 예를 들어, 회귀 대체를 이용하여 예측값을 얻고 핫덱 방법을 이용하여 잔차를 얻어 두 값을 더하는 방법';

MERGE (n:Concept {id: '단순_대치법'})
SET     n.name = '단순 대치법',
    n.name_kr = '단순 대치법',
    n.domain = 'ST';

MERGE (n:Concept {id: '다중_대치법'})
SET     n.name = '다중 대치법',
    n.name_kr = '다중 대치법',
    n.domain = 'ST';

// --- 관계 ---

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '제거_필요'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '부합하지_않는_데이터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '제거_불필요'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '의도된_이상값'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '검출_방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '정규분포_이용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'likelihood'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'nearest_neighbor'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'density'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'clustering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '처리_방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '표준편차_대체'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '절대_편차_대체'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '극_백분위수_대체'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '제거'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '설계_요인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '참여자와_설계의_상호작용_요인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '결측_매커니즘'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'mar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'nmar'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'deletion'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '한쌍_제거법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'imputation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '회귀_대체법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '확률적_회귀대체법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '행렬기반_대체법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'interpolation_method'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'estimating_values_approach'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '처리방안'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '처리방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'missing_value'})
MERGE (b:Concept {id: 'outlier'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'missing_value'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'outlier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'completes_analysis'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '평균_대치법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: 'cold_deck'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '혼합_방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '단순_대치법'})
MERGE (b:Concept {id: '다중_대치법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '단순_대치법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Concept {id: '다중_대치법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Document {id: 'ST_040.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '이상값,_결측값'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계학'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제거_필요'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부합하지_않는_데이터'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제거_불필요'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의도된_이상값'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검출_방법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규분포_이용'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'likelihood'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nearest_neighbor'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'density'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clustering'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_방법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준편차_대체'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '절대_편차_대체'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '극_백분위수_대체'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제거'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계_요인'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여자와_설계의_상호작용_요인'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결측_매커니즘'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mar'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nmar'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'deletion'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한쌍_제거법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'imputation'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회귀_대체법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확률적_회귀대체법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행렬기반_대체법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interpolation_method'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'estimating_values_approach'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리방안'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'missing_value'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'outlier'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'completes_analysis'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평균_대치법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cold_deck'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혼합_방법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순_대치법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_대치법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_040.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_040.5'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_041: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_041'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_042: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_042'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_043: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_043'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_044: Random Forest
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_044'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Concept {id: 'random_forest'})
SET     n.name = 'Random Forest',
    n.name_kr = 'Random Forest',
    n.domain = 'ST',
    n.aliases = ['Random Forest'];

MERGE (n:Concept {id: '데이터_예측_및_분류'})
SET     n.name = '데이터 예측 및 분류',
    n.name_kr = '데이터 예측 및 분류',
    n.domain = 'ST';

MERGE (n:Concept {id: '임의_최적_노드'})
SET     n.name = '임의 최적 노드',
    n.name_kr = '임의 최적 노드',
    n.domain = 'ST';

MERGE (n:Concept {id: 'bagging'})
SET     n.name = '배깅',
    n.name_kr = '배깅',
    n.domain = 'ST';

MERGE (n:Concept {id: '결정_트리'})
SET     n.name = '결정 트리',
    n.name_kr = '결정 트리',
    n.domain = 'ST';

MERGE (n:Concept {id: '정규화_랜덤_포레스트'})
SET     n.name = '정규화 랜덤 포레스트',
    n.name_kr = '정규화 랜덤 포레스트',
    n.domain = 'ST';

MERGE (n:Concept {id: '앙상블'})
SET     n.name = '앙상블',
    n.name_kr = '앙상블',
    n.domain = 'ST';

MERGE (n:Concept {id: '선형결합'})
SET     n.name = '선형결합',
    n.name_kr = '선형결합',
    n.domain = 'ST';

MERGE (n:Concept {id: 'adaboost'})
SET     n.name = 'Adaboost',
    n.name_kr = 'Adaboost',
    n.domain = 'ST',
    n.aliases = ['Adaboost'];

// --- 관계 ---

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: '임의_최적_노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: 'bagging'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: '결정_트리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: '정규화_랜덤_포레스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: '앙상블'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: '선형결합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: 'adaboost'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: 'adaboost'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Document {id: 'ST_044'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_예측_및_분류'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임의_최적_노드'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bagging'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결정_트리'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화_랜덤_포레스트'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앙상블'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형결합'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adaboost'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_045: Apriori 알고리즘
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_045'})
SET doc.domain = 'ST';

// --- 노드 ---

MERGE (n:Method {id: 'apriori_알고리즘'})
SET     n.name = 'Apriori 알고리즘',
    n.name_kr = 'Apriori 알고리즘',
    n.domain = 'ST';

MERGE (n:Concept {id: '기계학습'})
SET     n.name = '기계학습',
    n.name_kr = '기계학습',
    n.domain = 'ST';

MERGE (n:Concept {id: '선험적'})
SET     n.name = '선험적',
    n.name_kr = '선험적',
    n.domain = 'ST';

MERGE (n:Concept {id: '연관분석_3가지_척도(지지도'})
SET     n.name = '연관분석 3가지 척도(지지도',
    n.name_kr = '연관분석 3가지 척도(지지도',
    n.domain = 'ST';

MERGE (n:Concept {id: 'confidence'})
SET     n.name = '신뢰도',
    n.name_kr = '신뢰도',
    n.domain = 'ST';

MERGE (n:Concept {id: '향상도)'})
SET     n.name = '향상도)',
    n.name_kr = '향상도)',
    n.domain = 'ST';

MERGE (n:Concept {id: '빈발항목'})
SET     n.name = '빈발항목',
    n.name_kr = '빈발항목',
    n.domain = 'ST';

MERGE (n:Metric {id: 'fp_tree'})
SET     n.name = 'FP-Tree',
    n.name_kr = 'FP-Tree',
    n.domain = 'ST',
    n.aliases = ['FP-Tree'];

MERGE (n:Concept {id: '구매패턴'})
SET     n.name = '구매패턴',
    n.name_kr = '구매패턴',
    n.domain = 'ST';

MERGE (n:Concept {id: '빈발_규칙'})
SET     n.name = '빈발 규칙',
    n.name_kr = '빈발 규칙',
    n.domain = 'ST',
    n.definition = '한 항목 집합이 빈발하다면 해당 집합의 모든 부분 집합도 빈발 항목 집합이다.';

MERGE (n:Concept {id: '비빈발_규칙'})
SET     n.name = '비빈발 규칙',
    n.name_kr = '비빈발 규칙',
    n.domain = 'ST',
    n.definition = '한 항목 집합이 비빈발하다면 해당 집합의 모든 부분 집합도 비빈발 항목 집합이다.';

MERGE (n:Concept {id: '자율학습_기법'})
SET     n.name = '자율학습 기법',
    n.name_kr = '자율학습 기법',
    n.domain = 'ST',
    n.definition = '사건과 사건 간의 관계에 관심이 있으며, 규칙들 간에는 서로 영향을 주지 않음';

MERGE (n:Concept {id: '탐색적_기법'})
SET     n.name = '탐색적 기법',
    n.name_kr = '탐색적 기법',
    n.domain = 'ST',
    n.definition = '조건반은(if-then)으로 표현됨으로 분서결과 이해 용이';

MERGE (n:Concept {id: '목적변수_미존재'})
SET     n.name = '목적변수 미존재',
    n.name_kr = '목적변수 미존재',
    n.domain = 'ST',
    n.definition = '목적변수 없이 특성의 조합으로 규칙을 표현하며, 특정한 변수가 아닌 모든 변수 또는 특성에 대하여 예측';

MERGE (n:Concept {id: '규칙_간의_독립성'})
SET     n.name = '규칙 간의 독립성',
    n.name_kr = '규칙 간의 독립성',
    n.domain = 'ST',
    n.definition = '규칙들 간에는 서로 영향을 주지 않기 때문에 하나의 고객이 여러개의 규칙에 해당 될 수 있음';

MERGE (n:Concept {id: '탐색_원칙'})
SET     n.name = '탐색 원칙',
    n.name_kr = '탐색 원칙',
    n.domain = 'ST',
    n.definition = '최소지지도(minimum support): 분석자가 정하는 최소한의 지지도 - 최소신뢰도(minimum confidence): 분석자가 정하는 최소한의 신뢰도 - 연관규칙의 탐색은 최소지지도와 최소신뢰도를 넘는 모든 가능한 연관규칙을 찾음';

MERGE (n:Concept {id: '단계_1'})
SET     n.name = '단계 1',
    n.name_kr = '단계 1',
    n.domain = 'ST',
    n.definition = '빈발항목집합의 생성, 최소지지도를 만족하는 모든 빈발항목을 찾음';

MERGE (n:Concept {id: '단계_2'})
SET     n.name = '단계 2',
    n.name_kr = '단계 2',
    n.domain = 'ST',
    n.definition = '연관규칙의 생성, 단계 1에서 찾은 빈발항목집합에서 최소신뢰도가 높은 모든 연관 규칙을 찾음';

MERGE (n:Concept {id: '문제_정의'})
SET     n.name = '문제 정의',
    n.name_kr = '문제 정의',
    n.domain = 'ST';

MERGE (n:Concept {id: 'support'})
SET     n.name = 'Support',
    n.name_kr = '지지도',
    n.domain = 'ST',
    n.definition = '전체 거래 4건 중 기저귀(X)와 맥주(Y)를 동시에 구입한 거래는 2건',
    n.aliases = ['Support', '지지도'];

MERGE (n:Concept {id: 'lift,_improvement'})
SET     n.name = 'Lift/Improvement',
    n.name_kr = '향상도',
    n.domain = 'ST',
    n.definition = '맥주(Y)만을 포함하는 거래는 2건 - 위에서 계산한 지지도와 P(X), P(Y)를 이용하여 향상도를 계산하면',
    n.aliases = ['Lift/Improvement', '향상도'];

MERGE (n:Concept {id: '계산_결과'})
SET     n.name = '계산 결과',
    n.name_kr = '계산 결과',
    n.domain = 'ST',
    n.definition = '향상도가 1보다 크므로 기저귀(A)와 맥주(B)는 양의 상관관계를 가지며, 데이터 간의 연관성이 있다고 판단됨';

MERGE (n:Concept {id: '전제_조건'})
SET     n.name = '전제 조건',
    n.name_kr = '전제 조건',
    n.domain = 'ST',
    n.definition = '1. 대상 : 2개 항목으로 구성된 후보 항목 집합 2. 최소 지지도 : 50%';

MERGE (n:Concept {id: '계산_절차'})
SET     n.name = '계산 절차',
    n.name_kr = '계산 절차',
    n.domain = 'ST',
    n.definition = '1. 후보 항목 집합 생성 2. 최소 지지도 계산 3. 빈발 항목 집합 선택 4. 빈발 항목 집합에 대해 지지도, 신뢰도, 향상도 계산 5. 척도 계산 결과 분석';

MERGE (n:Concept {id: '후보_항목_집합_생성'})
SET     n.name = '후보 항목 집합 생성',
    n.name_kr = '후보 항목 집합 생성',
    n.domain = 'ST',
    n.definition = '전체 항목 집합 : {우유, 빵, 버터, 콜라, 라면} - 후보 항목 집합 생성 {우유, 빵}, {우유, 버터}, {우유, 콜라}, {우유, 라면}, {빵, 버터}, {빵, 콜라}, {빵, 라면}, {버터, 콜라}, {버터, 라면}, {콜라, 라면}';

MERGE (n:Concept {id: '후보_집합_지지도_계산'})
SET     n.name = '후보 집합 지지도 계산',
    n.name_kr = '후보 집합 지지도 계산',
    n.domain = 'ST',
    n.definition = '{우유, 빵} : 1 / 5 = 20%';

MERGE (n:Concept {id: '{빵,_버터}_:_3_/_5_=_60%'})
SET     n.name = '{빵, 버터} : 3 / 5 = 60%',
    n.name_kr = '{빵, 버터} : 3 / 5 = 60%',
    n.domain = 'ST',
    n.definition = '최소 지지도 충족 -> 빈발 항목 선택';

MERGE (n:Concept {id: '빈발_항목_척도_계산'})
SET     n.name = '빈발 항목 척도 계산',
    n.name_kr = '빈발 항목 척도 계산',
    n.domain = 'ST';

MERGE (n:Concept {id: '빈발_항목_집합'})
SET     n.name = '빈발 항목 집합',
    n.name_kr = '빈발 항목 집합',
    n.domain = 'ST',
    n.definition = '총 10개의 후보 항목 집합 중 {빵, 버터}만 지지도가 60%로 빈발항목집합으로 선택';

MERGE (n:Concept {id: '연관_규칙'})
SET     n.name = '연관 규칙',
    n.name_kr = '연관 규칙',
    n.domain = 'ST',
    n.definition = '구매 순서에 따라 빵->버터, 버터->빵 두 가지 연관 규칙 성립 가능';

MERGE (n:Concept {id: '분석_결과_활용'})
SET     n.name = '분석 결과 활용',
    n.name_kr = '분석 결과 활용',
    n.domain = 'ST',
    n.definition = '버터와 빵은 상호 보완적 관계이므로 인접하게 진열하여 고객의 추가 구매 유도 - 빵을 구입한 고객의 버터 구매 신뢰도가 크므로 빵의 가격을 인하하여 빵의 매출이 증가하면 버터의 매출도 같이 증가할 것이라 예상';

// --- 관계 ---

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '기계학습'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '선험적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '연관분석_3가지_척도(지지도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: 'confidence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '향상도)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '빈발항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Metric {id: 'fp_tree'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '구매패턴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '빈발_규칙'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '비빈발_규칙'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '자율학습_기법'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '탐색적_기법'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '목적변수_미존재'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '규칙_간의_독립성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '탐색_원칙'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '단계_1'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '단계_2'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '문제_정의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: 'support'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: 'lift,_improvement'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '계산_결과'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '전제_조건'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '계산_절차'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '후보_항목_집합_생성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '후보_집합_지지도_계산'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '{빵,_버터}_:_3_/_5_=_60%'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '빈발_항목_척도_계산'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '빈발_항목_집합'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '연관_규칙'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Concept {id: '분석_결과_활용'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Document {id: 'ST_045'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'apriori_알고리즘'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기계학습'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선험적'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연관분석_3가지_척도(지지도'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'confidence'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '향상도)'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빈발항목'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'fp_tree'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구매패턴'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빈발_규칙'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비빈발_규칙'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율학습_기법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐색적_기법'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '목적변수_미존재'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규칙_간의_독립성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탐색_원칙'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계_1'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계_2'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_정의'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'support'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lift,_improvement'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산_결과'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전제_조건'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계산_절차'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후보_항목_집합_생성'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후보_집합_지지도_계산'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '{빵,_버터}_:_3_/_5_=_60%'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빈발_항목_척도_계산'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빈발_항목_집합'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연관_규칙'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_결과_활용'})
MERGE (b:Domain {id: 'ST'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// ST_046: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_046'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_047: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_047'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_048.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_048.1'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_048.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_048.2'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_049: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_049'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_050: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_050'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_051: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_051'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_052: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_052'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_053: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_053'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_054: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_054'})
SET doc.domain = 'ST';

// ──────────────────────────────────────
// ST_055: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'ST_055'})
SET doc.domain = 'ST';

// ================================================================
// ST 도메인 자동 생성 완료
// 노드: 281개
// 관계: 577개
// ================================================================