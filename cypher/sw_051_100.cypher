// ================================================================
// SW 도메인 (SW_051 ~ SW_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SW_038.1: 소프트웨어 산업 진흥법 -> SW진흥법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_038.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
SET     n.name = '소프트웨어 산업 진흥법 -> SW진흥법',
    n.name_kr = '소프트웨어 산업 진흥법 -> SW진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주프로세스'})
SET     n.name = '발주프로세스',
    n.name_kr = '발주프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_산업_진흥법'})
SET     n.name = '소프트웨어 산업 진흥법',
    n.name_kr = '소프트웨어 산업 진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw산업기반조성'})
SET     n.name = 'SW산업기반조성',
    n.name_kr = 'SW산업기반조성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw융합_및_sw교육'})
SET     n.name = 'SW융합 및 SW교육',
    n.name_kr = 'SW융합 및 SW교육',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw사업_선진화'})
SET     n.name = 'SW사업 선진화',
    n.name_kr = 'SW사업 선진화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw인력양성'})
SET     n.name = 'SW인력양성',
    n.name_kr = 'SW인력양성',
    n.domain = 'SW';

MERGE (n:Concept {id: '연구_및_기술개발_축진'})
SET     n.name = '연구 및 기술개발 축진',
    n.name_kr = '연구 및 기술개발 축진',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw융합_촉진'})
SET     n.name = 'SW융합 촉진',
    n.name_kr = 'SW융합 촉진',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw안전_확보'})
SET     n.name = 'SW안전 확보',
    n.name_kr = 'SW안전 확보',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw교육'})
SET     n.name = 'SW교육',
    n.name_kr = 'SW교육',
    n.domain = 'SW';

MERGE (n:Concept {id: '민간투자형_sw사업'})
SET     n.name = '민간투자형 SW사업',
    n.name_kr = '민간투자형 SW사업',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
SET     n.name = '소프트웨어 진흥 실행전략(과기정통부',
    n.name_kr = '소프트웨어 진흥 실행전략(과기정통부',
    n.domain = 'SW';

MERGE (n:Concept {id: '2020.12.03)'})
SET     n.name = '2020.12.03)',
    n.name_kr = '2020.12.03)',
    n.domain = 'SW';

MERGE (n:Concept {id: '과학/기술'})
SET     n.name = '과학/기술',
    n.name_kr = '과학/기술',
    n.domain = 'SW',
    n.definition = 'SW기초 기술의 진흥, SW 융합 기반 기술의 진흥';

MERGE (n:Concept {id: '산업/경제'})
SET     n.name = '산업/경제',
    n.name_kr = '산업/경제',
    n.domain = 'SW',
    n.definition = 'SW사업의 선진화, SW산업의 경쟁력 강화, SW융합으로 전 산업혁신';

MERGE (n:Concept {id: '사회'})
SET     n.name = '사회',
    n.name_kr = '사회',
    n.domain = 'SW',
    n.definition = '전 국민 SW기초소양 함양, SW 사회 조성, SW 안전 사회 실현';

MERGE (n:Concept {id: '다른_법률과의_관계'})
SET     n.name = '다른 법률과의 관계',
    n.name_kr = '다른 법률과의 관계',
    n.domain = 'SW',
    n.definition = '동 법이 소프트웨어 분야의 기본법·일반법적 성격을 가지고 있음을 명확히 하기 위함';

MERGE (n:Concept {id: '실태조사'})
SET     n.name = '실태조사',
    n.name_kr = '실태조사',
    n.domain = 'SW',
    n.definition = 'SW산업 진흥과 국가 전체의 SW역량 강화를 위한 실효성 있는 정책을 수립하기 위해 SW산업, SW융합 등 정확한 실태 파악이 요구됨';

MERGE (n:Concept {id: '지역별_소프트웨어산업의_진흥'})
SET     n.name = '지역별 소프트웨어산업의 진흥',
    n.name_kr = '지역별 소프트웨어산업의 진흥',
    n.domain = 'SW',
    n.definition = '지역 SW산업진흥사업으로 지역 ICT·SW진흥기관에 지원하고 있으나, 이에 대한 명확한 법적 근거가 필요';

MERGE (n:Concept {id: '소프트웨어_창업의_활성화'})
SET     n.name = '소프트웨어 창업의 활성화',
    n.name_kr = '소프트웨어 창업의 활성화',
    n.domain = 'SW',
    n.definition = '현행법은 SW창업 활성화를 위해 창업 공간 제공의 협소한 사항만을 규정중으로, 창업 활성화 및 우수 창업기업 육성의 체계적 지원 근거 부족';

MERGE (n:Concept {id: '소프트웨어_지식재산권의_보호'})
SET     n.name = '소프트웨어 지식재산권의 보호',
    n.name_kr = '소프트웨어 지식재산권의 보호',
    n.domain = 'SW',
    n.definition = '현행 SW산업진흥법에는 관련 규정이 없어, SW지식재산권 보호를 위한 적극적인 정책 대응이 어려운 상황으로, 이에 대한 근거 규정 마련 필요';

MERGE (n:Concept {id: '소프트웨어_인력의_양성'})
SET     n.name = '소프트웨어 인력의 양성',
    n.name_kr = '소프트웨어 인력의 양성',
    n.domain = 'SW',
    n.definition = '현행 조항은 SW인력 양성에 대해 선언적 수준에 그쳐 지원범위 등이 모호하고 실제 지원사업의 법적 근거로 기능하지 못함';

MERGE (n:Concept {id: '소프트웨어_전문교육기관의_설치·운영'})
SET     n.name = '소프트웨어 전문교육기관의 설치·운영',
    n.name_kr = '소프트웨어 전문교육기관의 설치·운영',
    n.domain = 'SW',
    n.definition = 'SW인재를 양성하기 위해서는 기존의 프로그램과는 차별화되는, 프로젝트 중심의 혁신적인 교육 프로그램으로 운영되는 전문교육기관이 필요하며, 전문교육기관의 체계적 지원을 위한 법적 근거 필요';

MERGE (n:Concept {id: '소프트웨어의_연구_및_기술개발_촉진_등'})
SET     n.name = '소프트웨어의 연구 및 기술개발 촉진 등',
    n.name_kr = '소프트웨어의 연구 및 기술개발 촉진 등',
    n.domain = 'SW',
    n.definition = '지식정보재화인 SW특성에 부합한 국가 연구개발 관리를 통해 보다 창의적인 국가 SW연구 개발환경 조성 필요 - SW융합 활성화를 위한 기반기초기술 축적 필요';

MERGE (n:Concept {id: '연구활동_지원'})
SET     n.name = '연구활동 지원',
    n.name_kr = '연구활동 지원',
    n.domain = 'SW',
    n.definition = '이공계 기초연구분야에 국한되어 지원 중인 연구자 개인 연구 활동 지원을 SW분야로 확대·지원할 수 있는 근거 마련 필요';

MERGE (n:Concept {id: '소프트웨어공학_기술의_연구·개발_등'})
SET     n.name = '소프트웨어공학 기술의 연구·개발 등',
    n.name_kr = '소프트웨어공학 기술의 연구·개발 등',
    n.domain = 'SW',
    n.definition = '국내 중소․중견기업의 SW공학기술 활용확산을 위한 기반조성과 최신 SW공학기술에 대한 연구개발을 확대․지원할 수 있는 근거 마련 필요';

MERGE (n:Concept {id: '소프트웨어융합_촉진'})
SET     n.name = '소프트웨어융합 촉진',
    n.name_kr = '소프트웨어융합 촉진',
    n.domain = 'SW',
    n.definition = '4차 산업혁명 시대 SW가 전 산업에 융합되어 새로운 서비스와 가치를 창출하는 등 SW가 핵심 경쟁요소로 작용';

MERGE (n:Concept {id: '소프트웨어개발보안_진흥'})
SET     n.name = '소프트웨어개발보안 진흥',
    n.name_kr = '소프트웨어개발보안 진흥',
    n.domain = 'SW',
    n.definition = '현재 SW개발보안에 관한 법률 규정은 없으며 공공SW사업에만 적용되고 있어 국가 SW역량 강화를 위해서는 SW개발보안을 민간분야에 확산시키는 등 보다 진흥할 필요가 있음';

MERGE (n:Concept {id: '소프트웨어안전_확보'})
SET     n.name = '소프트웨어안전 확보',
    n.name_kr = '소프트웨어안전 확보',
    n.domain = 'SW',
    n.definition = '민간의 SW안전 인식이 미비한 우리나라의 경우, SW안전성 확보를 위한 법적 근거를 마련하고 정책적 지원이 필요한 상황';

MERGE (n:Concept {id: '소프트웨어안전_산업_진흥_등'})
SET     n.name = '소프트웨어안전 산업 진흥 등',
    n.name_kr = '소프트웨어안전 산업 진흥 등',
    n.domain = 'SW',
    n.definition = 'SW안전의 중요성이 강조됨에 따라 관련 시장은 점점 커지고 있으나 국내 안전 전문기업의 기술력은 부족하며, 경쟁력을 갖춘 글로벌기업에 의해 내수 시장마저 잠식';

MERGE (n:Concept {id: '소프트웨어교육의_활성화'})
SET     n.name = '소프트웨어교육의 활성화',
    n.name_kr = '소프트웨어교육의 활성화',
    n.domain = 'SW',
    n.definition = '국민 누구나 쉽고 편리하게 일정 수준 이상의 SW교육을 받을 수 있도록 표준화된 교육과정·콘텐츠 등을 개발‧보급할 필요성이 있음';

MERGE (n:Concept {id: '초·중등학교의_소프트웨어교육_진흥'})
SET     n.name = '초·중등학교의 소프트웨어교육 진흥',
    n.name_kr = '초·중등학교의 소프트웨어교육 진흥',
    n.domain = 'SW',
    n.definition = '초·중학교에서 SW필수교육이 시작됨에 따라 학교 SW 공교육의 내실화 및 선진국 수준의 SW교육이 이루어 질 수있도록 국가 및 지자체의 지원 필요';

MERGE (n:Concept {id: '소프트웨어_영재_발굴_및_육성'})
SET     n.name = '소프트웨어 영재 발굴 및 육성',
    n.name_kr = '소프트웨어 영재 발굴 및 육성',
    n.domain = 'SW',
    n.definition = '고급 SW인력의 수요는 급증하고 있으나, 국내 고급 SW인력은 부족';

MERGE (n:Concept {id: '소프트웨어_역량의_검정'})
SET     n.name = '소프트웨어 역량의 검정',
    n.name_kr = '소프트웨어 역량의 검정',
    n.domain = 'SW',
    n.definition = '기 시행 중인 SW역량지수의 시행 근거가 부재하여 공공 및 민간 부문 확산에 어려움이 있으므로 관련 조항 신설 필요';

MERGE (n:Concept {id: '소프트웨어_문화_조성'})
SET     n.name = '소프트웨어 문화 조성',
    n.name_kr = '소프트웨어 문화 조성',
    n.domain = 'SW',
    n.definition = 'SW에 대한 국민의 이해를 높이고, SW가 널리 활용될 수 있도록 SW 친화적인 사회·문화 조성 필요';

MERGE (n:Concept {id: '소프트웨어기술자_우대'})
SET     n.name = '소프트웨어기술자 우대',
    n.name_kr = '소프트웨어기술자 우대',
    n.domain = 'SW',
    n.definition = 'SW종사자의 복지 강화 우수인재들의 SW분야 전공의 선호도 상승 견인 - 우수인재가 SW산업으로 유입될 수 있는 환경 조성 - SW문화 조성의 일환으로 SW를 만들어 내는 주체인 SW개발자가 우대받으며 안정적으로 일할 수 있는 여건을 조성하고 사기를 진작 시키기 위한 우대조치 필요';

MERGE (n:Concept {id: '공정계약의_원칙'})
SET     n.name = '공정계약의 원칙',
    n.name_kr = '공정계약의 원칙',
    n.domain = 'SW',
    n.definition = '국내 SW시장의 약 70%를 차지하는 민간SW 분야가 사적계약이라는 이유로 법적 보호장치가 미흡하여 이를 강화하는 법 개정 필요 - 계약당사자 일방에게 불공정한 계약이 이루어지지 않도록 예방하고 분쟁 발생하는 경우에도 불공정한 조항을 무효화하여 당사자의 정당한 권리가 침해되지 않도록 함';

MERGE (n:Concept {id: '불이익행위등의_금지'})
SET     n.name = '불이익행위등의 금지',
    n.name_kr = '불이익행위등의 금지',
    n.domain = 'SW',
    n.definition = '도급계약의 속성을 가진 시스템통합(System Integration) 형태의 SW사업의 경우 하도급법의 적용을 받는 것이 원칙임 - 그러나 해당 법률에 따른 분쟁해결을 모색하거나 신고와 관계기관의 사실조사를 통한 법 질서 확립을 기대하기에는 현실적인 어려움 존재';

MERGE (n:Concept {id: '민간투자형_공공소프트웨어사업'})
SET     n.name = '민간투자형 공공소프트웨어사업',
    n.name_kr = '민간투자형 공공소프트웨어사업',
    n.domain = 'SW',
    n.definition = '민간기업이 직접 공공 SW서비스의 구축과 운영을 담당한다면 효율적인 서비스 제공이 가능하고, 예산 제약으로 도입이 늦어질 수 있는 신규 시스템 구축도 앞당길 수 있음 - 민간부문의 자본과 기술을 활용, SW를 이용한 다양한 공공서비스 제공을 통해 사회문제를 해결하고 국민의 삶의 질 향상 가능';

MERGE (n:Concept {id: '발주기술지원'})
SET     n.name = '발주기술지원',
    n.name_kr = '발주기술지원',
    n.domain = 'SW',
    n.definition = '원활한 SW사업 추진을 위한 기술적 지원과 발주자 교육 등 발주자 전문성 및 역량 강화를 위한 기반을 마련할 필요가 있음 - 효율적인 발주기술지원을 위한 정보 축적을 위해 SW사업자, 기타 단체들의 정보제공 협조가 필수적인 바, 이에 대한 근거 필요';

MERGE (n:Concept {id: '소프트웨어사업_영향평가'})
SET     n.name = '소프트웨어사업 영향평가',
    n.name_kr = '소프트웨어사업 영향평가',
    n.domain = 'SW',
    n.definition = '공공SW사업의 민간시장 침해 방지를 위한 SW사업 영향평가의 법적근거가 신설되었으나, 제도의 실효성 확보를 위해 일부 보완 필요';

MERGE (n:Concept {id: '소프트웨어사업의_과업범위'})
SET     n.name = '소프트웨어사업의 과업범위',
    n.name_kr = '소프트웨어사업의 과업범위',
    n.domain = 'SW',
    n.definition = '요구사항이 상세화되지 않아 과업변경이 발생하고 SW기업은 수익성이 악화되며 SW품질이 저하되고 납기가 지연되는 상황 빈번 - 불명확한 과업내용으로 사업수행 도중 발주기관이 요구하더라도 과업변경 여부를 판단하기 어려워 결과적으로 과업변경심의위원회 등 SW기업 보호제도가 유명무실';

MERGE (n:Concept {id: '적정_사업기간_산정_등'})
SET     n.name = '적정 사업기간 산정 등',
    n.name_kr = '적정 사업기간 산정 등',
    n.domain = 'SW',
    n.definition = '적정 사업기간 확보를 통한 SW사업 품질 향상 등 견실한 SW산업생태계 보장과 법적 일관성과 정합성 확보를 위하여 「정보통신 진흥및 융합 활성화 등에 관한 특별법」의 적정 사업기간 산정 조문을 「소프트웨어 진흥법」으로 이관 필요';

MERGE (n:Concept {id: '소프트웨어사업_추진_시_사전협의'})
SET     n.name = '소프트웨어사업 추진 시 사전협의',
    n.name_kr = '소프트웨어사업 추진 시 사전협의',
    n.domain = 'SW',
    n.definition = '요구사항 상세화는 적정 대가 지급, 원활한 SW사업 추진을 위해 필수 불가결한 사항으로써 이를 실현하기 위한 제도적 장치 마련 필요';

