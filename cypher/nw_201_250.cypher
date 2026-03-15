// ================================================================
// NW 도메인 (NW_201 ~ NW_250) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// NW_187.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_187.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_187.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_187.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_187.3: 망중립성(Network Neutrality)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_187.3'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'network_neutrality'})
SET     n.name = 'Network Neutrality',
    n.name_kr = '망중립성',
    n.domain = 'NW',
    n.aliases = ['Network Neutrality', '망중립성'];

MERGE (n:Concept {id: '제공조건'})
SET     n.name = '제공조건',
    n.name_kr = '제공조건',
    n.domain = 'NW',
    n.definition = '품질 유지';

MERGE (n:Concept {id: '지속적_망_고도화'})
SET     n.name = '지속적 망 고도화',
    n.name_kr = '지속적 망 고도화',
    n.domain = 'NW',
    n.definition = '지속적인 망 고도화를 통해 인터넷 접속서비스 품질의 적정 수준을 유지하기 위해 노력하여야 함';

MERGE (n:Concept {id: '원칙_회피_목적_제공_금지'})
SET     n.name = '원칙 회피 목적 제공 금지',
    n.name_kr = '원칙 회피 목적 제공 금지',
    n.domain = 'NW',
    n.definition = '인터넷접속서비스의 대체를 통해 망 중립성의 기본원칙을 회피할 목적으로 제공되어서는 안 됨';

MERGE (n:Concept {id: '시사점'})
SET     n.name = '시사점',
    n.name_kr = '시사점',
    n.domain = 'NW',
    n.definition = '제공요건 명확화와 투명성 제공';

MERGE (n:Concept {id: '세계적_정책_동향_부합'})
SET     n.name = '세계적 정책 동향 부합',
    n.name_kr = '세계적 정책 동향 부합',
    n.domain = 'NW',
    n.definition = 'EU가 망 중립성 원칙을 엄격히 유지하면서도 일정 요건 하에 특수서비스 제공을 허용하고, 미 바이든 행정부가 망 중립성 원칙을 복원할 것으로 예상되는 등 세계적인 정책 동향에도 부합';

MERGE (n:Concept {id: '제언'})
SET     n.name = '제언',
    n.name_kr = '제언',
    n.domain = 'NW',
    n.definition = '특수서비스 제공 조건 검토';

MERGE (n:Concept {id: '제로_레이팅_규제_완화'})
SET     n.name = '제로 레이팅 규제 완화',
    n.name_kr = '제로 레이팅 규제 완화',
    n.domain = 'NW',
    n.definition = '모든 제로 레이팅은 이용자 요금 부담 완화라는 긍정적 효과 제공 - 배타적 제로 레이팅의 경우 경쟁 제한 문제 유발 가능 - 우려 사안에 대해 추가 규제 통한 이용자 이익 선추구';

MERGE (n:Technology {id: '망중립성_원칙_확대'})
SET     n.name = '망중립성 원칙 확대',
    n.name_kr = '망중립성 원칙 확대',
    n.domain = 'NW',
    n.definition = '망중립성 원칙은 이용자 권리 확보 및 이익 증진 통한 산업 발전 기여 - 4차 산업 혁명, 5G 상용화 등 산업 인프라 환경 변화에 따른 개정 - 확대 시 발생 가능한 중소 CP에 대한 부정적 영향 고려';

MERGE (n:Concept {id: '찬성_측면'})
SET     n.name = '찬성 측면',
    n.name_kr = '찬성 측면',
    n.domain = 'NW';

MERGE (n:Concept {id: '반대_측면'})
SET     n.name = '반대 측면',
    n.name_kr = '반대 측면',
    n.domain = 'NW';

MERGE (n:Concept {id: '인터넷_개념'})
SET     n.name = '인터넷 개념',
    n.name_kr = '인터넷 개념',
    n.domain = 'NW',
    n.definition = '규제 대상 검토 - 서비스의 확장 - 지능정보 서비스';

MERGE (n:Concept {id: '관리형_서비스'})
SET     n.name = '관리형 서비스',
    n.name_kr = '관리형 서비스',
    n.domain = 'NW',
    n.definition = '최선형 인터넷 - 망간 영향도 증가 - 망 보호';

MERGE (n:Concept {id: '불공정_행위'})
SET     n.name = '불공정 행위',
    n.name_kr = '불공정 행위',
    n.domain = 'NW',
    n.definition = '신규 사업모델 등장 - 경쟁체제 내 불공정성';

MERGE (n:Concept {id: 'isp'})
SET     n.name = 'ISP',
    n.name_kr = '통신사',
    n.domain = 'NW',
    n.aliases = ['ISP', '통신사'];

MERGE (n:Concept {id: 'cp'})
SET     n.name = 'CP',
    n.name_kr = '콘텐츠 사업자',
    n.domain = 'NW',
    n.aliases = ['CP', '콘텐츠 사업자'];

MERGE (n:Concept {id: '쟁점'})
SET     n.name = '쟁점',
    n.name_kr = '쟁점',
    n.domain = 'NW',
    n.definition = '이용자 부담';

MERGE (n:Concept {id: '검토_사항'})
SET     n.name = '검토 사항',
    n.name_kr = '검토 사항',
    n.domain = 'NW',
    n.definition = '긍정적 측면';

MERGE (n:Concept {id: '규제_측면'})
SET     n.name = '규제 측면',
    n.name_kr = '규제 측면',
    n.domain = 'NW',
    n.definition = '불공정 행위 요소 제재';

MERGE (n:Concept {id: '규제의_중립성'})
SET     n.name = '규제의 중립성',
    n.name_kr = '규제의 중립성',
    n.domain = 'NW',
    n.definition = '찬성과 반대 입장의 충분한 고려로 산업성장 가능성이 있도록 공정한 규정을 수립';

MERGE (n:Technology {id: '관리형_서비스_통제'})
SET     n.name = '관리형 서비스 통제',
    n.name_kr = '관리형 서비스 통제',
    n.domain = 'NW',
    n.definition = '불합리한 차별을 금지하고, 관리형 서비스 제공 조건이 5G 환경에 적합한지 지속적으로 논의';

MERGE (n:Concept {id: '서비스_측면'})
SET     n.name = '서비스 측면',
    n.name_kr = '서비스 측면',
    n.domain = 'NW',
    n.definition = '차별성 없는 서비스 제공';

MERGE (n:Concept {id: '지속발전_가능성_고려'})
SET     n.name = '지속발전 가능성 고려',
    n.name_kr = '지속발전 가능성 고려',
    n.domain = 'NW',
    n.definition = '통신 인프라 투자 유치 다각화로 양질의 서비스 제공 - 통신서비스의 지속적인 혁신 필요';

MERGE (n:Concept {id: 'mission_critical_서비스_망중립성_이슈_예외'})
SET     n.name = 'Mission Critical 서비스 망중립성 이슈 예외',
    n.name_kr = 'Mission Critical 서비스 망중립성 이슈 예외',
    n.domain = 'NW',
    n.definition = '재난망, 자율주행, 원격의료 등 Mission Critical 통신 서비스는 망중립성에 대한 이슈 예외 적용';

MERGE (n:Concept {id: '요금측면'})
SET     n.name = '요금측면',
    n.name_kr = '요금측면',
    n.domain = 'NW',
    n.definition = '이용자 요금제 개편';

MERGE (n:Concept {id: '플랫폼_사업자_망이용_운영체계_개선'})
SET     n.name = '플랫폼 사업자 망이용 운영체계 개선',
    n.name_kr = '플랫폼 사업자 망이용 운영체계 개선',
    n.domain = 'NW',
    n.definition = '온라인 사업자의 망이용 대가 지불이 가능하다면 이용자 부담은 경감할 것임 - 스타트업 등은 비용에 부담이 발생할 수 있으므로, 플랫폼사업자가 자발적으로 대가 지불 가능하도록 망이용 운영체계 개선';

MERGE (n:Concept {id: '컴플라이언스_측면'})
SET     n.name = '컴플라이언스 측면',
    n.name_kr = '컴플라이언스 측면',
    n.domain = 'NW',
    n.definition = '모니터링 체계 구축';

MERGE (n:Concept {id: '합리적인_규제_적용'})
SET     n.name = '합리적인 규제 적용',
    n.name_kr = '합리적인 규제 적용',
    n.domain = 'NW',
    n.definition = '투명한 트래픽 관리 기준의 적용에 따라 합리성 확보 - 진화하는 환경에 따라 합리적인 제도 마련 및 적용 필요';

// --- 관계 ---

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'network_neutrality'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '제공조건'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '지속적_망_고도화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '원칙_회피_목적_제공_금지'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '시사점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '세계적_정책_동향_부합'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '제언'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '제로_레이팅_규제_완화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Technology {id: '망중립성_원칙_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '찬성_측면'})
MERGE (b:Concept {id: '반대_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '찬성_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '반대_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '인터넷_개념'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '관리형_서비스'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '불공정_행위'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'isp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'cp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '쟁점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '검토_사항'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '규제_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '규제의_중립성'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Technology {id: '관리형_서비스_통제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '서비스_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '지속발전_가능성_고려'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: 'mission_critical_서비스_망중립성_이슈_예외'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '요금측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '플랫폼_사업자_망이용_운영체계_개선'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '컴플라이언스_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Concept {id: '합리적인_규제_적용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Document {id: 'NW_187.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'network_neutrality'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제공조건'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적_망_고도화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원칙_회피_목적_제공_금지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시사점'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세계적_정책_동향_부합'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제언'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제로_레이팅_규제_완화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '망중립성_원칙_확대'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '찬성_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반대_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_개념'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리형_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불공정_행위'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'isp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쟁점'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검토_사항'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규제_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규제의_중립성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '관리형_서비스_통제'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속발전_가능성_고려'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mission_critical_서비스_망중립성_이슈_예외'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요금측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_사업자_망이용_운영체계_개선'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴플라이언스_측면'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합리적인_규제_적용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_187.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_187.4'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_188: V2V
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_188'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'v2v'})
SET     n.name = 'V2V',
    n.name_kr = 'V2V',
    n.domain = 'NW',
    n.aliases = ['V2V'];

MERGE (n:Concept {id: 'vanet'})
SET     n.name = 'VANET',
    n.name_kr = 'VANET',
    n.domain = 'NW',
    n.aliases = ['VANET'];

MERGE (n:Concept {id: '차량간_멀티홉_통신_기술'})
SET     n.name = '차량간 멀티홉 통신 기술',
    n.name_kr = '차량간 멀티홉 통신 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wave'})
SET     n.name = 'WAVE',
    n.name_kr = 'WAVE',
    n.domain = 'NW',
    n.aliases = ['WAVE'];

MERGE (n:Concept {id: '브로드캐스팅'})
SET     n.name = '브로드캐스팅',
    n.name_kr = '브로드캐스팅',
    n.domain = 'NW';

MERGE (n:Technology {id: '5g'})
SET     n.name = '5G',
    n.name_kr = '5G',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: 'v2v'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: 'vanet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: '차량간_멀티홉_통신_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: 'wave'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: '브로드캐스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Technology {id: '5g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Document {id: 'NW_188'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vanet'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차량간_멀티홉_통신_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wave'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '브로드캐스팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_189: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_189'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_190: IoV(Internet of Vehicles)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_190'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'internet_of_vehicles'})
SET     n.name = 'Internet of Vehicles',
    n.name_kr = 'IoV',
    n.domain = 'NW',
    n.aliases = ['Internet of Vehicles', 'IoV'];

MERGE (n:Concept {id: 'v2v'})
SET     n.name = 'V2V',
    n.name_kr = 'V2V',
    n.domain = 'NW',
    n.aliases = ['V2V'];

MERGE (n:Concept {id: '커넥티드_카'})
SET     n.name = '커넥티드 카',
    n.name_kr = '커넥티드 카',
    n.domain = 'NW';

MERGE (n:Concept {id: 'telematics'})
SET     n.name = '텔레메틱스',
    n.name_kr = '텔레메틱스',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형자동차'})
SET     n.name = '지능형자동차',
    n.name_kr = '지능형자동차',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wave'})
SET     n.name = 'WAVE',
    n.name_kr = 'WAVE',
    n.domain = 'NW',
    n.aliases = ['WAVE'];

MERGE (n:Concept {id: 'v2x'})
SET     n.name = 'V2X',
    n.name_kr = 'V2X',
    n.domain = 'NW',
    n.aliases = ['V2X'];

// --- 관계 ---

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: 'v2v'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: '커넥티드_카'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: 'telematics'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: '지능형자동차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: 'wave'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Concept {id: 'v2x'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Document {id: 'NW_190'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'internet_of_vehicles'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커넥티드_카'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'telematics'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형자동차'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wave'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v2x'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_191.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_191.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_191.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_191.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_192: DSRC(Dedicated Short Range Communication)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_192'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'dedicated_short_range_communication'})
SET     n.name = 'Dedicated Short Range Communication',
    n.name_kr = 'DSRC',
    n.domain = 'NW',
    n.aliases = ['Dedicated Short Range Communication', 'DSRC'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'v2v'})
