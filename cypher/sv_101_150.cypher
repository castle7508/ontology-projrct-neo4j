// ================================================================
// SV 도메인 (SV_101 ~ SV_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_102: Intercloud
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_102'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'intercloud'})
SET     n.name = 'Intercloud',
    n.name_kr = 'Intercloud',
    n.domain = 'SV',
    n.aliases = ['Intercloud'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '대등'})
SET     n.name = '대등',
    n.name_kr = '대등',
    n.domain = 'SV';

MERGE (n:Concept {id: 'federation'})
SET     n.name = '연합',
    n.name_kr = '연합',
    n.domain = 'SV';

MERGE (n:Concept {id: '중계'})
SET     n.name = '중계',
    n.name_kr = '중계',
    n.domain = 'SV';

MERGE (n:Concept {id: '유사_클라우드(하이브리드'})
SET     n.name = '유사 클라우드(하이브리드',
    n.name_kr = '유사 클라우드(하이브리드',
    n.domain = 'SV';

MERGE (n:Concept {id: '멀티'})
SET     n.name = '멀티',
    n.name_kr = '멀티',
    n.domain = 'SV';

MERGE (n:Concept {id: '메타)'})
SET     n.name = '메타)',
    n.name_kr = '메타)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'peering'})
SET     n.name = 'peering',
    n.name_kr = '대등접속',
    n.domain = 'SV',
    n.definition = '두 클라우드 서비스 제공자 간의 직접 연계',
    n.aliases = ['peering', '대등접속'];

MERGE (n:Concept {id: 'intermediary'})
SET     n.name = 'intermediary',
    n.name_kr = '중개',
    n.domain = 'SV',
    n.definition = '직간접적 자원 연계/단일 서비스 제공자로 중개 서비스 제공',
    n.aliases = ['intermediary', '중개'];

MERGE (n:Concept {id: '인터_클라우드'})
SET     n.name = '인터 클라우드',
    n.name_kr = '인터 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '하이브리드_클라우드'})
SET     n.name = '하이브리드 클라우드',
    n.name_kr = '하이브리드 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '멀티_클라우드'})
SET     n.name = '멀티 클라우드',
    n.name_kr = '멀티 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '메타_클라우드'})
SET     n.name = '메타 클라우드',
    n.name_kr = '메타 클라우드',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '대등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: 'federation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '중계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '유사_클라우드(하이브리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '멀티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '메타)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: 'peering'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: 'intermediary'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '인터_클라우드'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '인터_클라우드'})