MERGE (n:Concept {id: '중소_소프트웨어사업자의_사업참여_지원'})
SET     n.name = '중소 소프트웨어사업자의 사업참여 지원',
    n.name_kr = '중소 소프트웨어사업자의 사업참여 지원',
    n.domain = 'SW',
    n.definition = '민간투자형 SW사업의 추진 근거가 마련됨에 따라 이를 적극적으로 시행하여 투자가 활성화 될 수 있도록 해당 사업에 대한 대기업 참여';

MERGE (n:Concept {id: '소프트웨어사업_과업심의위원회'})
SET     n.name = '소프트웨어사업 과업심의위원회',
    n.name_kr = '소프트웨어사업 과업심의위원회',
    n.domain = 'SW',
    n.definition = '사실상 과업변경심의위원회가 유명무실하게 운영되어 과업범위를 명확히 할 필요가 있으며, 상대적 약자인 SW사업자의 개최 요구를 담보할 수 있는 근거 마련 필요';

MERGE (n:Concept {id: '상용소프트웨어_유통_활성화'})
SET     n.name = '상용소프트웨어 유통 활성화',
    n.name_kr = '상용소프트웨어 유통 활성화',
    n.domain = 'SW',
    n.definition = 'SI구축 위주의 국내 공공SW시장 구조 문제를 해결하기 위해 국가기관등이 상용SW 활용을 활성화 할 수 있도록 지원 근거 필요';

MERGE (n:Concept {id: '국가기관등의_상용소프트웨어_구매'})
SET     n.name = '국가기관등의 상용소프트웨어 구매',
    n.name_kr = '국가기관등의 상용소프트웨어 구매',
    n.domain = 'SW',
    n.definition = '기존 소프트웨어산업진흥법 제20조제2항(분리발주 규정)을 별도의 조문으로 분리하고 내용을 명확화';

MERGE (n:Concept {id: '소프트웨어산출물의_활용_보장'})
SET     n.name = '소프트웨어산출물의 활용 보장',
    n.name_kr = '소프트웨어산출물의 활용 보장',
    n.domain = 'SW',
    n.definition = 'SW산출물 활용을 통한 역량축적 및 기업의 성장기반 마련 등 SW산업활성화를 위해 SW사업에서 발생하는 SW산출물을 계약상대자가 실질적으로 반출·소유할 수 있도록 규정 신설 필요';

MERGE (n:Concept {id: '벌칙_적용에서의_공무원_의제'})
SET     n.name = '벌칙 적용에서의 공무원 의제',
    n.name_kr = '벌칙 적용에서의 공무원 의제',
    n.domain = 'SW',
    n.definition = '현행 SW산업진흥법은 공무원 의제 조항이 없어 신설함';

MERGE (n:Concept {id: '비밀_누설의_금지'})
SET     n.name = '비밀 누설의 금지',
    n.name_kr = '비밀 누설의 금지',
    n.domain = 'SW',
    n.definition = '제75조에 따라 공무원으로 의제되는 자는 업무 수행 중에 알게 된비밀을 제3자에게 누설해서는 안되기 때문에 비밀 누설을 금지하는 의무를 부과할 필요가 있음';

MERGE (n:Concept {id: '벌칙'})
SET     n.name = '벌칙',
    n.name_kr = '벌칙',
    n.domain = 'SW',
    n.definition = 'SW품질인증과 SW프로세스 품질인증은 SW사업자의 기술력을 입증하는 방법으로 많이 활용되고 있어 허위광고로 부당한 이득을 취하고자 하는 사례가 발생할 수 있어 이에 대한 벌칙을 부여할 필요 있음 - 비밀누설 금지의무의 실효성을 높이기 위해서도 벌칙조항이 필요함';

MERGE (n:Concept {id: '업계의_의견_수렴'})
SET     n.name = '업계의 의견 수렴',
    n.name_kr = '업계의 의견 수렴',
    n.domain = 'SW',
    n.definition = 'SW 중심의 사회경제적 변화를 달성하고 그 실효성을 확보를 위한 하위법령 마련 필요 - 하위법령은 구체적이고 집행에 관한 사항을 담기 때문에 반드시 업계의 의견을 수렴 중요';

MERGE (n:Concept {id: '고시_정비'})
SET     n.name = '고시 정비',
    n.name_kr = '고시 정비',
    n.domain = 'SW',
    n.definition = 'SW 발주, 인증 등과 관련된 고시들을 통일적이고 체계적으로 정비가 필요';

MERGE (n:Concept {id: '개발산출물의_반출과_활용'})
SET     n.name = '개발산출물의 반출과 활용',
    n.name_kr = '개발산출물의 반출과 활용',
    n.domain = 'SW',
    n.definition = 'SW개발에 대한 지식재산권을 ‘all or nothing식 접근’이 아닌 보다 섬세한 기준과 절차를 마련하여 사업자의 활용성을 보장해줄 수 있는 방안 고려';

MERGE (n:Concept {id: '과업변경심의의_실효성_담보'})
SET     n.name = '과업변경심의의 실효성 담보',
    n.name_kr = '과업변경심의의 실효성 담보',
    n.domain = 'SW',
    n.definition = '시행령과 고시에서 발주기관이 과업변경에 대한 심의를 부담 갖지 않도록 제도적 장치와 구체적인 개최기준 마련 필요';

MERGE (n:Concept {id: '사회변화에_대응하는_지속적_규정_정비_체계의_마련'})
SET     n.name = '사회변화에 대응하는 지속적 규정 정비 체계의 마련',
    n.name_kr = '사회변화에 대응하는 지속적 규정 정비 체계의 마련',
    n.domain = 'SW',
    n.definition = 'SW제값받기, 불공정 거래 환경 개선, 전문인력 양성 지원 등으로 SW 육성과 발전을 위해 지속적인 개선 필요 - SW 인재 양성, SW산업진흥기관 지정, SW 창업·연구개발 지원을 비롯해 국민 대상 SW교육 등에 관한 실체적인 하위법령을 마련 필요';

// --- 관계 ---

MERGE (a:Concept {id: '소프트웨어_산업_진흥법'})
MERGE (b:Concept {id: '발주프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw산업기반조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw융합_및_sw교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw사업_선진화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw인력양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '연구_및_기술개발_축진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw융합_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw안전_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: 'sw교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '민간투자형_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '2020.12.03)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '과학/기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '산업/경제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '사회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '다른_법률과의_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '실태조사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '지역별_소프트웨어산업의_진흥'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_창업의_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_지식재산권의_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_인력의_양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_전문교육기관의_설치·운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어의_연구_및_기술개발_촉진_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '연구활동_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어공학_기술의_연구·개발_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어융합_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어개발보안_진흥'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어안전_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어안전_산업_진흥_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어교육의_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '초·중등학교의_소프트웨어교육_진흥'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_영재_발굴_및_육성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_역량의_검정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어_문화_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어기술자_우대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '공정계약의_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '불이익행위등의_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '민간투자형_공공소프트웨어사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '발주기술지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어사업_영향평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어사업의_과업범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '적정_사업기간_산정_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어사업_추진_시_사전협의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '중소_소프트웨어사업자의_사업참여_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어사업_과업심의위원회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '상용소프트웨어_유통_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '국가기관등의_상용소프트웨어_구매'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '소프트웨어산출물의_활용_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '벌칙_적용에서의_공무원_의제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '비밀_누설의_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '벌칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '업계의_의견_수렴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '고시_정비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '개발산출물의_반출과_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '과업변경심의의_실효성_담보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Concept {id: '사회변화에_대응하는_지속적_규정_정비_체계의_마련'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Document {id: 'SW_038.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법_->_sw진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_산업_진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw산업기반조성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw융합_및_sw교육'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw사업_선진화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw인력양성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구_및_기술개발_축진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw융합_촉진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw안전_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw교육'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간투자형_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2020.12.03)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과학/기술'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업/경제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다른_법률과의_관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실태조사'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지역별_소프트웨어산업의_진흥'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_창업의_활성화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_지식재산권의_보호'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_인력의_양성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_전문교육기관의_설치·운영'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어의_연구_및_기술개발_촉진_등'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구활동_지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학_기술의_연구·개발_등'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어융합_촉진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어개발보안_진흥'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어안전_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어안전_산업_진흥_등'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어교육의_활성화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초·중등학교의_소프트웨어교육_진흥'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_영재_발굴_및_육성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_역량의_검정'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_문화_조성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어기술자_우대'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공정계약의_원칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불이익행위등의_금지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간투자형_공공소프트웨어사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주기술지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업_영향평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업의_과업범위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적정_사업기간_산정_등'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업_추진_시_사전협의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중소_소프트웨어사업자의_사업참여_지원'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어사업_과업심의위원회'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상용소프트웨어_유통_활성화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가기관등의_상용소프트웨어_구매'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어산출물의_활용_보장'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벌칙_적용에서의_공무원_의제'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비밀_누설의_금지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벌칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업계의_의견_수렴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고시_정비'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발산출물의_반출과_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업변경심의의_실효성_담보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회변화에_대응하는_지속적_규정_정비_체계의_마련'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_038.2: 소프트웨어 진행 실행전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_038.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '소프트웨어_진행_실행전략'})
SET     n.name = '소프트웨어 진행 실행전략',
    n.name_kr = '소프트웨어 진행 실행전략',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_진흥법'})
SET     n.name = '소프트웨어 진흥법',
    n.name_kr = '소프트웨어 진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw산업기반조성'})
SET     n.name = 'SW산업기반조성',
    n.name_kr = 'SW산업기반조성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw융합_및_sw교육'})
SET     n.name = 'SW융합 및 SW교육',
    n.name_kr = 'SW융합 및 SW교육',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw사업_선진화'})
SET     n.name = 'SW사업 선진화',
    n.name_kr = 'SW사업 선진화',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw인력양성'})
SET     n.name = 'SW인력양성',
    n.name_kr = 'SW인력양성',
    n.domain = 'SW';

MERGE (n:Concept {id: '연구_및_기술개발_축진'})
SET     n.name = '연구 및 기술개발 축진',
    n.name_kr = '연구 및 기술개발 축진',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw융합_촉진'})
SET     n.name = 'SW융합 촉진',
    n.name_kr = 'SW융합 촉진',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw안전_확보'})
SET     n.name = 'SW안전 확보',
    n.name_kr = 'SW안전 확보',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw교육'})
SET     n.name = 'SW교육',
    n.name_kr = 'SW교육',
    n.domain = 'SW';

MERGE (n:Concept {id: '민간투자형_sw사업'})
SET     n.name = '민간투자형 SW사업',
    n.name_kr = '민간투자형 SW사업',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
SET     n.name = '소프트웨어 진흥 실행전략(과기정통부',
    n.name_kr = '소프트웨어 진흥 실행전략(과기정통부',
    n.domain = 'SW';

MERGE (n:Concept {id: '2020.12.03)'})
SET     n.name = '2020.12.03)',
    n.name_kr = '2020.12.03)',
    n.domain = 'SW';

MERGE (n:Concept {id: '국제경쟁력_제고'})
SET     n.name = '국제경쟁력 제고',
    n.name_kr = '국제경쟁력 제고',
    n.domain = 'SW',
    n.definition = '지식재산권 보호 강화';

MERGE (n:Concept {id: '기업_수익성_강화'})
SET     n.name = '기업 수익성 강화',
    n.name_kr = '기업 수익성 강화',
    n.domain = 'SW',
    n.definition = 'SW 중심 생태계 조성으로 우수인력, 가치, 인식의 개선을 통한 기업의 시장 점유율 향상과 선진형 SW 관리 프로세스 도입,정착 강화';

MERGE (n:Concept {id: 'sw_안전성_확보'})
SET     n.name = 'SW 안전성 확보',
    n.name_kr = 'SW 안전성 확보',
    n.domain = 'SW',
    n.definition = 'SW안전분야 산업 진흥';

MERGE (n:Metric {id: 'sw안전기술_연구_추진_강화'})
SET     n.name = 'SW안전기술 연구 추진 강화',
    n.name_kr = 'SW안전기술 연구 추진 강화',
    n.domain = 'SW',
    n.definition = 'SW 역할 증가 및 복잡도로 인해 SW에 대한 안전 성 강화가 요구되며, 해외시장에서도 SW 안전기술 적용에 대한 요구가 확대되어 국제표준을 기반으로 한 SW 안전기술 연구 추진 강화';

MERGE (n:Concept {id: 'sw품질향상'})
SET     n.name = 'SW품질향상',
    n.name_kr = 'SW품질향상',
    n.domain = 'SW',
    n.definition = 'SW개발자 근로여건 강화';

MERGE (n:Concept {id: '우수_개발자_이탈방지'})
SET     n.name = '우수 개발자 이탈방지',
    n.name_kr = '우수 개발자 이탈방지',
    n.domain = 'SW',
    n.definition = '민간에서 일상화된 원격지 개발을 공공SW 개발 사 업에도 적용하여 SW사업자가 발주처에 직원들의 근로지를 제안하고 우수한 개발자의 이탈 방지 가능';

MERGE (n:Concept {id: 'sw산업융합_활성화'})
SET     n.name = 'SW산업융합 활성화',
    n.name_kr = 'SW산업융합 활성화',
    n.domain = 'SW',
    n.definition = '타 산업 분야 혁신 유도';

MERGE (n:Concept {id: '신사업_분야_발굴'})
SET     n.name = '신사업 분야 발굴',
    n.name_kr = '신사업 분야 발굴',
    n.domain = 'SW',
    n.definition = '지역별 우수 산업 분야의 지식 클러스터를 조성하여 SW산업과의 융합과 전문 업무 수행을 위한 진흥 기 관의 지정을 통해 신규 가치 창출 가능';

MERGE (n:Concept {id: 'sw연구개발_풍토_조성'})
SET     n.name = 'SW연구개발 풍토 조성',
    n.name_kr = 'SW연구개발 풍토 조성',
    n.domain = 'SW',
    n.definition = 'SW 인재 조기 육성';

MERGE (n:Concept {id: 'sw_신기술_연구_장려'})
SET     n.name = 'SW 신기술 연구 장려',
    n.name_kr = 'SW 신기술 연구 장려',
    n.domain = 'SW',
    n.definition = 'SW 융합 R&D로 단순히 새로운 SW개발 및 고도 화가 아닌 전 산업 영역의 변화 유도와 원천성이 강한 세계적 수준의 SW 핵심기술 연구 장려';

MERGE (n:Concept {id: '경제,_문화적_이해도_향상'})
SET     n.name = '경제, 문화적 이해도 향상',
    n.name_kr = '경제, 문화적 이해도 향상',
    n.domain = 'SW',
    n.definition = '국민 이해도 향상';

MERGE (n:Concept {id: '민간_협력_자본_유치'})
SET     n.name = '민간 협력 자본 유치',
    n.name_kr = '민간 협력 자본 유치',
    n.domain = 'SW',
    n.definition = '민간투자형 공공SW 사업에 대기업 참여 제한을 허 용하여 정부와 민간 공동의 특수목적법인(SPC) 설 립을 통한 대기업의 우수한 기술력, 자본 활용 가능';

// --- 관계 ---

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '소프트웨어_진흥법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw산업기반조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw융합_및_sw교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw사업_선진화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw인력양성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '연구_및_기술개발_축진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw융합_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw안전_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '민간투자형_sw사업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '2020.12.03)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '국제경쟁력_제고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '기업_수익성_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw_안전성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Metric {id: 'sw안전기술_연구_추진_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw품질향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '우수_개발자_이탈방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw산업융합_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '신사업_분야_발굴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw연구개발_풍토_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: 'sw_신기술_연구_장려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '경제,_문화적_이해도_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Concept {id: '민간_협력_자본_유치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Document {id: 'SW_038.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '소프트웨어_진행_실행전략'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw산업기반조성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw융합_및_sw교육'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw사업_선진화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw인력양성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구_및_기술개발_축진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw융합_촉진'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw안전_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw교육'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간투자형_sw사업'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_진흥_실행전략(과기정통부'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2020.12.03)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국제경쟁력_제고'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_수익성_강화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_안전성_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sw안전기술_연구_추진_강화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw품질향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우수_개발자_이탈방지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw산업융합_활성화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신사업_분야_발굴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw연구개발_풍토_조성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_신기술_연구_장려'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경제,_문화적_이해도_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간_협력_자본_유치'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_038.3: 원격개발
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_038.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '원격개발'})
SET     n.name = '원격개발',
    n.name_kr = '원격개발',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어진흥법'})