SET     n.name = 'V2V',
    n.name_kr = 'V2V',
    n.domain = 'NW',
    n.aliases = ['V2V'];

MERGE (n:Concept {id: 'dsrc'})
SET     n.name = 'DSRC',
    n.name_kr = 'DSRC',
    n.domain = 'NW',
    n.aliases = ['DSRC'];

MERGE (n:Concept {id: 'its'})
SET     n.name = 'ITS',
    n.name_kr = 'ITS',
    n.domain = 'NW',
    n.aliases = ['ITS'];

MERGE (n:Concept {id: '노변기지국'})
SET     n.name = '노변기지국',
    n.name_kr = '노변기지국',
    n.domain = 'NW';

MERGE (n:Concept {id: '차량탑재단말'})
SET     n.name = '차량탑재단말',
    n.name_kr = '차량탑재단말',
    n.domain = 'NW';

MERGE (n:Concept {id: 'los'})
SET     n.name = 'LOS',
    n.name_kr = 'LOS',
    n.domain = 'NW',
    n.aliases = ['LOS'];

MERGE (n:Concept {id: '고속전송'})
SET     n.name = '고속전송',
    n.name_kr = '고속전송',
    n.domain = 'NW';

MERGE (n:Concept {id: '수동형'})
SET     n.name = '수동형',
    n.name_kr = '수동형',
    n.domain = 'NW';

MERGE (n:Concept {id: '능동형'})
SET     n.name = '능동형',
    n.name_kr = '능동형',
    n.domain = 'NW';

MERGE (n:Concept {id: '1mbps'})
SET     n.name = '1Mbps',
    n.name_kr = '1Mbps',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dsrc'})
MERGE (b:Concept {id: 'v2v'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: 'its'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '노변기지국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '차량탑재단말'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: 'los'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '고속전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '수동형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '능동형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Concept {id: '1mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Document {id: 'NW_192'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dedicated_short_range_communication'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsrc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'its'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노변기지국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차량탑재단말'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'los'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고속전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수동형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '능동형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_193: WAVE(Wireless Access in Vehicular Environment)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_193'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wireless_access_in_vehicular_environment'})
SET     n.name = 'Wireless Access in Vehicular Environment',
    n.name_kr = 'WAVE',
    n.domain = 'NW',
    n.aliases = ['Wireless Access in Vehicular Environment', 'WAVE'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'v2v'})
SET     n.name = 'V2V',
    n.name_kr = 'V2V',
    n.domain = 'NW',
    n.aliases = ['V2V'];

MERGE (n:Concept {id: 'wave'})
SET     n.name = 'WAVE',
    n.name_kr = 'WAVE',
    n.domain = 'NW',
    n.aliases = ['WAVE'];

MERGE (n:Concept {id: 'v2i_등_v2x_통신기술'})
SET     n.name = 'V2I 등 V2X 통신기술',
    n.name_kr = 'V2I 등 V2X 통신기술',
    n.domain = 'NW';

MERGE (n:Standard {id: '프로토콜_스택(ieee_802.11p'})
SET     n.name = '프로토콜 스택(IEEE 802.11p',
    n.name_kr = '프로토콜 스택(IEEE 802.11p',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ieee_1069.1~4)'})
SET     n.name = 'IEEE 1069.1~4)',
    n.name_kr = 'IEEE 1069.1~4)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wave_스펙_(5.9_ghz_대역'})
SET     n.name = 'WAVE 스펙 (5.9 GHz 대역',
    n.name_kr = 'WAVE 스펙 (5.9 GHz 대역',
    n.domain = 'NW';

MERGE (n:Concept {id: '75mhz_대역폭'})
SET     n.name = '75MHz 대역폭',
    n.name_kr = '75MHz 대역폭',
    n.domain = 'NW';

MERGE (n:Concept {id: '최대_1km_커버리지'})
SET     n.name = '최대 1Km 커버리지',
    n.name_kr = '최대 1Km 커버리지',
    n.domain = 'NW';

MERGE (n:Concept {id: '최대_200km/h_이동속도지원'})
SET     n.name = '최대 200Km/h 이동속도지원',
    n.name_kr = '최대 200Km/h 이동속도지원',
    n.domain = 'NW';

MERGE (n:Concept {id: '100ms_이내_레이턴시_등)'})
SET     n.name = '100ms 이내 레이턴시 등)',
    n.name_kr = '100ms 이내 레이턴시 등)',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wave'})
MERGE (b:Concept {id: 'v2v'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: 'v2i_등_v2x_통신기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Standard {id: '프로토콜_스택(ieee_802.11p'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Standard {id: 'ieee_1069.1~4)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: 'wave_스펙_(5.9_ghz_대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: '75mhz_대역폭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: '최대_1km_커버리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: '최대_200km/h_이동속도지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Concept {id: '100ms_이내_레이턴시_등)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Document {id: 'NW_193'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wireless_access_in_vehicular_environment'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v2v'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wave'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'v2i_등_v2x_통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '프로토콜_스택(ieee_802.11p'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_1069.1~4)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wave_스펙_(5.9_ghz_대역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '75mhz_대역폭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_1km_커버리지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대_200km/h_이동속도지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '100ms_이내_레이턴시_등)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_194: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_194'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_195.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_195.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_195.2: 지능형 IoT
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_195.2'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '지능형_iot'})
SET     n.name = '지능형 IoT',
    n.name_kr = '지능형 IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형_센서_소자_기술'})
SET     n.name = '지능형 센서 소자 기술',
    n.name_kr = '지능형 센서 소자 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형_센서_알고리즘_기술'})
SET     n.name = '지능형 센서 알고리즘 기술',
    n.name_kr = '지능형 센서 알고리즘 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '저전력_기술'})
SET     n.name = '저전력 기술',
    n.name_kr = '저전력 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ai기술'})
SET     n.name = 'AI기술',
    n.name_kr = 'AI기술',
    n.domain = 'NW';

MERGE (n:Concept {id: 'middleware'})
SET     n.name = 'Middleware',
    n.name_kr = 'Middleware',
    n.domain = 'NW',
    n.definition = 'Gateway',
    n.aliases = ['Middleware'];

MERGE (n:Concept {id: 'ai'})
SET     n.name = 'AI',
    n.name_kr = 'AI',
    n.domain = 'NW',
    n.definition = 'Deep Learning',
    n.aliases = ['AI'];

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'NW',
    n.definition = 'Fixed Networks',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: '지능형_센서'})
SET     n.name = '지능형 센서',
    n.name_kr = '지능형 센서',
    n.domain = 'NW',
    n.definition = '지능형 센서소자';

MERGE (n:Concept {id: 'computing'})
SET     n.name = 'Computing',
    n.name_kr = 'Computing',
    n.domain = 'NW',
    n.definition = '클라우드',
    n.aliases = ['Computing'];

MERGE (n:Technology {id: 'network'})
SET     n.name = 'Network',
    n.name_kr = 'Network',
    n.domain = 'NW',
    n.definition = '5G',
    n.aliases = ['Network'];

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'NW',
    n.definition = 'TinyML';

MERGE (n:Concept {id: '에지_컴퓨팅과_on-device_ai'})
SET     n.name = '에지 컴퓨팅과 On-Device AI',
    n.name_kr = '에지 컴퓨팅과 On-Device AI',
    n.domain = 'NW',
    n.definition = 'AIoT에서는 인공지능 엔진을 클라우드가 아닌 에지 장치나 종단 장치(End Terminal)에 두어야 함 - On-Device AI는 디바이스에 AI 엔진이 탑재. 스마트폰이나 자동차 등 컴퓨팅 파워가 여유로운 경우에 주로 사용';

MERGE (n:Concept {id: '분산지능_기술'})
SET     n.name = '분산지능 기술',
    n.name_kr = '분산지능 기술',
    n.domain = 'NW',
    n.definition = '분산지능은 한 곳에서 풀기 어려운 복잡계 문제를 지능을 갖는 에이전트를 분산시켜 해결하는 기술 - 국지적인 정보를 통해 국지적 최적화를 수행하고 이러한 결과들이 전역적인 최적화 효과를 발생시키는 형태로 문제 해결';

MERGE (n:Technology {id: 'massive_iot'})
SET     n.name = 'Massive IoT',
    n.name_kr = 'Massive IoT',
    n.domain = 'NW',
    n.definition = '사람이 휴대하는 단말기뿐 아니라 생활 속 모든 단말ㆍ기기를 네트워크에 연결하여 정보를 생성하고 공유하는 초연결 환경 - IoT는 5G 이전 시대에는 사물 간의 연결을 위해 센서 네트워크(USN), 사물통신(M2M), MTC(Machine Type Communication)로 표현했으며, 5G 이후에는 mMTC(Massive MTC)로 표현하고 1Km²당 1',
    n.aliases = ['Massive IoT'];

MERGE (n:Technology {id: 'matter_표준'})
SET     n.name = 'Matter 표준',
    n.name_kr = 'Matter 표준',
    n.domain = 'NW',
    n.definition = '근거리 무선통신을 위한 AllSeen Alliance, OCF, Thread Group 같은 다양한 연동 표준들이 등장했지만 스마트 기기들 간의 연결 혹은 상호운용성의 문제는 여전히 해결되지 못함. - 이러한 문제들을 개선하기 위해 아마존, 애플, 구글을 포함한 CSA(Connectivity Standards Alliance, 前 ZigBee Allianc';

MERGE (n:Concept {id: '주요기술'})
SET     n.name = '주요기술',
    n.name_kr = '주요기술',
    n.domain = 'NW',
    n.definition = '인식/센싱';

MERGE (n:Concept {id: '판단/표현'})
SET     n.name = '판단/표현',
    n.name_kr = '판단/표현',
    n.domain = 'NW',
    n.definition = '멀티모달, 인공지능, 딥러닝, 자연어처리, 영상인식/감지, 영상통화, 관제 등';

MERGE (n:Concept {id: '제어/행동'})
SET     n.name = '제어/행동',
    n.name_kr = '제어/행동',
    n.domain = 'NW',
    n.definition = '자율주행, 모션, 장치/모터제어, 장애물회피, 이동, 체취 등';

MERGE (n:Concept {id: '안내로봇'})
SET     n.name = '안내로봇',
    n.name_kr = '안내로봇',
    n.domain = 'NW',
    n.definition = '인건비 상승 대응 및 코로나19로 비대면 수요 증가';

MERGE (n:Concept {id: '돌봄로봇'})
SET     n.name = '돌봄로봇',
    n.name_kr = '돌봄로봇',
    n.domain = 'NW',
    n.definition = '사회적 비용 증가 및 고령화 사회로 간병인 부족 문제 대응';

MERGE (n:Concept {id: '기술변화'})
SET     n.name = '기술변화',
    n.name_kr = '기술변화',
    n.domain = 'NW',
    n.definition = '자율형 플랫폼';

MERGE (n:Concept {id: '서비스_변화'})
SET     n.name = '서비스 변화',
    n.name_kr = '서비스 변화',
    n.domain = 'NW',
    n.definition = '자율 재난 대응';

MERGE (n:Concept {id: '미국'})
SET     n.name = '미국',
    n.name_kr = '미국',
    n.domain = 'NW',
    n.definition = '코로나19 대응 디지털 전환 정책';

MERGE (n:Concept {id: 'eu'})
SET     n.name = 'EU',
    n.name_kr = 'EU',
    n.domain = 'NW',
    n.definition = '디지털 혁신 솔루션 개발 집중',
    n.aliases = ['EU'];

MERGE (n:Concept {id: '중국'})
SET     n.name = '중국',
    n.name_kr = '중국',
    n.domain = 'NW',
    n.definition = '첨단 기술 집중 투자/육성';

MERGE (n:Concept {id: '일본'})
SET     n.name = '일본',
    n.name_kr = '일본',
    n.domain = 'NW',
    n.definition = '디지털 환경 규제 개혁 및 산업화 촉진';

MERGE (n:Concept {id: '한국'})
SET     n.name = '한국',
    n.name_kr = '한국',
    n.domain = 'NW',
    n.definition = '국민 체감, 선도적 서비스 모델 발굴';

MERGE (n:Concept {id: '영역'})
SET     n.name = '영역',
    n.name_kr = '영역',
    n.domain = 'NW';

