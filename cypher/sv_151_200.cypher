// ================================================================
// SV 도메인 (SV_151 ~ SV_200) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_147: 컨테이너 오케스트레이션
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_147'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '컨테이너_오케스트레이션'})
SET     n.name = '컨테이너 오케스트레이션',
    n.name_kr = '컨테이너 오케스트레이션',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Threat {id: '[스쿠메]_스웜'})
SET     n.name = '[스쿠메] 스웜',
    n.name_kr = '[스쿠메] 스웜',
    n.domain = 'SV';

MERGE (n:Concept {id: '쿠버네티스'})
SET     n.name = '쿠버네티스',
    n.name_kr = '쿠버네티스',
    n.domain = 'SV';

MERGE (n:Concept {id: '메소스'})
SET     n.name = '메소스',
    n.name_kr = '메소스',
    n.domain = 'SV';

MERGE (n:Concept {id: '기술적_기능'})
SET     n.name = '기술적 기능',
    n.name_kr = '기술적 기능',
    n.domain = 'SV',
    n.definition = '클러스터링 (Clustering)';

MERGE (n:Concept {id: 'load_balancing'})
SET     n.name = 'Load Balancing',
    n.name_kr = '로드밸런싱',
    n.domain = 'SV',
    n.definition = '생성된 컨테이너의 컴퓨팅 자원 사용량 설정 및 자동 배분',
    n.aliases = ['Load Balancing', '로드밸런싱'];

MERGE (n:Concept {id: 'scheduling'})
SET     n.name = 'Scheduling',
    n.name_kr = '스케줄링',
    n.domain = 'SV',
    n.definition = '컨테이너를 적합한 서버에 나누어 배포 - 서버 다운 시 컨테이너를 다른 서버에 구동',
    n.aliases = ['Scheduling', '스케줄링'];

MERGE (n:Concept {id: '프로비저닝'})
SET     n.name = '프로비저닝',
    n.name_kr = '프로비저닝',
    n.domain = 'SV',
    n.definition = '컨테이너 클러스터 내부에서 컨테이너 프로비저닝 - 자원, 지리적 위치 기반 컨테이너 스핀업(Spin up)';

MERGE (n:Concept {id: '구성_스크립팅'})
SET     n.name = '구성 스크립팅',
    n.name_kr = '구성 스크립팅',
    n.domain = 'SV',
    n.definition = '특정 애플리케이션 구성정보를 컨테이너에 로드 - YAML, JSON으로 작성';

MERGE (n:Concept {id: '서비스_기능'})
SET     n.name = '서비스 기능',
    n.name_kr = '서비스 기능',
    n.domain = 'SV',
    n.definition = '서비스 디스커버리 (Service Discovery)';

MERGE (n:Concept {id: '로깅/모니터링'})
SET     n.name = 'Logging/Monitoring',
    n.name_kr = '로깅/모니터링',
    n.domain = 'SV',
    n.definition = '중앙 집중적으로 서버 상태 모니터링 및 로그 관리',
    n.aliases = ['Logging/Monitoring', '로깅/모니터링'];

MERGE (n:Concept {id: '업그레이드와_롤백'})
SET     n.name = '업그레이드와 롤백',
    n.name_kr = '업그레이드와 롤백',
    n.domain = 'SV',
    n.definition = '자동 업데이트 및 장애시 롤백 지원';

MERGE (n:Concept {id: '컨테이너_정책_관리'})
SET     n.name = '컨테이너 정책 관리',
    n.name_kr = '컨테이너 정책 관리',
    n.domain = 'SV',
    n.definition = 'CPU, 실행 위치 등 컨테이너 정책 수립';

MERGE (n:Concept {id: '상호운용성'})
SET     n.name = '상호운용성',
    n.name_kr = '상호운용성',
    n.domain = 'SV',
    n.definition = '사용자의 기존 IT 관리 도구와 연동';