SET     n.name = '소프트웨어진흥법',
    n.name_kr = '소프트웨어진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발자_워라밸_향상'})
SET     n.name = '개발자 워라밸 향상',
    n.name_kr = '개발자 워라밸 향상',
    n.domain = 'SW';

MERGE (n:Concept {id: '체류_비용_감소'})
SET     n.name = '체류 비용 감소',
    n.name_kr = '체류 비용 감소',
    n.domain = 'SW';

MERGE (n:Concept {id: '발주역량_향상'})
SET     n.name = '발주역량 향상',
    n.name_kr = '발주역량 향상',
    n.domain = 'SW';

MERGE (n:Concept {id: '공정생태계_조성'})
SET     n.name = '공정생태계 조성',
    n.name_kr = '공정생태계 조성',
    n.domain = 'SW';

MERGE (n:Concept {id: '세부항목'})
SET     n.name = '세부항목',
    n.name_kr = '세부항목',
    n.domain = 'SW';

MERGE (n:Concept {id: '관리방법'})
SET     n.name = '관리방법',
    n.name_kr = '관리방법',
    n.domain = 'SW';

MERGE (n:Concept {id: '역량_측면'})
SET     n.name = '역량 측면',
    n.name_kr = '역량 측면',
    n.domain = 'SW',
    n.definition = '발주관리 역량 향상-';

MERGE (n:Concept {id: '제도_측면'})
SET     n.name = '제도 측면',
    n.name_kr = '제도 측면',
    n.domain = 'SW',
    n.definition = 'SW 개발 장소 지정 개선';

// --- 관계 ---

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '소프트웨어진흥법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '개발자_워라밸_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '체류_비용_감소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '발주역량_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '공정생태계_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부항목'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '세부항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부항목'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '세부항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부항목'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '세부항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '관리방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '역량_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Concept {id: '제도_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Document {id: 'SW_038.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '원격개발'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자_워라밸_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체류_비용_감소'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발주역량_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공정생태계_조성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부항목'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리방법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역량_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_038.4: SW사업 근로환경
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_038.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw사업_근로환경'})
SET     n.name = 'SW사업 근로환경',
    n.name_kr = 'SW사업 근로환경',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어진흥법'})
SET     n.name = '소프트웨어진흥법',
    n.name_kr = '소프트웨어진흥법',
    n.domain = 'SW';

MERGE (n:Concept {id: '52시간'})
SET     n.name = '52시간',
    n.name_kr = '52시간',
    n.domain = 'SW';

MERGE (n:Concept {id: '탄력적_적용'})
SET     n.name = '탄력적 적용',
    n.name_kr = '탄력적 적용',
    n.domain = 'SW';

MERGE (n:Concept {id: '과도한_하청업무'})
SET     n.name = '과도한 하청업무',
    n.name_kr = '과도한 하청업무',
    n.domain = 'SW';

MERGE (n:Concept {id: '과업내용_변경'})
SET     n.name = '과업내용 변경',
    n.name_kr = '과업내용 변경',
    n.domain = 'SW';

MERGE (n:Concept {id: '적정_사업기간_확보'})
SET     n.name = '적정 사업기간 확보',
    n.name_kr = '적정 사업기간 확보',
    n.domain = 'SW';

MERGE (n:Concept {id: '과업변경절차_개선'})
SET     n.name = '과업변경절차 개선',
    n.name_kr = '과업변경절차 개선',
    n.domain = 'SW';

MERGE (n:Concept {id: '상생도모'})
SET     n.name = '상생도모',
    n.name_kr = '상생도모',
    n.domain = 'SW';

MERGE (n:Concept {id: '장기계속계약'})
SET     n.name = '장기계속계약',
    n.name_kr = '장기계속계약',
    n.domain = 'SW';

MERGE (n:Concept {id: '헤드카운팅'})
SET     n.name = '헤드카운팅',
    n.name_kr = '헤드카운팅',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '소프트웨어진흥법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '52시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '탄력적_적용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '과도한_하청업무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '과업내용_변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '적정_사업기간_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '과업변경절차_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '상생도모'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '장기계속계약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Concept {id: '헤드카운팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Document {id: 'SW_038.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw사업_근로환경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어진흥법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '52시간'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탄력적_적용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과도한_하청업무'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업내용_변경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적정_사업기간_확보'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과업변경절차_개선'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상생도모'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장기계속계약'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '헤드카운팅'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_039: SOA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_039'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'SW',
    n.aliases = ['SOA'];

MERGE (n:Concept {id: '개념_정리._uddi'})
SET     n.name = '개념 정리. UDDI',
    n.name_kr = '개념 정리. UDDI',
    n.domain = 'SW';

MERGE (n:Concept {id: 'wsdl'})
SET     n.name = 'WSDL',
    n.name_kr = 'WSDL',
    n.domain = 'SW',
    n.aliases = ['WSDL'];

MERGE (n:Concept {id: 'soap'})
SET     n.name = 'SOAP',
    n.name_kr = 'SOAP',
    n.domain = 'SW',
    n.aliases = ['SOAP'];

MERGE (n:Concept {id: '프로세스_중심'})
SET     n.name = '프로세스 중심',
    n.name_kr = '프로세스 중심',
    n.domain = 'SW',
    n.definition = '비즈니스 프로세스를 별도의 독립된 구성요소로 보고 이를 설계에서부터 분리 비즈니스 로직은 비즈니스 서비스에 두고 프로세스 서비스가 각 서비스를 통합';

MERGE (n:Concept {id: '플랫폼_독립적'})
SET     n.name = '플랫폼 독립적',
    n.name_kr = '플랫폼 독립적',
    n.domain = 'SW',
    n.definition = '이 기종 플랫폼과 상호운영이 가능';

MERGE (n:Concept {id: '어플리케이션_통합'})
SET     n.name = '어플리케이션 통합',
    n.name_kr = '어플리케이션 통합',
    n.domain = 'SW',
    n.definition = '성능요구, 보안 수준, 신뢰성 보장, 서비스 메시지 통신';

MERGE (n:Concept {id: '위치_투명성_제공'})
SET     n.name = '위치 투명성 제공',
    n.name_kr = '위치 투명성 제공',
    n.domain = 'SW',
    n.definition = '서비스를 제공하는 서버의 물리적인 위치를 정확히 알지 못하는 위치 투명성';

MERGE (n:Metric {id: 'loosely_coupled'})
SET     n.name = 'Loosely Coupled',
    n.name_kr = 'Loosely Coupled',
    n.domain = 'SW',
    n.definition = '서비스간 결합도를 줄여 느슨하게 연결한 형태, 프로세스 단순화',
    n.aliases = ['Loosely Coupled'];

MERGE (n:Concept {id: '메시지_및_프로세스_상태_관리'})
SET     n.name = '메시지 및 프로세스 상태 관리',
    n.name_kr = '메시지 및 프로세스 상태 관리',
    n.domain = 'SW',
    n.definition = '서비스가 전체 프로세스 상에서 어디에 위치해 있는지를 관리';

MERGE (n:Concept {id: '통신'})
SET     n.name = '통신',
    n.name_kr = '통신',
    n.domain = 'SW',
    n.definition = 'SOAP';

MERGE (n:Concept {id: '사용'})
SET     n.name = '사용',
    n.name_kr = '사용',
    n.domain = 'SW',
    n.definition = 'WSDL';

MERGE (n:Concept {id: '정의/탐색'})
SET     n.name = '정의/탐색',
    n.name_kr = '정의/탐색',
    n.domain = 'SW',
    n.definition = 'UDDI';

MERGE (n:Concept {id: '메시지'})
SET     n.name = '메시지',
    n.name_kr = '메시지',
    n.domain = 'SW',
    n.definition = 'XML';

MERGE (n:Concept {id: 'msa'})
SET     n.name = 'MSA',
    n.name_kr = 'MSA',
    n.domain = 'SW',
    n.aliases = ['MSA'];

MERGE (n:Concept {id: 'service_oriented_architecture'})
SET     n.name = 'Service Oriented Architecture',
    n.name_kr = 'SOA',
    n.domain = 'SW',
    n.aliases = ['Service Oriented Architecture', 'SOA'];

MERGE (n:Concept {id: 'micro_service_architecture'})
SET     n.name = 'Micro Service Architecture',
    n.name_kr = 'MSA',
    n.domain = 'SW',
    n.aliases = ['Micro Service Architecture', 'MSA'];

// --- 관계 ---

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '개념_정리._uddi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'wsdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'soap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '프로세스_중심'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '플랫폼_독립적'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '어플리케이션_통합'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '위치_투명성_제공'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Metric {id: 'loosely_coupled'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '메시지_및_프로세스_상태_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '통신'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '정의/탐색'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: '메시지'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'msa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'msa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_oriented_architecture'})
MERGE (b:Concept {id: 'micro_service_architecture'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'service_oriented_architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Concept {id: 'micro_service_architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Document {id: 'SW_039'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념_정리._uddi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wsdl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soap'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_중심'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_독립적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_통합'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치_투명성_제공'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'loosely_coupled'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지_및_프로세스_상태_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정의/탐색'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'msa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_oriented_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_040: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_040'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_041: 웹서비스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_041'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '웹서비스'})
SET     n.name = '웹서비스',
    n.name_kr = '웹서비스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'SW',
    n.aliases = ['SOA'];

MERGE (n:Concept {id: '기술요소_-_uddi'})
SET     n.name = '기술요소 - UDDI',
    n.name_kr = '기술요소 - UDDI',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sopa'})
SET     n.name = 'SOPA',
    n.name_kr = 'SOPA',
    n.domain = 'SW',
    n.aliases = ['SOPA'];

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SW',
    n.aliases = ['XML'];

MERGE (n:Concept {id: 'rest'})
SET     n.name = 'REST',
    n.name_kr = 'REST',
    n.domain = 'SW',
    n.aliases = ['REST'];

MERGE (n:Concept {id: 'wsdl'})
SET     n.name = 'WSDL',
    n.name_kr = 'WSDL',
    n.domain = 'SW',
    n.aliases = ['WSDL'];

MERGE (n:Concept {id: 'json'})
SET     n.name = 'JSON',
    n.name_kr = 'JSON',
    n.domain = 'SW',
    n.aliases = ['JSON'];

MERGE (n:Concept {id: '고객_요구_증가'})
SET     n.name = '고객 요구 증가',
    n.name_kr = '고객 요구 증가',
    n.domain = 'SW',
    n.definition = '고객의 서비스 요구증대 및 서비스 강화를 통한 차별화';

MERGE (n:Concept {id: '관련_기술의_발달_및_표준화_정착'})
SET     n.name = '관련 기술의 발달 및 표준화 정착',
    n.name_kr = '관련 기술의 발달 및 표준화 정착',
    n.domain = 'SW',
    n.definition = '유연성, 상호 운영성, 보안성이 보장되어야 하며 SOAP, UDDI, XML등의 표준이 정착';

MERGE (n:Concept {id: '복잡한_기업_환경'})
SET     n.name = '복잡한 기업 환경',
    n.name_kr = '복잡한 기업 환경',
    n.domain = 'SW',
    n.definition = '기업에는 C/S 시스템, ERP, CRM등의 패키지, 또 웹 어플리케이션 까지 많은 시스템이 혼재 되어 있고 혼재된 시스템간 실시간 커뮤니케이션 과 데이터 공유 등을 위해서 EAI같은 새로운 API가 필요하게 됨';

MERGE (n:Concept {id: 'e-commerce_대두'})
SET     n.name = 'e-Commerce 대두',
    n.name_kr = 'e-Commerce 대두',
    n.domain = 'SW',
    n.definition = '사내 Application 및 Data Base의 통합 하는데 있어 서비스는 다른 웹 서비스와의 커뮤니케이션이 가능하므로 사내 시스템간(방화벽외부시스템포함) 실시간 데이터 공유 및 변환 작업을 지원 할 수 있음';

MERGE (n:Technology {id: 'http_요청을_최소화'})
SET     n.name = 'HTTP 요청을 최소화',
    n.name_kr = 'HTTP 요청을 최소화',
    n.domain = 'SW',
    n.definition = '이미지 맵 이용 시 평균 50%의 속도 절감 - CSS Sprite 활용 - 스크립트와 스타일시트 결합';

MERGE (n:Technology {id: '헤더에_만료기간_추가'})
SET     n.name = '헤더에 만료기간 추가',
    n.name_kr = '헤더에 만료기간 추가',
    n.domain = 'SW',
    n.definition = '사이트에 처음 방문한 사용자일 경우 여러 번의 HTTP 요청을 하게 될지도 모르지만 헤더 만료 기한을 이용함으로써 그 구성요소를 캐시에 저장';

MERGE (n:Concept {id: 'css_expression_지양'})
SET     n.name = 'CSS Expression 지양',
    n.name_kr = 'CSS Expression 지양',
    n.domain = 'SW',
    n.definition = 'CSS Expression은 CSS 속성을 동적으로 설정하는 강력하면서 위험한 기능으로 IE5 이후 버전부터 지원 (Expression 의 잦은 업데이트, 문제)';

MERGE (n:Concept {id: 'gzip_컴포넌트_활용'})
SET     n.name = 'Gzip 컴포넌트 활용',
    n.name_kr = 'Gzip 컴포넌트 활용',
    n.domain = 'SW',
    n.definition = 'Gizp은 HTML문서, 스크립트와 스타일시트를 압축';

MERGE (n:Concept {id: '자바스크립트_최소화_및_중복_제거'})
SET     n.name = '자바스크립트 최소화 및 중복 제거',
    n.name_kr = '자바스크립트 최소화 및 중복 제거',
    n.domain = 'SW',
    n.definition = '불필요한 문제를 줄여서 파일 크기 축소로 로딩 시간 개선';

MERGE (n:Concept {id: '리다이렉트_제거'})
SET     n.name = '리다이렉트 제거',
    n.name_kr = '리다이렉트 제거',
    n.domain = 'SW',
    n.definition = '주소 뒤에 슬래시 제거, 직접적인 웹 사이트 연결';

// --- 관계 ---

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '기술요소_-_uddi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'sopa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'rest'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'wsdl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'json'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '고객_요구_증가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '관련_기술의_발달_및_표준화_정착'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '복잡한_기업_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'e-commerce_대두'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Technology {id: 'http_요청을_최소화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Technology {id: '헤더에_만료기간_추가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'css_expression_지양'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: 'gzip_컴포넌트_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '자바스크립트_최소화_및_중복_제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Concept {id: '리다이렉트_제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Document {id: 'SW_041'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '웹서비스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소_-_uddi'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sopa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rest'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wsdl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'json'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_요구_증가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관련_기술의_발달_및_표준화_정착'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복잡한_기업_환경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e-commerce_대두'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http_요청을_최소화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '헤더에_만료기간_추가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'css_expression_지양'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gzip_컴포넌트_활용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자바스크립트_최소화_및_중복_제거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리다이렉트_제거'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_043: SW Architecture
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_043'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'SW';

MERGE (n:Concept {id: '등장배경'})
SET     n.name = '등장배경',
    n.name_kr = '등장배경',
    n.domain = 'SW';

MERGE (n:Concept {id: '비즈니스_측면'})
SET     n.name = '비즈니스 측면',
    n.name_kr = '비즈니스 측면',
    n.domain = 'SW',
    n.definition = '변화 민첩성';

MERGE (n:Concept {id: '비용_절감'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'SW',
    n.definition = '소프트웨어 재사용, 자산화 통한 개발비 절감';

MERGE (n:Concept {id: '표준화'})
SET     n.name = '표준화',
    n.name_kr = '표준화',
    n.domain = 'SW',
    n.definition = '재사용 가능한 산업별 표준화 지원';

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SW',
    n.definition = '의사소통 수단';

MERGE (n:Concept {id: '간략성'})
SET     n.name = '간략성',
    n.name_kr = '간략성',
    n.domain = 'SW',
    n.definition = '소프트웨어 복잡성 증가에 따른 해결 대안';

MERGE (n:Concept {id: 'aspect'})
SET     n.name = '관점(Aspect)모형',
    n.name_kr = '관점(Aspect)모형',
    n.domain = 'SW',
    n.definition = '이해관계자들 간 관심사에 대한 모형 제시';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'SW',
    n.definition = 'ATAM CBAM ADR ARID';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '등장배경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '비즈니스_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '비용_절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '간략성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: 'aspect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Document {id: 'SW_043'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '등장배경'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_절감'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간략성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aspect'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_044: ISO/IEC/IEEE 42010(구 IEEE 1471)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_044'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Standard {id: 'iso_iec_ieee_42010'})
SET     n.name = 'ISO/IEC/IEEE 42010(구 IEEE 1471)',
    n.name_kr = 'ISO/IEC/IEEE 42010(구 IEEE 1471)',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'system_of_interest'})
SET     n.name = 'System of Interest',
    n.name_kr = 'System of Interest',
    n.domain = 'SW',
    n.aliases = ['System of Interest'];

MERGE (n:Concept {id: 'stakeholder'})
SET     n.name = 'Stakeholder',
    n.name_kr = 'Stakeholder',
    n.domain = 'SW',
    n.aliases = ['Stakeholder'];

MERGE (n:Concept {id: 'concerns'})
SET     n.name = 'Concerns',
    n.name_kr = 'Concerns',
    n.domain = 'SW',
    n.aliases = ['Concerns'];

MERGE (n:Concept {id: 'model_kind'})
SET     n.name = 'Model Kind',
    n.name_kr = 'Model Kind',
    n.domain = 'SW',
    n.aliases = ['Model Kind'];

MERGE (n:Concept {id: 'architecture'})
SET     n.name = 'Architecture',
    n.name_kr = 'Architecture',
    n.domain = 'SW',
    n.aliases = ['Architecture'];

MERGE (n:Concept {id: 'architecture_view'})
SET     n.name = 'Architecture View',
    n.name_kr = 'Architecture View',
    n.domain = 'SW',
    n.aliases = ['Architecture View'];

MERGE (n:Concept {id: 'architecture_model'})
SET     n.name = 'Architecture Model',
    n.name_kr = 'Architecture Model',
    n.domain = 'SW',
    n.aliases = ['Architecture Model'];

MERGE (n:Concept {id: 'correspondence_rule'})
SET     n.name = 'Correspondence Rule',
    n.name_kr = 'Correspondence Rule',
    n.domain = 'SW',
    n.aliases = ['Correspondence Rule'];

MERGE (n:Concept {id: 'correspondence'})
SET     n.name = 'Correspondence',
    n.name_kr = 'Correspondence',
    n.domain = 'SW',
    n.aliases = ['Correspondence'];

MERGE (n:Concept {id: '식별'})
SET     n.name = '식별',
    n.name_kr = '식별',
    n.domain = 'SW',
    n.definition = 'System of Interest (대상 시스템)';

MERGE (n:Concept {id: '표현'})
SET     n.name = '표현',
    n.name_kr = '표현',
    n.domain = 'SW',
    n.definition = 'Model Kind (모델형)';

MERGE (n:Concept {id: 'architecture_description'})
SET     n.name = 'Architecture description',
    n.name_kr = '아키텍처 기술',
    n.domain = 'SW',
    n.definition = 'architecture 표현에 사용되는 방법 - architecture가 기록되는 방법',
    n.aliases = ['Architecture description', '아키텍처 기술'];

MERGE (n:Concept {id: 'ad의_파트'})
SET     n.name = 'AD의 파트',
    n.name_kr = 'AD의 파트',
    n.domain = 'SW',
    n.definition = 'Architectural ViewPoint (아키텍처 View 관점)';

MERGE (n:Concept {id: 'architecture_rationale'})
SET     n.name = 'Architecture Rationale',
    n.name_kr = '결정 근거',
    n.domain = 'SW',
    n.definition = '선택되어 설계된 아키텍처에 대한 논리적 근거',
    n.aliases = ['Architecture Rationale', '결정 근거'];

MERGE (n:Standard {id: 'ieee_1471'})
SET     n.name = 'IEEE 1471',
    n.name_kr = 'IEEE 1471',
    n.domain = 'SW',
    n.aliases = ['IEEE 1471'];

// --- 관계 ---

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'system_of_interest'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'stakeholder'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'concerns'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'model_kind'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'architecture'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'architecture_view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'architecture_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'correspondence_rule'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'correspondence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: '식별'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: '표현'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'architecture_description'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'ad의_파트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Concept {id: 'architecture_rationale'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Standard {id: 'ieee_1471'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Standard {id: 'ieee_1471'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Document {id: 'SW_044'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'iso_iec_ieee_42010'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system_of_interest'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stakeholder'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concerns'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'model_kind'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture_view'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correspondence_rule'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'correspondence'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture_description'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ad의_파트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture_rationale'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_1471'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_045: SW Architecture 평가
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_045'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_architecture_평가'})
SET     n.name = 'SW Architecture 평가',
    n.name_kr = 'SW Architecture 평가',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: '소프트웨어_아키텍처의_정방향_분석'})
SET     n.name = '소프트웨어 아키텍처의 정방향 분석',
    n.name_kr = '소프트웨어 아키텍처의 정방향 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어_아키텍처의_역방향_분석'})
SET     n.name = '소프트웨어 아키텍처의 역방향 분석',
    n.name_kr = '소프트웨어 아키텍처의 역방향 분석',
    n.domain = 'SW';

MERGE (n:Concept {id: 'saam'})
SET     n.name = 'SAAM',
    n.name_kr = 'SAAM',
    n.domain = 'SW',
    n.aliases = ['SAAM'];

MERGE (n:Concept {id: 'cbam'})
SET     n.name = 'CBAM',
    n.name_kr = 'CBAM',
    n.domain = 'SW',
    n.aliases = ['CBAM'];

MERGE (n:Concept {id: 'atam'})
SET     n.name = 'ATAM',
    n.name_kr = 'ATAM',
    n.domain = 'SW',
    n.aliases = ['ATAM'];

MERGE (n:Concept {id: 'eatam'})
SET     n.name = 'EATAM',
    n.name_kr = 'EATAM',
    n.domain = 'SW',
    n.aliases = ['EATAM'];

MERGE (n:Concept {id: 'adr'})
SET     n.name = 'ADR',
    n.name_kr = 'ADR',
    n.domain = 'SW',
    n.aliases = ['ADR'];

MERGE (n:Concept {id: 'arid'})
SET     n.name = 'ARID',
    n.name_kr = 'ARID',
    n.domain = 'SW',
    n.aliases = ['ARID'];

MERGE (n:Concept {id: '시나리오_기반_평가모델'})
SET     n.name = '시나리오 기반 평가모델',
    n.name_kr = '시나리오 기반 평가모델',
    n.domain = 'SW',
    n.definition = 'SAAM';

MERGE (n:Concept {id: '설계/혼합_기반_평가모델'})
SET     n.name = '설계/혼합 기반 평가모델',
    n.name_kr = '설계/혼합 기반 평가모델',
    n.domain = 'SW',
    n.definition = 'ARID';

MERGE (n:Concept {id: '소프트웨어_아키텍처_평가_기대효과'})
SET     n.name = '소프트웨어 아키텍처 평가 기대효과',
    n.name_kr = '소프트웨어 아키텍처 평가 기대효과',
    n.domain = 'SW',
    n.definition = '요구사항 검증';

MERGE (n:Concept {id: '적합성_판단시_고려사항'})
SET     n.name = '적합성 판단시 고려사항',
    n.name_kr = '적합성 판단시 고려사항',
    n.domain = 'SW',
    n.definition = '우선순위';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '소프트웨어_아키텍처의_정방향_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '소프트웨어_아키텍처의_역방향_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'saam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'cbam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'atam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'eatam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'adr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: 'arid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '시나리오_기반_평가모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '설계/혼합_기반_평가모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '소프트웨어_아키텍처_평가_기대효과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Concept {id: '적합성_판단시_고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Document {id: 'SW_045'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_architecture_평가'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_아키텍처의_정방향_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_아키텍처의_역방향_분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'saam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cbam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eatam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'adr'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arid'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시나리오_기반_평가모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계/혼합_기반_평가모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_아키텍처_평가_기대효과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적합성_판단시_고려사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_046: ATAM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_046'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'atam'})
SET     n.name = 'ATAM',
    n.name_kr = 'ATAM',
    n.domain = 'SW',
    n.aliases = ['ATAM'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'reliability'})