MERGE (b:Concept {id: '멀티_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '인터_클라우드'})
MERGE (b:Concept {id: '메타_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '인터_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Concept {id: '멀티_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Concept {id: '메타_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '멀티_클라우드'})
MERGE (b:Concept {id: '메타_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '멀티_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Concept {id: '메타_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Document {id: 'SV_102'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'intercloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대등'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'federation'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유사_클라우드(하이브리드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peering'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'intermediary'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_103: Metacloud
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_103'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'metacloud'})
SET     n.name = 'Metacloud',
    n.name_kr = 'Metacloud',
    n.domain = 'SV',
    n.aliases = ['Metacloud'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'lock-in_문제_완화'})
SET     n.name = 'Lock-in 문제 완화',
    n.name_kr = 'Lock-in 문제 완화',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_시스템_모델'})
SET     n.name = '클라우드 시스템 모델',
    n.name_kr = '클라우드 시스템 모델',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'metacloud'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'metacloud'})
MERGE (b:Concept {id: 'lock-in_문제_완화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metacloud'})
MERGE (b:Concept {id: '클라우드_시스템_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'metacloud'})
MERGE (b:Document {id: 'SV_103'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'metacloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lock-in_문제_완화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_시스템_모델'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_104: 멀티클라우드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_104'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'multi_cloud'})
SET     n.name = 'Multi Cloud',
    n.name_kr = '멀티클라우드',
    n.domain = 'SV',
    n.aliases = ['멀티클라우드'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '상이한_인증'})
SET     n.name = '상이한 인증',
    n.name_kr = '상이한 인증',
    n.domain = 'SV';

MERGE (n:Concept {id: '상이한_정책'})
SET     n.name = '상이한 정책',
    n.name_kr = '상이한 정책',
    n.domain = 'SV';

MERGE (n:Concept {id: '상이한_보안기술'})
SET     n.name = '상이한 보안기술',
    n.name_kr = '상이한 보안기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '복잡성_증대'})
SET     n.name = '복잡성 증대',
    n.name_kr = '복잡성 증대',
    n.domain = 'SV';

MERGE (n:Concept {id: 'is0_27018)'})
SET     n.name = 'IS0 27018)',
    n.name_kr = 'IS0 27018)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'casb'})
SET     n.name = 'CASB',
    n.name_kr = 'CASB',
    n.domain = 'SV',
    n.aliases = ['CASB'];

MERGE (n:Concept {id: 'sdr'})
SET     n.name = 'SDR',
    n.name_kr = 'SDR',
    n.domain = 'SV',
    n.aliases = ['SDR'];

MERGE (n:Concept {id: '멀티_클라우드_기술'})
SET     n.name = '멀티 클라우드 기술',
    n.name_kr = '멀티 클라우드 기술',
    n.domain = 'SV',
    n.definition = '다수의 클라우드 인프라(IaaS) 서비스를 연동하여 통합 운용하고, 구성된 멀티 클라우드 인프라상에서 클라우드 응용(PaaS, SaaS)의 유연한 배치, 운용 및 제공을 가능케 하는 기술';

MERGE (n:Concept {id: '사용자_측면'})
SET     n.name = '사용자 측면',
    n.name_kr = '사용자 측면',
    n.domain = 'SV',
    n.definition = '단일 클라우드의 한계';

MERGE (n:Concept {id: '벤더_종속성_탈피'})
SET     n.name = '벤더 종속성 탈피',
    n.name_kr = '벤더 종속성 탈피',
    n.domain = 'SV',
    n.definition = '특정 클라우드 벤더에 종속 되지 않고, 각 서비스의 특성을 고려한 최고의 조합으로 인프라 구성';

MERGE (n:Concept {id: '서비스_근접성'})
SET     n.name = '서비스 근접성',
    n.name_kr = '서비스 근접성',
    n.domain = 'SV',
    n.definition = '고객의 지역 근처에 있는 클라우드 제공 업체를 통해 워크로드를 호스팅 할수 있음 (해외 진출서비스)';

MERGE (n:Concept {id: 'shadow_it_대응'})
SET     n.name = 'Shadow IT 대응',
    n.name_kr = 'Shadow IT 대응',
    n.domain = 'SV',
    n.definition = 'Shadow IT는 실제 멀티클라우드에 기여하는 요소가 되고 있음 - IT팀에서 배포하는 HW, SW와 연계하여 멸티클라우드 구성';

MERGE (n:Concept {id: 'fail_over'})
SET     n.name = 'Fail over',
    n.name_kr = 'Fail over',
    n.domain = 'SV',
    n.definition = '클라우드가 예기치 않게 중단되었을 때 높은 확장성을 기반으로 데이터, 워크플로우, 시스템을 백업 할수 있음',
    n.aliases = ['Fail over'];

MERGE (n:Concept {id: '서비스_탄력성_확보'})
SET     n.name = '서비스 탄력성 확보',
    n.name_kr = '서비스 탄력성 확보',
    n.domain = 'SV',
    n.definition = '서비스의 니즈에 가장 적합한 컴퓨팅 자원을 선정, 활용함으로써 서비스 품질의 최적화 필요';

MERGE (n:Concept {id: '조직_특성의_다양성'})
SET     n.name = '조직 특성의 다양성',
    n.name_kr = '조직 특성의 다양성',
    n.domain = 'SV',
    n.definition = 'MSA, Polyglot, Cross Platform, NoSQL등 서비스, 조직 특성에 따라 멀티클라우드 인프라 환경 구성 필요';

MERGE (n:Concept {id: '공급자_측면'})
SET     n.name = '공급자 측면',
    n.name_kr = '공급자 측면',
    n.domain = 'SV',
    n.definition = '국내 클라우드 사업자의 위기';

MERGE (n:Concept {id: '그룹사_it자회사의_위기'})
SET     n.name = '그룹사 IT자회사의 위기',
    n.name_kr = '그룹사 IT자회사의 위기',
    n.domain = 'SV',
    n.definition = '그룹 계열사의 IT서비스가 외부의 클라우드 서비스로 전환시 그룹사 IT자회사의 역할이 모호 해짐';

MERGE (n:Concept {id: '통신&idc사업자의_새로운_기회'})
SET     n.name = '통신&IDC사업자의 새로운 기회',
    n.name_kr = '통신&IDC사업자의 새로운 기회',
    n.domain = 'SV',
    n.definition = '기존 통신 & IDC사업자는 글로벌 클라우드 사업자와 제휴를 통해 클라우드 허브로서 역할 기대';

MERGE (n:Concept {id: 'cloud_msp의_새로운_기회'})
SET     n.name = 'Cloud MSP의 새로운 기회',
    n.name_kr = 'Cloud MSP의 새로운 기회',
    n.domain = 'SV',
    n.definition = '클라우드 매니지드 서비스 공급자(MSP)는 복수의 클라우드 서비스를 판매하므로 매니지드 서비스의 새로운 기회';

MERGE (n:Concept {id: 'iaas'})
SET     n.name = 'IaaS',
    n.name_kr = '클라우드 인프라 서비스',
    n.domain = 'SV',
    n.definition = '글로벌, 국내 서비스간 동일한 수준으로 사용자에게 노출됨에 따라 서비스 인지도 개선 및 국내 사업자의 인프라 활용률 향상의 기회 - 국내 수요자는 위치, 가격, 고객대응 등의 측면에서 유리',
    n.aliases = ['IaaS', '클라우드 인프라 서비스'];

MERGE (n:Concept {id: '클라우드_서비스_중개_사업자'})
SET     n.name = '클라우드 서비스 중개 사업자',
    n.name_kr = '클라우드 서비스 중개 사업자',
    n.domain = 'SV',
    n.definition = '국내외 다양한 클라우드를 기반으로 CSB(Cloud Service Brokerage) 등과 같은 서비스 제공 - 대규모의 구축 비용 없이도 인프라 서비스의 제공';

MERGE (n:Concept {id: '클라우드_기반_응용_사업자'})
SET     n.name = '클라우드 기반 응용 사업자',
    n.name_kr = '클라우드 기반 응용 사업자',
    n.domain = 'SV',
    n.definition = 'Lock-In 탈피 및 애플리케이션을 글로벌 스케일로 확장 - 응용 서비스에 대한 집중도 향상';

MERGE (n:Concept {id: '응용_도메인을_위한_컴퓨팅_인프라_사업자'})
SET     n.name = '응용 도메인을 위한 컴퓨팅 인프라 사업자',
    n.name_kr = '응용 도메인을 위한 컴퓨팅 인프라 사업자',
    n.domain = 'SV',
    n.definition = '인프라 및 응용의 유연한 배치, 운용 및 관리 기술을 기반으로 다양한 산업 분야의 대규모 응용을 위한 컴퓨팅 인프라로 적용 - 국내 인프라 및 서비스 사업자와 연계하여 새로운 생태계를 구성';

MERGE (n:Concept {id: '컨테이너_기술_활용_확대'})
SET     n.name = '컨테이너 기술 활용 확대',
    n.name_kr = '컨테이너 기술 활용 확대',
    n.domain = 'SV',
    n.definition = '적은 비용과 시간으로 보안이나 시스템에 미치는 영향을 최소화하면서 서로 다른 환경으로 이동, 안정적 실행 확보, 기업 민첩성 획득 지원';

MERGE (n:Concept {id: '엣지_컴퓨팅의_부상'})
SET     n.name = '엣지 컴퓨팅의 부상',
    n.name_kr = '엣지 컴퓨팅의 부상',
    n.domain = 'SV',
    n.definition = '지역, 근거리 데이터 처리로 부하 감소, 원격지 데이터 전송 시 병목현상 영향을 최소화, 중앙집중형 클라우드 한계 극복 - 자율주행, IoT, 동영상 등의 분산형 컴퓨터로서 비용 절감 및 트래픽 확장';

MERGE (n:Concept {id: 'ai_기술과의_결합'})
SET     n.name = 'AI 기술과의 결합',
    n.name_kr = 'AI 기술과의 결합',
    n.domain = 'SV',
    n.definition = '온디바이스 AI로 인공지능 학습과 연산에 필요한 데이터 처리를 기기 내에서 수행, 비식별 처리된 데이터만 클라우드 서버로 전송 - 엣지 클라우드 기술의 확장 기술';

MERGE (n:Concept {id: '매니지드_클라우드_서비스'})
SET     n.name = '매니지드 클라우드 서비스',
    n.name_kr = '매니지드 클라우드 서비스',
    n.domain = 'SV',
    n.definition = '클라우드 도입 완료와 더불어 활용이 확대되면서 IT 역할이 시스템 유지 관리자에서 다양한 혁신 기술을 제공, 혁신을 지원하는 중개자로 전환';

MERGE (n:Concept {id: '하이브리드_클라우드'})
SET     n.name = '하이브리드 클라우드',
    n.name_kr = '하이브리드 클라우드',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '상이한_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '상이한_정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '상이한_보안기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '복잡성_증대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'is0_27018)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'casb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'sdr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '멀티_클라우드_기술'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '사용자_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '벤더_종속성_탈피'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '서비스_근접성'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'shadow_it_대응'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'fail_over'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '서비스_탄력성_확보'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '조직_특성의_다양성'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '공급자_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '그룹사_it자회사의_위기'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '통신&idc사업자의_새로운_기회'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'cloud_msp의_새로운_기회'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'iaas'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '클라우드_서비스_중개_사업자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '클라우드_기반_응용_사업자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '응용_도메인을_위한_컴퓨팅_인프라_사업자'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '컨테이너_기술_활용_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '엣지_컴퓨팅의_부상'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: 'ai_기술과의_결합'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '매니지드_클라우드_서비스'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Document {id: 'SV_104'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'multi_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상이한_인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상이한_정책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상이한_보안기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복잡성_증대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'is0_27018)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'casb'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티_클라우드_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벤더_종속성_탈피'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_근접성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shadow_it_대응'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fail_over'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_탄력성_확보'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직_특성의_다양성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공급자_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그룹사_it자회사의_위기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신&idc사업자의_새로운_기회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_msp의_새로운_기회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iaas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_서비스_중개_사업자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_기반_응용_사업자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용_도메인을_위한_컴퓨팅_인프라_사업자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_기술_활용_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엣지_컴퓨팅의_부상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai_기술과의_결합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매니지드_클라우드_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_105: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_105'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_106: 클라우드 서비스 브로커(Cloud Service Broker)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_106'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cloud_service_broker'})
SET     n.name = 'Cloud Service Broker',
    n.name_kr = '클라우드 서비스 브로커',
    n.domain = 'SV',
    n.aliases = ['Cloud Service Broker', '클라우드 서비스 브로커'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '중계'})
SET     n.name = '중계',
    n.name_kr = '중계',
    n.domain = 'SV';

MERGE (n:Concept {id: '결합'})
SET     n.name = '결합',
    n.name_kr = '결합',
    n.domain = 'SV';

MERGE (n:Concept {id: '차익거래'})
SET     n.name = '차익거래',
    n.name_kr = '차익거래',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Concept {id: '중계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Concept {id: '결합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Concept {id: '차익거래'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Document {id: 'SV_106'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cloud_service_broker'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차익거래'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_109: 오픈스택
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_109'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'openstack'})
SET     n.name = 'Openstack',
    n.name_kr = '오픈스택',
    n.domain = 'SV',
    n.aliases = ['오픈스택'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'cinder'})
SET     n.name = 'Cinder',
    n.name_kr = 'Cinder',
    n.domain = 'SV',
    n.aliases = ['Cinder'];

MERGE (n:Concept {id: 'magnum'})
SET     n.name = 'Magnum',
    n.name_kr = 'Magnum',
    n.domain = 'SV',
    n.aliases = ['Magnum'];

MERGE (n:Concept {id: 'neutron'})
SET     n.name = 'Neutron',
    n.name_kr = 'Neutron',
    n.domain = 'SV',
    n.aliases = ['Neutron'];

MERGE (n:Concept {id: 'heat'})
SET     n.name = 'Heat',
    n.name_kr = 'Heat',
    n.domain = 'SV',
    n.aliases = ['Heat'];

MERGE (n:Concept {id: 'trove'})
SET     n.name = 'Trove',
    n.name_kr = 'Trove',
    n.domain = 'SV',
    n.aliases = ['Trove'];

MERGE (n:Concept {id: 'nova'})
SET     n.name = 'Nova',
    n.name_kr = 'Nova',
    n.domain = 'SV',
    n.aliases = ['Nova'];

MERGE (n:Concept {id: 'swift'})
SET     n.name = 'Swift',
    n.name_kr = 'Swift',
    n.domain = 'SV',
    n.aliases = ['Swift'];

MERGE (n:Concept {id: 'glance'})
SET     n.name = 'Glance',
    n.name_kr = 'Glance',
    n.domain = 'SV',
    n.aliases = ['Glance'];

MERGE (n:Concept {id: 'ceilometer'})
SET     n.name = 'Ceilometer',
    n.name_kr = 'Ceilometer',
    n.domain = 'SV',
    n.aliases = ['Ceilometer'];

MERGE (n:Concept {id: 'keystone'})
SET     n.name = 'KeyStone',
    n.name_kr = 'KeyStone',
    n.domain = 'SV',
    n.aliases = ['KeyStone'];

// --- 관계 ---

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'cinder'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'magnum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'neutron'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'heat'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'trove'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'nova'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'swift'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'glance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'ceilometer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Concept {id: 'keystone'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Document {id: 'SV_109'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cinder'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'magnum'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heat'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trove'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nova'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swift'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'glance'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ceilometer'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keystone'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_110: 뉴트론(Neutron)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_110'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'neutron'})
SET     n.name = 'Neutron',
    n.name_kr = '뉴트론',
    n.domain = 'SV',
    n.aliases = ['Neutron', '뉴트론'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: '오픈스택'})
SET     n.name = '오픈스택',
    n.name_kr = '오픈스택',
    n.domain = 'SV';

MERGE (n:Concept {id: 'controller_node'})
SET     n.name = 'Controller Node',
    n.name_kr = 'Controller Node',
    n.domain = 'SV',
    n.aliases = ['Controller Node'];

MERGE (n:Concept {id: 'compute_node'})
SET     n.name = 'Compute Node',
    n.name_kr = 'Compute Node',
    n.domain = 'SV',
    n.aliases = ['Compute Node'];

MERGE (n:Concept {id: 'network_node'})
SET     n.name = 'Network Node',
    n.name_kr = 'Network Node',
    n.domain = 'SV',
    n.aliases = ['Network Node'];

MERGE (n:Concept {id: 'openvswitch'})
SET     n.name = 'OpenvSwitch',
    n.name_kr = 'OpenvSwitch',
    n.domain = 'SV',
    n.aliases = ['OpenvSwitch'];

// --- 관계 ---

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: '오픈스택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: 'controller_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: 'compute_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: 'network_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Concept {id: 'openvswitch'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Document {id: 'SV_110'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'neutron'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈스택'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'controller_node'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compute_node'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_node'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openvswitch'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_111: OpenStack Swift
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_111'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'openstack_swift'})
SET     n.name = 'OpenStack Swift',
    n.name_kr = 'OpenStack Swift',
    n.domain = 'SV',
    n.aliases = ['OpenStack Swift'];

MERGE (n:Concept {id: '디지털서비스/클라우드_os/_openstack'})
SET     n.name = '디지털서비스/클라우드 OS/ OpenStack',
    n.name_kr = '디지털서비스/클라우드 OS/ OpenStack',
    n.domain = 'SV';

MERGE (n:Concept {id: 'object_storage'})
SET     n.name = 'Object Storage',
    n.name_kr = 'Object Storage',
    n.domain = 'SV',
    n.aliases = ['Object Storage'];

MERGE (n:Concept {id: 'rest기반_api'})
SET     n.name = 'REST기반 API',
    n.name_kr = 'REST기반 API',
    n.domain = 'SV';

MERGE (n:Concept {id: 'swift_proxy'})
SET     n.name = 'Swift Proxy',
    n.name_kr = 'Swift Proxy',
    n.domain = 'SV',
    n.aliases = ['Swift Proxy'];

MERGE (n:Concept {id: 'account'})
SET     n.name = 'Account',
    n.name_kr = 'Account',
    n.domain = 'SV',
    n.aliases = ['Account'];

MERGE (n:Concept {id: 'container'})
SET     n.name = 'Container',
    n.name_kr = 'Container',
    n.domain = 'SV',
    n.aliases = ['Container'];

MERGE (n:Concept {id: 'object'})
SET     n.name = 'Object',
    n.name_kr = 'Object',
    n.domain = 'SV',
    n.aliases = ['Object'];

MERGE (n:Concept {id: '요청처리'})
SET     n.name = '요청처리',
    n.name_kr = '요청처리',
    n.domain = 'SV',
    n.definition = 'Swift-Proxy';

MERGE (n:Concept {id: 'ring'})
SET     n.name = 'Ring',
    n.name_kr = 'Ring',
    n.domain = 'SV',
    n.definition = '데이터의 논리위치와 물리위치간 매핑 제공 - Device 목록, Partition 목록, Partition Shift 값으로 구성',
    n.aliases = ['Ring'];

MERGE (n:Concept {id: 'swift_api'})
SET     n.name = 'Swift API',
    n.name_kr = 'Swift API',
    n.domain = 'SV',
    n.definition = 'REST API로서 Keystone Auth를 사용해 Token을 취득 - 이 Token을 통해 Swift-Proxy에 요청 전달',
    n.aliases = ['Swift API'];

MERGE (n:Concept {id: '데이터_관리'})
SET     n.name = '데이터 관리',
    n.name_kr = '데이터 관리',
    n.domain = 'SV',
    n.definition = 'Account';

// --- 관계 ---

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'object_storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'rest기반_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'swift_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'account'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'container'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'object'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: '요청처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'ring'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: 'swift_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Concept {id: '데이터_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Document {id: 'SV_111'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'openstack_swift'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스/클라우드_os/_openstack'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'object_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rest기반_api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swift_proxy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'account'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'container'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'object'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요청처리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ring'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'swift_api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_112: 클라우드 스토리지 가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_112'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드_스토리지_가상화'})
SET     n.name = '클라우드 스토리지 가상화',
    n.name_kr = '클라우드 스토리지 가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드컴퓨팅'})
SET     n.name = '클라우드컴퓨팅',
    n.name_kr = '클라우드컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'das'})
SET     n.name = 'DAS',
    n.name_kr = 'DAS',
    n.domain = 'SV',
    n.aliases = ['DAS'];

MERGE (n:Concept {id: 'nas'})
SET     n.name = 'NAS',
    n.name_kr = 'NAS',
    n.domain = 'SV',
    n.aliases = ['NAS'];

MERGE (n:Concept {id: 'san'})
SET     n.name = 'SAN',
    n.name_kr = 'SAN',
    n.domain = 'SV',
    n.aliases = ['SAN'];

MERGE (n:Concept {id: 'directed_attatched_storage'})
SET     n.name = 'Directed Attatched Storage',
    n.name_kr = 'DAS',
    n.domain = 'SV',
    n.aliases = ['Directed Attatched Storage', 'DAS'];

MERGE (n:Technology {id: 'nw_attached_storage'})
SET     n.name = 'NW Attached Storage',
    n.name_kr = 'NAS',
    n.domain = 'SV',
    n.definition = '서버가 LAN을 통해 Storage와 접속 - 서버와 File서버 사이는 TCP/IP 기반 LAN접속하고, 파일서버와 스토리지 사이는 SCSI 또는 Fiber Channel로 접속 - DAS의 PORT수를 극복했으나 장애시 SAN보다 복구능력 떨어짐 장점: 설치 용이, 이기종 환경에서 다양한 Client지원, 파일공유가능 단점: 스토리지 용량 확장의 제한,',
    n.aliases = ['NW Attached Storage', 'NAS'];

MERGE (n:Concept {id: 'storage_area_network'})
SET     n.name = 'Storage Area Network',
    n.name_kr = 'SAN',
    n.domain = 'SV',
    n.definition = '서버가 Fiber Channel Switch를 통하여 Storage를 연결, 서버와 스토리지간 Interface지원, N:M 구성통한 확장성 확보 장점: 구성의 유연성, 확장성, 관리비용 절감 단점: 이기종 서버 환경 지원하지 않음 활용 : 기업 대용량 DB서버(DW, EDW), BCP DRS',
    n.aliases = ['Storage Area Network', 'SAN'];

MERGE (n:Concept {id: '하둡'})
SET     n.name = '하둡',
    n.name_kr = '하둡',
    n.domain = 'SV',
    n.definition = '분산처리 오픈소스 플랫폼';

MERGE (n:Concept {id: '오픈스택'})
SET     n.name = '오픈스택',
    n.name_kr = '오픈스택',
    n.domain = 'SV',
    n.definition = 'Open Stack 통한 논리 스토리지 기술';

MERGE (n:Concept {id: '기타_상용제품'})
SET     n.name = '기타 상용제품',
    n.name_kr = '기타 상용제품',
    n.domain = 'SV',
    n.definition = 'Scale Out 통한 unified Storage 기술';

MERGE (n:Concept {id: '데이터_구성'})
SET     n.name = '데이터 구성',
    n.name_kr = '데이터 구성',
    n.domain = 'SV',
    n.definition = '파일 스토리지 : 대용량 파일 - 블록 스토리지 : 기업환경 연구';

MERGE (n:Concept {id: '스토리지_가상화'})
SET     n.name = '스토리지 가상화',
    n.name_kr = '스토리지 가상화',
    n.domain = 'SV',
    n.definition = '분산되어 있는 이 기종 스토리지의 통합,볼륨, I/O 관리 등';

MERGE (n:Concept {id: '데이터_복제'})
SET     n.name = '데이터 복제',
    n.name_kr = '데이터 복제',
    n.domain = 'SV',
    n.definition = '소스 스토리지에서 타깃 스토리지로 복제 * 동기, 비동기 방식 복제 방법';

MERGE (n:Concept {id: '데이터_중복제거'})
SET     n.name = '데이터 중복제거',
    n.name_kr = '데이터 중복제거',
    n.domain = 'SV',
    n.definition = '중복 인식된 파일을 삭제, 활용 대역폭 향상 - 압축기술 사용하여 중복 파일 제거';

MERGE (n:Concept {id: '스토리지_보안'})
SET     n.name = '스토리지 보안',
    n.name_kr = '스토리지 보안',
    n.domain = 'SV',
    n.definition = 'NW 연결통한 스토리지 보안 위협, - 개인정보 문제등';

MERGE (n:Concept {id: 'cas'})
SET     n.name = 'CAS',
    n.name_kr = 'CAS',
    n.domain = 'SV',
    n.definition = '사용자의 시청권한 제어시스템으로 시청 자격이 있는 가입자만 시청할 수 있도록 권한을 부여하거나 제한하는 시스템',
    n.aliases = ['CAS'];

MERGE (n:Concept {id: 'mps'})
SET     n.name = 'MPS',
    n.name_kr = 'MPS',
    n.domain = 'SV',
    n.definition = '종이문서 생성에서 문서의 유통 및 폐기까지 Document Life Cycle Management와 출력장비의 관리 및 문서보안까지 수행하는 통합 출력관리 서비스',
    n.aliases = ['MPS'];

MERGE (n:Concept {id: '하이브리드_클라우드'})
SET     n.name = '하이브리드 클라우드',
    n.name_kr = '하이브리드 클라우드',
    n.domain = 'SV',
    n.definition = '비즈니스에 중요하지 않은 정보와 처리는 Public 클라우드로 외부위탁을 하고, 중요한 서비스와 데이터는 직접 운영하는 클라우드 서비스 유형';

// --- 관계 ---

MERGE (a:Concept {id: '클라우드컴퓨팅'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '클라우드컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'das'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'san'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'directed_attatched_storage'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Technology {id: 'nw_attached_storage'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'storage_area_network'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '하둡'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '오픈스택'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '기타_상용제품'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '데이터_구성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '스토리지_가상화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '데이터_복제'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '데이터_중복제거'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '스토리지_보안'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'cas'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: 'mps'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Document {id: 'SV_112'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드_스토리지_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'das'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'san'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'directed_attatched_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'nw_attached_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage_area_network'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하둡'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈스택'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_상용제품'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_구성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_복제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_중복제거'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mps'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_113: XaaS(Everything)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_113'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'everything'})
SET     n.name = 'Everything',
    n.name_kr = 'XaaS',
    n.domain = 'SV',
    n.aliases = ['Everything', 'XaaS'];

MERGE (n:Concept {id: 'cloud_컴퓨팅'})
SET     n.name = 'Cloud 컴퓨팅',
    n.name_kr = 'Cloud 컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xaas'})
SET     n.name = 'XaaS',
    n.name_kr = 'XaaS',
    n.domain = 'SV',
    n.aliases = ['XaaS'];

MERGE (n:Concept {id: 'architecture_as_a_service'})
SET     n.name = 'Architecture as a Service',
    n.name_kr = 'AaaS',
    n.domain = 'SV',
    n.definition = 'Virtualization Technology 같은 기술들을 제공하는 서비스',
    n.aliases = ['Architecture as a Service', 'AaaS'];

MERGE (n:Concept {id: 'business_as_a_service'})
SET     n.name = 'Business as a Service',
    n.name_kr = 'BaaS',
    n.domain = 'SV',
    n.definition = '비즈니스(경영, 마케팅, 제조, 인사, 재무, 프로세스) 전반에 걸친 기능들을 서비스로 제공',
    n.aliases = ['Business as a Service', 'BaaS'];

MERGE (n:Concept {id: 'backend_as_a_service'})
SET     n.name = 'Backend as a Service',
    n.name_kr = 'BaaS',
    n.domain = 'SV',
    n.definition = '모바일 애플리케이션에 특화된 클라우드 서비스로 일반적으로 모바일 애플리케이션 백엔드로 자주 사용되는 데이터 저장, 푸시, 사용자 관리 및 접속제어 기능을 제공',
    n.aliases = ['Backend as a Service', 'BaaS'];

MERGE (n:Technology {id: 'function_as_a_service'})
SET     n.name = 'Function as a Service',
    n.name_kr = 'Fass',
    n.domain = 'SV',
    n.definition = '개발자에게 개발플랫폼을 제공하는 클라우드 컴퓨팅 서비스 대표사례) AWS Lambda',
    n.aliases = ['Function as a Service', 'Fass'];

MERGE (n:Concept {id: 'platform_as_a_service'})
SET     n.name = 'Platform as a Service',
    n.name_kr = 'Paas',
    n.domain = 'SV',
    n.definition = '개발, 테스트, 배포, 호스팅 플랫폼과 서비스 제공',
    n.aliases = ['Platform as a Service', 'Paas'];

MERGE (n:Concept {id: 'data_center_as_a_service'})
SET     n.name = 'Data-Center as a Service',
    n.name_kr = 'DaaS',
    n.domain = 'SV',
    n.definition = '전체 수명 주기에 걸쳐 고객 데이터를 관리 할 수 있는 포괄적인 기능제공',
    n.aliases = ['Data-Center as a Service', 'DaaS'];

MERGE (n:Concept {id: 'cloud_dr_as_a_service'})
SET     n.name = 'Cloud DR as a Service',
    n.name_kr = 'DraaS',
    n.domain = 'SV',
    n.definition = 'DRP (Disaster Recovery Plan)에 의해 선정 되는 다수의 DR모델 중 클라우드를 기반으로 하는 재해복구 방식.',
    n.aliases = ['Cloud DR as a Service', 'DraaS'];

MERGE (n:Concept {id: 'software_as_a_service'})
SET     n.name = 'Software as a Service',
    n.name_kr = 'SaaS',
    n.domain = 'SV',
    n.definition = '서버의 컴퓨터상에 소프트웨어를 설치해 두고 사용자는 웹 브라우저를 통해 사용한 만큼 비용을 지불하고 소프트웨어를 서비스로 이용하는 방식',
    n.aliases = ['Software as a Service', 'SaaS'];

MERGE (n:Concept {id: 'framework_as_a_service'})
SET     n.name = 'Framework as a Service',
    n.name_kr = 'FaaS',
    n.domain = 'SV',
    n.definition = '서비스 개발에 필요한 프레임워크들의 사용법, 실체 등 제공하여 서비스 구성에 도움 줌',
    n.aliases = ['Framework as a Service', 'FaaS'];

MERGE (n:Concept {id: 'hardware_as_a_service'})
SET     n.name = 'Hardware as a Service',
    n.name_kr = 'HaaS',
    n.domain = 'SV',
    n.definition = '컴퓨팅 파워(EC2), 저장 장치(S3), 데이터베이스 등 신생 업체들이 온디멘드(On Demand) 컴퓨팅 서비스를 런칭할 수 있도록 제공하는 것',
    n.aliases = ['Hardware as a Service', 'HaaS'];

MERGE (n:Concept {id: 'infrastructure_as_a_service'})
SET     n.name = 'Infrastructure as a Service',
    n.name_kr = 'IaaS',
    n.domain = 'SV',
    n.definition = '서버, 소프트웨어, 데이터 공간들을 온디멘드 방식으로 어플리케이션을 구동하여 서비스 제공',
    n.aliases = ['Infrastructure as a Service', 'IaaS'];

MERGE (n:Concept {id: 'identity_as_a_service'})
SET     n.name = 'Identity as a Service',
    n.name_kr = 'IDaaS',
    n.domain = 'SV',
    n.definition = 'Identity 관련 서비스 제공',
    n.aliases = ['Identity as a Service', 'IDaaS'];

MERGE (n:Concept {id: 'communications_as_a_service'})
SET     n.name = 'Communications as a Service',
    n.name_kr = 'CaaS',
    n.domain = 'SV',
    n.definition = 'IP 망을 기반으로 하는 음성 기반 전화로 기간 통신이 아닌 별정통신과 같은 부가 통신사업자가 제공하는 서비스',
    n.aliases = ['Communications as a Service', 'CaaS'];

MERGE (n:Concept {id: 'iaas'})
SET     n.name = 'IaaS',
    n.name_kr = 'IaaS',
    n.domain = 'SV',
    n.definition = '물리자원 가상화',
    n.aliases = ['IaaS'];

MERGE (n:Concept {id: '높은_확장성'})
SET     n.name = '높은 확장성',
    n.name_kr = '높은 확장성',
    n.domain = 'SV',
    n.definition = '추가 자원 필요시 서비스를 통해 리소스 확보 가능';

MERGE (n:Concept {id: '비용효율화'})
SET     n.name = '비용효율화',
    n.name_kr = '비용효율화',
    n.domain = 'SV',
    n.definition = '고정비가 들지 않아 비용적인 측면에서 효율화';

MERGE (n:Concept {id: 'paas'})
SET     n.name = 'PaaS',
    n.name_kr = 'PaaS',
    n.domain = 'SV',
    n.definition = '유지관리 용이성',
    n.aliases = ['PaaS'];

MERGE (n:Concept {id: '개발_및_배포_효율성'})
SET     n.name = '개발 및 배포 효율성',
    n.name_kr = '개발 및 배포 효율성',
    n.domain = 'SV',
    n.definition = '필요 플랫폼만 사용하여 개발 및 배포 프로세스의 빠른 확보';

MERGE (n:Concept {id: '다중_엑세스'})
SET     n.name = '다중 엑세스',
    n.name_kr = '다중 엑세스',
    n.domain = 'SV',
    n.definition = '수많은 사용자가 동일 개발 응용프로그램에 접근 가능';

MERGE (n:Concept {id: 'saas'})
SET     n.name = 'SaaS',
    n.name_kr = 'SaaS',
    n.domain = 'SV',
    n.definition = '물리자원 최소화',
    n.aliases = ['SaaS'];

MERGE (n:Concept {id: 'time_to_market'})
SET     n.name = 'Time to market',
    n.name_kr = 'Time to market',
    n.domain = 'SV',
    n.definition = '소프트웨어의 즉시 사용 가능',
    n.aliases = ['Time to market'];

MERGE (n:Concept {id: '유지보수_간소화'})
SET     n.name = '유지보수 간소화',
    n.name_kr = '유지보수 간소화',
    n.domain = 'SV',
    n.definition = '클라우드 제공업체를 통한 기술적 문제 지원';

MERGE (n:Concept {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'SV',
    n.definition = '가용률';

MERGE (n:Concept {id: '응답시간'})
SET     n.name = '응답시간',
    n.name_kr = '응답시간',
    n.domain = 'SV',
    n.definition = '이용자의 조회 또는 요구 시점부터 처리가 완료될 때까지 걸리는 시간';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'SV',
    n.definition = '이용자가 증가하거나, 서비스 기능 추가되어 확장이 필요한 경우, 서비스가 정상적으로 유지될 수 있는 시스템 구조';

MERGE (n:Concept {id: '신뢰성'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'SV',
    n.definition = '서비스 회복 시간';

MERGE (n:Concept {id: '백업_주기'})
SET     n.name = '백업 주기',
    n.name_kr = '백업 주기',
    n.domain = 'SV',
    n.definition = '정기적으로 수행하는 데이터 백업 주기';

MERGE (n:Concept {id: '고객_대응'})
SET     n.name = '고객 대응',
    n.name_kr = '고객 대응',
    n.domain = 'SV',
    n.definition = '고객 대응 체계';

MERGE (n:Concept {id: '고객_불만_처리체계'})
SET     n.name = '고객 불만 처리체계',
    n.name_kr = '고객 불만 처리체계',
    n.domain = 'SV',
    n.definition = '고객 불만을 신속하고 정확하게 수집 및 처리할 수 있는 능력';

// --- 관계 ---

MERGE (a:Concept {id: 'xaas'})
MERGE (b:Concept {id: 'cloud_컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'architecture_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'business_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'backend_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Technology {id: 'function_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'platform_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'data_center_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'cloud_dr_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'software_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'framework_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'hardware_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'infrastructure_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'identity_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'communications_as_a_service'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'iaas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '높은_확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '비용효율화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'paas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '개발_및_배포_효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '다중_엑세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'saas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'time_to_market'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '유지보수_간소화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '응답시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '백업_주기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '고객_대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: '고객_불만_처리체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Document {id: 'SV_113'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xaas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'architecture_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'business_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'function_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'platform_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_dr_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'software_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'framework_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hardware_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infrastructure_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'identity_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'communications_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iaas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '높은_확장성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용효율화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_및_배포_효율성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_엑세스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'saas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'time_to_market'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지보수_간소화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응답시간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백업_주기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_대응'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_불만_처리체계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_114.1: PaaS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_114.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'paas'})
SET     n.name = 'PaaS',
    n.name_kr = 'PaaS',
    n.domain = 'SV',
    n.aliases = ['PaaS'];

MERGE (n:Concept {id: 'cloud_컴퓨팅'})
SET     n.name = 'Cloud 컴퓨팅',
    n.name_kr = 'Cloud 컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'everything'})
SET     n.name = 'Everything',
    n.name_kr = 'XaaS',
    n.domain = 'SV',
    n.aliases = ['Everything', 'XaaS'];

MERGE (n:Concept {id: 'platform_as_a_service'})
SET     n.name = 'Platform as a Service',
    n.name_kr = 'PaaS',
    n.domain = 'SV',
    n.aliases = ['Platform as a Service', 'PaaS'];

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '과금'})
SET     n.name = '과금',
    n.name_kr = '과금',
    n.domain = 'SV';

MERGE (n:Concept {id: '개발플랫폼'})
SET     n.name = '개발플랫폼',
    n.name_kr = '개발플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: 'paas_ta'})
SET     n.name = 'PaaS-TA',
    n.name_kr = 'PaaS-TA',
    n.domain = 'SV',
    n.aliases = ['PaaS-TA'];

MERGE (n:Concept {id: '개발관점'})
SET     n.name = '개발관점',
    n.name_kr = '개발관점',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'everything'})
MERGE (b:Concept {id: 'cloud_컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'platform_as_a_service'})
MERGE (b:Concept {id: 'everything'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Concept {id: '과금'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Concept {id: '개발플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Concept {id: 'paas_ta'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Concept {id: '개발관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Document {id: 'SV_114.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'everything'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'platform_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과금'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_114.2: iPaaS (Integration Platform as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_114.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'integration_platform_as_a_service'})
SET     n.name = 'Integration Platform as a Service',
    n.name_kr = 'iPaaS',
    n.domain = 'SV',
    n.aliases = ['Integration Platform as a Service', 'iPaaS'];

MERGE (n:Concept {id: 'cloud_컴퓨팅'})
SET     n.name = 'Cloud 컴퓨팅',
    n.name_kr = 'Cloud 컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '애플리케이션_통합'})
SET     n.name = '애플리케이션 통합',
    n.name_kr = '애플리케이션 통합',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터_처리(이동'})
SET     n.name = '데이터 처리(이동',
    n.name_kr = '데이터 처리(이동',
    n.domain = 'SV';

MERGE (n:Concept {id: '변환)'})
SET     n.name = '변환)',
    n.name_kr = '변환)',
    n.domain = 'SV';

MERGE (n:Concept {id: '도입_시_고려사항_:_보안'})
SET     n.name = '도입 시 고려사항 : 보안',
    n.name_kr = '도입 시 고려사항 : 보안',
    n.domain = 'SV';

MERGE (n:Concept {id: '유연성_및_확장성'})
SET     n.name = '유연성 및 확장성',
    n.name_kr = '유연성 및 확장성',
    n.domain = 'SV';

MERGE (n:Concept {id: '상호운용성'})
SET     n.name = '상호운용성',
    n.name_kr = '상호운용성',
    n.domain = 'SV';

MERGE (n:Concept {id: '이식성'})
SET     n.name = '이식성',
    n.name_kr = '이식성',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방형_플랫폼'})
SET     n.name = '개방형 플랫폼',
    n.name_kr = '개방형 플랫폼',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '애플리케이션_통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '데이터_처리(이동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '변환)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '도입_시_고려사항_:_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '유연성_및_확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '상호운용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '이식성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Concept {id: '개방형_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Document {id: 'SV_114.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'integration_platform_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션_통합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_처리(이동'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변환)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도입_시_고려사항_:_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연성_및_확장성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이식성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형_플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_115: BaaS (Backend as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_115'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'backend_as_a_service'})
SET     n.name = 'Backend as a Service',
    n.name_kr = 'BaaS',
    n.domain = 'SV',
    n.aliases = ['Backend as a Service', 'BaaS'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '모바일앱'})
SET     n.name = '모바일앱',
    n.name_kr = '모바일앱',
    n.domain = 'SV';

MERGE (n:Concept {id: '위치기반_서비스'})
SET     n.name = '위치기반 서비스',
    n.name_kr = '위치기반 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'push'})
SET     n.name = 'Push',
    n.name_kr = 'Push',
    n.domain = 'SV',
    n.aliases = ['Push'];

// --- 관계 ---

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Concept {id: '모바일앱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Concept {id: '위치기반_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Concept {id: 'push'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Document {id: 'SV_115'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'backend_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일앱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치기반_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'push'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_116: DCaaS(Data center as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_116'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'data_center_as_a_service'})
SET     n.name = 'Data center as a Service',
    n.name_kr = 'DCaaS',
    n.domain = 'SV',
    n.aliases = ['Data center as a Service', 'DCaaS'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'managed_services'})
SET     n.name = 'Managed Services',
    n.name_kr = 'Managed Services',
    n.domain = 'SV',
    n.aliases = ['Managed Services'];

MERGE (n:Concept {id: 'automation'})
SET     n.name = 'Automation',
    n.name_kr = 'Automation',
    n.domain = 'SV',
    n.aliases = ['Automation'];

MERGE (n:Concept {id: 'build'})
SET     n.name = 'Build',
    n.name_kr = 'Build',
    n.domain = 'SV',
    n.aliases = ['Build'];

MERGE (n:Concept {id: 'depoly'})
SET     n.name = 'Depoly',
    n.name_kr = 'Depoly',
    n.domain = 'SV',
    n.aliases = ['Depoly'];

MERGE (n:Concept {id: 'integrate_&_migrate'})
SET     n.name = 'Integrate & Migrate',
    n.name_kr = 'Integrate & Migrate',
    n.domain = 'SV';

MERGE (n:Concept {id: 'data_center'})
SET     n.name = 'Data Center',
    n.name_kr = 'Cloud DC',
    n.domain = 'SV',
    n.definition = 'Managed Services',
    n.aliases = ['Data Center', 'Cloud DC'];

MERGE (n:Concept {id: 'build,_depoly,_integrate_&_migrate'})
SET     n.name = 'Build, Depoly, Integrate & Migrate',
    n.name_kr = 'Build, Depoly, Integrate & Migrate',
    n.domain = 'SV',
    n.definition = '데이터 센터 통합, 변경 지원 빌드, 배치 지원';

MERGE (n:Concept {id: 'advisory_&_assessment'})
SET     n.name = 'Advisory & Assessment',
    n.name_kr = 'Advisory & Assessment',
    n.domain = 'SV',
    n.definition = '인프라 평가, 비즈니스 ROI 분석, 고레벨 설계 지원 데이터 보호';

MERGE (n:Concept {id: 'internet_computing_center'})
SET     n.name = 'Internet Computing Center',
    n.name_kr = 'ICC',
    n.domain = 'SV',
    n.definition = 'KT의 유틸리티컴퓨팅 서비스로서 다운로드, 캐시, 스트리밍, 웹컴퓨팅 등을 제공하는 서비스 - 이미 3000여개 기업에 ICC를이용하여 서비스를 제공',
    n.aliases = ['Internet Computing Center', 'ICC'];

MERGE (n:Concept {id: 'ngdc'})
SET     n.name = 'NGDC',
    n.name_kr = '차세대데이터센터',
    n.domain = 'SV',
    n.definition = 'HP 및 IBM이 추진중인 DCaaS',
    n.aliases = ['NGDC', '차세대데이터센터'];

// --- 관계 ---

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'managed_services'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'automation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'build'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'depoly'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'integrate_&_migrate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'data_center'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'build,_depoly,_integrate_&_migrate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'advisory_&_assessment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'internet_computing_center'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Concept {id: 'ngdc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Document {id: 'SV_116'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_center_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'managed_services'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automation'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'build'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'depoly'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'integrate_&_migrate'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_center'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'build,_depoly,_integrate_&_migrate'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'advisory_&_assessment'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internet_computing_center'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ngdc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_117: DaaS(Desktop as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_117'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'desktop_as_a_service'})
SET     n.name = 'Desktop as a Service',
    n.name_kr = 'DaaS',
    n.domain = 'SV',
    n.aliases = ['Desktop as a Service', 'DaaS'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
SET     n.name = '데스크탑 가상화',
    n.name_kr = '데스크탑 가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vdi'})
SET     n.name = 'VDI',
    n.name_kr = 'VDI',
    n.domain = 'SV',
    n.aliases = ['VDI'];

MERGE (n:Concept {id: 'saas'})
SET     n.name = 'SaaS',
    n.name_kr = 'SaaS',
    n.domain = 'SV',
    n.aliases = ['SaaS'];

MERGE (n:Concept {id: 'paas'})
SET     n.name = 'PaaS',
    n.name_kr = 'PaaS',
    n.domain = 'SV',
    n.aliases = ['PaaS'];

MERGE (n:Concept {id: '데스크톱_클라이언트'})
SET     n.name = '데스크톱 클라이언트',
    n.name_kr = '데스크톱 클라이언트',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상_데스크톱_에이전트'})
SET     n.name = '가상 데스크톱 에이전트',
    n.name_kr = '가상 데스크톱 에이전트',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상_머신_풀'})
SET     n.name = '가상 머신 풀',
    n.name_kr = '가상 머신 풀',
    n.domain = 'SV';

MERGE (n:Concept {id: '데스크톱_연결_브로커'})
SET     n.name = '데스크톱 연결 브로커',
    n.name_kr = '데스크톱 연결 브로커',
    n.domain = 'SV';

MERGE (n:Concept {id: '접근_게이트웨이'})
SET     n.name = '접근 게이트웨이',
    n.name_kr = '접근 게이트웨이',
    n.domain = 'SV';

MERGE (n:Concept {id: '인증_서버'})
SET     n.name = '인증 서버',
    n.name_kr = '인증 서버',
    n.domain = 'SV';

MERGE (n:Concept {id: 'virtual_desktop_presenta_tion'})
SET     n.name = 'Virtual Desktop Presenta -tion',
    n.name_kr = 'Virtual Desktop Presenta -tion',
    n.domain = 'SV',
    n.definition = 'NW Protocol',
    n.aliases = ['Virtual Desktop Presenta -tion'];

MERGE (n:Concept {id: 'desktop_연결'})
SET     n.name = 'Desktop 연결',
    n.name_kr = 'Desktop 연결',
    n.domain = 'SV',
    n.definition = 'Delivery Protocol';

MERGE (n:Concept {id: 'desktop_생성'})
SET     n.name = 'Desktop 생성',
    n.name_kr = 'Desktop 생성',
    n.domain = 'SV',
    n.definition = 'VM';

MERGE (n:Concept {id: '자원_관리'})
SET     n.name = '자원 관리',
    n.name_kr = '자원 관리',
    n.domain = 'SV',
    n.definition = 'Provisioning';

// --- 관계 ---

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'vdi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'saas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'paas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '데스크톱_클라이언트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '가상_데스크톱_에이전트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '가상_머신_풀'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '데스크톱_연결_브로커'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '접근_게이트웨이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '인증_서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'virtual_desktop_presenta_tion'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'desktop_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: 'desktop_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Concept {id: '자원_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Document {id: 'SV_117'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'desktop_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'saas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데스크톱_클라이언트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_데스크톱_에이전트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_머신_풀'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데스크톱_연결_브로커'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_게이트웨이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증_서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_desktop_presenta_tion'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'desktop_연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'desktop_생성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_118: SECaaS(Securit as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_118'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'securit_as_a_service'})
SET     n.name = 'Securit as a Service',
    n.name_kr = 'SECaaS',
    n.domain = 'SV',
    n.aliases = ['Securit as a Service', 'SECaaS'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '클라우드기반'})
SET     n.name = '클라우드기반',
    n.name_kr = '클라우드기반',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안관리'})
SET     n.name = '보안관리',
    n.name_kr = '보안관리',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안솔루션'})
SET     n.name = '보안솔루션',
    n.name_kr = '보안솔루션',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터보안'})
SET     n.name = '데이터보안',
    n.name_kr = '데이터보안',
    n.domain = 'SV';

MERGE (n:Concept {id: '접근제어'})
SET     n.name = '접근제어',
    n.name_kr = '접근제어',
    n.domain = 'SV';

MERGE (n:Concept {id: 'secaas'})
SET     n.name = 'SECaaS',
    n.name_kr = 'SECaaS',
    n.domain = 'SV',
    n.aliases = ['SECaaS'];

MERGE (n:Concept {id: 'cloud_access_security_broker'})
SET     n.name = 'Cloud Access Security Broker',
    n.name_kr = 'CASB',
    n.domain = 'SV',
    n.aliases = ['Cloud Access Security Broker', 'CASB'];

// --- 관계 ---

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: '클라우드기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: '보안관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: '보안솔루션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: '데이터보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: '접근제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'secaas'})
MERGE (b:Concept {id: 'cloud_access_security_broker'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: 'secaas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Concept {id: 'cloud_access_security_broker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Document {id: 'SV_118'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'securit_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안솔루션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근제어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secaas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_access_security_broker'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.1: BaaS(Blockchain as a Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'blockchain_as_a_service'})
SET     n.name = 'Blockchain as a Service',
    n.name_kr = 'BaaS',
    n.domain = 'SV',
    n.aliases = ['Blockchain as a Service', 'BaaS'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'pow_pos'})
SET     n.name = 'PoW/PoS',
    n.name_kr = 'PoW/PoS',
    n.domain = 'SV',
    n.aliases = ['PoW/PoS'];

MERGE (n:Concept {id: 'smart_contract'})
SET     n.name = 'smart contract',
    n.name_kr = 'smart contract',
    n.domain = 'SV',
    n.aliases = ['smart contract'];

MERGE (n:Concept {id: '자기강제적_언어'})
SET     n.name = '자기강제적 언어',
    n.name_kr = '자기강제적 언어',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산합의'})
SET     n.name = '분산합의',
    n.name_kr = '분산합의',
    n.domain = 'SV';

MERGE (n:Concept {id: '장부_동기화'})
SET     n.name = '장부 동기화',
    n.name_kr = '장부 동기화',
    n.domain = 'SV';

MERGE (n:Concept {id: '탈중계성'})
SET     n.name = '탈중계성',
    n.name_kr = '탈중계성',
    n.domain = 'SV';

MERGE (n:Concept {id: '2020.09.01)'})
SET     n.name = '2020.09.01)',
    n.name_kr = '2020.09.01)',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: 'pow_pos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: 'smart_contract'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: '자기강제적_언어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: '분산합의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: '장부_동기화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: '탈중계성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Concept {id: '2020.09.01)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Document {id: 'SV_119.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'blockchain_as_a_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pow_pos'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_contract'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기강제적_언어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산합의'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장부_동기화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈중계성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2020.09.01)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_119.3: 파스타(PaaS-TA)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.3'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'paas_ta'})
SET     n.name = 'PaaS-TA',
    n.name_kr = '파스타',
    n.domain = 'SV',
    n.aliases = ['PaaS-TA', '파스타'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'pass_ta'})
SET     n.name = 'PasS-TA',
    n.name_kr = '파스타',
    n.domain = 'SV',
    n.aliases = ['PasS-TA', '파스타'];

MERGE (n:Concept {id: '과학기술정보통신부'})
SET     n.name = '과학기술정보통신부',
    n.name_kr = '과학기술정보통신부',
    n.domain = 'SV';

MERGE (n:Concept {id: 'nia가_지원하고'})
SET     n.name = 'NIA가 지원하고',
    n.name_kr = 'NIA가 지원하고',
    n.domain = 'SV';

MERGE (n:Concept {id: '개발/_서비스/_실행/_운영환경'})
SET     n.name = '개발/ 서비스/ 실행/ 운영환경',
    n.name_kr = '개발/ 서비스/ 실행/ 운영환경',
    n.domain = 'SV',
    n.definition = '풍부한 개발·운영 환경과 다양한 데브옵스 도구 지원';

MERGE (n:Concept {id: '편리한_사용자_ui_지원'})
SET     n.name = '편리한 사용자 UI 지원',
    n.name_kr = '편리한 사용자 UI 지원',
    n.domain = 'SV',
    n.definition = '템플릿 기반으로 편리한 개발을 지원하는 개발자 UI와 통합 운영ㆍ관리를 위한 운영자 UI 제공';

MERGE (n:Concept {id: '통합_모니터링'})
SET     n.name = '통합 모니터링',
    n.name_kr = '통합 모니터링',
    n.domain = 'SV',
    n.definition = '모든 기능들을 하나의 통합 모니터링 환경에서 관리할 수 있는 모니터링 환경을 제공 (IaaS, PaaS, SaaS, CaaS를 통합 대시보드를 통해 모니터링)';

MERGE (n:Concept {id: '마켓_플레이스'})
SET     n.name = '마켓 플레이스',
    n.name_kr = '마켓 플레이스',
    n.domain = 'SV',
    n.definition = '개발자들이 파스-타에서 개발한 서비스나 SW의 미터링 등을 지원할 수 있는 솔루션들을 마켓 플레이스를 통해 제공';

MERGE (n:Concept {id: '인프라_제어_및_관리_환경'})
SET     n.name = '인프라 제어 및 관리 환경',
    n.name_kr = '인프라 제어 및 관리 환경',
    n.domain = 'SV',
    n.definition = '전주기 라이프 사이클 관리';

MERGE (n:Concept {id: 'auto_scaling'})
SET     n.name = 'Auto Scaling',
    n.name_kr = '자동화된 서비스 확장',
    n.domain = 'SV',
    n.definition = '가상머신(VM)과 컨테이너를 자원의 사용량에 따라 자동 확장, 축소하는 기능과 장애발생 시 실시간 자동복구 등의 기능 제공',
    n.aliases = ['Auto Scaling', '자동화된 서비스 확장'];

MERGE (n:Concept {id: '11종의_다양한_iaas_지원'})
SET     n.name = '11종의 다양한 IaaS 지원',
    n.name_kr = '11종의 다양한 IaaS 지원',
    n.domain = 'SV',
    n.definition = '오픈스택(Openstack)의 최신버전 Stein까지 지원';

// --- 관계 ---

MERGE (a:Concept {id: 'pass_ta'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '과학기술정보통신부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: 'nia가_지원하고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '개발/_서비스/_실행/_운영환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '편리한_사용자_ui_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '통합_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '마켓_플레이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '인프라_제어_및_관리_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: 'auto_scaling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Concept {id: '11종의_다양한_iaas_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Document {id: 'SV_119.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'paas_ta'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pass_ta'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과학기술정보통신부'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nia가_지원하고'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발/_서비스/_실행/_운영환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편리한_사용자_ui_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마켓_플레이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라_제어_및_관리_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'auto_scaling'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '11종의_다양한_iaas_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.4: API Gateway
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.4'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'api_gateway'})
SET     n.name = 'API Gateway',
    n.name_kr = 'API Gateway',
    n.domain = 'SV',
    n.aliases = ['API Gateway'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '프록시'})
SET     n.name = '프록시',
    n.name_kr = '프록시',
    n.domain = 'SV';

MERGE (n:Concept {id: '프로토콜_변환'})
SET     n.name = '프로토콜 변환',
    n.name_kr = '프로토콜 변환',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안(인증'})
SET     n.name = '보안(인증',
    n.name_kr = '보안(인증',
    n.domain = 'SV';

MERGE (n:Concept {id: '로깅)'})
SET     n.name = '로깅)',
    n.name_kr = '로깅)',
    n.domain = 'SV';

MERGE (n:Concept {id: '라우팅'})
SET     n.name = '라우팅',
    n.name_kr = '라우팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = '내부 데이터 보호';

MERGE (n:Concept {id: '서비스_연결'})
SET     n.name = '서비스 연결',
    n.name_kr = '서비스 연결',
    n.domain = 'SV',
    n.definition = '클라이언트 요청 변환';

MERGE (n:Concept {id: '서비스_처리_측면'})
SET     n.name = '서비스 처리 측면',
    n.name_kr = '서비스 처리 측면',
    n.domain = 'SV',
    n.definition = '서비스별 공통기능 구현';

MERGE (n:Concept {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SV',
    n.definition = '클라이언트 접점 일원화';

// --- 관계 ---

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '프록시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '프로토콜_변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '보안(인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '로깅)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '라우팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '서비스_연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '서비스_처리_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Concept {id: '관리적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Document {id: 'SV_119.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프록시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안(인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로깅)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '라우팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_처리_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.5: 서비스 매쉬(Service Mesh)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.5'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'service_mesh'})
SET     n.name = 'Service Mesh',
    n.name_kr = '서비스 매쉬',
    n.domain = 'SV',
    n.aliases = ['Service Mesh', '서비스 매쉬'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'microservice'})
SET     n.name = 'Microservice',
    n.name_kr = 'Microservice',
    n.domain = 'SV',
    n.aliases = ['Microservice'];

MERGE (n:Concept {id: 'sidecar_proxy'})
SET     n.name = 'Sidecar proxy',
    n.name_kr = 'Sidecar proxy',
    n.domain = 'SV',
    n.aliases = ['Sidecar proxy'];

MERGE (n:Concept {id: 'circuit_breaker'})
SET     n.name = 'Circuit breaker',
    n.name_kr = 'Circuit breaker',
    n.domain = 'SV',
    n.aliases = ['Circuit breaker'];

MERGE (n:Concept {id: 'service_discovery'})
SET     n.name = 'Service discovery',
    n.name_kr = 'Service discovery',
    n.domain = 'SV',
    n.aliases = ['Service discovery'];

MERGE (n:Concept {id: 'api_gateway'})
SET     n.name = 'API Gateway',
    n.name_kr = 'API Gateway',
    n.domain = 'SV',
    n.aliases = ['API Gateway'];

MERGE (n:Concept {id: '설계_관점'})
SET     n.name = '설계 관점',
    n.name_kr = '설계 관점',
    n.domain = 'SV',
    n.definition = '커뮤니케이션 로직 추상화';

MERGE (n:Concept {id: '구현_관점'})
SET     n.name = '구현 관점',
    n.name_kr = '구현 관점',
    n.domain = 'SV',
    n.definition = 'MSA(MicroService Architecture) 환경 최적화';

MERGE (n:Concept {id: '인프라_관점'})
SET     n.name = '인프라 관점',
    n.name_kr = '인프라 관점',
    n.domain = 'SV',
    n.definition = '서비스 부하 분산';

MERGE (n:Concept {id: '아키텍처'})
SET     n.name = '아키텍처',
    n.name_kr = '아키텍처',
    n.domain = 'SV',
    n.definition = 'Control Plane';

MERGE (n:Concept {id: 'component'})
SET     n.name = '컴포넌트',
    n.name_kr = '컴포넌트',
    n.domain = 'SV',
    n.definition = 'Sidecar Proxy';

MERGE (n:Concept {id: '비즈니스'})
SET     n.name = '비즈니스',
    n.name_kr = '비즈니스',
    n.domain = 'SV',
    n.definition = 'Business Logic';

// --- 관계 ---

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'microservice'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'sidecar_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'circuit_breaker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'service_discovery'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'api_gateway'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: '설계_관점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: '구현_관점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: '인프라_관점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: '아키텍처'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: 'component'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Concept {id: '비즈니스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Document {id: 'SV_119.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'service_mesh'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'microservice'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sidecar_proxy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'circuit_breaker'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_discovery'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_gateway'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍처'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'component'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.6: 클라우드 네이티브 애플리케이션(Cloud Native Application)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.6'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'cloud_native_application'})
SET     n.name = 'Cloud Native Application',
    n.name_kr = '클라우드 네이티브 애플리케이션',
    n.domain = 'SV',
    n.aliases = ['Cloud Native Application', '클라우드 네이티브 애플리케이션'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'msa'})
SET     n.name = 'MSA',
    n.name_kr = 'MSA',
    n.domain = 'SV',
    n.aliases = ['MSA'];

MERGE (n:Method {id: 'devops'})
SET     n.name = 'Devops',
    n.name_kr = 'Devops',
    n.domain = 'SV',
    n.aliases = ['Devops'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'SV',
    n.aliases = ['Agile'];

MERGE (n:Method {id: 'ci_cd'})
SET     n.name = 'CI/CD',
    n.name_kr = 'CI/CD',
    n.domain = 'SV',
    n.aliases = ['CI/CD'];

MERGE (n:Concept {id: 'container'})
SET     n.name = 'Container',
    n.name_kr = 'Container',
    n.domain = 'SV',
    n.aliases = ['Container'];

MERGE (n:Concept {id: 'api'})
SET     n.name = 'API',
    n.name_kr = 'API',
    n.domain = 'SV',
    n.aliases = ['API'];

MERGE (n:Concept {id: '12_factor_app'})
SET     n.name = '12-Factor App',
    n.name_kr = '12-Factor App',
    n.domain = 'SV';

MERGE (n:Concept {id: '운영측면'})
SET     n.name = '운영측면',
    n.name_kr = '운영측면',
    n.domain = 'SV',
    n.definition = '상호운용성';

MERGE (n:Concept {id: '개발측면'})
SET     n.name = '개발측면',
    n.name_kr = '개발측면',
    n.domain = 'SV',
    n.definition = '협업';

MERGE (n:Method {id: '조직측면'})
SET     n.name = '조직측면',
    n.name_kr = '조직측면',
    n.domain = 'SV',
    n.definition = 'DevOps';

MERGE (n:Concept {id: '아키텍처_측면'})
SET     n.name = '아키텍처 측면',
    n.name_kr = '아키텍처 측면',
    n.domain = 'SV',
    n.definition = 'MSA';

MERGE (n:Concept {id: '인프라'})
SET     n.name = '인프라',
    n.name_kr = '인프라',
    n.domain = 'SV',
    n.definition = '컨테이너';

MERGE (n:Concept {id: '쿠버네티스'})
SET     n.name = '쿠버네티스',
    n.name_kr = '쿠버네티스',
    n.domain = 'SV',
    n.definition = '컨테이너화 된 애플리케이션의 자동화된 배포, 확장 관리용 플랫폼';

MERGE (n:Concept {id: 'multitenancy'})
SET     n.name = 'Multitenancy',
    n.name_kr = 'Multitenancy',
    n.domain = 'SV',
    n.definition = '단일 소프트웨어 인스턴스가 여러 Client 서비스를 제공 -애플리케이션, 데이터베이스 등을 여러 사용자 그룹에서 공유하면서도 각자 정보 및 서비스 독립성을 유지하는 기술',
    n.aliases = ['Multitenancy'];

MERGE (n:Method {id: '통합/배포'})
SET     n.name = '통합/배포',
    n.name_kr = '통합/배포',
    n.domain = 'SV',
    n.definition = 'CI/CD';

MERGE (n:Concept {id: '어플리케이션_실행영역'})
SET     n.name = '어플리케이션 실행영역',
    n.name_kr = '어플리케이션 실행영역',
    n.domain = 'SV',
    n.definition = '클라우드 네이티브 어플리케이션';

MERGE (n:Concept {id: '컨테이너'})
SET     n.name = '컨테이너',
    n.name_kr = '컨테이너',
    n.domain = 'SV',
    n.definition = '클라우드 네이티브 애플리케이션 배포 및 실행단위';

MERGE (n:Concept {id: '컨테이너_런타임'})
SET     n.name = '컨테이너 런타임',
    n.name_kr = '컨테이너 런타임',
    n.domain = 'SV',
    n.definition = '클라우드 실행환경 제공 ( 도커, 쿠버네티스 )';

MERGE (n:Concept {id: '백앤드_서비스영역'})
SET     n.name = '백앤드 서비스영역',
    n.name_kr = '백앤드 서비스영역',
    n.domain = 'SV',
    n.definition = 'DB';

MERGE (n:Concept {id: 'cache'})
SET     n.name = 'Cache',
    n.name_kr = 'Cache',
    n.domain = 'SV',
    n.definition = '세션관리, 성능향상 등의 용도를 위한 메모리 캐싱 서비스',
    n.aliases = ['Cache'];

MERGE (n:Concept {id: 'mom'})
SET     n.name = 'MoM',
    n.name_kr = 'MoM',
    n.domain = 'SV',
    n.definition = '비동기 메시징(Messaging) 서비스',
    n.aliases = ['MoM'];

MERGE (n:Concept {id: '외부_서비스'})
SET     n.name = '외부 서비스',
    n.name_kr = '외부 서비스',
    n.domain = 'SV',
    n.definition = '인증, 간편결제, OpenAPI 형태 외부 연계 서비스';

MERGE (n:Concept {id: '내부_서비스'})
SET     n.name = '내부 서비스',
    n.name_kr = '내부 서비스',
    n.domain = 'SV',
    n.definition = 'AI, 빅데이터, 챗봇 등의 클라우드 플랫폼 제공 서비스';

MERGE (n:Concept {id: '실행_환경'})
SET     n.name = '실행 환경',
    n.name_kr = '실행 환경',
    n.domain = 'SV',
    n.definition = 'API Gateway';

MERGE (n:Concept {id: '컨테이너_오케스트레이션'})
SET     n.name = '컨테이너 오케스트레이션',
    n.name_kr = '컨테이너 오케스트레이션',
    n.domain = 'SV',
    n.definition = '여러 서버에 걸쳐 다수의 컨테이너에 대한배포, 컨테이너단위의Auto scaling, 자원할당, 장애 복구 및 모니터링 등의 운영 자동화를 제공하는 서비스';

MERGE (n:Concept {id: '서비스메시'})
SET     n.name = '서비스메시',
    n.name_kr = '서비스메시',
    n.domain = 'SV',
    n.definition = '대규모의 마이크로 서비스를 실시간으로 제어, 관리 서비스 간에 통신을 하기 위해 Service discovery, 로드밸런싱, 장애제어, Config 관리 등 제공';

MERGE (n:Method {id: '개발_환경'})
SET     n.name = '개발 환경',
    n.name_kr = '개발 환경',
    n.domain = 'SV',
    n.definition = 'CI/CD';

MERGE (n:Concept {id: '운영_지원서비스_영역'})
SET     n.name = '운영 지원서비스 영역',
    n.name_kr = '운영 지원서비스 영역',
    n.domain = 'SV',
    n.definition = '인프라 모니터링';

MERGE (n:Concept {id: '애플리케이션_로그_모니터링'})
SET     n.name = '애플리케이션 로그 모니터링',
    n.name_kr = '애플리케이션 로그 모니터링',
    n.domain = 'SV',
    n.definition = '애플리케이션 헬스체크, 에러, 재시작 횟수 등의 이벤트 정보';

MERGE (n:Concept {id: '클라우드_인프라_영역'})
SET     n.name = '클라우드 인프라 영역',
    n.name_kr = '클라우드 인프라 영역',
    n.domain = 'SV',
    n.definition = 'IaaS';

MERGE (n:Concept {id: 'paas'})
SET     n.name = 'PaaS',
    n.name_kr = 'PaaS',
    n.domain = 'SV',
    n.definition = '마이크로서비스 구조의 애플리케이션 개발, 운영할 수 있는 영역',
    n.aliases = ['PaaS'];

MERGE (n:Concept {id: '12_요소'})
SET     n.name = '12 요소',
    n.name_kr = '12 요소',
    n.domain = 'SV',
    n.definition = '1) 코드 베이스(One Codebase, One Application)';

MERGE (n:Concept {id: 'dependency_management'})
SET     n.name = 'Dependency Management',
    n.name_kr = '2) 종속성',
    n.domain = 'SV',
    n.definition = '명시적으로 선언되고 분리된 종속성',
    n.aliases = ['Dependency Management', '2) 종속성'];

MERGE (n:Concept {id: '3)_설정'})
SET     n.name = 'Configuration, Credentials',
    n.name_kr = '3) 설정',
    n.domain = 'SV',
    n.definition = '배포 환경에 저장되는 설정',
    n.aliases = ['Configuration, Credentials', '3) 설정'];

MERGE (n:Concept {id: 'backing_services'})
SET     n.name = 'Backing Services',
    n.name_kr = '4) Back-end 서비스',
    n.domain = 'SV',
    n.definition = 'Back-end 서비스를 연결된 리소스의 형태로 취급',
    n.aliases = ['Backing Services', '4) Back-end 서비스'];

MERGE (n:Metric {id: 'stateless_processes'})
SET     n.name = 'Stateless Processes',
    n.name_kr = '6) 무상태 프로세스',
    n.domain = 'SV',
    n.definition = '애플리케이션을 하나 혹은 여러 개의 무상태 프로세스로 실행',
    n.aliases = ['Stateless Processes', '6) 무상태 프로세스'];

MERGE (n:Concept {id: 'port_binding'})
SET     n.name = 'Port Binding',
    n.name_kr = '7) 포트 바인딩',
    n.domain = 'SV',
    n.definition = '포트 바인딩을 사용해서 서비스를 공개',
    n.aliases = ['Port Binding', '7) 포트 바인딩'];

MERGE (n:Concept {id: 'concurrency'})
SET     n.name = 'Concurrency',
    n.name_kr = '8) 동시성',
    n.domain = 'SV',
    n.definition = '프로세스 모델을 사용한 동시성 제공',
    n.aliases = ['Concurrency', '8) 동시성'];

MERGE (n:Concept {id: 'disposability'})
SET     n.name = 'Disposability',
    n.name_kr = '9) 폐기 가능',
    n.domain = 'SV',
    n.definition = '프로세스의 빠른 시작과 종료를 통한 안정성 극대화',
    n.aliases = ['Disposability', '9) 폐기 가능'];

MERGE (n:Concept {id: 'environment_parity'})
SET     n.name = 'Environment Parity',
    n.name_kr = '10) 개발, 프로덕션 환경 일치',
    n.domain = 'SV',
    n.definition = '개발, 스테이징, 프로덕션 환경을 최대한 비슷하게 유지',
    n.aliases = ['Environment Parity', '10) 개발, 프로덕션 환경 일치'];

MERGE (n:Concept {id: 'logs'})
SET     n.name = 'Logs',
    n.name_kr = '11) 로그',
    n.domain = 'SV',
    n.definition = '애플리케이션에 영향을 받지 않기 위해 로그를 이벤트 스트림으로 취급',
    n.aliases = ['Logs', '11) 로그'];

MERGE (n:Metric {id: 'administrative_processes'})
SET     n.name = 'Administrative Processes',
    n.name_kr = '12) 관리 프로세스',
    n.domain = 'SV',
    n.definition = '관리와 유지 보수에 관련된 작업을 단일 프로세스로 실행',
    n.aliases = ['Administrative Processes', '12) 관리 프로세스'];

MERGE (n:Concept {id: '15_요소'})
SET     n.name = '15 요소',
    n.name_kr = '15 요소',
    n.domain = 'SV',
    n.definition = '1) 코드 베이스(One Codebase, One Application)';

MERGE (n:Concept {id: 'api_first'})
SET     n.name = 'API First',
    n.name_kr = '2) API 우선',
    n.domain = 'SV',
    n.definition = 'API 설계를 우선하여, 코드를 작성하기 이전에 설계하고자 하는 서비스의 의도와 기능을 명확하게 할 수 있음. API 설계로 Web이나 모바일 뿐만 아니라 API를 이용하려는 다른 서비스간에도 커뮤니케이션 가능',
    n.aliases = ['API First', '2) API 우선'];

MERGE (n:Concept {id: '5)_설정'})
SET     n.name = 'Configuration, Credentials',
    n.name_kr = '5) 설정',
    n.domain = 'SV',
    n.definition = '배포 환경에 저장되는 설정',
    n.aliases = ['Configuration, Credentials', '5) 설정'];

MERGE (n:Technology {id: 'telemetry'})
SET     n.name = 'Telemetry',
    n.name_kr = '14) 관측',
    n.domain = 'SV',
    n.definition = '애플리케이션 성능 모니터링, 애플리케이션이 처리하는 초당 HTTP 요청의 평균 개수 등과 같이 비즈니스에 의미 있는 예측 분석을 위해 이벤트 및 데이터 수집',
    n.aliases = ['Telemetry', '14) 관측'];

// --- 관계 ---

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'msa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: 'devops'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: 'ci_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'container'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '12_factor_app'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '운영측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '개발측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: '조직측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '아키텍처_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '인프라'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '쿠버네티스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'multitenancy'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: '통합/배포'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '어플리케이션_실행영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '컨테이너'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '컨테이너_런타임'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '백앤드_서비스영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'cache'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'mom'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '외부_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '내부_서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '실행_환경'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '컨테이너_오케스트레이션'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '서비스메시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Method {id: '개발_환경'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '운영_지원서비스_영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '애플리케이션_로그_모니터링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '클라우드_인프라_영역'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'paas'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '12_요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'dependency_management'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '3)_설정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'backing_services'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Metric {id: 'stateless_processes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'port_binding'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'concurrency'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'disposability'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'environment_parity'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'logs'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Metric {id: 'administrative_processes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '15_요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: 'api_first'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Concept {id: '5)_설정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Technology {id: 'telemetry'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Document {id: 'SV_119.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cloud_native_application'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'msa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'devops'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'ci_cd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'container'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '12_factor_app'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '조직측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아키텍처_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쿠버네티스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multitenancy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '통합/배포'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_실행영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_런타임'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백앤드_서비스영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스메시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '개발_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_지원서비스_영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션_로그_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_인프라_영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '12_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dependency_management'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_설정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backing_services'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'stateless_processes'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'port_binding'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concurrency'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'disposability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'environment_parity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'logs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'administrative_processes'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '15_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'api_first'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_설정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'telemetry'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_119.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.7'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_119.8: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.8'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_119.9: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_119.9'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_120: 클라우드발전법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_120'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드발전법'})
SET     n.name = '클라우드발전법',
    n.name_kr = '클라우드발전법',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '산업패러다임의_변화'})
SET     n.name = '산업패러다임의 변화',
    n.name_kr = '산업패러다임의 변화',
    n.domain = 'SV',
    n.definition = 'ICT산업의 패러다임이 클라우드컴퓨팅 혁명으로 진화';

MERGE (n:Concept {id: '효율성_증대'})
SET     n.name = '효율성 증대',
    n.name_kr = '효율성 증대',
    n.domain = 'SV',
    n.definition = '기업의 생산성 향상 및 비용절감의 필요성 증대';

MERGE (n:Concept {id: '신산업_기반기술로의_확장'})
SET     n.name = '신산업 기반기술로의 확장',
    n.name_kr = '신산업 기반기술로의 확장',
    n.domain = 'SV',
    n.definition = 'IOT/빅데이타 등과 연계되는 신산업의 기반기술로 확대';

MERGE (n:Concept {id: '이용자보호'})
SET     n.name = '이용자보호',
    n.name_kr = '이용자보호',
    n.domain = 'SV',
    n.definition = '▶ 침해사고, 이용자정보유출, 사전예고 없이10분 이상의 서비스 중단시 지체 없이 이용자에게 알리고 필요한 조치를 하여야 함 ▶ 동의 없이 제3자에게 정보제공금지, 사용 종료시 정보의 반환 및 파기 ▶ 피해가 발생한 경우손해를 배상하여야 하며 입증책임은 사업자가짐';

MERGE (n:Concept {id: '공공・민간_확산'})
SET     n.name = '공공・민간 확산',
    n.name_kr = '공공・민간 확산',
    n.domain = 'SV',
    n.definition = '▶ 국가기관 등의 클라우드 컴퓨팅도입, 공공기관의 민간클라우드 이용촉진 및 시범사업추진 ▶ 클라우드를 이용할 경우 각종인허가시 전산설비 구비 의무완화';

MERGE (n:Concept {id: '클라우드산업육성'})
SET     n.name = '클라우드산업육성',
    n.name_kr = '클라우드산업육성',
    n.domain = 'SV',
    n.definition = '▶ 연구개발, 중소기업지원, 시범사업, 전문인력양성, 해외 진출 지원등 ▶ 클라우드 기반 집적정보통신 시설구축지원, 산업단지조성 ▶ 클라우드컴퓨팅 산업진흥 및 이용촉진을 위한 전담기관지정';

MERGE (n:Concept {id: '처리_정보'})
SET     n.name = '처리 정보',
    n.name_kr = '처리 정보',
    n.domain = 'SV',
    n.definition = '정보처리시스템이 처리하는 정보의 중요도(고객정보, 사내정보, 공개정보 등) 정보 위·변조·유출 시 파급효과 등';

MERGE (n:Concept {id: '타_시스템_과의_연계성'})
SET     n.name = '타 시스템 과의 연계성',
    n.name_kr = '타 시스템 과의 연계성',
    n.domain = 'SV',
    n.definition = '침해사고 또는 장애 발생 시 타 시스템의 업무연속성 저해 수준 연계된 타 시스템의 업무 중요도(전자금융거래 업무, 단순 정보 제공 업무 등)';

MERGE (n:Concept {id: '시스템_중요도'})
SET     n.name = '시스템 중요도',
    n.name_kr = '시스템 중요도',
    n.domain = 'SV',
    n.definition = '복구 목표 시간 등 해당 정보처리시스템의 업무 중요도';

MERGE (n:Concept {id: '시스템_용도'})
SET     n.name = '시스템 용도',
    n.name_kr = '시스템 용도',
    n.domain = 'SV',
    n.definition = '운영 시스템, 개발/테스트 시스템 및 단순 설비 등 정보처리시스템의 용도';

MERGE (n:Concept {id: '시스템_이용자_수'})
SET     n.name = '시스템 이용자 수',
    n.name_kr = '시스템 이용자 수',
    n.domain = 'SV',
    n.definition = '외부(고객), 내부(사내) 등 이용자 유형 별 해당 정보처리시스템 이용자 수';

MERGE (n:Concept {id: '구_시행령'})
SET     n.name = '구 시행령',
    n.name_kr = '구 시행령',
    n.domain = 'SV';

MERGE (n:Concept {id: '현행'})
SET     n.name = '현행',
    n.name_kr = '현행',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '산업패러다임의_변화'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '효율성_증대'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '신산업_기반기술로의_확장'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '이용자보호'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '공공・민간_확산'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '클라우드산업육성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '처리_정보'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '타_시스템_과의_연계성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '시스템_중요도'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '시스템_용도'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '시스템_이용자_수'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: '구_시행령'})
MERGE (b:Concept {id: '현행'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '구_시행령'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Concept {id: '현행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Document {id: 'SV_120'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드발전법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업패러다임의_변화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성_증대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신산업_기반기술로의_확장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용자보호'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공・민간_확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드산업육성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '처리_정보'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타_시스템_과의_연계성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_중요도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_용도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_이용자_수'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구_시행령'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_121: 클라우드 산업 발전 전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_121'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드_산업_발전_전략'})
SET     n.name = '클라우드 산업 발전 전략',
    n.name_kr = '클라우드 산업 발전 전략',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_산업_생태계_강화'})
SET     n.name = '클라우드 산업 생태계 강화',
    n.name_kr = '클라우드 산업 생태계 강화',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_예산_및_조달_체계_혁신'})
SET     n.name = '클라우드 예산 및 조달 체계 혁신',
    n.name_kr = '클라우드 예산 및 조달 체계 혁신',
    n.domain = 'SV';

MERGE (n:Concept {id: '민간_클라우드_도입환경_개선'})
SET     n.name = '민간 클라우드 도입환경 개선',
    n.name_kr = '민간 클라우드 도입환경 개선',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_이용_지원'})
SET     n.name = '클라우드 이용 지원',
    n.name_kr = '클라우드 이용 지원',
    n.domain = 'SV';

MERGE (n:Concept {id: '기업_간_협업체계_구축'})
SET     n.name = '기업 간 협업체계 구축',
    n.name_kr = '기업 간 협업체계 구축',
    n.domain = 'SV';

MERGE (n:Concept {id: '비용_측면'})
SET     n.name = '비용 측면',
    n.name_kr = '비용 측면',
    n.domain = 'SV',
    n.definition = '도입비용의 부담';

MERGE (n:Concept {id: '유지비용의_부담'})
SET     n.name = '유지비용의 부담',
    n.name_kr = '유지비용의 부담',
    n.domain = 'SV',
    n.definition = '기본 시스템 운영시의 클라우드 비용과 라이선스, 수요에 따른 추가 확장과 같은 변동성 비용에 대한 부담';

MERGE (n:Concept {id: '비용절감의_불확실성'})
SET     n.name = '비용절감의 불확실성',
    n.name_kr = '비용절감의 불확실성',
    n.domain = 'SV',
    n.definition = '실질적인 비용 절감 효과에 대해 명확한 수치화 하기 어려워 비용 절감에 대한 의문 발생';

MERGE (n:Concept {id: '정서적인_이질감'})
SET     n.name = '정서적인 이질감',
    n.name_kr = '정서적인 이질감',
    n.domain = 'SV',
    n.definition = '기존 온프레미스와의 운영 차이와 클라우드 시스템의 사용 경험 부족으로 인한 구축, 운영 이질감';

MERGE (n:Concept {id: '성능_측면'})
SET     n.name = '성능 측면',
    n.name_kr = '성능 측면',
    n.domain = 'SV',
    n.definition = '성능확보에 대한 의구심 확장';

MERGE (n:Concept {id: '서비스_모델_정보의_부족'})
SET     n.name = '서비스 모델 정보의 부족',
    n.name_kr = '서비스 모델 정보의 부족',
    n.domain = 'SV',
    n.definition = '다양한 서비스의 제공으로 실질적으로 사용자가 어떤 서비스가 어떤 이점이 있는지 쉽게 알기가 어려움';

MERGE (n:Concept {id: '보안_측면'})
SET     n.name = '보안 측면',
    n.name_kr = '보안 측면',
    n.domain = 'SV',
    n.definition = '데이터 보안 확보에 대한 우려';

MERGE (n:Metric {id: '안정성,_가용성측면_보안사고의_우려'})
SET     n.name = '안정성, 가용성측면 보안사고의 우려',
    n.name_kr = '안정성, 가용성측면 보안사고의 우려',
    n.domain = 'SV',
    n.definition = '데이터 센터 사고로 대국민 서비스들의 장애로 인한 피해로 기업 입장에서는 가용성, 안정성을 민감한 보안 사고로 인식';

MERGE (n:Concept {id: '추진_전략'})
SET     n.name = '추진 전략',
    n.name_kr = '추진 전략',
    n.domain = 'SV';

MERGE (n:Concept {id: '세부_내용'})
SET     n.name = '세부 내용',
    n.name_kr = '세부 내용',
    n.domain = 'SV';

MERGE (n:Threat {id: '보안_실시간_모니터링_기술'})
SET     n.name = '보안 실시간 모니터링 기술',
    n.name_kr = '보안 실시간 모니터링 기술',
    n.domain = 'SV',
    n.definition = 'DDoS, XSS, CSRF등의 보안 공격을 사전 감지 및 인프라 전반 이상 징후에 대해 실시간 모니터링, 공격에 대한 자동 대응';

MERGE (n:Concept {id: 'db_측면'})
SET     n.name = 'DB 측면',
    n.name_kr = 'DB 측면',
    n.domain = 'SV',
    n.definition = '분산 데이터 저장기술';

MERGE (n:Concept {id: '복제,_백업_기술'})
SET     n.name = '복제, 백업 기술',
    n.name_kr = '복제, 백업 기술',
    n.domain = 'SV',
    n.definition = '전체, 증분, 차분 형식으로 데이터의 지속 백업 진행 - Active-Standby 형식으로 이상 현상시 즉시 절체 가용 운영';

MERGE (n:Concept {id: '시스템_가상화_측면'})
SET     n.name = '시스템 가상화 측면',
    n.name_kr = '시스템 가상화 측면',
    n.domain = 'SV',
    n.definition = '가상화 기술';

MERGE (n:Concept {id: '시스템_제어_기술'})
SET     n.name = '시스템 제어 기술',
    n.name_kr = '시스템 제어 기술',
    n.domain = 'SV',
    n.definition = '기존 온프레미스와 동일한 수준 혹은 편리한 수준으로 전체 인프라 시스템을 제어하는 기술 필요';

MERGE (n:Concept {id: '자동화_측면'})
SET     n.name = '자동화 측면',
    n.name_kr = '자동화 측면',
    n.domain = 'SV',
    n.definition = '모니터링 제어 기술';

MERGE (n:Concept {id: '관리_자동화_기술'})
SET     n.name = '관리 자동화 기술',
    n.name_kr = '관리 자동화 기술',
    n.domain = 'SV',
    n.definition = 'Autoscaling과 같이 인프라 자원의 부족시 자동 확장 필요 - 장애, 이상탐지시 자동으로 시스템 제어 복구 기술 필요';

MERGE (n:Concept {id: '고려사항'})
SET     n.name = '고려사항',
    n.name_kr = '고려사항',
    n.domain = 'SV',
    n.definition = '기업 역할';

MERGE (n:Concept {id: '정부의_역할'})
SET     n.name = '정부의 역할',
    n.name_kr = '정부의 역할',
    n.domain = 'SV',
    n.definition = '기업, 민간의 조력자 - 대형 사업 등 진흥정책과 규제,법제도 혁신 등 사회,산업 인프라 조성';

MERGE (n:Concept {id: '클라우드_산업의_협력_생태계_조성'})
SET     n.name = '클라우드 산업의 협력 생태계 조성',
    n.name_kr = '클라우드 산업의 협력 생태계 조성',
    n.domain = 'SV',
    n.definition = '국내 기업 간 협업을 통한 다양한 클라우드 서비스 확보 및 클라우드 기업 육성';

MERGE (n:Concept {id: '국내산업의_클라우드_기반_디지털_혁신'})
SET     n.name = '국내산업의 클라우드 기반 디지털 혁신',
    n.name_kr = '국내산업의 클라우드 기반 디지털 혁신',
    n.domain = 'SV',
    n.definition = '클라우드를 활용한 기업의 생산성 제고 및 국내 산업의 경쟁력 강화';

// --- 관계 ---

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '클라우드_산업_생태계_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '클라우드_예산_및_조달_체계_혁신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '민간_클라우드_도입환경_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '클라우드_이용_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '기업_간_협업체계_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '비용_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '유지비용의_부담'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '비용절감의_불확실성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '정서적인_이질감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '성능_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '서비스_모델_정보의_부족'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '보안_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Metric {id: '안정성,_가용성측면_보안사고의_우려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '추진_전략'})
MERGE (b:Concept {id: '세부_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '추진_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '세부_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Threat {id: '보안_실시간_모니터링_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: 'db_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '복제,_백업_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '시스템_가상화_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '시스템_제어_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '자동화_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '관리_자동화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '정부의_역할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '클라우드_산업의_협력_생태계_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Concept {id: '국내산업의_클라우드_기반_디지털_혁신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Document {id: 'SV_121'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드_산업_발전_전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_산업_생태계_강화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_예산_및_조달_체계_혁신'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간_클라우드_도입환경_개선'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_이용_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_간_협업체계_구축'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유지비용의_부담'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용절감의_불확실성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정서적인_이질감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_모델_정보의_부족'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '안정성,_가용성측면_보안사고의_우려'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추진_전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_내용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '보안_실시간_모니터링_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복제,_백업_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_가상화_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_제어_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리_자동화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부의_역할'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_산업의_협력_생태계_조성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내산업의_클라우드_기반_디지털_혁신'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_122: 민간 클라우드 이용
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_122'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '민간_클라우드_이용'})
SET     n.name = '민간 클라우드 이용',
    n.name_kr = '민간 클라우드 이용',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '전환_배경'})
SET     n.name = '전환 배경',
    n.name_kr = '전환 배경',
    n.domain = 'SV',
    n.definition = '디지털 전환 가속';

MERGE (n:Concept {id: '운영_한계'})
SET     n.name = '운영 한계',
    n.name_kr = '운영 한계',
    n.domain = 'SV',
    n.definition = '다수 기관의 정보시스템이 소규모 전산실에서 운영 중으로 설비 미흡, 보안 취약, 전담 인력 부족';

MERGE (n:Concept {id: '민간_클라우드_산업_활성화'})
SET     n.name = '민간 클라우드 산업 활성화',
    n.name_kr = '민간 클라우드 산업 활성화',
    n.domain = 'SV',
    n.definition = '국내 민간 클라우드 산업 활성화를 위해 공공부문의 선도적인 클라우드 활용에 대한 요구 확대';

MERGE (n:Concept {id: '한국판_뉴딜_과제'})
SET     n.name = '한국판 뉴딜 과제',
    n.name_kr = '한국판 뉴딜 과제',
    n.domain = 'SV',
    n.definition = '디지털정부 혁신(‘20.6.), 한국판 뉴딜(’20.7.) 과제 지정';

MERGE (n:Concept {id: '정보자원_현황'})
SET     n.name = '정보자원 현황',
    n.name_kr = '정보자원 현황',
    n.domain = 'SV',
    n.definition = '내용연수 경과';

MERGE (n:Law {id: '적용_대상'})
SET     n.name = '적용 대상',
    n.name_kr = '적용 대상',
    n.domain = 'SV',
    n.definition = '전자정부법 제2조에 정의한 행정기관과 공공기관';

MERGE (n:Law {id: '근거'})
SET     n.name = '근거',
    n.name_kr = '근거',
    n.domain = 'SV',
    n.definition = '클라우드컴퓨팅법 제12조(국가기관등의 클라우드컴퓨팅 도입 촉진) - 클라우드컴퓨팅법 제20조(공공기관의 클라우드컴퓨팅서비스 이용 촉진) - 국가정보화기본법 제23조의 3(데이터센터 구축 및 운영 활성화) - 전자정부법 제24조(전자적 대민서비스 보안대책) - 전자정부법 제54조 제2항(정보자원 통합관리) - 전자정부법 제56조 제1항(정보통신망 등의 보안대';

MERGE (n:Concept {id: '퍼블릭'})
SET     n.name = '퍼블릭',
    n.name_kr = '퍼블릭',
    n.domain = 'SV',
    n.definition = '일반 대중이 이용하고, 비즈니스와 외부 조직 또는 결합된 조직에 의해 관리 - 퍼블릭 클라우드는 일반적인 서버에서 여러 클라이언트의 데이터를 저장함과 동시에 첨단 보안 조치를 사용하여 인증된 사용자만 데이터에 액세스';

MERGE (n:Concept {id: '프라이빗'})
SET     n.name = '프라이빗',
    n.name_kr = '프라이빗',
    n.domain = 'SV',
    n.definition = '기업 소속 고객이 이용하고 조직이 관리합니다. 프라이빗 클라우드는 단일 조직에만 서비스를 제공';

MERGE (n:Concept {id: '커뮤니티'})
SET     n.name = '커뮤니티',
    n.name_kr = '커뮤니티',
    n.domain = 'SV',
    n.definition = '조직에서 같은 우려를 가진 고객 커뮤니티가 사용하도록 프로비저닝 - 커뮤니티에 속한 여러 조직, 외부 공급업체 또는 커뮤니티와 외부 업체가 결합된 조직이 소유하고 관리';

MERGE (n:Concept {id: '하이브리드'})
SET     n.name = '하이브리드',
    n.name_kr = '하이브리드',
    n.domain = 'SV',
    n.definition = '고유한 서비스 엔터티인 둘 이상의 클라우드 인프라(프라이빗, 커뮤니티 또는 퍼블릭)로 구성되지만 데이터 이동성을 지원하는 표준 기술로 제한';

MERGE (n:Concept {id: '가이드'})
SET     n.name = '가이드',
    n.name_kr = '가이드',
    n.domain = 'SV',
    n.definition = '공공부문 클라우드서비스 유통 및 활용 가이드 라인';

MERGE (n:Concept {id: '시스템'})
SET     n.name = '시스템',
    n.name_kr = '시스템',
    n.domain = 'SV',
    n.definition = '디지털서비스마켓 씨앗';

MERGE (n:Concept {id: '필수_조건'})
SET     n.name = '필수 조건',
    n.name_kr = '필수 조건',
    n.domain = 'SV',
    n.definition = '1. 한국인터넷진흥원(KISA)의 클라우드 보안 인증 2. 국내 클라우드 데이터센터 설립 및 데이터 국내 보관 3. 민간 데이터센터와 물리적으로 분리된 전용 데이터센터 4. 중요 장비 이중화 및 데이터 백업체계 구축 5. 국가가 인증한 암호화 기술 적용';

// --- 관계 ---

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '전환_배경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '운영_한계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '민간_클라우드_산업_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '한국판_뉴딜_과제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '정보자원_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Law {id: '적용_대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Law {id: '근거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '퍼블릭'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '프라이빗'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '커뮤니티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '하이브리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '가이드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Concept {id: '필수_조건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Document {id: 'SV_122'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '민간_클라우드_이용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전환_배경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_한계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '민간_클라우드_산업_활성화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국판_뉴딜_과제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보자원_현황'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '적용_대상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '근거'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼블릭'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이빗'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커뮤니티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가이드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '필수_조건'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_123: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_123'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_128: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_128'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_129.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_129.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_129.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_129.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_129.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_129.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_129.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_129.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_130: 클라우드 컴퓨팅 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_130'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드_컴퓨팅_보안'})
SET     n.name = '클라우드 컴퓨팅 보안',
    n.name_kr = '클라우드 컴퓨팅 보안',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '정보유출'})
SET     n.name = '정보유출',
    n.name_kr = '정보유출',
    n.domain = 'SV';

MERGE (n:Concept {id: '유형_별_보안_위협_요소'})
SET     n.name = '유형 별 보안 위협 요소',
    n.name_kr = '유형 별 보안 위협 요소',
    n.domain = 'SV';

MERGE (n:Concept {id: 'iso/iec_표준화'})
SET     n.name = 'ISO/IEC 표준화',
    n.name_kr = 'ISO/IEC 표준화',
    n.domain = 'SV',
    n.definition = 'ISO/IEC 27017';

MERGE (n:Concept {id: 'iso_iec_27018'})
SET     n.name = 'ISO/IEC 27018',
    n.name_kr = 'ISO/IEC 27018',
    n.domain = 'SV',
    n.definition = '클라우드 서비스 제공자의 개인정보보호지침',
    n.aliases = ['ISO/IEC 27018'];

MERGE (n:Standard {id: 'itu-t_표준화'})
SET     n.name = 'ITU-T 표준화',
    n.name_kr = 'ITU-T 표준화',
    n.domain = 'SV',
    n.definition = 'ITU-T X.1601';

MERGE (n:Standard {id: 'itu_t_x_1602'})
SET     n.name = 'ITU-T X.1602',
    n.name_kr = 'ITU-T X.1602',
    n.domain = 'SV',
    n.definition = 'SaaS Application 환경 보안 요구사항',
    n.aliases = ['ITU-T X.1602'];

MERGE (n:Standard {id: 'itu_t_x_1642'})
SET     n.name = 'ITU-T X.1642',
    n.name_kr = 'ITU-T X.1642',
    n.domain = 'SV',
    n.definition = '클라우드 컴퓨팅을 위한 운영 보안 지침',
    n.aliases = ['ITU-T X.1642'];

MERGE (n:Concept {id: '국내_표준화'})
SET     n.name = '국내 표준화',
    n.name_kr = '국내 표준화',
    n.domain = 'SV',
    n.definition = 'KCS.KO-10.2000';

MERGE (n:Concept {id: 'kcs_ko_10_2001'})
SET     n.name = 'KCS.KO-10.2001',
    n.name_kr = 'KCS.KO-10.2001',
    n.domain = 'SV',
    n.definition = 'KATS(기술표준원) 클라우드 서비스 제공자의 개인정보보호지침',
    n.aliases = ['KCS.KO-10.2001'];

MERGE (n:Concept {id: 'ttak_ko_10_893'})
SET     n.name = 'TTAK.KO-10.893',
    n.name_kr = 'TTAK.KO-10.893',
    n.domain = 'SV',
    n.definition = '클라우드 서비스 도입 위한 자가 진단 지침',
    n.aliases = ['TTAK.KO-10.893'];

MERGE (n:Concept {id: 'ttak_ko_10_533'})
SET     n.name = 'TTAK.KO-10.533',
    n.name_kr = 'TTAK.KO-10.533',
    n.domain = 'SV',
    n.definition = '퍼스널 클라우드 보안 프레임워크',
    n.aliases = ['TTAK.KO-10.533'];

// --- 관계 ---

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: '정보유출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: '유형_별_보안_위협_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'iso/iec_표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'iso_iec_27018'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Standard {id: 'itu-t_표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Standard {id: 'itu_t_x_1602'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Standard {id: 'itu_t_x_1642'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: '국내_표준화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'kcs_ko_10_2001'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'ttak_ko_10_893'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Concept {id: 'ttak_ko_10_533'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Document {id: 'SV_130'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보유출'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유형_별_보안_위협_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso/iec_표준화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iso_iec_27018'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itu-t_표준화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itu_t_x_1602'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itu_t_x_1642'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내_표준화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kcs_ko_10_2001'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_893'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ttak_ko_10_533'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_131: 클라우드 보안 인증제도
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_131'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '클라우드_보안_인증제도'})
SET     n.name = '클라우드 보안 인증제도',
    n.name_kr = '클라우드 보안 인증제도',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_보안인증제도'})
SET     n.name = '클라우드 보안인증제도',
    n.name_kr = '클라우드 보안인증제도',
    n.domain = 'SV';

MERGE (n:Concept {id: 'kisa'})
SET     n.name = 'KISA',
    n.name_kr = '한국인터넷진흥원',
    n.domain = 'SV',
    n.aliases = ['KISA', '한국인터넷진흥원'];

// --- 관계 ---

MERGE (a:Concept {id: '클라우드_보안인증제도'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Concept {id: 'kisa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Document {id: 'SV_131'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '클라우드_보안_인증제도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_보안인증제도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kisa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_132: 가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_132'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'virtualization'})
SET     n.name = 'Virtualization',
    n.name_kr = 'Virtualization',
    n.domain = 'SV',
    n.aliases = ['Virtualization'];

MERGE (n:Concept {id: '서버가상화'})
SET     n.name = '서버가상화',
    n.name_kr = '서버가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '네트워크가상화'})
SET     n.name = '네트워크가상화',
    n.name_kr = '네트워크가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '스토리지가상화'})
SET     n.name = '스토리지가상화',
    n.name_kr = '스토리지가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
SET     n.name = '데스크톱 가상화',
    n.name_kr = '데스크톱 가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'scalability'})
SET     n.name = 'Scalability',
    n.name_kr = 'Scalability',
    n.domain = 'SV',
    n.aliases = ['Scalability'];

MERGE (n:Concept {id: 'realiability'})
SET     n.name = 'Realiability',
    n.name_kr = 'Realiability',
    n.domain = 'SV',
    n.aliases = ['Realiability'];

MERGE (n:Concept {id: 'flexibility'})
SET     n.name = 'Flexibility',
    n.name_kr = 'Flexibility',
    n.domain = 'SV',
    n.aliases = ['Flexibility'];

MERGE (n:Concept {id: 'agility'})
SET     n.name = 'Agility',
    n.name_kr = 'Agility',
    n.domain = 'SV',
    n.aliases = ['Agility'];

MERGE (n:Concept {id: 'optimization'})
SET     n.name = 'Optimization',
    n.name_kr = 'Optimization',
    n.domain = 'SV',
    n.aliases = ['Optimization'];

MERGE (n:Concept {id: 'zeropc'})
SET     n.name = 'ZeroPC',
    n.name_kr = 'ZeroPC',
    n.domain = 'SV',
    n.aliases = ['ZeroPC'];

MERGE (n:Concept {id: 'vdi'})
SET     n.name = 'VDI',
    n.name_kr = 'VDI',
    n.domain = 'SV',
    n.aliases = ['VDI'];

MERGE (n:Concept {id: 'sbc'})
SET     n.name = 'SBC',
    n.name_kr = 'SBC',
    n.domain = 'SV',
    n.aliases = ['SBC'];

MERGE (n:Concept {id: '도커'})
SET     n.name = '도커',
    n.name_kr = '도커',
    n.domain = 'SV';

MERGE (n:Concept {id: '전가상화'})
SET     n.name = '전가상화',
    n.name_kr = '전가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '반가상화'})
SET     n.name = '반가상화',
    n.name_kr = '반가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '친환경구현'})
SET     n.name = '친환경구현',
    n.name_kr = '친환경구현',
    n.domain = 'SV',
    n.definition = '열발생, 탄소발생을 원천적으로 줄임으로써 친환경 구현에 기여';

MERGE (n:Concept {id: 'tco_절감'})
SET     n.name = 'TCO 절감',
    n.name_kr = 'TCO 절감',
    n.domain = 'SV',
    n.definition = '잔여자원(메모리, CPU, Cache)의 재사용을 통해 별도 투자발생을 줄임';

MERGE (n:Concept {id: '개인정보_유출위험저하'})
SET     n.name = '개인정보 유출위험저하',
    n.name_kr = '개인정보 유출위험저하',
    n.domain = 'SV',
    n.definition = '논리적 가상화는 기밀정보의 유출을 원천적으로 차단하는 효과를 제공';

MERGE (n:Concept {id: 'sw_가상화'})
SET     n.name = 'SW 가상화',
    n.name_kr = 'SW 가상화',
    n.domain = 'SV',
    n.definition = 'OS Emulation';

MERGE (n:Metric {id: 'resource_management'})
SET     n.name = 'Resource Management',
    n.name_kr = 'Resource Management',
    n.domain = 'SV',
    n.definition = '단일OS환경에서 Process 또는 user들의 서버리소스 사용량을 관리함으로써 다양한 Task들이 효율적으로 운용될 수 있도록 해주는 기술',
    n.aliases = ['Resource Management'];

MERGE (n:Concept {id: 'virtual_os'})
SET     n.name = 'Virtual OS',
    n.name_kr = 'Virtual OS',
    n.domain = 'SV',
    n.definition = '하나의 서버에서 여러 개의 가상OS를 구출하여 Middle range급 이하 서버군에 대한 Consolidation 가능',
    n.aliases = ['Virtual OS'];

MERGE (n:Concept {id: 'hw_가상화'})
SET     n.name = 'HW 가상화',
    n.name_kr = 'HW 가상화',
    n.domain = 'SV',
    n.definition = 'Partitioning';

MERGE (n:Concept {id: 'sw+hw_가상화'})
SET     n.name = 'SW+HW 가상화',
    n.name_kr = 'SW+HW 가상화',
    n.domain = 'SV',
    n.definition = 'Distributed Workload Management';

MERGE (n:Concept {id: '가상화_대상에_따른_종류'})
SET     n.name = '가상화 대상에 따른 종류',
    n.name_kr = '가상화 대상에 따른 종류',
    n.domain = 'SV',
    n.definition = '서버 가상화';

MERGE (n:Concept {id: '어플리케이션_가상화'})
SET     n.name = '어플리케이션 가상화',
    n.name_kr = '어플리케이션 가상화',
    n.domain = 'SV',
    n.definition = '응용프로그램이 실행되는 OS로부터 응용소프트웨어 캡슐화하는 기법 - 예를 들어 MS의 윈도우7 환경에서 윈도우 XP모드의 시스 템을 구동하는 것';

MERGE (n:Concept {id: '하드웨어_리소스_가상화'})
SET     n.name = '하드웨어 리소스 가상화',
    n.name_kr = '하드웨어 리소스 가상화',
    n.domain = 'SV',
    n.definition = 'CPU, Memory, Storage, Network의 물리적 장치를 VM혹은 VLAN기술 이용하여 가상화하는 방법';

MERGE (n:Concept {id: '가상화_방식에_따른_종류'})
SET     n.name = '가상화 방식에 따른 종류',
    n.name_kr = '가상화 방식에 따른 종류',
    n.domain = 'SV',
    n.definition = '하이퍼바이저 방식 가상화';

MERGE (n:Concept {id: '컨테이너_방식_가상화'})
SET     n.name = '컨테이너 방식 가상화',
    n.name_kr = '컨테이너 방식 가상화',
    n.domain = 'SV',
    n.definition = '초기 LXC(Linux Container)기술 도입으로 활성화 - 경량화로 인한 속도와 이식성 측면에서 다방면 활용';

MERGE (n:Concept {id: '인프라_자원'})
SET     n.name = '인프라 자원',
    n.name_kr = '인프라 자원',
    n.domain = 'SV',
    n.definition = '서버가상화';

MERGE (n:Concept {id: '네트워크_가상화'})
SET     n.name = '네트워크 가상화',
    n.name_kr = '네트워크 가상화',
    n.domain = 'SV',
    n.definition = 'L2~L7 활용, VPNs, VLANs';

MERGE (n:Concept {id: '정보'})
SET     n.name = '정보',
    n.name_kr = '정보',
    n.domain = 'SV',
    n.definition = '파일 가상화';

MERGE (n:Concept {id: '데이터_가상화'})
SET     n.name = '데이터 가상화',
    n.name_kr = '데이터 가상화',
    n.domain = 'SV',
    n.definition = '데이터 연합 및 콘솔리데이션';

MERGE (n:Concept {id: '워크로드'})
SET     n.name = '워크로드',
    n.name_kr = '워크로드',
    n.domain = 'SV',
    n.definition = '트랜잭션 가상화';

MERGE (n:Concept {id: '태스크_가상화'})
SET     n.name = '태스크 가상화',
    n.name_kr = '태스크 가상화',
    n.domain = 'SV',
    n.definition = '컴퓨팅 그리드';

MERGE (n:Concept {id: '프레젠테이션_가상화'})
SET     n.name = '프레젠테이션 가상화',
    n.name_kr = '프레젠테이션 가상화',
    n.domain = 'SV',
    n.definition = '서비스 기반 컴퓨팅(SBC)';

MERGE (n:Concept {id: '운영환경'})
SET     n.name = '운영환경',
    n.name_kr = '운영환경',
    n.domain = 'SV',
    n.definition = '전사적 워크로드';

MERGE (n:Concept {id: '전력/냉각_효율화'})
SET     n.name = '전력/냉각 효율화',
    n.name_kr = '전력/냉각 효율화',
    n.domain = 'SV',
    n.definition = 'Hibernation, Partition Mobility';

MERGE (n:Concept {id: '유틸리티_서비스'})
SET     n.name = '유틸리티 서비스',
    n.name_kr = '유틸리티 서비스',
    n.domain = 'SV',
    n.definition = 'Metering, Provisioning';

MERGE (n:Concept {id: '백업_가상화'})
SET     n.name = '백업 가상화',
    n.name_kr = '백업 가상화',
    n.domain = 'SV',
    n.definition = 'VTL 백업, 테이프 라이브러리 기반 백업';

MERGE (n:Concept {id: '클라이언트_데스크탑_가상화'})
SET     n.name = '클라이언트 데스크탑 가상화',
    n.name_kr = '클라이언트 데스크탑 가상화',
    n.domain = 'SV',
    n.definition = 'PC가상화, 서버기반 컴퓨팅(SBC), VDI(Virtual Desktop Infrastructure)';

// --- 관계 ---

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '서버가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '네트워크가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '스토리지가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'scalability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'realiability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'flexibility'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'agility'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'optimization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'zeropc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'vdi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'sbc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '도커'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '전가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '반가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '친환경구현'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'tco_절감'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '개인정보_유출위험저하'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'sw_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Metric {id: 'resource_management'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'virtual_os'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'hw_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: 'sw+hw_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '가상화_대상에_따른_종류'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '어플리케이션_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '하드웨어_리소스_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '가상화_방식에_따른_종류'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '컨테이너_방식_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '인프라_자원'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '네트워크_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '정보'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '데이터_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '워크로드'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '태스크_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '프레젠테이션_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '운영환경'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '전력/냉각_효율화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '유틸리티_서비스'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '백업_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '클라이언트_데스크탑_가상화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Document {id: 'SV_132'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scalability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'realiability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flexibility'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'agility'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'optimization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zeropc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sbc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도커'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '친환경구현'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tco_절감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_유출위험저하'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'resource_management'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_os'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw+hw_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화_대상에_따른_종류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어_리소스_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화_방식에_따른_종류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_방식_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라_자원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '워크로드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태스크_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프레젠테이션_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전력/냉각_효율화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유틸리티_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백업_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트_데스크탑_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_133: Hypervisor
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_133'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'hypervisor'})
SET     n.name = 'Hypervisor',
    n.name_kr = 'Hypervisor',
    n.domain = 'SV',
    n.aliases = ['Hypervisor'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'bh_반전_모모'})
SET     n.name = 'BH 반전 모모',
    n.name_kr = 'BH 반전 모모',
    n.domain = 'SV';

MERGE (n:Concept {id: '호스트_타입별'})
SET     n.name = '호스트 타입별',
    n.name_kr = '호스트 타입별',
    n.domain = 'SV',
    n.definition = 'Bare-metal (native)';

MERGE (n:Concept {id: 'hosted'})
SET     n.name = 'Hosted',
    n.name_kr = 'Hosted',
    n.domain = 'SV',
    n.definition = '호스트 OS 실행 및 호스트 OS에 의해 운영체제 관리 - Guest OS의 종류 제약이 적고, 도입이 쉬운 장점',
    n.aliases = ['Hosted'];

MERGE (n:Concept {id: '가상화_방식'})
SET     n.name = '가상화 방식',
    n.name_kr = '가상화 방식',
    n.domain = 'SV',
    n.definition = '전가상화 (Full Virtualization)';

MERGE (n:Concept {id: 'para_virtualization'})
SET     n.name = 'Para Virtualization',
    n.name_kr = '반가상화',
    n.domain = 'SV',
    n.definition = '하드웨어를 완전히 가상화 하지 않아 호스팅되는 OS가 하이퍼바이저를 통해서만 하드웨어 제어가 가능 - Guest OS의 커널 일부를 수정해야 함',
    n.aliases = ['Para Virtualization', '반가상화'];

MERGE (n:Concept {id: 'type1'})
SET     n.name = 'Native/Bare-Metal',
    n.name_kr = 'Type1',
    n.domain = 'SV',
    n.aliases = ['Native/Bare-Metal', 'Type1'];

MERGE (n:Concept {id: 'monolithic_kernel'})
SET     n.name = 'Monolithic Kernel',
    n.name_kr = 'Monolithic Kernel',
    n.domain = 'SV',
    n.aliases = ['Monolithic Kernel'];

MERGE (n:Concept {id: 'micro_kernel'})
SET     n.name = 'Micro Kernel',
    n.name_kr = 'Micro Kernel',
    n.domain = 'SV',
    n.aliases = ['Micro Kernel'];

// --- 관계 ---

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'bh_반전_모모'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: '호스트_타입별'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'hosted'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: '가상화_방식'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'para_virtualization'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'type1'})
MERGE (b:Concept {id: 'hosted'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'type1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'hosted'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'monolithic_kernel'})
MERGE (b:Concept {id: 'micro_kernel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'monolithic_kernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: 'micro_kernel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Document {id: 'SV_133'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bh_반전_모모'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스트_타입별'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hosted'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화_방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'para_virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'type1'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'monolithic_kernel'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'micro_kernel'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_134: 전가상화, 반가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_134'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '전가상화,_반가상화'})
SET     n.name = '전가상화, 반가상화',
    n.name_kr = '전가상화, 반가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cpu_vt'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '하드웨어_완전_가상화'})
SET     n.name = '하드웨어 완전 가상화(전가상화)',
    n.name_kr = '하드웨어 완전 가상화(전가상화)',
    n.domain = 'SV';

MERGE (n:Concept {id: '성능저하방지_일부_가상화'})
SET     n.name = '성능저하방지 일부 가상화(반가상화)',
    n.name_kr = '성능저하방지 일부 가상화(반가상화)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'fullvirtualization'})
SET     n.name = 'FullVirtualization',
    n.name_kr = '전가상화',
    n.domain = 'SV',
    n.definition = '하드웨어를 완전히 가상화하는 것으로 게스트 OS를 수정할 필요없이 다양한 OS를 사용할 수 있는 하이퍼바이저 가상화 기술',
    n.aliases = ['FullVirtualization', '전가상화'];

MERGE (n:Concept {id: 'paravirtualization'})
SET     n.name = 'Paravirtualization',
    n.name_kr = '반가상화',
    n.domain = 'SV',
    n.definition = '하드웨어에 대한 전면적인 가상화 없이 하이퍼바이저가 제공하는 API를 통해 OS를 제어하는 하이퍼바이저 가상화 기술',
    n.aliases = ['Paravirtualization', '반가상화'];

MERGE (n:Technology {id: 'ovf_패키지'})
SET     n.name = 'OVF 패키지',
    n.name_kr = 'OVF 패키지',
    n.domain = 'SV',
    n.definition = 'OVF디스크립터와 가상 디스크에 해당하는 콘텐츠로 구성 - 콘텐츠 : OVF 패키지에 포함되거나 HTTP 를 통해 참조 - OVF 디스크립터 : 가상 H/W, 디스크, N/W, 자원 요구사항 등 S/W를 효과적으로 배치하기 위해 사용되는 공통 섹션을 정의하는 메타데이터를 포함하는 XML 문서';

MERGE (n:Concept {id: 'ovf_환경'})
SET     n.name = 'OVF 환경',
    n.name_kr = 'OVF 환경',
    n.domain = 'SV',
    n.definition = '게스크 소프트웨어를 위한 설정 정보를 포함하는 XML 문서 - 호스트이름, IP주소, 서브넷, 게이트웨이 등의 운영체제 설정 - 웹 서버의 DNS이름, 데이터베이스, 기타 서비스 등에 대한 애플리케이션 설정';

// --- 관계 ---

MERGE (a:Concept {id: 'cpu_vt'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'cpu_vt'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: '하드웨어_완전_가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: '성능저하방지_일부_가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'fullvirtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'paravirtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fullvirtualization'})
MERGE (b:Concept {id: 'paravirtualization'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'fullvirtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'paravirtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Technology {id: 'ovf_패키지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Concept {id: 'ovf_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Document {id: 'SV_134'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전가상화,_반가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpu_vt'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어_완전_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능저하방지_일부_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fullvirtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'paravirtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ovf_패키지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ovf_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_135: VMM (Virtual Machine Monitor)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_135'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'virtual_machine_monitor'})
SET     n.name = 'Virtual Machine Monitor',
    n.name_kr = 'VMM',
    n.domain = 'SV',
    n.aliases = ['Virtual Machine Monitor', 'VMM'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'hypervisor'})
SET     n.name = 'Hypervisor',
    n.name_kr = 'VMM',
    n.domain = 'SV',
    n.aliases = ['Hypervisor', 'VMM'];

MERGE (n:Concept {id: 'hosted_기반형:_type2'})
SET     n.name = 'Hosted 기반형: Type2',
    n.name_kr = 'Hosted 기반형: Type2',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vmware_server'})
SET     n.name = 'VMware Server',
    n.name_kr = 'VMware Server',
    n.domain = 'SV',
    n.aliases = ['VMware Server'];

MERGE (n:Concept {id: 'type1'})
SET     n.name = 'Bare-Metal VMM, Native VMM',
    n.name_kr = 'Type1',
    n.domain = 'SV',
    n.aliases = ['Bare-Metal VMM, Native VMM', 'Type1'];

MERGE (n:Concept {id: 'hosted_vmm'})
SET     n.name = 'Hosted VMM',
    n.name_kr = 'Type2',
    n.domain = 'SV',
    n.aliases = ['Hosted VMM', 'Type2'];

MERGE (n:Concept {id: 'native_hypervisor'})
SET     n.name = 'Native Hypervisor',
    n.name_kr = 'Type1',
    n.domain = 'SV',
    n.aliases = ['Native Hypervisor', 'Type1'];

MERGE (n:Concept {id: 'hosted_hypervisor'})
SET     n.name = 'Hosted Hypervisor',
    n.name_kr = 'Type2',
    n.domain = 'SV',
    n.aliases = ['Hosted Hypervisor', 'Type2'];

// --- 관계 ---

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'hosted_기반형:_type2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'vmware_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'type1'})
MERGE (b:Concept {id: 'hosted_vmm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'type1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'hosted_vmm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'native_hypervisor'})
MERGE (b:Concept {id: 'hosted_hypervisor'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'native_hypervisor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Concept {id: 'hosted_hypervisor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Document {id: 'SV_135'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'virtual_machine_monitor'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hypervisor'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hosted_기반형:_type2'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vmware_server'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'type1'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hosted_vmm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'native_hypervisor'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hosted_hypervisor'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_136: 서버가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_136'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '서버가상화'})
SET     n.name = '서버가상화',
    n.name_kr = '서버가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'on_demand'})
SET     n.name = '온디맨드',
    n.name_kr = '온디맨드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'real_time'})
SET     n.name = '실시간성',
    n.name_kr = '실시간성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'scalability'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'multi_tenancy'})
SET     n.name = '다중 수용성',
    n.name_kr = '다중 수용성',
    n.domain = 'SV';

MERGE (n:Concept {id: '공통'})
SET     n.name = '공통',
    n.name_kr = '공통',
    n.domain = 'SV',
    n.definition = '기업 내 서버의 활용도를 높이고 원활한 시스템 관리를 통한 서버구입 및 관리비용을 절감하고 다양한 용도의 서버 요구를 신속히 제공하기 위해 구축함. - 특히, 신속한 온디맨드로 확장을 필요로 하는 이용량 변화가 큰 서비스 제공을 위해 서버 가상화 서비스를 활용함';

MERGE (n:Concept {id: '퍼블릭_클라우드'})
SET     n.name = '퍼블릭 클라우드',
    n.name_kr = '퍼블릭 클라우드',
    n.domain = 'SV',
    n.definition = '공공, 기업체, IT 서비스 기업 등 다양한 분야에서 웹서버와 DB서버, 백업서버 등으로 활용 - 특히 초기 기업, 어플리케이션 개발, 온라인 쇼핑몰 운영업체 등에서 활용되는 사례가 많음';

MERGE (n:Concept {id: '프라이빗_클라우드'})
SET     n.name = '프라이빗 클라우드',
    n.name_kr = '프라이빗 클라우드',
    n.domain = 'SV',
    n.definition = '현행 서버 자원의 효율성 제고와 서버 통합에 따른 TCO 절감 - 업무환경 변화에 대한 IT의 신속한 대응 등의 목적으로 도입';

// --- 관계 ---

MERGE (a:Concept {id: '가상화'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: 'on_demand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: 'real_time'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: 'scalability'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: 'multi_tenancy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: '공통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: '퍼블릭_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Concept {id: '프라이빗_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Document {id: 'SV_136'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '서버가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_demand'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'real_time'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scalability'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_tenancy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼블릭_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프라이빗_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_137: 스토리지가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_137'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스토리지가상화'})
SET     n.name = '스토리지가상화',
    n.name_kr = '스토리지가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '호스트기반'})
SET     n.name = '호스트기반',
    n.name_kr = '호스트기반',
    n.domain = 'SV';

MERGE (n:Concept {id: '어레이기반'})
SET     n.name = '어레이기반',
    n.name_kr = '어레이기반',
    n.domain = 'SV';

MERGE (n:Concept {id: '네트워크기반'})
SET     n.name = '네트워크기반',
    n.name_kr = '네트워크기반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'in_bound'})
SET     n.name = 'In Bound',
    n.name_kr = 'In Bound',
    n.domain = 'SV',
    n.aliases = ['In Bound'];

MERGE (n:Concept {id: 'out_of_bound'})
SET     n.name = 'Out of Bound',
    n.name_kr = 'Out of Bound',
    n.domain = 'SV',
    n.aliases = ['Out of Bound'];

MERGE (n:Concept {id: '경영측면'})
SET     n.name = '경영측면',
    n.name_kr = '경영측면',
    n.domain = 'SV',
    n.definition = 'TCO 절감';

MERGE (n:Concept {id: '비즈니스_연속성'})
SET     n.name = '비즈니스 연속성',
    n.name_kr = '비즈니스 연속성',
    n.domain = 'SV',
    n.definition = '대칭/비대칭 복제로 DR 구축(Snapshot, Mirror 기술적용)';

MERGE (n:Metric {id: '기술측면'})
SET     n.name = '기술측면',
    n.name_kr = '기술측면',
    n.domain = 'SV',
    n.definition = '가용성 증가';

MERGE (n:Concept {id: '리소스_공유'})
SET     n.name = '리소스 공유',
    n.name_kr = '리소스 공유',
    n.domain = 'SV',
    n.definition = '다양한 이기종 서버간의 스토리지 리소스 공유가능';

// --- 관계 ---

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '호스트기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '어레이기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '네트워크기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: 'in_bound'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: 'out_of_bound'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '경영측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '비즈니스_연속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Metric {id: '기술측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Concept {id: '리소스_공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Document {id: 'SV_137'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스토리지가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스트기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어레이기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'in_bound'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'out_of_bound'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_연속성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '기술측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리소스_공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_138: 데스크톱 가상화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_138'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
SET     n.name = 'Vdi, Virtual Desktop Infrastructure',
    n.name_kr = '데스크톱 가상화',
    n.domain = 'SV',
    n.aliases = ['데스크톱 가상화'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '단말기'})
SET     n.name = '단말기(클라이언트)',
    n.name_kr = '단말기(클라이언트)',
    n.domain = 'SV';

MERGE (n:Concept {id: '인증서버'})
SET     n.name = '인증서버',
    n.name_kr = '인증서버',
    n.domain = 'SV';

MERGE (n:Concept {id: '하이퍼바이저'})
SET     n.name = '하이퍼바이저',
    n.name_kr = '하이퍼바이저',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상머신_운영서버'})
SET     n.name = '가상머신 운영서버',
    n.name_kr = '가상머신 운영서버',
    n.domain = 'SV';

MERGE (n:Concept {id: '공유_스토리지'})
SET     n.name = '공유 스토리지',
    n.name_kr = '공유 스토리지',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = '데이터 유출 방지';

MERGE (n:Threat {id: '외부_침입_방지_및_관리'})
SET     n.name = '외부 침입 방지 및 관리',
    n.name_kr = '외부 침입 방지 및 관리',
    n.domain = 'SV',
    n.definition = '패치 및 업그레이드 중앙화를 통한 개인 사용자 PC 관리 - 접속장치를 통한 바이러스 및 악성코드 유입의 원천 차단';

MERGE (n:Concept {id: 'it컴플라이언스'})
SET     n.name = 'IT컴플라이언스',
    n.name_kr = 'IT컴플라이언스',
    n.domain = 'SV',
    n.definition = '개인 정보보호법령 등으로 인한 IT 법령 변화의 준수 관리';

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'SV',
    n.definition = '가상 인프라 환경의 중앙 관리';

MERGE (n:Concept {id: '표준_데스크탑_환경'})
SET     n.name = '표준 데스크탑 환경',
    n.name_kr = '표준 데스크탑 환경',
    n.domain = 'SV',
    n.definition = '동일한 OS 및 Device 환경 - Application 개발 및 시스템 도입시 검토항목 감소';

MERGE (n:Concept {id: 'automation'})
SET     n.name = 'Automation',
    n.name_kr = '자동화',
    n.domain = 'SV',
    n.definition = '자동 배포 및 할당 가능, 부하 분산 및 할당 가능, 사용량에 따른 비용 산정 가능',
    n.aliases = ['Automation', '자동화'];

MERGE (n:Concept {id: '정보_통합'})
SET     n.name = '정보 통합',
    n.name_kr = '정보 통합',
    n.domain = 'SV',
    n.definition = '모든 데이터의 중앙 집중화를 통한 정보의 공유 가능';

MERGE (n:Concept {id: '비용_절감'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'SV',
    n.definition = '가상 데스크탑 통합 관리로 운영 관리비용 감소 - 데스크톱 설치 관리 시간과 비용 절감';

MERGE (n:Concept {id: '유연성'})
SET     n.name = '유연성',
    n.name_kr = '유연성',
    n.domain = 'SV',
    n.definition = '유연한 접속';

MERGE (n:Concept {id: '변화_적응'})
SET     n.name = '변화 적응',
    n.name_kr = '변화 적응',
    n.domain = 'SV',
    n.definition = '시스템 확장과 변화에 유연한 구조';

// --- 관계 ---

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '단말기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '인증서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '하이퍼바이저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '가상머신_운영서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '공유_스토리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Threat {id: '외부_침입_방지_및_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: 'it컴플라이언스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '표준_데스크탑_환경'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: 'automation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '정보_통합'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '비용_절감'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '유연성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Concept {id: '변화_적응'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Document {id: 'SV_138'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'vdi,_virtual_desktop_infrastructure'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단말기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이퍼바이저'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상머신_운영서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유_스토리지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '외부_침입_방지_및_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it컴플라이언스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_데스크탑_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'automation'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_통합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_절감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화_적응'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_140: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_140'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_141: 애플리케이션 가상화 (Application Virtualization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_141'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'application_virtualization'})
SET     n.name = 'Application Virtualization',
    n.name_kr = '애플리케이션 가상화',
    n.domain = 'SV',
    n.aliases = ['Application Virtualization', '애플리케이션 가상화'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'virtualization'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '캡슐화'})
SET     n.name = '캡슐화',
    n.name_kr = '캡슐화',
    n.domain = 'SV';

MERGE (n:Concept {id: '샌드박싱'})
SET     n.name = '샌드박싱',
    n.name_kr = '샌드박싱',
    n.domain = 'SV';

MERGE (n:Concept {id: 'native'})
SET     n.name = 'Native',
    n.name_kr = 'Native',
    n.domain = 'SV',
    n.aliases = ['Native'];

MERGE (n:Concept {id: 'non_native'})
SET     n.name = 'Non-Native',
    n.name_kr = 'Non-Native',
    n.domain = 'SV',
    n.aliases = ['Non-Native'];

MERGE (n:Concept {id: '업무_연속성/관리용이/보안/비용절감'})
SET     n.name = '업무 연속성/관리용이/보안/비용절감',
    n.name_kr = '업무 연속성/관리용이/보안/비용절감',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'virtualization'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: 'virtualization'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: '캡슐화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: '샌드박싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: 'native'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: 'non_native'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Concept {id: '업무_연속성/관리용이/보안/비용절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Document {id: 'SV_141'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'application_virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캡슐화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '샌드박싱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'native'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'non_native'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_연속성/관리용이/보안/비용절감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_142: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_142'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_143: 리눅스의 가상화방식
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_143'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '리눅스의_가상화방식'})
SET     n.name = '리눅스의 가상화방식',
    n.name_kr = '리눅스의 가상화방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'full_virtualization'})
SET     n.name = '전가상화',
    n.name_kr = '전가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'para_virtualization'})
SET     n.name = '반가상화',
    n.name_kr = '반가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '에뮬레이션'})
SET     n.name = '에뮬레이션',
    n.name_kr = '에뮬레이션',
    n.domain = 'SV';

MERGE (n:Concept {id: 'os_레벨_가상화'})
SET     n.name = 'OS 레벨 가상화',
    n.name_kr = 'OS 레벨 가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '게스트_os'})
SET     n.name = '게스트 OS',
    n.name_kr = '게스트 OS',
    n.domain = 'SV';

MERGE (n:Concept {id: '호스트_os'})
SET     n.name = '호스트 OS',
    n.name_kr = '호스트 OS',
    n.domain = 'SV';

MERGE (n:Concept {id: '하이퍼바이저'})
SET     n.name = '하이퍼바이저',
    n.name_kr = '하이퍼바이저',
    n.domain = 'SV';

MERGE (n:Concept {id: 'virtual_machine'})
SET     n.name = 'Virtual machine',
    n.name_kr = 'Virtual machine',
    n.domain = 'SV',
    n.aliases = ['Virtual machine'];

MERGE (n:Concept {id: 'user-space(container'})
SET     n.name = 'User-Space(Container',
    n.name_kr = 'User-Space(Container',
    n.domain = 'SV';

MERGE (n:Concept {id: 'xen'})
SET     n.name = 'XEN',
    n.name_kr = 'XEN',
    n.domain = 'SV',
    n.aliases = ['XEN'];

MERGE (n:Concept {id: 'kvm'})
SET     n.name = 'KVM',
    n.name_kr = 'KVM',
    n.domain = 'SV',
    n.aliases = ['KVM'];

MERGE (n:Concept {id: 'openstack'})
SET     n.name = 'OpenStack',
    n.name_kr = 'OpenStack',
    n.domain = 'SV',
    n.aliases = ['OpenStack'];

MERGE (n:Concept {id: 'os레벨_가상화'})
SET     n.name = 'OS레벨 가상화',
    n.name_kr = 'OS레벨 가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '전체가상화'})
SET     n.name = '전체가상화',
    n.name_kr = '전체가상화',
    n.domain = 'SV',
    n.definition = 'VMware';

MERGE (n:Concept {id: 'z_vm'})
SET     n.name = 'z/VM',
    n.name_kr = 'z/VM',
    n.domain = 'SV',
    n.definition = 'System z용 OS 하이퍼바이저임. 코어에는 control program(cp)가 있는데 리눅스를 포함하여 게스트 os에 물리적 리소스들의 가상화 제공 - 서로 통신을 원하는 게스트 os를 위해 가상으로 게스트 로컬 영역 네트워크(lan)을 애뮬레이트',
    n.aliases = ['z/VM'];

MERGE (n:Concept {id: 'uml'})
SET     n.name = 'UML',
    n.name_kr = 'User-mode linux',
    n.domain = 'SV',
    n.definition = '리눅스 os가 사용자 공간에서 다른 리눅스 os를 실행할 수 있도록 하고 각각의 게스트 리눅스 os는 호스트 os의 프로세스 안에 존재함.',
    n.aliases = ['UML', 'User-mode linux'];

MERGE (n:Concept {id: 'qemu'})
SET     n.name = 'QEMU',
    n.name_kr = 'QEMU',
    n.domain = 'SV',
    n.definition = 'Full system Emulation 모드',
    n.aliases = ['QEMU'];

MERGE (n:Concept {id: 'user_mode_emulation_모드'})
SET     n.name = 'User mode Emulation 모드',
    n.name_kr = 'User mode Emulation 모드',
    n.domain = 'SV',
    n.definition = '리늑스에서만 호스팅가능. 다른 아키텍쳐용 바이너리시작 가능';

MERGE (n:Concept {id: 'openvz'})
SET     n.name = 'OpenVZ',
    n.name_kr = 'OpenVZ',
    n.domain = 'SV',
    n.definition = '고립된 사용자 공간 펜와 관리용 사용자 툴을 지원하는 가상화 인식(수정된) 커널',
    n.aliases = ['OpenVZ'];

// --- 관계 ---

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'full_virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'para_virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '에뮬레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'os_레벨_가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '게스트_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '호스트_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '하이퍼바이저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'virtual_machine'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'user-space(container'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'xen'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'kvm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'openstack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'full_virtualization'})
MERGE (b:Concept {id: 'para_virtualization'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'full_virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'para_virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '에뮬레이션'})
MERGE (b:Concept {id: 'os레벨_가상화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '에뮬레이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'os레벨_가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: '전체가상화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'z_vm'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'uml'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'qemu'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'user_mode_emulation_모드'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Concept {id: 'openvz'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Document {id: 'SV_143'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '리눅스의_가상화방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'full_virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'para_virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에뮬레이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os_레벨_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게스트_os'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스트_os'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이퍼바이저'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_machine'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user-space(container'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xen'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kvm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openstack'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'os레벨_가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전체가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'z_vm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qemu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user_mode_emulation_모드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'openvz'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_144: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_144'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_145: LXC (Linux Container)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_145'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'linux_container'})
SET     n.name = 'Linux Container',
    n.name_kr = 'LXC',
    n.domain = 'SV',
    n.aliases = ['Linux Container', 'LXC'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'lxc'})
SET     n.name = 'LXC',
    n.name_kr = 'LXC',
    n.domain = 'SV',
    n.aliases = ['LXC'];

MERGE (n:Concept {id: 'namespaces'})
SET     n.name = 'Namespaces',
    n.name_kr = 'Namespaces',
    n.domain = 'SV',
    n.aliases = ['Namespaces'];

MERGE (n:Concept {id: 'cgroups'})
SET     n.name = 'cgroups',
    n.name_kr = 'cgroups',
    n.domain = 'SV',
    n.aliases = ['cgroups'];

MERGE (n:Concept {id: '경량_프로세스_가상화_기술'})
SET     n.name = '경량 프로세스 가상화 기술',
    n.name_kr = '경량 프로세스 가상화 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '컨테이너'})
SET     n.name = '컨테이너',
    n.name_kr = '컨테이너',
    n.domain = 'SV';

MERGE (n:Concept {id: '짧은_가동시간'})
SET     n.name = '짧은 가동시간',
    n.name_kr = '짧은 가동시간',
    n.domain = 'SV';

MERGE (n:Concept {id: '적은_자원_소요'})
SET     n.name = '적은 자원 소요',
    n.name_kr = '적은 자원 소요',
    n.domain = 'SV';

MERGE (n:Concept {id: '컨테이너_기반_가상화_기술'})
SET     n.name = '컨테이너 기반 가상화 기술',
    n.name_kr = '컨테이너 기반 가상화 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '하이퍼바이저_기반_가상화_기술'})
SET     n.name = '하이퍼바이저 기반 가상화 기술',
    n.name_kr = '하이퍼바이저 기반 가상화 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'lxc'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: 'namespaces'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: 'cgroups'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '경량_프로세스_가상화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '컨테이너'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '짧은_가동시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '적은_자원_소요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컨테이너_기반_가상화_기술'})
MERGE (b:Concept {id: '하이퍼바이저_기반_가상화_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '컨테이너_기반_가상화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '하이퍼바이저_기반_가상화_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Document {id: 'SV_145'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'linux_container'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lxc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'namespaces'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cgroups'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량_프로세스_가상화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '짧은_가동시간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적은_자원_소요'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_기반_가상화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이퍼바이저_기반_가상화_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_146: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_146'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 517개
// 관계: 1049개
// ================================================================