// --- 관계 ---

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Threat {id: '[스쿠메]_스웜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '쿠버네티스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '메소스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '기술적_기능'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: 'load_balancing'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: 'scheduling'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '프로비저닝'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '구성_스크립팅'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '서비스_기능'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '로깅/모니터링'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '업그레이드와_롤백'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '컨테이너_정책_관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Concept {id: '상호운용성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Document {id: 'SV_147'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '컨테이너_오케스트레이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '[스쿠메]_스웜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쿠버네티스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메소스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'load_balancing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scheduling'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로비저닝'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_스크립팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로깅/모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업그레이드와_롤백'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_정책_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_148.1: 쿠버네티스(Kubernetes)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_148.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Technology {id: 'kubernetes'})
SET     n.name = 'Kubernetes',
    n.name_kr = '쿠버네티스',
    n.domain = 'SV',
    n.aliases = ['Kubernetes', '쿠버네티스'];

MERGE (n:Concept {id: '기타토픽'})
SET     n.name = '기타토픽',
    n.name_kr = '기타토픽',
    n.domain = 'SV';

MERGE (n:Concept {id: '마스터노드'})
SET     n.name = '마스터노드',
    n.name_kr = '마스터노드',
    n.domain = 'SV';

MERGE (n:Concept {id: '워커노드'})
SET     n.name = '워커노드',
    n.name_kr = '워커노드',
    n.domain = 'SV';

MERGE (n:Metric {id: 'ha'})
SET     n.name = '고가용성',
    n.name_kr = '고가용성',
    n.domain = 'SV';

MERGE (n:Concept {id: 'kubelet'})
SET     n.name = 'Kubelet',
    n.name_kr = 'Kubelet',
    n.domain = 'SV',
    n.aliases = ['Kubelet'];

MERGE (n:Concept {id: 'kube_proxy'})
SET     n.name = 'Kube-proxy',
    n.name_kr = 'Kube-proxy',
    n.domain = 'SV',
    n.aliases = ['Kube-proxy'];

MERGE (n:Technology {id: 'docker'})
SET     n.name = 'Docker',
    n.name_kr = '컨테이너 런타임',
    n.domain = 'SV',
    n.aliases = ['Docker', '컨테이너 런타임'];

MERGE (n:Concept {id: 'pod'})
SET     n.name = 'Pod',
    n.name_kr = 'Pod',
    n.domain = 'SV',
    n.aliases = ['Pod'];

MERGE (n:Concept {id: 'control_plane'})
SET     n.name = 'Control Plane',
    n.name_kr = 'Master Node',
    n.domain = 'SV',
    n.definition = 'Kubu API Server',
    n.aliases = ['Control Plane', 'Master Node'];

MERGE (n:Concept {id: 'kubu_scheduler'})
SET     n.name = 'Kubu Scheduler',
    n.name_kr = 'Kubu Scheduler',
    n.domain = 'SV',
    n.definition = 'Pod, 서비스 등 각 자원을 적절한 노드에 할당하는 역할 - 공유 상태 스케줄링(Shared-State Scheduling)으로 리소스 할당을 결정',
    n.aliases = ['Kubu Scheduler'];

MERGE (n:Concept {id: 'kubu_controller_manager'})
SET     n.name = 'Kubu Controller Manager',
    n.name_kr = 'Kubu Controller Manager',
    n.domain = 'SV',
    n.definition = '여러 Controller등을 생성하고 각 Node에 배포 및 관리 역할',
    n.aliases = ['Kubu Controller Manager'];

MERGE (n:Concept {id: 'replication_controller'})
SET     n.name = 'Replication Controller',
    n.name_kr = 'Replication Controller',
    n.domain = 'SV',
    n.definition = 'Pod 기동 및 장애 발생시 새로운 Pod 생성',
    n.aliases = ['Replication Controller'];

MERGE (n:Concept {id: 'services_controller'})
SET     n.name = 'Services Controller',
    n.name_kr = 'Services Controller',
    n.domain = 'SV',
    n.definition = '신규로 생성된 Pod 의 분하 분산 요청 관리',
    n.aliases = ['Services Controller'];

MERGE (n:Concept {id: 'node_controller'})
SET     n.name = 'Node Controller',
    n.name_kr = 'Node Controller',
    n.domain = 'SV',
    n.definition = 'Node 장애 발생시 알림과 장애 조치 역할 수행',
    n.aliases = ['Node Controller'];

MERGE (n:Concept {id: 'end_point_controller'})
SET     n.name = 'End-Point Controller',
    n.name_kr = 'End-Point Controller',
    n.domain = 'SV',
    n.definition = '서비스와 Pod를 연결',
    n.aliases = ['End-Point Controller'];

MERGE (n:Concept {id: 'cloud_controller_manager'})
SET     n.name = 'Cloud Controller Manager',
    n.name_kr = 'Cloud Controller Manager',
    n.domain = 'SV',
    n.definition = '클라우드 제공자 전용 컨트롤러 (사내 또는 PC내부 환경에서는 제외)',
    n.aliases = ['Cloud Controller Manager'];

MERGE (n:Concept {id: 'router_controller'})
SET     n.name = 'Router Controller',
    n.name_kr = 'Router Controller',
    n.domain = 'SV',
    n.definition = '기본 클라우드 인프라에 경로 구성',
    n.aliases = ['Router Controller'];

MERGE (n:Concept {id: 'etcd'})
SET     n.name = 'etcd',
    n.name_kr = 'etcd',
    n.domain = 'SV',
    n.definition = '모든 클러스터 데이터를 담는 저장소',
    n.aliases = ['etcd'];

MERGE (n:Concept {id: 'worker_node'})
SET     n.name = 'Worker Node',
    n.name_kr = 'Worker Node',
    n.domain = 'SV',
    n.definition = 'Pod',
    n.aliases = ['Worker Node'];

MERGE (n:Technology {id: '컨테이너_런타입'})
SET     n.name = '컨테이너 런타입',
    n.name_kr = '컨테이너 런타입',
    n.domain = 'SV',
    n.definition = 'Pod를 통해서 배포된 컨테이너를 실행. - Docker, containerd. CRI-O, Kubernetes CRI(Container Runtime Interface) 구현';

MERGE (n:Concept {id: 'user'})
SET     n.name = 'User',
    n.name_kr = 'User',
    n.domain = 'SV',
    n.definition = 'kubectl',
    n.aliases = ['User'];

MERGE (n:Concept {id: '애드온'})
SET     n.name = '애드온',
    n.name_kr = '애드온',
    n.domain = 'SV',
    n.definition = 'DNS';

MERGE (n:Concept {id: 'dashboard'})
SET     n.name = 'Dashboard',
    n.name_kr = 'Dashboard',
    n.domain = 'SV',
    n.definition = '쿠버네티스 클러스터를 위한 범용의 웹기반 UI',
    n.aliases = ['Dashboard'];

MERGE (n:Concept {id: '컨테이너_리소스_모니터링'})
SET     n.name = '컨테이너 리소스 모니터링',
    n.name_kr = '컨테이너 리소스 모니터링',
    n.domain = 'SV',
    n.definition = '중앙 데이터베이스내의 컨테이너들에 대한 포괄적인 시계열 매트릭스를 기록하고 그 데이터를 열람하기 위한 UI 제공';

MERGE (n:Concept {id: '클러스터-레벨_로깅'})
SET     n.name = '클러스터-레벨 로깅',
    n.name_kr = '클러스터-레벨 로깅',
    n.domain = 'SV',
    n.definition = '검색/열람 인터페이스와 함께 중앙 로그 저장소에 컨테이너 로그를 저장';

MERGE (n:Concept {id: '생산성_측면'})
SET     n.name = '생산성 측면',
    n.name_kr = '생산성 측면',
    n.domain = 'SV',
    n.definition = '기민한 애플리케이션 생성과 배포';

MERGE (n:Concept {id: '지속적인_개발,_통합_및_배포:'})
SET     n.name = '지속적인 개발, 통합 및 배포:',
    n.name_kr = '지속적인 개발, 통합 및 배포:',
    n.domain = 'SV',
    n.definition = '안정적이고 주기적으로 컨테이너 이미지를 빌드해서 배포할 수 있고 (이미지의 불변성 덕에) 빠르고 쉽게 롤백 가능';

MERGE (n:Concept {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SV',
    n.definition = '개발과 운영의 관심사 분리';

MERGE (n:Concept {id: '가시성'})
SET     n.name = '가시성',
    n.name_kr = '가시성',
    n.domain = 'SV',
    n.definition = 'OS 수준의 정보와 메트릭에 머무르지 않고, 애플리케이션의 헬스와 그 밖의 시그널을 볼 수 있음';

MERGE (n:Concept {id: '서비스_측면'})
SET     n.name = '서비스 측면',
    n.name_kr = '서비스 측면',
    n.domain = 'SV',
    n.definition = '개발, 테스팅 및 운영 환경을 걸친 일관성';

MERGE (n:Technology {id: '클라우드_및_os_배포판_간_이식성'})
SET     n.name = '클라우드 및 OS 배포판 간 이식성',
    n.name_kr = '클라우드 및 OS 배포판 간 이식성',
    n.domain = 'SV',
    n.definition = 'Ubuntu, RHEL, CoreOS, on-prem, Google Kubernetes Engine 및 다른 어디에서든 구동됨';

MERGE (n:Concept {id: '애플리케이션_중심_관리'})
SET     n.name = '애플리케이션 중심 관리',
    n.name_kr = '애플리케이션 중심 관리',
    n.domain = 'SV',
    n.definition = '가상 하드웨어의 OS에서 애플리케이션을 구동하는 수준에서 OS의 논리적인 자원을 사용하여 애플리케이션을 구동하는 수준으로 추상화 수준이 높아짐';

MERGE (n:Concept {id: '느슨하게_커플되고,_분산되고,_유연하며,_자유로운_마이크로서비스'})
SET     n.name = '느슨하게 커플되고, 분산되고, 유연하며, 자유로운 마이크로서비스',
    n.name_kr = '느슨하게 커플되고, 분산되고, 유연하며, 자유로운 마이크로서비스',
    n.domain = 'SV',
    n.definition = '애플리케이션은 단일 목적의 머신에서 모놀리식 스택으로 구동되지 않고 보다 작고 독립적인 단위로 쪼개져서 동적으로 배포되고 관리됨';

MERGE (n:Concept {id: '자원_격리'})
SET     n.name = '자원 격리',
    n.name_kr = '자원 격리',
    n.domain = 'SV',
    n.definition = '애플리케이션 성능을 예측 가능';

// --- 관계 ---

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '기타토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '마스터노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '워커노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Metric {id: 'ha'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'kubelet'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'kube_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Technology {id: 'docker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'pod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'control_plane'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'kubu_scheduler'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'kubu_controller_manager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'replication_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'services_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'node_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'end_point_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'cloud_controller_manager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'router_controller'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'etcd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'worker_node'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Technology {id: '컨테이너_런타입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '애드온'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: 'dashboard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '컨테이너_리소스_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '클러스터-레벨_로깅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '생산성_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '지속적인_개발,_통합_및_배포:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '관리적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '가시성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '서비스_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Technology {id: '클라우드_및_os_배포판_간_이식성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '애플리케이션_중심_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '느슨하게_커플되고,_분산되고,_유연하며,_자유로운_마이크로서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Concept {id: '자원_격리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Document {id: 'SV_148.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'kubernetes'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타토픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '워커노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'ha'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kubelet'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kube_proxy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'docker'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pod'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'control_plane'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kubu_scheduler'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kubu_controller_manager'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'replication_controller'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'services_controller'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'node_controller'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'end_point_controller'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_controller_manager'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'router_controller'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'etcd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'worker_node'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '컨테이너_런타입'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'user'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애드온'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dashboard'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨테이너_리소스_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클러스터-레벨_로깅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산성_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적인_개발,_통합_및_배포:'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가시성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '클라우드_및_os_배포판_간_이식성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애플리케이션_중심_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '느슨하게_커플되고,_분산되고,_유연하며,_자유로운_마이크로서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_격리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_148.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_148.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_149.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_149.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_149.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_149.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_149.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_149.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_150: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_150'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_151.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_151.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_151.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_151.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_152: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_152'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_153: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_153'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_154: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_154'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_155: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_155'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_156: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_156'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_161: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_161'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_163: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_163'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_164: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_164'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_165: 지능정보화 기본법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_165'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '지능정보화_기본법'})
SET     n.name = '지능정보화 기본법',
    n.name_kr = '지능정보화 기본법',
    n.domain = 'SV';

MERGE (n:Concept {id: '산업정책'})
SET     n.name = '산업정책',
    n.name_kr = '산업정책',
    n.domain = 'SV';

MERGE (n:Concept {id: '4차_산업혁명위원회'})
SET     n.name = '4차 산업혁명위원회',
    n.name_kr = '4차 산업혁명위원회',
    n.domain = 'SV';

MERGE (n:Concept {id: '지능정보화종합계획'})
SET     n.name = '지능정보화종합계획',
    n.name_kr = '지능정보화종합계획',
    n.domain = 'SV';

MERGE (n:Concept {id: '제3장_분야별_지능정보화의_추진'})
SET     n.name = '제3장 분야별 지능정보화의 추진',
    n.name_kr = '제3장 분야별 지능정보화의 추진',
    n.domain = 'SV';

MERGE (n:Concept {id: '제5장_지능정보화의_기반_구축'})
SET     n.name = '제5장 지능정보화의 기반 구축',
    n.name_kr = '제5장 지능정보화의 기반 구축',
    n.domain = 'SV';

MERGE (n:Concept {id: '제6장_지능정보사회의_기반_조성'})
SET     n.name = '제6장 지능정보사회의 기반 조성',
    n.name_kr = '제6장 지능정보사회의 기반 조성',
    n.domain = 'SV';

MERGE (n:Concept {id: '개정'})
SET     n.name = '개정(전)',
    n.name_kr = '개정(전)',
    n.domain = 'SV';

MERGE (n:Concept {id: '개정사항'})
SET     n.name = '개정사항',
    n.name_kr = '개정사항',
    n.domain = 'SV';

MERGE (n:Concept {id: '상세내용'})
SET     n.name = '상세내용',
    n.name_kr = '상세내용',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '산업정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '4차_산업혁명위원회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '지능정보화종합계획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '제3장_분야별_지능정보화의_추진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '제5장_지능정보화의_기반_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '제6장_지능정보사회의_기반_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개정'})
MERGE (b:Concept {id: '개정'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '개정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '개정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개정사항'})
MERGE (b:Concept {id: '상세내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '개정사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Concept {id: '상세내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Document {id: 'SV_165'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '지능정보화_기본법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업정책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4차_산업혁명위원회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능정보화종합계획'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제3장_분야별_지능정보화의_추진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제5장_지능정보화의_기반_구축'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제6장_지능정보사회의_기반_조성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세내용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_167.1: 포지티브 규제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_167.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '포지티브_규제'})
SET     n.name = '포지티브 규제',
    n.name_kr = '포지티브 규제',
    n.domain = 'SV';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: '네거티브_규제'})
SET     n.name = '네거티브 규제',
    n.name_kr = '네거티브 규제',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Concept {id: '네거티브_규제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Concept {id: '네거티브_규제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Concept {id: '네거티브_규제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Concept {id: '네거티브_규제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Document {id: 'SV_167.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '포지티브_규제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네거티브_규제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_167.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_167.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_168.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_168.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_168.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_168.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_168.3: 3D 바이오 프린팅
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_168.3'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '3d_바이오_프린팅'})
SET     n.name = '3D 바이오 프린팅',
    n.name_kr = '3D 바이오 프린팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '3d_printing'})
SET     n.name = '3D Printing',
    n.name_kr = '3D Printing',
    n.domain = 'SV';

MERGE (n:Concept {id: '잉크제_바이오_프린팅'})
SET     n.name = '잉크제 바이오 프린팅',
    n.name_kr = '잉크제 바이오 프린팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '미세압출_바이오_프린팅'})
SET     n.name = '미세압출 바이오 프린팅',
    n.name_kr = '미세압출 바이오 프린팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '장기_프린팅'})
SET     n.name = '장기 프린팅',
    n.name_kr = '장기 프린팅',
    n.domain = 'SV',
    n.definition = '수만 개의 세포로 이루어진 바이오 잉크를 원하는 모양으로 적층하는 3D 프린팅 기술 - 3D 프린팅한 인공간이 40일 동안 살아남는 것을 확인하여 인공장기의 가능성을 보여줌';

MERGE (n:Concept {id: '근육과_뼈의_제작'})
SET     n.name = '근육과 뼈의 제작',
    n.name_kr = '근육과 뼈의 제작',
    n.domain = 'SV',
    n.definition = '바이오 잉크를 이용하여 줄기세포(stemcell)를 두 가지 다른 라인으로 분화하는데 성공 설계와 정확성 체크';

MERGE (n:Concept {id: '탈세포화된_조직'})
SET     n.name = '탈세포화된 조직',
    n.name_kr = '탈세포화된 조직',
    n.domain = 'SV',
    n.definition = '실제 조직이나 장기에 여러 가지 화학물질로 처리해 세포만 제거한 조직으로 대부분의 세포외 기질과 고유한 구성비를 그대로 유지, 조직 재생을 위한 생체적합성 재료로 각광';

MERGE (n:Concept {id: '바이오잉크'})
SET     n.name = '바이오잉크',
    n.name_kr = '바이오잉크',
    n.domain = 'SV',
    n.definition = '3D 세포 프린팅 기술을 이용, 인공 조직을 제작할 때 세포를 넣어 분사하는 재료로 분사가 가능한 점도, 형태를 유지할 수 있는 기계적 강도를 지녀야 하며, 물론 생체 적합성을 가지고 있어야 한다. 콜라겐, 알지네이트 등의 하이드로젤이 주로 사용';

MERGE (n:Concept {id: '세포외_기질'})
SET     n.name = '세포외 기질',
    n.name_kr = '세포외 기질',
    n.domain = 'SV',
    n.definition = '조직 내 또는 세포외의 공간을 채우고 있는 생체고분자의 복잡한 집합체';

MERGE (n:Concept {id: '중간엽_줄기세포'})
SET     n.name = '중간엽 줄기세포',
    n.name_kr = '중간엽 줄기세포',
    n.domain = 'SV',
    n.definition = '성체에서 분리한 다능성 세포로 골수, 지방, 하비갑개 등에서 추출되며 분화가 안정적으로 이루어져 암세포로 변이를 일으킬 가능성이 없고 이미 임상 적용이 가능한 단계';

// --- 관계 ---

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '3d_printing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '잉크제_바이오_프린팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '미세압출_바이오_프린팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '장기_프린팅'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '근육과_뼈의_제작'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '탈세포화된_조직'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '바이오잉크'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '세포외_기질'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Concept {id: '중간엽_줄기세포'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Document {id: 'SV_168.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3d_바이오_프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_printing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잉크제_바이오_프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미세압출_바이오_프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장기_프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '근육과_뼈의_제작'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈세포화된_조직'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '바이오잉크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세포외_기질'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중간엽_줄기세포'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_168.4: 4D Printing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_168.4'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '4d_printing'})
SET     n.name = '4D Printing',
    n.name_kr = '4D Printing',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '3d_printing'})
SET     n.name = '3D Printing',
    n.name_kr = '3D Printing',
    n.domain = 'SV';

MERGE (n:Concept {id: 'self_assembly'})
SET     n.name = 'Self-Assembly',
    n.name_kr = '자가변환',
    n.domain = 'SV',
    n.aliases = ['Self-Assembly', '자가변환'];

MERGE (n:Concept {id: '자가조립'})
SET     n.name = '자가조립',
    n.name_kr = '자가조립',
    n.domain = 'SV';

MERGE (n:Concept {id: '3d_프린팅_기술'})
SET     n.name = '3D 프린팅 기술',
    n.name_kr = '3D 프린팅 기술',
    n.domain = 'SV',
    n.definition = '기존 3D 프린팅 기술로 1차 출력물생성';

MERGE (n:Concept {id: '스마트소재'})
SET     n.name = '스마트소재',
    n.name_kr = '스마트소재',
    n.domain = 'SV',
    n.definition = '물이나, 온도변화, 빛에 반응하는 소재. 물체 변형을 일으킬 수 있는 소재.';

MERGE (n:Concept {id: '외부자극_에너지원'})
SET     n.name = '외부자극 에너지원',
    n.name_kr = '외부자극 에너지원',
    n.domain = 'SV',
    n.definition = '출력물의 변환을 유발하는 외부 자극이나 에너지원.';

MERGE (n:Concept {id: '자가변형/조립기술'})
SET     n.name = '자가변형/조립기술',
    n.name_kr = '자가변형/조립기술',
    n.domain = 'SV',
    n.definition = '외부 자극에 의해 스스로 형태를 변형. 조건과 변경될 모양을 사전에 프로그래밍.';

MERGE (n:Concept {id: '3d프린팅'})
SET     n.name = '3D프린팅',
    n.name_kr = '3D프린팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '4d_프린팅'})
SET     n.name = '4D 프린팅',
    n.name_kr = '4D 프린팅',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '3d_printing'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '3d_printing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: 'self_assembly'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '자가조립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '3d_프린팅_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '스마트소재'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '외부자극_에너지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '자가변형/조립기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3d프린팅'})
MERGE (b:Concept {id: '4d_프린팅'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '3d프린팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Concept {id: '4d_프린팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Document {id: 'SV_168.4'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '4d_printing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_printing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_assembly'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자가조립'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_프린팅_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트소재'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부자극_에너지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자가변형/조립기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4d_프린팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_169.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_169.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_169.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_169.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_170: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_170'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_171.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_171.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_171.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_171.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_172: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_172'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_174: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_174'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_175: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_175'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.5'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_176.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_176.6'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_177.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_177.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_177.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_177.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_177.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_177.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_178.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_178.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_178.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_178.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_182: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_182'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_183: 스마트시티 통합플랫폼
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_183'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스마트시티_통합플랫폼'})
SET     n.name = '스마트시티 통합플랫폼',
    n.name_kr = '스마트시티 통합플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '스마트시티'})
SET     n.name = '스마트시티',
    n.name_kr = '스마트시티',
    n.domain = 'SV';

MERGE (n:Concept {id: 'db'})
SET     n.name = 'DB',
    n.name_kr = 'DB',
    n.domain = 'SV',
    n.aliases = ['DB'];

MERGE (n:Concept {id: 'physical_domain'})
SET     n.name = 'Physical domain',
    n.name_kr = 'Physical domain',
    n.domain = 'SV',
    n.definition = 'Manufacturing, Transportation, Energy, Healthcare etc.',
    n.aliases = ['Physical domain'];

MERGE (n:Technology {id: 'communications_infra'})
SET     n.name = 'Communications infra',
    n.name_kr = 'Communications infra',
    n.domain = 'SV',
    n.definition = '5G, gNB(Small cells), Wifi, Duct, Pole, Manhole, Sites, Fibre, Industrial IoT, Blockchain',
    n.aliases = ['Communications infra'];

MERGE (n:Concept {id: 'cloud_platform_infra'})
SET     n.name = 'Cloud Platform infra',
    n.name_kr = 'Cloud Platform infra',
    n.domain = 'SV',
    n.definition = 'Bigdata, Cloud computing, Analytics, machine learning',
    n.aliases = ['Cloud Platform infra'];

MERGE (n:Concept {id: 'open_business_model'})
SET     n.name = 'Open Business Model',
    n.name_kr = 'OBM',
    n.domain = 'SV',
    n.definition = '스마트시티 구축을 모든 사업자와 함께 구축하는 모델 - 정부는 통신망 사업자가 이용자에게 서비스를 제공할 때, 규제의무를 부여 - 플랫폼 기반 인큐베이터 모델',
    n.aliases = ['Open Business Model', 'OBM'];

MERGE (n:Concept {id: 'bom'})
SET     n.name = 'Build, Operate, Manage',
    n.name_kr = 'BOM',
    n.domain = 'SV',
    n.definition = '지자체가 인프라 구축 및 운영 등에 대한 신뢰를 가진 통신망사업자 및 플랫폼 파트너사를 각각 독립된 기업으로 지정 - 파트너사가 완전히 독립적으로 통신설비 인프라를 구축하게 하고, 플랫폼 인프라 기반 서비스를 이용자에게 제공하여 지자체는 특정한 역할을 담당하지 않음 - 계약자모델',
    n.aliases = ['Build, Operate, Manage', 'BOM'];

MERGE (n:Concept {id: 'bot'})
SET     n.name = 'Build, Operate, Transfer',
    n.name_kr = 'BOT',
    n.domain = 'SV',
    n.definition = '지자체가 Network operator를 파트너사로 지정하여 이 사업자에게 통신설비 인프라를 구축 · 운영하게 함 - 두가지 형태의 플랫폼 인프라 구축·운영·유지·관리 1) 지자체가 처음부터 플랫폼 인프라를 직접 구축하고 운영·유지·관리하는 것 2) 처음에는 비용회피를 목적으로 플랫폼 인프라의 구축·운영·관리를 민간업체에 맡기고 일정기간 후 지자체가 인수받',
    n.aliases = ['Build, Operate, Transfer', 'BOT'];

MERGE (n:Concept {id: 'boo'})
SET     n.name = 'Build, Own, Operate',
    n.name_kr = 'BOO',
    n.domain = 'SV',
    n.definition = '지자체가 통신설비 및 플랫폼 모두를 완전히 독립적으로 구축하고 유지·운영·관리를 완전히 통제하여 서비스를 제공 - 중앙모델',
    n.aliases = ['Build, Own, Operate', 'BOO'];

// --- 관계 ---

MERGE (a:Concept {id: '스마트시티'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: '스마트시티'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'db'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'physical_domain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Technology {id: 'communications_infra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'cloud_platform_infra'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'open_business_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'bom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'bot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Concept {id: 'boo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Document {id: 'SV_183'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트시티_통합플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'physical_domain'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'communications_infra'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_platform_infra'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_business_model'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'boo'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_184.1: BIM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_184.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'bim'})
SET     n.name = 'BIM',
    n.name_kr = 'BIM',
    n.domain = 'SV',
    n.aliases = ['BIM'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '스마트시티'})
SET     n.name = '스마트시티',
    n.name_kr = '스마트시티',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '스마트시티'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bim'})
MERGE (b:Concept {id: '스마트시티'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bim'})
MERGE (b:Document {id: 'SV_184.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bim'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트시티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_184.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_184.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_185: Second Life
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_185'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'second_life'})
SET     n.name = 'Second Life',
    n.name_kr = 'Second Life',
    n.domain = 'SV',
    n.aliases = ['Second Life'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '3d_가상세계'})
SET     n.name = '3D 가상세계',
    n.name_kr = '3D 가상세계',
    n.domain = 'SV';

MERGE (n:Concept {id: '아바타'})
SET     n.name = '아바타',
    n.name_kr = '아바타',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상_상거래'})
SET     n.name = '가상 상거래',
    n.name_kr = '가상 상거래',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Concept {id: '3d_가상세계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Concept {id: '아바타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Concept {id: '가상_상거래'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Document {id: 'SV_185'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'second_life'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3d_가상세계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아바타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_상거래'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_186.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_186.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_186.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_186.2'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 103개
// 관계: 213개
// ================================================================