SET     n.name = 'Reliability',
    n.name_kr = 'Reliability',
    n.domain = 'SW',
    n.aliases = ['Reliability'];

MERGE (n:Concept {id: 'availability'})
SET     n.name = 'Availability',
    n.name_kr = 'Availability',
    n.domain = 'SW',
    n.aliases = ['Availability'];

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = 'Security',
    n.domain = 'SW',
    n.aliases = ['Security'];

MERGE (n:Concept {id: 'modifiability'})
SET     n.name = 'Modifiability',
    n.name_kr = '수정성',
    n.domain = 'SW',
    n.aliases = ['Modifiability', '수정성'];

MERGE (n:Concept {id: 'portability'})
SET     n.name = 'Portability',
    n.name_kr = 'Portability',
    n.domain = 'SW',
    n.aliases = ['Portability'];

MERGE (n:Concept {id: 'functionality'})
SET     n.name = 'Functionality',
    n.name_kr = 'Functionality',
    n.domain = 'SW',
    n.aliases = ['Functionality'];

MERGE (n:Concept {id: 'variability'})
SET     n.name = 'Variability',
    n.name_kr = 'Variability',
    n.domain = 'SW',
    n.aliases = ['Variability'];

MERGE (n:Concept {id: 'subsetability'})
SET     n.name = 'Subsetability',
    n.name_kr = 'Subsetability',
    n.domain = 'SW',
    n.aliases = ['Subsetability'];

MERGE (n:Concept {id: 'conceptual_integrity'})
SET     n.name = 'Conceptual Integrity',
    n.name_kr = 'Conceptual Integrity',
    n.domain = 'SW',
    n.aliases = ['Conceptual Integrity'];

MERGE (n:Concept {id: '시스템'})
SET     n.name = '시스템',
    n.name_kr = '시스템',
    n.domain = 'SW',
    n.definition = '상호운영성';

MERGE (n:Concept {id: '보안성'})
SET     n.name = '보안성',
    n.name_kr = '보안성',
    n.domain = 'SW',
    n.definition = 'SW의 프로그램이나 데이터에 미인가 접근 금지하는 능력에 영향을 주는 속성';

MERGE (n:Concept {id: '정밀성'})
SET     n.name = '정밀성',
    n.name_kr = '정밀성',
    n.domain = 'SW',
    n.definition = '합의한 결과나 효과 또는 명문화한 권리 조항에 영향 미치는 속성';

MERGE (n:Concept {id: '오류_허용성'})
SET     n.name = '오류 허용성',
    n.name_kr = '오류 허용성',
    n.domain = 'SW',
    n.definition = 'SW에 문제가 생겼을 때, 최소 정의 수준으로 동작하는 능력에 영향을 미치는 속성';

MERGE (n:Concept {id: '회복성'})
SET     n.name = '회복성',
    n.name_kr = '회복성',
    n.domain = 'SW',
    n.definition = '장애로 직접 영향 받는 데이터 복구하고 일정 수준 이상으로 재동작하는 능력, 이때 필요한 시간과 노력에 영향 미치는 속성';

MERGE (n:Concept {id: '비즈니스'})
SET     n.name = '비즈니스',
    n.name_kr = '비즈니스',
    n.domain = 'SW',
    n.definition = '적합성';

MERGE (n:Concept {id: '준거성'})
SET     n.name = '준거성',
    n.name_kr = '준거성',
    n.domain = 'SW',
    n.definition = '표준, 관습, 법률, 규격, 협정 같은 정해진 규칙 준수하는 속성';

MERGE (n:Concept {id: '이해성'})
SET     n.name = '이해성',
    n.name_kr = '이해성',
    n.domain = 'SW',
    n.definition = 'SW의 개념과 활용 방법 이해하는데 필요한 사용자 노력에 영향';

MERGE (n:Concept {id: '습득성'})
SET     n.name = '습득성',
    n.name_kr = '습득성',
    n.domain = 'SW',
    n.definition = 'SW의 활용 방법을 배우고 익히는 데 필요한 사용자 노력에 영향';

MERGE (n:Concept {id: '아키텍처'})
SET     n.name = '아키텍처',
    n.name_kr = '아키텍처',
    n.domain = 'SW',
    n.definition = '변경성';

MERGE (n:Concept {id: '시험성'})
SET     n.name = '시험성',
    n.name_kr = '시험성',
    n.domain = 'SW',
    n.definition = '수정된 SW를 검증하는 데 필요한 노력에 영향을 미치는 속성';

MERGE (n:Concept {id: '적응성'})
SET     n.name = '적응성',
    n.name_kr = '적응성',
    n.domain = 'SW',
    n.definition = '원래 필요한 작업이나 방법만 써서 소프트웨어가 동작하는 환경을 바꿀 수 있는 가능성에 영향을 미치는 속성';

MERGE (n:Concept {id: '일치성'})
SET     n.name = '일치성',
    n.name_kr = '일치성',
    n.domain = 'SW',
    n.definition = 'SW가 이식성과 관련된 표준이나 관례 준수 정도를 나타냄';

MERGE (n:Concept {id: '대체성'})
SET     n.name = '대체성',
    n.name_kr = '대체성',
    n.domain = 'SW',
    n.definition = '대상 SW를 특정한 다른 SW로 바꿔서 쓸 수 있는지 나타냄';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'reliability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'availability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'modifiability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'portability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'functionality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'variability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'subsetability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: 'conceptual_integrity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '시스템'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '보안성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '정밀성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '오류_허용성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '회복성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '비즈니스'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '준거성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '이해성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '습득성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '아키텍처'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '시험성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '적응성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '일치성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Concept {id: '대체성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Document {id: 'SW_046'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'atam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reliability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'availability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modifiability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'portability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'functionality'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'variability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subsetability'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'conceptual_integrity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정밀성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오류_허용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회복성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준거성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '습득성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍처'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시험성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적응성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일치성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대체성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_047.1: CBAM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_047.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'cbam'})
SET     n.name = 'CBAM',
    n.name_kr = 'CBAM',
    n.domain = 'SW',
    n.aliases = ['CBAM'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cbam'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cbam'})