MERGE (n:Concept {id: '발전_동향'})
SET     n.name = '발전 동향',
    n.name_kr = '발전 동향',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '지능형_센서_소자_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '지능형_센서_알고리즘_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '저전력_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'ai기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'middleware'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'ai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '지능형_센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'computing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Technology {id: 'network'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '에지_컴퓨팅과_on-device_ai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '분산지능_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Technology {id: 'massive_iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Technology {id: 'matter_표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '주요기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '판단/표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '제어/행동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '안내로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '돌봄로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '기술변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '서비스_변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '미국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: 'eu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '중국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '일본'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '한국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영역'})
MERGE (b:Concept {id: '발전_동향'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '영역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '발전_동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Document {id: 'NW_195.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_센서_소자_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_센서_알고리즘_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'middleware'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_센서'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에지_컴퓨팅과_on-device_ai'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산지능_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'massive_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'matter_표준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '판단/표현'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제어/행동'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안내로봇'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '돌봄로봇'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술변화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_변화'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eu'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발전_동향'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_195.3: 자율형 사물인터넷(Autonomy IoT)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_195.3'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'autonomy_iot'})
SET     n.name = 'Autonomy IoT',
    n.name_kr = '자율형 사물인터넷',
    n.domain = 'NW',
    n.aliases = ['Autonomy IoT', '자율형 사물인터넷'];

MERGE (n:Concept {id: '지능형_로봇'})
SET     n.name = '지능형 로봇',
    n.name_kr = '지능형 로봇',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형_iot'})
SET     n.name = '지능형 IoT',
    n.name_kr = '지능형 IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '상황인지_기술'})
SET     n.name = '상황인지 기술',
    n.name_kr = '상황인지 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '상황추론'})
SET     n.name = '상황추론',
    n.name_kr = '상황추론',
    n.domain = 'NW';

MERGE (n:Concept {id: '예측_기술'})
SET     n.name = '예측 기술',
    n.name_kr = '예측 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '최적화_기술'})
SET     n.name = '최적화 기술',
    n.name_kr = '최적화 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능_강화_기술'})
SET     n.name = '지능 강화 기술',
    n.name_kr = '지능 강화 기술',
    n.domain = 'NW';

MERGE (n:Concept {id: '저비용,_광대역,_초고속'})
SET     n.name = '저비용, 광대역, 초고속',
    n.name_kr = '저비용, 광대역, 초고속',
    n.domain = 'NW',
    n.definition = 'On-Device AI';

MERGE (n:Concept {id: 'massive_iot'})
SET     n.name = 'Massive IoT',
    n.name_kr = 'Massive IoT',
    n.domain = 'NW',
    n.definition = '사람이 휴대하는 단말기뿐 아니라 생활 속 모든 단말ㆍ기기를 네트워크에 연결하여 정보를 생성하고 공유하는 초연결 네트워크 환경',
    n.aliases = ['Massive IoT'];

MERGE (n:Concept {id: 'matter'})
SET     n.name = 'Matter',
    n.name_kr = 'Matter',
    n.domain = 'NW',
    n.definition = 'IoT 기반 개방형 스마트홈 연동 표준과 인증 프로그램 - 스마트홈을 구성하는 개별 디바이스는 IP 주소를 갖고 디바이스와 디바이스들 사이에 IP를 기반으로 통신',
    n.aliases = ['Matter'];

MERGE (n:Concept {id: '에지_컴퓨팅'})
SET     n.name = '에지 컴퓨팅',
    n.name_kr = '에지 컴퓨팅',
    n.domain = 'NW',
    n.definition = '사물인터넷 디바이스에서 발생하는 데이터를 데이터가 발생한 현장 혹은 근거리에서 처리하는 방식으로 데이터 처리 지연시간을 최소화함으로써 실시간성을 확보';

MERGE (n:Concept {id: '사물지능'})
SET     n.name = '사물지능',
    n.name_kr = '사물지능',
    n.domain = 'NW',
    n.definition = '사물이 스스로 환경의 변화를 인지하고 합리적 의사결정을 통해 자율적인 대응을 수행하는 사물 지능화 기술';

MERGE (n:Concept {id: '분산지능_기술'})
SET     n.name = '분산지능 기술',
    n.name_kr = '분산지능 기술',
    n.domain = 'NW',
    n.definition = '한 곳에서 풀기 어려운 복잡계 문제를 지능을 갖는 에이전트를 분산시켜 해결하는 기술 - DPS(Distributed Problem Solving) : 하나의 커다란 문제 해결 위해 문제를 나누고, 분산 노드에서 처리하여 부분적 결과를 매시업하여 최종 결과 도출 - MAS(Multi-Agent System) : 각기 다른 목적을 갖는 이종의 분산노드 환경에서';

MERGE (n:Concept {id: '상황추론,_예측_기술'})
SET     n.name = '상황추론, 예측 기술',
    n.name_kr = '상황추론, 예측 기술',
    n.domain = 'NW',
    n.definition = '상황인지 정보로부터 새로운 정보를 추론';

MERGE (n:Concept {id: '연결형'})
SET     n.name = '연결형',
    n.name_kr = '연결형',
    n.domain = 'NW';

MERGE (n:Concept {id: '지능형'})
SET     n.name = '지능형',
    n.name_kr = '지능형',
    n.domain = 'NW';

MERGE (n:Concept {id: '자율형'})
SET     n.name = '자율형',
    n.name_kr = '자율형',
    n.domain = 'NW';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스',
    n.name_kr = '서비스',
    n.domain = 'NW',
    n.definition = '사물인터넷 기반 개인/공공/산업별 다양한 서비스 제공을 위한 기술';

MERGE (n:Technology {id: '하이엔드_메시업_서비스'})
SET     n.name = '하이엔드 메시업 서비스',
    n.name_kr = '하이엔드 메시업 서비스',
    n.domain = 'NW',
    n.definition = '5G/6G 네트워크를 통해 로봇·자동화·AI·머신러닝 등과 같은 첨단기술이 연결되고 바이오·화학·행정 등 서로 다른 다양한 도메인과 조합·융합한 서비스 - 교통·의료·금융 등 처리 시간에 민감한 분야에서는 에지/포그 컴퓨팅을 결합한 실시간 로컬 서비스가 급부상';

MERGE (n:Concept {id: '인간·환경_중심의_서비스'})
SET     n.name = '인간·환경 중심의 서비스',
    n.name_kr = '인간·환경 중심의 서비스',
    n.domain = 'NW',
    n.definition = '인간 모델링(Computational Human Modeling)과 생태모방(Biomimetics) 기술 등과 사물인터넷 서비스가 융합 - 인간의 일상생활부터 지적활동에 이르기까지 모든 것을 자동화하고 부족한 것을 대체해 개인 맞춤화, 지능화·일상화 형태로 구현되는 서비스';

MERGE (n:Concept {id: '비대면_서비스'})
SET     n.name = '비대면 서비스',
    n.name_kr = '비대면 서비스',
    n.domain = 'NW',
    n.definition = '사람과 접속을 최소화한 비대면 형태의 사물인터넷 언택트서비스 - 가상/증강현실, 시멘틱웹 등의 기술과 연계하여 가상공간에서 실제공간에서 활동하는 것과 같다고 느낄 수 있는 메타버스(metaverse) 서비스 - 차별화된 상황판단 기능과 자율동작 기능을 탑재한 로봇이 사람의 최소한의 개입으로 공공위생, 의료, 물류/배송, 교육 서비스에 적용';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'NW',
    n.definition = '사물/공간/사람을 유기적으로 연결하고 상황을 분석/예측/판단해 서비스를 제공하는 공통 플랫폼 기술';

MERGE (n:Concept {id: '사물인터넷_통합관리_기술'})
SET     n.name = '사물인터넷 통합관리 기술',
    n.name_kr = '사물인터넷 통합관리 기술',
    n.domain = 'NW',
    n.definition = '시스템 전반을 S/W 또는 H/W적으로 통합관리하는 기술(예: 사물인터넷 전반 기능 제어 응용앱, 서비스 제공 어플리케이션 솔루션)';

MERGE (n:Concept {id: '데이터_분석·처리_기술'})
SET     n.name = '데이터 분석·처리 기술',
    n.name_kr = '데이터 분석·처리 기술',
    n.domain = 'NW',
    n.definition = '사물인터넷 시스템에서 데이터의 분석, 처리 기능을 주로 제공하는 분석 처리 기술 (예: 주로 빅데이터, 인공지능, 머신러닝, 학습 등을 활용하여 데이터 처리, 분석, 저장 기능을 하는 서버, 프로세서, 클라우드 컴퓨팅 장치)';

MERGE (n:Concept {id: '연결성_관리_기술'})
SET     n.name = '연결성 관리 기술',
    n.name_kr = '연결성 관리 기술',
    n.domain = 'NW',
    n.definition = '사물인터넷 시스템을 이루는 장치 간의 통신 네트워크 기능을 주로 관장하는 기술 (예: 게이트웨이 장치, 허브 장치)';

MERGE (n:Concept {id: '단말_관리_기술'})
SET     n.name = '단말 관리 기술',
    n.name_kr = '단말 관리 기술',
    n.domain = 'NW',
    n.definition = '사물인터넷 시스템의 현장 말단의 센서 구비 단말의 자원을 주로 유지 관리하는 기능을 가진 기술 (예: 말단 단말 디바이스의 연결 상태, 디바이스 모니터링, 디바이스 펌웨어 업데이트, 기기 등록, 기기 인식 장치)';

MERGE (n:Concept {id: '플랫폼_세부_기술'})
SET     n.name = '플랫폼 세부 기술',
    n.name_kr = '플랫폼 세부 기술',
    n.domain = 'NW',
    n.definition = '식별체계 기술';

MERGE (n:Concept {id: '검색_기술'})
SET     n.name = '검색 기술',
    n.name_kr = '검색 기술',
    n.domain = 'NW',
    n.definition = '사용자가 원하는 서비스를 제공받기 위하여 정보나 리소스 등을 찾고 찾아진 결과를 쉽게 활용할 수 있도록 제공하는 기술 (예: 클라이언트-서버 방식, P2P(peer-topeer) 방식)';

MERGE (n:Concept {id: '장치_관리_기술'})
SET     n.name = '장치 관리 기술',
    n.name_kr = '장치 관리 기술',
    n.domain = 'NW',
    n.definition = '디바이스의 초기 설정, 소프트웨어/펌웨어 다운로드, 배터리/메모리 등 모니터링, 시스템 리부팅, 시스템 로깅 등을 위한 기술 (예: OMA(Open Mobile Alliance) DM(Device Management), OMA LWM2M(Lightweight M2M), BBF(Broadband Forum) TR-069, 별도의 장치 관련 프로토콜을 개발하여';

MERGE (n:Concept {id: '사물_가상화_기술'})
SET     n.name = '사물 가상화 기술',
    n.name_kr = '사물 가상화 기술',
    n.domain = 'NW',
    n.definition = '물리적 환경에 존재하는 다양한 사물의 정보를 플랫폼 또는 디바이스에 표현하기위해 추상화된 형태로 리소스를 생성하는 기술. 실세계에 존재하는 사물이 지원하는 네트워크, 정보체계 등에 관계없이 사물 가상화를 통해 가상화된 리소스를 쉽게 서비스와 연결하거나 매쉬업 서비스를 구성에 활용';

MERGE (n:Concept {id: '서비스_컴포지션_기술'})
SET     n.name = '서비스 컴포지션 기술',
    n.name_kr = '서비스 컴포지션 기술',
    n.domain = 'NW',
    n.definition = '서비스 지향 구조(SOA, Service Oriented Architecture)에서 다양한 서비스를 연동하기 위한 개념에서 출발했으며 Service Oriented 또는 Service Choreography 기술의 하부 기술';

MERGE (n:Concept {id: '시맨틱_기술'})
SET     n.name = '시맨틱 기술',
    n.name_kr = '시맨틱 기술',
    n.domain = 'NW',
    n.definition = '분산 환경에서 리소스에 대한 정보와 관계-의미 정보를 기계가 처리할 수 있도록, 온톨로지(Ontology) 형태로 표현하고 이를 자동화된 기계가 처리하도록 하는 프레임워크 기술';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW',
    n.definition = '사물인터넷 사물 간, 사물-플랫폼 간 연결을 위한 유무선 통신 기술';

MERGE (n:Technology {id: 'ble'})
SET     n.name = 'BLE',
    n.name_kr = '저전력 블루투스',
    n.domain = 'NW',
    n.definition = '가까운 거리에서 데이터, 음성, 영상 등을 교환할 때 사용하는 무선 기술(2.4 GHz) - 현재 Bluetooth 5.0 (24 Mbps, BLE) 까지 개발',
    n.aliases = ['BLE', '저전력 블루투스'];

MERGE (n:Concept {id: 'near_field_communication,_nfc'})
SET     n.name = 'Near Field Communication, NFC',
    n.name_kr = '초근거리 통신',
    n.domain = 'NW',
    n.definition = 'RFID 기술 즉, 리더가 전파를 방사하면 태그는 수신한 에너지를 이용하여 칩에 저장된 데이터를 리더로 반환하여 정보를 전달하는 형태의 통신 기술이 진화한 형태로 13.56 MHz 대의 비접촉식 양방향 근접 통신 기술 - (P2P모드) 두대의 NFC 디바이스가 상호 데이터 송수신 - (리터/라이터 모드) RFID 태그를 인식 하기 위한 리더 형태 - (카드',
    n.aliases = ['Near Field Communication, NFC', '초근거리 통신'];

MERGE (n:Standard {id: 'wi_fi_halow'})
SET     n.name = 'Wi-Fi HaLow',
    n.name_kr = 'Wi-Fi 해일로',
    n.domain = 'NW',
    n.definition = 'IEEE 802.11ah 기반 1GHz 이하의 주파수 대역에서 작동하여 장거리 저전력 연결을 제공함으로써 Wi-Fi를 확장 - 사물인터넷 관련 요구를 만족시켜 산업, 농업, 스마트 빌딩, 스마트 시티 등 다양한 환경을 지원할 수 있는 기술',
    n.aliases = ['Wi-Fi HaLow', 'Wi-Fi 해일로'];

MERGE (n:Concept {id: 'mmtc'})
SET     n.name = 'mMTC',
    n.name_kr = 'mMTC',
    n.domain = 'NW',
    n.definition = '사람이 휴대하는 단말기 뿐 아니라 생활 속 모든 단말·기기를 네트워크에 연결하여 정보를 생성하고 공유하는 초연결 네트워크 환경에서, 수많은 가정용, 산업용 사물인터넷 디바이스들이 1km2 면적 안에서 100만개 이상의 디바이스 간 연결을 목표 개발',
    n.aliases = ['mMTC'];

MERGE (n:Technology {id: 'long_range'})
SET     n.name = 'Long Range',
    n.name_kr = 'LoRa',
    n.domain = 'NW',
    n.definition = '저전력 광역 무선 네트워킹을 목적으로 개발한 통신기술 - 광역에서의 통신범위를 증가시키기 위해 저전력 특성을 가지는 “처프 확산 스펙트럼(Chirp Spread Spectrum)” 변조방식을 사용',
    n.aliases = ['Long Range', 'LoRa'];

MERGE (n:Concept {id: 'sigfox'})
SET     n.name = 'SigFox',
    n.name_kr = 'SigFox',
    n.domain = 'NW',
    n.definition = '저전력 광역 통신기술 중 하나로써, 별도의 기지국 또는 중계 장비 없이 다양한 사물에 칩셋 기반의 통신 모뎀을 연결, 가까운 거리에서 서로 꼭 필요한 데이터들만 주고받을 수 있도록 하여 별도의 망 구축비용과 전력 소모를 최소화할 수 있는 통신기술',
    n.aliases = ['SigFox'];

MERGE (n:Concept {id: '디바이스'})
SET     n.name = '디바이스',
    n.name_kr = '디바이스',
    n.domain = 'NW',
    n.definition = '사물인터넷 환경을 구성하는 사물로서 센싱 및 액추에이팅 기술';

MERGE (n:Concept {id: '아두이노'})
SET     n.name = '아두이노',
    n.name_kr = '아두이노',
    n.domain = 'NW',
    n.definition = '2005년 이탈리아에서 만들어진 현재 가장 많이 활용되고 있는 마이크로컨트롤러 보드 - 개발툴, 회로도 등을 오픈소스 형태로 제공함으로써. 각종 센서/엑츄에이터 및 통신 모듈 등을 탑재한 다양한 호환 보드를 활용 - 종류로는 UNO, Mega(Mega2560), Nano, Pro/Pro mini, Lily Pad 등이 있으며, 아두이노 UNO 보드가 표준으';

MERGE (n:Concept {id: '라즈베리파이'})
SET     n.name = '라즈베리파이',
    n.name_kr = '라즈베리파이',
    n.domain = 'NW',
    n.definition = '영국의 라즈베리파이 재단이 기초과학 교육용으로 만든 소형 컴퓨터로 2012년에 출시 - 아두이노와 달리 키보드, 마우스, 모니터만 연결하면 PC가 될 수 있으며, 리눅스 OS를 기본으로 탑재한 오픈소스 하드웨어다. 사물인터넷 하드웨어 종류는 Pi1, Pi2, Pi3, Pi4, Pi Zero로 구분되며, 다양한 OS를 설치하여 그 활용도가 높다.';

MERGE (n:Technology {id: '인텔-갈릴레오/에디슨/큐리'})
SET     n.name = '인텔-갈릴레오/에디슨/큐리',
    n.name_kr = '인텔-갈릴레오/에디슨/큐리',
    n.domain = 'NW',
    n.definition = '갈릴레오 보드는 Quark SoC x1000 프로세스 기반이며, 아두이노 UNO 보드와 호환 - 에디슨 보드는 2014년에 출시되었으며, Atom 듀얼 코어 CPU, Quark 마이크로 컨트롤러 기반 SoC칩, WiFi 및 블루투스 모듈을 포함 - 큐리 보드는 2015년에 출시된 초소형 SoC 모듈을 포함하며, 의료, 액세서리 등에 부착되는 웨어러블 기기로';

MERGE (n:Concept {id: '비글본_블랙'})
SET     n.name = '비글본 블랙',
    n.name_kr = '비글본 블랙',
    n.domain = 'NW',
    n.definition = '라즈베리파이와 같이 교육용으로 개발된 오픈소스 하드웨어 플랫폼 - ARM CPU Cortex-A8, 고속 비디오/오디오, 2D/3D 그래픽 처리장치 등이 탑재되어 고성능 서비스를 구현할 수 있다.';

MERGE (n:Concept {id: '링크잇원'})
SET     n.name = '링크잇원',
    n.name_kr = '링크잇원',
    n.domain = 'NW',
    n.definition = '대만의 칩 벤더인 MediaTek이 2014년에 개발되었으며, 웨어러블 또는 사물인터넷 장치 개발을 지원 - 다른 하드웨어 플랫폼과 달리 GSM/GPRS 모뎀을 수용함으로써 아웃도어용 사물인터넷 디바이스 개발에 적합';

// --- 관계 ---

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Concept {id: '지능형_로봇'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '상황인지_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '상황추론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '예측_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '최적화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '지능_강화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '저비용,_광대역,_초고속'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: 'massive_iot'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: 'matter'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '에지_컴퓨팅'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '사물지능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '분산지능_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '상황추론,_예측_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '연결형'})
MERGE (b:Concept {id: '지능형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '연결형'})
MERGE (b:Concept {id: '자율형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '연결형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능형'})
MERGE (b:Concept {id: '자율형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '지능형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '자율형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Technology {id: '하이엔드_메시업_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '인간·환경_중심의_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '비대면_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '사물인터넷_통합관리_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '데이터_분석·처리_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '연결성_관리_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '단말_관리_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '플랫폼_세부_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '검색_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '장치_관리_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '사물_가상화_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '서비스_컴포지션_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '시맨틱_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Technology {id: 'ble'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: 'near_field_communication,_nfc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Standard {id: 'wi_fi_halow'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: 'mmtc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Technology {id: 'long_range'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: 'sigfox'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '디바이스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '아두이노'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '라즈베리파이'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Technology {id: '인텔-갈릴레오/에디슨/큐리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '비글본_블랙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Concept {id: '링크잇원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Document {id: 'NW_195.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'autonomy_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_로봇'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인지_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황추론'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예측_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최적화_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능_강화_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저비용,_광대역,_초고속'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'massive_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'matter'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에지_컴퓨팅'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산지능_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황추론,_예측_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율형'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '하이엔드_메시업_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인간·환경_중심의_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_서비스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물인터넷_통합관리_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석·처리_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결성_관리_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단말_관리_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_세부_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장치_관리_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물_가상화_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_컴포지션_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시맨틱_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ble'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'near_field_communication,_nfc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'wi_fi_halow'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mmtc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'long_range'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sigfox'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디바이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아두이노'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라즈베리파이'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '인텔-갈릴레오/에디슨/큐리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비글본_블랙'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '링크잇원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_196.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_196.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_196.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_196.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_197: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_197'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_198: CoAP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_198'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'coap'})
SET     n.name = 'CoAP',
    n.name_kr = 'CoAP',
    n.domain = 'NW',
    n.aliases = ['CoAP'];

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: 'sensor'})
SET     n.name = 'Sensor',
    n.name_kr = 'Sensor',
    n.domain = 'NW',
    n.aliases = ['Sensor'];

MERGE (n:Concept {id: 'client'})
SET     n.name = 'Client',
    n.name_kr = 'Client',
    n.domain = 'NW',
    n.aliases = ['Client'];

MERGE (n:Concept {id: 'server'})
SET     n.name = 'Server',
    n.name_kr = 'Server',
    n.domain = 'NW',
    n.aliases = ['Server'];

MERGE (n:Concept {id: 'proxy'})
SET     n.name = 'Proxy',
    n.name_kr = 'Proxy',
    n.domain = 'NW',
    n.aliases = ['Proxy'];

MERGE (n:Concept {id: 'dtls'})
SET     n.name = 'DTLS',
    n.name_kr = 'DTLS',
    n.domain = 'NW',
    n.aliases = ['DTLS'];

MERGE (n:Standard {id: 'ieee_802_15_4'})
SET     n.name = 'IEEE 802.15.4',
    n.name_kr = 'IEEE 802.15.4',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.15.4'];

MERGE (n:Concept {id: '6lowpan_wg'})
SET     n.name = '6LoWPAN WG',
    n.name_kr = '6LoWPAN WG',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ietf_std'})
SET     n.name = 'IETF Std',
    n.name_kr = 'IETF Std',
    n.domain = 'NW',
    n.aliases = ['IETF Std'];

MERGE (n:Concept {id: 'core_wg'})
SET     n.name = 'CoRE WG',
    n.name_kr = 'CoRE WG',
    n.domain = 'NW',
    n.aliases = ['CoRE WG'];

MERGE (n:Technology {id: 'udp'})
SET     n.name = 'UDP',
    n.name_kr = 'UDP',
    n.domain = 'NW',
    n.aliases = ['UDP'];

MERGE (n:Concept {id: 'coap_transactions'})
SET     n.name = 'CoAP Transactions',
    n.name_kr = 'CoAP Transactions',
    n.domain = 'NW',
    n.aliases = ['CoAP Transactions'];

MERGE (n:Concept {id: 'coap_rest'})
SET     n.name = 'CoAP REST',
    n.name_kr = 'CoAP REST',
    n.domain = 'NW',
    n.aliases = ['CoAP REST'];

MERGE (n:Concept {id: 'application'})
SET     n.name = 'Application',
    n.name_kr = 'Application',
    n.domain = 'NW',
    n.aliases = ['Application'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'NW';

MERGE (n:Concept {id: '동작_설명'})
SET     n.name = '동작 설명',
    n.name_kr = '동작 설명',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'sensor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'client'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'dtls'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Standard {id: 'ieee_802_15_4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: '6lowpan_wg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Standard {id: 'ietf_std'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'core_wg'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Technology {id: 'udp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'coap_transactions'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'coap_rest'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'application'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '동작_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: '동작_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Document {id: 'NW_198'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensor'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dtls'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_15_4'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6lowpan_wg'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ietf_std'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'core_wg'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coap_transactions'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coap_rest'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'application'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '동작_설명'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_199: MQTT (Message Queue Telemetry Transport)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_199'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'message_queue_telemetry_transport'})
SET     n.name = 'Message Queue Telemetry Transport',
    n.name_kr = 'MQTT',
    n.domain = 'NW',
    n.aliases = ['Message Queue Telemetry Transport', 'MQTT'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: 'mqtt'})
SET     n.name = 'MQTT',
    n.name_kr = 'MQTT',
    n.domain = 'NW',
    n.aliases = ['MQTT'];

MERGE (n:Concept {id: '최저_사이즈_2bytes'})
SET     n.name = '최저 사이즈 2Bytes',
    n.name_kr = '최저 사이즈 2Bytes',
    n.domain = 'NW';

MERGE (n:Concept {id: 'publish_subscribe'})
SET     n.name = 'Publish/Subscribe',
    n.name_kr = 'Publish/Subscribe',
    n.domain = 'NW',
    n.aliases = ['Publish/Subscribe'];

MERGE (n:Technology {id: 'tls'})
SET     n.name = 'TLS',
    n.name_kr = 'TLS',
    n.domain = 'NW',
    n.aliases = ['TLS'];

MERGE (n:Technology {id: 'mqtt_over_tcp'})
SET     n.name = 'MQTT over TCP',
    n.name_kr = 'MQTT over TCP',
    n.domain = 'NW',
    n.aliases = ['MQTT over TCP'];

MERGE (n:Concept {id: 'subscriber'})
SET     n.name = 'Subscriber',
    n.name_kr = '구독자',
    n.domain = 'NW',
    n.definition = '정보를 사용하는 곳으로 센서 데이터를 사용하는 어플리케이션',
    n.aliases = ['Subscriber', '구독자'];

MERGE (n:Concept {id: 'broker'})
SET     n.name = 'Broker',
    n.name_kr = '중계자',
    n.domain = 'NW',
    n.definition = '정보를 중계하는 곳으로 Proxy server와 같은 역할',
    n.aliases = ['Broker', '중계자'];

MERGE (n:Concept {id: 'topic'})
SET     n.name = 'Topic',
    n.name_kr = '토픽',
    n.domain = 'NW',
    n.definition = '발행자가 구독자에게 보내는 계층화된 메시지 구조',
    n.aliases = ['Topic', '토픽'];

MERGE (n:Concept {id: 'qos'})
SET     n.name = 'QoS',
    n.name_kr = 'QoS',
    n.domain = 'NW',
    n.definition = 'QoS 0',
    n.aliases = ['QoS'];

MERGE (n:Concept {id: 'qos_1'})
SET     n.name = 'QoS 1',
    n.name_kr = 'QoS 1',
    n.domain = 'NW',
    n.definition = '적어도 한번 이상 전달하고 전달 여부 확인',
    n.aliases = ['QoS 1'];

MERGE (n:Concept {id: 'qos_2'})
SET     n.name = 'QoS 2',
    n.name_kr = 'QoS 2',
    n.domain = 'NW',
    n.definition = '4단계의 핸드세이킹을 통해 정확히 한번만 전달',
    n.aliases = ['QoS 2'];

MERGE (n:Concept {id: 'coap'})
SET     n.name = 'CoAP',
    n.name_kr = 'CoAP',
    n.domain = 'NW',
    n.aliases = ['CoAP'];

MERGE (n:Concept {id: 'xmpp'})
SET     n.name = 'XMPP',
    n.name_kr = 'XMPP',
    n.domain = 'NW',
    n.aliases = ['XMPP'];

// --- 관계 ---

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mqtt'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: '최저_사이즈_2bytes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'publish_subscribe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Technology {id: 'tls'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Technology {id: 'mqtt_over_tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'subscriber'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'broker'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'topic'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'qos'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'qos_1'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'qos_2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mqtt'})
MERGE (b:Concept {id: 'coap'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mqtt'})
MERGE (b:Concept {id: 'xmpp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'mqtt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Concept {id: 'xmpp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'coap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Concept {id: 'xmpp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Document {id: 'NW_199'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'message_queue_telemetry_transport'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mqtt'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최저_사이즈_2bytes'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'publish_subscribe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tls'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'mqtt_over_tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subscriber'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'broker'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'topic'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qos_2'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coap'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_200: XMPP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_200'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'xmpp'})
SET     n.name = 'XMPP',
    n.name_kr = 'XMPP',
    n.domain = 'NW',
    n.aliases = ['XMPP'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Technology {id: 'tcp'})
SET     n.name = 'TCP',
    n.name_kr = 'TCP',
    n.domain = 'NW',
    n.aliases = ['TCP'];

MERGE (n:Concept {id: 'publish_subscribe'})
SET     n.name = 'Publish/Subscribe',
    n.name_kr = 'Publish/Subscribe',
    n.domain = 'NW',
    n.aliases = ['Publish/Subscribe'];

MERGE (n:Concept {id: 'client_server'})
SET     n.name = 'Client/Server',
    n.name_kr = 'Client/Server',
    n.domain = 'NW',
    n.aliases = ['Client/Server'];

MERGE (n:Technology {id: 'tls+sasl'})
SET     n.name = 'TLS+SASL',
    n.name_kr = 'TLS+SASL',
    n.domain = 'NW';

MERGE (n:Concept {id: 'jabber_id'})
SET     n.name = 'Jabber ID',
    n.name_kr = 'JID',
    n.domain = 'NW',
    n.definition = 'XMPP 기반 messenger service 가입 시 생성 - E-mail과 유사: username @ domain [ / resource ] 예) test@test.com/android - JID만 알면 다른 어떤 Jabber 서버의 사용자와도 대화가 가능.',
    n.aliases = ['Jabber ID', 'JID'];

MERGE (n:Technology {id: 'xmpp_server'})
SET     n.name = 'XMPP Server',
    n.name_kr = 'XMPP Server',
    n.domain = 'NW',
    n.definition = 'C2S: 클라이언트 접속 관리 - S2S: 다른 XMPP 서버와의 통신 담당 - 가입자정보 관리 (DB 혹은 LDAP 지원) - 구독 정보를 관리 - 컴포넌트 서비스 관리',
    n.aliases = ['XMPP Server'];

MERGE (n:Concept {id: 'xmpp_client'})
SET     n.name = 'XMPP Client',
    n.name_kr = 'XMPP Client',
    n.domain = 'NW',
    n.definition = '서버와 접속 유지 - 메시징 Messaging 수행 (stream, stanza, roster) - Subscription 관리 - Presence변경을 서버에 통지',
    n.aliases = ['XMPP Client'];

MERGE (n:Concept {id: 'xmpp_gateway'})
SET     n.name = 'XMPP Gateway',
    n.name_kr = 'XMPP Gateway',
    n.domain = 'NW',
    n.definition = 'XMPP 네트워크와 Non-XMPP 서비스를 연동 - 인증: 타 네트워크에 접속하기 위한 인증처리',
    n.aliases = ['XMPP Gateway'];

// --- 관계 ---

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Technology {id: 'tcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: 'publish_subscribe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: 'client_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Technology {id: 'tls+sasl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: 'jabber_id'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Technology {id: 'xmpp_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: 'xmpp_client'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Concept {id: 'xmpp_gateway'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Document {id: 'NW_200'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xmpp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'publish_subscribe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client_server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tls+sasl'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'jabber_id'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'xmpp_server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xmpp_client'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xmpp_gateway'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_201: LwM2M
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_201'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'lwm2m'})
SET     n.name = 'LwM2M',
    n.name_kr = 'LwM2M',
    n.domain = 'NW',
    n.aliases = ['LwM2M'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: 'app'})
SET     n.name = 'App',
    n.name_kr = 'App',
    n.domain = 'NW',
    n.aliases = ['App'];

MERGE (n:Concept {id: 'server'})
SET     n.name = 'Server',
    n.name_kr = 'Server',
    n.domain = 'NW',
    n.aliases = ['Server'];

MERGE (n:Concept {id: 'client'})
SET     n.name = 'Client',
    n.name_kr = 'Client',
    n.domain = 'NW',
    n.aliases = ['Client'];

MERGE (n:Concept {id: 'i/f(bootstraping'})
SET     n.name = 'I/F(BootStraping',
    n.name_kr = 'I/F(BootStraping',
    n.domain = 'NW';

MERGE (n:Concept {id: 'registration'})
SET     n.name = 'Registration',
    n.name_kr = 'Registration',
    n.domain = 'NW',
    n.aliases = ['Registration'];

MERGE (n:Concept {id: 'report)'})
SET     n.name = 'Report)',
    n.name_kr = 'Report)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'coap_protocol'})
SET     n.name = 'Coap Protocol',
    n.name_kr = 'Coap Protocol',
    n.domain = 'NW',
    n.aliases = ['Coap Protocol'];

MERGE (n:Concept {id: 'dtls_security'})
SET     n.name = 'DTLS Security',
    n.name_kr = 'DTLS Security',
    n.domain = 'NW',
    n.aliases = ['DTLS Security'];

MERGE (n:Technology {id: 'udp/sms_bearer)'})
SET     n.name = 'UDP/SMS Bearer)',
    n.name_kr = 'UDP/SMS Bearer)',
    n.domain = 'NW';

MERGE (n:Concept {id: 'bootstrap'})
SET     n.name = 'Bootstrap',
    n.name_kr = '부트스트랩',
    n.domain = 'NW',
    n.definition = '클라이언트가 서버 정보와 보안키 등을 얻는 과정에서 사용',
    n.aliases = ['Bootstrap', '부트스트랩'];

MERGE (n:Concept {id: '인터페이스'})
SET     n.name = '인터페이스',
    n.name_kr = '인터페이스',
    n.domain = 'NW',
    n.definition = '클라이언트는 시작 시 스마트카드 또는 내장 메모리, 부트스트랩 서버를 통하여 LwM2M 서버 정보 및 보안키 정보를 얻음';

MERGE (n:Concept {id: 'information_reporting'})
SET     n.name = 'Information Reporting',
    n.name_kr = '정보 보고 인터페이스',
    n.domain = 'NW',
    n.definition = '클라이언트의 객체 인스턴스 또는 리소스로부터 새 데이터를 받기를 원할 때 사용(비동기 통지 형태로 동작) > Observe 동작: 서버는 클라이언트의 어떤 리소스 변화를 관찰 > Cancel Observation 동작: 관찰 종료. > Notify 동작: 클라이언트가 Observe 중인 서버에게 새 데이터를 보내는데 사용',
    n.aliases = ['Information Reporting', '정보 보고 인터페이스'];

// --- 관계 ---

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'app'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'client'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'i/f(bootstraping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'registration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'report)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'coap_protocol'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'dtls_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Technology {id: 'udp/sms_bearer)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'bootstrap'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: '인터페이스'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Concept {id: 'information_reporting'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Document {id: 'NW_201'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'app'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'server'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'client'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'i/f(bootstraping'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'registration'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'report)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'coap_protocol'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dtls_security'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'udp/sms_bearer)'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bootstrap'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터페이스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'information_reporting'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_202: WoT(Web of Things)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_202'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'web_of_things'})
SET     n.name = 'Web of Things',
    n.name_kr = 'WoT',
    n.domain = 'NW',
    n.aliases = ['Web of Things', 'WoT'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wot'})
SET     n.name = 'WoT',
    n.name_kr = 'WoT',
    n.domain = 'NW',
    n.aliases = ['WoT'];

MERGE (n:Concept {id: '서브제접조'})
SET     n.name = '서브제접조',
    n.name_kr = '서브제접조',
    n.domain = 'NW';

MERGE (n:Concept {id: '변관i'})
SET     n.name = '변관I',
    n.name_kr = '변관I',
    n.domain = 'NW';

MERGE (n:Concept {id: '서비스_계층'})
SET     n.name = '서비스 계층',
    n.name_kr = '서비스 계층',
    n.domain = 'NW',
    n.definition = '서비스 프로파일 관리 FE';

MERGE (n:Concept {id: '서비스_제어_fe'})
SET     n.name = '서비스 제어 FE',
    n.name_kr = '서비스 제어 FE',
    n.domain = 'NW',
    n.definition = '실질적 서비스 실행, 검색, 등록 및 삭제 기능, 응용에서 제일먼저 접근위치';

MERGE (n:Concept {id: '서비스_조합_fe'})
SET     n.name = '서비스 조합 FE',
    n.name_kr = '서비스 조합 FE',
    n.domain = 'NW',
    n.definition = '두개이상의 기존 서비스를 이용하여 새로운 서비스를 생성하는 기능';

MERGE (n:Concept {id: '서비스_접근제어fe'})
SET     n.name = '서비스 접근제어FE',
    n.name_kr = '서비스 접근제어FE',
    n.domain = 'NW',
    n.definition = 'WoT에 접속하거나 이용자등 접근 허용관련 정보';

MERGE (n:Concept {id: '변환_계층'})
SET     n.name = '변환 계층',
    n.name_kr = '변환 계층',
    n.domain = 'NW',
    n.definition = '자원 관리 FE';

MERGE (n:Concept {id: '자원_id관리_fe'})
SET     n.name = '자원 ID관리 FE',
    n.name_kr = '자원 ID관리 FE',
    n.domain = 'NW',
    n.definition = '물리적 자원, Agent ID 저장, 자원과 Agent매핑 정보';

MERGE (n:Concept {id: 'agent'})
SET     n.name = 'Agent',
    n.name_kr = 'Agent',
    n.domain = 'NW',
    n.definition = 'WoT서비스와 웹접속 불가능한 장비사이 브릿지 역할(CoAP)',
    n.aliases = ['Agent'];

// --- 관계 ---

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wot'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '서브제접조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '변관i'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '서비스_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '서비스_제어_fe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '서비스_조합_fe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '서비스_접근제어fe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '변환_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: '자원_id관리_fe'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Concept {id: 'agent'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Document {id: 'NW_202'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_of_things'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서브제접조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변관i'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_제어_fe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_조합_fe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_접근제어fe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변환_계층'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_id관리_fe'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'agent'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_203: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_203'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_204: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_204'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_205: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_205'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_206: LTE-M
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_206'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'lte_m'})
SET     n.name = 'LTE-M',
    n.name_kr = 'LTE-M',
    n.domain = 'NW',
    n.aliases = ['LTE-M'];

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '소물인터넷'})
SET     n.name = '소물인터넷',
    n.name_kr = '소물인터넷',
    n.domain = 'NW';

MERGE (n:Concept {id: '저전력설계'})
SET     n.name = '저전력설계',
    n.name_kr = '저전력설계',
    n.domain = 'NW';

MERGE (n:Concept {id: '저가장비'})
SET     n.name = '저가장비',
    n.name_kr = '저가장비',
    n.domain = 'NW';

MERGE (n:Concept {id: '낮은비용'})
SET     n.name = '낮은비용',
    n.name_kr = '낮은비용',
    n.domain = 'NW';

MERGE (n:Concept {id: '안정적커버리지'})
SET     n.name = '안정적커버리지',
    n.name_kr = '안정적커버리지',
    n.domain = 'NW';

MERGE (n:Concept {id: 'power_saving'})
SET     n.name = 'Power Saving',
    n.name_kr = 'Power Saving',
    n.domain = 'NW',
    n.aliases = ['Power Saving'];

MERGE (n:Concept {id: 'release12'})
SET     n.name = 'Release12',
    n.name_kr = 'Release12',
    n.domain = 'NW',
    n.aliases = ['Release12'];

MERGE (n:Concept {id: 'release13'})
SET     n.name = 'Release13',
    n.name_kr = 'Release13',
    n.domain = 'NW',
    n.aliases = ['Release13'];

MERGE (n:Concept {id: 'cat_0'})
SET     n.name = 'Cat-0',
    n.name_kr = 'Cat-0',
    n.domain = 'NW',
    n.aliases = ['Cat-0'];

MERGE (n:Concept {id: 'cat_1'})
SET     n.name = 'Cat-1',
    n.name_kr = 'Cat-1',
    n.domain = 'NW',
    n.aliases = ['Cat-1'];

MERGE (n:Concept {id: 'cat_m'})
SET     n.name = 'Cat-M',
    n.name_kr = 'Cat-M',
    n.domain = 'NW',
    n.aliases = ['Cat-M'];

// --- 관계 ---

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '소물인터넷'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '저전력설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '저가장비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '낮은비용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: '안정적커버리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'power_saving'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'release12'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'release13'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'cat_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'cat_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'cat_m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Document {id: 'NW_206'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소물인터넷'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력설계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저가장비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '낮은비용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정적커버리지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'power_saving'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'release12'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'release13'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cat_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cat_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cat_m'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_207: NB-IoT
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_207'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'nb_iot'})
SET     n.name = 'NB-IoT',
    n.name_kr = 'NB-IoT',
    n.domain = 'NW',
    n.aliases = ['NB-IoT'];

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '인가서_모드'})
SET     n.name = '인가서 모드',
    n.name_kr = '인가서 모드',
    n.domain = 'NW';

MERGE (n:Concept {id: '오불월천'})
SET     n.name = '오불월천(오부이자월천)',
    n.name_kr = '오불월천(오부이자월천)',
    n.domain = 'NW';

MERGE (n:Technology {id: 'lte_m'})
SET     n.name = 'LTE-M',
    n.name_kr = 'Cat-1+PSM',
    n.domain = 'NW',
    n.aliases = ['LTE-M', 'Cat-1+PSM'];

MERGE (n:Concept {id: 'sigfox'})
SET     n.name = 'SigFox',
    n.name_kr = 'SigFox',
    n.domain = 'NW',
    n.aliases = ['SigFox'];

MERGE (n:Technology {id: 'lora'})
SET     n.name = 'LoRa',
    n.name_kr = 'LoRa',
    n.domain = 'NW',
    n.aliases = ['LoRa'];

// --- 관계 ---

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Concept {id: '사물지능통신/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Concept {id: '인가서_모드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Concept {id: '오불월천'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Technology {id: 'nb_iot'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Concept {id: 'sigfox'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Technology {id: 'lora'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Technology {id: 'lte_m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Concept {id: 'sigfox'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Technology {id: 'lora'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sigfox'})
MERGE (b:Technology {id: 'lora'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Concept {id: 'sigfox'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Technology {id: 'lora'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Document {id: 'NW_207'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'nb_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인가서_모드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오불월천'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lte_m'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sigfox'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'lora'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_208: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_208'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_209: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_209'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_210: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_210'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_211: IoST(Internet of Security Things)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_211'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'internet_of_security_things'})
SET     n.name = 'Internet of Security Things',
    n.name_kr = 'IoST',
    n.domain = 'NW',
    n.aliases = ['Internet of Security Things', 'IoST'];

MERGE (n:Concept {id: '사물지능인터넷/iot'})
SET     n.name = '사물지능인터넷/IoT',
    n.name_kr = '사물지능인터넷/IoT',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'internet_of_security_things'})
MERGE (b:Concept {id: '사물지능인터넷/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'internet_of_security_things'})
MERGE (b:Document {id: 'NW_211'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'internet_of_security_things'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능인터넷/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_212: e-IoT
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_212'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'e_iot'})
SET     n.name = 'e-IoT',
    n.name_kr = 'e-IoT',
    n.domain = 'NW',
    n.aliases = ['e-IoT'];

MERGE (n:Concept {id: '사물지능인터넷/iot'})
SET     n.name = '사물지능인터넷/IoT',
    n.name_kr = '사물지능인터넷/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '전력설비'})
SET     n.name = '전력설비',
    n.name_kr = '전력설비',
    n.domain = 'NW';

MERGE (n:Concept {id: '센서'})
SET     n.name = '센서',
    n.name_kr = '센서',
    n.domain = 'NW';

MERGE (n:Concept {id: '엑츄에이터'})
SET     n.name = '엑츄에이터',
    n.name_kr = '엑츄에이터',
    n.domain = 'NW';

MERGE (n:Concept {id: 'e_iot_gateway'})
SET     n.name = 'e-IoT Gateway',
    n.name_kr = 'e-IoT Gateway',
    n.domain = 'NW',
    n.aliases = ['e-IoT Gateway'];

MERGE (n:Concept {id: '전력사용분석_및_예측'})
SET     n.name = '전력사용분석 및 예측',
    n.name_kr = '전력사용분석 및 예측',
    n.domain = 'NW';

MERGE (n:Concept {id: '원격제어'})
SET     n.name = '원격제어',
    n.name_kr = '원격제어',
    n.domain = 'NW';

MERGE (n:Concept {id: '전력망_유지보수_절약'})
SET     n.name = '전력망 유지보수 절약',
    n.name_kr = '전력망 유지보수 절약',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '사물지능인터넷/iot'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '전력설비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '엑츄에이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: 'e_iot_gateway'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '전력사용분석_및_예측'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '원격제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Concept {id: '전력망_유지보수_절약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Document {id: 'NW_212'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'e_iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능인터넷/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력설비'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엑츄에이터'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_iot_gateway'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력사용분석_및_예측'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격제어'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력망_유지보수_절약'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_213.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_213.1'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_213.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_213.2'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_214: ISM Band
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_214'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ism_band'})
SET     n.name = 'ISM Band',
    n.name_kr = 'ISM Band',
    n.domain = 'NW',
    n.aliases = ['ISM Band'];

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

MERGE (n:Concept {id: '산'})
SET     n.name = '산(업)',
    n.name_kr = '산(업)',
    n.domain = 'NW';

MERGE (n:Concept {id: '과'})
SET     n.name = '과(학)',
    n.name_kr = '과(학)',
    n.domain = 'NW';

MERGE (n:Concept {id: '의분야'})
SET     n.name = '의(료)분야',
    n.name_kr = '의(료)분야',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Concept {id: '산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Concept {id: '과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Concept {id: '의분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Document {id: 'NW_214'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ism_band'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의분야'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_215: 블루투스 (Bluetooth 4.0) / BLE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_215'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: '블루투스_/_ble'})
SET     n.name = '블루투스 (Bluetooth 4.0) / BLE',
    n.name_kr = '블루투스 (Bluetooth 4.0) / BLE',
    n.domain = 'NW';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'NW';

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

MERGE (n:Concept {id: '1mbps'})
SET     n.name = '1Mbps',
    n.name_kr = '1Mbps',
    n.domain = 'NW';

MERGE (n:Concept {id: '음성_미지원'})
SET     n.name = '음성 미지원',
    n.name_kr = '음성 미지원',
    n.domain = 'NW';

MERGE (n:Concept {id: '스타버스'})
SET     n.name = '스타버스',
    n.name_kr = '스타버스',
    n.domain = 'NW';

MERGE (n:Concept {id: '128aes'})
SET     n.name = '128Aes',
    n.name_kr = '128Aes',
    n.domain = 'NW';

MERGE (n:Concept {id: 'apps'})
SET     n.name = 'Apps',
    n.name_kr = 'Apps',
    n.domain = 'NW',
    n.aliases = ['Apps'];

MERGE (n:Concept {id: 'host'})
SET     n.name = 'Host',
    n.name_kr = 'Host',
    n.domain = 'NW',
    n.aliases = ['Host'];

MERGE (n:Concept {id: 'controller'})
SET     n.name = 'Controller',
    n.name_kr = 'Controller',
    n.domain = 'NW',
    n.aliases = ['Controller'];

MERGE (n:Concept {id: 'l2cap'})
SET     n.name = 'L2CAP',
    n.name_kr = 'L2CAP',
    n.domain = 'NW',
    n.aliases = ['L2CAP'];

MERGE (n:Concept {id: 'hci'})
SET     n.name = 'HCI',
    n.name_kr = 'HCI',
    n.domain = 'NW',
    n.aliases = ['HCI'];

MERGE (n:Concept {id: 'lc&lm'})
SET     n.name = 'LC&LM',
    n.name_kr = 'LC&LM',
    n.domain = 'NW';

MERGE (n:Concept {id: 'll'})
SET     n.name = 'LL',
    n.name_kr = 'LL',
    n.domain = 'NW',
    n.aliases = ['LL'];

MERGE (n:Concept {id: 'direct_test'})
SET     n.name = 'Direct Test',
    n.name_kr = 'Direct Test',
    n.domain = 'NW',
    n.aliases = ['Direct Test'];

MERGE (n:Technology {id: 'bluetooth_3_0'})
SET     n.name = 'Bluetooth 3.0',
    n.name_kr = 'Bluetooth 3.0',
    n.domain = 'NW',
    n.aliases = ['Bluetooth 3.0'];

MERGE (n:Concept {id: 'ble'})
SET     n.name = 'BLE',
    n.name_kr = '4.0',
    n.domain = 'NW',
    n.aliases = ['BLE', '4.0'];

MERGE (n:Concept {id: '4_1'})
SET     n.name = '4.1',
    n.name_kr = '4.1',
    n.domain = 'NW';

MERGE (n:Concept {id: '4_2'})
SET     n.name = '4.2',
    n.name_kr = '4.2',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '1mbps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '음성_미지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '스타버스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '128aes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'apps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'host'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'l2cap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'hci'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'lc&lm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'll'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'direct_test'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'bluetooth_3_0'})
MERGE (b:Concept {id: 'ble'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_3_0'})
MERGE (b:Concept {id: '4_1'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_3_0'})
MERGE (b:Concept {id: '4_2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Technology {id: 'bluetooth_3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ble'})
MERGE (b:Concept {id: '4_1'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ble'})
MERGE (b:Concept {id: '4_2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: 'ble'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4_1'})
MERGE (b:Concept {id: '4_2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '4_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Concept {id: '4_2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Document {id: 'NW_215'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: '블루투스_/_ble'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1mbps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성_미지원'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스타버스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '128aes'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'apps'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'host'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'controller'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'l2cap'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hci'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lc&lm'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'll'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'direct_test'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bluetooth_3_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ble'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_1'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_2'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_216: 블루투스(Bluetooth 5.0)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_216'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'bluetooth_5_0'})
SET     n.name = 'Bluetooth 5.0',
    n.name_kr = '블루투스',
    n.domain = 'NW',
    n.aliases = ['Bluetooth 5.0', '블루투스'];

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'NW',
    n.definition = '저전력';

MERGE (n:Concept {id: '전송_고효율'})
SET     n.name = '전송 고효율',
    n.name_kr = '전송 고효율',
    n.domain = 'NW',
    n.definition = '데이터 전송 효율이 기존 대비 8배 증가';

MERGE (n:Concept {id: 'multi_interface'})
SET     n.name = 'Multi -Interface',
    n.name_kr = 'Multi -Interface',
    n.domain = 'NW',
    n.definition = '장거리 전송',
    n.aliases = ['Multi -Interface'];

MERGE (n:Concept {id: '대용량_전송'})
SET     n.name = '대용량 전송',
    n.name_kr = '대용량 전송',
    n.domain = 'NW',
    n.definition = '대역폭을 조절하여, 짧은 거리에 대량의 데이터 전송 모드';

MERGE (n:Concept {id: '호환성'})
SET     n.name = '호환성',
    n.name_kr = '호환성',
    n.domain = 'NW',
    n.definition = '기술 하위버전 호환';

MERGE (n:Concept {id: '장비_하위버전_호환_불가'})
SET     n.name = '장비 하위버전 호환 불가',
    n.name_kr = '장비 하위버전 호환 불가',
    n.domain = 'NW',
    n.definition = '기존 장비 입장에서는 블루투스 5와 호환 불가';

MERGE (n:Concept {id: 'mesh_nodes'})
SET     n.name = 'Mesh Nodes',
    n.name_kr = 'Mesh Nodes',
    n.domain = 'NW',
    n.definition = 'Node',
    n.aliases = ['Mesh Nodes'];

MERGE (n:Concept {id: 'relay_node'})
SET     n.name = 'Relay Node',
    n.name_kr = 'Relay Node',
    n.domain = 'NW',
    n.definition = '서비스까지 도달하기 위한 중개노드. 지속적인 활동이 필요한 노드',
    n.aliases = ['Relay Node'];

MERGE (n:Concept {id: 'friend_node'})
SET     n.name = 'Friend Node',
    n.name_kr = 'Friend Node',
    n.domain = 'NW',
    n.definition = '저전력을 위한 설계로, 메인 전원으로 작동하며 지정된 메시지를 버퍼링 처리',
    n.aliases = ['Friend Node'];

MERGE (n:Concept {id: 'low_power_node'})
SET     n.name = 'Low Power Node',
    n.name_kr = 'Low Power Node',
    n.domain = 'NW',
    n.definition = '평소에는 저전력상태로 머물다가, 일정한 주기로 깨어나 Friend Node 버퍼링 된 메시지를 처리하고 다시 슬립모드 전환',
    n.aliases = ['Low Power Node'];

MERGE (n:Concept {id: 'proxy_node'})
SET     n.name = 'Proxy Node',
    n.name_kr = 'Proxy Node',
    n.domain = 'NW',
    n.definition = 'Mesh networking 이 적용되지 않은 기존 블루투스 환경과의 호환을 위한 프록시 노드',
    n.aliases = ['Proxy Node'];

MERGE (n:Concept {id: 'data'})
SET     n.name = 'Data',
    n.name_kr = 'Data',
    n.domain = 'NW',
    n.definition = 'Message',
    n.aliases = ['Data'];

MERGE (n:Threat {id: 'adaption_process'})
SET     n.name = 'Adaption Process',
    n.name_kr = 'Adaption Process',
    n.domain = 'NW',
    n.definition = 'Device',
    n.aliases = ['Adaption Process'];

MERGE (n:Concept {id: 'provisioning'})
SET     n.name = 'Provisioning',
    n.name_kr = 'Provisioning',
    n.domain = 'NW',
    n.definition = 'Device를 Node로 편입시키기 위한 절차. Ex) 새로 산 조명 기기를 기존 조명 스위치와 연결',
    n.aliases = ['Provisioning'];

MERGE (n:Concept {id: 'publish'})
SET     n.name = 'Publish',
    n.name_kr = 'Publish',
    n.domain = 'NW',
    n.definition = '전송 (발행)',
    n.aliases = ['Publish'];

MERGE (n:Concept {id: 'subscriber'})
SET     n.name = 'Subscriber',
    n.name_kr = 'Subscriber',
    n.domain = 'NW',
    n.definition = '구독 (처리)',
    n.aliases = ['Subscriber'];

// --- 관계 ---

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: '전송_고효율'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'multi_interface'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: '대용량_전송'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: '호환성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: '장비_하위버전_호환_불가'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'mesh_nodes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'relay_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'friend_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'low_power_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'proxy_node'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'data'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Threat {id: 'adaption_process'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'provisioning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'publish'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Concept {id: 'subscriber'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Document {id: 'NW_216'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'bluetooth_5_0'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송_고효율'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_interface'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대용량_전송'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호환성'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비_하위버전_호환_불가'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mesh_nodes'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'relay_node'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'friend_node'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'low_power_node'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy_node'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'adaption_process'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'provisioning'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'publish'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subscriber'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_217: UWB(Ultra Wide Band)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_217'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'ultra_wide_band'})
SET     n.name = 'Ultra Wide Band',
    n.name_kr = 'UWB',
    n.domain = 'NW',
    n.aliases = ['Ultra Wide Band', 'UWB'];

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

MERGE (n:Concept {id: 'uwb'})
SET     n.name = 'UWB',
    n.name_kr = 'UWB',
    n.domain = 'NW',
    n.aliases = ['UWB'];

MERGE (n:Concept {id: '3.1~10.6ghz'})
SET     n.name = '3.1~10.6GHz',
    n.name_kr = '3.1~10.6GHz',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ieee802_15_3a'})
SET     n.name = 'IEEE802.15.3a',
    n.name_kr = 'IEEE802.15.3a',
    n.domain = 'NW',
    n.aliases = ['IEEE802.15.3a'];

MERGE (n:Concept {id: '정밀_레인징_센싱_가능'})
SET     n.name = '정밀 레인징 센싱 가능',
    n.name_kr = '정밀 레인징 센싱 가능',
    n.domain = 'NW',
    n.definition = '높은 주파수 대역';

MERGE (n:Concept {id: '간섭회피'})
SET     n.name = '간섭회피',
    n.name_kr = '간섭회피',
    n.domain = 'NW',
    n.definition = '타 무선통신기술과 공존가능';

MERGE (n:Concept {id: '거리'})
SET     n.name = '거리',
    n.name_kr = '거리',
    n.domain = 'NW',
    n.definition = '최대 200m가지 전송가능';

MERGE (n:Concept {id: '전송속도'})
SET     n.name = '전송속도',
    n.name_kr = '전송속도',
    n.domain = 'NW',
    n.definition = '7Mbps~ 32Mbps';

MERGE (n:Concept {id: '주파수'})
SET     n.name = '주파수',
    n.name_kr = '주파수',
    n.domain = 'NW',
    n.definition = '주파수 밴드';

MERGE (n:Concept {id: '신호_처리'})
SET     n.name = '신호 처리',
    n.name_kr = '신호 처리',
    n.domain = 'NW',
    n.definition = 'OFDMA (Orthogonal Frequency Division Multiple Access)';

MERGE (n:Concept {id: '변조'})
SET     n.name = '변조',
    n.name_kr = '변조',
    n.domain = 'NW',
    n.definition = 'PPM(Pulse Position Modulation)';

MERGE (n:Concept {id: '위치_측위'})
SET     n.name = '위치 측위',
    n.name_kr = '위치 측위',
    n.domain = 'NW',
    n.definition = 'TWR (Two Way Ranging)';

MERGE (n:Concept {id: '삼성전자'})
SET     n.name = '삼성전자',
    n.name_kr = '삼성전자',
    n.domain = 'NW',
    n.definition = '갤럭시 기기 위치 확인 서비스(스마트싱스 파인드)';

MERGE (n:Concept {id: '애플'})
SET     n.name = '애플',
    n.name_kr = '애플',
    n.domain = 'NW',
    n.definition = '에어태그';

MERGE (n:Concept {id: 'nxp,_ntt도코모,_소니'})
SET     n.name = 'NXP, NTT도코모, 소니',
    n.name_kr = 'NXP, NTT도코모, 소니',
    n.domain = 'NW',
    n.definition = '비접촉 보안 출입 · 결제 서비스';

// --- 관계 ---

MERGE (a:Concept {id: 'uwb'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '3.1~10.6ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Standard {id: 'ieee802_15_3a'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '정밀_레인징_센싱_가능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '간섭회피'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '전송속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '주파수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '신호_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '위치_측위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '삼성전자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: '애플'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Concept {id: 'nxp,_ntt도코모,_소니'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Document {id: 'NW_217'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ultra_wide_band'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uwb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3.1~10.6ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee802_15_3a'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정밀_레인징_센싱_가능'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '간섭회피'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송속도'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신호_처리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변조'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치_측위'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삼성전자'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nxp,_ntt도코모,_소니'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_218: Zigbee(Low Data Rate)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_218'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'low_data_rate'})
SET     n.name = 'Low Data Rate',
    n.name_kr = 'Zigbee',
    n.domain = 'NW',
    n.aliases = ['Low Data Rate', 'Zigbee'];

MERGE (n:Concept {id: 'wpan'})
SET     n.name = 'WPAN',
    n.name_kr = 'WPAN',
    n.domain = 'NW',
    n.aliases = ['WPAN'];

MERGE (n:Concept {id: '65'})
SET     n.name = '65',
    n.name_kr = '65',
    n.domain = 'NW';

MERGE (n:Concept {id: '000_250k'})
SET     n.name = '000 250K',
    n.name_kr = '000 250K',
    n.domain = 'NW';

MERGE (n:Concept {id: '2_4ghz'})
SET     n.name = '2.4GHz',
    n.name_kr = '2.4GHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '868mhz'})
SET     n.name = '868MHz',
    n.name_kr = '868MHz',
    n.domain = 'NW';

MERGE (n:Concept {id: '명칭'})
SET     n.name = '명칭',
    n.name_kr = '명칭',
    n.domain = 'NW',
    n.definition = '다양한 장비들을 서로서로 연결할 수 있고 그 장비들간 데이터를 주고받는 모습이 벌이 지그재그로 날라 다니는 모습과 흡사하다 하여 붙여진 이름';

MERGE (n:Standard {id: '표준'})
SET     n.name = '표준',
    n.name_kr = '표준',
    n.domain = 'NW',
    n.definition = 'IEEE 802.15.4';

MERGE (n:Concept {id: '데이터_전송률'})
SET     n.name = '데이터 전송률',
    n.name_kr = '데이터 전송률',
    n.domain = 'NW',
    n.definition = '250Kbps, 20kbps, 40kbps';

MERGE (n:Concept {id: '연결_가능_node'})
SET     n.name = '연결 가능 node',
    n.name_kr = '연결 가능 node',
    n.domain = 'NW',
    n.definition = '최대 65,000개 slave 가능(Mesh Network 구성)';

MERGE (n:Concept {id: '적용_거리'})
SET     n.name = '적용 거리',
    n.name_kr = '적용 거리',
    n.domain = 'NW',
    n.definition = '10 ~ 75m';

MERGE (n:Concept {id: '주파수_대역'})
SET     n.name = '주파수 대역',
    n.name_kr = '주파수 대역',
    n.domain = 'NW',
    n.definition = '물리층: 868/915MHz, 2.4GHz(대한민국) - 16개의 채널(2.4GHz), 10개의 채널(915MHz), 1개의 채널(868MHz)';

MERGE (n:Concept {id: '활동_온도_범위'})
SET     n.name = '활동 온도 범위',
    n.name_kr = '활동 온도 범위',
    n.domain = 'NW',
    n.definition = '40 ~ +90도';

MERGE (n:Concept {id: '설계_기술'})
SET     n.name = '설계 기술',
    n.name_kr = '설계 기술',
    n.domain = 'NW',
    n.definition = '저전력 설계(수개월~수년사용), 최적화 변복조 설계';

MERGE (n:Concept {id: '저속/저전력'})
SET     n.name = '저속/저전력',
    n.name_kr = '저속/저전력',
    n.domain = 'NW',
    n.definition = '센서 I/O 등에 특화된 저속/저전력 무선통신';

MERGE (n:Concept {id: '가격'})
SET     n.name = '가격',
    n.name_kr = '가격',
    n.domain = 'NW',
    n.definition = '경쟁력 있는 가격';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'NW',
    n.definition = '단순함과 유연성 추구';

MERGE (n:Concept {id: '다양한_네트워크_토폴로지_사용'})
SET     n.name = '다양한 네트워크 토폴로지 사용',
    n.name_kr = '다양한 네트워크 토폴로지 사용',
    n.domain = 'NW',
    n.definition = 'Star형: 하나의 PAN coordinator를 중심으로 여러 기기가 토폴로지를 형성, 주로 홈 오토메이션, 컴퓨터 주변기기 연결, 게임기기에서 사용 - Mesh형: 모든 디바이스간의 통신이 가능한 구조로써 자체 네트워크 구성 및 경로회복이 가능, 산업 컨트롤러와 무선 센서 네트워크에서 사용 - Cluster-tree형: 모든 FFD(Full Functi';

// --- 관계 ---

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: 'wpan'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '65'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '000_250k'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '2_4ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '868mhz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '명칭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Standard {id: '표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '데이터_전송률'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '연결_가능_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '적용_거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '주파수_대역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '활동_온도_범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '설계_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '저속/저전력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '가격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Concept {id: '다양한_네트워크_토폴로지_사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Document {id: 'NW_218'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'low_data_rate'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpan'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '65'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '000_250k'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2_4ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '868mhz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '명칭'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '표준'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_전송률'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결_가능_node'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용_거리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주파수_대역'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동_온도_범위'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계_기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저속/저전력'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_네트워크_토폴로지_사용'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_219: Z-Wave
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_219'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'z_wave'})
SET     n.name = 'Z-Wave',
    n.name_kr = 'Z-Wave',
    n.domain = 'NW',
    n.aliases = ['Z-Wave'];

MERGE (n:Concept {id: '스마트홈'})
SET     n.name = '스마트홈',
    n.name_kr = '스마트홈',
    n.domain = 'NW';

MERGE (n:Concept {id: 'ism'})
SET     n.name = 'ISM',
    n.name_kr = 'ISM',
    n.domain = 'NW',
    n.aliases = ['ISM'];

MERGE (n:Concept {id: '토플로지'})
SET     n.name = '토플로지',
    n.name_kr = '토플로지',
    n.domain = 'NW';

MERGE (n:Concept {id: '100m'})
SET     n.name = '100m',
    n.name_kr = '100m',
    n.domain = 'NW';

MERGE (n:Concept {id: 'base_kit'})
SET     n.name = 'Base Kit',
    n.name_kr = 'Base Kit',
    n.domain = 'NW',
    n.definition = '4 x ZDP03A',
    n.aliases = ['Base Kit'];

MERGE (n:Concept {id: '4_x_flexi_antenna'})
SET     n.name = '4 x Flexi antenna',
    n.name_kr = '4 x Flexi antenna',
    n.domain = 'NW',
    n.definition = 'Antennas for ZDB5xxx/ZM3120';

MERGE (n:Concept {id: '4_x_usb_cable'})
SET     n.name = '4 x uSB cable',
    n.name_kr = '4 x uSB cable',
    n.domain = 'NW',
    n.definition = 'To connect to ZDP03A';

MERGE (n:Concept {id: '1_x_battery_pack'})
SET     n.name = '1 x Battery pack',
    n.name_kr = '1 x Battery pack',
    n.domain = 'NW',
    n.definition = 'To make ZDP03A portable';

MERGE (n:Concept {id: '4_x_power_supply_unit'})
SET     n.name = '4 x Power supply unit',
    n.name_kr = '4 x Power supply unit',
    n.domain = 'NW',
    n.definition = 'For ZDP03A';

MERGE (n:Concept {id: '1_x_z_wave_guide'})
SET     n.name = '1 x Z-Wave guide',
    n.name_kr = '1 x Z-Wave guide',
    n.domain = 'NW',
    n.definition = 'Helps take the first steps into Z-Wave';

MERGE (n:Concept {id: 'regional_kit'})
SET     n.name = 'Regional Kit',
    n.name_kr = '특정 지역에 맞는 RF 모듈',
    n.domain = 'NW',
    n.definition = '2 x ZDB5202',
    n.aliases = ['Regional Kit', '특정 지역에 맞는 RF 모듈'];

MERGE (n:Concept {id: '1_x_zipr_ce'})
SET     n.name = '1 x ZIPR-CE',
    n.name_kr = '1 x ZIPR-CE',
    n.domain = 'NW',
    n.definition = 'Z/IP Gateway reference design';

MERGE (n:Concept {id: '1_x_uzb'})
SET     n.name = '1 x UZB',
    n.name_kr = '1 x UZB',
    n.domain = 'NW',
    n.definition = 'USB stick static controller';

MERGE (n:Concept {id: '1_x_uzb_s'})
SET     n.name = '1 x UZB-S',
    n.name_kr = '1 x UZB-S',
    n.domain = 'NW',
    n.definition = 'USB stick network-sniffer';

MERGE (n:Concept {id: '4_x_zm5202'})
SET     n.name = '4 x ZM5202',
    n.name_kr = '4 x ZM5202',
    n.domain = 'NW',
    n.definition = 'Samples';

MERGE (n:Concept {id: 'sdk'})
SET     n.name = 'SDK',
    n.name_kr = 'SDK',
    n.domain = 'NW',
    n.definition = 'Z-Wave protocol stack',
    n.aliases = ['SDK'];

MERGE (n:Concept {id: 'development_tools'})
SET     n.name = 'Development tools',
    n.name_kr = 'Development tools',
    n.domain = 'NW',
    n.definition = 'Z-Wave Programmer',
    n.aliases = ['Development tools'];

// --- 관계 ---

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '스마트홈'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: 'ism'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '토플로지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '100m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: 'base_kit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '4_x_flexi_antenna'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '4_x_usb_cable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '1_x_battery_pack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '4_x_power_supply_unit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '1_x_z_wave_guide'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: 'regional_kit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '1_x_zipr_ce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '1_x_uzb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '1_x_uzb_s'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: '4_x_zm5202'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: 'sdk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Concept {id: 'development_tools'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Document {id: 'NW_219'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'z_wave'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트홈'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ism'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토플로지'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '100m'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'base_kit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_x_flexi_antenna'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_x_usb_cable'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_x_battery_pack'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_x_power_supply_unit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_x_z_wave_guide'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'regional_kit'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_x_zipr_ce'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_x_uzb'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1_x_uzb_s'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4_x_zm5202'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdk'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'development_tools'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_220: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_220'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_221: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_221'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_222: 802.15.3e
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_222'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '802_15_3e'})
SET     n.name = '802.15.3e',
    n.name_kr = '802.15.3e',
    n.domain = 'NW';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'NW';

MERGE (n:Concept {id: 'burst_transfer'})
SET     n.name = 'Burst Transfer',
    n.name_kr = 'Burst Transfer',
    n.domain = 'NW',
    n.aliases = ['Burst Transfer'];

MERGE (n:Concept {id: 'cycle_stealing'})
SET     n.name = 'Cycle Stealing',
    n.name_kr = 'Cycle Stealing',
    n.domain = 'NW',
    n.aliases = ['Cycle Stealing'];

MERGE (n:Concept {id: 'interleaved_dma'})
SET     n.name = 'Interleaved DMA',
    n.name_kr = 'Interleaved DMA',
    n.domain = 'NW',
    n.aliases = ['Interleaved DMA'];

// --- 관계 ---

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Concept {id: 'burst_transfer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Concept {id: 'cycle_stealing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Concept {id: 'interleaved_dma'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Document {id: 'NW_222'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '802_15_3e'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'burst_transfer'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cycle_stealing'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interleaved_dma'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_223: 징(Zing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_223'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: '무선_통신기술'})
SET     n.name = '무선 통신기술(들)',
    n.name_kr = '무선 통신기술(들)',
    n.domain = 'NW';

MERGE (n:Concept {id: '비접촉식'})
SET     n.name = '비접촉식',
    n.name_kr = '비접촉식',
    n.domain = 'NW';

MERGE (n:Concept {id: '60ghz'})
SET     n.name = '60Ghz',
    n.name_kr = '60Ghz',
    n.domain = 'NW';

MERGE (n:Concept {id: '10cm이내'})
SET     n.name = '10Cm이내',
    n.name_kr = '10Cm이내',
    n.domain = 'NW';

MERGE (n:Concept {id: 'tag'})
SET     n.name = 'Tag',
    n.name_kr = 'Tag',
    n.domain = 'NW',
    n.aliases = ['Tag'];

MERGE (n:Concept {id: 'reader'})
SET     n.name = 'Reader',
    n.name_kr = 'Reader',
    n.domain = 'NW',
    n.aliases = ['Reader'];

MERGE (n:Standard {id: 'ieee_802_15_3e'})
SET     n.name = 'IEEE 802.15.3e',
    n.name_kr = 'IEEE 802.15.3e',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.15.3e'];

// --- 관계 ---

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: '무선_통신기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: '비접촉식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: '60ghz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: '10cm이내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: 'tag'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Concept {id: 'reader'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Standard {id: 'ieee_802_15_3e'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zing'})
MERGE (b:Document {id: 'NW_223'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '무선_통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비접촉식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '60ghz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '10cm이내'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tag'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reader'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_15_3e'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_224: Wi-Fi Direct
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_224'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Technology {id: 'wi_fi_direct'})
SET     n.name = 'Wi-Fi Direct',
    n.name_kr = 'Wi-Fi Direct',
    n.domain = 'NW',
    n.aliases = ['Wi-Fi Direct'];

MERGE (n:Concept {id: '무선_통신기술'})
SET     n.name = '무선 통신기술',
    n.name_kr = '무선 통신기술',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Technology {id: 'wi_fi_direct'})
MERGE (b:Concept {id: '무선_통신기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'wi_fi_direct'})
MERGE (b:Document {id: 'NW_224'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'wi_fi_direct'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선_통신기술'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_225: Wi-SUN(Wireless Smart Utility Network)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_225'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'wireless_smart_utility_network'})
SET     n.name = 'Wireless Smart Utility Network',
    n.name_kr = 'Wi-SUN',
    n.domain = 'NW',
    n.aliases = ['Wireless Smart Utility Network', 'Wi-SUN'];

MERGE (n:Concept {id: '사물지능통신/iot'})
SET     n.name = '사물지능통신/IoT',
    n.name_kr = '사물지능통신/IoT',
    n.domain = 'NW';

MERGE (n:Concept {id: '스마트_그리드'})
SET     n.name = '스마트 그리드',
    n.name_kr = '스마트 그리드',
    n.domain = 'NW';

MERGE (n:Standard {id: 'ieee_802_15_4g'})
SET     n.name = 'IEEE 802.15.4g',
    n.name_kr = 'IEEE 802.15.4g',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.15.4g'];

MERGE (n:Standard {id: 'ieee_802_15_4e'})
SET     n.name = 'IEEE 802.15.4e',
    n.name_kr = 'IEEE 802.15.4e',
    n.domain = 'NW',
    n.aliases = ['IEEE 802.15.4e'];

MERGE (n:Concept {id: '1km_전송거리'})
SET     n.name = '1km 전송거리',
    n.name_kr = '1km 전송거리',
    n.domain = 'NW';

MERGE (n:Concept {id: '멀티패스'})
SET     n.name = '멀티패스',
    n.name_kr = '멀티패스',
    n.domain = 'NW';

MERGE (n:Concept {id: '저전력'})
SET     n.name = '저전력',
    n.name_kr = '저전력',
    n.domain = 'NW';

MERGE (n:Concept {id: '저가격'})
SET     n.name = '저가격',
    n.name_kr = '저가격',
    n.domain = 'NW';

MERGE (n:Concept {id: '900mhz'})
SET     n.name = '900MHz',
    n.name_kr = '900MHz',
    n.domain = 'NW';

// --- 관계 ---

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '스마트_그리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Standard {id: 'ieee_802_15_4g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Standard {id: 'ieee_802_15_4e'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '1km_전송거리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '멀티패스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '저전력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '저가격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Concept {id: '900mhz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Document {id: 'NW_225'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wireless_smart_utility_network'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사물지능통신/iot'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_그리드'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_15_4g'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'ieee_802_15_4e'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1km_전송거리'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티패스'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저가격'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '900mhz'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_226: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_226'})
SET doc.domain = 'NW';

// ──────────────────────────────────────
// NW_227: 모바일 FSO(Free Space Optics) 통신
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_227'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'free_space_optics'})
SET     n.name = '모바일 FSO(Free Space Optics) 통신',
    n.name_kr = '모바일 FSO(Free Space Optics) 통신',
    n.domain = 'NW';

MERGE (n:Concept {id: '기본'})
SET     n.name = '기본',
    n.name_kr = '기본',
    n.domain = 'NW';

MERGE (n:Concept {id: '광학계'})
SET     n.name = '광학계',
    n.name_kr = '광학계',
    n.domain = 'NW';

MERGE (n:Concept {id: '광수신기'})
SET     n.name = '광수신기',
    n.name_kr = '광수신기',
    n.domain = 'NW';

MERGE (n:Concept {id: '통신채널'})
SET     n.name = '통신채널',
    n.name_kr = '통신채널',
    n.domain = 'NW';

MERGE (n:Concept {id: 'pat'})
SET     n.name = 'PAT',
    n.name_kr = 'PAT',
    n.domain = 'NW',
    n.aliases = ['PAT'];

// --- 관계 ---

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Concept {id: '광학계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Concept {id: '광수신기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Concept {id: '통신채널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Concept {id: 'pat'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Document {id: 'NW_227'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'free_space_optics'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기본'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광학계'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '광수신기'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신채널'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pat'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// NW_228.1: 스마트 홈(Smart Home)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'NW_228.1'})
SET doc.domain = 'NW';

// --- 노드 ---

MERGE (n:Concept {id: 'smart_home'})
SET     n.name = 'Smart Home',
    n.name_kr = '스마트 홈',
    n.domain = 'NW',
    n.aliases = ['Smart Home', '스마트 홈'];

MERGE (n:Concept {id: '스마트홈'})
SET     n.name = '스마트홈',
    n.name_kr = '스마트홈',
    n.domain = 'NW';

MERGE (n:Concept {id: 'smart_tag'})
SET     n.name = 'Smart Tag',
    n.name_kr = 'Smart Tag',
    n.domain = 'NW',
    n.aliases = ['Smart Tag'];

MERGE (n:Concept {id: 'plc'})
SET     n.name = 'PLC',
    n.name_kr = 'PLC',
    n.domain = 'NW',
    n.aliases = ['PLC'];

MERGE (n:Concept {id: 'smart_meter'})
SET     n.name = 'Smart Meter',
    n.name_kr = 'Smart Meter',
    n.domain = 'NW',
    n.aliases = ['Smart Meter'];

MERGE (n:Concept {id: '연계_방식'})
SET     n.name = '연계 방식',
    n.name_kr = '연계 방식',
    n.domain = 'NW',
    n.definition = '매터 브리지 -멀티 어드민';

MERGE (n:Concept {id: '통신_방식'})
SET     n.name = '통신 방식',
    n.name_kr = '통신 방식',
    n.domain = 'NW',
    n.definition = 'IP 기반 저전력 무선 프로토콜 -OTA(Over The Air) 방식 -저전력 블루투스';

MERGE (n:Concept {id: '스택_및_데이터_모델'})
SET     n.name = '스택 및 데이터 모델',
    n.name_kr = '스택 및 데이터 모델',
    n.domain = 'NW',
    n.definition = '응용계층';

MERGE (n:Concept {id: 'ocf'})
SET     n.name = 'OCF',
    n.name_kr = 'OCF',
    n.domain = 'NW',
    n.aliases = ['OCF'];

MERGE (n:Concept {id: 'matter'})
SET     n.name = 'Matter',
    n.name_kr = 'Matter',
    n.domain = 'NW',
    n.aliases = ['Matter'];

// --- 관계 ---

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: '스마트홈'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: 'smart_tag'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: 'plc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: 'smart_meter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: '연계_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: '통신_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: '스택_및_데이터_모델'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'ocf'})
MERGE (b:Concept {id: 'matter'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: 'ocf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Concept {id: 'matter'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Document {id: 'NW_228.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smart_home'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트홈'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_tag'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'plc'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_meter'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연계_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신_방식'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스택_및_데이터_모델'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ocf'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'matter'})
MERGE (b:Domain {id: 'NW'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// NW 도메인 자동 생성 완료
// 노드: 380개
// 관계: 782개
// ================================================================