// ================================================================
// MG 도메인 (MG_051 ~ MG_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// MG_054: ISP(Information Strategy Planning) 정보화전략계획(ISP) 수립 공통가이드 제6판 기준
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_054'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '전략계획'})
SET     n.name = '전략계획',
    n.name_kr = '전략계획',
    n.domain = 'MG';

MERGE (n:Concept {id: 'information_strategy_planning'})
SET     n.name = 'Information Strategy Planning',
    n.name_kr = 'ISP',
    n.domain = 'MG',
    n.aliases = ['Information Strategy Planning', 'ISP'];

MERGE (n:Concept {id: '환형정목통'})
SET     n.name = '환형정목통',
    n.name_kr = '환형정목통',
    n.domain = 'MG';

MERGE (n:Concept {id: '적용대상'})
SET     n.name = '적용대상',
    n.name_kr = '적용대상',
    n.domain = 'MG',
    n.definition = '정보시스템 구축/재구축 사업을 추진하기위해 수립하는 각 중앙관서의 모든 ISP - 정보화 외에 일반재정, R&D등 모든 분야 내역 정보화 ISP 해당';

MERGE (n:Concept {id: '결과활용'})
SET     n.name = '결과활용',
    n.name_kr = '결과활용',
    n.domain = 'MG',
    n.definition = 'ISP 최종산출물에 대한 사업 타당성, 실현 가능성, 규모 적정성을 검토하여 해당 결과를 신규 정보시스템 구축사업의 예산안 편성 시 활용';

MERGE (n:Concept {id: '개정_배경'})
SET     n.name = '개정 배경',
    n.name_kr = '개정 배경',
    n.domain = 'MG',
    n.definition = 'ISP의 형식적 수립';

MERGE (n:Concept {id: '개정_사항'})
SET     n.name = '개정 사항',
    n.name_kr = '개정 사항',
    n.domain = 'MG',
    n.definition = '검토신청';

MERGE (n:Concept {id: '대상사업'})
SET     n.name = '대상사업',
    n.name_kr = '대상사업',
    n.domain = 'MG',
    n.definition = '정보시스템 구축·재구축 사업율 추진하기 위해 수립하는 각 중앙관서의 모든 ISP 또는 ISMP - 정보화 외에 일반재정, R&D 등 모든 분야의 ISP 또는 ISMP 해당';

MERGE (n:Concept {id: '제외_사업'})
SET     n.name = '제외 사업',
    n.name_kr = '제외 사업',
    n.domain = 'MG',
    n.definition = '민간투자형 소프트웨어사업';

MERGE (n:Concept {id: '단순시스템_개발'})
SET     n.name = '단순시스템 개발',
    n.name_kr = '단순시스템 개발',
    n.domain = 'MG',
    n.definition = '입력, 조회, 출력 등의 단순 기능을 적용하여 개발하는 시스템';

MERGE (n:Concept {id: '단순기능_개발'})
SET     n.name = '단순기능 개발',
    n.name_kr = '단순기능 개발',
    n.domain = 'MG',
    n.definition = '기존 시스템에 일부 기능을 개선 또는 추가하는 사업';

MERGE (n:Concept {id: '운영_·유지'})
SET     n.name = '운영 ·유지',
    n.name_kr = '운영 ·유지',
    n.domain = 'MG',
    n.definition = '기존 시스템을 운영 ·유지하는 사업';

MERGE (n:Concept {id: '단순물품_구매'})
SET     n.name = '단순물품 구매',
    n.name_kr = '단순물품 구매',
    n.domain = 'MG',
    n.definition = '사무기기(개인용 컴퓨터, 프린터, 모니터 등)，소프트웨어 등 장비도입 위주의 사업';

MERGE (n:Concept {id: '단순시설_구축'})
SET     n.name = '단순시설 구축',
    n.name_kr = '단순시설 구축',
    n.domain = 'MG',
    n.definition = '정보시스템이 아닌 단순시설을 구축하는 사업';

MERGE (n:Concept {id: 'db구축'})
SET     n.name = 'DB구축',
    n.name_kr = 'DB구축',
    n.domain = 'MG',
    n.definition = '지식정보자원을 디지털화 하는 사업';

MERGE (n:Concept {id: '실익이_낮다고_기획재정부_장관이_인정한_사업'})
SET     n.name = '실익이 낮다고 기획재정부 장관이 인정한 사업',
    n.name_kr = '실익이 낮다고 기획재정부 장관이 인정한 사업',
    n.domain = 'MG',
    n.definition = '정보화사업의 특성상 ISP· ISMP 수립의 실익이 낮다고 기획재정부장관이 인정한 사업';

MERGE (n:Concept {id: '1._기본원칙'})
SET     n.name = '1. 기본원칙',
    n.name_kr = '1. 기본원칙',
    n.domain = 'MG',
    n.definition = '각 중앙관서는 정보시스템 구축·재구축 예산안 요구에 앞서 ISP 또는 ISMP 최종산출물에 대한 기획재정부의 검토를 선행 - 기획재정부는 각 중앙관서가 제출한 ISP 또는 ISMP 최종산출물을 기반으로 해당 사업 추진의 타당성,실현 가능성 및 규모 적정성을 검토';

MERGE (n:Concept {id: '2._수립유형'})
SET     n.name = '2. 수립유형',
    n.name_kr = '2. 수립유형',
    n.domain = 'MG',
    n.definition = '단위시스템 구축을 위해서는 ISP 또는 ISMP 수립 필요 - 시스템 재구축 및 신규시스템 구축에 대한 사전준비도에 따라 ISP와 ISMP를 선택적으로 수행 가능 - 기관 차원의 중장기 정보화 비전·전략·사업(이행과제) 등 수립이 필요한 경우에는 ‘기관 중장기 정보화 계획’ 수행 가능';

MERGE (n:Concept {id: '3._검토_대상_사업'})
SET     n.name = '3. 검토 대상 사업',
    n.name_kr = '3. 검토 대상 사업',
    n.domain = 'MG',
    n.definition = 'ISP· ISMP 검토는 아래의 두 가지 조건을 모두 충족한 산출물에 한해 검토신청이가능 1) ISP 또는 ISMP 수립 예산을 요구하여 국회에서 확정된 또는 기획재정부장관과 사전 협의되어 전용된 예산으로 수행된 2) 계약서상사업기간이 종료된 ISP 또는 ISMP';

MERGE (n:Concept {id: '4._접수일자'})
SET     n.name = '4. 접수일자',
    n.name_kr = '4. 접수일자',
    n.domain = 'MG',
    n.definition = 'ISP 또는 ISMP 최종산출물은 연중 검토 신청 가능';

MERGE (n:Concept {id: '5._중간산출물_검토_대상'})
SET     n.name = '5. 중간산출물 검토 대상',
    n.name_kr = '5. 중간산출물 검토 대상',
    n.domain = 'MG',
    n.definition = '정책적 중요성 및 시급성이 매우 높은사업은 기획재정부와 사전협의를 통해, ISP 또는 ISMP 사업종료 이전에 중간산출물 검토 가능 - 단, ISP 또는 ISMP 기본 구성 내용을 모두 갖춘 중간산출물 검토를 요청한 경우에 한함';

MERGE (n:Concept {id: '6._수립제외_사업'})
SET     n.name = '6. 수립제외 사업',
    n.name_kr = '6. 수립제외 사업',
    n.domain = 'MG',
    n.definition = '\'ISP·ISMP 수립의 실익이 낮다’고 인정되는 경우에는 기획재정부와 사전협의를 통해, ISP·ISMP 수립 제외 가능';

MERGE (n:Concept {id: '7._검토절차'})
SET     n.name = '7. 검토절차',
    n.name_kr = '7. 검토절차',
    n.domain = 'MG',
    n.definition = '검토 신청';