MERGE (b:Document {id: 'SW_047.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cbam'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_047.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_047.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_047.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_047.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_047.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_047.4'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_048: Architecture Driver
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_048'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'architecture_driver'})
SET     n.name = 'Architecture Driver',
    n.name_kr = 'Architecture Driver',
    n.domain = 'SW',
    n.aliases = ['Architecture Driver'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'constraints'})
SET     n.name = 'Constraints',
    n.name_kr = 'Constraints',
    n.domain = 'SW',
    n.aliases = ['Constraints'];

MERGE (n:Concept {id: 'quality_attributes'})
SET     n.name = 'Quality Attributes',
    n.name_kr = 'Quality Attributes',
    n.domain = 'SW',
    n.aliases = ['Quality Attributes'];

// --- 관계 ---

MERGE (a:Concept {id: 'architecture_driver'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'architecture_driver'})
MERGE (b:Concept {id: 'constraints'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'architecture_driver'})
MERGE (b:Concept {id: 'quality_attributes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'architecture_driver'})
MERGE (b:Document {id: 'SW_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'architecture_driver'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'constraints'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality_attributes'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_049: SW Architecture 모델,패턴
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_049'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_architecture_모델,패턴'})
SET     n.name = 'SW Architecture 모델,패턴',
    n.name_kr = 'SW Architecture 모델,패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'blackboard'})
SET     n.name = 'Blackboard',
    n.name_kr = 'Blackboard',
    n.domain = 'SW',
    n.aliases = ['Blackboard'];

MERGE (n:Concept {id: 'repository'})
SET     n.name = 'Repository',
    n.name_kr = 'Repository',
    n.domain = 'SW',
    n.aliases = ['Repository'];

MERGE (n:Concept {id: 'batch_sequence'})
SET     n.name = 'Batch Sequence',
    n.name_kr = 'Batch Sequence',
    n.domain = 'SW',
    n.aliases = ['Batch Sequence'];

MERGE (n:Concept {id: 'pipes_and_filters'})
SET     n.name = 'Pipes and Filters',
    n.name_kr = 'Pipes and Filters',
    n.domain = 'SW',
    n.aliases = ['Pipes and Filters'];

MERGE (n:Concept {id: 'interpreter'})
SET     n.name = 'Interpreter',
    n.name_kr = 'Interpreter',
    n.domain = 'SW',
    n.aliases = ['Interpreter'];

MERGE (n:Concept {id: 'rule_based_system'})
SET     n.name = 'Rule-Based System',
    n.name_kr = 'Rule-Based System',
    n.domain = 'SW',
    n.aliases = ['Rule-Based System'];

MERGE (n:Metric {id: 'remote_process_call'})
SET     n.name = 'Remote Process Call',
    n.name_kr = 'Remote Process Call',
    n.domain = 'SW',
    n.aliases = ['Remote Process Call'];

MERGE (n:Concept {id: 'layered'})
SET     n.name = 'Layered',
    n.name_kr = 'Layered',
    n.domain = 'SW',
    n.aliases = ['Layered'];

MERGE (n:Concept {id: 'software_architecture_style'})
SET     n.name = '소프트웨어 아키텍처 스타일',
    n.name_kr = '소프트웨어 아키텍처 스타일',
    n.domain = 'SW';

MERGE (n:Concept {id: '디자인_패턴'})
SET     n.name = '디자인 패턴',
    n.name_kr = '디자인 패턴',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'blackboard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'repository'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'batch_sequence'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'pipes_and_filters'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'interpreter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'rule_based_system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Metric {id: 'remote_process_call'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'layered'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'software_architecture_style'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: 'software_architecture_style'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Concept {id: '디자인_패턴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Document {id: 'SW_049'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_architecture_모델,패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'blackboard'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'repository'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'batch_sequence'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pipes_and_filters'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interpreter'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rule_based_system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'remote_process_call'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'layered'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software_architecture_style'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_050: Blackboard pattern
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_050'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'blackboard_pattern'})
SET     n.name = 'Blackboard pattern',
    n.name_kr = 'Blackboard pattern',
    n.domain = 'SW',
    n.aliases = ['Blackboard pattern'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: '참고로'})
SET     n.name = '참고로',
    n.name_kr = '참고로',
    n.domain = 'SW';

MERGE (n:Concept {id: '실행될_수_있도록_제어한다.'})
SET     n.name = '실행될 수 있도록 제어한다.',
    n.name_kr = '실행될 수 있도록 제어한다.',
    n.domain = 'SW';

MERGE (n:Concept {id: '블랙보드_영역'})
SET     n.name = '블랙보드 영역 (솔루션 영역)',
    n.name_kr = '블랙보드 영역 (솔루션 영역)',
    n.domain = 'SW',
    n.definition = 'Blackboard Area; 문제해결을 위한 객체 수집영역 - 솔루션의 객체를 포함하는 구조화된 전역 메모리';

MERGE (n:Concept {id: '지식소스'})
SET     n.name = '지식소스',
    n.name_kr = '지식소스',
    n.domain = 'SW',
    n.definition = 'Knowledge Source; 특정/특별 모듈들의 집합 - 자체 표현을 가진 특수 모듈';

MERGE (n:Concept {id: '제어컴포넌트'})
SET     n.name = '제어컴포넌트',
    n.name_kr = '제어컴포넌트',
    n.domain = 'SW',
    n.definition = 'Control component; 지식소스 모듈의 제어 (선택 및 실행) - 모듈 선택, 설정 및 실행을 담당';

MERGE (n:Concept {id: '확장_측면'})
SET     n.name = '확장 측면',
    n.name_kr = '확장 측면',
    n.domain = 'SW',
    n.definition = '새로운 어플리케이션 추가가능';

MERGE (n:Concept {id: '구조_측면'})
SET     n.name = '구조 측면',
    n.name_kr = '구조 측면',
    n.domain = 'SW',
    n.definition = '데이터 공간 구조 확장은 쉬움';

MERGE (n:Concept {id: '동기화_측면'})
SET     n.name = '동기화 측면',
    n.name_kr = '동기화 측면',
    n.domain = 'SW',
    n.definition = '외부 어플리케이션과 쉽게 동기화';

MERGE (n:Concept {id: '보안_측면'})
SET     n.name = '보안 측면',
    n.name_kr = '보안 측면',
    n.domain = 'SW',
    n.definition = '외부 어플리케이션의 접근제어 가능';

MERGE (n:Concept {id: '테스팅_측면'})
SET     n.name = '테스팅 측면',
    n.name_kr = '테스팅 측면',
    n.domain = 'SW',
    n.definition = '다양한 케이스 테스트 가능';

MERGE (n:Concept {id: '유지보수_측면'})
SET     n.name = '유지보수 측면',
    n.name_kr = '유지보수 측면',
    n.domain = 'SW',
    n.definition = '컴포넌트의 변경이 쉬움';

// --- 관계 ---

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '참고로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '실행될_수_있도록_제어한다.'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '블랙보드_영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '지식소스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '제어컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '확장_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '구조_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '동기화_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '보안_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '테스팅_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Concept {id: '유지보수_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Document {id: 'SW_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'blackboard_pattern'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참고로'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행될_수_있도록_제어한다.'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블랙보드_영역'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식소스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어컴포넌트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동기화_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스팅_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수_측면'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_051: 4+1 View Model
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_051'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '4+1_view_model'})
SET     n.name = '4+1 View Model',
    n.name_kr = '4+1 View Model',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'uli'})
SET     n.name = '유리(ULI)PD',
    n.name_kr = '유리(ULI)PD',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: '4+1_view_model'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '4+1_view_model'})
