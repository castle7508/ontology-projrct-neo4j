// ================================================================
// DB 도메인 (DB_101 ~ DB_150) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// DB_099: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_099'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_100: 람다 아키텍처(Lamda)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_100'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'lamda'})
SET     n.name = 'Lamda',
    n.name_kr = '람다 아키텍처',
    n.domain = 'DB',
    n.aliases = ['Lamda', '람다 아키텍처'];

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big data',
    n.name_kr = 'Big data',
    n.domain = 'DB',
    n.aliases = ['Big data'];

MERGE (n:Concept {id: 'lambda_architecture'})
SET     n.name = '람다 아키텍처',
    n.name_kr = '람다 아키텍처',
    n.domain = 'DB';

MERGE (n:Concept {id: '스배서'})
SET     n.name = '스배서',
    n.name_kr = '스배서',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'lambda_architecture'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lamda'})
MERGE (b:Concept {id: '스배서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lamda'})
MERGE (b:Document {id: 'DB_100'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lamda'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lambda_architecture'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스배서'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_101: 카파 아키텍처(Kappa)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_101'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'kappa'})
SET     n.name = 'Kappa',
    n.name_kr = '카파 아키텍처',
    n.domain = 'DB',
    n.aliases = ['Kappa', '카파 아키텍처'];

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big data',
    n.name_kr = 'Big data',
    n.domain = 'DB',
    n.aliases = ['Big data'];

MERGE (n:Concept {id: '스서'})
SET     n.name = '스서',
    n.name_kr = '스서',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'kappa'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'kappa'})