MERGE (n:Concept {id: '제출_자료'})
SET     n.name = '제출 자료',
    n.name_kr = '제출 자료',
    n.domain = 'MG',
    n.definition = 'ISP· ISMP 검토 신청 시, 아래의 3가지 자료 제출 필요';

MERGE (n:Concept {id: '제출자료'})
SET     n.name = '제출자료',
    n.name_kr = '제출자료',
    n.domain = 'MG',
    n.definition = 'ISP·ISMP 검토신청시,총 3개분야 7개 항목에 대해 검토필요';

MERGE (n:Concept {id: '검토_기간'})
SET     n.name = '검토 기간',
    n.name_kr = '검토 기간',
    n.domain = 'MG',
    n.definition = '검토신청을 받은 날로부터 최대 30일 이내에 검토의견을 기획재정부로 제출';

MERGE (n:Concept {id: '8._디지털_서비스_도입_우선_검토'})
SET     n.name = '8. 디지털 서비스 도입 우선 검토',
    n.name_kr = '8. 디지털 서비스 도입 우선 검토',
    n.domain = 'MG',
    n.definition = 'ISP 또는 ISMP 수립시 클라우드컴퓨팅서비스등 디지털서비스도입 전환을 우선적으로 검토하여, 그 결과를 최종산출물에 필수적으로 포함하여야함 - 클라우드 도입이 불가능할 경우, 구체적인 적용 불가 사유가 제시 되어야함';

MERGE (n:Concept {id: '9._isp,_ismp_수립비_산출'})
SET     n.name = '9. ISP, ISMP 수립비 산출',
    n.name_kr = '9. ISP, ISMP 수립비 산출',
    n.domain = 'MG',
    n.definition = 'ISP 수립비 산정';

MERGE (n:Concept {id: 'ismp_수립비_산정'})
SET     n.name = 'ISMP 수립비 산정',
    n.name_kr = 'ISMP 수립비 산정',
    n.domain = 'MG',
    n.definition = 'ISMP 수립비는 투입공수 방식으로 산출 -컨설팅 업무활동별 업무량, 냔이도, 중요도등을 고려하여 소요공수를 도출한후 그에 따라 대가를산정 - (투입공수) 업무범위와 요구사항을 고려해 필요한 직무 별 투입인력의 수와 기간을 결정하여 투입공수 산정';

MERGE (n:Concept {id: '10._구축비_규모별_평균_수립기간'})
SET     n.name = '10. 구축비 규모별 평균 수립기간',
    n.name_kr = '10. 구축비 규모별 평균 수립기간',
    n.domain = 'MG',
    n.definition = 'ISP 또는 ISMP를 수립시, 구축비 규모별 평균 수행기간 참고 필요 - 해당 추정 구축비가 속한 상·하위 수립기간을 기준하여 수립에 참고';

MERGE (n:Concept {id: '민간클라우드_도입'})
SET     n.name = '민간클라우드 도입',
    n.name_kr = '민간클라우드 도입',
    n.domain = 'MG',
    n.definition = 'ISP 수립 시, 민간 클라우드 이용시스템은 민간 클라우드 컴퓨팅 도입·전환을 우선적으로 검토하여 그 결과를 ISP 최종산출물에 필수적으로 포함하여야함 - 정보시스템의 인프라 구성방안 중 하나로 민간클라우드 적용방안이 제시되어야 하며, 소요비용도 함께 산출하여야 함 - 민간클라우드 도입이 불가능할 경우, 구체적인 적용 불가 사유가 제시되어야함';

MERGE (n:Concept {id: 'isp'})
SET     n.name = 'ISP',
    n.name_kr = 'ISP',
    n.domain = 'MG',
    n.aliases = ['ISP'];

MERGE (n:Concept {id: 'ismp'})
SET     n.name = 'ISMP',
    n.name_kr = 'ISMP',
    n.domain = 'MG',
    n.aliases = ['ISMP'];

// --- 관계 ---

MERGE (a:Concept {id: '전략계획'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '전략계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '환형정목통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '적용대상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '결과활용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '개정_배경'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '개정_사항'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '대상사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '제외_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '단순시스템_개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '단순기능_개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '운영_·유지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '단순물품_구매'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '단순시설_구축'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'db구축'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '실익이_낮다고_기획재정부_장관이_인정한_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '1._기본원칙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '2._수립유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '3._검토_대상_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '4._접수일자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '5._중간산출물_검토_대상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '6._수립제외_사업'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '7._검토절차'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '제출_자료'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '제출자료'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '검토_기간'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '8._디지털_서비스_도입_우선_검토'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '9._isp,_ismp_수립비_산출'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'ismp_수립비_산정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '10._구축비_규모별_평균_수립기간'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: '민간클라우드_도입'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Document {id: 'MG_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'information_strategy_planning'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환형정목통'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용대상'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과활용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_배경'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_사항'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대상사업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제외_사업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순시스템_개발'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순기능_개발'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_·유지'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순물품_구매'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순시설_구축'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db구축'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실익이_낮다고_기획재정부_장관이_인정한_사업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1._기본원칙'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._수립유형'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._검토_대상_사업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._접수일자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5._중간산출물_검토_대상'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6._수립제외_사업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7._검토절차'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제출_자료'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제출자료'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검토_기간'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '8._디지털_서비스_도입_우선_검토'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '9._isp,_ismp_수립비_산출'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ismp_수립비_산정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10._구축비_규모별_평균_수립기간'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간클라우드_도입'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ismp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_055: ISMP(Information System Master Plan)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_055'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'information_system_master_plan'})
SET     n.name = 'Information System Master Plan',
    n.name_kr = 'ISMP',
    n.domain = 'MG',
    n.aliases = ['Information System Master Plan', 'ISMP'];

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '전략_계획'})
SET     n.name = '전략 계획',
    n.name_kr = '전략 계획',
    n.domain = 'MG';

MERGE (n:Concept {id: '대중'})
SET     n.name = '대중',
    n.name_kr = '대중',
    n.domain = 'MG';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG';

MERGE (n:Concept {id: '온라인_비즈니스'})
SET     n.name = '온라인 비즈니스',
    n.name_kr = '온라인 비즈니스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'long_tail'})
SET     n.name = 'Long Tail',
    n.name_kr = '롱테일 현상',
    n.domain = 'MG',
    n.aliases = ['Long Tail', '롱테일 현상'];

MERGE (n:Concept {id: 'isp'})
SET     n.name = 'ISP',
    n.name_kr = 'ISP',
    n.domain = 'MG',
    n.aliases = ['ISP'];

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: 'ismp'})
SET     n.name = 'ISMP',
    n.name_kr = 'ISMP',
    n.domain = 'MG',
    n.aliases = ['ISMP'];

// --- 관계 ---

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: '전략_계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: '대중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: '집단지성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: '온라인_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'long_tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Concept {id: 'ismp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Document {id: 'MG_055'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'information_system_master_plan'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대중'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_tail'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ismp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_056: BCG Matrix
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_056'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'bcg_matrix'})
SET     n.name = 'BCG Matrix',
    n.name_kr = 'BCG Matrix',
    n.domain = 'MG',
    n.aliases = ['BCG Matrix'];

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '전략_계획'})
SET     n.name = '전략 계획',
    n.name_kr = '전략 계획',
    n.domain = 'MG';

MERGE (n:Concept {id: 'sbu'})
SET     n.name = 'SBU',
    n.name_kr = '전략산업단위',
    n.domain = 'MG',
    n.aliases = ['SBU', '전략산업단위'];

MERGE (n:Concept {id: 'matrix'})
SET     n.name = 'Matrix',
    n.name_kr = '상관분석',
    n.domain = 'MG',
    n.aliases = ['Matrix', '상관분석'];

MERGE (n:Concept {id: '제품_포트폴리오_cash_cow'})
SET     n.name = '제품 포트폴리오 cash cow',
    n.name_kr = '제품 포트폴리오 cash cow',
    n.domain = 'MG';