MERGE (b:Concept {id: 'uli'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4+1_view_model'})
MERGE (b:Document {id: 'SW_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '4+1_view_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uli'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_052: SAD(SW Architecture Description)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_052'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_architecture_description'})
SET     n.name = 'SW Architecture Description',
    n.name_kr = 'SAD',
    n.domain = 'SW',
    n.aliases = ['SW Architecture Description', 'SAD'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'sei_view'})
SET     n.name = 'SEI View',
    n.name_kr = 'SEI View',
    n.domain = 'SW',
    n.aliases = ['SEI View'];

MERGE (n:Concept {id: 'uml_4+1_view'})
SET     n.name = 'UML 4+1 View',
    n.name_kr = 'UML 4+1 View',
    n.domain = 'SW';

MERGE (n:Concept {id: 'siemens\'s_4view'})
SET     n.name = 'Siemens\'s 4View',
    n.name_kr = 'Siemens\'s 4View',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Concept {id: 'sei_view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Concept {id: 'uml_4+1_view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Concept {id: 'siemens\'s_4view'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Document {id: 'SW_052'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_architecture_description'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sei_view'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml_4+1_view'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'siemens\'s_4view'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_053.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.1'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_053.2: MSA(Micro Service Architecture)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'micro_service_architecture'})
SET     n.name = 'Micro Service Architecture',
    n.name_kr = 'MSA',
    n.domain = 'SW',
    n.aliases = ['Micro Service Architecture', 'MSA'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: '서분분엔비[구조]'})
SET     n.name = '서분분엔비[구조]',
    n.name_kr = '서분분엔비[구조]',
    n.domain = 'SW';

MERGE (n:Concept {id: 'client_layer'})
SET     n.name = 'Client Layer',
    n.name_kr = 'Client Layer',
    n.domain = 'SW',
    n.definition = 'Rest API',
    n.aliases = ['Client Layer'];

MERGE (n:Concept {id: 'application_layer'})
SET     n.name = 'Application Layer',
    n.name_kr = 'Application Layer',
    n.domain = 'SW',
    n.definition = 'API GW',
    n.aliases = ['Application Layer'];

MERGE (n:Concept {id: 'persistence_layer'})
SET     n.name = 'Persistence Layer',
    n.name_kr = 'Persistence Layer',
    n.domain = 'SW',
    n.definition = 'Polyglot',
    n.aliases = ['Persistence Layer'];

MERGE (n:Concept {id: 'api_설계'})
SET     n.name = 'API 설계',
    n.name_kr = 'API 설계',
    n.domain = 'SW',
    n.definition = '하위 호환성 - 독립된 버전';

MERGE (n:Concept {id: 'rest_api'})
SET     n.name = 'REST API',
    n.name_kr = 'REST API',
    n.domain = 'SW',
    n.definition = 'Resource - Verb - Representations',
    n.aliases = ['REST API'];

MERGE (n:Concept {id: '테스트_체계'})
SET     n.name = '테스트 체계',
    n.name_kr = '테스트 체계',
    n.domain = 'SW',
    n.definition = 'API 명세를 토대로 수행 - 서버/클라이언트의 규격이 정상적인지를 판단하기 위해 시스템적으로 자동화 및 모니터링';

MERGE (n:Concept {id: '지속적_통합_및_배포체계_설계'})
SET     n.name = '지속적 통합 및 배포체계 설계',
    n.name_kr = '지속적 통합 및 배포체계 설계',
    n.domain = 'SW',
    n.definition = 'Project Pipeline - CI Pipeline, CD Pipeline';

MERGE (n:Concept {id: '모니터링_체계_설계'})
SET     n.name = '모니터링 체계 설계',
    n.name_kr = '모니터링 체계 설계',
    n.domain = 'SW',
    n.definition = '서비스 모니터링 - 데브옵스 모니터링';

MERGE (n:Concept {id: '아키텍처_관점'})
SET     n.name = '아키텍처 관점',
    n.name_kr = '아키텍처 관점',
    n.domain = 'SW',
    n.definition = 'Legacy 연계/전환 전략';

MERGE (n:Concept {id: '서비스_단위_정의'})
SET     n.name = '서비스 단위 정의',
    n.name_kr = '서비스 단위 정의',
    n.domain = 'SW',
    n.definition = '마이크로 서비스를 구분하는 상호 독립적 서비스 단위 분리 기준 고려 - DDD 기반 도메인 분석/설계 및 배포 독립성 고려';

MERGE (n:Concept {id: 'api_gateway_도입'})
SET     n.name = 'API Gateway 도입',
    n.name_kr = 'API Gateway 도입',
    n.domain = 'SW',
    n.definition = 'API Gateway 도입여부 결정 - API 대상/기준 우선 정의';

MERGE (n:Concept {id: '트랜잭션_관리'})
SET     n.name = '트랜잭션 관리',
    n.name_kr = '트랜잭션 관리',
    n.domain = 'SW',
    n.definition = 'Application Level 트랜잭션 관리 구현 - 마이크로 서비스별 독립된 Rollback 전략 구현';

MERGE (n:Concept {id: '서비스_가시화'})
SET     n.name = '서비스 가시화',
    n.name_kr = '서비스 가시화',
    n.domain = 'SW',
    n.definition = 'Chaining, Monitoring, Provisioning 가시화 도구 활용';

MERGE (n:Concept {id: '조직관점'})
SET     n.name = '조직관점',
    n.name_kr = '조직관점',
    n.domain = 'SW',
    n.definition = '조직문화';

MERGE (n:Method {id: 'cross_functional_team'})
SET     n.name = 'Cross Functional Team',
    n.name_kr = 'Cross Functional Team',
    n.domain = 'SW',
    n.definition = 'MSA 아키텍처 적용에 따른 조직 구성 - 개별 서비스단위 DevOps 구조 지원',
    n.aliases = ['Cross Functional Team'];

MERGE (n:Concept {id: '예상이슈'})
SET     n.name = '예상이슈',
    n.name_kr = '예상이슈',
    n.domain = 'SW';

MERGE (n:Concept {id: '해결방안'})
SET     n.name = '해결방안',
    n.name_kr = '해결방안',
    n.domain = 'SW';

MERGE (n:Concept {id: '시스템_구성_관점'})
SET     n.name = '시스템 구성 관점',
    n.name_kr = '시스템 구성 관점',
    n.domain = 'SW',
    n.definition = '서비스간 데이터 동기화';

MERGE (n:Concept {id: '서비스_확장성'})
SET     n.name = '서비스 확장성',
    n.name_kr = '서비스 확장성',
    n.domain = 'SW',
    n.definition = 'Message Queuing을 사용시 Pub/Sub 구조로 서비스간 데이터를 연계 - 신규 서비스 추가(Scale-Out)시 신규 서비스에 Queue를 두어 구독만 신청만 하면 다른 서비스 영향없이 서비스 확장 가능 - 서로간 다른 종류의 DB에서도 상호 연동 가능';

MERGE (n:Metric {id: '낮은_결합도'})
SET     n.name = '낮은 결합도',
    n.name_kr = '낮은 결합도',
    n.domain = 'SW',
    n.definition = 'Pub/Sub 구조의 비동기 데이터 연계는 상호 낮은 결합도로 상호 낮은 영향도로 구현 가능';

MERGE (n:Concept {id: '시스템_성능_관점'})
SET     n.name = '시스템 성능 관점',
    n.name_kr = '시스템 성능 관점',
    n.domain = 'SW',
    n.definition = '대용량 데이터 처리';

MERGE (n:Metric {id: '높은_가용성'})
SET     n.name = '높은 가용성',
    n.name_kr = '높은 가용성',
    n.domain = 'SW',
    n.definition = '일부 서비스 및 MOM(Message Oriented Middleware)에 장애 발생시에도 독립된 서비스는 정상적으로 가동 가능';

// --- 관계 ---

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '서분분엔비[구조]'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'client_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'application_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'persistence_layer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'api_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'rest_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '테스트_체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '지속적_통합_및_배포체계_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '모니터링_체계_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '아키텍처_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '서비스_단위_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: 'api_gateway_도입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '트랜잭션_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '서비스_가시화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '조직관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Method {id: 'cross_functional_team'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '예상이슈'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '예상이슈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '해결방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '시스템_구성_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '서비스_확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Metric {id: '낮은_결합도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Concept {id: '시스템_성능_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Metric {id: '높은_가용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Document {id: 'SW_053.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'micro_service_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서분분엔비[구조]'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client_layer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'application_layer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'persistence_layer'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rest_api'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_체계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적_통합_및_배포체계_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링_체계_설계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍처_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_단위_정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_gateway_도입'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션_관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_가시화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'cross_functional_team'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예상이슈'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결방안'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_구성_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_확장성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '낮은_결합도'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_성능_관점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '높은_가용성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_053.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.3'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_053.4: Inner Architecture, Outer Architecture
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'inner_architecture,_outer_architecture'})
SET     n.name = 'Inner Architecture, Outer Architecture',
    n.name_kr = 'Inner Architecture, Outer Architecture',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'external_gateway'})
SET     n.name = 'External Gateway',
    n.name_kr = 'External Gateway',
    n.domain = 'SW',
    n.aliases = ['External Gateway'];

MERGE (n:Concept {id: 'service_mesh'})
SET     n.name = 'Service Mesh',
    n.name_kr = 'Service Mesh',
    n.domain = 'SW',
    n.aliases = ['Service Mesh'];

MERGE (n:Concept {id: 'container_management'})
SET     n.name = 'Container Management',
    n.name_kr = 'Container Management',
    n.domain = 'SW',
    n.aliases = ['Container Management'];

MERGE (n:Concept {id: 'backing_services'})
SET     n.name = 'Backing Services',
    n.name_kr = 'Backing Services',
    n.domain = 'SW',
    n.aliases = ['Backing Services'];

MERGE (n:Concept {id: 'telemetry'})
SET     n.name = 'Telemetry',
    n.name_kr = 'Telemetry',
    n.domain = 'SW',
    n.aliases = ['Telemetry'];

MERGE (n:Method {id: 'ci_cd_automation'})
SET     n.name = 'CI/CD Automation',
    n.name_kr = 'CI/CD Automation',
    n.domain = 'SW',
    n.aliases = ['CI/CD Automation'];

MERGE (n:Concept {id: '해외'})
SET     n.name = '해외',
    n.name_kr = '해외',
    n.domain = 'SW',
    n.definition = '넷플릭스';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'SW',
    n.definition = 'LG유플러스';

// --- 관계 ---

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'external_gateway'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'service_mesh'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'container_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'backing_services'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: 'telemetry'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Method {id: 'ci_cd_automation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: '해외'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Document {id: 'SW_053.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'inner_architecture,_outer_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external_gateway'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'container_management'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backing_services'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'telemetry'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'ci_cd_automation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해외'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_053.5: SAGA 패턴
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.5'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'saga_패턴'})
SET     n.name = 'SAGA 패턴',
    n.name_kr = 'SAGA 패턴',
    n.domain = 'SW';

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: '트랜잭션처리'})
SET     n.name = '트랜잭션처리',
    n.name_kr = '트랜잭션처리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'choreography_방식'})
SET     n.name = 'Choreography 방식',
    n.name_kr = 'Choreography 방식',
    n.domain = 'SW';

MERGE (n:Concept {id: 'orchestration_방식'})
SET     n.name = 'Orchestration 방식',
    n.name_kr = 'Orchestration 방식',
    n.domain = 'SW';

MERGE (n:Concept {id: '데이터_정합성_보장'})
SET     n.name = '데이터 정합성 보장',
    n.name_kr = '데이터 정합성 보장',
    n.domain = 'SW';

MERGE (n:Concept {id: '서비스_메시'})
SET     n.name = '서비스 메시',
    n.name_kr = '서비스 메시',
    n.domain = 'SW',
    n.definition = '트래픽 제어, 서비스 검색, 로드 밸런싱, 탄력성, 관찰 가능성, 보안 등과 같은 추가 기능을 추가하는 애플리케이션 서비스 간의 브릿지 - 애플리케이션이 애플리케이션 수준 라이브러리에서 이러한 기능을 오프로드하고 개발자가 비즈니스 논리에 집중하게 함';

MERGE (n:Concept {id: '서버리스'})
SET     n.name = '서버리스',
    n.name_kr = '서버리스',
    n.domain = 'SW',
    n.definition = '비즈니스 서비스를 기능으로 작성하고 해당 기능을 클라우드 인프라에 배포하는 방식';

MERGE (n:Concept {id: '컨테이너_기술'})
SET     n.name = '컨테이너 기술',
    n.name_kr = '컨테이너 기술',
    n.domain = 'SW',
    n.definition = '도커, 컨테이너드 및 쿠버네티스와 같은 컨테이너 기술은 마이크로서비스 개발을 매우 잘 보완';

// --- 관계 ---

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: '트랜잭션처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: 'choreography_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: 'orchestration_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: '데이터_정합성_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: '서비스_메시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: '서버리스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Concept {id: '컨테이너_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Document {id: 'SW_053.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'saga_패턴'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션처리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'choreography_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'orchestration_방식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_정합성_보장'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_메시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버리스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_기술'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_053.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.6'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_053.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.7'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_053.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_053.8'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_054: clean architecture
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_054'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'clean_architecture'})
SET     n.name = 'clean architecture',
    n.name_kr = 'clean architecture',
    n.domain = 'SW',
    n.aliases = ['clean architecture'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

MERGE (n:Concept {id: 'rcr'})
SET     n.name = 'RCR',
    n.name_kr = 'RCR',
    n.domain = 'SW',
    n.aliases = ['RCR'];

MERGE (n:Concept {id: '설계의_4원칙'})
SET     n.name = '설계의 4원칙',
    n.name_kr = '설계의 4원칙',
    n.domain = 'SW',
    n.definition = '의존성의 추상화';

MERGE (n:Concept {id: '의존성의_배타성'})
SET     n.name = '의존성의 배타성',
    n.name_kr = '의존성의 배타성',
    n.domain = 'SW',
    n.definition = '각 계층 간 의존성이 낮아지고 역할 구분이 명확해짐에 따라, 에러 발생 가능성 감소 및 코드 유지보수 용이하게 처리 가능';

MERGE (n:Concept {id: 'framework_독립성'})
SET     n.name = 'Framework 독립성',
    n.name_kr = 'Framework 독립성',
    n.domain = 'SW',
    n.definition = '프레임워크와의 의존성 최소화 위해, 특정 프레임워크, DB에 의존하지 않아야, 요구사항 변경 시 수정 용이';

MERGE (n:Concept {id: 'use_case_최우선성'})
SET     n.name = 'Use Case 최우선성',
    n.name_kr = 'Use Case 최우선성',
    n.domain = 'SW',
    n.definition = '클린아키텍처 핵심 요소로, 비즈니스 로직 담당 Use Case 중심으로 지엽적인 관심사 대한 결합 분리시켜, 좋은 아키텍처 설계 가능';

MERGE (n:Concept {id: '설계_예시'})
SET     n.name = '설계 예시',
    n.name_kr = '설계 예시',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: 'rcr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: '설계의_4원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: '의존성의_배타성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: 'framework_독립성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: 'use_case_최우선성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Concept {id: '설계_예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Document {id: 'SW_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'clean_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rcr'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계의_4원칙'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의존성의_배타성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'framework_독립성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'use_case_최우선성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계_예시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_055: SW Architect
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_055'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sw_architect'})
SET     n.name = 'SW Architect',
    n.name_kr = 'SW Architect',
    n.domain = 'SW',
    n.aliases = ['SW Architect'];

MERGE (n:Concept {id: 'sw_architecture'})
SET     n.name = 'SW Architecture',
    n.name_kr = 'SW Architecture',
    n.domain = 'SW',
    n.aliases = ['SW Architecture'];

// --- 관계 ---

MERGE (a:Concept {id: 'sw_architect'})
MERGE (b:Concept {id: 'sw_architecture'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sw_architect'})
MERGE (b:Document {id: 'SW_055'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sw_architect'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_056: MDA(Model Driven Architecture)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_056'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'model_driven_architecture'})
SET     n.name = 'Model Driven Architecture',
    n.name_kr = 'MDA',
    n.domain = 'SW',
    n.aliases = ['Model Driven Architecture', 'MDA'];

MERGE (n:Concept {id: 'mda'})
SET     n.name = 'MDA',
    n.name_kr = 'MDA',
    n.domain = 'SW',
    n.aliases = ['MDA'];

MERGE (n:Concept {id: 'mucx'})
SET     n.name = 'MUCX',
    n.name_kr = 'MUCX',
    n.domain = 'SW',
    n.aliases = ['MUCX'];

MERGE (n:Concept {id: '모델'})
SET     n.name = '모델',
    n.name_kr = '모델',
    n.domain = 'SW',
    n.definition = 'CIM';

MERGE (n:Concept {id: 'pim'})
SET     n.name = 'PIM',
    n.name_kr = 'PIM',
    n.domain = 'SW',
    n.definition = '특정한 기술 플랫폼/기술에 독립적인 방법으로 설계한 모델',
    n.aliases = ['PIM'];

MERGE (n:Concept {id: 'psm'})
SET     n.name = 'PSM',
    n.name_kr = 'PSM',
    n.domain = 'SW',
    n.definition = '특정 기술에 종속적인 요구사항들이 포함된 시스템 모델 정보',
    n.aliases = ['PSM'];

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'SW',
    n.definition = 'UML';

MERGE (n:Concept {id: 'mof'})
SET     n.name = 'MOF',
    n.name_kr = 'MOF',
    n.domain = 'SW',
    n.definition = '모델 정보에 대한 표준적인 저장소를 제공하고 표준화된 방식으로 모델 정보를 접근하는 구조 정의',
    n.aliases = ['MOF'];

MERGE (n:Concept {id: 'cwm'})
SET     n.name = 'CWM',
    n.name_kr = 'CWM',
    n.domain = 'SW',
    n.definition = '데이터 저장소 통합에 대한 표준을 정의하고 DB 모델과 스키마 변환모델, OLAP, 데이터 마이닝에 대한 표준화된 표현 방법 제공',
    n.aliases = ['CWM'];

MERGE (n:Concept {id: 'xml'})
SET     n.name = 'XML',
    n.name_kr = 'XML',
    n.domain = 'SW',
    n.definition = 'UML로 기술된 모델 정보의 XML 표현에 대한 표준',
    n.aliases = ['XML'];

// --- 관계 ---

MERGE (a:Concept {id: 'mda'})
MERGE (b:Concept {id: 'mda'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'mucx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: '모델'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'pim'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'psm'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'mof'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'cwm'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Concept {id: 'xml'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Document {id: 'SW_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'model_driven_architecture'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mda'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mucx'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pim'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psm'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mof'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwm'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_057: MDD(Model Driven Development)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_057'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'model_driven_development'})
SET     n.name = 'Model Driven Development',
    n.name_kr = 'MDD',
    n.domain = 'SW',
    n.aliases = ['Model Driven Development', 'MDD'];

MERGE (n:Concept {id: 'mda'})
SET     n.name = 'MDA',
    n.name_kr = 'MDA',
    n.domain = 'SW',
    n.aliases = ['MDA'];

MERGE (n:Concept {id: 'mdd'})
SET     n.name = 'MDD',
    n.name_kr = 'MDD',
    n.domain = 'SW',
    n.aliases = ['MDD'];

MERGE (n:Concept {id: 'pim'})
SET     n.name = 'PIM',
    n.name_kr = 'PIM',
    n.domain = 'SW',
    n.aliases = ['PIM'];

MERGE (n:Concept {id: 'psm'})
SET     n.name = 'PSM',
    n.name_kr = 'PSM',
    n.domain = 'SW',
    n.aliases = ['PSM'];

MERGE (n:Concept {id: 'mdd개발절차'})
SET     n.name = 'MDD개발절차',
    n.name_kr = 'MDD개발절차',
    n.domain = 'SW';

MERGE (n:Concept {id: '매핑'})
SET     n.name = '매핑',
    n.name_kr = '매핑',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'mdd'})
MERGE (b:Concept {id: 'mda'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Concept {id: 'pim'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Concept {id: 'psm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Concept {id: 'mdd개발절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Concept {id: '매핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Document {id: 'SW_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'model_driven_development'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mda'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mdd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pim'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'psm'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mdd개발절차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매핑'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_058.1: Spring Framework
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_058.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Technology {id: 'spring_framework'})
SET     n.name = 'Spring Framework',
    n.name_kr = 'Spring Framework',
    n.domain = 'SW',
    n.aliases = ['Spring Framework'];

MERGE (n:Concept {id: '전자정부_표준프레임워크'})
SET     n.name = '전자정부 표준프레임워크',
    n.name_kr = '전자정부 표준프레임워크',
    n.domain = 'SW';

MERGE (n:Concept {id: '객체관리'})
SET     n.name = '객체관리',
    n.name_kr = '객체관리',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ioc'})
SET     n.name = 'IoC',
    n.name_kr = '제어반전',
    n.domain = 'SW',
    n.aliases = ['IoC', '제어반전'];

MERGE (n:Concept {id: 'di'})
SET     n.name = 'DI',
    n.name_kr = '의존성주입',
    n.domain = 'SW',
    n.aliases = ['DI', '의존성주입'];

MERGE (n:Concept {id: 'aop'})
SET     n.name = 'AOP',
    n.name_kr = '관점지향프로그래밍',
    n.domain = 'SW',
    n.aliases = ['AOP', '관점지향프로그래밍'];

MERGE (n:Concept {id: '영속성'})
SET     n.name = '영속성',
    n.name_kr = '영속성',
    n.domain = 'SW';

MERGE (n:Concept {id: 'orm'})
SET     n.name = 'ORM',
    n.name_kr = 'ORM',
    n.domain = 'SW',
    n.aliases = ['ORM'];

MERGE (n:Concept {id: 'dao'})
SET     n.name = 'Dao',
    n.name_kr = 'Dao',
    n.domain = 'SW',
    n.aliases = ['Dao'];

MERGE (n:Concept {id: 'web'})
SET     n.name = 'Web',
    n.name_kr = 'Web',
    n.domain = 'SW',
    n.aliases = ['Web'];

MERGE (n:Concept {id: 'context'})
SET     n.name = 'Context',
    n.name_kr = 'Context',
    n.domain = 'SW',
    n.aliases = ['Context'];

MERGE (n:Concept {id: 'web_mvc'})
SET     n.name = 'Web MVC',
    n.name_kr = 'Web MVC',
    n.domain = 'SW',
    n.aliases = ['Web MVC'];

MERGE (n:Concept {id: 'core'})
SET     n.name = 'Core',
    n.name_kr = 'Core',
    n.domain = 'SW',
    n.aliases = ['Core'];

MERGE (n:Technology {id: 'spring'})
SET     n.name = 'Spring',
    n.name_kr = 'Spring',
    n.domain = 'SW',
    n.definition = '포괄적이고 모듈화 계층화된 아키텍처',
    n.aliases = ['Spring'];

MERGE (n:Concept {id: 'jsf'})
SET     n.name = 'JSF',
    n.name_kr = 'JSF',
    n.domain = 'SW',
    n.definition = '재사용성 가능한 UI컴포넌트 Custom UI컴포넌트 개발의 용이성',
    n.aliases = ['JSF'];

MERGE (n:Concept {id: 'vaadin'})
SET     n.name = 'Vaadin',
    n.name_kr = 'Vaadin',
    n.domain = 'SW',
    n.definition = '빠른 개발 모노글랏 프로그래밍으로 완만한 학습',
    n.aliases = ['Vaadin'];

// --- 관계 ---

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: '전자정부_표준프레임워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: '객체관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'ioc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'di'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'aop'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: '영속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'orm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'dao'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'web'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'context'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'web_mvc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'core'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Technology {id: 'spring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'jsf'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Concept {id: 'vaadin'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Document {id: 'SW_058.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'spring_framework'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체관리'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ioc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'di'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aop'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영속성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'orm'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dao'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'context'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_mvc'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'spring'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jsf'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vaadin'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_058.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_058.2'})
SET doc.domain = 'SW';

// ──────────────────────────────────────
// SW_059: 전자정부 표준프레임워크 7개의서비스그룹, 39개 서비스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_059'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '전자정부_표준프레임워크_7개의서비스그룹,_39개_서비스'})
SET     n.name = '전자정부 표준프레임워크 7개의서비스그룹, 39개 서비스',
    n.name_kr = '전자정부 표준프레임워크 7개의서비스그룹, 39개 서비스',
    n.domain = 'SW';

MERGE (n:Concept {id: '전자정부_표준프레임워크'})
SET     n.name = '전자정부 표준프레임워크',
    n.name_kr = '전자정부 표준프레임워크',
    n.domain = 'SW';

MERGE (n:Concept {id: '실행환경_아키텍처_구성'})
SET     n.name = '실행환경 아키텍처 구성',
    n.name_kr = '실행환경 아키텍처 구성',
    n.domain = 'SW';

MERGE (n:Concept {id: '7개서비스그룹,39개서비스'})
SET     n.name = '7개서비스그룹,39개서비스',
    n.name_kr = '7개서비스그룹,39개서비스',
    n.domain = 'SW';

MERGE (n:Concept {id: '핵심계층'})
SET     n.name = '핵심계층',
    n.name_kr = '핵심계층',
    n.domain = 'SW',
    n.definition = '필수적인 서비스와 의존성이 높은 서비스들을 핵심계층으로 제공';

MERGE (n:Concept {id: '선택적설치'})
SET     n.name = '선택적설치',
    n.name_kr = '선택적설치',
    n.domain = 'SW',
    n.definition = '필수적이지 않은 서비스들은 선택적으로 설치 가능';

// --- 관계 ---

MERGE (a:Concept {id: '실행환경_아키텍처_구성'})
MERGE (b:Concept {id: '전자정부_표준프레임워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '7개서비스그룹,39개서비스'})
MERGE (b:Concept {id: '실행환경_아키텍처_구성'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_7개의서비스그룹,_39개_서비스'})
MERGE (b:Concept {id: '핵심계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_7개의서비스그룹,_39개_서비스'})
MERGE (b:Concept {id: '선택적설치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_7개의서비스그룹,_39개_서비스'})
MERGE (b:Document {id: 'SW_059'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_7개의서비스그룹,_39개_서비스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행환경_아키텍처_구성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7개서비스그룹,39개서비스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심계층'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선택적설치'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_060: 전자정부 표준프레임워크 버전별차이점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_060'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
SET     n.name = '전자정부 표준프레임워크 버전별차이점',
    n.name_kr = '전자정부 표준프레임워크 버전별차이점',
    n.domain = 'SW';

MERGE (n:Concept {id: '전자정부_표준프레임워크'})
SET     n.name = '전자정부 표준프레임워크',
    n.name_kr = '전자정부 표준프레임워크',
    n.domain = 'SW';

MERGE (n:Concept {id: '개실관운공-모실개'})
SET     n.name = '개실관운공-모실개',
    n.name_kr = '개실관운공-모실개',
    n.domain = 'SW';

MERGE (n:Concept {id: '개발_생산성_증대와_동반한_품질_향상_효과'})
SET     n.name = '개발 생산성 증대와 동반한 품질 향상 효과',
    n.name_kr = '개발 생산성 증대와 동반한 품질 향상 효과',
    n.domain = 'SW',
    n.definition = '공수 최소화, 교체 손실비용 절감으로 전반적 품질향상 - 개발자 교육기간 감소, 일관된 적용으로 전문성 강화 - 품질편차를 최소화, 그로 인한 어플리케이션 시스템의 품질향상과 산출물의 신뢰성 확보';

MERGE (n:Concept {id: '재사용성_및_상호운용성_극대화'})
SET     n.name = '재사용성 및 상호운용성 극대화',
    n.name_kr = '재사용성 및 상호운용성 극대화',
    n.domain = 'SW',
    n.definition = '타 사업에서 쉽게 사용할 수 있어 재사용성 극대화 - 후속사업에서 쉽게 재사용 가능 - 전자정부 표준프레임워크 기반 시스템들간 컴포넌트 공유 및 연계 용이';

MERGE (n:Concept {id: '정보화_서비스_표준화율_향상'})
SET     n.name = '정보화 서비스 표준화율 향상',
    n.name_kr = '정보화 서비스 표준화율 향상',
    n.domain = 'SW',
    n.definition = '템플릿 기반의 정형화된 개발 패턴과 방법을 제공함으로써 설계, 개발 등 시스템 구축 전반에 걸친 표준 제시 - 후속사업에서 쉽게 재사용 가능';

// --- 관계 ---

MERGE (a:Concept {id: '전자정부_표준프레임워크'})
MERGE (b:Concept {id: '전자정부_표준프레임워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Concept {id: '개실관운공-모실개'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Concept {id: '개발_생산성_증대와_동반한_품질_향상_효과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Concept {id: '재사용성_및_상호운용성_극대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Concept {id: '정보화_서비스_표준화율_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Document {id: 'SW_060'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크_버전별차이점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자정부_표준프레임워크'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개실관운공-모실개'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_생산성_증대와_동반한_품질_향상_효과'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재사용성_및_상호운용성_극대화'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보화_서비스_표준화율_향상'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_061.1: UML(Unified Modeling Language)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_061.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'unified_modeling_language'})
SET     n.name = 'Unified Modeling Language',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['Unified Modeling Language', 'UML'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'omg_4계층'})
SET     n.name = 'OMG 4계층',
    n.name_kr = 'OMG 4계층',
    n.domain = 'SW';

MERGE (n:Concept {id: 'interaction_overview'})
SET     n.name = 'Interaction Overview',
    n.name_kr = 'Interaction Overview',
    n.domain = 'SW',
    n.aliases = ['Interaction Overview'];

MERGE (n:Concept {id: 'timing)'})
SET     n.name = 'Timing)',
    n.name_kr = 'Timing)',
    n.domain = 'SW';

MERGE (n:Concept {id: 'ocl'})
SET     n.name = 'OCL',
    n.name_kr = 'OCL',
    n.domain = 'SW',
    n.aliases = ['OCL'];

MERGE (n:Concept {id: '상호작용_개요_다이어그램'})
SET     n.name = '상호작용 개요 다이어그램',
    n.name_kr = '상호작용 개요 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: 'diagram'})
SET     n.name = 'Diagram',
    n.name_kr = 'Diagram',
    n.domain = 'SW',
    n.aliases = ['Diagram'];

MERGE (n:Concept {id: '내_용'})
SET     n.name = '내 용',
    n.name_kr = '내 용',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: 'omg_4계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: 'interaction_overview'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: 'timing)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: 'ocl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: '상호작용_개요_다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: 'diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Document {id: 'SW_061.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'unified_modeling_language'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'omg_4계층'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interaction_overview'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'timing)'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호작용_개요_다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내_용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_062: UML의 관계(Relationship)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_062'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'relationship'})
SET     n.name = 'Relationship',
    n.name_kr = 'UML의 관계',
    n.domain = 'SW',
    n.aliases = ['Relationship', 'UML의 관계'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '연의gr'})
SET     n.name = '연의GR',
    n.name_kr = '연의GR',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Concept {id: '연의gr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Document {id: 'SW_062'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'relationship'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연의gr'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_063.1: Stereotype
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_063.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'stereotype'})
SET     n.name = 'Stereotype',
    n.name_kr = 'Stereotype',
    n.domain = 'SW',
    n.aliases = ['Stereotype'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'guillemet'})
SET     n.name = 'Guillemet',
    n.name_kr = 'Guillemet',
    n.domain = 'SW',
    n.aliases = ['Guillemet'];

MERGE (n:Concept {id: 'include'})
SET     n.name = 'include',
    n.name_kr = 'include',
    n.domain = 'SW',
    n.aliases = ['include'];

MERGE (n:Concept {id: 'extend'})
SET     n.name = 'extend',
    n.name_kr = 'extend',
    n.domain = 'SW',
    n.aliases = ['extend'];

MERGE (n:Concept {id: 'entity'})
SET     n.name = 'entity',
    n.name_kr = 'entity',
    n.domain = 'SW',
    n.aliases = ['entity'];

MERGE (n:Concept {id: 'boundary'})
SET     n.name = 'boundary',
    n.name_kr = 'boundary',
    n.domain = 'SW',
    n.aliases = ['boundary'];

MERGE (n:Concept {id: 'control'})
SET     n.name = 'control',
    n.name_kr = 'control',
    n.domain = 'SW',
    n.aliases = ['control'];

MERGE (n:Concept {id: 'textual'})
SET     n.name = 'Textual',
    n.name_kr = 'Textual',
    n.domain = 'SW',
    n.aliases = ['Textual'];

MERGE (n:Concept {id: 'iconic'})
SET     n.name = 'Iconic',
    n.name_kr = 'Iconic',
    n.domain = 'SW',
    n.aliases = ['Iconic'];

MERGE (n:Concept {id: 'decoration'})
SET     n.name = 'Decoration',
    n.name_kr = 'Decoration',
    n.domain = 'SW',
    n.aliases = ['Decoration'];

MERGE (n:Concept {id: 'none'})
SET     n.name = 'None',
    n.name_kr = 'None',
    n.domain = 'SW',
    n.aliases = ['None'];

// --- 관계 ---

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'guillemet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'include'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'extend'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'entity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'boundary'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'control'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'textual'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'iconic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'decoration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Concept {id: 'none'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Document {id: 'SW_063.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stereotype'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'guillemet'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'include'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extend'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'entity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'boundary'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'textual'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iconic'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decoration'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'none'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_063.2: UML Profile
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_063.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'uml_profile'})
SET     n.name = 'UML Profile',
    n.name_kr = 'UML Profile',
    n.domain = 'SW',
    n.aliases = ['UML Profile'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'st_ta_co'})
SET     n.name = 'ST Ta Co',
    n.name_kr = '스트타코',
    n.domain = 'SW',
    n.aliases = ['ST Ta Co', '스트타코'];

MERGE (n:Concept {id: 'stereotypes'})
SET     n.name = 'Stereotypes',
    n.name_kr = 'Stereotypes',
    n.domain = 'SW',
    n.definition = '모델링요소에 새로운 속성과 제약사항을 추가 할 수 있도록 정의.',
    n.aliases = ['Stereotypes'];

MERGE (n:Concept {id: 'tag_definitions'})
SET     n.name = 'Tag Definitions',
    n.name_kr = 'Tag Definitions',
    n.domain = 'SW',
    n.definition = '어떤 모델링 요소에 추가될 수 있는 새로운 속성 항목을 정의',
    n.aliases = ['Tag Definitions'];

MERGE (n:Concept {id: 'tagged_values'})
SET     n.name = 'Tagged Values',
    n.name_kr = 'Tagged Values',
    n.domain = 'SW',
    n.definition = 'Tag Definition이 적용된 각각의 요소에서 추가된 속성에 대한 값을 지정',
    n.aliases = ['Tagged Values'];

MERGE (n:Concept {id: 'constraints'})
SET     n.name = 'Constraints',
    n.name_kr = 'Constraints',
    n.domain = 'SW',
    n.definition = '어떤 모델링 요소에 특정제약사항을 추가하여 해당 모델링 요소의 의미를 재정의',
    n.aliases = ['Constraints'];

// --- 관계 ---

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'st_ta_co'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'stereotypes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'tag_definitions'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'tagged_values'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Concept {id: 'constraints'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Document {id: 'SW_063.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'uml_profile'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'st_ta_co'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stereotypes'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tag_definitions'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tagged_values'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'constraints'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_063.3: MOF (Meta Object Facility)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_063.3'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'meta_object_facility'})
SET     n.name = 'Meta Object Facility',
    n.name_kr = 'MOF',
    n.domain = 'SW',
    n.aliases = ['Meta Object Facility', 'MOF'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'mof_4_계층'})
SET     n.name = 'MOF 4 계층',
    n.name_kr = 'MOF 4 계층',
    n.domain = 'SW';

MERGE (n:Concept {id: '4계층_:_meta-meta'})
SET     n.name = '4계층 : Meta-Meta',
    n.name_kr = '4계층 : Meta-Meta',
    n.domain = 'SW';

MERGE (n:Concept {id: 'meta'})
SET     n.name = 'Meta',
    n.name_kr = 'Meta',
    n.domain = 'SW',
    n.aliases = ['Meta'];

MERGE (n:Concept {id: 'user'})
SET     n.name = 'User',
    n.name_kr = 'User',
    n.domain = 'SW',
    n.aliases = ['User'];

MERGE (n:Concept {id: 'run_time_instance'})
SET     n.name = 'Run-Time Instance',
    n.name_kr = 'Run-Time Instance',
    n.domain = 'SW',
    n.aliases = ['Run-Time Instance'];

MERGE (n:Concept {id: 'mda'})
SET     n.name = 'MDA',
    n.name_kr = 'MDA',
    n.domain = 'SW',
    n.aliases = ['MDA'];

MERGE (n:Concept {id: 'mdd'})
SET     n.name = 'MDD',
    n.name_kr = 'MDD',
    n.domain = 'SW',
    n.aliases = ['MDD'];

MERGE (n:Concept {id: 'asd'})
SET     n.name = 'ASD',
    n.name_kr = 'ASD',
    n.domain = 'SW',
    n.aliases = ['ASD'];

MERGE (n:Concept {id: 'm1'})
SET     n.name = 'M1',
    n.name_kr = 'M1',
    n.domain = 'SW',
    n.aliases = ['M1'];

MERGE (n:Concept {id: 'm2'})
SET     n.name = 'M2',
    n.name_kr = 'M2',
    n.domain = 'SW',
    n.aliases = ['M2'];

MERGE (n:Concept {id: 'm3'})
SET     n.name = 'M3',
    n.name_kr = 'M3',
    n.domain = 'SW',
    n.aliases = ['M3'];

// --- 관계 ---

MERGE (a:Concept {id: 'mof_4_계층'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: '4계층_:_meta-meta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'meta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'run_time_instance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'mda'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'mdd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'asd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'm1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'm2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Concept {id: 'm3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Document {id: 'SW_063.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'meta_object_facility'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mof_4_계층'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4계층_:_meta-meta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meta'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'run_time_instance'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mda'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mdd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'asd'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm1'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm2'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm3'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_063.4: OCL
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_063.4'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'ocl'})
SET     n.name = 'OCL',
    n.name_kr = 'OCL',
    n.domain = 'SW',
    n.aliases = ['OCL'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '정형명세'})
SET     n.name = '정형명세',
    n.name_kr = '정형명세',
    n.domain = 'SW';

MERGE (n:Concept {id: '제약조건'})
SET     n.name = '제약조건',
    n.name_kr = '제약조건',
    n.domain = 'SW';

MERGE (n:Concept {id: 'invariant'})
SET     n.name = '불변조건',
    n.name_kr = '불변조건',
    n.domain = 'SW';

MERGE (n:Concept {id: 'precondition'})
SET     n.name = '선행조건',
    n.name_kr = '선행조건',
    n.domain = 'SW';

MERGE (n:Concept {id: 'post_condition'})
SET     n.name = '후행조건',
    n.name_kr = '후행조건',
    n.domain = 'SW';

MERGE (n:Concept {id: '객체제약언어'})
SET     n.name = '객체제약언어',
    n.name_kr = '객체제약언어',
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

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: '정형명세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: '제약조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: 'invariant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: 'precondition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: 'post_condition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: '객체제약언어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_절차'})
MERGE (b:Concept {id: '입출력_산출물'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: '세부_절차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Concept {id: '입출력_산출물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Document {id: 'SW_063.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ocl'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정형명세'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제약조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'invariant'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'precondition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'post_condition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체제약언어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_절차'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입출력_산출물'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_064.1: Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_064.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'diagram'})
SET     n.name = 'Diagram',
    n.name_kr = 'Diagram',
    n.domain = 'SW',
    n.aliases = ['Diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '9_diagram'})
SET     n.name = '9 Diagram',
    n.name_kr = '9 Diagram',
    n.domain = 'SW';

MERGE (n:Concept {id: '정적'})
SET     n.name = '정적(클객컴배)',
    n.name_kr = '정적(클객컴배)',
    n.domain = 'SW';

MERGE (n:Concept {id: '동적'})
SET     n.name = '동적(유순활태콜)',
    n.name_kr = '동적(유순활태콜)',
    n.domain = 'SW';

MERGE (n:Concept {id: '내_용'})
SET     n.name = '내 용',
    n.name_kr = '내 용',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '9_diagram'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '정적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '동적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Document {id: 'SW_064.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '9_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내_용'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_064.2: Activity Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_064.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'activity_diagram'})
SET     n.name = 'Activity Diagram',
    n.name_kr = 'Activity Diagram',
    n.domain = 'SW',
    n.aliases = ['Activity Diagram'];

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '객체간의_제어_흐름'})
SET     n.name = '객체간의 제어 흐름',
    n.name_kr = '객체간의 제어 흐름',
    n.domain = 'SW';

MERGE (n:Concept {id: '동적뷰'})
SET     n.name = '동적뷰',
    n.name_kr = '동적뷰',
    n.domain = 'SW';

MERGE (n:Concept {id: 'swim_lane'})
SET     n.name = 'Swim Lane',
    n.name_kr = '구획면',
    n.domain = 'SW',
    n.aliases = ['Swim Lane', '구획면'];

MERGE (n:Concept {id: 'activity'})
SET     n.name = '활동',
    n.name_kr = '활동',
    n.domain = 'SW';

MERGE (n:Concept {id: 'transition'})
SET     n.name = '전이',
    n.name_kr = '전이',
    n.domain = 'SW';

MERGE (n:Concept {id: 'fork_&_join'})
SET     n.name = 'Fork & Join',
    n.name_kr = 'Fork & Join',
    n.domain = 'SW';

MERGE (n:Concept {id: '분기'})
SET     n.name = '분기',
    n.name_kr = '분기',
    n.domain = 'SW';

MERGE (n:Concept {id: '병행_프로세스'})
SET     n.name = '병행 프로세스',
    n.name_kr = '병행 프로세스',
    n.domain = 'SW';

MERGE (n:Concept {id: '1)_시작상태'})
SET     n.name = '1) 시작상태',
    n.name_kr = '1) 시작상태',
    n.domain = 'SW';

MERGE (n:Concept {id: '2)_활동'})
SET     n.name = '2) 활동',
    n.name_kr = '2) 활동',
    n.domain = 'SW';

MERGE (n:Concept {id: '3)_종료상태'})
SET     n.name = '3) 종료상태',
    n.name_kr = '3) 종료상태',
    n.domain = 'SW';

MERGE (n:Concept {id: '4)_선택점'})
SET     n.name = '4) 선택점',
    n.name_kr = '4) 선택점',
    n.domain = 'SW';

MERGE (n:Concept {id: '5)_전이'})
SET     n.name = '5) 전이',
    n.name_kr = '5) 전이',
    n.domain = 'SW';

MERGE (n:Concept {id: '6)_병렬작업_분기'})
SET     n.name = '6) 병렬작업 분기',
    n.name_kr = '6) 병렬작업 분기',
    n.domain = 'SW';

MERGE (n:Concept {id: '7)_병렬작업_합류'})
SET     n.name = '7) 병렬작업 합류',
    n.name_kr = '7) 병렬작업 합류',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '객체간의_제어_흐름'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '동적뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: 'swim_lane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: 'activity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: 'transition'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: 'fork_&_join'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '분기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '병행_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '1)_시작상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '2)_활동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '3)_종료상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '4)_선택점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '5)_전이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '6)_병렬작업_분기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Concept {id: '7)_병렬작업_합류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Document {id: 'SW_064.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'activity_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '객체간의_제어_흐름'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동적뷰'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swim_lane'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activity'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transition'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fork_&_join'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병행_프로세스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1)_시작상태'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_활동'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_종료상태'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_선택점'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_전이'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6)_병렬작업_분기'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7)_병렬작업_합류'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_065: STATE(Machine) DIAGRAM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_065'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'machine'})
SET     n.name = 'STATE(Machine) DIAGRAM',
    n.name_kr = 'STATE(Machine) DIAGRAM',
    n.domain = 'SW';

MERGE (n:Concept {id: '소프트웨어공학'})
SET     n.name = '소프트웨어공학',
    n.name_kr = '소프트웨어공학',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'state_diagram'})
SET     n.name = 'STATE DIAGRAM',
    n.name_kr = 'STATE DIAGRAM',
    n.domain = 'SW',
    n.aliases = ['STATE DIAGRAM'];

MERGE (n:Concept {id: '상태'})
SET     n.name = '상태',
    n.name_kr = '상태',
    n.domain = 'SW';

MERGE (n:Concept {id: '전이'})
SET     n.name = '전이',
    n.name_kr = '전이',
    n.domain = 'SW';

MERGE (n:Concept {id: '설_명'})
SET     n.name = '설 명',
    n.name_kr = '설 명',
    n.domain = 'SW';

MERGE (n:Concept {id: '표기법'})
SET     n.name = '표기법',
    n.name_kr = '표기법',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어공학'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'state_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Concept {id: '상태'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Concept {id: '전이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '설_명'})
MERGE (b:Concept {id: '표기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Concept {id: '설_명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Concept {id: '표기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Document {id: 'SW_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'machine'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어공학'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'state_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상태'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전이'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설_명'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표기법'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_067: Usecase diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_067'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'usecase_diagram'})
SET     n.name = 'Usecase diagram',
    n.name_kr = 'Usecase diagram',
    n.domain = 'SW',
    n.aliases = ['Usecase diagram'];

MERGE (n:Concept {id: '소프트웨어'})
SET     n.name = '소프트웨어',
    n.name_kr = '소프트웨어',
    n.domain = 'SW';

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'actor'})
SET     n.name = 'Actor',
    n.name_kr = 'Actor',
    n.domain = 'SW',
    n.aliases = ['Actor'];

MERGE (n:Concept {id: 'include'})
SET     n.name = 'include',
    n.name_kr = 'include',
    n.domain = 'SW',
    n.aliases = ['include'];

MERGE (n:Concept {id: 'extend'})
SET     n.name = 'extend',
    n.name_kr = 'extend',
    n.domain = 'SW',
    n.aliases = ['extend'];

MERGE (n:Concept {id: 'generalization'})
SET     n.name = 'Generalization',
    n.name_kr = 'Generalization',
    n.domain = 'SW',
    n.aliases = ['Generalization'];

MERGE (n:Concept {id: 'association'})
SET     n.name = 'Association',
    n.name_kr = 'Association',
    n.domain = 'SW',
    n.aliases = ['Association'];

MERGE (n:Concept {id: 'grouping'})
SET     n.name = 'Grouping',
    n.name_kr = 'Grouping',
    n.domain = 'SW',
    n.aliases = ['Grouping'];

MERGE (n:Concept {id: '직관적_사용자_대화수단'})
SET     n.name = '직관적 사용자 대화수단',
    n.name_kr = '직관적 사용자 대화수단',
    n.domain = 'SW';

MERGE (n:Concept {id: '기본_구성'})
SET     n.name = '기본 구성',
    n.name_kr = '기본 구성',
    n.domain = 'SW',
    n.definition = 'Usecase';

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = '시스템',
    n.domain = 'SW',
    n.definition = '전체시스템의 영역을 표현 - 특별한 의미를 가지지 못함',
    n.aliases = ['System', '시스템'];

MERGE (n:Concept {id: '관계_표현'})
SET     n.name = '관계 표현',
    n.name_kr = '관계 표현',
    n.domain = 'SW',
    n.definition = '연관(Association)';

MERGE (n:Concept {id: '문제정의'})
SET     n.name = '문제정의',
    n.name_kr = '문제정의',
    n.domain = 'SW',
    n.definition = '가. 고객은 주문 시스템을 통해 가격을 조회하고 주문할 수 있다. 나. 고객은 주문 시스템을 통해 주문 상태를 확인하고 주문을 취소할 수 있다. 다. 점주는 주문 시스템을 통해 주문 활동을 모니터링하고 창고를 관리할 수 있다. 라. 회계 시스템은 주문 시스템과 연동하여 주문이나 취소 처리할 수 있다.';

MERGE (n:Concept {id: '액터_식별'})
SET     n.name = '액터 식별',
    n.name_kr = '액터 식별',
    n.domain = 'SW';

MERGE (n:Concept {id: '명세서_양식'})
SET     n.name = '명세서 양식',
    n.name_kr = '명세서 양식',
    n.domain = 'SW',
    n.definition = 'Use case명';

MERGE (n:Concept {id: '개요'})
SET     n.name = '개요',
    n.name_kr = '개요',
    n.domain = 'SW',
    n.definition = 'Use case 관련 사항 개략적 설명';

MERGE (n:Concept {id: '관련_액터'})
SET     n.name = '관련 액터',
    n.name_kr = '관련 액터',
    n.domain = 'SW',
    n.definition = 'Use case의 주액터, 부액터 기술';

MERGE (n:Concept {id: '우선_순위'})
SET     n.name = '우선 순위',
    n.name_kr = '우선 순위',
    n.domain = 'SW',
    n.definition = 'Use case의 중요도에 따른 우선 순위 지정';

MERGE (n:Concept {id: '선행_조건'})
SET     n.name = '선행 조건',
    n.name_kr = '선행 조건',
    n.domain = 'SW',
    n.definition = 'Use case가 수행될 대 이미 만족 해야 하는 행위';

MERGE (n:Concept {id: '이벤트_흐름'})
SET     n.name = '이벤트 흐름',
    n.name_kr = '이벤트 흐름',
    n.domain = 'SW',
    n.definition = 'Use case가 수행 시 진행 해야 하는 이벤트 진행 순서';

MERGE (n:Concept {id: '후행_조건'})
SET     n.name = '후행 조건',
    n.name_kr = '후행 조건',
    n.domain = 'SW',
    n.definition = 'Use case가 수행 완료 시 만족 해야 하는 조건';

MERGE (n:Concept {id: '기타_요구_사항'})
SET     n.name = '기타 요구 사항',
    n.name_kr = '기타 요구 사항',
    n.domain = 'SW',
    n.definition = 'Use case와 관련된 성능, 보안 등의 비기능 요구 사항 기술';

MERGE (n:Concept {id: '명세서_예시'})
SET     n.name = '명세서 예시',
    n.name_kr = '명세서 예시',
    n.domain = 'SW',
    n.definition = '1.3 고객의 주문 취소';

MERGE (n:Concept {id: '유즈케이스_식별'})
SET     n.name = '유즈케이스 식별',
    n.name_kr = '유즈케이스 식별',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'uml'})
MERGE (b:Concept {id: '소프트웨어'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'actor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'include'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'extend'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'generalization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'association'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'grouping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '직관적_사용자_대화수단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '기본_구성'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: 'system'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '관계_표현'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '문제정의'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '액터_식별'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '명세서_양식'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '개요'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '관련_액터'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '우선_순위'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '선행_조건'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '이벤트_흐름'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '후행_조건'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '기타_요구_사항'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '명세서_예시'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Concept {id: '유즈케이스_식별'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Document {id: 'SW_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'usecase_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'actor'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'include'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'extend'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generalization'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'association'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'grouping'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직관적_사용자_대화수단'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본_구성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계_표현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '액터_식별'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세서_양식'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개요'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관련_액터'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선_순위'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선행_조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이벤트_흐름'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후행_조건'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_요구_사항'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명세서_예시'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유즈케이스_식별'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_068: 시퀀스 다이어그램 (Sequence diagram)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_068'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'sequence_diagram'})
SET     n.name = 'Sequence diagram',
    n.name_kr = '시퀀스 다이어그램',
    n.domain = 'SW',
    n.aliases = ['Sequence diagram', '시퀀스 다이어그램'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: 'mcoa'})
SET     n.name = 'MCOA',
    n.name_kr = 'MCOA',
    n.domain = 'SW',
    n.aliases = ['MCOA'];

MERGE (n:Concept {id: '작성_순서'})
SET     n.name = '작성 순서',
    n.name_kr = '작성 순서',
    n.domain = 'SW',
    n.definition = '대상 선정';

MERGE (n:Concept {id: '작성'})
SET     n.name = '작성',
    n.name_kr = '작성',
    n.domain = 'SW',
    n.definition = '중복작성 주의';

MERGE (n:Concept {id: '협력_다이어그램'})
SET     n.name = '협력 다이어그램',
    n.name_kr = '협력 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'SW',
    n.definition = '유즈케이스 분석';

MERGE (n:Concept {id: '문제정의'})
SET     n.name = '문제정의',
    n.name_kr = '문제정의',
    n.domain = 'SW',
    n.definition = '참여자는 주사위게임을 수행한다. 주사위게임은 두 개의 주사위를 굴려서 결과를 보여준다. 주사위 앞면에 나온 값의 합이 8이면 이기는 것이고, 그렇지 않으면 지게 된다.';

MERGE (n:Concept {id: '다이어그램'})
SET     n.name = '다이어그램',
    n.name_kr = '다이어그램',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: 'mcoa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '작성_순서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '협력_다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '문제정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Concept {id: '다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Document {id: 'SW_068'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sequence_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcoa'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작성_순서'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작성'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협력_다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_069.1: 클래스 다이어그램 (Class Diagram)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_069.1'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'class_diagram'})
SET     n.name = 'Class Diagram',
    n.name_kr = '클래스 다이어그램',
    n.domain = 'SW',
    n.aliases = ['Class Diagram', '클래스 다이어그램'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '클래스'})
SET     n.name = '클래스',
    n.name_kr = '클래스',
    n.domain = 'SW';

MERGE (n:Concept {id: 'attribute'})
SET     n.name = 'Attribute',
    n.name_kr = '속성',
    n.domain = 'SW',
    n.aliases = ['Attribute', '속성'];

MERGE (n:Concept {id: 'operation'})
SET     n.name = 'Operation',
    n.name_kr = '연산',
    n.domain = 'SW',
    n.aliases = ['Operation', '연산'];

MERGE (n:Concept {id: '연관'})
SET     n.name = '연관',
    n.name_kr = '연관',
    n.domain = 'SW';

MERGE (n:Concept {id: '집합연관'})
SET     n.name = '집합연관',
    n.name_kr = '집합연관',
    n.domain = 'SW';

MERGE (n:Concept {id: '복합연관'})
SET     n.name = '복합연관',
    n.name_kr = '복합연관',
    n.domain = 'SW';

MERGE (n:Concept {id: '의존'})
SET     n.name = '의존',
    n.name_kr = '의존',
    n.domain = 'SW';

MERGE (n:Concept {id: '상속'})
SET     n.name = '상속',
    n.name_kr = '상속',
    n.domain = 'SW';

MERGE (n:Concept {id: '구현'})
SET     n.name = '구현',
    n.name_kr = '구현',
    n.domain = 'SW';

MERGE (n:Concept {id: '문제정의'})
SET     n.name = '문제정의',
    n.name_kr = '문제정의',
    n.domain = 'SW',
    n.definition = '참여자는 주사위게임을 수행한다. 주사위게임은 두 개의 주사위를 굴려서 결과를 보여준다. 주사위 앞면에 나온 값의 합이 8이면 이기는 것이고, 그렇지 않으면 지게 된다.';

MERGE (n:Concept {id: '유스케이스_예시_다이어그램'})
SET     n.name = '유스케이스 예시 다이어그램',
    n.name_kr = '유스케이스 예시 다이어그램',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '클래스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: 'attribute'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: 'operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '연관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '집합연관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '복합연관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '의존'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '상속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '구현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '문제정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Concept {id: '유스케이스_예시_다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Document {id: 'SW_069.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'class_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클래스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'attribute'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operation'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집합연관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복합연관'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의존'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상속'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제정의'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유스케이스_예시_다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_069.2: 개념적 객체 모델(Conceptual Object Model)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_069.2'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'conceptual_object_model'})
SET     n.name = 'Conceptual Object Model',
    n.name_kr = '개념적 객체 모델',
    n.domain = 'SW',
    n.aliases = ['Conceptual Object Model', '개념적 객체 모델'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '다이어그램'})
SET     n.name = '다이어그램',
    n.name_kr = '다이어그램',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'conceptual_object_model'})
MERGE (b:Concept {id: '다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'conceptual_object_model'})
MERGE (b:Document {id: 'SW_069.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'conceptual_object_model'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SW_070: Component Diagram
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SW_070'})
SET doc.domain = 'SW';

// --- 노드 ---

MERGE (n:Concept {id: 'component_diagram'})
SET     n.name = 'Component Diagram',
    n.name_kr = 'Component Diagram',
    n.domain = 'SW',
    n.aliases = ['Component Diagram'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'UML',
    n.domain = 'SW',
    n.aliases = ['UML'];

MERGE (n:Concept {id: '정적_다이어그램'})
SET     n.name = '정적 다이어그램',
    n.name_kr = '정적 다이어그램',
    n.domain = 'SW';

MERGE (n:Concept {id: '컴포넌트'})
SET     n.name = '컴포넌트',
    n.name_kr = '컴포넌트',
    n.domain = 'SW';

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'SW';

MERGE (n:Concept {id: '의존_관계'})
SET     n.name = '의존 관계',
    n.name_kr = '의존 관계',
    n.domain = 'SW';

MERGE (n:Concept {id: '지원_관계'})
SET     n.name = '지원 관계',
    n.name_kr = '지원 관계',
    n.domain = 'SW';

// --- 관계 ---

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: '정적_다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: '컴포넌트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: '의존_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Concept {id: '지원_관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Document {id: 'SW_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'component_diagram'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적_다이어그램'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴포넌트'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의존_관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원_관계'})
MERGE (b:Domain {id: 'SW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SW 도메인 자동 생성 완료
// 노드: 489개
// 관계: 988개
// ================================================================