MERGE (b:Concept {id: '스서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'kappa'})
MERGE (b:Document {id: 'DB_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'kappa'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스서'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_102: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_102'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_103: 메시지 큐잉
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_103'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '메시지_큐잉'})
SET     n.name = '메시지 큐잉',
    n.name_kr = '메시지 큐잉',
    n.domain = 'DB';

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big Data',
    n.name_kr = 'Big Data',
    n.domain = 'DB',
    n.aliases = ['Big Data'];

MERGE (n:Concept {id: 'amqp'})
SET     n.name = 'AMQP',
    n.name_kr = 'AMQP',
    n.domain = 'DB',
    n.aliases = ['AMQP'];

MERGE (n:Technology {id: 'rabbitmq'})
SET     n.name = 'RabbitMQ',
    n.name_kr = 'RabbitMQ',
    n.domain = 'DB',
    n.aliases = ['RabbitMQ'];

MERGE (n:Concept {id: 'activemq'})
SET     n.name = 'ActiveMQ',
    n.name_kr = 'ActiveMQ',
    n.domain = 'DB',
    n.aliases = ['ActiveMQ'];

MERGE (n:Concept {id: 'zeromq'})
SET     n.name = 'ZeroMQ',
    n.name_kr = 'ZeroMQ',
    n.domain = 'DB',
    n.aliases = ['ZeroMQ'];

MERGE (n:Technology {id: 'kafka'})
SET     n.name = 'Kafka',
    n.name_kr = 'Kafka',
    n.domain = 'DB',
    n.aliases = ['Kafka'];

MERGE (n:Concept {id: 'producer'})
SET     n.name = 'producer',
    n.name_kr = 'producer',
    n.domain = 'DB',
    n.aliases = ['producer'];

MERGE (n:Concept {id: 'consumer'})
SET     n.name = 'consumer',
    n.name_kr = 'consumer',
    n.domain = 'DB',
    n.aliases = ['consumer'];

MERGE (n:Concept {id: 'cluster'})
SET     n.name = 'cluster',
    n.name_kr = 'cluster',
    n.domain = 'DB',
    n.aliases = ['cluster'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: 'queue'})
SET     n.name = 'Queue',
    n.name_kr = 'Queue',
    n.domain = 'DB',
    n.definition = 'Producer들이 발송한 메세지들이 Consumer가 소비하기 전까지 보관되는 장소',
    n.aliases = ['Queue'];

MERGE (n:Concept {id: 'exchange'})
SET     n.name = 'Exchange',
    n.name_kr = 'Exchange',
    n.domain = 'DB',
    n.definition = 'Producer들에게서 전달받은 메세지들을 어떤 Queue들에게 발송할지를 결정하는 객체, 일종의 라우터 유형: fanout, direct, topic, header',
    n.aliases = ['Exchange'];

MERGE (n:Concept {id: 'binding'})
SET     n.name = 'Binding',
    n.name_kr = 'Binding',
    n.domain = 'DB',
    n.definition = 'Exchange에게 메세지를 라우팅 할 규칙을 지정하는 행위',
    n.aliases = ['Binding'];

MERGE (n:Concept {id: '주요_기능'})
SET     n.name = '주요 기능',
    n.name_kr = '주요 기능',
    n.domain = 'DB',
    n.definition = '메시지 분배 (Round-robin dispatching)';

MERGE (n:Concept {id: 'fair_dispatch'})
SET     n.name = 'Fair dispatch',
    n.name_kr = '공평한 분배',
    n.domain = 'DB',
    n.definition = 'busy한 서버에게 메시지를 계속 전달하지 않도록 prefetchCount라는 개념 사용하여 prefetchCount가 1일때는 아직 ack를 받지 못한 메시지가 1개라도 있으면 다시 그 consumer에게 메시지 할당하지 않음',
    n.aliases = ['Fair dispatch', '공평한 분배'];

MERGE (n:Concept {id: 'acknowledgment'})
SET     n.name = 'Acknowledgment',
    n.name_kr = '메시지 수신 통보',
    n.domain = 'DB',
    n.definition = '많은 프로토콜들이 메시지 전달 보장을 위해 Acknowledgment(ACK)라는 개념을 사용하여 메시지에 대한 응답을 보냄',
    n.aliases = ['Acknowledgment', '메시지 수신 통보'];

MERGE (n:Technology {id: '연결성'})
SET     n.name = '연결성',
    n.name_kr = '연결성',
    n.domain = 'DB',
    n.definition = 'HTTP/S, IP multicast, SSL, STOMP, TCP, UDP, XMPP 등의 프로토콜의 지원을 포함하여 넓은 영역의 연결옵션을 제공. 넓은 영역의 프로토콜 등의 지원은 시스템에 유연성을 제공.';

MERGE (n:Concept {id: '플러그_방식의_저장과_보안'})
SET     n.name = '플러그 방식의 저장과 보안',
    n.name_kr = '플러그 방식의 저장과 보안',
    n.domain = 'DB',
    n.definition = '다양한 저장매체를 사용 가능. ActiveMQ의 보안성은 원하는 최상의 인증과 승인 정의 가능.';

MERGE (n:Concept {id: '다양한_어플리케이션간의_통합'})
SET     n.name = '다양한 어플리케이션간의 통합',
    n.name_kr = '다양한 어플리케이션간의 통합',
    n.domain = 'DB',
    n.definition = 'WAS(Web Application Server)와 ActiveMQ를 통하여 다양한 어플리케이션 간의 통합 제공.';

MERGE (n:Concept {id: '다양한_언어의_클라이언트를_위한_api제공'})
SET     n.name = '다양한 언어의 클라이언트를 위한 API제공',
    n.name_kr = '다양한 언어의 클라이언트를 위한 API제공',
    n.domain = 'DB',
    n.definition = 'Java 뿐만 아니라 C/C++, NET, Perl, PHP, Python, Ruby 등의 많은 언어를 위한 API를 제공.';

MERGE (n:Concept {id: '브로커_클러스터링'})
SET     n.name = '브로커 클러스터링',
    n.name_kr = '브로커 클러스터링',
    n.domain = 'DB',
    n.definition = '다수의 ActiveMQ브로커는 확장성을 위해 브로커의 연합네트워크로서 함께 동작 함.';

MERGE (n:Concept {id: '많은_전문적인_브로커기능과_클라이언트_옵션'})
SET     n.name = '많은 전문적인 브로커기능과 클라이언트 옵션',
    n.name_kr = '많은 전문적인 브로커기능과 클라이언트 옵션',
    n.domain = 'DB',
    n.definition = '브로커와, 브로커에 연결하는 클라이언트 모두에게 다양한 기능을 옵션으로 제공.';

MERGE (n:Concept {id: '단순한_관리'})
SET     n.name = '단순한 관리',
    n.name_kr = '단순한 관리',
    n.domain = 'DB',
    n.definition = 'JMX(Java Management eXtensions)를 통하여 JConsole이나 ActiveMQ웹 콘솔, ActiveMQ조회(advisory) 메시지처리, 명령줄 스크립트 등 다양한 측면의 모니터링 방법을 제공.';

MERGE (n:Technology {id: 'spring'})
SET     n.name = '스프링(Spring) 지원',
    n.name_kr = '스프링(Spring) 지원',
    n.domain = 'DB',
    n.definition = '스프링을 지원하기 때문에 쉽게 스프링 응용프로그램 안으로 포함될 수 있으며 스프링의 XML 설정 메커니즘을 사용하여 설정도 가능.';

MERGE (n:Concept {id: 'ajax_지원'})
SET     n.name = 'Ajax 지원',
    n.name_kr = 'Ajax 지원',
    n.domain = 'DB',
    n.definition = '순수한 DHTML을 사용하는 웹 브라우저를 지원하기 위한 웹 스트리밍을 지원하는 Ajax, 웹 브라우저가 메시징구조의 일부가 될 수 있도록 지원.';

MERGE (n:Concept {id: 'cxf_와_axis'})
SET     n.name = 'CXF 와 Axis',
    n.name_kr = 'CXF 와 Axis',
    n.domain = 'DB',
    n.definition = 'CXF와 Axis 를 지원하기 때문에 신뢰성 있는 메시징을 제공하기 위한 웹서비스 스택 중 하나를 쉽게 적용.';

MERGE (n:Concept {id: '고급기능지원'})
SET     n.name = '고급기능지원',
    n.name_kr = '고급기능지원',
    n.domain = 'DB',
    n.definition = '메시지그룹과 가상목적지, 와일드카드, 그리고 합성주소(Composite Destination) 같은 고급기능을 지원';

MERGE (n:Concept {id: '엔터프라이즈_통합패턴_지원'})
SET     n.name = '엔터프라이즈 통합패턴 지원',
    n.name_kr = '엔터프라이즈 통합패턴 지원',
    n.domain = 'DB',
    n.definition = 'JMS클라이언트와 메시지 브로커, 양 쪽을 엔터프라이즈 통합패턴으로 연동 지원';

MERGE (n:Concept {id: 'message'})
SET     n.name = 'Message',
    n.name_kr = 'Message',
    n.domain = 'DB',
    n.definition = '카프카에서 다루는 데이터의 최소 단위 메시지는 Key와 Value를 갖게 되며 나중에 언급할 메시지 전송할 때 파티셔닝에 이용',
    n.aliases = ['Message'];

MERGE (n:Concept {id: 'topic'})
SET     n.name = 'Topic',
    n.name_kr = 'Topic',
    n.domain = 'DB',
    n.definition = '메시지를 종류별로 관리하는 스토리지 브로커에 배치되어 관리됨 프로듀서와 컨슈머는 특정 토픽을 지정하여 메시지를 송수신함으로써 단일 카프카 클러스터에서 여러 종류의 메시지를 중계함',
    n.aliases = ['Topic'];

MERGE (n:Metric {id: 'distributed_processing'})
SET     n.name = 'Distributed Processing',
    n.name_kr = '분산 처리',
    n.domain = 'DB',
    n.definition = '파티션(Partition)이란 개념을 도입하여 여러 개의 파티션을 서버들에 분산시켜 나누어 처리하므로 메세지를 상황에 맞추어 빠르게 처리 가능',
    n.aliases = ['Distributed Processing', '분산 처리'];

// --- 관계 ---

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'amqp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: 'rabbitmq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'activemq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'zeromq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: 'kafka'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'producer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'consumer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'cluster'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'queue'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'exchange'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'binding'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '주요_기능'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'fair_dispatch'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'acknowledgment'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: '연결성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '플러그_방식의_저장과_보안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '다양한_어플리케이션간의_통합'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '다양한_언어의_클라이언트를_위한_api제공'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '브로커_클러스터링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '많은_전문적인_브로커기능과_클라이언트_옵션'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '단순한_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: 'spring'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'ajax_지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'cxf_와_axis'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '고급기능지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: '엔터프라이즈_통합패턴_지원'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'message'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'topic'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Metric {id: 'distributed_processing'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rabbitmq'})
MERGE (b:Concept {id: 'activemq'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rabbitmq'})
MERGE (b:Technology {id: 'kafka'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: 'rabbitmq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'activemq'})
MERGE (b:Technology {id: 'kafka'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Concept {id: 'activemq'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Technology {id: 'kafka'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Document {id: 'DB_103'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '메시지_큐잉'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'amqp'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rabbitmq'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'activemq'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zeromq'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'kafka'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'producer'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consumer'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cluster'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'queue'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'exchange'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'binding'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fair_dispatch'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'acknowledgment'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '연결성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플러그_방식의_저장과_보안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_어플리케이션간의_통합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다양한_언어의_클라이언트를_위한_api제공'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '브로커_클러스터링'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '많은_전문적인_브로커기능과_클라이언트_옵션'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순한_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'spring'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ajax_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cxf_와_axis'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고급기능지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔터프라이즈_통합패턴_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'message'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'topic'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'distributed_processing'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_104.1: 아파치 카프카(Apache kafka)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_104.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Technology {id: 'apache_kafka'})
SET     n.name = 'Apache kafka',
    n.name_kr = '아파치 카프카',
    n.domain = 'DB',
    n.aliases = ['Apache kafka', '아파치 카프카'];

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big data',
    n.name_kr = 'Big data',
    n.domain = 'DB',
    n.aliases = ['Big data'];

MERGE (n:Concept {id: 'pub/sub_메시지_큐'})
SET     n.name = 'pub/sub 메시지 큐',
    n.name_kr = 'pub/sub 메시지 큐',
    n.domain = 'DB';

MERGE (n:Concept {id: '스트리밍_데이터를_처리'})
SET     n.name = '스트리밍 데이터를 처리',
    n.name_kr = '스트리밍 데이터를 처리',
    n.domain = 'DB';

MERGE (n:Concept {id: '멀티_컨슈머'})
SET     n.name = '멀티 컨슈머',
    n.name_kr = '멀티 컨슈머',
    n.domain = 'DB';

MERGE (n:Concept {id: '디스크에_메시지_저장'})
SET     n.name = '디스크에 메시지 저장',
    n.name_kr = '디스크에 메시지 저장',
    n.domain = 'DB';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'DB';

MERGE (n:Concept {id: '높은_성능'})
SET     n.name = '높은 성능',
    n.name_kr = '높은 성능',
    n.domain = 'DB';

MERGE (n:Concept {id: 'topic'})
SET     n.name = 'topic',
    n.name_kr = 'topic',
    n.domain = 'DB',
    n.aliases = ['topic'];

MERGE (n:Concept {id: 'producer'})
SET     n.name = 'producer',
    n.name_kr = 'producer',
    n.domain = 'DB',
    n.aliases = ['producer'];

MERGE (n:Concept {id: 'consumer'})
SET     n.name = 'consumer',
    n.name_kr = 'consumer',
    n.domain = 'DB',
    n.aliases = ['consumer'];

MERGE (n:Concept {id: 'broker'})
SET     n.name = 'broker',
    n.name_kr = 'broker',
    n.domain = 'DB',
    n.aliases = ['broker'];

MERGE (n:Concept {id: 'scalability_&_fault_tolerant'})
SET     n.name = 'Scalability & Fault tolerant',
    n.name_kr = 'Scalability & Fault tolerant',
    n.domain = 'DB',
    n.definition = '이미 사용중인 브로커 서버 이외에도 신규 서버 스케일 아웃 가능 - 브로커 서버는 서로 레플리카 상태 유지 통한 장애 상태 대응 가능';

MERGE (n:Concept {id: 'undeleted_log'})
SET     n.name = 'Undeleted log',
    n.name_kr = 'Undeleted log',
    n.domain = 'DB',
    n.definition = '토픽에 들어간 데이터는 컨슈머가 데이터를 소비해도 바로 사라지지 않음 - 다양한 어플리케이션에서 다양한 용도로 데이터를 처리할 때 효율적',
    n.aliases = ['Undeleted log'];

// --- 관계 ---

MERGE (a:Concept {id: 'apache_kafka'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'pub/sub_메시지_큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: '스트리밍_데이터를_처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: '멀티_컨슈머'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: '디스크에_메시지_저장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: '높은_성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'topic'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'producer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'consumer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'broker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'scalability_&_fault_tolerant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Concept {id: 'undeleted_log'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Document {id: 'DB_104.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'apache_kafka'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pub/sub_메시지_큐'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스트리밍_데이터를_처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티_컨슈머'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크에_메시지_저장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '높은_성능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'topic'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'producer'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consumer'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'broker'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scalability_&_fault_tolerant'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'undeleted_log'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_104.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_104.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_105: 데이터 레이크(Data Lake)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_105'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_lake'})
SET     n.name = 'Data Lake',
    n.name_kr = '데이터 레이크',
    n.domain = 'DB',
    n.aliases = ['Data Lake', '데이터 레이크'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: '통합_저장'})
SET     n.name = '통합 저장',
    n.name_kr = '통합 저장',
    n.domain = 'DB';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'DB';

MERGE (n:Concept {id: '일관성'})
SET     n.name = '일관성',
    n.name_kr = '일관성',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_늪'})
SET     n.name = '데이터 늪(데이터 품질 관리)',
    n.name_kr = '데이터 늪(데이터 품질 관리)',
    n.domain = 'DB';

MERGE (n:Concept {id: '분석_샌드박스'})
SET     n.name = '분석 샌드박스',
    n.name_kr = '분석 샌드박스',
    n.domain = 'DB';

MERGE (n:Concept {id: '셀프_서비스'})
SET     n.name = '셀프 서비스',
    n.name_kr = '셀프 서비스',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'DB',
    n.definition = '정형데이터';

MERGE (n:Concept {id: '비정형데이터'})
SET     n.name = '비정형데이터',
    n.name_kr = '비정형데이터',
    n.domain = 'DB',
    n.definition = '조직 내/외부 Text , Image, Audio Data';

MERGE (n:Concept {id: '데이터_관리'})
SET     n.name = '데이터 관리',
    n.name_kr = '데이터 관리',
    n.domain = 'DB',
    n.definition = '데이터 품질 관리';

MERGE (n:Concept {id: 'master_data_관리'})
SET     n.name = 'Master Data 관리',
    n.name_kr = 'Master Data 관리',
    n.domain = 'DB',
    n.definition = 'Master Data 통합, 표준화, 관리, 모니터링';

MERGE (n:Concept {id: '데이터_저장'})
SET     n.name = '데이터 저장',
    n.name_kr = '데이터 저장',
    n.domain = 'DB',
    n.definition = '데이터 통합 저장';

MERGE (n:Concept {id: '데이터_활용_지원'})
SET     n.name = '데이터 활용 지원',
    n.name_kr = '데이터 활용 지원',
    n.domain = 'DB',
    n.definition = '분석 샌드박스';

MERGE (n:Concept {id: '데이터_셀프_서비스'})
SET     n.name = '데이터 셀프 서비스',
    n.name_kr = '데이터 셀프 서비스',
    n.domain = 'DB',
    n.definition = '현업 사용자의 데이터 분석/활용 환경 제공';

MERGE (n:Concept {id: 'data_warehouse'})
SET     n.name = '데이터 웨어하우스',
    n.name_kr = '데이터 웨어하우스',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '통합_저장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '일관성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_늪'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '분석_샌드박스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '셀프_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '비정형데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: 'master_data_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_저장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_활용_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: '데이터_셀프_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Concept {id: 'data_lake'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Concept {id: 'data_warehouse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Document {id: 'DB_105'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_lake'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합_저장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일관성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_늪'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_샌드박스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '셀프_서비스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비정형데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'master_data_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_저장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_활용_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_셀프_서비스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_106: LDW(Logical Data Warehouse)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_106'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'logical_data_warehouse'})
SET     n.name = 'Logical Data Warehouse',
    n.name_kr = 'LDW',
    n.domain = 'DB',
    n.aliases = ['Logical Data Warehouse', 'LDW'];

MERGE (n:Concept {id: '데이터관리아키텍처'})
SET     n.name = '데이터관리아키텍처',
    n.name_kr = '데이터관리아키텍처',
    n.domain = 'DB';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'DB';

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_warehouse'})
SET     n.name = '데이터 웨어하우스',
    n.name_kr = '데이터 웨어하우스',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_레이크'})
SET     n.name = '데이터 레이크',
    n.name_kr = '데이터 레이크',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Concept {id: '데이터관리아키텍처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Concept {id: '데이터_레이크'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Concept {id: 'data_warehouse'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Concept {id: '데이터_레이크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Document {id: 'DB_106'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'logical_data_warehouse'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터관리아키텍처'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_warehouse'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_레이크'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_110: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_110'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_111: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_111'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_112: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_112'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_113: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_113'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_114: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_114'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_115: Random Forest
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_115'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'random_forest'})
SET     n.name = 'Random Forest',
    n.name_kr = 'Random Forest',
    n.domain = 'DB',
    n.aliases = ['Random Forest'];

MERGE (n:Concept {id: '데이터베이스'})
SET     n.name = '데이터베이스',
    n.name_kr = '데이터베이스',
    n.domain = 'DB';

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big Data',
    n.name_kr = 'Big Data',
    n.domain = 'DB',
    n.aliases = ['Big Data'];

MERGE (n:Concept {id: '임의_최적_노드'})
SET     n.name = '임의 최적 노드',
    n.name_kr = '임의 최적 노드',
    n.domain = 'DB';

MERGE (n:Concept {id: 'bagging'})
SET     n.name = '배깅',
    n.name_kr = '배깅',
    n.domain = 'DB';

MERGE (n:Concept {id: '결정_트리'})
SET     n.name = '결정 트리',
    n.name_kr = '결정 트리',
    n.domain = 'DB';

MERGE (n:Concept {id: '정규화_랜덤_포레스트'})
SET     n.name = '정규화 랜덤 포레스트',
    n.name_kr = '정규화 랜덤 포레스트',
    n.domain = 'DB';

MERGE (n:Concept {id: '앙상블'})
SET     n.name = '앙상블',
    n.name_kr = '앙상블',
    n.domain = 'DB';

MERGE (n:Concept {id: '선형결합'})
SET     n.name = '선형결합',
    n.name_kr = '선형결합',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Concept {id: '데이터베이스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

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
MERGE (b:Document {id: 'DB_115'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'random_forest'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터베이스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임의_최적_노드'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bagging'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결정_트리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정규화_랜덤_포레스트'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앙상블'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선형결합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_116: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_116'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_117: 데이터 클렌징(Data Cleansing), 데이터 프로파일링
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_117'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_cleansing'})
SET     n.name = '데이터 클렌징(Data Cleansing), 데이터 프로파일링',
    n.name_kr = '데이터 클렌징(Data Cleansing), 데이터 프로파일링',
    n.domain = 'DB';

MERGE (n:Concept {id: 'big_data'})
SET     n.name = 'Big Data',
    n.name_kr = 'Big Data',
    n.domain = 'DB',
    n.aliases = ['Big Data'];

MERGE (n:Concept {id: 'cleansing'})
SET     n.name = '데이터 클렌징',
    n.name_kr = '데이터 클렌징',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터전처리'})
SET     n.name = '데이터전처리',
    n.name_kr = '데이터전처리',
    n.domain = 'DB';

MERGE (n:Concept {id: '클린데이터_정의'})
SET     n.name = '클린데이터 정의',
    n.name_kr = '클린데이터 정의',
    n.domain = 'DB';

MERGE (n:Concept {id: '결측치_및_이상치_식별/제거'})
SET     n.name = '결측치 및 이상치 식별/제거',
    n.name_kr = '결측치 및 이상치 식별/제거',
    n.domain = 'DB';

MERGE (n:Metric {id: 'integrity'})
SET     n.name = '데이터 무결성',
    n.name_kr = '데이터 무결성',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_정합성'})
SET     n.name = '데이터 정합성',
    n.name_kr = '데이터 정합성',
    n.domain = 'DB';

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'DB';

MERGE (n:Concept {id: '①_데이터베이스_대상_정의'})
SET     n.name = '① 데이터베이스 대상 정의',
    n.name_kr = '① 데이터베이스 대상 정의',
    n.domain = 'DB',
    n.definition = '데이터 클렌징 대상 데이터베이스 범위 정립';

MERGE (n:Concept {id: '②_dirty_data_원인_파악'})
SET     n.name = '② Dirty Data 원인 파악',
    n.name_kr = '② Dirty Data 원인 파악',
    n.domain = 'DB',
    n.definition = '데이터 결측치 및 이상치 식별';

MERGE (n:Concept {id: '③_데이터_품질_문제_우선순위'})
SET     n.name = '③ 데이터 품질 문제 우선순위',
    n.name_kr = '③ 데이터 품질 문제 우선순위',
    n.domain = 'DB',
    n.definition = '클렌징 우선 순위 결정';

MERGE (n:Concept {id: '④_bad_data의_데이터베이스_유입_차단'})
SET     n.name = '④ Bad Data의 데이터베이스 유입 차단',
    n.name_kr = '④ Bad Data의 데이터베이스 유입 차단',
    n.domain = 'DB',
    n.definition = '잘못된 데이터 입력되는 원인을 찾아 새로운 규칙 생성';

MERGE (n:Concept {id: '⑤_데이터베이스에서_bad_data_제거'})
SET     n.name = '⑤ 데이터베이스에서 Bad Data 제거',
    n.name_kr = '⑤ 데이터베이스에서 Bad Data 제거',
    n.domain = 'DB',
    n.definition = '데이터베이스 내부의 결측치 및 이상치 제거';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'DB',
    n.definition = '데이터 변환';

MERGE (n:Concept {id: '데이터_파싱'})
SET     n.name = '데이터 파싱',
    n.name_kr = '데이터 파싱',
    n.domain = 'DB',
    n.definition = '데이터 정제 규칙을 적용하기 위해 유의미한 최소 단위로 분할하는 작업 - 예 : 주민등록번호, 생년월일 등의 유효성 체크';

MERGE (n:Concept {id: '데이터_보강'})
SET     n.name = '데이터 보강',
    n.name_kr = '데이터 보강',
    n.domain = 'DB',
    n.definition = '변화, 파싱, 수정 표준화 등을 통해 추가 정보를 반영하는 작업';

MERGE (n:Concept {id: '①_메타데이터_수집_및_분석'})
SET     n.name = '① 메타데이터 수집 및 분석',
    n.name_kr = '① 메타데이터 수집 및 분석',
    n.domain = 'DB',
    n.definition = '물리 메타데이터 수집 및 테이블, 컬럼 목록 대조 분석';

MERGE (n:Concept {id: '②_프로파일링_대상_및_유형_선정'})
SET     n.name = '② 프로파일링 대상 및 유형 선정',
    n.name_kr = '② 프로파일링 대상 및 유형 선정',
    n.domain = 'DB',
    n.definition = '대상 업무 테이블 선정 및 분석 유형 결정';

MERGE (n:Metric {id: '③_프로파일링_수행'})
SET     n.name = '③ 프로파일링 수행',
    n.name_kr = '③ 프로파일링 수행',
    n.domain = 'DB',
    n.definition = '구조 발견, 데이터 발견, 관계 발견 - 누락 값, 비유효값, 무결성 위반사항 분석';

MERGE (n:Concept {id: '④_프로파일링_결과_리뷰'})
SET     n.name = '④ 프로파일링 결과 리뷰',
    n.name_kr = '④ 프로파일링 결과 리뷰',
    n.domain = 'DB',
    n.definition = '프로파일링 결과 취합 및 리뷰';

MERGE (n:Concept {id: '⑤_프로파일링_결과_종합'})
SET     n.name = '⑤ 프로파일링 결과 종합',
    n.name_kr = '⑤ 프로파일링 결과 종합',
    n.domain = 'DB',
    n.definition = '결과물 취합 및 결과보고서 작성';

MERGE (n:Concept {id: '구조_분석'})
SET     n.name = '구조 분석',
    n.name_kr = '구조 분석',
    n.domain = 'DB',
    n.definition = '테이블을 구성하는 컬럼 간의 관계 분석';

MERGE (n:Concept {id: '단순한_데이터_룰_분석'})
SET     n.name = '단순한 데이터 룰 분석',
    n.name_kr = '단순한 데이터 룰 분석',
    n.domain = 'DB',
    n.definition = '값의 결합이 가능한 비즈니스 객체의 여러 컬럼에 걸친 값을 분석하여 데이터를 정제';

MERGE (n:Concept {id: '복잡한_데이터_룰_분석'})
SET     n.name = '복잡한 데이터 룰 분석',
    n.name_kr = '복잡한 데이터 룰 분석',
    n.domain = 'DB',
    n.definition = '여러 비즈니스 객체에 연관된 복잡한 데이터 룰을 분석';

MERGE (n:Concept {id: '값_룰_분석'})
SET     n.name = '값 룰 분석',
    n.name_kr = '값 룰 분석',
    n.domain = 'DB',
    n.definition = '집계값을 통하여 부정확한 데이터의 존재는 찾는 것';

MERGE (n:Concept {id: '실행'})
SET     n.name = '실행',
    n.name_kr = '실행',
    n.domain = 'DB',
    n.definition = '전체 : 전체 데이터 세트로 모든 마이그레이션 프로그램을 실행하는 테스트 - 부분 : 개발 주기와 회전시간을 고려하여 더 작은 비즈니스 단위로 마이그레이션 하는 것';

// --- 관계 ---

MERGE (a:Concept {id: 'cleansing'})
MERGE (b:Concept {id: 'big_data'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '데이터전처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '클린데이터_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '결측치_및_이상치_식별/제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'integrity'})
MERGE (b:Concept {id: '데이터_정합성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Metric {id: 'integrity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '데이터_정합성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '①_데이터베이스_대상_정의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '②_dirty_data_원인_파악'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '③_데이터_품질_문제_우선순위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '④_bad_data의_데이터베이스_유입_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '⑤_데이터베이스에서_bad_data_제거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '데이터_파싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '데이터_보강'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '①_메타데이터_수집_및_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '②_프로파일링_대상_및_유형_선정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Metric {id: '③_프로파일링_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '④_프로파일링_결과_리뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '⑤_프로파일링_결과_종합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '구조_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '단순한_데이터_룰_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '복잡한_데이터_룰_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '값_룰_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Concept {id: '실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Document {id: 'DB_117'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_cleansing'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cleansing'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터전처리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클린데이터_정의'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결측치_및_이상치_식별/제거'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'integrity'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_정합성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_데이터베이스_대상_정의'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_dirty_data_원인_파악'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '③_데이터_품질_문제_우선순위'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_bad_data의_데이터베이스_유입_차단'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_데이터베이스에서_bad_data_제거'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_파싱'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_보강'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_메타데이터_수집_및_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_프로파일링_대상_및_유형_선정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '③_프로파일링_수행'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '④_프로파일링_결과_리뷰'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '⑤_프로파일링_결과_종합'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순한_데이터_룰_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복잡한_데이터_룰_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '값_룰_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실행'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_118.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_118.2: 데이터 가시화(Data Visualization)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_visualization'})
SET     n.name = 'Data Visualization',
    n.name_kr = '데이터 가시화',
    n.domain = 'DB',
    n.aliases = ['Data Visualization', '데이터 가시화'];

MERGE (n:Concept {id: '데이터_경영'})
SET     n.name = '데이터 경영',
    n.name_kr = '데이터 경영',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'data_visualization'})
MERGE (b:Document {id: 'DB_118.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_visualization'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_경영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_118.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_118.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_118.5: 데이터 사이언스, 데이터 사이언티스트 (Data Scientist)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.5'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_scientist'})
SET     n.name = 'Data Scientist',
    n.name_kr = '데이터 사이언스, 데이터 사이언티스트',
    n.domain = 'DB',
    n.aliases = ['Data Scientist', '데이터 사이언스, 데이터 사이언티스트'];

MERGE (n:Concept {id: 'data_경영'})
SET     n.name = 'Data 경영',
    n.name_kr = 'Data 경영',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터수집'})
SET     n.name = '데이터수집',
    n.name_kr = '데이터수집',
    n.domain = 'DB';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'DB';

MERGE (n:Concept {id: '가치발견'})
SET     n.name = '가치발견',
    n.name_kr = '가치발견',
    n.domain = 'DB';

MERGE (n:Concept {id: '통계분석'})
SET     n.name = '통계분석',
    n.name_kr = '통계분석',
    n.domain = 'DB';

MERGE (n:Concept {id: '언어이해'})
SET     n.name = '언어이해',
    n.name_kr = '언어이해',
    n.domain = 'DB';

MERGE (n:Concept {id: '분산컴퓨팅기술'})
SET     n.name = '분산컴퓨팅기술',
    n.name_kr = '분산컴퓨팅기술',
    n.domain = 'DB';

MERGE (n:Concept {id: '수학적지식'})
SET     n.name = '수학적지식',
    n.name_kr = '수학적지식',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: 'data_경영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '데이터수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '가치발견'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '통계분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '언어이해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '분산컴퓨팅기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Concept {id: '수학적지식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Document {id: 'DB_118.5'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_scientist'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_경영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터수집'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가치발견'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '언어이해'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산컴퓨팅기술'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수학적지식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_118.6: 디지털 큐레이션 (Digital Curation)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.6'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_curation'})
SET     n.name = 'Digital Curation',
    n.name_kr = '디지털 큐레이션',
    n.domain = 'DB',
    n.aliases = ['Digital Curation', '디지털 큐레이션'];

MERGE (n:Concept {id: 'data_경영'})
SET     n.name = 'Data 경영',
    n.name_kr = 'Data 경영',
    n.domain = 'DB';

MERGE (n:Concept {id: '디지털자원_정리'})
SET     n.name = '디지털자원 정리',
    n.name_kr = '디지털자원 정리',
    n.domain = 'DB';

MERGE (n:Concept {id: '가치부여'})
SET     n.name = '가치부여',
    n.name_kr = '가치부여',
    n.domain = 'DB';

MERGE (n:Concept {id: '생애주기'})
SET     n.name = '생애주기',
    n.name_kr = '생애주기',
    n.domain = 'DB';

MERGE (n:Concept {id: '디지털_아카이빙/디지털_보존'})
SET     n.name = '디지털 아카이빙/디지털 보존',
    n.name_kr = '디지털 아카이빙/디지털 보존',
    n.domain = 'DB';

MERGE (n:Concept {id: '핀터레스트'})
SET     n.name = '핀터레스트',
    n.name_kr = '핀터레스트',
    n.domain = 'DB';

MERGE (n:Concept {id: '디지털_아카이빙'})
SET     n.name = '디지털 아카이빙',
    n.name_kr = '디지털 아카이빙',
    n.domain = 'DB';

MERGE (n:Concept {id: '디지털_보존'})
SET     n.name = '디지털 보존',
    n.name_kr = '디지털 보존',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털자원_정리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '가치부여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '생애주기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털_아카이빙/디지털_보존'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '핀터레스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털_아카이빙'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털_보존'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디지털_아카이빙'})
MERGE (b:Concept {id: '디지털_보존'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털_아카이빙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Concept {id: '디지털_보존'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Document {id: 'DB_118.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_curation'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_경영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털자원_정리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가치부여'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생애주기'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_아카이빙/디지털_보존'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀터레스트'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_아카이빙'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_보존'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_118.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_118.7'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_121.1: 개방형 연결 데이터 (Linked Open Data)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_121.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'linked_open_data'})
SET     n.name = 'Linked Open Data',
    n.name_kr = '개방형 연결 데이터',
    n.domain = 'DB',
    n.aliases = ['Linked Open Data', '개방형 연결 데이터'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB';

MERGE (n:Concept {id: '생성/관리/발행/협업'})
SET     n.name = '생성/관리/발행/협업',
    n.name_kr = '생성/관리/발행/협업',
    n.domain = 'DB';

MERGE (n:Concept {id: 'uri'})
SET     n.name = 'URI',
    n.name_kr = 'URI',
    n.domain = 'DB',
    n.aliases = ['URI'];

MERGE (n:Technology {id: 'http'})
SET     n.name = 'HTTP',
    n.name_kr = 'HTTP',
    n.domain = 'DB',
    n.aliases = ['HTTP'];

MERGE (n:Concept {id: 'rdf'})
SET     n.name = 'RDF',
    n.name_kr = 'RDF',
    n.domain = 'DB',
    n.aliases = ['RDF'];

MERGE (n:Concept {id: 'link'})
SET     n.name = 'Link',
    n.name_kr = 'Link',
    n.domain = 'DB',
    n.aliases = ['Link'];

MERGE (n:Concept {id: 'sparql'})
SET     n.name = 'SPARQL',
    n.name_kr = 'SPARQL',
    n.domain = 'DB',
    n.aliases = ['SPARQL'];

MERGE (n:Concept {id: 'ontology'})
SET     n.name = 'Ontology',
    n.name_kr = 'Ontology',
    n.domain = 'DB',
    n.aliases = ['Ontology'];

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'DB';

MERGE (n:Concept {id: '내_용'})
SET     n.name = '내 용',
    n.name_kr = '내 용',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: '생성/관리/발행/협업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: 'uri'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Technology {id: 'http'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: 'rdf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: 'link'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: 'sparql'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: 'ontology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Document {id: 'DB_121.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'linked_open_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성/관리/발행/협업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'uri'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdf'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'link'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sparql'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ontology'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내_용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_121.2: 데이터 등급 5단계 레벨
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_121.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_등급_5단계_레벨'})
SET     n.name = '데이터 등급 5단계 레벨',
    n.name_kr = '데이터 등급 5단계 레벨',
    n.domain = 'DB';

MERGE (n:Concept {id: 'open_data'})
SET     n.name = 'Open Data',
    n.name_kr = '공공데이터',
    n.domain = 'DB',
    n.aliases = ['Open Data', '공공데이터'];

MERGE (n:Concept {id: 'pdf'})
SET     n.name = 'PDF',
    n.name_kr = 'OL',
    n.domain = 'DB',
    n.aliases = ['PDF', 'OL'];

MERGE (n:Concept {id: 'xls'})
SET     n.name = 'XLS',
    n.name_kr = 'RE',
    n.domain = 'DB',
    n.aliases = ['XLS', 'RE'];

MERGE (n:Concept {id: 'csv'})
SET     n.name = 'CSV',
    n.name_kr = 'OF',
    n.domain = 'DB',
    n.aliases = ['CSV', 'OF'];

MERGE (n:Concept {id: 'rdf'})
SET     n.name = 'RDF',
    n.name_kr = 'URI',
    n.domain = 'DB',
    n.aliases = ['RDF', 'URI'];

MERGE (n:Concept {id: 'lod'})
SET     n.name = 'LOD',
    n.name_kr = 'LD',
    n.domain = 'DB',
    n.aliases = ['LOD', 'LD'];

// --- 관계 ---

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Concept {id: 'pdf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Concept {id: 'xls'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Concept {id: 'csv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Concept {id: 'rdf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Concept {id: 'lod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Document {id: 'DB_121.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_등급_5단계_레벨'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdf'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xls'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'csv'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rdf'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lod'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_121.3: 공공데이터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_121.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'open_data'})
SET     n.name = 'Open Data',
    n.name_kr = '공공데이터',
    n.domain = 'DB',
    n.aliases = ['공공데이터'];

MERGE (n:Concept {id: '오픈데이터_플랫폼'})
SET     n.name = '오픈데이터 플랫폼',
    n.name_kr = '오픈데이터 플랫폼',
    n.domain = 'DB';

MERGE (n:Concept {id: '품질관리'})
SET     n.name = '품질관리',
    n.name_kr = '품질관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '공공데이터_품질관리_매뉴얼_v2.0'})
SET     n.name = '공공데이터 품질관리 매뉴얼 V2.0',
    n.name_kr = '공공데이터 품질관리 매뉴얼 V2.0',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_제공_측면'})
SET     n.name = '데이터 제공 측면',
    n.name_kr = '데이터 제공 측면',
    n.domain = 'DB',
    n.definition = '이용권의 보편적 확대 노력';

MERGE (n:Concept {id: '이용에_대한_평등의_원칙'})
SET     n.name = '이용에 대한 평등의 원칙',
    n.name_kr = '이용에 대한 평등의 원칙',
    n.domain = 'DB',
    n.definition = '국민의 이용과 접근에 평등의 원칙을 보장해야 함';

MERGE (n:Concept {id: '이용권_보장'})
SET     n.name = '이용권 보장',
    n.name_kr = '이용권 보장',
    n.domain = 'DB',
    n.definition = '이용자의 접근제한, 차단, 저해행위를 하여서는 아니 된다. 단, 제3자 권리침해, 불법행위 악용하는 경우는 제외됨.';

MERGE (n:Concept {id: '영리적_활용_보장'})
SET     n.name = '영리적 활용 보장',
    n.name_kr = '영리적 활용 보장',
    n.domain = 'DB',
    n.definition = '공공데이터의 영리적 이용인 경우에도 이를 금지 제한하여서는 아니 된다. 단, 제3자 권리침해, 불법행위 악용하는 경우는 제외됨.';

MERGE (n:Concept {id: '데이터_이용_측면'})
SET     n.name = '데이터 이용 측면',
    n.name_kr = '데이터 이용 측면',
    n.domain = 'DB',
    n.definition = '이용자의 의무 준수 원칙';

MERGE (n:Concept {id: '데이터_등록'})
SET     n.name = '데이터 등록',
    n.name_kr = '데이터 등록',
    n.domain = 'DB',
    n.definition = '데이터 개방을 위해 데이터 업로드, 데이터 저장 등의 역할을 수행 - 데이터 등록을 위해 지원가능 한 파일 형식을 정의하고, 데이터의 API 추출 등의 기능 제공';

MERGE (n:Concept {id: '데이터_발생'})
SET     n.name = '데이터 발생',
    n.name_kr = '데이터 발생',
    n.domain = 'DB',
    n.definition = '등록된 데이터에 대해 지원가능한 파일형태로 데이터를 제공 - 데이터 제공에 따른 보안, 표준 등 관리 기능';

MERGE (n:Concept {id: '데이터_현황'})
SET     n.name = '데이터 현황',
    n.name_kr = '데이터 현황',
    n.domain = 'DB',
    n.definition = '사용자 및 관리자를 위해 데이터 출처, 분류, 내용 등이 포함된 데이터 카달로그 - 데이터의 원활할 사용을 위한 다양한 검색 기능';

MERGE (n:Concept {id: '데이터_포털'})
SET     n.name = '데이터 포털',
    n.name_kr = '데이터 포털',
    n.domain = 'DB',
    n.definition = '사용자, 고객센터, 포털 운영 관련 서비스 지원 기능';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'DB',
    n.definition = '플랫폼 기술 수준에 따라 데이터 추출 및 필터링을 통한 도표, 그래프 등 시각화 기능 등';

MERGE (n:Concept {id: '근거'})
SET     n.name = '근거',
    n.name_kr = '근거',
    n.domain = 'DB',
    n.definition = '공공데이터법 제 22 조 공공데이터의 품질관리';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'DB';

MERGE (n:Concept {id: '단계별_품질관리_수행'})
SET     n.name = '단계별 품질관리 수행',
    n.name_kr = '단계별 품질관리 수행',
    n.domain = 'DB',
    n.definition = '계획부터 구축/운영/활용까지의 단계별 품질관리 활동';

MERGE (n:Concept {id: '품질관리_인프라_구축'})
SET     n.name = '품질관리 인프라 구축',
    n.name_kr = '품질관리 인프라 구축',
    n.domain = 'DB',
    n.definition = '품질관리 활동 지원 도구 및 관련 시스템 등';

MERGE (n:Concept {id: '추진근거'})
SET     n.name = '추진근거',
    n.name_kr = '추진근거',
    n.domain = 'DB',
    n.definition = '「공공데이터의 제공 및 이용 활성화에 관한 법률」 제22조(공공데이터의 표준관리) 및 동법 시행령 제17조(공공데이터의 품질진단 및 개선) 등';

MERGE (n:Concept {id: '평가항목'})
SET     n.name = '평가항목',
    n.name_kr = '평가항목',
    n.domain = 'DB',
    n.definition = '3개 영역(기관, DB, 데이터 품질관리), 9개 평가지표';

MERGE (n:Concept {id: '평가대상'})
SET     n.name = '평가대상',
    n.name_kr = '평가대상',
    n.domain = 'DB',
    n.definition = '공공데이터법 제2조(정의) 제1호 규정에 해당하는 모든 공공기관이 평가 대상임 - 중앙행정기관 :「정부업무평가법」에 따른 대상 기관, 소속기관은 상위기관에 포함하여 평가 - 지방자치단체 :「정부업무평가법」에 따른 광역자치단체, 기초자치단체 - 공공기관 :「공공기관의 운영에 관한 법률」에 따른 공공기관, 「지방공기업법」에 따른 지방공사 및 지방공단, 특별법에';

MERGE (n:Concept {id: '평가제외'})
SET     n.name = '평가제외',
    n.name_kr = '평가제외',
    n.domain = 'DB',
    n.definition = '국회, 법원, 헌법재판소, 중앙선거관리위원회, 대검찰청, 국민인권위원회';

MERGE (n:Concept {id: '평가지표_체계'})
SET     n.name = '평가지표 체계',
    n.name_kr = '평가지표 체계',
    n.domain = 'DB';

MERGE (n:Concept {id: 'db_품질'})
SET     n.name = 'DB 품질',
    n.name_kr = 'DB 품질',
    n.domain = 'DB',
    n.definition = '기관 고유 업무수행 위해 생성/취득/운영하는 보유 DB 평가';

MERGE (n:Concept {id: '데이터_품질'})
SET     n.name = '데이터 품질',
    n.name_kr = '데이터 품질',
    n.domain = 'DB',
    n.definition = 'DB 저장 데이터 및 공공 데이터 포털 내 개방 데이터 오류율 평가';

MERGE (n:Concept {id: '평가_점수_및_활용'})
SET     n.name = '평가 점수 및 활용',
    n.name_kr = '평가 점수 및 활용',
    n.domain = 'DB',
    n.definition = '평가점수';

MERGE (n:Concept {id: '평가활용'})
SET     n.name = '평가활용',
    n.name_kr = '평가활용',
    n.domain = 'DB',
    n.definition = '20 년 공공데이터 제공 운영실태 평가(35%), 정부혁신평가 등에 반영';

MERGE (n:Concept {id: '평가등급'})
SET     n.name = '평가등급',
    n.name_kr = '평가등급',
    n.domain = 'DB',
    n.definition = '1등급 (최적화)';

MERGE (n:Concept {id: '2등급'})
SET     n.name = '2등급 (체계화)',
    n.name_kr = '2등급 (체계화)',
    n.domain = 'DB',
    n.definition = '조직 차원의 데이터 품질관리 프로세스가 이행되고, 데이터 품질관리 활동의 체계적 수행이 가능한 수준';

MERGE (n:Concept {id: '3등급'})
SET     n.name = '3등급 (관리화)',
    n.name_kr = '3등급 (관리화)',
    n.domain = 'DB',
    n.definition = '데이터 품질관리를 위한 필수적인 활동들이 관리 및 통제되어, 이를 통해 데이터 품질 향상이 가능한 수준';

MERGE (n:Concept {id: '4등급'})
SET     n.name = '4등급 (도입)',
    n.name_kr = '4등급 (도입)',
    n.domain = 'DB',
    n.definition = '데이터 품질관리가 인식되고, 품질진단 등 기초적인 품질관리 활동들이 도입, 시작하는 수준';

MERGE (n:Concept {id: '5등급'})
SET     n.name = '5등급 (도입전)',
    n.name_kr = '5등급 (도입전)',
    n.domain = 'DB',
    n.definition = '데이터 품질관리의 인식이 미흡하여 기본적인 품질관리 활동의 수행이 불가능하거나 부분적인 품질관리 활동만 수행되는 수준';

MERGE (n:Concept {id: '교통'})
SET     n.name = '교통',
    n.name_kr = '교통',
    n.domain = 'DB',
    n.definition = 'GPS Logger';

MERGE (n:Concept {id: '교통정보_cctv'})
SET     n.name = '교통정보 CCTV',
    n.name_kr = '교통정보 CCTV',
    n.domain = 'DB',
    n.definition = '전국 도로 CCTV 영상 활용';

MERGE (n:Concept {id: '다방'})
SET     n.name = '다방',
    n.name_kr = '다방',
    n.domain = 'DB',
    n.definition = '아파트, 오피스텔, 단독/다가구의 전월세 및 매매 정보 활용';

MERGE (n:Concept {id: '행정'})
SET     n.name = '행정',
    n.name_kr = '행정',
    n.domain = 'DB',
    n.definition = '해로드';

MERGE (n:Concept {id: '공무원연금'})
SET     n.name = '공무원연금',
    n.name_kr = '공무원연금',
    n.domain = 'DB',
    n.definition = '공무원 연금관련 정보 활용';

MERGE (n:Concept {id: '뿡뿡이'})
SET     n.name = '뿡뿡이',
    n.name_kr = '뿡뿡이',
    n.domain = 'DB',
    n.definition = '전국의 공중화장실 정보 활용';

MERGE (n:Concept {id: '산업'})
SET     n.name = '산업',
    n.name_kr = '산업',
    n.domain = 'DB',
    n.definition = '나들가게';

MERGE (n:Concept {id: '잡코리아'})
SET     n.name = '잡코리아',
    n.name_kr = '잡코리아',
    n.domain = 'DB',
    n.definition = '취업관련 정보 활용';

MERGE (n:Concept {id: 'catch_job'})
SET     n.name = 'CATCH JOB',
    n.name_kr = 'CATCH JOB',
    n.domain = 'DB',
    n.definition = '12만 가량의 기업 정보 활용',
    n.aliases = ['CATCH JOB'];

MERGE (n:Concept {id: '의료'})
SET     n.name = '의료',
    n.name_kr = '의료',
    n.domain = 'DB',
    n.definition = '국가암정보센터';

MERGE (n:Concept {id: '시각장애인편의센터'})
SET     n.name = '시각장애인편의센터',
    n.name_kr = '시각장애인편의센터',
    n.domain = 'DB',
    n.definition = '시각장애인 편의시설 정보 활용';

// --- 관계 ---

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '오픈데이터_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '품질관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '공공데이터_품질관리_매뉴얼_v2.0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_제공_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '이용에_대한_평등의_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '이용권_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '영리적_활용_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_이용_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_등록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_발생'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_포털'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '근거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '단계별_품질관리_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '품질관리_인프라_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '추진근거'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가항목'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가제외'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가지표_체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: 'db_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '데이터_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가_점수_및_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '평가등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '2등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '3등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '4등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '5등급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '교통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '교통정보_cctv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '다방'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '행정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '공무원연금'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '뿡뿡이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '산업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '잡코리아'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: 'catch_job'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '의료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Concept {id: '시각장애인편의센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Document {id: 'DB_121.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈데이터_플랫폼'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공데이터_품질관리_매뉴얼_v2.0'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_제공_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용에_대한_평등의_원칙'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용권_보장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영리적_활용_보장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_이용_측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_등록'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_발생'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_현황'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_포털'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '근거'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단계별_품질관리_수행'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리_인프라_구축'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추진근거'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가항목'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가대상'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가제외'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가지표_체계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'db_품질'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가_점수_및_활용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가활용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '평가등급'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2등급'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3등급'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4등급'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5등급'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교통'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교통정보_cctv'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다방'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공무원연금'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '뿡뿡이'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잡코리아'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'catch_job'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시각장애인편의센터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_121.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_121.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_122: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_122'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_123.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_123.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_123.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_123.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_124.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_124.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_124.2: 데이터 거래소
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_124.2'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_marketplace'})
SET     n.name = 'Data Marketplace',
    n.name_kr = '데이터 거래소',
    n.domain = 'DB',
    n.aliases = ['데이터 거래소'];

MERGE (n:Concept {id: 'open_data'})
SET     n.name = 'Open Data',
    n.name_kr = '공공데이터',
    n.domain = 'DB',
    n.aliases = ['Open Data', '공공데이터'];

MERGE (n:Concept {id: '빅데이터_플랫폼'})
SET     n.name = '빅데이터 플랫폼',
    n.name_kr = '빅데이터 플랫폼',
    n.domain = 'DB';

MERGE (n:Concept {id: '검색엔진'})
SET     n.name = '검색엔진',
    n.name_kr = '검색엔진',
    n.domain = 'DB';

MERGE (n:Concept {id: 'if'})
SET     n.name = 'IF',
    n.name_kr = 'IF',
    n.domain = 'DB',
    n.aliases = ['IF'];

MERGE (n:Concept {id: '정산'})
SET     n.name = '정산',
    n.name_kr = '정산',
    n.domain = 'DB';

MERGE (n:Concept {id: 'tail_made'})
SET     n.name = '맞춤양복점형',
    n.name_kr = '맞춤양복점형',
    n.domain = 'DB';

MERGE (n:Concept {id: '포털형-철물점형/식료품점형'})
SET     n.name = '포털형-철물점형/식료품점형',
    n.name_kr = '포털형-철물점형/식료품점형',
    n.domain = 'DB';

MERGE (n:Concept {id: '금융거래소형'})
SET     n.name = '금융거래소형',
    n.name_kr = '금융거래소형',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_collaboration'})
SET     n.name = 'Data Collaboration',
    n.name_kr = 'Data Collaboration',
    n.domain = 'DB',
    n.aliases = ['Data Collaboration'];

MERGE (n:Concept {id: '데이터_유통_활성화'})
SET     n.name = '데이터 유통 활성화',
    n.name_kr = '데이터 유통 활성화',
    n.domain = 'DB';

MERGE (n:Concept {id: '통합_플랫폼'})
SET     n.name = '통합 플랫폼',
    n.name_kr = '통합 플랫폼',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '빅데이터_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '검색엔진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: 'if'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '정산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: 'tail_made'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '포털형-철물점형/식료품점형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '금융거래소형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: 'data_collaboration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '데이터_유통_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Concept {id: '통합_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Document {id: 'DB_124.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_marketplace'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_플랫폼'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검색엔진'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'if'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정산'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tail_made'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '포털형-철물점형/식료품점형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융거래소형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_collaboration'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_유통_활성화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합_플랫폼'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_124.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_124.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_125: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_125'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_126.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_126.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_127.1: 마이데이터
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_127.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'mydata'})
SET     n.name = 'Mydata',
    n.name_kr = '마이데이터',
    n.domain = 'DB',
    n.aliases = ['마이데이터'];

MERGE (n:Concept {id: '지불_서비스_법안'})
SET     n.name = '지불 서비스 법안',
    n.name_kr = '지불 서비스 법안',
    n.domain = 'DB';

MERGE (n:Concept {id: '2018.01_/_활용분야에_초점'})
SET     n.name = '2018.01 / 활용분야에 초점',
    n.name_kr = '2018.01 / 활용분야에 초점',
    n.domain = 'DB';

MERGE (n:Concept {id: '정보_권리_부여'})
SET     n.name = '정보 권리 부여',
    n.name_kr = '정보 권리 부여',
    n.domain = 'DB';

MERGE (n:Concept {id: '자기결정권'})
SET     n.name = '자기결정권',
    n.name_kr = '자기결정권',
    n.domain = 'DB';

MERGE (n:Concept {id: '보호조치'})
SET     n.name = '보호조치',
    n.name_kr = '보호조치',
    n.domain = 'DB';

MERGE (n:Concept {id: '정보주체_중심'})
SET     n.name = '정보주체 중심',
    n.name_kr = '정보주체 중심',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_활용체계'})
SET     n.name = '데이터 활용체계',
    n.name_kr = '데이터 활용체계',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_생태계'})
SET     n.name = '데이터 생태계',
    n.name_kr = '데이터 생태계',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터3법'})
SET     n.name = '데이터3법',
    n.name_kr = '데이터3법',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_통제권'})
SET     n.name = '데이터 통제권',
    n.name_kr = '데이터 통제권',
    n.domain = 'DB';

MERGE (n:Concept {id: '오픈api'})
SET     n.name = '오픈API',
    n.name_kr = '오픈API',
    n.domain = 'DB';

MERGE (n:Concept {id: '스크래핑'})
SET     n.name = '스크래핑',
    n.name_kr = '스크래핑',
    n.domain = 'DB';

MERGE (n:Concept {id: '개인정보보호'})
SET     n.name = '개인정보보호',
    n.name_kr = '개인정보보호',
    n.domain = 'DB';

MERGE (n:Concept {id: '개인정보_이동권'})
SET     n.name = '개인정보 이동권',
    n.name_kr = '개인정보 이동권',
    n.domain = 'DB';

MERGE (n:Concept {id: '계좌정보_서비스'})
SET     n.name = '계좌정보 서비스',
    n.name_kr = '계좌정보 서비스',
    n.domain = 'DB';

MERGE (n:Concept {id: '메타데이터'})
SET     n.name = '메타데이터',
    n.name_kr = '메타데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_권한'})
SET     n.name = '데이터 권한',
    n.name_kr = '데이터 권한',
    n.domain = 'DB',
    n.definition = '개인 데이터의 인간 중심적 통제';

MERGE (n:Concept {id: '개인_결정권_부여'})
SET     n.name = '개인 결정권 부여',
    n.name_kr = '개인 결정권 부여',
    n.domain = 'DB',
    n.definition = '개인에게 자신의 목표를 설정하고 추구할 수 있도록 선택 의지와 주도권 부여 - 개인이 선호하는 방식으로 개인 데이터를 안전하게 관리 - 개인이 자신의 데이터를 유용한 정보, 지식 및 자율적인 의사 결정으로 변환할 수 있도록 도구, 기술 지원';

MERGE (n:Concept {id: '데이터_제공'})
SET     n.name = '데이터 제공',
    n.name_kr = '데이터 제공',
    n.domain = 'DB',
    n.definition = '통합 지점으로서의 개인';

MERGE (n:Concept {id: '이식성'})
SET     n.name = '이식성 (액세스 및 재사용)',
    n.name_kr = '이식성 (액세스 및 재사용)',
    n.domain = 'DB',
    n.definition = '개인이 개인 데이터를 개인 장치에 다운로드하고 다른 서비스로 전송하여 개인 데이터를 이식할 수 있도록 권한 부여 - 데이터를 구조화하고 기계가 읽을 수 있는 형식으로 안전하고 쉽게 전환';

MERGE (n:Concept {id: '상호운용성'})
SET     n.name = '상호운용성',
    n.name_kr = '상호운용성',
    n.domain = 'DB',
    n.definition = '데이터, 개방형 API, 프로토콜, 애플리케이션 및 인프라의 상호운용성을 위해 지속적으로 노력 - 모든 개인 데이터는 이식 가능하고 재사용 - 일반적으로 인정되는 표준, 온톨로지, 라이브러리 및 스키마를 기반으로 하거나 필요한 경우 새로운 표준을 개발';

MERGE (n:Concept {id: '데이터_활용'})
SET     n.name = '데이터 활용',
    n.name_kr = '데이터 활용',
    n.domain = 'DB',
    n.definition = '투명성과 책임';

MERGE (n:Concept {id: '금융정보_통합조회'})
SET     n.name = '금융정보 통합조회',
    n.name_kr = '금융정보 통합조회',
    n.domain = 'DB',
    n.definition = '분산되어 있는 개인 금융거래 등의 정보를 통합하여 가독성이 높은 형태로 제공';

MERGE (n:Concept {id: '재무현황_분석'})
SET     n.name = '재무현황 분석',
    n.name_kr = '재무현황 분석',
    n.domain = 'DB',
    n.definition = '일괄 수집된 개인 금융정보 등을 기초로 개인 재무현황 분석';

MERGE (n:Concept {id: '신용관리∙정보관리_지원'})
SET     n.name = '신용관리∙정보관리 지원',
    n.name_kr = '신용관리∙정보관리 지원',
    n.domain = 'DB',
    n.definition = '개인 재무현황을 기초로 신용상태 개선을 위한 맞춤형 재무 컨설팅 및 본인정보 관리 업무';

MERGE (n:Concept {id: '금융상품_정보제공∙추천'})
SET     n.name = '금융상품 정보제공∙추천',
    n.name_kr = '금융상품 정보제공∙추천',
    n.domain = 'DB',
    n.definition = '개인 재무현황을 기초로 개인에게 맞춤형으로 금융상품 추천';

MERGE (n:Concept {id: '스크린_스크래핑'})
SET     n.name = '스크린 스크래핑',
    n.name_kr = '스크린 스크래핑',
    n.domain = 'DB';

MERGE (n:Concept {id: '표준_api'})
SET     n.name = '표준 API',
    n.name_kr = '표준 API',
    n.domain = 'DB';

MERGE (n:Concept {id: '표준_api_장점'})
SET     n.name = '표준 API 장점',
    n.name_kr = '표준 API 장점',
    n.domain = 'DB';

MERGE (n:Concept {id: '개인'})
SET     n.name = '개인',
    n.name_kr = '개인',
    n.domain = 'DB',
    n.definition = '자기정보 접근권 - 다양한 금융서비스 이용';

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'DB',
    n.definition = '데이터 보유 기업';

MERGE (n:Concept {id: '정부'})
SET     n.name = '정부',
    n.name_kr = '정부',
    n.domain = 'DB',
    n.definition = '데이터 개방 정책 - 데이터 경제 활성화';

MERGE (n:Concept {id: '고유업무'})
SET     n.name = '고유업무',
    n.name_kr = '고유업무',
    n.domain = 'DB',
    n.definition = '개인신용정보 수집, 조회, 열람 업무';

MERGE (n:Concept {id: '겸영_및_부수업무'})
SET     n.name = '겸영 및 부수업무',
    n.name_kr = '겸영 및 부수업무',
    n.domain = 'DB',
    n.definition = '투자/금용 자문';

MERGE (n:Concept {id: '은행권'})
SET     n.name = '은행권',
    n.name_kr = '은행권',
    n.domain = 'DB',
    n.definition = '자사의 기존 서비스/앱의 개인화/자산 관리 서비스 고도화 제공 - 표준 API 등 관련 인프라 및 데이터 수집/서비스 플랫폼 도입 - 초대형 데이터뱅크로의 전환을 위해 데이터 분석/활용 능력 제고에 역량 집중';

MERGE (n:Concept {id: '카드사'})
SET     n.name = '카드사',
    n.name_kr = '카드사',
    n.domain = 'DB',
    n.definition = '마이데이터 사업을 위한 전담조직 신설 - 기존에 시행하던 유사서비스 리뉴얼 및 차별화 - 카드, 대출, 자산관리를 연동하는 종합 금융서비스 제공 목표';

MERGE (n:Concept {id: '핀테크사'})
SET     n.name = '핀테크사',
    n.name_kr = '핀테크사',
    n.domain = 'DB',
    n.definition = '은행, 카드, 증권, 보험 등 전반적인 금융권의 정보 통합 분석 - 맞춤형 금융정보 제공, 개인정보관리 대행서비스 준비 - 자사가 보유한 비금융 개인정보와 금융권 개인정보의 결합';

MERGE (n:Concept {id: '1차허가_취득실패사'})
SET     n.name = '1차허가 취득실패사',
    n.name_kr = '1차허가 취득실패사',
    n.domain = 'DB',
    n.definition = '업체간 업무 협약 및 전략적 협력관계 구축 - 본허가를 받은 업체와의 투자/협력관계 - 국민건강보험 빅데이터 개방으로 보험사의 준비 확대';

// --- 관계 ---

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: 'mydata'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '지불_서비스_법안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '2018.01_/_활용분야에_초점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '정보_권리_부여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '자기결정권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '보호조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '정보주체_중심'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_활용체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_생태계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터3법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_통제권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '오픈api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '스크래핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '개인정보보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '개인정보_이동권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '계좌정보_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '메타데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_권한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '개인_결정권_부여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '이식성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '상호운용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '데이터_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '금융정보_통합조회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '재무현황_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '신용관리∙정보관리_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '금융상품_정보제공∙추천'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스크린_스크래핑'})
MERGE (b:Concept {id: '표준_api'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스크린_스크래핑'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '스크린_스크래핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준_api'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '표준_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스크린_스크래핑'})
MERGE (b:Concept {id: '표준_api'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스크린_스크래핑'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '스크린_스크래핑'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '표준_api'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '표준_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '표준_api_장점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '개인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '정부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '고유업무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '겸영_및_부수업무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '은행권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '카드사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '핀테크사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Concept {id: '1차허가_취득실패사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Document {id: 'DB_127.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mydata'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지불_서비스_법안'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2018.01_/_활용분야에_초점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_권리_부여'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자기결정권'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보호조치'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보주체_중심'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_활용체계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_생태계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터3법'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_통제권'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈api'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스크래핑'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보보호'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_이동권'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계좌정보_서비스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_권한'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_결정권_부여'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_제공'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이식성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운용성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_활용'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융정보_통합조회'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재무현황_분석'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신용관리∙정보관리_지원'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융상품_정보제공∙추천'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스크린_스크래핑'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_api'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_api_장점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고유업무'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '겸영_및_부수업무'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '은행권'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카드사'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크사'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1차허가_취득실패사'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_127.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_127.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_127.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_127.3'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_127.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_127.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_131.1: Data Architecture(DA)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_131.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'da'})
SET     n.name = 'DA',
    n.name_kr = 'Data Architecture',
    n.domain = 'DB',
    n.aliases = ['DA', 'Data Architecture'];

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_principle'})
SET     n.name = 'Data Principle',
    n.name_kr = 'Data Principle',
    n.domain = 'DB',
    n.aliases = ['Data Principle'];

MERGE (n:Concept {id: 'reference_model'})
SET     n.name = 'Reference Model',
    n.name_kr = 'Reference Model',
    n.domain = 'DB',
    n.aliases = ['Reference Model'];

MERGE (n:Concept {id: 'data_governance'})
SET     n.name = 'Data Governance',
    n.name_kr = 'Data Governance',
    n.domain = 'DB',
    n.aliases = ['Data Governance'];

MERGE (n:Concept {id: '데이터_아키텍처'})
SET     n.name = '데이터 아키텍처',
    n.name_kr = '데이터 아키텍처',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_모델링'})
SET     n.name = '데이터 모델링',
    n.name_kr = '데이터 모델링',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: 'data_관리_및_운영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: 'data_principle'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: 'reference_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: 'data_governance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_아키텍처'})
MERGE (b:Concept {id: '데이터_모델링'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: '데이터_아키텍처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Concept {id: '데이터_모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Document {id: 'DB_131.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_principle'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reference_model'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_아키텍처'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_모델링'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_131.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_131.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_132.1: Data Governance
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_132.1'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'data_governance'})
SET     n.name = 'Data Governance',
    n.name_kr = 'Data Governance',
    n.domain = 'DB',
    n.aliases = ['Data Governance'];

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: '조직/프로세스/원칙'})
SET     n.name = '조직/프로세스/원칙',
    n.name_kr = '조직/프로세스/원칙',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_품질'})
SET     n.name = '데이터 품질',
    n.name_kr = '데이터 품질',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_표준'})
SET     n.name = '데이터 표준',
    n.name_kr = '데이터 표준',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_관리'})
SET     n.name = '데이터 관리',
    n.name_kr = '데이터 관리',
    n.domain = 'DB';

MERGE (n:Concept {id: 'da'})
SET     n.name = 'DA',
    n.name_kr = 'DA',
    n.domain = 'DB',
    n.aliases = ['DA'];

MERGE (n:Concept {id: '데이터_관리체계'})
SET     n.name = '데이터 관리체계',
    n.name_kr = '데이터 관리체계',
    n.domain = 'DB',
    n.definition = '원칙(Principle)';

MERGE (n:Metric {id: 'process'})
SET     n.name = 'Process',
    n.name_kr = '절차',
    n.domain = 'DB',
    n.definition = '조직이 데이터를 관리하기 위해 수행하는 활동과 체계 - 작업 절차, 모니터링 활동, 측정 활동',
    n.aliases = ['Process', '절차'];

MERGE (n:Concept {id: 'organization'})
SET     n.name = 'Organization',
    n.name_kr = '조직',
    n.domain = 'DB',
    n.definition = '데이터를 관리할 조직 체계 - 데이터 관리자, 데이터베이스 관리자, 데이터 아키텍트',
    n.aliases = ['Organization', '조직'];

MERGE (n:Concept {id: '데이터_아키텍처'})
SET     n.name = '데이터 아키텍처',
    n.name_kr = '데이터 아키텍처',
    n.domain = 'DB',
    n.definition = '표준(Standards)';

MERGE (n:Concept {id: 'framework'})
SET     n.name = 'Framework',
    n.name_kr = '프레임워크',
    n.domain = 'DB',
    n.definition = '전사 데이터 해석, 이해의 기본 틀 제공',
    n.aliases = ['Framework', '프레임워크'];

MERGE (n:Concept {id: 'quality'})
SET     n.name = 'Quality',
    n.name_kr = '품질',
    n.domain = 'DB',
    n.definition = '품질 관리 기준에 따른 측정, 품질관리 활동',
    n.aliases = ['Quality', '품질'];

MERGE (n:Concept {id: '데이터_관리도구'})
SET     n.name = '데이터 관리도구',
    n.name_kr = '데이터 관리도구',
    n.domain = 'DB',
    n.definition = '메타데이터관리도구';

MERGE (n:Concept {id: '품질관리도구'})
SET     n.name = '품질관리도구',
    n.name_kr = '품질관리도구',
    n.domain = 'DB',
    n.definition = '기준정보, 데이터규칙, 업무흐름, 모니터링';

MERGE (n:Concept {id: '데이터_품질_관리'})
SET     n.name = '데이터 품질 관리',
    n.name_kr = '데이터 품질 관리',
    n.domain = 'DB',
    n.definition = '데이터 프로파일링 및 데이터 정제와 같은 작업을 포함하여 데이터 사용방법에 따라 실행';

MERGE (n:Concept {id: '메타데이터_관리'})
SET     n.name = '메타데이터 관리',
    n.name_kr = '메타데이터 관리',
    n.domain = 'DB',
    n.definition = '데이터 검색 중 데이터를 찾고, 분석도구가 빅데이터를 정확하게 해석하고 사용할 수 있도록 실행';

MERGE (n:Concept {id: '데이터_주기_관리'})
SET     n.name = '데이터 주기 관리',
    n.name_kr = '데이터 주기 관리',
    n.domain = 'DB',
    n.definition = '데이터 생성 및 초기 저장에서부터 데이터가 폐기될 때까지 시스템의 데이터 흐름을 관리하는 정책 수립 필요';

MERGE (n:Concept {id: '데이터_보안_및_프라이버시'})
SET     n.name = '데이터 보안 및 프라이버시',
    n.name_kr = '데이터 보안 및 프라이버시',
    n.domain = 'DB',
    n.definition = '데이터 요구 사항 및 정책은 사용자의 역할을 기반으로 필요한 데이터 보호 수준을 정의';

MERGE (n:Concept {id: '국가측면'})
SET     n.name = '국가측면',
    n.name_kr = '국가측면',
    n.domain = 'DB',
    n.definition = '데이터 민족주의 (Data Nationalism)';

MERGE (n:Concept {id: '무역_협상에서_데이터_관련_무역_규범의_구체화'})
SET     n.name = '무역 협상에서 데이터 관련 무역 규범의 구체화',
    n.name_kr = '무역 협상에서 데이터 관련 무역 규범의 구체화',
    n.domain = 'DB',
    n.definition = 'TPP는 국경 간 데이터 이동 보장, 컴퓨터 설비의 지역화 요구 금지, 소스코드 공개 요구 금지를 규정하고 있으며 USMCA의 경우 국경 간 데이터 이동 보장, 컴퓨터 설비의 지역화 요구 금지, 소스코드 공개 요구 금지, 공공데이터 접근 촉진을 명문화';

MERGE (n:Concept {id: '국가간_데이터이동'})
SET     n.name = '국가간 데이터이동',
    n.name_kr = '국가간 데이터이동',
    n.domain = 'DB',
    n.definition = '미국의 ‘클린 네트워크’ 정책과 중국의 ‘데이터 안보에 관한 글로벌 이니 셔티브’ 정책의 대립으로 국가간 데이터 접근에 관한 이슈 발생';

MERGE (n:Concept {id: '기업측면'})
SET     n.name = '기업측면',
    n.name_kr = '기업측면',
    n.domain = 'DB',
    n.definition = '고객 데이터 독점에 따른 공정경쟁 이슈';

MERGE (n:Concept {id: 'digital_tax'})
SET     n.name = 'Digital Tax',
    n.name_kr = '조세 형평성',
    n.domain = 'DB',
    n.definition = '기존 법인세 체계에 디지털 비즈니스 모델이 적용될 수 있도록 ‘주요 디지털 사업장(significant digital presence)’ 개념을 추가 - EU 회원국 중 영국, 프랑스 등 6개국이 매출의 2%에서 7.5%에 해당하는 디지털서비스세(DST: Digital Service Tax)를 부과',
    n.aliases = ['Digital Tax', '조세 형평성'];

MERGE (n:Concept {id: '글로벌_데이터_기업에_대한_규제'})
SET     n.name = '글로벌 데이터 기업에 대한 규제',
    n.name_kr = '글로벌 데이터 기업에 대한 규제',
    n.domain = 'DB',
    n.definition = '글로벌 데이터 기업에 대한 시정조치 명령과 과징금 부과는 새롭게 형성되는 데이터 경제 체제에서 공정경쟁 규제 이슈가 현안으로 부상하고 있음을 의미';

MERGE (n:Concept {id: '국가_데이터_전략과_실행_계획_수립'})
SET     n.name = '국가 데이터 전략과 실행 계획 수립',
    n.name_kr = '국가 데이터 전략과 실행 계획 수립',
    n.domain = 'DB',
    n.definition = '데이터 거버넌스 목표 수립';

MERGE (n:Concept {id: '데이터_개방과_유통_활성화'})
SET     n.name = '데이터 개방과 유통 활성화',
    n.name_kr = '데이터 개방과 유통 활성화',
    n.domain = 'DB',
    n.definition = '데이터 개방, 유통 활성화에 역점을 두고 공공부문의 데이터 공유와 활용 관련 세부 목표와 구체적인 실천 계획 수립';

MERGE (n:Concept {id: '데이터_거버넌스_확립'})
SET     n.name = '데이터 거버넌스 확립',
    n.name_kr = '데이터 거버넌스 확립',
    n.domain = 'DB',
    n.definition = '국가 데이터 거버넌스 체계 정립';

MERGE (n:Concept {id: '데이터_생산,_공유,_활용_체계_개선'})
SET     n.name = '데이터 생산, 공유, 활용 체계 개선',
    n.name_kr = '데이터 생산, 공유, 활용 체계 개선',
    n.domain = 'DB',
    n.definition = '행정데이터와 통계 생산의 유기적 연계 - 공정정책 지원을 위한 공데이터 공유, 활용 강화 - 공공데이터 민간개방 확대, 민간데이터의 공유, 활용 활성화';

MERGE (n:Concept {id: '데이터_역량강화'})
SET     n.name = '데이터 역량강화',
    n.name_kr = '데이터 역량강화',
    n.domain = 'DB',
    n.definition = '데이터 공유 활용을 위한 공감대 형성 - 개인정보호와 데이터 활용의 조화 - 공공의 데이터 분석 역량 강화 - 정책지원을 위한 데이터 공유 활성화';

MERGE (n:Concept {id: '데이터_관련_법제도_정비'})
SET     n.name = '데이터 관련 법제도 정비',
    n.name_kr = '데이터 관련 법제도 정비',
    n.domain = 'DB',
    n.definition = '데이터 관련 법령 정비';

MERGE (n:Concept {id: '법률의_연계성_확보'})
SET     n.name = '법률의 연계성 확보',
    n.name_kr = '법률의 연계성 확보',
    n.domain = 'DB',
    n.definition = '통계법과 데이터기반 행정활성화에 관한 법률 등 연계성 확보를 \\ 위한 개정 작업과 함께 상위 차원의 데이터법 제정';

// --- 관계 ---

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'data_관리_및_운영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '조직/프로세스/원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_품질'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'da'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_관리체계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Metric {id: 'process'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'organization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_아키텍처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'framework'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'quality'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_관리도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '품질관리도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_품질_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '메타데이터_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_주기_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_보안_및_프라이버시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '국가측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '무역_협상에서_데이터_관련_무역_규범의_구체화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '국가간_데이터이동'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '기업측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: 'digital_tax'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '글로벌_데이터_기업에_대한_규제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '국가_데이터_전략과_실행_계획_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_개방과_유통_활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_거버넌스_확립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_생산,_공유,_활용_체계_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_역량강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '데이터_관련_법제도_정비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Concept {id: '법률의_연계성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Document {id: 'DB_132.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'data_governance'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직/프로세스/원칙'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_표준'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'da'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리체계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'organization'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_아키텍처'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'framework'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관리도구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리도구'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_품질_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타데이터_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_주기_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_보안_및_프라이버시'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무역_협상에서_데이터_관련_무역_규범의_구체화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가간_데이터이동'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업측면'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_tax'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌_데이터_기업에_대한_규제'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가_데이터_전략과_실행_계획_수립'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_개방과_유통_활성화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_거버넌스_확립'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_생산,_공유,_활용_체계_개선'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_역량강화'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_관련_법제도_정비'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법률의_연계성_확보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_132.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_132.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_133.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.1'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_133.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.2'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_133.3: MDM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.3'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: 'mdm'})
SET     n.name = 'MDM',
    n.name_kr = 'MDM',
    n.domain = 'DB',
    n.aliases = ['MDM'];

MERGE (n:Concept {id: 'data_관리_및_운영'})
SET     n.name = 'Data 관리 및 운영',
    n.name_kr = 'Data 관리 및 운영',
    n.domain = 'DB';

MERGE (n:Concept {id: '마스터_기준정보'})
SET     n.name = '마스터 기준정보',
    n.name_kr = '마스터 기준정보',
    n.domain = 'DB';

MERGE (n:Concept {id: '컨트롤_기준정보'})
SET     n.name = '컨트롤 기준정보',
    n.name_kr = '컨트롤 기준정보',
    n.domain = 'DB';

MERGE (n:Concept {id: '운영_기준정보'})
SET     n.name = '운영 기준정보',
    n.name_kr = '운영 기준정보',
    n.domain = 'DB';

MERGE (n:Concept {id: '마스터데이터_거버넌스'})
SET     n.name = '마스터데이터 거버넌스',
    n.name_kr = '마스터데이터 거버넌스',
    n.domain = 'DB';

MERGE (n:Concept {id: '마스터데이터_운영_표준'})
SET     n.name = '마스터데이터 운영 표준',
    n.name_kr = '마스터데이터 운영 표준',
    n.domain = 'DB';

MERGE (n:Concept {id: 'repository'})
SET     n.name = 'Repository',
    n.name_kr = 'Repository',
    n.domain = 'DB',
    n.aliases = ['Repository'];

MERGE (n:Concept {id: '데이터_체계관리'})
SET     n.name = '데이터 체계관리',
    n.name_kr = '데이터 체계관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '프로세스_관리'})
SET     n.name = '프로세스 관리',
    n.name_kr = '프로세스 관리',
    n.domain = 'DB';

MERGE (n:Concept {id: 'eai'})
SET     n.name = 'EAI',
    n.name_kr = 'EAI',
    n.domain = 'DB',
    n.aliases = ['EAI'];

MERGE (n:Concept {id: 'consolidation'})
SET     n.name = '분산관리방식',
    n.name_kr = '분산관리방식',
    n.domain = 'DB';

MERGE (n:Concept {id: 'central_master_data'})
SET     n.name = '집중관리방식',
    n.name_kr = '집중관리방식',
    n.domain = 'DB';

MERGE (n:Concept {id: 'harmonization'})
SET     n.name = '혼합관리방식',
    n.name_kr = '혼합관리방식',
    n.domain = 'DB';

MERGE (n:Concept {id: '선정_기준'})
SET     n.name = '선정 기준',
    n.name_kr = '선정 기준',
    n.domain = 'DB',
    n.definition = '관리범위 대상 여부';

MERGE (n:Concept {id: '활용도'})
SET     n.name = '활용도',
    n.name_kr = '활용도',
    n.domain = 'DB',
    n.definition = '전사적으로 활용하는 정보인지 여부';

MERGE (n:Concept {id: '중요도'})
SET     n.name = '중요도',
    n.name_kr = '중요도',
    n.domain = 'DB',
    n.definition = '업무적, 전략적 중요 정보인지 여부';

MERGE (n:Metric {id: '데이터_정확도_보장'})
SET     n.name = '데이터 정확도 보장',
    n.name_kr = '데이터 정확도 보장',
    n.domain = 'DB',
    n.definition = '업무에서 활용 가치가 있는 정보로 제공 가능 여부';

MERGE (n:Concept {id: '지속_관리_여부'})
SET     n.name = '지속 관리 여부',
    n.name_kr = '지속 관리 여부',
    n.domain = 'DB',
    n.definition = '장기적으로 유지관리 가능한 속성인지 여부';

MERGE (n:Metric {id: '무결성_확보'})
SET     n.name = '무결성 확보',
    n.name_kr = '무결성 확보',
    n.domain = 'DB',
    n.definition = '정보 변경절차의 표준 절차 부재로 데이터 신뢰성 저하 방지';

MERGE (n:Concept {id: '관리기준_제시'})
SET     n.name = '관리기준 제시',
    n.name_kr = '관리기준 제시',
    n.domain = 'DB',
    n.definition = '동일 정보에 대한 각 이해 관계자의 정보해석 관점 차이 극복';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'DB',
    n.definition = 'EAI';

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'DB',
    n.definition = 'DQM';

MERGE (n:Concept {id: '구축유형'})
SET     n.name = '구축유형',
    n.name_kr = '구축유형',
    n.domain = 'DB',
    n.definition = '분산관리방식 (Consolidation)';

MERGE (n:Concept {id: '고객관점'})
SET     n.name = '고객관점',
    n.name_kr = '고객관점',
    n.domain = 'DB',
    n.definition = '고객 데이터 중복';

MERGE (n:Concept {id: '상품관점'})
SET     n.name = '상품관점',
    n.name_kr = '상품관점',
    n.domain = 'DB',
    n.definition = '데이터 분류체계 문제';

MERGE (n:Concept {id: '공급관점'})
SET     n.name = '공급관점',
    n.name_kr = '공급관점',
    n.domain = 'DB',
    n.definition = '데이터 관리시점 문제';

MERGE (n:Concept {id: '기업관점'})
SET     n.name = '기업관점',
    n.name_kr = '기업관점',
    n.domain = 'DB',
    n.definition = '데이터 Life Cycle 문제';

MERGE (n:Concept {id: '마스터_데이터_거버넌스'})
SET     n.name = '마스터 데이터 거버넌스',
    n.name_kr = '마스터 데이터 거버넌스',
    n.domain = 'DB',
    n.definition = '거버넌스는 마스터 데이터의 품질 및 일관성을 유지하고, 업무 변화에 신속하게 대응하기 위한 제반 관리규정을 정의';

MERGE (n:Concept {id: '마스터_데이터_운영표준'})
SET     n.name = '마스터 데이터 운영표준',
    n.name_kr = '마스터 데이터 운영표준',
    n.domain = 'DB',
    n.definition = '데이터 표준 및 이에 기반한 데이터 구조와 값을 정의하고 데이터 통합을 위한 데이터흐름과 매핑을 설계하고 데이터 품질을 관리';

MERGE (n:Concept {id: '마스터_데이터_관리_시스템'})
SET     n.name = '마스터 데이터 관리 시스템',
    n.name_kr = '마스터 데이터 관리 시스템',
    n.domain = 'DB',
    n.definition = '데이터 품질의 상시 모니터링 체계를 확보하기 위해서는 선정된 마스터 데이터의 표준체계를 적용하여 마스터 데이터를 적재하기 위한 리포지터리(Repository)의 데이터 모델을 설계하고, 마스터 데이터의 운영체계관리 기능을 도출하여 마스터데이터 관리 시스템 구축에 반영';

MERGE (n:Concept {id: '주도'})
SET     n.name = '주도',
    n.name_kr = '주도',
    n.domain = 'DB',
    n.definition = 'IT 적인 요구사항에 의하여 시작하는 프로젝트 이지만, IT 주도가 아닌 비즈니스 주도의 프로젝트 진행만이 성공 가능 -전사적 접근 필요';

MERGE (n:Concept {id: '거버넌스'})
SET     n.name = '거버넌스',
    n.name_kr = '거버넌스',
    n.domain = 'DB',
    n.definition = '데이터 운영 관리를 위한 조직 및 역할의 정의 선 수행 필요 -기준 정보의 품질관리 생명주기 관리 등의 전담 조직과 부서별 정보관리 역할 정의';

MERGE (n:Concept {id: '진행_방식'})
SET     n.name = '진행 방식',
    n.name_kr = '진행 방식',
    n.domain = 'DB',
    n.definition = 'Think Big, Start Small -전사적인 접근 후 단일 코드별로 단계적 수행';

MERGE (n:Concept {id: '대상_선정'})
SET     n.name = '대상 선정',
    n.name_kr = '대상 선정',
    n.domain = 'DB',
    n.definition = '중앙 관리의 필요성 선정 이후 관리 대상 데이터 선정 진행';

MERGE (n:Concept {id: '표준_연계_방식'})
SET     n.name = '표준 연계 방식',
    n.name_kr = '표준 연계 방식',
    n.domain = 'DB',
    n.definition = '시스템 간 상호 운영성을 위한 표준 인터페이스 채용(웹서비스, SOA)';

MERGE (n:Concept {id: '범위_확정'})
SET     n.name = '범위 확정',
    n.name_kr = '범위 확정',
    n.domain = 'DB',
    n.definition = '마스터 데이터 관리에 필요한 데이터 범위에 대한 명확한 정의 필요';

MERGE (n:Concept {id: '적극적_참여'})
SET     n.name = '적극적 참여',
    n.name_kr = '적극적 참여',
    n.domain = 'DB',
    n.definition = '전사 차원에서 모든 시스템 담당자들의 적극적 참여 유발';

MERGE (n:Concept {id: '데이터_거버넌스_고려'})
SET     n.name = '데이터 거버넌스 고려',
    n.name_kr = '데이터 거버넌스 고려',
    n.domain = 'DB',
    n.definition = '고품질, 명확한 마스터 데이터 관리를 위한 데이터 거버넌스를 고려';

MERGE (n:Concept {id: 'top-down_방식'})
SET     n.name = 'Top-down 방식',
    n.name_kr = 'Top-down 방식',
    n.domain = 'DB',
    n.definition = 'C-Level 부터 인식 개선 후 하향식 방식을 통한 전사적 MDM 구축';

MERGE (n:Concept {id: '기준정보관리'})
SET     n.name = '기준정보관리',
    n.name_kr = '기준정보관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '메타데이터관리'})
SET     n.name = '메타데이터관리',
    n.name_kr = '메타데이터관리',
    n.domain = 'DB';

MERGE (n:Concept {id: '기준정보데이터'})
SET     n.name = '기준정보데이터',
    n.name_kr = '기준정보데이터',
    n.domain = 'DB';

MERGE (n:Concept {id: '트랜잭션데이터'})
SET     n.name = '트랜잭션데이터',
    n.name_kr = '트랜잭션데이터',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'data_관리_및_운영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터_기준정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '컨트롤_기준정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '운영_기준정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터데이터_거버넌스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터데이터_운영_표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'repository'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '데이터_체계관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '프로세스_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'eai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'consolidation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'central_master_data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'harmonization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '선정_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '활용도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '중요도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Metric {id: '데이터_정확도_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '지속_관리_여부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Metric {id: '무결성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '관리기준_제시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '구축유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '고객관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '상품관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '공급관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '기업관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터_데이터_거버넌스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터_데이터_운영표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '마스터_데이터_관리_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'consolidation'})
MERGE (b:Concept {id: 'central_master_data'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'consolidation'})
MERGE (b:Concept {id: 'harmonization'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'consolidation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'central_master_data'})
MERGE (b:Concept {id: 'harmonization'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'central_master_data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'harmonization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '주도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '거버넌스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '진행_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '대상_선정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '표준_연계_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '범위_확정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '적극적_참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '데이터_거버넌스_고려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'top-down_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기준정보관리'})
MERGE (b:Concept {id: '메타데이터관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '기준정보관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '메타데이터관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기준정보데이터'})
MERGE (b:Concept {id: '트랜잭션데이터'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '기준정보데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '트랜잭션데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Document {id: 'DB_133.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_관리_및_운영'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터_기준정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨트롤_기준정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_기준정보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터데이터_거버넌스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터데이터_운영_표준'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'repository'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_체계관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스_관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eai'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consolidation'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'central_master_data'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'harmonization'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선정_기준'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '데이터_정확도_보장'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속_관리_여부'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '무결성_확보'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리기준_제시'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축유형'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객관점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상품관점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공급관점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업관점'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터_데이터_거버넌스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터_데이터_운영표준'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스터_데이터_관리_시스템'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주도'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거버넌스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진행_방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대상_선정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_연계_방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범위_확정'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적극적_참여'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_거버넌스_고려'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'top-down_방식'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기준정보관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메타데이터관리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기준정보데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '트랜잭션데이터'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// DB_133.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.4'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_133.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.5'})
SET doc.domain = 'DB';

// ──────────────────────────────────────
// DB_133.6: 데이터 품질관리 지침
// ──────────────────────────────────────

MERGE (doc:Document {id: 'DB_133.6'})
SET doc.domain = 'DB';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_품질관리_지침'})
SET     n.name = '데이터 품질관리 지침',
    n.name_kr = '데이터 품질관리 지침',
    n.domain = 'DB';

MERGE (n:Metric {id: 'data_관리_및_운영_/가용성'})
SET     n.name = 'Data 관리 및 운영 /가용성',
    n.name_kr = 'Data 관리 및 운영 /가용성',
    n.domain = 'DB';

MERGE (n:Concept {id: '데이터_값'})
SET     n.name = '데이터 값',
    n.name_kr = '데이터 값',
    n.domain = 'DB';

MERGE (n:Concept {id: 'data_hierarchy'})
SET     n.name = '데이터 구조',
    n.name_kr = '데이터 구조',
    n.domain = 'DB';

MERGE (n:Concept {id: '관리_프로세스'})
SET     n.name = '관리 프로세스',
    n.name_kr = '관리 프로세스',
    n.domain = 'DB';

MERGE (n:Concept {id: '논리'})
SET     n.name = '논리',
    n.name_kr = '논리',
    n.domain = 'DB';

MERGE (n:Concept {id: '물리'})
SET     n.name = '물리',
    n.name_kr = '물리',
    n.domain = 'DB';

MERGE (n:Concept {id: '엔티티'})
SET     n.name = '엔티티',
    n.name_kr = '엔티티',
    n.domain = 'DB';

MERGE (n:Concept {id: '관계'})
SET     n.name = '관계',
    n.name_kr = '관계',
    n.domain = 'DB';

MERGE (n:Concept {id: '속성'})
SET     n.name = '속성',
    n.name_kr = '속성',
    n.domain = 'DB';

// --- 관계 ---

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '데이터_값'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: 'data_hierarchy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '관리_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '논리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '물리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '엔티티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Concept {id: '속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Document {id: 'DB_133.6'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_품질관리_지침'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'data_관리_및_운영_/가용성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_값'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_hierarchy'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리_프로세스'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔티티'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관계'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '속성'})
MERGE (b:Domain {id: 'DB'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// DB 도메인 자동 생성 완료
// 노드: 336개
// 관계: 696개
// ================================================================