MERGE (n:Concept {id: 'dog'})
SET     n.name = 'dog',
    n.name_kr = 'dog',
    n.domain = 'MG',
    n.aliases = ['dog'];

MERGE (n:Concept {id: 'star'})
SET     n.name = 'star',
    n.name_kr = 'star',
    n.domain = 'MG',
    n.aliases = ['star'];

MERGE (n:Concept {id: 'problem_children'})
SET     n.name = 'problem children',
    n.name_kr = 'problem children',
    n.domain = 'MG',
    n.aliases = ['problem children'];

// --- 관계 ---

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: '전략_계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: 'sbu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: 'matrix'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: '제품_포트폴리오_cash_cow'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: 'dog'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: 'star'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Concept {id: 'problem_children'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Document {id: 'MG_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bcg_matrix'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sbu'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'matrix'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품_포트폴리오_cash_cow'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dog'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'star'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'problem_children'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_057: Value Chain, Value Chain Model
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_057'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'value_chain,_value_chain_model'})
SET     n.name = 'Value Chain, Value Chain Model',
    n.name_kr = 'Value Chain, Value Chain Model',
    n.domain = 'MG';

MERGE (n:Concept {id: '전략계획'})
SET     n.name = '전략계획',
    n.name_kr = '전략계획',
    n.domain = 'MG';

MERGE (n:Concept {id: 'value_chain'})
SET     n.name = 'Value Chain',
    n.name_kr = 'Value Chain',
    n.domain = 'MG',
    n.aliases = ['Value Chain'];

MERGE (n:Concept {id: 'erp'})
SET     n.name = 'ERP',
    n.name_kr = 'ERP',
    n.domain = 'MG',
    n.aliases = ['ERP'];

MERGE (n:Concept {id: 'scm'})
SET     n.name = 'SCM',
    n.name_kr = 'SCM',
    n.domain = 'MG',
    n.aliases = ['SCM'];

MERGE (n:Concept {id: 'mes'})
SET     n.name = 'MES',
    n.name_kr = 'MES',
    n.domain = 'MG',
    n.aliases = ['MES'];

MERGE (n:Concept {id: 'crm'})
SET     n.name = 'CRM',
    n.name_kr = 'CRM',
    n.domain = 'MG',
    n.aliases = ['CRM'];

// --- 관계 ---

MERGE (a:Concept {id: 'value_chain'})
MERGE (b:Concept {id: '전략계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'scm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'mes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Concept {id: 'erp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'scm'})
MERGE (b:Concept {id: 'mes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'scm'})
MERGE (b:Concept {id: 'crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Concept {id: 'scm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mes'})
MERGE (b:Concept {id: 'crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Concept {id: 'mes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Concept {id: 'crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Document {id: 'MG_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'value_chain,_value_chain_model'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'value_chain'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mes'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_059.1: 기술 수용 주기
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_059.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '기술_수용_주기'})
SET     n.name = '기술 수용 주기',
    n.name_kr = '기술 수용 주기',
    n.domain = 'MG';

MERGE (n:Concept {id: '기술_수명_주기'})
SET     n.name = '기술 수명 주기',
    n.name_kr = '기술 수명 주기',
    n.domain = 'MG';

MERGE (n:Concept {id: '혁신_수용자'})
SET     n.name = '혁신 수용자',
    n.name_kr = '혁신 수용자',
    n.domain = 'MG';

MERGE (n:Concept {id: '선각_수용자'})
SET     n.name = '선각 수용자',
    n.name_kr = '선각 수용자',
    n.domain = 'MG';

MERGE (n:Concept {id: '전기다수_수용자'})
SET     n.name = '전기다수 수용자',
    n.name_kr = '전기다수 수용자',
    n.domain = 'MG';

MERGE (n:Concept {id: '후기다수_수용자'})
SET     n.name = '후기다수 수용자',
    n.name_kr = '후기다수 수용자',
    n.domain = 'MG';

MERGE (n:Concept {id: '지각_수용자'})
SET     n.name = '지각 수용자',
    n.name_kr = '지각 수용자',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Concept {id: '혁신_수용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Concept {id: '선각_수용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Concept {id: '전기다수_수용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Concept {id: '후기다수_수용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Concept {id: '지각_수용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Document {id: 'MG_059.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기술_수용_주기'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혁신_수용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선각_수용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전기다수_수용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후기다수_수용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지각_수용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_059.2: 캐즘이론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_059.2'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '캐즘이론'})
SET     n.name = '캐즘이론',
    n.name_kr = '캐즘이론',
    n.domain = 'MG';

MERGE (n:Concept {id: 'it경영전략'})
SET     n.name = 'IT경영전략',
    n.name_kr = 'IT경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '전략_계획'})
SET     n.name = '전략 계획',
    n.name_kr = '전략 계획',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Concept {id: 'it경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '캐즘이론'})
MERGE (b:Concept {id: '전략_계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '캐즘이론'})
MERGE (b:Document {id: 'MG_059.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '캐즘이론'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_060: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_060'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_061.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_061.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_061.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_061.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_062: 추격자 전략, 선도자 전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_062'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '추격자_전략,_선도자_전략'})
SET     n.name = '추격자 전략, 선도자 전략',
    n.name_kr = '추격자 전략, 선도자 전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '전략_계획'})
SET     n.name = '전략 계획',
    n.name_kr = '전략 계획',
    n.domain = 'MG';

MERGE (n:Concept {id: 'parallel_mover'})
SET     n.name = 'Parallel Mover',
    n.name_kr = 'Parallel Mover',
    n.domain = 'MG',
    n.aliases = ['Parallel Mover'];

MERGE (n:Concept {id: 'fast_follower'})
SET     n.name = 'Fast Follower',
    n.name_kr = 'Fast Follower',
    n.domain = 'MG',
    n.aliases = ['Fast Follower'];

MERGE (n:Concept {id: 'first_mover'})
SET     n.name = 'First Mover',
    n.name_kr = 'First Mover',
    n.domain = 'MG',
    n.aliases = ['First Mover'];

MERGE (n:Concept {id: 'smart_mover'})
SET     n.name = 'Smart Mover',
    n.name_kr = 'Smart Mover',
    n.domain = 'MG',
    n.aliases = ['Smart Mover'];

MERGE (n:Concept {id: '선도자'})
SET     n.name = '선도자',
    n.name_kr = '선도자',
    n.domain = 'MG';

MERGE (n:Concept {id: '추격자'})
SET     n.name = '추격자',
    n.name_kr = '추격자',
    n.domain = 'MG';

MERGE (n:Concept {id: '두각배경'})
SET     n.name = '두각배경',
    n.name_kr = '두각배경',
    n.domain = 'MG',
    n.definition = '과거 MP3, 싸이월드나 아이러브스쿨과 같은 선도자 전략의 서비스도 시장 선도 우위를 지키지 못하고 사장된 경험이 있음 선도자가 되는 것도 중요하나 다른 패러다임으로 접근하는 후발주자에게 시장을 빼앗길 수 있어 이에 대한 보완책이 필요함';

MERGE (n:Concept {id: '산업간_융합'})
SET     n.name = '산업간 융합',
    n.name_kr = '산업간 융합',
    n.domain = 'MG',
    n.definition = '산업간 융합 전략';

MERGE (n:Concept {id: '계열사_간_시너지_창출'})
SET     n.name = '계열사 간 시너지 창출',
    n.name_kr = '계열사 간 시너지 창출',
    n.domain = 'MG',
    n.definition = '계열사 내 라인업 제품을 통합 제공 빅데이터 분석을 통한 소비자 맞춤형 서비스 출시';

MERGE (n:Concept {id: '시장_변화_대응과_다변화'})
SET     n.name = '시장 변화 대응과 다변화',
    n.name_kr = '시장 변화 대응과 다변화',
    n.domain = 'MG',
    n.definition = '방어적 인수합병';

MERGE (n:Concept {id: '가능성에_대한_준비'})
SET     n.name = '가능성에 대한 준비',
    n.name_kr = '가능성에 대한 준비',
    n.domain = 'MG',
    n.definition = '표준 규격 확정시마다 빠른 제품 출시';

// --- 관계 ---

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '전략_계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: 'parallel_mover'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: 'fast_follower'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: 'first_mover'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: 'smart_mover'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '선도자'})
MERGE (b:Concept {id: '추격자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '선도자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '추격자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '선도자'})
MERGE (b:Concept {id: '추격자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '선도자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '추격자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '두각배경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '산업간_융합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '계열사_간_시너지_창출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '시장_변화_대응과_다변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Concept {id: '가능성에_대한_준비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Document {id: 'MG_062'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '추격자_전략,_선도자_전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'parallel_mover'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fast_follower'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'first_mover'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_mover'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선도자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추격자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '두각배경'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업간_융합'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계열사_간_시너지_창출'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시장_변화_대응과_다변화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가능성에_대한_준비'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_063: Indide-out_Outside-in 전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_063'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'indide-out_outside-in_전략'})
SET     n.name = 'Indide-out_Outside-in 전략',
    n.name_kr = 'Indide-out_Outside-in 전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '아웃소싱_표준/정책'})
SET     n.name = '아웃소싱 표준/정책',
    n.name_kr = '아웃소싱 표준/정책',
    n.domain = 'MG';

MERGE (n:Concept {id: '대중'})
SET     n.name = '대중',
    n.name_kr = '대중',
    n.domain = 'MG';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG';

MERGE (n:Concept {id: '온라인_비즈니스'})
SET     n.name = '온라인 비즈니스',
    n.name_kr = '온라인 비즈니스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'long_tail'})
SET     n.name = 'Long Tail',
    n.name_kr = '롱테일 현상',
    n.domain = 'MG',
    n.aliases = ['Long Tail', '롱테일 현상'];

// --- 관계 ---

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Concept {id: '아웃소싱_표준/정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Concept {id: '대중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Concept {id: '집단지성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Concept {id: '온라인_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Concept {id: 'long_tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Document {id: 'MG_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'indide-out_outside-in_전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대중'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_tail'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_064.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_064.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_064.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.4'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_064.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.5'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_064.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.6'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_064.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_064.7'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_065: 65
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_065'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '65'})
SET     n.name = '65',
    n.name_kr = '65',
    n.domain = 'MG';

MERGE (n:Concept {id: '경영'})
SET     n.name = '경영',
    n.name_kr = '경영',
    n.domain = 'MG';

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: 'ea_framework'})
SET     n.name = 'EA Framework',
    n.name_kr = 'EA Framework',
    n.domain = 'MG',
    n.aliases = ['EA Framework'];

MERGE (n:Concept {id: 'eams_gitams'})
SET     n.name = 'EAMS/GITAMS',
    n.name_kr = 'EAMS/GITAMS',
    n.domain = 'MG',
    n.aliases = ['EAMS/GITAMS'];

MERGE (n:Concept {id: '자크만_f/w'})
SET     n.name = '자크만 F/W',
    n.name_kr = '자크만 F/W',
    n.domain = 'MG';

MERGE (n:Standard {id: 'togaf'})
SET     n.name = 'TOGAF',
    n.name_kr = 'TOGAF',
    n.domain = 'MG',
    n.aliases = ['TOGAF'];

MERGE (n:Concept {id: 'feaf'})
SET     n.name = 'FEAF',
    n.name_kr = 'FEAF',
    n.domain = 'MG',
    n.aliases = ['FEAF'];

MERGE (n:Concept {id: '정부_측면'})
SET     n.name = '정부 측면',
    n.name_kr = '정부 측면',
    n.domain = 'MG',
    n.definition = '각 부처간 IT 통합관점 견지 - 작은 정부를 위한 핵심 인프라';

MERGE (n:Concept {id: '금융권_측면'})
SET     n.name = '금융권 측면',
    n.name_kr = '금융권 측면',
    n.domain = 'MG',
    n.definition = '차세대 프로젝트의 Framework 제공 - IT Compliance 에 대한 유연한 대응';

MERGE (n:Concept {id: '일반기업_측면'})
SET     n.name = '일반기업 측면',
    n.name_kr = '일반기업 측면',
    n.domain = 'MG',
    n.definition = 'IT와 비즈니스 프로세스 결합 - 정보기술 자원의 효율적인 관리';

MERGE (n:Concept {id: 'ea_기반_isp/bpr'})
SET     n.name = 'EA 기반 ISP/BPR',
    n.name_kr = 'EA 기반 ISP/BPR',
    n.domain = 'MG',
    n.definition = 'EA Framework정의';

MERGE (n:Concept {id: 'ea_matrix_정의'})
SET     n.name = 'EA Matrix 정의',
    n.name_kr = 'EA Matrix 정의',
    n.domain = 'MG',
    n.definition = 'TO-BE BA, AA, DA, TA 산출물 정의';

MERGE (n:Concept {id: 'bpr/isp_산출물'})
SET     n.name = 'BPR/ISP 산출물',
    n.name_kr = 'BPR/ISP 산출물',
    n.domain = 'MG',
    n.definition = '정보시스템 구축계획서, TO-BE 모델 수립';

MERGE (n:Concept {id: 'eams_개발'})
SET     n.name = 'EAMS 개발',
    n.name_kr = 'EAMS 개발',
    n.domain = 'MG',
    n.definition = 'EAMS 요건정의';

MERGE (n:Concept {id: 'repository_구축'})
SET     n.name = 'Repository 구축',
    n.name_kr = 'Repository 구축',
    n.domain = 'MG',
    n.definition = '시스템 별 산출물 EA요건으로 커스터마이징';

MERGE (n:Concept {id: 'interface_architecture'})
SET     n.name = 'Interface Architecture',
    n.name_kr = 'Interface Architecture',
    n.domain = 'MG',
    n.definition = '타 시스템 연동 방안 정의',
    n.aliases = ['Interface Architecture'];

MERGE (n:Concept {id: 'ea_portal_구축'})
SET     n.name = 'EA Portal 구축',
    n.name_kr = 'EA Portal 구축',
    n.domain = 'MG',
    n.definition = '사용자 접근성 향상, EA 산출물 형상관리';

MERGE (n:Concept {id: 'ea_관리체계_정의'})
SET     n.name = 'EA 관리체계 정의',
    n.name_kr = 'EA 관리체계 정의',
    n.domain = 'MG',
    n.definition = 'BA, AA, DA, TA별 관리 조직 구성';

MERGE (n:Concept {id: 'ea_활용'})
SET     n.name = 'EA 활용',
    n.name_kr = 'EA 활용',
    n.domain = 'MG',
    n.definition = 'EA 확산';

MERGE (n:Concept {id: 'ea_거버넌스_최적화'})
SET     n.name = 'EA 거버넌스 최적화',
    n.name_kr = 'EA 거버넌스 최적화',
    n.domain = 'MG',
    n.definition = '아키텍처 관리 조직 구성 및 프로세스 실행';

MERGE (n:Concept {id: 'zeaf'})
SET     n.name = 'ZEAF',
    n.name_kr = '자크만',
    n.domain = 'MG',
    n.definition = 'EA수립 시 가장 많이 사용되는 Framework - 5가지 Perspective(Planner, Owner, Designer, Builder, Subcontractor)와 6개 묘사방법 (Data, Function, Network, People, Time, Motivation)을 정의 -view(6하 원칙에 입각하여 답을 만드는 과정에서 전체 아키텍처 설',
    n.aliases = ['ZEAF', '자크만'];

// --- 관계 ---

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Concept {id: '경영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ea_framework'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'eams_gitams'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: '자크만_f/w'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Standard {id: 'togaf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'feaf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: '정부_측면'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: '금융권_측면'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: '일반기업_측면'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_기반_isp/bpr'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_matrix_정의'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'bpr/isp_산출물'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'eams_개발'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'repository_구축'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'interface_architecture'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_portal_구축'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_관리체계_정의'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_활용'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'ea_거버넌스_최적화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Concept {id: 'zeaf'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Document {id: 'MG_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_framework'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eams_gitams'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자크만_f/w'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'togaf'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'feaf'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융권_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반기업_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_기반_isp/bpr'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_matrix_정의'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bpr/isp_산출물'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eams_개발'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'repository_구축'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interface_architecture'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_portal_구축'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_관리체계_정의'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_활용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_거버넌스_최적화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zeaf'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_066: EAMS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_066'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'eams'})
SET     n.name = 'EAMS',
    n.name_kr = 'EAMS',
    n.domain = 'MG',
    n.aliases = ['EAMS'];

MERGE (n:Concept {id: '경영전략'})
SET     n.name = '경영전략',
    n.name_kr = '경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: '체계적_관리(프레임워크'})
SET     n.name = '체계적 관리(프레임워크',
    n.name_kr = '체계적 관리(프레임워크',
    n.domain = 'MG';

MERGE (n:Concept {id: '참조모델'})
SET     n.name = '참조모델',
    n.name_kr = '참조모델',
    n.domain = 'MG';

MERGE (n:Concept {id: '산출물'})
SET     n.name = '산출물',
    n.name_kr = '산출물',
    n.domain = 'MG';

MERGE (n:Concept {id: 'ea_메타모델)'})
SET     n.name = 'EA 메타모델)',
    n.name_kr = 'EA 메타모델)',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Concept {id: '경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Concept {id: '체계적_관리(프레임워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Concept {id: '참조모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Concept {id: '산출물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Concept {id: 'ea_메타모델)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Document {id: 'MG_066'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'eams'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체계적_관리(프레임워크'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참조모델'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_메타모델)'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_067: RM(참조모델)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_067'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'rm'})
SET     n.name = 'RM',
    n.name_kr = '참조모델',
    n.domain = 'MG',
    n.aliases = ['RM', '참조모델'];

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: '대중'})
SET     n.name = '대중',
    n.name_kr = '대중',
    n.domain = 'MG';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG';

MERGE (n:Concept {id: '온라인_비즈니스'})
SET     n.name = '온라인 비즈니스',
    n.name_kr = '온라인 비즈니스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'long_tail'})
SET     n.name = 'Long Tail',
    n.name_kr = '롱테일 현상',
    n.domain = 'MG',
    n.aliases = ['Long Tail', '롱테일 현상'];

// --- 관계 ---

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Concept {id: '대중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Concept {id: '집단지성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Concept {id: '온라인_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Concept {id: 'long_tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Document {id: 'MG_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대중'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_tail'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_068: EA 성숙도모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_068'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'ea_성숙도모델'})
SET     n.name = 'EA 성숙도모델',
    n.name_kr = 'EA 성숙도모델',
    n.domain = 'MG';

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: 'v3_4'})
SET     n.name = 'V3.4',
    n.name_kr = 'V3.4',
    n.domain = 'MG',
    n.aliases = ['V3.4'];

MERGE (n:Concept {id: '성숙도_모델_v3.3'})
SET     n.name = '성숙도 모델 v3.3',
    n.name_kr = '성숙도 모델 v3.3',
    n.domain = 'MG';

MERGE (n:Concept {id: '성숙도_모델_v3.4'})
SET     n.name = '성숙도 모델 v3.4',
    n.name_kr = '성숙도 모델 v3.4',
    n.domain = 'MG';

MERGE (n:Concept {id: '변경내용'})
SET     n.name = '변경내용',
    n.name_kr = '변경내용',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Concept {id: 'v3_4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성숙도_모델_v3.3'})
MERGE (b:Concept {id: '성숙도_모델_v3.4'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '성숙도_모델_v3.3'})
MERGE (b:Concept {id: '변경내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Concept {id: '성숙도_모델_v3.3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '성숙도_모델_v3.4'})
MERGE (b:Concept {id: '변경내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Concept {id: '성숙도_모델_v3.4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Concept {id: '변경내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Document {id: 'MG_068'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ea_성숙도모델'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v3_4'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성숙도_모델_v3.3'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성숙도_모델_v3.4'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경내용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_069: IRM(Information Resource Management)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_069'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'information_resource_management'})
SET     n.name = 'Information Resource Management',
    n.name_kr = 'IRM',
    n.domain = 'MG',
    n.aliases = ['Information Resource Management', 'IRM'];

MERGE (n:Concept {id: 'ea_ita'})
SET     n.name = 'EA/ITA',
    n.name_kr = 'EA/ITA',
    n.domain = 'MG',
    n.aliases = ['EA/ITA'];

MERGE (n:Concept {id: 'irm'})
SET     n.name = 'IRM',
    n.name_kr = 'IRM',
    n.domain = 'MG',
    n.aliases = ['IRM'];

// --- 관계 ---

MERGE (a:Concept {id: 'irm'})
MERGE (b:Concept {id: 'ea_ita'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'information_resource_management'})
MERGE (b:Document {id: 'MG_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'information_resource_management'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ea_ita'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'irm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_070: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_070'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_071: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_071'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_072.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_072.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_072.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_072.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_072: BSC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_072'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'bsc'})
SET     n.name = 'BSC',
    n.name_kr = 'BSC',
    n.domain = 'MG',
    n.aliases = ['BSC'];

MERGE (n:Concept {id: '경영관리'})
SET     n.name = '경영관리',
    n.name_kr = '경영관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'sem'})
SET     n.name = 'SEM',
    n.name_kr = 'SEM',
    n.domain = 'MG',
    n.aliases = ['SEM'];

MERGE (n:Concept {id: '재고내학'})
SET     n.name = '재고내학 (기사운미)',
    n.name_kr = '재고내학 (기사운미)',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bsc_전략맵_작성절차'})
SET     n.name = 'BSC 전략맵 작성절차',
    n.name_kr = 'BSC 전략맵 작성절차',
    n.domain = 'MG',
    n.definition = '환경분석';

MERGE (n:Concept {id: 'bsc_전략맵_지표'})
SET     n.name = 'BSC 전략맵 지표',
    n.name_kr = 'BSC 전략맵 지표',
    n.domain = 'MG',
    n.definition = '재무적 관점';

MERGE (n:Concept {id: 'it_bsc'})
SET     n.name = 'IT-BSC',
    n.name_kr = 'IT-BSC',
    n.domain = 'MG',
    n.aliases = ['IT-BSC'];

// --- 관계 ---

MERGE (a:Concept {id: 'sem'})
MERGE (b:Concept {id: '경영관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: '재고내학'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: 'bsc_전략맵_작성절차'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: 'bsc_전략맵_지표'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: 'it_bsc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: 'it_bsc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Document {id: 'MG_072'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sem'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재고내학'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bsc_전략맵_작성절차'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bsc_전략맵_지표'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_073.1: IT BSC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'it_bsc'})
SET     n.name = 'IT BSC',
    n.name_kr = 'IT BSC',
    n.domain = 'MG',
    n.aliases = ['IT BSC'];

MERGE (n:Concept {id: '경영관리'})
SET     n.name = '경영관리',
    n.name_kr = '경영관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'sem'})
SET     n.name = 'SEM',
    n.name_kr = 'SEM',
    n.domain = 'MG',
    n.aliases = ['SEM'];

MERGE (n:Concept {id: 'bsc_:_재고내학'})
SET     n.name = 'BSC : 재고내학',
    n.name_kr = 'BSC : 재고내학',
    n.domain = 'MG';

MERGE (n:Concept {id: 'it_bsc_:_기사운미'})
SET     n.name = 'IT BSC : 기사운미',
    n.name_kr = 'IT BSC : 기사운미',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bsc'})
SET     n.name = 'BSC',
    n.name_kr = 'BSC',
    n.domain = 'MG',
    n.aliases = ['BSC'];

// --- 관계 ---

MERGE (a:Concept {id: 'sem'})
MERGE (b:Concept {id: '경영관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Concept {id: 'sem'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Concept {id: 'bsc_:_재고내학'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Concept {id: 'it_bsc_:_기사운미'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Concept {id: 'it_bsc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Concept {id: 'bsc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Document {id: 'MG_073.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'it_bsc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sem'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bsc_:_재고내학'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_bsc_:_기사운미'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bsc'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_073.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_073.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_073.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.4'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_073.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.5'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_073.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.6'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_073.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_073.7'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_074: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_074'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_075: BPR(Business Process Reengineering)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_075'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Metric {id: 'business_process_reengineering'})
SET     n.name = 'Business Process Reengineering',
    n.name_kr = 'BPR',
    n.domain = 'MG',
    n.aliases = ['Business Process Reengineering', 'BPR'];

MERGE (n:Concept {id: '경영관리'})
SET     n.name = '경영관리',
    n.name_kr = '경영관리',
    n.domain = 'MG';

MERGE (n:Concept {id: '프로세스관리'})
SET     n.name = '프로세스관리',
    n.name_kr = '프로세스관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'zero_base'})
SET     n.name = 'Zero-base',
    n.name_kr = 'Zero-base',
    n.domain = 'MG',
    n.aliases = ['Zero-base'];

MERGE (n:Concept {id: '비품속서'})
SET     n.name = '비품속서',
    n.name_kr = '비품속서',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '프로세스관리'})
MERGE (b:Concept {id: '경영관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'business_process_reengineering'})
MERGE (b:Concept {id: 'zero_base'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'business_process_reengineering'})
MERGE (b:Concept {id: '비품속서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'business_process_reengineering'})
MERGE (b:Document {id: 'MG_075'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'business_process_reengineering'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_base'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비품속서'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_076: BAM(Business Activity Monitoring)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_076'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'business_activity_monitoring'})
SET     n.name = 'Business Activity Monitoring',
    n.name_kr = 'BAM',
    n.domain = 'MG',
    n.aliases = ['Business Activity Monitoring', 'BAM'];

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '프로세스_관리'})
SET     n.name = '프로세스 관리',
    n.name_kr = '프로세스 관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bam'})
SET     n.name = 'BAM',
    n.name_kr = 'BAM',
    n.domain = 'MG',
    n.aliases = ['BAM'];

MERGE (n:Concept {id: 'bam=bi+real_time'})
SET     n.name = 'BAM=BI+real time',
    n.name_kr = 'BAM=BI+real time',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bi'})
SET     n.name = 'BI',
    n.name_kr = 'BI',
    n.domain = 'MG',
    n.aliases = ['BI'];

MERGE (n:Concept {id: 'bpm'})
SET     n.name = 'BPM',
    n.name_kr = 'BPM',
    n.domain = 'MG',
    n.aliases = ['BPM'];

MERGE (n:Concept {id: 'eai'})
SET     n.name = 'EAI',
    n.name_kr = 'EAI',
    n.domain = 'MG',
    n.aliases = ['EAI'];

MERGE (n:Concept {id: '자동화'})
SET     n.name = '자동화',
    n.name_kr = '자동화',
    n.domain = 'MG',
    n.definition = '데이터의 수집과 분석 과정이 자동화 되어야 의미가 있으며, 가능할 경우 조치에 이르는 전 과정 또한 자동화 하는 것이 바람직함';

MERGE (n:Concept {id: '실시간화'})
SET     n.name = '실시간화',
    n.name_kr = '실시간화',
    n.domain = 'MG',
    n.definition = '기업의 다양한 정보를 Real Time으로 제공하여야 급변하는 상황에 능동적 대처 가능';

MERGE (n:Concept {id: '표준준수'})
SET     n.name = '표준준수',
    n.name_kr = '표준준수',
    n.domain = 'MG',
    n.definition = '웹을 기반으로 내/외부로부터 다양한 정보 수집, SOA 기반 표준 준수하여 호환성 확보';

MERGE (n:Concept {id: '편리성'})
SET     n.name = '편리성',
    n.name_kr = '편리성',
    n.domain = 'MG',
    n.definition = '사용자가 접근 용이, 사용이 용이하도록 Design 되어야 하며, 이를 통한 정보 활용으로 조직에 직접 명령을 지시하거나 프로세스를 개선 할 수 있도록 연계';

MERGE (n:Concept {id: '감사기능'})
SET     n.name = '감사기능',
    n.name_kr = '감사기능',
    n.domain = 'MG',
    n.definition = '프로세스 변경 및 개선에 대한 정당한 평가와 효과 분석이 병행 되어야 함';

// --- 관계 ---

MERGE (a:Concept {id: '프로세스_관리'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Concept {id: '프로세스_관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: 'bam=bi+real_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Concept {id: 'bi'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Concept {id: 'bpm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Concept {id: 'eai'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: 'bam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi'})
MERGE (b:Concept {id: 'bpm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi'})
MERGE (b:Concept {id: 'eai'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: 'bi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bpm'})
MERGE (b:Concept {id: 'eai'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: 'bpm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: 'eai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: '자동화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: '실시간화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: '표준준수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: '편리성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Concept {id: '감사기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Document {id: 'MG_076'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'business_activity_monitoring'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bam=bi+real_time'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bi'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bpm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준준수'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편리성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감사기능'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_077: BRE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_077'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'bre'})
SET     n.name = 'BRE',
    n.name_kr = 'BRE',
    n.domain = 'MG',
    n.aliases = ['BRE'];

MERGE (n:Concept {id: '프로세스_관리'})
SET     n.name = '프로세스 관리',
    n.name_kr = '프로세스 관리',
    n.domain = 'MG';

MERGE (n:Concept {id: '추론기능_지원'})
SET     n.name = '추론기능 지원',
    n.name_kr = '추론기능 지원',
    n.domain = 'MG';

MERGE (n:Concept {id: 'service'})
SET     n.name = 'Service',
    n.name_kr = 'Service',
    n.domain = 'MG',
    n.aliases = ['Service'];

MERGE (n:Concept {id: 'monitoring'})
SET     n.name = 'Monitoring',
    n.name_kr = 'Monitoring',
    n.domain = 'MG',
    n.aliases = ['Monitoring'];

MERGE (n:Concept {id: 'engine'})
SET     n.name = 'Engine',
    n.name_kr = 'Engine',
    n.domain = 'MG',
    n.aliases = ['Engine'];

MERGE (n:Concept {id: 'repository'})
SET     n.name = 'Repository',
    n.name_kr = 'Repository',
    n.domain = 'MG',
    n.aliases = ['Repository'];

MERGE (n:Concept {id: 'rule_manager'})
SET     n.name = 'Rule Manager',
    n.name_kr = 'Rule Manager',
    n.domain = 'MG',
    n.definition = '비즈니스 툴 개발 및 관리 기능',
    n.aliases = ['Rule Manager'];

MERGE (n:Concept {id: 'rule_service'})
SET     n.name = 'Rule Service',
    n.name_kr = 'Rule Service',
    n.domain = 'MG',
    n.definition = '룰 엔진 서버 기능 - 개발한 Rule을 Deploy & Service 관리',
    n.aliases = ['Rule Service'];

MERGE (n:Concept {id: 'rule_monitoring'})
SET     n.name = 'Rule Monitoring',
    n.name_kr = 'Rule Monitoring',
    n.domain = 'MG',
    n.definition = '비즈니스 Rule 모니터링 - 비즈니스 프로세스 개선 활동 및 비즈니스 룰 성능 튜닝 지원',
    n.aliases = ['Rule Monitoring'];

MERGE (n:Concept {id: 'interface_engine'})
SET     n.name = 'Interface Engine',
    n.name_kr = 'Interface Engine',
    n.domain = 'MG',
    n.definition = '전 방향 추론, 후 방향 추론, 테이블 추론 등과 같은 추론 기법이 구현된 모듈 - Rule 수집, 추론 방법, 수행방법, 시기 결정',
    n.aliases = ['Interface Engine'];

MERGE (n:Concept {id: 'rule_repository'})
SET     n.name = 'Rule Repository',
    n.name_kr = 'Rule Repository',
    n.domain = 'MG',
    n.definition = 'Rule을 저장하고 Log 기록',
    n.aliases = ['Rule Repository'];

MERGE (n:Concept {id: '변화_관리'})
SET     n.name = '변화 관리',
    n.name_kr = '변화 관리',
    n.domain = 'MG',
    n.definition = '비즈니스 룰이 별도로 관리됨에 따라 기업 환경 변화에 따른 비즈니스 룰 관리 용이';

MERGE (n:Concept {id: 'time_to_market'})
SET     n.name = 'Time-To-Market',
    n.name_kr = 'Time-To-Market',
    n.domain = 'MG',
    n.definition = '개발자의 도움 없이 실무자가 룰을 추가, 수정, 삭제 용이하여 소요 시간 단출',
    n.aliases = ['Time-To-Market'];

MERGE (n:Concept {id: '구현_용이'})
SET     n.name = '구현 용이',
    n.name_kr = '구현 용이',
    n.domain = 'MG',
    n.definition = '실무자의 경험적 지식을 용이하게 구현 가능';

MERGE (n:Concept {id: 'bi_수준_향상'})
SET     n.name = 'BI 수준 향상',
    n.name_kr = 'BI 수준 향상',
    n.domain = 'MG',
    n.definition = '조직 구성원의 지식을 시스템화함으로써 구성원의 지식 관리';

MERGE (n:Concept {id: '의사결정_지원'})
SET     n.name = '의사결정 지원',
    n.name_kr = '의사결정 지원',
    n.domain = 'MG',
    n.definition = '전문가시스템의 고유기능인 의사결정 지원';

MERGE (n:Concept {id: 'bam'})
SET     n.name = 'BAM',
    n.name_kr = 'BAM',
    n.domain = 'MG',
    n.aliases = ['BAM'];

// --- 관계 ---

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: '프로세스_관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: '추론기능_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'monitoring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'engine'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'repository'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'rule_manager'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'rule_service'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'rule_monitoring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'interface_engine'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'rule_repository'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: '변화_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'time_to_market'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: '구현_용이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'bi_수준_향상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: '의사결정_지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Concept {id: 'bre'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Concept {id: 'bam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Document {id: 'MG_077'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bre'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추론기능_지원'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monitoring'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'engine'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'repository'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule_manager'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule_service'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule_monitoring'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interface_engine'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule_repository'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_to_market'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현_용이'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bi_수준_향상'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정_지원'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_078: Open Innovation
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_078'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'open_innovation'})
SET     n.name = 'Open Innovation',
    n.name_kr = 'Open Innovation',
    n.domain = 'MG',
    n.aliases = ['Open Innovation'];

MERGE (n:Concept {id: '프로세스_혁신'})
SET     n.name = '프로세스 혁신',
    n.name_kr = '프로세스 혁신',
    n.domain = 'MG';

MERGE (n:Concept {id: '글로벌화'})
SET     n.name = '글로벌화',
    n.name_kr = '글로벌화',
    n.domain = 'MG',
    n.definition = '유사한 경제적 흐름, 세계 지역시장 연결성';

MERGE (n:Concept {id: '가속화'})
SET     n.name = '가속화',
    n.name_kr = '가속화',
    n.domain = 'MG',
    n.definition = '제품 Life cycle 단축, IT 기술 발전에 기여';

MERGE (n:Concept {id: '지능화'})
SET     n.name = '지능화',
    n.name_kr = '지능화',
    n.domain = 'MG',
    n.definition = 'IT 기반 지식원천 확산, 창조적 혁신';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG',
    n.definition = '지식 체화 인력의 유동성 확대';

MERGE (n:Concept {id: '융/복합화'})
SET     n.name = '융/복합화',
    n.name_kr = '융/복합화',
    n.domain = 'MG',
    n.definition = '기술간 상호 시너지 창출, 신 부가가치 창출';

MERGE (n:Concept {id: '방법'})
SET     n.name = '방법',
    n.name_kr = '방법',
    n.domain = 'MG';

MERGE (n:Concept {id: '대표사례'})
SET     n.name = '대표사례',
    n.name_kr = '대표사례',
    n.domain = 'MG';

MERGE (n:Concept {id: 'nih'})
SET     n.name = 'NIH',
    n.name_kr = 'NIH',
    n.domain = 'MG',
    n.definition = 'Not Invented Here, 외부 기술을 경시하는 태도',
    n.aliases = ['NIH'];

MERGE (n:Concept {id: 'nit'})
SET     n.name = 'NIT',
    n.name_kr = 'NIT',
    n.domain = 'MG',
    n.definition = 'Not Invented There, 글로벌 선진기업이 검증하지 않은 것에 불신 (There는 신진국과 선진기업을 의미)',
    n.aliases = ['NIT'];

MERGE (n:Concept {id: 'nsh'})
SET     n.name = 'NSH',
    n.name_kr = 'NSH',
    n.domain = 'MG',
    n.definition = 'Not Sold Here, 외부 자원을 이용한 사업 및 마케팅은 의미 없다고 생각함',
    n.aliases = ['NSH'];

// --- 관계 ---

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '프로세스_혁신'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '글로벌화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '가속화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '지능화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '집단지성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '융/복합화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '방법'})
MERGE (b:Concept {id: '대표사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: '대표사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: 'nih'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: 'nit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Concept {id: 'nsh'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Document {id: 'MG_078'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_innovation'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_혁신'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가속화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '융/복합화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방법'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대표사례'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nih'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nit'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nsh'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_079: Crowd Sourcing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_079'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'crowd_sourcing'})
SET     n.name = 'Crowd Sourcing',
    n.name_kr = 'Crowd Sourcing',
    n.domain = 'MG',
    n.aliases = ['Crowd Sourcing'];

MERGE (n:Concept {id: 'mg'})
SET     n.name = 'MG',
    n.name_kr = '경영전략',
    n.domain = 'MG',
    n.aliases = ['MG', '경영전략'];

MERGE (n:Concept {id: '아웃소싱_표준/정책'})
SET     n.name = '아웃소싱 표준/정책',
    n.name_kr = '아웃소싱 표준/정책',
    n.domain = 'MG';

MERGE (n:Concept {id: '대중'})
SET     n.name = '대중',
    n.name_kr = '대중',
    n.domain = 'MG';

MERGE (n:Concept {id: '집단지성'})
SET     n.name = '집단지성',
    n.name_kr = '집단지성',
    n.domain = 'MG';

MERGE (n:Concept {id: '온라인_비즈니스'})
SET     n.name = '온라인 비즈니스',
    n.name_kr = '온라인 비즈니스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'long_tail'})
SET     n.name = 'Long Tail',
    n.name_kr = '롱테일 현상',
    n.domain = 'MG',
    n.aliases = ['Long Tail', '롱테일 현상'];

MERGE (n:Concept {id: '웹_3.0'})
SET     n.name = '웹 3.0',
    n.name_kr = '웹 3.0',
    n.domain = 'MG',
    n.definition = '웹 3.0으로 가능해진 새로운 다양한 가능성 중 핵심적인 것 중 하나';

MERGE (n:Concept {id: '참여_개방'})
SET     n.name = '참여 개방',
    n.name_kr = '참여 개방',
    n.domain = 'MG',
    n.definition = '제품 혹은 서비스의 개발과정에 비전문가나 외부전문가들의 참여를 개방하고 유도';

MERGE (n:Concept {id: '외부_참여'})
SET     n.name = '외부 참여',
    n.name_kr = '외부 참여',
    n.domain = 'MG',
    n.definition = '한정적인 내부의 인적 자원의존이 아닌, 많은 외부의 인적 자원 활용 가능';

MERGE (n:Concept {id: '이익_공유'})
SET     n.name = '이익 공유',
    n.name_kr = '이익 공유',
    n.domain = 'MG',
    n.definition = '외부인은 이러한 참여를 통해 더 나은 제품, 서비스 이용 및 이익을 공유 가능';

// --- 관계 ---

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Concept {id: 'mg'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '아웃소싱_표준/정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '대중'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '집단지성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '온라인_비즈니스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: 'long_tail'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '웹_3.0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '참여_개방'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '외부_참여'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Concept {id: '이익_공유'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Document {id: 'MG_079'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'crowd_sourcing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mg'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱_표준/정책'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대중'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집단지성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_비즈니스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'long_tail'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_3.0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여_개방'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_참여'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이익_공유'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_080: PDCA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_080'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'pdca'})
SET     n.name = 'PDCA',
    n.name_kr = 'PDCA',
    n.domain = 'MG',
    n.aliases = ['PDCA'];

MERGE (n:Concept {id: '프로세스_혁신'})
SET     n.name = '프로세스 혁신',
    n.name_kr = '프로세스 혁신',
    n.domain = 'MG';

MERGE (n:Concept {id: 'plan'})
SET     n.name = 'Plan',
    n.name_kr = 'Plan',
    n.domain = 'MG',
    n.aliases = ['Plan'];

MERGE (n:Concept {id: 'do'})
SET     n.name = 'Do',
    n.name_kr = 'Do',
    n.domain = 'MG',
    n.aliases = ['Do'];

MERGE (n:Concept {id: 'check'})
SET     n.name = 'Check',
    n.name_kr = 'Check',
    n.domain = 'MG',
    n.aliases = ['Check'];

MERGE (n:Concept {id: 'action'})
SET     n.name = 'Action',
    n.name_kr = 'Action',
    n.domain = 'MG',
    n.aliases = ['Action'];

MERGE (n:Concept {id: 'act'})
SET     n.name = 'Act',
    n.name_kr = '조치',
    n.domain = 'MG',
    n.definition = '프로세스 성과를 지속적으로 개선하기 위한 활동',
    n.aliases = ['Act', '조치'];

// --- 관계 ---

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: '프로세스_혁신'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: 'plan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: 'do'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: 'check'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: 'action'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Concept {id: 'act'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Document {id: 'MG_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_혁신'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plan'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'do'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'check'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'action'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'act'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_081: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_081'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_082: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_082'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_083: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_083'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_084: ALM (Application Lifecycle Management)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_084'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'application_lifecycle_management'})
SET     n.name = 'Application Lifecycle Management',
    n.name_kr = 'ALM',
    n.domain = 'MG',
    n.aliases = ['Application Lifecycle Management', 'ALM'];

MERGE (n:Concept {id: '경영전략'})
SET     n.name = '경영전략',
    n.name_kr = '경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '생명주기관리'})
SET     n.name = '생명주기관리',
    n.name_kr = '생명주기관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'alm'})
SET     n.name = 'ALM',
    n.name_kr = 'ALM',
    n.domain = 'MG',
    n.aliases = ['ALM'];

MERGE (n:Concept {id: '이개소빌'})
SET     n.name = '이개소빌',
    n.name_kr = '이개소빌',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '생명주기관리'})
MERGE (b:Concept {id: '경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'alm'})
MERGE (b:Concept {id: '생명주기관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application_lifecycle_management'})
MERGE (b:Concept {id: '이개소빌'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_lifecycle_management'})
MERGE (b:Document {id: 'MG_084'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'application_lifecycle_management'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생명주기관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'alm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이개소빌'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_085: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_085'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_086: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_086'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_087: EIP(Enterprise Intergration Patterns)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_087'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'enterprise_intergration_patterns'})
SET     n.name = 'Enterprise Intergration Patterns',
    n.name_kr = 'EIP',
    n.domain = 'MG',
    n.aliases = ['Enterprise Intergration Patterns', 'EIP'];

MERGE (n:Concept {id: 'eip'})
SET     n.name = 'EIP',
    n.name_kr = 'EIP',
    n.domain = 'MG',
    n.aliases = ['EIP'];

MERGE (n:Concept {id: 'ep'})
SET     n.name = 'EP',
    n.name_kr = 'EP',
    n.domain = 'MG',
    n.aliases = ['EP'];

MERGE (n:Concept {id: 'ekp'})
SET     n.name = 'EKP',
    n.name_kr = 'EKP',
    n.domain = 'MG',
    n.aliases = ['EKP'];

MERGE (n:Concept {id: 'sso'})
SET     n.name = 'SSO',
    n.name_kr = 'SSO',
    n.domain = 'MG',
    n.aliases = ['SSO'];

MERGE (n:Concept {id: 'personalization'})
SET     n.name = 'Personalization',
    n.name_kr = '개인화',
    n.domain = 'MG',
    n.aliases = ['Personalization', '개인화'];

MERGE (n:Concept {id: 'kms'})
SET     n.name = 'KMS',
    n.name_kr = 'KMS',
    n.domain = 'MG',
    n.aliases = ['KMS'];

MERGE (n:Concept {id: 'dw'})
SET     n.name = 'DW',
    n.name_kr = 'DW',
    n.domain = 'MG',
    n.aliases = ['DW'];

MERGE (n:Concept {id: '기업포털'})
SET     n.name = '기업포털',
    n.name_kr = '기업포털',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'ep'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'ekp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'sso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'personalization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'kms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: 'dw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Concept {id: '기업포털'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Document {id: 'MG_087'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'enterprise_intergration_patterns'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eip'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ep'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ekp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'personalization'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kms'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dw'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업포털'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_088: EAI
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_088'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'eai'})
SET     n.name = 'EAI',
    n.name_kr = 'EAI',
    n.domain = 'MG',
    n.aliases = ['EAI'];

MERGE (n:Concept {id: '통합시스템'})
SET     n.name = '통합시스템',
    n.name_kr = '통합시스템',
    n.domain = 'MG';

MERGE (n:Threat {id: 'adapter'})
SET     n.name = 'adapter',
    n.name_kr = 'adapter',
    n.domain = 'MG',
    n.aliases = ['adapter'];

MERGE (n:Concept {id: 'workflow'})
SET     n.name = 'workflow',
    n.name_kr = 'workflow',
    n.domain = 'MG',
    n.aliases = ['workflow'];

MERGE (n:Concept {id: 'mbus'})
SET     n.name = 'mbus',
    n.name_kr = 'mbus',
    n.domain = 'MG',
    n.aliases = ['mbus'];

// --- 관계 ---

MERGE (a:Concept {id: 'eai'})
MERGE (b:Concept {id: '통합시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Threat {id: 'adapter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Concept {id: 'workflow'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Concept {id: 'mbus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Document {id: 'MG_088'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'adapter'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'workflow'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mbus'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_089: Data Warehouse
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_089'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'data_warehouse'})
SET     n.name = 'Data Warehouse',
    n.name_kr = 'Data Warehouse',
    n.domain = 'MG',
    n.aliases = ['Data Warehouse'];

MERGE (n:Concept {id: '주통시비'})
SET     n.name = '주통시비',
    n.name_kr = '주통시비',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Concept {id: '주통시비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Document {id: 'MG_089'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주통시비'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// MG 도메인 자동 생성 완료
// 노드: 236개
// 관계: 497개
// ================================================================