// ================================================================
// SV 도메인 (SV_051 ~ SV_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_054: HTML5
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_054'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '표준_웹_환경의_확산'})
SET     n.name = '표준 웹 환경의 확산',
    n.name_kr = '표준 웹 환경의 확산',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방형_생태계로의_변화'})
SET     n.name = '개방형 생태계로의 변화',
    n.name_kr = '개방형 생태계로의 변화',
    n.domain = 'SV',
    n.definition = '개방된 웹 상에서 다양한 어플리케이션을 구현하고, 이를 누구나 브라우저로 접근할 수 있으므로, 애플(iOS) 및 구글 (안드로이드) 등 OS 플랫폼에 대한 의존이 감소될 수 있음';

MERGE (n:Concept {id: 'one_source_multi_use'})
SET     n.name = 'One Source Multi Use',
    n.name_kr = '이용자 선택권의 강화',
    n.domain = 'SV',
    n.definition = '이용자의 경우, 인터넷에 접속하면 스마트폰, 태블릿 PC, PC등 기기는 물론, 애플이나 구글 등 벤더에 상관없이 SW 콘텐츠 등을 이용할 수 있음 - 현재, 애플 앱스토어에서 구입한 앱은 구글 안드로이드 폰이나 태블릿 PC 에서 사용할 수 없으나, HTML5 기반의 웹으로 전환하여 이용자 선택 상의 제약 탈피가 가능함.',
    n.aliases = ['One Source Multi Use', '이용자 선택권의 강화'];

// --- 관계 ---

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '표준_웹_환경의_확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '개방형_생태계로의_변화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: 'one_source_multi_use'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Document {id: 'SV_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_웹_환경의_확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방형_생태계로의_변화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_source_multi_use'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_055: Web Socket(중)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_055'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '실시간'})
SET     n.name = '실시간',
    n.name_kr = '실시간',
    n.domain = 'SV';

MERGE (n:Concept {id: '양방향'})
SET     n.name = '양방향',
    n.name_kr = '양방향',
    n.domain = 'SV';

MERGE (n:Concept {id: 'html5_api'})
SET     n.name = 'HTML5 API',
    n.name_kr = 'HTML5 API',
    n.domain = 'SV',
    n.aliases = ['HTML5 API'];

MERGE (n:Concept {id: 'websoecket_send'})
SET     n.name = 'WebSoecket.send',
    n.name_kr = 'WebSoecket.send',
    n.domain = 'SV',
    n.aliases = ['WebSoecket.send'];

MERGE (n:Concept {id: 'websocket_onmessage'})
SET     n.name = 'WebSocket.onMessage',
    n.name_kr = 'WebSocket.onMessage',
    n.domain = 'SV',
    n.aliases = ['WebSocket.onMessage'];

MERGE (n:Concept {id: '웹_브라우저'})
SET     n.name = '웹 브라우저',
    n.name_kr = '웹 브라우저',
    n.domain = 'SV',
    n.definition = 'WebSocket';

MERGE (n:Concept {id: 'send'})
SET     n.name = 'send',
    n.name_kr = 'send',
    n.domain = 'SV',
    n.definition = '데이터송신, 예) wSocket.send("송신 메시지");',
    n.aliases = ['send'];

MERGE (n:Concept {id: 'onmessage'})
SET     n.name = 'onMessage',
    n.name_kr = 'onMessage',
    n.domain = 'SV',
    n.definition = '데이터수신, 예) wSocket.onmessage = function(e);',
    n.aliases = ['onMessage'];

MERGE (n:Concept {id: 'onopen'})
SET     n.name = 'onopen',
    n.name_kr = 'onopen',
    n.domain = 'SV',
    n.definition = '연결설정, 예) wSocket.onopen = function(e){ alert("서버 연결 완료");',
    n.aliases = ['onopen'];

MERGE (n:Concept {id: 'onclose'})
SET     n.name = 'onclose',
    n.name_kr = 'onclose',
    n.domain = 'SV',
    n.definition = '연결해제, 예) wSocket.onclose = function(e){ alert("서버 연결 종료");',
    n.aliases = ['onclose'];

MERGE (n:Concept {id: '웹서버'})
SET     n.name = '웹서버',
    n.name_kr = '웹서버',
    n.domain = 'SV',
    n.definition = '웹소켓서버';

MERGE (n:Concept {id: 'websocket'})
SET     n.name = '웹소켓',
    n.name_kr = '웹소켓',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ajax'})
SET     n.name = 'Ajax',
    n.name_kr = 'Ajax',
    n.domain = 'SV',
    n.aliases = ['Ajax'];

// --- 관계 ---

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '실시간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '양방향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'html5_api'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websoecket_send'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websocket_onmessage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '웹_브라우저'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'send'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onmessage'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onopen'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'onclose'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: '웹서버'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'websocket'})
MERGE (b:Concept {id: 'ajax'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'websocket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Concept {id: 'ajax'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_socket'})
MERGE (b:Document {id: 'SV_055'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양방향'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5_api'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websoecket_send'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websocket_onmessage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_브라우저'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'send'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onmessage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onopen'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'onclose'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'websocket'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ajax'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_056: Web Storage
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_056'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'web_storage'})
SET     n.name = 'Web Storage',
    n.name_kr = 'Web Storage',
    n.domain = 'SV',
    n.aliases = ['Web Storage'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: 'session_storage'})
SET     n.name = 'Session Storage',
    n.name_kr = 'Session Storage',
    n.domain = 'SV',
    n.aliases = ['Session Storage'];

MERGE (n:Concept {id: 'local_storage'})
SET     n.name = 'Local Storage',
    n.name_kr = 'Local Storage',
    n.domain = 'SV',
    n.aliases = ['Local Storage'];

MERGE (n:Concept {id: 'cookie'})
SET     n.name = 'Cookie',
    n.name_kr = 'Cookie',
    n.domain = 'SV',
    n.aliases = ['Cookie'];

// --- 관계 ---

MERGE (a:Concept {id: 'html5'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Concept {id: 'session_storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Concept {id: 'local_storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Concept {id: 'cookie'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Concept {id: 'cookie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Document {id: 'SV_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'session_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'local_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cookie'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_057: Web Workers
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_057'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'web_workers'})
SET     n.name = 'Web Workers',
    n.name_kr = 'Web Workers',
    n.domain = 'SV',
    n.aliases = ['Web Workers'];

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Technology {id: 'network_측면'})
SET     n.name = 'Network 측면',
    n.name_kr = 'Network 측면',
    n.domain = 'SV',
    n.definition = 'HTTPS';

MERGE (n:Concept {id: 'proxy'})
SET     n.name = 'Proxy',
    n.name_kr = 'Proxy',
    n.domain = 'SV',
    n.definition = '프로그램 가능한 네트워크 프록시 - 페이지의 네트워크 요청 처리 방법을 제어',
    n.aliases = ['Proxy'];

MERGE (n:Concept {id: 'language_측면'})
SET     n.name = 'Language 측면',
    n.name_kr = 'Language 측면',
    n.domain = 'SV',
    n.definition = 'Promise';

MERGE (n:Concept {id: 'javascript'})
SET     n.name = 'JavaScript',
    n.name_kr = 'JavaScript',
    n.domain = 'SV',
    n.definition = 'DOM에 직접 액세스 불가 - 제어 대상 페이지와 통신 위해 postMessage 인터페이스 사용',
    n.aliases = ['JavaScript'];

MERGE (n:Metric {id: 'process_측면'})
SET     n.name = 'Process 측면',
    n.name_kr = 'Process 측면',
    n.domain = 'SV',
    n.definition = 'Single Thread';

MERGE (n:Concept {id: 'decoupling'})
SET     n.name = 'Decoupling',
    n.name_kr = 'Decoupling',
    n.domain = 'SV',
    n.definition = '등록 후 html 파일과 Decoupling 되어 독립적으로 구동 - 해당 Domain의 모든 Page에 해당 작동 Scope를 갖음',
    n.aliases = ['Decoupling'];

MERGE (n:Concept {id: 'background'})
SET     n.name = 'Background',
    n.name_kr = 'Background',
    n.domain = 'SV',
    n.definition = 'index.html에서 load되는 app.js르 통해 등록 - bowser가 꺼진 상태에서도 동작, 모든 event를 listening 가능',
    n.aliases = ['Background'];

// --- 관계 ---

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'html5'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Technology {id: 'network_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'proxy'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'language_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'javascript'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Metric {id: 'process_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'decoupling'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Concept {id: 'background'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Document {id: 'SV_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_workers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'network_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'proxy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'language_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'javascript'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decoupling'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'background'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_058: Canvas
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_058'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'canvas'})
SET     n.name = 'Canvas',
    n.name_kr = 'Canvas',
    n.domain = 'SV',
    n.aliases = ['Canvas'];

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '지원요소'})
SET     n.name = '지원요소',
    n.name_kr = '지원요소',
    n.domain = 'SV',
    n.definition = 'HTML요소의 하나이며 HTML5에서 지원';

MERGE (n:Concept {id: '이미지_표현'})
SET     n.name = '이미지 표현',
    n.name_kr = '이미지 표현',
    n.domain = 'SV',
    n.definition = 'Bitmap 기반이며, 즉시모드로 그래픽을 처리';

// --- 관계 ---

MERGE (a:Concept {id: 'canvas'})
MERGE (b:Concept {id: 'html5'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'canvas'})
MERGE (b:Concept {id: '지원요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'canvas'})
MERGE (b:Concept {id: '이미지_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'canvas'})
MERGE (b:Document {id: 'SV_058'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'canvas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이미지_표현'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_059: SVG
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_059'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'svg'})
SET     n.name = 'SVG',
    n.name_kr = 'SVG',
    n.domain = 'SV',
    n.aliases = ['SVG'];

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: '캔b_sv'})
SET     n.name = '캔B SV',
    n.name_kr = '캔B SV',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'svg'})
MERGE (b:Concept {id: 'html5'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'svg'})
MERGE (b:Concept {id: '캔b_sv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'svg'})
MERGE (b:Document {id: 'SV_059'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'svg'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캔b_sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_060: Application Cache
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_060'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'application_cache'})
SET     n.name = 'Application Cache',
    n.name_kr = 'Application Cache',
    n.domain = 'SV',
    n.aliases = ['Application Cache'];

MERGE (n:Concept {id: 'html5'})
SET     n.name = 'HTML5',
    n.name_kr = 'HTML5',
    n.domain = 'SV',
    n.aliases = ['HTML5'];

MERGE (n:Concept {id: 'offline_browsing'})
SET     n.name = 'Offline Browsing',
    n.name_kr = 'Offline Browsing',
    n.domain = 'SV',
    n.aliases = ['Offline Browsing'];

MERGE (n:Concept {id: 'checking'})
SET     n.name = 'Checking',
    n.name_kr = 'Checking',
    n.domain = 'SV',
    n.aliases = ['Checking'];

MERGE (n:Concept {id: 'error'})
SET     n.name = 'error',
    n.name_kr = 'error',
    n.domain = 'SV',
    n.aliases = ['error'];

MERGE (n:Concept {id: 'no_update'})
SET     n.name = 'no update',
    n.name_kr = 'no update',
    n.domain = 'SV',
    n.aliases = ['no update'];

MERGE (n:Concept {id: 'downloading'})
SET     n.name = 'downloading',
    n.name_kr = 'downloading',
    n.domain = 'SV',
    n.aliases = ['downloading'];

MERGE (n:Concept {id: 'progress'})
SET     n.name = 'progress',
    n.name_kr = 'progress',
    n.domain = 'SV',
    n.aliases = ['progress'];

MERGE (n:Concept {id: 'updated_ready'})
SET     n.name = 'updated ready',
    n.name_kr = 'updated ready',
    n.domain = 'SV',
    n.aliases = ['updated ready'];

MERGE (n:Concept {id: 'cached'})
SET     n.name = 'cached',
    n.name_kr = 'cached',
    n.domain = 'SV',
    n.aliases = ['cached'];

MERGE (n:Concept {id: 'obsolete'})
SET     n.name = 'obsolete',
    n.name_kr = 'obsolete',
    n.domain = 'SV',
    n.aliases = ['obsolete'];

// --- 관계 ---

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'html5'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'offline_browsing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'checking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'error'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'no_update'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'downloading'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'progress'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'updated_ready'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'cached'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Concept {id: 'obsolete'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Document {id: 'SV_060'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'application_cache'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'html5'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'offline_browsing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'checking'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'error'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_update'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'downloading'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'progress'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'updated_ready'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cached'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'obsolete'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_061: XHTML
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_061'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'xhtml'})
SET     n.name = 'XHTML',
    n.name_kr = 'XHTML',
    n.domain = 'SV',
    n.aliases = ['XHTML'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'w3c'})
SET     n.name = 'W3C',
    n.name_kr = 'W3C',
    n.domain = 'SV',
    n.aliases = ['W3C'];

MERGE (n:Concept {id: '태그규칙'})
SET     n.name = '태그규칙',
    n.name_kr = '태그규칙',
    n.domain = 'SV';

MERGE (n:Concept {id: '재사용성'})
SET     n.name = '재사용성',
    n.name_kr = '재사용성',
    n.domain = 'SV';

MERGE (n:Concept {id: '경량구조'})
SET     n.name = '경량구조',
    n.name_kr = '경량구조',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Concept {id: 'w3c'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Concept {id: '태그규칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Concept {id: '재사용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Concept {id: '경량구조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Document {id: 'SV_061'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'xhtml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'w3c'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '태그규칙'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재사용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경량구조'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_062: 반응형 웹
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_062'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'responsive_web'})
SET     n.name = 'Responsive Web',
    n.name_kr = '반응형 웹',
    n.domain = 'SV',
    n.aliases = ['반응형 웹'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'reponsive_web'})
SET     n.name = '반응형웹',
    n.name_kr = '반응형웹',
    n.domain = 'SV';

MERGE (n:Concept {id: 'css_3의_미디어_쿼리'})
SET     n.name = 'CSS 3의 미디어 쿼리',
    n.name_kr = 'CSS 3의 미디어 쿼리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'fluid_grid'})
SET     n.name = '유동형 그리드',
    n.name_kr = '유동형 그리드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'flexible_image'})
SET     n.name = '유동형 이미지',
    n.name_kr = '유동형 이미지',
    n.domain = 'SV';

MERGE (n:Concept {id: 'viewport'})
SET     n.name = '뷰포트',
    n.name_kr = '뷰포트',
    n.domain = 'SV';

MERGE (n:Threat {id: 'adaptive_web'})
SET     n.name = 'Adaptive Web',
    n.name_kr = '적응형 웹',
    n.domain = 'SV',
    n.aliases = ['Adaptive Web', '적응형 웹'];

// --- 관계 ---

MERGE (a:Concept {id: 'reponsive_web'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Concept {id: 'css_3의_미디어_쿼리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Concept {id: 'fluid_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Concept {id: 'flexible_image'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Concept {id: 'viewport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Threat {id: 'adaptive_web'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Threat {id: 'adaptive_web'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Document {id: 'SV_062'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'responsive_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reponsive_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'css_3의_미디어_쿼리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fluid_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flexible_image'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'viewport'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'adaptive_web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_063.1: 웹 접근성(WA)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_063.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'wa'})
SET     n.name = 'WA',
    n.name_kr = '웹 접근성',
    n.domain = 'SV',
    n.aliases = ['WA', '웹 접근성'];

MERGE (n:Concept {id: '인터넷_일반'})
SET     n.name = '인터넷 일반',
    n.name_kr = '인터넷 일반',
    n.domain = 'SV';

MERGE (n:Concept {id: '인운이견'})
SET     n.name = '인운이견',
    n.name_kr = '인운이견',
    n.domain = 'SV';

MERGE (n:Concept {id: '대명_충분한발작_가예콘_문법'})
SET     n.name = '대명 충분한발작 가예콘 문법',
    n.name_kr = '대명 충분한발작 가예콘 문법',
    n.domain = 'SV';

MERGE (n:Concept {id: 'kwcag'})
SET     n.name = 'KWCAG',
    n.name_kr = 'KWCAG',
    n.domain = 'SV',
    n.aliases = ['KWCAG'];

// --- 관계 ---

MERGE (a:Concept {id: 'wa'})
MERGE (b:Concept {id: '인터넷_일반'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'wa'})
MERGE (b:Concept {id: '인운이견'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wa'})
MERGE (b:Concept {id: '대명_충분한발작_가예콘_문법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wa'})
MERGE (b:Concept {id: 'kwcag'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wa'})
MERGE (b:Document {id: 'SV_063.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'wa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_일반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인운이견'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대명_충분한발작_가예콘_문법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'kwcag'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_063.2: 전자정부 웹사이트 품질관리 지침
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_063.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '전자정부_웹사이트_품질관리_지침'})
SET     n.name = '전자정부 웹사이트 품질관리 지침',
    n.name_kr = '전자정부 웹사이트 품질관리 지침',
    n.domain = 'SV';

MERGE (n:Concept {id: '웹사이트_품질'})
SET     n.name = '웹사이트 품질',
    n.name_kr = '웹사이트 품질',
    n.domain = 'SV';

MERGE (n:Concept {id: '웹사이트_호환성'})
SET     n.name = '웹사이트 호환성',
    n.name_kr = '웹사이트 호환성',
    n.domain = 'SV';

MERGE (n:Concept {id: '접근성'})
SET     n.name = '접근성',
    n.name_kr = '접근성',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방성'})
SET     n.name = '개방성',
    n.name_kr = '개방성',
    n.domain = 'SV';

MERGE (n:Concept {id: '접속성'})
SET     n.name = '접속성',
    n.name_kr = '접속성',
    n.domain = 'SV';

MERGE (n:Concept {id: '편의성'})
SET     n.name = '편의성',
    n.name_kr = '편의성',
    n.domain = 'SV';

MERGE (n:Concept {id: '효율성'})
SET     n.name = '효율성',
    n.name_kr = '효율성',
    n.domain = 'SV';

MERGE (n:Concept {id: '신뢰성'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'SV';

MERGE (n:Concept {id: '개정_사유'})
SET     n.name = '개정 사유',
    n.name_kr = '개정 사유',
    n.domain = 'SV',
    n.definition = '기존 행정‧공공기관의 웹사이트 관리기준*은 웹표준 준수, 비표준 제거 및 웹호환성 확보 등 다양한 웹브라우저 이용 지원에만 집중 - 전자정부서비스 이용 시 국민 불편을 해소하고 편리성을 높일 수 있도록 웹사이트 품질관리 원칙 및 종합적인 품질관리 기준 마련';

MERGE (n:Concept {id: '주요_내용'})
SET     n.name = '주요 내용',
    n.name_kr = '주요 내용',
    n.domain = 'SV',
    n.definition = '웹사이트 품질관리 원칙';

MERGE (n:Concept {id: '품질관리계획'})
SET     n.name = '품질관리계획',
    n.name_kr = '품질관리계획',
    n.domain = 'SV',
    n.definition = '행정기관등은 웹사이트 품질관리자 지정 및 계획 수립 - 실효성 있는 웹사이트 품질관리를 위해 기존 행안부 중심의 서비스 수준진단을 개별기관 품질관리체계로 전환';

MERGE (n:Concept {id: '품질_진단_및_개선'})
SET     n.name = '품질 진단 및 개선',
    n.name_kr = '품질 진단 및 개선',
    n.domain = 'SV',
    n.definition = '행정기관등은 자체 품질진단 시행, 행안부는 주요 웹사이트 품질진단 시행 - ①행안부는 품질진단 결과에 따라 웹사이트 품질개선 및 통폐합 권고 - ②행정기관등은 권고받은 사항에 대한 필요조치 이행';

// --- 관계 ---

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '웹사이트_품질'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '웹사이트_호환성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '접근성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '개방성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '접속성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '편의성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '효율성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '개정_사유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '품질관리계획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Concept {id: '품질_진단_및_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Document {id: 'SV_063.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '전자정부_웹사이트_품질관리_지침'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹사이트_품질'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹사이트_호환성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '편의성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '효율성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개정_사유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_내용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리계획'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질_진단_및_개선'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_063.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_063.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_064: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_064'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_065: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_065'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_066: Mobile Web2.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_066'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mobile_web2_0'})
SET     n.name = 'Mobile Web2.0',
    n.name_kr = 'Mobile Web2.0',
    n.domain = 'SV',
    n.aliases = ['Mobile Web2.0'];

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: '표준_개방성'})
SET     n.name = '표준 개방성',
    n.name_kr = '표준 개방성',
    n.domain = 'SV';

MERGE (n:Concept {id: '롱테일'})
SET     n.name = '롱테일',
    n.name_kr = '롱테일',
    n.domain = 'SV';

MERGE (n:Concept {id: '유무선_연계'})
SET     n.name = '유무선 연계',
    n.name_kr = '유무선 연계',
    n.domain = 'SV';

MERGE (n:Concept {id: '풀브라우징'})
SET     n.name = '풀브라우징',
    n.name_kr = '풀브라우징',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ugc_sns'})
SET     n.name = 'UGC/SNS',
    n.name_kr = 'UGC/SNS',
    n.domain = 'SV',
    n.aliases = ['UGC/SNS'];

MERGE (n:Concept {id: '모바일_광고'})
SET     n.name = '모바일 광고',
    n.name_kr = '모바일 광고',
    n.domain = 'SV';

MERGE (n:Concept {id: '오픈소스'})
SET     n.name = '오픈소스',
    n.name_kr = '오픈소스',
    n.domain = 'SV';

MERGE (n:Concept {id: '공개플랫폼'})
SET     n.name = '공개플랫폼',
    n.name_kr = '공개플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: 'web_2.0_지향'})
SET     n.name = 'Web 2.0 지향',
    n.name_kr = 'Web 2.0 지향',
    n.domain = 'SV',
    n.definition = '다양한 서비스를 포함하는 플렛폼으로서의 모바일 웹';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'SV',
    n.definition = '인터넷 접속 기기의 확장(PC -> Mobile)';

MERGE (n:Concept {id: '사용자_중심'})
SET     n.name = '사용자 중심',
    n.name_kr = '사용자 중심',
    n.domain = 'SV',
    n.definition = 'Web 2.0 철학 계승에 따른 개방적이고 사람 중심';

MERGE (n:Concept {id: 'mobile_web_2_0'})
SET     n.name = 'Mobile Web 2.0',
    n.name_kr = 'Mobile Web 2.0',
    n.domain = 'SV',
    n.aliases = ['Mobile Web 2.0'];

MERGE (n:Concept {id: 'web_2_0'})
SET     n.name = 'Web 2.0',
    n.name_kr = 'Web 2.0',
    n.domain = 'SV',
    n.aliases = ['Web 2.0'];

// --- 관계 ---

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '표준_개방성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '롱테일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '유무선_연계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '풀브라우징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: 'ugc_sns'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '모바일_광고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '오픈소스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '공개플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: 'web_2.0_지향'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: '사용자_중심'})
MERGE (a)-[:EVOLVED_FROM]->(b);

MERGE (a:Concept {id: 'mobile_web_2_0'})
MERGE (b:Concept {id: 'web_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: 'mobile_web_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Concept {id: 'web_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Document {id: 'SV_066'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mobile_web2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표준_개방성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '롱테일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유무선_연계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '풀브라우징'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ugc_sns'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_광고'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오픈소스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_2.0_지향'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_중심'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mobile_web_2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_067: 안드로이드 아키텍처
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_067'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '안드로이드_아키텍처'})
SET     n.name = '안드로이드 아키텍처',
    n.name_kr = '안드로이드 아키텍처',
    n.domain = 'SV';

MERGE (n:Concept {id: '리눅스커널'})
SET     n.name = '리눅스커널',
    n.name_kr = '리눅스커널',
    n.domain = 'SV';

MERGE (n:Concept {id: 'libraries'})
SET     n.name = '라이브러리',
    n.name_kr = '라이브러리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'android_runtime'})
SET     n.name = '안드로이드 런타임',
    n.name_kr = '안드로이드 런타임',
    n.domain = 'SV';

MERGE (n:Concept {id: '어플리케이션_프레임웍'})
SET     n.name = '어플리케이션 프레임웍',
    n.name_kr = '어플리케이션 프레임웍',
    n.domain = 'SV';

MERGE (n:Concept {id: '어플리케이션'})
SET     n.name = '어플리케이션',
    n.name_kr = '어플리케이션',
    n.domain = 'SV';

MERGE (n:Threat {id: 'applications'})
SET     n.name = 'applications',
    n.name_kr = '애플리케이션',
    n.domain = 'SV',
    n.definition = '사용자 어플리케이션을 Android에 빌드인 가능 - 용도에 따라 교체 사용 가능 - Java 로 작성 - Core Application 을 탑재 - Android package(*.apk) 형태 : 디바이스로 다운로드하는 단위, Java code+data/resource files로 구성, aapt tool 을 사용하여 제작',
    n.aliases = ['applications', '애플리케이션'];

MERGE (n:Concept {id: 'application_framework'})
SET     n.name = 'application framework',
    n.name_kr = '어플리케이션 프레임워크',
    n.domain = 'SV',
    n.definition = '개발자는 Core Application 에서 사용되는 Framework API 를 같이 사용할 수 있음 - Component 재사용이 용이하도록 설계 - Application 에서 만든 기능을 다른 Application 에서 사용 가능 - Application Framework 에서 제공하는 Service 와 System - API기반의 인터페이스를 제공.',
    n.aliases = ['application framework', '어플리케이션 프레임워크'];

MERGE (n:Concept {id: 'linux_kernel'})
SET     n.name = 'Linux Kernel',
    n.name_kr = '리눅스 커널',
    n.domain = 'SV',
    n.definition = 'Linux version 2.6.x - 추상 계층 제공 : 하드웨어와 상위 소프트웨어 스택 사이 Core System Service - 안드로이드에 맞게 수정된 리눅스 커널 - 안드로이드에서 HAL 레이어를 담당. - HW를 구동하기 위한 디바이스 드라이버 및 메모리,프로세스, 네트워크 관리',
    n.aliases = ['Linux Kernel', '리눅스 커널'];

// --- 관계 ---

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: '리눅스커널'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: 'libraries'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: 'android_runtime'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: '어플리케이션_프레임웍'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: '어플리케이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Threat {id: 'applications'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: 'application_framework'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Concept {id: 'linux_kernel'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Document {id: 'SV_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '안드로이드_아키텍처'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리눅스커널'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'libraries'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'android_runtime'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션_프레임웍'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'applications'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'application_framework'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'linux_kernel'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_070: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_070'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_071.1: FOTA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_071.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'fota'})
SET     n.name = 'FOTA',
    n.name_kr = 'FOTA',
    n.domain = 'SV',
    n.aliases = ['FOTA'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fota'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fota'})
MERGE (b:Document {id: 'SV_071.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fota'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_071.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_071.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_072: MDM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_072'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'mdm'})
SET     n.name = 'MDM',
    n.name_kr = 'MDM',
    n.domain = 'SV',
    n.aliases = ['MDM'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: '디사보소'})
SET     n.name = '디사보소',
    n.name_kr = '디사보소',
    n.domain = 'SV';

MERGE (n:Concept {id: '주요기능'})
SET     n.name = '주요기능',
    n.name_kr = '주요기능',
    n.domain = 'SV',
    n.definition = 'OTA(Over The Air)';

MERGE (n:Concept {id: 'trouble_shooting'})
SET     n.name = 'Trouble Shooting',
    n.name_kr = 'Trouble Shooting',
    n.domain = 'SV',
    n.definition = '스케줄링된 이벤트 기반 실시간 모니터링 사용자 인식하기 전 IT 관리자의 이슈 식별',
    n.aliases = ['Trouble Shooting'];

MERGE (n:Concept {id: '실시간_인벤토리'})
SET     n.name = '실시간 인벤토리',
    n.name_kr = '실시간 인벤토리',
    n.domain = 'SV',
    n.definition = '시스템 환경설정, 어플리케이션, 보안 설정 정보 적용 경고 시간과 적용 사이의 기기 불일치 기간 제거';

MERGE (n:Concept {id: '원격_제어'})
SET     n.name = '원격 제어',
    n.name_kr = '원격 제어',
    n.domain = 'SV',
    n.definition = '사용법이 서툰 사용자에 대한 원격 지원 원격 제어 통한 트러블 슈팅 효율화';

MERGE (n:Concept {id: '셀프서비스_포털'})
SET     n.name = '셀프서비스 포털',
    n.name_kr = '셀프서비스 포털',
    n.domain = 'SV',
    n.definition = '요청 발생시마다 셀프 서비스 토털 접속 통한 효과적 운영 모바일 정책과 비용 정책 조회';

MERGE (n:Concept {id: '모니터링'})
SET     n.name = '모니터링',
    n.name_kr = '모니터링',
    n.domain = 'SV',
    n.definition = '기기 일치성과 모니터링 환경 요구 대응 시스템 경고 등 맞춤 기능에 정보 등을 IT 관리자에게 전달';

MERGE (n:Concept {id: '모바일_보안관리'})
SET     n.name = '모바일 보안관리',
    n.name_kr = '모바일 보안관리',
    n.domain = 'SV',
    n.definition = 'PIN 강제실행';

MERGE (n:Concept {id: '선택적_데이터_삭제'})
SET     n.name = '선택적 데이터 삭제',
    n.name_kr = '선택적 데이터 삭제',
    n.domain = 'SV',
    n.definition = 'BYOD 적용 위한 개인/업무 데이터 선택 삭제';

MERGE (n:Concept {id: '탈옥/루팅_탐지'})
SET     n.name = '탈옥/루팅 탐지',
    n.name_kr = '탈옥/루팅 탐지',
    n.domain = 'SV',
    n.definition = '보안 정책 우회 수단 탐지 및 차단';

MERGE (n:Concept {id: '데이터_암호화'})
SET     n.name = '데이터 암호화',
    n.name_kr = '데이터 암호화',
    n.domain = 'SV',
    n.definition = '주요 정보에 대한 데이터 암호화 적용';

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'SV',
    n.definition = '기존 VPN 솔루션과의 통합 인증 지원',
    n.aliases = ['VPN'];

MERGE (n:Technology {id: 'dlp'})
SET     n.name = 'DLP',
    n.name_kr = 'DLP',
    n.domain = 'SV',
    n.definition = '부주의나 고의적인 데이터 누출 차단',
    n.aliases = ['DLP'];

MERGE (n:Concept {id: 'active_sync'})
SET     n.name = 'Active Sync',
    n.name_kr = 'Active Sync',
    n.domain = 'SV',
    n.definition = 'MDM 관리 받지 않는 기기의 접속 차단',
    n.aliases = ['Active Sync'];

MERGE (n:Concept {id: 'application_관리'})
SET     n.name = 'Application 관리',
    n.name_kr = 'Application 관리',
    n.domain = 'SV',
    n.definition = '원격 SW 유통과 업데이트';

MERGE (n:Concept {id: '화이트_&_블랙리스트'})
SET     n.name = '화이트 & 블랙리스트',
    n.name_kr = '화이트 & 블랙리스트',
    n.domain = 'SV',
    n.definition = '기기 상에서 인증 받은 앱 접속 지원, 블랙리스트 앱 차단';

MERGE (n:Concept {id: '앱스토어_제한'})
SET     n.name = '앱스토어 제한',
    n.name_kr = '앱스토어 제한',
    n.domain = 'SV',
    n.definition = '소비자 앱스토어 접속 제한 정책 적용';

MERGE (n:Concept {id: '기업_등급_앱스토어'})
SET     n.name = '기업 등급 앱스토어',
    n.name_kr = '기업 등급 앱스토어',
    n.domain = 'SV',
    n.definition = '기업용 앱스토어 통한 정책엔진, 리포팅, 접속 제어 지원';

MERGE (n:Concept {id: '추가기능'})
SET     n.name = '추가기능',
    n.name_kr = '추가기능',
    n.domain = 'SV',
    n.definition = 'PC 플랫폼 지원';

MERGE (n:Concept {id: '서비스_관리_통합'})
SET     n.name = '서비스 관리 통합',
    n.name_kr = '서비스 관리 통합',
    n.domain = 'SV',
    n.definition = '핵심 IT 자산 관리와 IT 서비스 관리 통합';

MERGE (n:Concept {id: '비용_관리'})
SET     n.name = '비용 관리',
    n.name_kr = '비용 관리',
    n.domain = 'SV',
    n.definition = '통신비용 관리와 기기 라이프사이클 관리, 추적 기능';

MERGE (n:Concept {id: '글로벌_커버리지'})
SET     n.name = '글로벌 커버리지',
    n.name_kr = '글로벌 커버리지',
    n.domain = 'SV',
    n.definition = '세계 전 지역에서 이용 가능한 MDM 및 로밍 제어';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '디사보소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '주요기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'trouble_shooting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '실시간_인벤토리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '원격_제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '셀프서비스_포털'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '모바일_보안관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '선택적_데이터_삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '탈옥/루팅_탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '데이터_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Technology {id: 'dlp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'active_sync'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: 'application_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '화이트_&_블랙리스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '앱스토어_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '기업_등급_앱스토어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '추가기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '서비스_관리_통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '비용_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Concept {id: '글로벌_커버리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Document {id: 'SV_072'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mdm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디사보소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trouble_shooting'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_인벤토리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격_제어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '셀프서비스_포털'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_보안관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '선택적_데이터_삭제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈옥/루팅_탐지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_암호화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'dlp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'active_sync'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'application_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화이트_&_블랙리스트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앱스토어_제한'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_등급_앱스토어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추가기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_관리_통합'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌_커버리지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_073: MEAP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_073'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'meap'})
SET     n.name = 'MEAP',
    n.name_kr = 'MEAP',
    n.domain = 'SV',
    n.aliases = ['MEAP'];

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: 'one_source_multi_use'})
SET     n.name = 'One Source Multi-use',
    n.name_kr = 'One Source Multi-use',
    n.domain = 'SV',
    n.aliases = ['One Source Multi-use'];

MERGE (n:Concept {id: '모바일_통합개발_환경'})
SET     n.name = '모바일 통합개발 환경',
    n.name_kr = '모바일 통합개발 환경',
    n.domain = 'SV';

MERGE (n:Concept {id: 'osmu'})
SET     n.name = 'OSMU',
    n.name_kr = 'OSMU',
    n.domain = 'SV',
    n.aliases = ['OSMU'];

MERGE (n:Concept {id: '재활용성'})
SET     n.name = '재활용성',
    n.name_kr = '재활용성',
    n.domain = 'SV';

MERGE (n:Concept {id: '비용절감'})
SET     n.name = '비용절감',
    n.name_kr = '비용절감',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일_화면_지원'})
SET     n.name = '모바일 화면 지원',
    n.name_kr = '모바일 화면 지원',
    n.domain = 'SV';

MERGE (n:Concept {id: '테스트_연동_지원'})
SET     n.name = '테스트 연동 지원',
    n.name_kr = '테스트 연동 지원',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: 'one_source_multi_use'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '모바일_통합개발_환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: 'osmu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '재활용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '비용절감'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '모바일_화면_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Concept {id: '테스트_연동_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Document {id: 'SV_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'meap'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_source_multi_use'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_통합개발_환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'osmu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재활용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비용절감'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일_화면_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트_연동_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_074: BYOD (Bring Your Own Device)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_074'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'bring_your_own_device'})
SET     n.name = 'Bring Your Own Device',
    n.name_kr = 'BYOD',
    n.domain = 'SV',
    n.aliases = ['Bring Your Own Device', 'BYOD'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: 'byod'})
SET     n.name = 'BYOD',
    n.name_kr = 'BYOD',
    n.domain = 'SV',
    n.aliases = ['BYOD'];

MERGE (n:Concept {id: 'byod_보안이슈'})
SET     n.name = 'BYOD 보안이슈',
    n.name_kr = 'BYOD 보안이슈',
    n.domain = 'SV';

MERGE (n:Concept {id: 'byod_가상_데스크탑_기술'})
SET     n.name = 'BYOD 가상 데스크탑 기술',
    n.name_kr = 'BYOD 가상 데스크탑 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cyod'})
SET     n.name = 'CYOD',
    n.name_kr = 'CYOD',
    n.domain = 'SV',
    n.aliases = ['CYOD'];

MERGE (n:Concept {id: '개발'})
SET     n.name = '개발',
    n.name_kr = '개발',
    n.domain = 'SV',
    n.definition = 'SW 다양성';

MERGE (n:Concept {id: 'hw_다양성'})
SET     n.name = 'HW 다양성',
    n.name_kr = 'HW 다양성',
    n.domain = 'SV',
    n.definition = '화면 해상도, 메모리용량, GPS, 카메라 등';

MERGE (n:Concept {id: '운영'})
SET     n.name = '운영',
    n.name_kr = '운영',
    n.domain = 'SV',
    n.definition = '관리포인트 증가';

MERGE (n:Threat {id: '보안위협_증가'})
SET     n.name = '보안위협 증가',
    n.name_kr = '보안위협 증가',
    n.domain = 'SV',
    n.definition = '무료/공공 Wi-Fi망을 통해 회사 네트워크에 접속 - 장비를 타인에게 대여하는 상황 - 잠금 설정(비밀번호)되지 않은 장비에 대한 통제방법 - 비 암호화된 민감 데이터(문서나 파일)의 외부 유출 가능성 - 악성코드에 감염된 장비에 대한 통제방법';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'byod'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'byod_보안이슈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'byod_가상_데스크탑_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'cyod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'hw_다양성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: '운영'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Threat {id: '보안위협_증가'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'byod'})
MERGE (b:Concept {id: 'cyod'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'byod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Concept {id: 'cyod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Document {id: 'SV_074'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bring_your_own_device'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'byod'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'byod_보안이슈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'byod_가상_데스크탑_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cyod'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hw_다양성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '보안위협_증가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_075: CYOD (Choose Your Own Device)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_075'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'choose_your_own_device'})
SET     n.name = 'Choose Your Own Device',
    n.name_kr = 'CYOD',
    n.domain = 'SV',
    n.aliases = ['Choose Your Own Device', 'CYOD'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cyod'})
SET     n.name = 'CYOD',
    n.name_kr = 'CYOD',
    n.domain = 'SV',
    n.aliases = ['CYOD'];

MERGE (n:Concept {id: 'byod'})
SET     n.name = 'BYOD',
    n.name_kr = 'BYOD',
    n.domain = 'SV',
    n.aliases = ['BYOD'];

MERGE (n:Concept {id: 'emm플랫폼'})
SET     n.name = 'EMM플랫폼',
    n.name_kr = 'EMM플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV';

MERGE (n:Concept {id: '업무_효율성'})
SET     n.name = '업무 효율성',
    n.name_kr = '업무 효율성',
    n.domain = 'SV',
    n.definition = '기업 보안 정책도 적용, 효율성 및 편의성을 유지 - 기존 임직원들의 모바일 사용 패턴을 중심으로 한 디바이스 허용이 중요';

MERGE (n:Concept {id: '기업용_앱,_데이터_보안_강화'})
SET     n.name = '기업용 앱, 데이터 보안 강화',
    n.name_kr = '기업용 앱, 데이터 보안 강화',
    n.domain = 'SV',
    n.definition = '기업 내부의 안전한 데이터 및 앱 배포부터 관리가 필수';

MERGE (n:Concept {id: '업무-사생활_영역의_구분'})
SET     n.name = '업무-사생활 영역의 구분',
    n.name_kr = '업무-사생활 영역의 구분',
    n.domain = 'SV',
    n.definition = '업무와 개인적 사용을 병행하게 될 경우 업무 데이터와 개인 데이터가 혼재 혼란 - 디바이스 내 업무용 보안 영역을 분리하여, 해당 보안 영역 내에서만 데이터, 앱을 관리, 운영하는 컨테이너 기능을 통해 방지 필요';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyod'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: 'byod'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: 'emm플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: '업무_효율성'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: '기업용_앱,_데이터_보안_강화'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Concept {id: '업무-사생활_영역의_구분'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Document {id: 'SV_075'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'choose_your_own_device'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cyod'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'byod'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'emm플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_효율성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업용_앱,_데이터_보안_강화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무-사생활_영역의_구분'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_076: 스마트 워크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_076'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스마트_워크'})
SET     n.name = '스마트 워크',
    n.name_kr = '스마트 워크',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트_워크'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트_워크'})
MERGE (b:Document {id: 'SV_076'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트_워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_077: 원격근무
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_077'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'SV',
    n.aliases = ['VPN'];

MERGE (n:Concept {id: '화상회의'})
SET     n.name = '화상회의',
    n.name_kr = '화상회의',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드._협업_시스템'})
SET     n.name = '클라우드. 협업 시스템',
    n.name_kr = '클라우드. 협업 시스템',
    n.domain = 'SV';

MERGE (n:Concept {id: 'vdi'})
SET     n.name = 'VDI',
    n.name_kr = 'VDI',
    n.domain = 'SV',
    n.aliases = ['VDI'];

MERGE (n:Concept {id: 'webrtc'})
SET     n.name = 'WebRTC',
    n.name_kr = 'WebRTC',
    n.domain = 'SV',
    n.aliases = ['WebRTC'];

MERGE (n:Concept {id: '2020.04)'})
SET     n.name = '2020.04)',
    n.name_kr = '2020.04)',
    n.domain = 'SV';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스',
    n.name_kr = '서비스',
    n.domain = 'SV',
    n.definition = '화상회의';

MERGE (n:Technology {id: '보안요소'})
SET     n.name = '보안요소',
    n.name_kr = '보안요소',
    n.domain = 'SV',
    n.definition = 'VPN';

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'SV',
    n.definition = 'WebRTC';

MERGE (n:Concept {id: '인프라'})
SET     n.name = '인프라',
    n.name_kr = '인프라',
    n.domain = 'SV',
    n.definition = 'Data Center';

MERGE (n:Concept {id: '제도/문화'})
SET     n.name = '제도/문화',
    n.name_kr = '제도/문화',
    n.domain = 'SV',
    n.definition = '업무형태 다양화';

MERGE (n:Concept {id: 'ict'})
SET     n.name = 'ICT',
    n.name_kr = 'ICT',
    n.domain = 'SV',
    n.definition = '맞춤형 기기',
    n.aliases = ['ICT'];

MERGE (n:Concept {id: '공간'})
SET     n.name = '공간',
    n.name_kr = '공간',
    n.domain = 'SV',
    n.definition = '업무 거점 구축';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '화상회의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '클라우드._협업_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: 'vdi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: 'webrtc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '2020.04)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Technology {id: '보안요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '인프라'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '제도/문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: 'ict'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Concept {id: '공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Document {id: 'SV_077'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화상회의'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드._협업_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vdi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'webrtc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2020.04)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도/문화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ict'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_078: 언택트
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_078'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'untect'})
SET     n.name = 'Untect',
    n.name_kr = '언택트',
    n.domain = 'SV',
    n.aliases = ['언택트'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_노마드'})
SET     n.name = '디지털 노마드',
    n.name_kr = '디지털 노마드',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격진료'})
SET     n.name = '원격진료',
    n.name_kr = '원격진료',
    n.domain = 'SV';

MERGE (n:Concept {id: '비접촉_원격근무'})
SET     n.name = '비접촉 원격근무',
    n.name_kr = '비접촉 원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '비접촉'})
SET     n.name = '비접촉',
    n.name_kr = '비접촉',
    n.domain = 'SV';

MERGE (n:Concept {id: '유통'})
SET     n.name = '유통',
    n.name_kr = '유통',
    n.domain = 'SV',
    n.definition = '물류 자동화';

MERGE (n:Concept {id: '금융'})
SET     n.name = '금융',
    n.name_kr = '금융',
    n.domain = 'SV',
    n.definition = '비대면 서비스';

MERGE (n:Concept {id: '근무'})
SET     n.name = '근무',
    n.name_kr = '근무',
    n.domain = 'SV',
    n.definition = '유연 근무제';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육',
    n.name_kr = '교육',
    n.domain = 'SV',
    n.definition = '비대명 교육';

MERGE (n:Concept {id: '헬스케어'})
SET     n.name = '헬스케어',
    n.name_kr = '헬스케어',
    n.domain = 'SV',
    n.definition = '원격 의료';

MERGE (n:Concept {id: 'ai기반_상담,진단기술'})
SET     n.name = 'AI기반 상담,진단기술',
    n.name_kr = 'AI기반 상담,진단기술',
    n.domain = 'SV',
    n.definition = 'AI가 진단 모니터링 하는 디지털 전환 기술';

MERGE (n:Concept {id: '생체정보_측정_및_분석'})
SET     n.name = '생체정보 측정 및 분석',
    n.name_kr = '생체정보 측정 및 분석',
    n.domain = 'SV',
    n.definition = '생체정보에 대한 정보 저장과 분석 기술';

MERGE (n:Concept {id: 'ai/빅데이터_기반_학습'})
SET     n.name = 'AI/빅데이터 기반 학습',
    n.name_kr = 'AI/빅데이터 기반 학습',
    n.domain = 'SV',
    n.definition = '정밀적 분석되는 고도화 학습 효과';

MERGE (n:Concept {id: '교통'})
SET     n.name = '교통',
    n.name_kr = '교통',
    n.domain = 'SV',
    n.definition = '무인자율주행교통수단';

MERGE (n:Concept {id: '개인_맞춤형_라스트마일_교통'})
SET     n.name = '개인 맞춤형 라스트마일 교통',
    n.name_kr = '개인 맞춤형 라스트마일 교통',
    n.domain = 'SV',
    n.definition = '개인교통의 증가 , 개인 맞춤형 교통';

MERGE (n:Concept {id: 'maas'})
SET     n.name = 'MaaS',
    n.name_kr = 'MaaS',
    n.domain = 'SV',
    n.definition = '서비스 기반의개인 맞춤형 교통 서비스',
    n.aliases = ['MaaS'];

MERGE (n:Concept {id: '물류'})
SET     n.name = '물류',
    n.name_kr = '물류',
    n.domain = 'SV',
    n.definition = '물류정보 디지털화, 플랫폼화';

MERGE (n:Concept {id: '자율주행_라스트마일_배송로봇'})
SET     n.name = '자율주행 라스트마일 배송로봇',
    n.name_kr = '자율주행 라스트마일 배송로봇',
    n.domain = 'SV',
    n.definition = '자동 장거리 서비스 배송 로봇 서비스';

MERGE (n:Concept {id: '제조'})
SET     n.name = '제조',
    n.name_kr = '제조',
    n.domain = 'SV',
    n.definition = '디지털트윈';

MERGE (n:Concept {id: '증강기술'})
SET     n.name = '증강기술',
    n.name_kr = '증강기술',
    n.domain = 'SV',
    n.definition = '증강현실을 통한 서비스 제공';

MERGE (n:Concept {id: '협동로봇기술'})
SET     n.name = '협동로봇기술',
    n.name_kr = '협동로봇기술',
    n.domain = 'SV',
    n.definition = '다양한 로봇 기술을 통한 증강적 서비스 제공';

MERGE (n:Concept {id: '환경'})
SET     n.name = '환경',
    n.name_kr = '환경',
    n.domain = 'SV',
    n.definition = '폐기물 수집,운반 로봇';

MERGE (n:Concept {id: '지능형_cctv'})
SET     n.name = '지능형 CCTV',
    n.name_kr = '지능형 CCTV',
    n.domain = 'SV',
    n.definition = '주변 탐색을 통한 자동 모니터링 분석';

MERGE (n:Concept {id: '문화'})
SET     n.name = '문화',
    n.name_kr = '문화',
    n.domain = 'SV',
    n.definition = '실감라이브서비스 기술';

MERGE (n:Concept {id: '딥페이크_탐지_기술'})
SET     n.name = '딥페이크 탐지 기술',
    n.name_kr = '딥페이크 탐지 기술',
    n.domain = 'SV',
    n.definition = '저작권 및 불법 영상 제지를 위한 기술';

MERGE (n:Concept {id: '제도/문화'})
SET     n.name = '제도/문화',
    n.name_kr = '제도/문화',
    n.domain = 'SV',
    n.definition = '업무형태 다양화';

MERGE (n:Concept {id: 'ict'})
SET     n.name = 'ICT',
    n.name_kr = 'ICT',
    n.domain = 'SV',
    n.definition = '맞춤형 기기',
    n.aliases = ['ICT'];

MERGE (n:Concept {id: '공간'})
SET     n.name = '공간',
    n.name_kr = '공간',
    n.domain = 'SV',
    n.definition = '업무 거점 구축';

// --- 관계 ---

MERGE (a:Concept {id: '모바일'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '모바일'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '원격근무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '디지털_노마드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '원격진료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '비접촉_원격근무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '비접촉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '유통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '금융'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '근무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '헬스케어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: 'ai기반_상담,진단기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '생체정보_측정_및_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: 'ai/빅데이터_기반_학습'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '교통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '개인_맞춤형_라스트마일_교통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: 'maas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '물류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '자율주행_라스트마일_배송로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '제조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '증강기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '협동로봇기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '지능형_cctv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '딥페이크_탐지_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '제도/문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: 'ict'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Concept {id: '공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Document {id: 'SV_078'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'untect'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_노마드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격진료'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비접촉_원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비접촉'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '헬스케어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai기반_상담,진단기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체정보_측정_및_분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai/빅데이터_기반_학습'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_맞춤형_라스트마일_교통'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'maas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율주행_라스트마일_배송로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제조'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '증강기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협동로봇기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_cctv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '딥페이크_탐지_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도/문화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ict'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_079: 딥택트(Deeptact)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_079'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'deeptact'})
SET     n.name = 'Deeptact',
    n.name_kr = '딥택트',
    n.domain = 'SV',
    n.aliases = ['Deeptact', '딥택트'];

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '활용분야'})
SET     n.name = '활용분야',
    n.name_kr = '활용분야',
    n.domain = 'SV',
    n.definition = '고객접촉/홍보';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육(온/오프라인)',
    n.name_kr = '교육(온/오프라인)',
    n.domain = 'SV',
    n.definition = '에듀테크 기술과 조합하여 학교 학원 , 원격교육 분야에 활용';

MERGE (n:Concept {id: '오프라인_매장'})
SET     n.name = '오프라인 매장',
    n.name_kr = '오프라인 매장',
    n.domain = 'SV',
    n.definition = 'VR/AR 기술과 온라인 매장 홍보를 통해 매출 증대와 접근성 보완';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'SV',
    n.definition = '원격 업무';

MERGE (n:Concept {id: '온라인/클라우드'})
SET     n.name = '온라인/클라우드',
    n.name_kr = '온라인/클라우드',
    n.domain = 'SV',
    n.definition = '클라우드 기반의 빠른 온라인 접근 가능';

MERGE (n:Concept {id: '고객_접점_확대'})
SET     n.name = '고객 접점 확대',
    n.name_kr = '고객 접점 확대',
    n.domain = 'SV',
    n.definition = '온라인을 통한 고객과의 접접 포인트 증가로 인한 마케팅 확대';

MERGE (n:Concept {id: '기업_생존_전략_강화'})
SET     n.name = '기업 생존 전략 강화',
    n.name_kr = '기업 생존 전략 강화',
    n.domain = 'SV',
    n.definition = '변화하는 환경과 디지털 (IT) 변화 속에서의 기업의 생존력 강화';

// --- 관계 ---

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '원격근무'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '활용분야'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '오프라인_매장'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '온라인/클라우드'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '고객_접점_확대'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Concept {id: '기업_생존_전략_강화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Document {id: 'SV_079'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'deeptact'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용분야'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오프라인_매장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인/클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_접점_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_생존_전략_강화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_080: 디지털 워크플레이스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_080'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '디지털_워크플레이스'})
SET     n.name = '디지털 워크플레이스',
    n.name_kr = '디지털 워크플레이스',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '기업문화'})
SET     n.name = '기업문화',
    n.name_kr = '기업문화',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털조직'})
SET     n.name = '디지털조직',
    n.name_kr = '디지털조직',
    n.domain = 'SV';

MERGE (n:Concept {id: 'rpa'})
SET     n.name = 'RPA',
    n.name_kr = 'RPA',
    n.domain = 'SV',
    n.aliases = ['RPA'];

MERGE (n:Technology {id: '5g'})
SET     n.name = '5G',
    n.name_kr = '5G',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ar_vr'})
SET     n.name = 'AR/VR',
    n.name_kr = 'AR/VR',
    n.domain = 'SV',
    n.aliases = ['AR/VR'];

MERGE (n:Concept {id: '스마트워크의_확장'})
SET     n.name = '스마트워크의 확장',
    n.name_kr = '스마트워크의 확장',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격_근무환경_지원'})
SET     n.name = '원격 근무환경 지원',
    n.name_kr = '원격 근무환경 지원',
    n.domain = 'SV',
    n.definition = '사용자 디바이스 관리/보안';

MERGE (n:Concept {id: '사용자_application_관리'})
SET     n.name = '사용자 Application 관리',
    n.name_kr = '사용자 Application 관리',
    n.domain = 'SV',
    n.definition = '데스크탑 가상화 환경 구축 및 운영을 통한 중앙 통제';

MERGE (n:Concept {id: '업무_협업_지원'})
SET     n.name = '업무 협업 지원',
    n.name_kr = '업무 협업 지원',
    n.domain = 'SV',
    n.definition = '신뢰성 있는 네트워크 및 효율적인 협업 툴을 통하여, 직원 간 원격 협업 지원';

MERGE (n:Concept {id: '사용자_it_문의_및_장애_지원'})
SET     n.name = '사용자 IT 문의 및 장애 지원',
    n.name_kr = '사용자 IT 문의 및 장애 지원',
    n.domain = 'SV',
    n.definition = '클라우드 기반의 콜센터 시스템 및 Self Service Portal 제공';

MERGE (n:Concept {id: '업무_자동화'})
SET     n.name = '업무 자동화',
    n.name_kr = '업무 자동화',
    n.domain = 'SV',
    n.definition = '단순/반복 작업의 RPA 자동화 적용 - 지능형 자동화(Intelligent Automation) 통한 효율성 증대';

MERGE (n:Concept {id: '가상환경_및_디지털_트윈'})
SET     n.name = '가상환경 및 디지털 트윈',
    n.name_kr = '가상환경 및 디지털 트윈',
    n.domain = 'SV',
    n.definition = '가상공간을 통한 디지털 작업 공간 확대 - 디지털 트윈을 통한 시뮬레이션 기능 제공';

MERGE (n:Concept {id: '네트워크_및_보안'})
SET     n.name = '네트워크 및 보안',
    n.name_kr = '네트워크 및 보안',
    n.domain = 'SV',
    n.definition = '네트워크 접속 환경';

MERGE (n:Concept {id: '네트워크_보안_관리'})
SET     n.name = '네트워크 보안 관리',
    n.name_kr = '네트워크 보안 관리',
    n.domain = 'SV',
    n.definition = '원격 근무 지원을 위한 네트워크 환경 분석 및 아키텍처 개선 권고';

MERGE (n:Concept {id: '인증/접근관리'})
SET     n.name = '인증/접근관리',
    n.name_kr = '인증/접근관리',
    n.domain = 'SV',
    n.definition = 'AD 연동 - FIDO/QR 코드/푸쉬 알림 등 2 차 인증';

MERGE (n:Concept {id: '비즈니스_연속성_지원'})
SET     n.name = '비즈니스 연속성 지원',
    n.name_kr = '비즈니스 연속성 지원',
    n.domain = 'SV',
    n.definition = '업무/시스템 관리자 접속 환경';

MERGE (n:Metric {id: '업무/시스템_가용성_관리'})
SET     n.name = '업무/시스템 가용성 관리',
    n.name_kr = '업무/시스템 가용성 관리',
    n.domain = 'SV',
    n.definition = '복구 자동화 및 Orchestration 을 통한 Application 및 Data의 신속한 복구';

MERGE (n:Concept {id: '데이터_백업/dr'})
SET     n.name = '데이터 백업/DR',
    n.name_kr = '데이터 백업/DR',
    n.domain = 'SV',
    n.definition = '클라우드 오브젝트 스토리지를 통한 복구 신속성 향상';

MERGE (n:Concept {id: '전략추진'})
SET     n.name = '전략추진',
    n.name_kr = '전략추진',
    n.domain = 'SV',
    n.definition = '디지털 조직 지향';

MERGE (n:Concept {id: '지속적인_dt_추진'})
SET     n.name = '지속적인 DT 추진',
    n.name_kr = '지속적인 DT 추진',
    n.domain = 'SV',
    n.definition = 'Digital Transformation 정부, 기업 지속 추지';

MERGE (n:Concept {id: '작업환경'})
SET     n.name = '작업환경',
    n.name_kr = '작업환경',
    n.domain = 'SV',
    n.definition = '스마트 빌딩';

MERGE (n:Concept {id: '스마트_오피스'})
SET     n.name = '스마트 오피스',
    n.name_kr = '스마트 오피스',
    n.domain = 'SV',
    n.definition = '개인 맞춤형 공간 및 환경';

MERGE (n:Concept {id: '디지털_작업공간'})
SET     n.name = '디지털 작업공간',
    n.name_kr = '디지털 작업공간',
    n.domain = 'SV',
    n.definition = '가상공간, 영상회의, 그룹채팅 등 디지털 작업공간으로 확대';

MERGE (n:Technology {id: '기술/보안_요소'})
SET     n.name = '기술/보안 요소',
    n.name_kr = '기술/보안 요소',
    n.domain = 'SV',
    n.definition = '5G, AI, 클라우드';

MERGE (n:Concept {id: 'vr_ar_mr'})
SET     n.name = 'VR/AR/MR',
    n.name_kr = 'VR/AR/MR',
    n.domain = 'SV',
    n.definition = '고실감형 텔레프레즌스',
    n.aliases = ['VR/AR/MR'];

MERGE (n:Technology {id: 'vpn,_drm,_다중인증'})
SET     n.name = 'VPN, DRM, 다중인증',
    n.name_kr = 'VPN, DRM, 다중인증',
    n.domain = 'SV',
    n.definition = '네트워크 보안, 문서보안, 인가된 사용자 인증';

MERGE (n:Concept {id: '지원도구'})
SET     n.name = '지원도구',
    n.name_kr = '지원도구',
    n.domain = 'SV',
    n.definition = 'RPA';

MERGE (n:Concept {id: '협업도구'})
SET     n.name = '협업도구',
    n.name_kr = '협업도구',
    n.domain = 'SV',
    n.definition = '그룹웨어, 웹기반 의사소통 도구';

MERGE (n:Concept {id: '디바이스'})
SET     n.name = '디바이스',
    n.name_kr = '디바이스',
    n.domain = 'SV',
    n.definition = '모바일기기';

MERGE (n:Technology {id: '모바일/홈_네트워크'})
SET     n.name = '모바일/홈 네트워크',
    n.name_kr = '모바일/홈 네트워크',
    n.domain = 'SV',
    n.definition = '모바일, 5G, MDM';

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV',
    n.definition = 'VDI, Desktop as a Service';

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV',
    n.definition = 'AR/VR, 디지털 트윈';

MERGE (n:Technology {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = 'VPN, 다중인증(Multi-Factor Authentication)';

MERGE (n:Concept {id: '소통/협업'})
SET     n.name = '소통/협업',
    n.name_kr = '소통/협업',
    n.domain = 'SV',
    n.definition = '영상회의';

MERGE (n:Concept {id: '직원_경험'})
SET     n.name = '직원 경험',
    n.name_kr = '직원 경험',
    n.domain = 'SV',
    n.definition = '업무별 사용자 기반 응용프로그램 지원';

MERGE (n:Concept {id: '기존_원격/스마트워크'})
SET     n.name = '기존 원격/스마트워크',
    n.name_kr = '기존 원격/스마트워크',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '원격근무'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '기업문화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '디지털조직'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: 'rpa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Technology {id: '5g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: 'ar_vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '스마트워크의_확장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '원격_근무환경_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '사용자_application_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '업무_협업_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '사용자_it_문의_및_장애_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '업무_자동화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '가상환경_및_디지털_트윈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '네트워크_및_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '네트워크_보안_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '인증/접근관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '비즈니스_연속성_지원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Metric {id: '업무/시스템_가용성_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '데이터_백업/dr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '전략추진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '지속적인_dt_추진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '작업환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '스마트_오피스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '디지털_작업공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Technology {id: '기술/보안_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: 'vr_ar_mr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Technology {id: 'vpn,_drm,_다중인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '지원도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '협업도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '디바이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Technology {id: '모바일/홈_네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Technology {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '소통/협업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '직원_경험'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기존_원격/스마트워크'})
MERGE (b:Concept {id: '디지털_워크플레이스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Concept {id: '기존_원격/스마트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Document {id: 'SV_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '디지털_워크플레이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업문화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털조직'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rpa'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar_vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트워크의_확장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격_근무환경_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_application_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_협업_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_it_문의_및_장애_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_자동화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상환경_및_디지털_트윈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_및_보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_보안_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증/접근관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_연속성_지원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '업무/시스템_가용성_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_백업/dr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략추진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적인_dt_추진'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작업환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_오피스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_작업공간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '기술/보안_요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'vr_ar_mr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn,_drm,_다중인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지원도구'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협업도구'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디바이스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '모바일/홈_네트워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소통/협업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '직원_경험'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_원격/스마트워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_081: 엔터프라이즈 모빌리티
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_081'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '엔터프라이즈_모빌리티'})
SET     n.name = '엔터프라이즈 모빌리티',
    n.name_kr = '엔터프라이즈 모빌리티',
    n.domain = 'SV';

MERGE (n:Concept {id: '모바일'})
SET     n.name = '모바일',
    n.name_kr = '모바일',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '엔터프라이즈_모빌리티'})
MERGE (b:Document {id: 'SV_081'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '엔터프라이즈_모빌리티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모바일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_082: 비대면바우처플랫폼
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_082'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '비대면바우처플랫폼'})
SET     n.name = '비대면바우처플랫폼',
    n.name_kr = '비대면바우처플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '재택근무'})
SET     n.name = '재택근무',
    n.name_kr = '재택근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '네트워크_·_보안솔루션'})
SET     n.name = '네트워크 · 보안솔루션',
    n.name_kr = '네트워크 · 보안솔루션',
    n.domain = 'SV';

MERGE (n:Concept {id: '돌봄_서비스'})
SET     n.name = '돌봄 서비스',
    n.name_kr = '돌봄 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '비대면_제도도입_컨설팅'})
SET     n.name = '비대면 제도도입 컨설팅',
    n.name_kr = '비대면 제도도입 컨설팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '공급기업'})
SET     n.name = '공급기업 (서비스 판매자)',
    n.name_kr = '공급기업 (서비스 판매자)',
    n.domain = 'SV',
    n.definition = '국내 비대면 서비스 공급 업체로 선정되어, 서비스를 등록하고 공급하는 기업 - 자체적으로 개발하고 현재 제공 판매중인 비대면 서비스 보유한 중소·중견기업';

MERGE (n:Concept {id: '비대면_바우처_플랫폼'})
SET     n.name = '비대면 바우처 플랫폼',
    n.name_kr = '비대면 바우처 플랫폼',
    n.domain = 'SV',
    n.definition = '바우처 신청 및 사용, 서비스 비용 결제 및 정상 처리 - 수요기업과 공급 기업간 중계 역할';

MERGE (n:Concept {id: '업무_흐름도'})
SET     n.name = '업무 흐름도',
    n.name_kr = '업무 흐름도',
    n.domain = 'SV',
    n.definition = '1) 비대면 사업 및 서비스 신청';

MERGE (n:Concept {id: '2)_공급기업_확인'})
SET     n.name = '2) 공급기업 확인',
    n.name_kr = '2) 공급기업 확인',
    n.domain = 'SV',
    n.definition = '공급기업 사업신청, 평가 및 선정 - 플랫폼 서비스 등록 및 비대면 서비스 검색/신청';

MERGE (n:Concept {id: '3)_공급기업_승인_및_결제금액_안내'})
SET     n.name = '3) 공급기업 승인 및 결제금액 안내',
    n.name_kr = '3) 공급기업 승인 및 결제금액 안내',
    n.domain = 'SV',
    n.definition = '필요 서비스 승인, 결제요청 및 이용안내';

MERGE (n:Concept {id: '4)_기업_부담금_선입금'})
SET     n.name = '4) 기업 부담금 선입금',
    n.name_kr = '4) 기업 부담금 선입금',
    n.domain = 'SV',
    n.definition = '공급기업 요청에 따라 결제 진행 - 수요기업 부담금 (10%) 결제';

MERGE (n:Concept {id: '5)_바우처_결제'})
SET     n.name = '5) 바우처 결제',
    n.name_kr = '5) 바우처 결제',
    n.domain = 'SV',
    n.definition = '정부지원금(90%) + 기업부담금(10%)';

MERGE (n:Concept {id: '6)_비대면_서비스_제공'})
SET     n.name = '6) 비대면 서비스 제공',
    n.name_kr = '6) 비대면 서비스 제공',
    n.domain = 'SV',
    n.definition = '수요기업에 비대면 서비스 제공';

MERGE (n:Concept {id: '7)_서비스_만족도_작성'})
SET     n.name = '7) 서비스 만족도 작성',
    n.name_kr = '7) 서비스 만족도 작성',
    n.domain = 'SV',
    n.definition = '비대면 서비스에 대한 사용 만족도 작성';

// --- 관계 ---

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '원격근무'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '재택근무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '네트워크_·_보안솔루션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '돌봄_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '비대면_제도도입_컨설팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '공급기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '비대면_바우처_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '업무_흐름도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '2)_공급기업_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '3)_공급기업_승인_및_결제금액_안내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '4)_기업_부담금_선입금'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '5)_바우처_결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '6)_비대면_서비스_제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Concept {id: '7)_서비스_만족도_작성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Document {id: 'SV_082'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '비대면바우처플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재택근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_·_보안솔루션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '돌봄_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_제도도입_컨설팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공급기업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면_바우처_플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_흐름도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_공급기업_확인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3)_공급기업_승인_및_결제금액_안내'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4)_기업_부담금_선입금'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5)_바우처_결제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6)_비대면_서비스_제공'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7)_서비스_만족도_작성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_083: 사회적 거리두기 기술(Social Distancing Technologies)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_083'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'social_distancing_technologies'})
SET     n.name = 'Social Distancing Technologies',
    n.name_kr = '사회적 거리두기 기술',
    n.domain = 'SV',
    n.aliases = ['Social Distancing Technologies', '사회적 거리두기 기술'];

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: '비대면'})
SET     n.name = '비대면',
    n.name_kr = '비대면',
    n.domain = 'SV';

MERGE (n:Concept {id: '무인화_서비스'})
SET     n.name = '무인화 서비스',
    n.name_kr = '무인화 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '개인화'})
SET     n.name = '개인화',
    n.name_kr = '개인화',
    n.domain = 'SV';

MERGE (n:Concept {id: '맞춤형_서비스'})
SET     n.name = '맞춤형 서비스',
    n.name_kr = '맞춤형 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '대용량_트래픽_품질_보장'})
SET     n.name = '대용량 트래픽 품질 보장',
    n.name_kr = '대용량 트래픽 품질 보장',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ar_vr'})
SET     n.name = 'AR/VR',
    n.name_kr = 'AR/VR',
    n.domain = 'SV',
    n.aliases = ['AR/VR'];

MERGE (n:Concept {id: '스마트_헬스케어'})
SET     n.name = '스마트 헬스케어',
    n.name_kr = '스마트 헬스케어',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율_로봇'})
SET     n.name = '자율 로봇',
    n.name_kr = '자율 로봇',
    n.domain = 'SV';

MERGE (n:Concept {id: '에듀테크'})
SET     n.name = '에듀테크',
    n.name_kr = '에듀테크',
    n.domain = 'SV';

MERGE (n:Concept {id: '자율_배송'})
SET     n.name = '자율 배송',
    n.name_kr = '자율 배송',
    n.domain = 'SV';

MERGE (n:Technology {id: '5g_nr'})
SET     n.name = '5G NR',
    n.name_kr = '5G NR',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ott'})
SET     n.name = 'OTT',
    n.name_kr = 'OTT',
    n.domain = 'SV',
    n.aliases = ['OTT'];

MERGE (n:Concept {id: 'o2o_등'})
SET     n.name = 'O2O 등',
    n.name_kr = 'O2O 등',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '비대면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '무인화_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '개인화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '맞춤형_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '대용량_트래픽_품질_보장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: 'ar_vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '스마트_헬스케어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '자율_로봇'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '에듀테크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: '자율_배송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Technology {id: '5g_nr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: 'ott'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Concept {id: 'o2o_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Document {id: 'SV_083'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'social_distancing_technologies'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무인화_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '맞춤형_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대용량_트래픽_품질_보장'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar_vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율_로봇'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에듀테크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자율_배송'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g_nr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ott'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'o2o_등'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_084: 영상회의 기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_084'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '영상회의_기술'})
SET     n.name = '영상회의 기술',
    n.name_kr = '영상회의 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격근무'})
SET     n.name = '원격근무',
    n.name_kr = '원격근무',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mcu'})
SET     n.name = 'MCU',
    n.name_kr = 'MCU',
    n.domain = 'SV',
    n.aliases = ['MCU'];

MERGE (n:Concept {id: 'webrtc'})
SET     n.name = 'WebRTC',
    n.name_kr = 'WebRTC',
    n.domain = 'SV',
    n.aliases = ['WebRTC'];

MERGE (n:Concept {id: '초다시점'})
SET     n.name = '초다시점',
    n.name_kr = '초다시점',
    n.domain = 'SV';

MERGE (n:Concept {id: '홀로그래픽'})
SET     n.name = '홀로그래픽',
    n.name_kr = '홀로그래픽',
    n.domain = 'SV';

MERGE (n:Concept {id: 'h_323'})
SET     n.name = 'H.323',
    n.name_kr = 'H.323',
    n.domain = 'SV',
    n.aliases = ['H.323'];

MERGE (n:Concept {id: 'dash'})
SET     n.name = 'DASH',
    n.name_kr = 'DASH',
    n.domain = 'SV',
    n.aliases = ['DASH'];

MERGE (n:Concept {id: 'mmt'})
SET     n.name = 'MMT',
    n.name_kr = 'MMT',
    n.domain = 'SV',
    n.aliases = ['MMT'];

MERGE (n:Concept {id: 'rtp'})
SET     n.name = 'RTP',
    n.name_kr = 'RTP',
    n.domain = 'SV',
    n.aliases = ['RTP'];

MERGE (n:Concept {id: 'srtp'})
SET     n.name = 'SRTP',
    n.name_kr = 'SRTP',
    n.domain = 'SV',
    n.aliases = ['SRTP'];

MERGE (n:Concept {id: 'bfcp'})
SET     n.name = 'BFCP',
    n.name_kr = 'BFCP',
    n.domain = 'SV',
    n.aliases = ['BFCP'];

MERGE (n:Concept {id: '서비스_기술'})
SET     n.name = '서비스 기술',
    n.name_kr = '서비스 기술',
    n.domain = 'SV',
    n.definition = 'MCU (Multipoint Control Unit)';

MERGE (n:Concept {id: 'web_real_time_communication'})
SET     n.name = 'Web Real Time Communication',
    n.name_kr = 'WebRTC',
    n.domain = 'SV',
    n.definition = '웹 브라우저간에 Thred-party 프로그램이나 Plug-in 없이도 실시간 멀티미디어 서비스가 가능하도록 설계된 API - STUN/TURN Server를 통한 P2P 통신 제공',
    n.aliases = ['Web Real Time Communication', 'WebRTC'];

MERGE (n:Concept {id: 'mr기반_홀로그래픽'})
SET     n.name = 'MR기반 홀로그래픽',
    n.name_kr = 'MR기반 홀로그래픽',
    n.domain = 'SV',
    n.definition = '두개의 레이저광의 간섭효과를 이용하여 공간상에 재현하는 홀로그래픽 기술을 이용한 실감 미디어 기술 - HOE(Holographic optical element), 3D콘텐츠 획득,생성, 데이터 압축/스트림 기술 제공';

MERGE (n:Concept {id: '영상코덱_기술'})
SET     n.name = '영상코덱 기술',
    n.name_kr = '영상코덱 기술',
    n.domain = 'SV',
    n.definition = 'H.261';

MERGE (n:Concept {id: 'h_263'})
SET     n.name = 'H.263',
    n.name_kr = 'H.263',
    n.domain = 'SV',
    n.definition = '공중전화망을 위한 저전송률의 영상전화, 영상회의를 위한 압축 기술',
    n.aliases = ['H.263'];

MERGE (n:Concept {id: 'mpeg_4'})
SET     n.name = 'MPEG-4',
    n.name_kr = 'MPEG-4',
    n.domain = 'SV',
    n.definition = 'H.263에 기반의 보다 높은 압축률과 오류복원기능을 지원하는 표준기술',
    n.aliases = ['MPEG-4'];

MERGE (n:Standard {id: 'h_264_avc'})
SET     n.name = 'H.264/AVC',
    n.name_kr = 'H.264/AVC',
    n.domain = 'SV',
    n.definition = 'ITU-T와 ISO/IEC의 공동 표준으로 채택된 기술로서, 현재 영상회의 솔루션에서 가장 많이 활용되고 있는 영상코덱',
    n.aliases = ['H.264/AVC'];

MERGE (n:Concept {id: 'hevc'})
SET     n.name = 'HEVC',
    n.name_kr = 'H.265',
    n.domain = 'SV',
    n.definition = 'H.264/AVC와 비교하면 약 두배 정도의 압축률을 자랑하는 압축 표준',
    n.aliases = ['HEVC', 'H.265'];

MERGE (n:Concept {id: '음성코덱_기술'})
SET     n.name = '음성코덱 기술',
    n.name_kr = '음성코덱 기술',
    n.domain = 'SV',
    n.definition = 'G.711';

MERGE (n:Concept {id: 'g_722'})
SET     n.name = 'G.722',
    n.name_kr = 'G.722',
    n.domain = 'SV',
    n.definition = '광대역 음성신호를 64Kbps이하로 전송함으로써, 고품질의 현장감 음성',
    n.aliases = ['G.722'];

MERGE (n:Concept {id: 'g_723_1'})
SET     n.name = 'G.723.1',
    n.name_kr = 'G.723.1',
    n.domain = 'SV',
    n.definition = '5.3Kbps의 고압축, 6.3Kbps의 고품질 음성 저장장치 분야 등에 사용',
    n.aliases = ['G.723.1'];

MERGE (n:Concept {id: 'g_729'})
SET     n.name = 'G.729',
    n.name_kr = 'G.729',
    n.domain = 'SV',
    n.definition = '8Kbps 전송속도로 압축하여, G.723.1 대비 고품질의 음성품질 제공',
    n.aliases = ['G.729'];

MERGE (n:Concept {id: '통신기술'})
SET     n.name = '통신기술',
    n.name_kr = '통신기술',
    n.domain = 'SV',
    n.definition = 'MPEG-DASH';

MERGE (n:Concept {id: 'sip'})
SET     n.name = 'SIP',
    n.name_kr = 'SIP',
    n.domain = 'SV',
    n.definition = 'Session Initiation Protocol - 멀티미디어 세션 초기화, 변경 및 종료를 위한 시그널링 프로토콜',
    n.aliases = ['SIP'];

MERGE (n:Concept {id: 'sdp'})
SET     n.name = 'SDP',
    n.name_kr = 'SDP',
    n.domain = 'SV',
    n.definition = 'Session Description Protocol - 멀티미디어 세션 정보를 협상하는 프로토콜',
    n.aliases = ['SDP'];

MERGE (n:Concept {id: 'rtcp'})
SET     n.name = 'RTCP',
    n.name_kr = 'RTCP',
    n.domain = 'SV',
    n.definition = 'Real-time Transport Control Protocol - RTP 세션의 품질 제어를 위한 별도의 제어용 프로토콜',
    n.aliases = ['RTCP'];

MERGE (n:Concept {id: 'rtsp'})
SET     n.name = 'RTSP',
    n.name_kr = 'RTSP',
    n.domain = 'SV',
    n.definition = 'Real-time Streaming Protocol - 실시간 멀티미디어 스트림을 제어하기 위한 스트리밍 프로토콜',
    n.aliases = ['RTSP'];

MERGE (n:Concept {id: '공통_보안대책'})
SET     n.name = '공통 보안대책',
    n.name_kr = '공통 보안대책',
    n.domain = 'SV',
    n.definition = '회의 참여자의 신원 확인 - 원칙적으로 회의내용 녹화 금지 - 화상회의 참여 접근코드(Access Code) 재사용 금지 - 화면상에 민감한 문서 등이 노출되지 않도록 주의';

MERGE (n:Concept {id: 'web'})
SET     n.name = '웹(Web)기반의 화상회의 솔루션',
    n.name_kr = '웹(Web)기반의 화상회의 솔루션',
    n.domain = 'SV',
    n.definition = '불필요한 채팅이나 파일공유 기능 비활성화 - 회의방 무단침입 방지를 위한 비밀번호(PIN) 사용';

MERGE (n:Concept {id: '중요_회의시_추가_보안대책'})
SET     n.name = '중요 회의시 추가 보안대책',
    n.name_kr = '중요 회의시 추가 보안대책',
    n.domain = 'SV',
    n.definition = '회사가 지급한 단말기 사용 - 모든 참여자가 회의방 입장 후 회의방 잠금(Locking) - 회의 주최자만 PC화면 공유 가능 - 회의내용 녹화 시 암호화 조치 등의 추가적인 보안대책 마련이 필요함.';

// --- 관계 ---

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '원격근무'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'mcu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'webrtc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '초다시점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '홀로그래픽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'h_323'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'dash'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'mmt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'rtp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'srtp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'bfcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '서비스_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'web_real_time_communication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'mr기반_홀로그래픽'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '영상코덱_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'h_263'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'mpeg_4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Standard {id: 'h_264_avc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'hevc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '음성코덱_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'g_722'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'g_723_1'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'g_729'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '통신기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'sip'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'sdp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'rtcp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'rtsp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '공통_보안대책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: 'web'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Concept {id: '중요_회의시_추가_보안대책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Document {id: 'SV_084'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '영상회의_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mcu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'webrtc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초다시점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '홀로그래픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h_323'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dash'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mmt'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'srtp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bfcp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_real_time_communication'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mr기반_홀로그래픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상코덱_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'h_263'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mpeg_4'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'h_264_avc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hevc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '음성코덱_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g_722'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g_723_1'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g_729'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sip'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sdp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtcp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtsp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통_보안대책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요_회의시_추가_보안대책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_085: 디지털 노마드(Digital Nomad)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_085'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_nomad'})
SET     n.name = 'Digital Nomad',
    n.name_kr = '디지털 노마드',
    n.domain = 'SV',
    n.aliases = ['Digital Nomad', '디지털 노마드'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: '시공간_제약없이'})
SET     n.name = '시공간 제약없이',
    n.name_kr = '시공간 제약없이',
    n.domain = 'SV';

MERGE (n:Concept {id: '인터넷접속'})
SET     n.name = '인터넷접속',
    n.name_kr = '인터넷접속',
    n.domain = 'SV';

MERGE (n:Concept {id: '커뮤니케이션_하는_사람'})
SET     n.name = '커뮤니케이션 하는 사람',
    n.name_kr = '커뮤니케이션 하는 사람',
    n.domain = 'SV';

MERGE (n:Concept {id: '원격근무가_많은_경우'})
SET     n.name = '원격근무가 많은 경우',
    n.name_kr = '원격근무가 많은 경우',
    n.domain = 'SV',
    n.definition = '조직에 속해있으나, 원격 근무가 많은 유형';

MERGE (n:Concept {id: '프리랜서'})
SET     n.name = '프리랜서',
    n.name_kr = '프리랜서',
    n.domain = 'SV',
    n.definition = '조직에 속하지 않은 프리랜서';

MERGE (n:Concept {id: '아웃소싱_사업가'})
SET     n.name = '아웃소싱 사업가',
    n.name_kr = '아웃소싱 사업가',
    n.domain = 'SV',
    n.definition = '프리랜서에게 제품을 위탁하여 생산하고, 판매하는 유형';

// --- 관계 ---

MERGE (a:Concept {id: '기타'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '시공간_제약없이'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '인터넷접속'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '커뮤니케이션_하는_사람'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '원격근무가_많은_경우'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '프리랜서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Concept {id: '아웃소싱_사업가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Document {id: 'SV_085'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_nomad'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시공간_제약없이'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷접속'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커뮤니케이션_하는_사람'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격근무가_많은_경우'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프리랜서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱_사업가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_086: Grid Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_086'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'grid_computing'})
SET     n.name = 'Grid Computing',
    n.name_kr = 'Grid Computing',
    n.domain = 'SV',
    n.aliases = ['Grid Computing'];

MERGE (n:Concept {id: 'computing'})
SET     n.name = 'Computing',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV',
    n.aliases = ['Computing', '컴퓨팅'];

MERGE (n:Concept {id: '수평적_분류'})
SET     n.name = '수평적 분류 (대상 Application에 대한 분류)',
    n.name_kr = '수평적 분류 (대상 Application에 대한 분류)',
    n.domain = 'SV',
    n.definition = '계산 그리드 (Computational Grid)';

MERGE (n:Concept {id: 'data_grid'})
SET     n.name = 'Data Grid',
    n.name_kr = 'Data Grid',
    n.domain = 'SV',
    n.definition = '여러 곳에 분산된 대량의 데이터 및 DB에 실시간으로 접근할 수 있는 체계적, 단계적 접근 체계 구축 (대용량 분산 DB 관리)',
    n.aliases = ['Data Grid'];

MERGE (n:Concept {id: 'access_grid'})
SET     n.name = 'Access Grid',
    n.name_kr = 'Access Grid',
    n.domain = 'SV',
    n.definition = '원격지에서 접근하여 분산된 지역, 동시에 협업 연구를 수행하도록 하는 기술',
    n.aliases = ['Access Grid'];

MERGE (n:Concept {id: 'equipment_grid'})
SET     n.name = 'Equipment Grid',
    n.name_kr = '장비 그리드',
    n.domain = 'SV',
    n.definition = '망원경등의 주요 장비를 원격 조정하며 장비로부터 얻은 데이터를 분석',
    n.aliases = ['Equipment Grid', '장비 그리드'];

MERGE (n:Concept {id: 'service_grid'})
SET     n.name = 'Service Grid',
    n.name_kr = '서비스 그리드',
    n.domain = 'SV',
    n.definition = '서비스 지향 아키텍처를 위한 웹 서비스와 그리드의 통합',
    n.aliases = ['Service Grid', '서비스 그리드'];

MERGE (n:Concept {id: '수직적_분류'})
SET     n.name = '수직적 분류 (지식 정보 형태에 따른 분류)',
    n.name_kr = '수직적 분류 (지식 정보 형태에 따른 분류)',
    n.domain = 'SV',
    n.definition = '기반 그리드';

MERGE (n:Concept {id: 'information_grid'})
SET     n.name = 'Information Grid',
    n.name_kr = '정보 그리드',
    n.domain = 'SV',
    n.definition = '정보에 대한 위치, 분석도구, 결과가시화 환경을 제시하는 그리드 사용자는 분산 어플리케이션 개발 및 시뮬레이션을 통한 과학 기술 연구 종사자',
    n.aliases = ['Information Grid', '정보 그리드'];

MERGE (n:Concept {id: 'knowledge_grid'})
SET     n.name = 'Knowledge Grid',
    n.name_kr = '지식 그리드',
    n.domain = 'SV',
    n.definition = '데이터 마이닝, 머신러닝 등의 기술을 이용하여 사용자에게 지능적인 정보를 제공 - 사용자는 분산처리 지식은 없지만, 정보 활용을 원하는 모든 사용자',
    n.aliases = ['Knowledge Grid', '지식 그리드'];

// --- 관계 ---

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: '수평적_분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'data_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'access_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'equipment_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'service_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: '수직적_분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'information_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Concept {id: 'knowledge_grid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Document {id: 'SV_086'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'grid_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수평적_분류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'equipment_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수직적_분류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'information_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'knowledge_grid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_087: Fabric Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_087'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'fabric_computing'})
SET     n.name = 'Fabric Computing',
    n.name_kr = 'Fabric Computing',
    n.domain = 'SV',
    n.aliases = ['Fabric Computing'];

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'fbc'})
SET     n.name = 'FBC',
    n.name_kr = 'FBC',
    n.domain = 'SV',
    n.aliases = ['FBC'];

MERGE (n:Concept {id: 'fec'})
SET     n.name = 'FEC',
    n.name_kr = 'FEC',
    n.domain = 'SV',
    n.aliases = ['FEC'];

MERGE (n:Concept {id: 'fbi'})
SET     n.name = 'FBI',
    n.name_kr = 'FBI',
    n.domain = 'SV',
    n.aliases = ['FBI'];

MERGE (n:Concept {id: '가상화'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '병렬처리'})
SET     n.name = '병렬처리',
    n.name_kr = '병렬처리',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산_스토리지'})
SET     n.name = '분산 스토리지',
    n.name_kr = '분산 스토리지',
    n.domain = 'SV';

MERGE (n:Concept {id: '연결망'})
SET     n.name = '연결망',
    n.name_kr = '연결망',
    n.domain = 'SV';

MERGE (n:Concept {id: 'qpi'})
SET     n.name = 'QPI',
    n.name_kr = 'QPI',
    n.domain = 'SV',
    n.aliases = ['QPI'];

MERGE (n:Concept {id: 'hypertransport'})
SET     n.name = 'HyperTransport',
    n.name_kr = 'HyperTransport',
    n.domain = 'SV',
    n.aliases = ['HyperTransport'];

MERGE (n:Technology {id: 'pci_express'})
SET     n.name = 'PCI express',
    n.name_kr = 'PCI express',
    n.domain = 'SV',
    n.aliases = ['PCI express'];

MERGE (n:Concept {id: 'infiniband'})
SET     n.name = 'InfiniBand',
    n.name_kr = 'InfiniBand',
    n.domain = 'SV',
    n.aliases = ['InfiniBand'];

MERGE (n:Concept {id: '패브릭_기반_컴퓨터'})
SET     n.name = '패브릭 기반 컴퓨터 (FBC: Fabric-Based Computer)',
    n.name_kr = '패브릭 기반 컴퓨터 (FBC: Fabric-Based Computer)',
    n.domain = 'SV',
    n.definition = '패브릭 인터커넥트 혹은 백플레인 스위치에 연결되어 있는 빌딩 블록 모듈을 조합하여 제공할 수 있는 모듈화된 형태의 컴퓨팅 시스템';

MERGE (n:Concept {id: '상세_설명'})
SET     n.name = '상세 설명',
    n.name_kr = '상세 설명',
    n.domain = 'SV';

MERGE (n:Concept {id: '주요_기술'})
SET     n.name = '주요 기술',
    n.name_kr = '주요 기술',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'fbc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'fec'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'fbi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '가상화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '병렬처리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '분산_스토리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '연결망'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'qpi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'hypertransport'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Technology {id: 'pci_express'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: 'infiniband'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '패브릭_기반_컴퓨터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '상세_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Document {id: 'SV_087'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fabric_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fbc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fec'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fbi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병렬처리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_스토리지'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결망'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qpi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hypertransport'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'pci_express'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'infiniband'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패브릭_기반_컴퓨터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_설명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_088: Utility Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_088'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'utility_computing'})
SET     n.name = 'Utility Computing',
    n.name_kr = 'Utility Computing',
    n.domain = 'SV',
    n.aliases = ['Utility Computing'];

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '인프라스트럭처'})
SET     n.name = '인프라스트럭처',
    n.name_kr = '인프라스트럭처',
    n.domain = 'SV';

MERGE (n:Concept {id: '어플리케이션'})
SET     n.name = '어플리케이션',
    n.name_kr = '어플리케이션',
    n.domain = 'SV';

MERGE (n:Concept {id: '비즈니스_프로세스'})
SET     n.name = '비즈니스 프로세스',
    n.name_kr = '비즈니스 프로세스',
    n.domain = 'SV';

MERGE (n:Concept {id: '아웃소싱'})
SET     n.name = '아웃소싱',
    n.name_kr = '아웃소싱',
    n.domain = 'SV';

MERGE (n:Concept {id: 'virtualization'})
SET     n.name = '가상화',
    n.name_kr = '가상화',
    n.domain = 'SV';

MERGE (n:Concept {id: '자동화'})
SET     n.name = '자동화',
    n.name_kr = '자동화',
    n.domain = 'SV';

MERGE (n:Concept {id: '그리드_컴퓨팅'})
SET     n.name = '그리드 컴퓨팅',
    n.name_kr = '그리드 컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'it_운영관리'})
SET     n.name = 'IT 운영관리',
    n.name_kr = 'IT 운영관리',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '인프라스트럭처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '어플리케이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '비즈니스_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '아웃소싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: 'virtualization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '자동화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: '그리드_컴퓨팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Concept {id: 'it_운영관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Document {id: 'SV_088'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라스트럭처'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '어플리케이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비즈니스_프로세스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아웃소싱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtualization'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '그리드_컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_운영관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_089: 상황인식컴퓨팅(Context Awareness Computing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_089'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'context_awareness_computing'})
SET     n.name = 'Context Awareness Computing',
    n.name_kr = '상황인식컴퓨팅',
    n.domain = 'SV',
    n.aliases = ['Context Awareness Computing', '상황인식컴퓨팅'];

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: 'context_aware_computing'})
SET     n.name = '상황인식컴퓨팅',
    n.name_kr = '상황인식컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '상황_모델링'})
SET     n.name = '상황 모델링',
    n.name_kr = '상황 모델링',
    n.domain = 'SV',
    n.definition = '상황 정보를 어떤 방식으로 수집하고 가공하여 어디서 불러오고 어디로 전달할 것인가 등 상황정보를 교환하기 위한 표준화된 모델링 기술';

MERGE (n:Concept {id: '상황_센싱'})
SET     n.name = '상황 센싱',
    n.name_kr = '상황 센싱',
    n.domain = 'SV',
    n.definition = '여러 소스로부터 상황정보를 수집하고 이들 정보를 모델에 따라서 내부에 저장하며 적절한 방식으로 전달';

MERGE (n:Concept {id: '상황정보_융합_및_추론_기술'})
SET     n.name = '상황정보 융합 및 추론 기술',
    n.name_kr = '상황정보 융합 및 추론 기술',
    n.domain = 'SV',
    n.definition = '수집된 상황정보를 융합(Fusion)하여 상위 상황정보를 유도하기 위한 확률적 메커니즘';

MERGE (n:Concept {id: '상황인식_서비스_묘사_및_발견_기술'})
SET     n.name = '상황인식 서비스 묘사 및 발견 기술',
    n.name_kr = '상황인식 서비스 묘사 및 발견 기술',
    n.domain = 'SV',
    n.definition = '추론된 정보를 바탕으로 응용 또는 사용자가 필요로 하는 서비스를 찾기 위한 기술';

MERGE (n:Concept {id: '상황인식_서비스_구조_기술'})
SET     n.name = '상황인식 서비스 구조 기술',
    n.name_kr = '상황인식 서비스 구조 기술',
    n.domain = 'SV',
    n.definition = '프로토콜 등 하드웨어와 운영체제,프로그래밍 언어 등에 독립적인 서비스 개발을 가능하게 하는 잘 정의되고 신뢰성을 가지며, 공개적으로 접근 가능한 기술 집합';

MERGE (n:Concept {id: '상황정보_시스템_개발_관련기술'})
SET     n.name = '상황정보 시스템 개발 관련기술',
    n.name_kr = '상황정보 시스템 개발 관련기술',
    n.domain = 'SV',
    n.definition = '상황정보를 다루는 시스템은 처리해야 하는 정보의 양이 많고 복잡한 특성을 가지고 있어 코딩 부담을 줄여주는 비주얼 프로그래밍 툴 제공';

// --- 관계 ---

MERGE (a:Concept {id: 'context_aware_computing'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황_모델링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황_센싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황정보_융합_및_추론_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황인식_서비스_묘사_및_발견_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황인식_서비스_구조_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Concept {id: '상황정보_시스템_개발_관련기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Document {id: 'SV_089'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'context_awareness_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'context_aware_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황_모델링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황_센싱'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황정보_융합_및_추론_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인식_서비스_묘사_및_발견_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인식_서비스_구조_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황정보_시스템_개발_관련기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_090: Ubiquitous Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_090'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ubiquitous_computing'})
SET     n.name = 'Ubiquitous Computing',
    n.name_kr = 'Ubiquitous Computing',
    n.domain = 'SV',
    n.aliases = ['Ubiquitous Computing'];

MERGE (n:Concept {id: 'computing'})
SET     n.name = 'Computing',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV',
    n.aliases = ['Computing', '컴퓨팅'];

// --- 관계 ---

MERGE (a:Concept {id: 'ubiquitous_computing'})
MERGE (b:Concept {id: 'computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ubiquitous_computing'})
MERGE (b:Document {id: 'SV_090'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ubiquitous_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_091: Social Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_091'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'social_computing'})
SET     n.name = 'Social Computing',
    n.name_kr = 'Social Computing',
    n.domain = 'SV',
    n.aliases = ['Social Computing'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '참여'})
SET     n.name = '참여',
    n.name_kr = '참여',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방'})
SET     n.name = '개방',
    n.name_kr = '개방',
    n.domain = 'SV';

MERGE (n:Concept {id: '대화'})
SET     n.name = '대화',
    n.name_kr = '대화',
    n.domain = 'SV';

MERGE (n:Concept {id: '커뮤니티'})
SET     n.name = '커뮤니티',
    n.name_kr = '커뮤니티',
    n.domain = 'SV';

MERGE (n:Concept {id: '연결'})
SET     n.name = '연결',
    n.name_kr = '연결',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '개방'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '커뮤니티'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Concept {id: '연결'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Document {id: 'SV_091'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'social_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '커뮤니티'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연결'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_092: Seamless Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_092'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'seamless_computing'})
SET     n.name = 'Seamless Computing',
    n.name_kr = 'Seamless Computing',
    n.domain = 'SV',
    n.aliases = ['Seamless Computing'];

MERGE (n:Concept {id: 'computing'})
SET     n.name = 'computing',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV',
    n.aliases = ['computing', '컴퓨팅'];

MERGE (n:Concept {id: 'seamless'})
SET     n.name = 'Seamless',
    n.name_kr = 'Seamless',
    n.domain = 'SV',
    n.aliases = ['Seamless'];

MERGE (n:Concept {id: '중분류'})
SET     n.name = '중분류',
    n.name_kr = '중분류',
    n.domain = 'SV';

MERGE (n:Concept {id: '관련_기술'})
SET     n.name = '관련 기술',
    n.name_kr = '관련 기술',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Concept {id: 'computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Concept {id: 'seamless'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '중분류'})
MERGE (b:Concept {id: '관련_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Concept {id: '중분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Concept {id: '관련_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Document {id: 'SV_092'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'seamless_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'seamless'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중분류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관련_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_093: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_093'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_094: 자율컴퓨팅
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_094'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '자율컴퓨팅'})
SET     n.name = '자율컴퓨팅',
    n.name_kr = '자율컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV';

MERGE (n:Concept {id: '엘리먼트'})
SET     n.name = '엘리먼트',
    n.name_kr = '엘리먼트',
    n.domain = 'SV';

MERGE (n:Concept {id: 'autonomic_manager'})
SET     n.name = '자율 매니저',
    n.name_kr = '자율 매니저',
    n.domain = 'SV';

MERGE (n:Concept {id: 'managed_element'})
SET     n.name = '관리 엘리먼트',
    n.name_kr = '관리 엘리먼트',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Concept {id: '엘리먼트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Concept {id: 'autonomic_manager'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Concept {id: 'managed_element'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Document {id: 'SV_094'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '자율컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엘리먼트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'autonomic_manager'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'managed_element'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_095.1: Fog Computing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_095.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'fog_computing'})
SET     n.name = 'Fog Computing',
    n.name_kr = 'Fog Computing',
    n.domain = 'SV',
    n.aliases = ['Fog Computing'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'computing'})
SET     n.name = 'Computing',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV',
    n.aliases = ['Computing', '컴퓨팅'];

MERGE (n:Concept {id: 'fog_노드'})
SET     n.name = 'FOG 노드',
    n.name_kr = 'FOG 노드',
    n.domain = 'SV';

MERGE (n:Concept {id: '운송'})
SET     n.name = '운송',
    n.name_kr = '운송',
    n.domain = 'SV',
    n.definition = '안전개선';

MERGE (n:Concept {id: '제조'})
SET     n.name = '제조',
    n.name_kr = '제조',
    n.domain = 'SV',
    n.definition = '기기 접속 권한 관리';

MERGE (n:Concept {id: '공공'})
SET     n.name = '공공',
    n.name_kr = '공공',
    n.domain = 'SV',
    n.definition = '전력';

MERGE (n:Concept {id: '클라우드_컴퓨팅'})
SET     n.name = '클라우드 컴퓨팅',
    n.name_kr = '클라우드 컴퓨팅',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'computing'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: 'computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: 'fog_노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: '운송'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: '제조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: '공공'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: '클라우드_컴퓨팅'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Concept {id: '클라우드_컴퓨팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Document {id: 'SV_095.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'fog_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fog_노드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운송'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제조'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_095.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_095.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_095.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_095.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_096: IT 자원 대상/전략
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_096'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'it_자원_대상/전략'})
SET     n.name = 'IT 자원 대상/전략',
    n.name_kr = 'IT 자원 대상/전략',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '추진_전략'})
SET     n.name = '추진 전략',
    n.name_kr = '추진 전략',
    n.domain = 'SV';

MERGE (n:Concept {id: '세부_내용'})
SET     n.name = '세부 내용',
    n.name_kr = '세부 내용',
    n.domain = 'SV';

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

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '추진_전략'})
MERGE (b:Concept {id: '세부_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '추진_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '세부_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '정부의_역할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '클라우드_산업의_협력_생태계_조성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Concept {id: '국내산업의_클라우드_기반_디지털_혁신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Document {id: 'SV_096'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'it_자원_대상/전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '추진_전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_내용'})
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
// SV_098: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_098'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_099: Public Cloud 서비스 분류
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_099'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'public_cloud_서비스_분류'})
SET     n.name = 'Public Cloud 서비스 분류',
    n.name_kr = 'Public Cloud 서비스 분류',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'xaas_기반'})
SET     n.name = 'XaaS 기반',
    n.name_kr = 'XaaS 기반',
    n.domain = 'SV';

MERGE (n:Concept {id: 'it_자원_host(hw'})
SET     n.name = 'IT 자원 Host(HW',
    n.name_kr = 'IT 자원 Host(HW',
    n.domain = 'SV';

MERGE (n:Concept {id: 'sw'})
SET     n.name = 'SW',
    n.name_kr = 'SW',
    n.domain = 'SV',
    n.aliases = ['SW'];

MERGE (n:Concept {id: 'nw)'})
SET     n.name = 'NW)',
    n.name_kr = 'NW)',
    n.domain = 'SV';

MERGE (n:Concept {id: 'on_demand'})
SET     n.name = 'On Demand',
    n.name_kr = '원하는 즉시',
    n.domain = 'SV',
    n.aliases = ['On Demand', '원하는 즉시'];

MERGE (n:Concept {id: 'virtualization(hw'})
SET     n.name = 'Virtualization(HW',
    n.name_kr = 'Virtualization(HW',
    n.domain = 'SV';

MERGE (n:Concept {id: 'storage'})
SET     n.name = 'Storage',
    n.name_kr = 'Storage',
    n.domain = 'SV',
    n.aliases = ['Storage'];

MERGE (n:Concept {id: 'open_stack'})
SET     n.name = 'Open Stack',
    n.name_kr = 'Open Stack',
    n.domain = 'SV',
    n.aliases = ['Open Stack'];

MERGE (n:Concept {id: '참여'})
SET     n.name = '참여',
    n.name_kr = '참여',
    n.domain = 'SV';

MERGE (n:Concept {id: '공유'})
SET     n.name = '공유',
    n.name_kr = '공유',
    n.domain = 'SV';

MERGE (n:Concept {id: '개방'})
SET     n.name = '개방',
    n.name_kr = '개방',
    n.domain = 'SV';

MERGE (n:Concept {id: '서비스_대상/구축유형'})
SET     n.name = '서비스 대상/구축유형',
    n.name_kr = '서비스 대상/구축유형',
    n.domain = 'SV',
    n.definition = 'Public Cloud';

MERGE (n:Concept {id: 'private_cloud'})
SET     n.name = 'Private Cloud',
    n.name_kr = 'Private Cloud',
    n.domain = 'SV',
    n.definition = '특정 기업이 독점적으로 쓸 수 있는 데이터 센터 기반으로 기업의 내부 사용자 대상 제공 서비스',
    n.aliases = ['Private Cloud'];

MERGE (n:Concept {id: 'hybrid_cloud'})
SET     n.name = 'Hybrid Cloud',
    n.name_kr = 'Hybrid Cloud',
    n.domain = 'SV',
    n.definition = '사설 클라우드에서 공공 클라우드 활용하는 방식.',
    n.aliases = ['Hybrid Cloud'];

MERGE (n:Concept {id: 'external_cloud'})
SET     n.name = 'External Cloud',
    n.name_kr = 'Public Cloud',
    n.domain = 'SV',
    n.aliases = ['External Cloud', 'Public Cloud'];

MERGE (n:Concept {id: 'internal_cloud'})
SET     n.name = 'Internal Cloud',
    n.name_kr = 'Private Cloud',
    n.domain = 'SV',
    n.aliases = ['Internal Cloud', 'Private Cloud'];

MERGE (n:Concept {id: 'pubilc_cloud'})
SET     n.name = '퍼블릭 클라우드',
    n.name_kr = '퍼블릭 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '하이브리드_클라우드'})
SET     n.name = '하이브리드 클라우드',
    n.name_kr = '하이브리드 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'on_demand_elastic_infrastructure'})
SET     n.name = 'On-Demand Elastic Infrastructure',
    n.name_kr = 'On-Demand Elastic Infrastructure',
    n.domain = 'SV',
    n.definition = '요구사항에 따라 탄력적 IT 자원 제공',
    n.aliases = ['On-Demand Elastic Infrastructure'];

MERGE (n:Concept {id: 'pay_per_use'})
SET     n.name = 'Pay-per-Use',
    n.name_kr = 'Pay-per-Use',
    n.domain = 'SV',
    n.definition = '초기 투자비용 없이 사용한 만큼 지불 비용절감',
    n.aliases = ['Pay-per-Use'];

MERGE (n:Concept {id: 'low_cost'})
SET     n.name = '비용 절감',
    n.name_kr = '비용 절감',
    n.domain = 'SV',
    n.definition = '사용량 기반 비용 청구';

MERGE (n:Concept {id: '데이터_접근성_향상'})
SET     n.name = '데이터 접근성 향상',
    n.name_kr = '데이터 접근성 향상',
    n.domain = 'SV',
    n.definition = 'PC, 모바일 기기 등 다양한 단말에서 접근 가능';

MERGE (n:Concept {id: '유연성'})
SET     n.name = '유연성',
    n.name_kr = '유연성',
    n.domain = 'SV',
    n.definition = '자동화 기반한 시스템 확장으로 필요 시 자원 추가, 확장 용이 - 유연한 스토리지 운영 정책';

MERGE (n:Concept {id: '한계점'})
SET     n.name = '한계점',
    n.name_kr = '한계점',
    n.domain = 'SV',
    n.definition = '스마트워크의 기초';

MERGE (n:Concept {id: 'security'})
SET     n.name = 'Security',
    n.name_kr = 'Security',
    n.domain = 'SV',
    n.definition = '공용 인프라 사용에 따른 자사 데이터 보안성 확보 필요',
    n.aliases = ['Security'];

MERGE (n:Concept {id: 'multi_tenancy'})
SET     n.name = 'Multi-Tenancy',
    n.name_kr = 'Multi-Tenancy',
    n.domain = 'SV',
    n.definition = '동일한 물리적 인프라에 다양한 고객의 데이터, 시스템, 어플리케이션 수용',
    n.aliases = ['Multi-Tenancy'];

MERGE (n:Metric {id: '신뢰성과_성능'})
SET     n.name = '신뢰성과 성능',
    n.name_kr = '신뢰성과 성능',
    n.domain = 'SV',
    n.definition = 'IT에 대한 통제권을 갖고 있지 않기 때문에, 고가용성 요구하거나 mission critical한 업무에 대해 적용하기는 한계가 있음';

MERGE (n:Concept {id: '벤더_종속적_기술환경'})
SET     n.name = '벤더 종속적 기술환경',
    n.name_kr = '벤더 종속적 기술환경',
    n.domain = 'SV',
    n.definition = '클라우드 기술이 벤더별로 다르고, 기술적 표준화 미비한 상태';

MERGE (n:Concept {id: '기존_유휴_투자_장비'})
SET     n.name = '기존 유휴 투자 장비',
    n.name_kr = '기존 유휴 투자 장비',
    n.domain = 'SV',
    n.definition = '기존 보유 인프라를 두고 클라우드 컴퓨팅에 재투자';

MERGE (n:Concept {id: '거버넌스와_감사_대응'})
SET     n.name = '거버넌스와 감사 대응',
    n.name_kr = '거버넌스와 감사 대응',
    n.domain = 'SV',
    n.definition = 'IT 자원, 운영과 통제를 외부에 의존하기 때문에 해결해야 할 문제점들이 존재';

MERGE (n:Concept {id: '기술_성숙도'})
SET     n.name = '기술 성숙도',
    n.name_kr = '기술 성숙도',
    n.domain = 'SV',
    n.definition = '충분하지 못한 기술 성숙도';

MERGE (n:Concept {id: '고려사항'})
SET     n.name = '고려사항',
    n.name_kr = '고려사항',
    n.domain = 'SV',
    n.definition = '높은 관리 능력 요구';

MERGE (n:Concept {id: 'network_infrastructure'})
SET     n.name = 'network infrastructure',
    n.name_kr = '고속, 상시 접속 요구',
    n.domain = 'SV',
    n.definition = '안정적 서비스 제공 가능한 고속 네트워크 인프라 구축 - 상시 접속, 이용 위한 환경 제공',
    n.aliases = ['network infrastructure', '고속, 상시 접속 요구'];

MERGE (n:Concept {id: '보안_문제'})
SET     n.name = '보안 문제',
    n.name_kr = '보안 문제',
    n.domain = 'SV',
    n.definition = '모든 작업이 온라인 상 수행되므로 그에 따른 보안 위협 증가';

MERGE (n:Concept {id: '환경적_보안_이슈'})
SET     n.name = '환경적 보안 이슈',
    n.name_kr = '환경적 보안 이슈',
    n.domain = 'SV',
    n.definition = '서비스 중단';

MERGE (n:Concept {id: '정보_유출'})
SET     n.name = '정보 유출',
    n.name_kr = '정보 유출',
    n.domain = 'SV',
    n.definition = '데이터와 응용 프로그램이 클라우드 인프라에 저장되어 있기 때문에 사용자는 데이터 통제권 상실, 서버는 해커의 새로운 공격 대상이 될 수 있음';

MERGE (n:Concept {id: '규제_준수'})
SET     n.name = '규제 준수',
    n.name_kr = '규제 준수',
    n.domain = 'SV',
    n.definition = '개인정보 보호법, 데이터 보호 및 감사 규정';

MERGE (n:Concept {id: 'e-discovery_대응'})
SET     n.name = 'E-discovery 대응',
    n.name_kr = 'E-discovery 대응',
    n.domain = 'SV',
    n.definition = '국외 센터의 경우 외국정부 정보제공 여부, 재판관할권';

// --- 관계 ---

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'xaas_기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'it_자원_host(hw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'nw)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'on_demand'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'virtualization(hw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'open_stack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '참여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '개방'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '서비스_대상/구축유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'private_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'hybrid_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'external_cloud'})
MERGE (b:Concept {id: 'internal_cloud'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'external_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'internal_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pubilc_cloud'})
MERGE (b:Concept {id: 'private_cloud'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pubilc_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'pubilc_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'private_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pubilc_cloud'})
MERGE (b:Concept {id: 'private_cloud'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'pubilc_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'pubilc_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'private_cloud'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'on_demand_elastic_infrastructure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'pay_per_use'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'low_cost'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '데이터_접근성_향상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '유연성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '한계점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'multi_tenancy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Metric {id: '신뢰성과_성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '벤더_종속적_기술환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '기존_유휴_투자_장비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '거버넌스와_감사_대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '기술_성숙도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'network_infrastructure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '보안_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '환경적_보안_이슈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '정보_유출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: '규제_준수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Concept {id: 'e-discovery_대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Document {id: 'SV_099'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'public_cloud_서비스_분류'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xaas_기반'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_자원_host(hw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_demand'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtualization(hw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_stack'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개방'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_대상/구축유형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'external_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'internal_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pubilc_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'on_demand_elastic_infrastructure'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pay_per_use'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'low_cost'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_접근성_향상'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유연성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'security'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'multi_tenancy'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '신뢰성과_성능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벤더_종속적_기술환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_유휴_투자_장비'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거버넌스와_감사_대응'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_성숙도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'network_infrastructure'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경적_보안_이슈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_유출'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '규제_준수'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e-discovery_대응'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_100: Private Cloud
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_100'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'private_cloud'})
SET     n.name = 'Private Cloud',
    n.name_kr = 'Private Cloud',
    n.domain = 'SV',
    n.aliases = ['Private Cloud'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: 'service_catalogue'})
SET     n.name = 'Service Catalogue',
    n.name_kr = 'Service Catalogue',
    n.domain = 'SV',
    n.aliases = ['Service Catalogue'];

MERGE (n:Concept {id: 'virtual_servers'})
SET     n.name = 'Virtual Servers',
    n.name_kr = 'Virtual Servers',
    n.domain = 'SV',
    n.aliases = ['Virtual Servers'];

MERGE (n:Concept {id: 'virtual_storage'})
SET     n.name = 'Virtual Storage',
    n.name_kr = 'Virtual Storage',
    n.domain = 'SV',
    n.aliases = ['Virtual Storage'];

MERGE (n:Concept {id: 'virtual_networks'})
SET     n.name = 'Virtual Networks',
    n.name_kr = 'Virtual Networks',
    n.domain = 'SV',
    n.aliases = ['Virtual Networks'];

MERGE (n:Concept {id: 'databases'})
SET     n.name = 'DataBases',
    n.name_kr = 'DataBases',
    n.domain = 'SV',
    n.aliases = ['DataBases'];

MERGE (n:Concept {id: 'firewall'})
SET     n.name = 'Firewall',
    n.name_kr = 'Firewall',
    n.domain = 'SV',
    n.aliases = ['Firewall'];

MERGE (n:Concept {id: 'dmz'})
SET     n.name = 'DMZ',
    n.name_kr = 'DMZ',
    n.domain = 'SV',
    n.aliases = ['DMZ'];

MERGE (n:Concept {id: '서비스_관리'})
SET     n.name = '서비스 관리',
    n.name_kr = '서비스 관리',
    n.domain = 'SV',
    n.definition = 'Service Catalogue';

MERGE (n:Concept {id: 'request_ui'})
SET     n.name = 'Request UI',
    n.name_kr = 'Request UI',
    n.domain = 'SV',
    n.definition = '클라우드 요청, 응답 관련 UI 제공',
    n.aliases = ['Request UI'];

MERGE (n:Concept {id: 'operations_ui'})
SET     n.name = 'Operations UI',
    n.name_kr = 'Operations UI',
    n.domain = 'SV',
    n.definition = '클라우드 운영, 설정 관련 UI 제공',
    n.aliases = ['Operations UI'];

MERGE (n:Concept {id: 'management_&_monitoring'})
SET     n.name = 'Management & Monitoring',
    n.name_kr = 'Management & Monitoring',
    n.domain = 'SV',
    n.definition = '관리에 필요한 지표 모니터링하고 추적';

MERGE (n:Concept {id: 'metering_&_chargeback'})
SET     n.name = 'Metering & Chargeback',
    n.name_kr = 'Metering & Chargeback',
    n.domain = 'SV',
    n.definition = '서비스 사용량 근거한 사용량 측정과 비용청구 기능';

MERGE (n:Metric {id: 'sla'})
SET     n.name = 'SLA',
    n.name_kr = 'SLA',
    n.domain = 'SV',
    n.definition = '합의된 서비스 수준 정의, 모니터링 수행',
    n.aliases = ['SLA'];

MERGE (n:Concept {id: '가상화_&_물리영역'})
SET     n.name = '가상화 & 물리영역',
    n.name_kr = '가상화 & 물리영역',
    n.domain = 'SV',
    n.definition = 'Virtual Servers';

MERGE (n:Concept {id: '외부_접근_제어'})
SET     n.name = '외부 접근 제어',
    n.name_kr = '외부 접근 제어',
    n.domain = 'SV',
    n.definition = 'Firewall';

MERGE (n:Concept {id: '고려사항'})
SET     n.name = '고려사항',
    n.name_kr = '고려사항',
    n.domain = 'SV',
    n.definition = '기술 성숙도';

MERGE (n:Concept {id: '보유_it_자원의_크기'})
SET     n.name = '보유 IT 자원의 크기',
    n.name_kr = '보유 IT 자원의 크기',
    n.domain = 'SV',
    n.definition = '데이터 센터 현황, 보유 서버 수, 고객 수, 거점 국가 고려';

MERGE (n:Concept {id: 'it_자원_사용_패턴'})
SET     n.name = 'IT 자원 사용 패턴',
    n.name_kr = 'IT 자원 사용 패턴',
    n.domain = 'SV',
    n.definition = '서비스 유형 및 사용자 수, 서비스의 peak치, 시스템의 트랜잭션/데이터 양 측정';

MERGE (n:Concept {id: '데이터_민감도'})
SET     n.name = '데이터 민감도',
    n.name_kr = '데이터 민감도',
    n.domain = 'SV',
    n.definition = '극비/비밀/대외비/보통/관계없음 등 5가지로 분류';

MERGE (n:Concept {id: 'criticality'})
SET     n.name = 'Criticality',
    n.name_kr = '업무 중요도',
    n.domain = 'SV',
    n.definition = 'Highly Critical/Critical/Less Critical 등 3가지로 분류',
    n.aliases = ['Criticality', '업무 중요도'];

MERGE (n:Concept {id: '기존_시스템_이관'})
SET     n.name = '기존 시스템 이관',
    n.name_kr = '기존 시스템 이관',
    n.domain = 'SV',
    n.definition = '이관비용 고려, 비용대비 효과 판단 (BCR)';

MERGE (n:Concept {id: '적용전략'})
SET     n.name = '적용전략',
    n.name_kr = '적용전략',
    n.domain = 'SV',
    n.definition = '현실적 목표 수립';

MERGE (n:Concept {id: '시스템의_가상화_기반_통합의_기초_단계'})
SET     n.name = '시스템의 가상화 기반 통합의 기초 단계',
    n.name_kr = '시스템의 가상화 기반 통합의 기초 단계',
    n.domain = 'SV',
    n.definition = '기존 시스템에 대한 표준화 진행';

// --- 관계 ---

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'service_catalogue'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'virtual_servers'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'virtual_storage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'virtual_networks'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'databases'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'firewall'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'dmz'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '서비스_관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'request_ui'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'operations_ui'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'management_&_monitoring'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'metering_&_chargeback'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Metric {id: 'sla'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '가상화_&_물리영역'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '외부_접근_제어'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '고려사항'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '보유_it_자원의_크기'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'it_자원_사용_패턴'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '데이터_민감도'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: 'criticality'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '기존_시스템_이관'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '적용전략'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Concept {id: '시스템의_가상화_기반_통합의_기초_단계'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Document {id: 'SV_100'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'private_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_catalogue'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_servers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_storage'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virtual_networks'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'databases'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'firewall'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dmz'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'request_ui'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operations_ui'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'management_&_monitoring'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'metering_&_chargeback'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sla'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상화_&_물리영역'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_접근_제어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고려사항'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보유_it_자원의_크기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_자원_사용_패턴'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_민감도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'criticality'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_시스템_이관'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용전략'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템의_가상화_기반_통합의_기초_단계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_101: Hybrid Cloud
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_101'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'hybrid_cloud'})
SET     n.name = 'Hybrid Cloud',
    n.name_kr = 'Hybrid Cloud',
    n.domain = 'SV',
    n.aliases = ['Hybrid Cloud'];

MERGE (n:Concept {id: 'cloud_computing'})
SET     n.name = 'Cloud Computing',
    n.name_kr = 'Cloud Computing',
    n.domain = 'SV',
    n.aliases = ['Cloud Computing'];

MERGE (n:Concept {id: '컴퓨팅'})
SET     n.name = '컴퓨팅',
    n.name_kr = '컴퓨팅',
    n.domain = 'SV',
    n.definition = 'SDC, SDS, SDDC, VDI';

MERGE (n:Concept {id: '결합요소'})
SET     n.name = '결합요소',
    n.name_kr = '결합요소',
    n.domain = 'SV',
    n.definition = 'On-premise, Private Cloud, Public Cloud';

MERGE (n:Concept {id: '통합서비스'})
SET     n.name = '통합서비스',
    n.name_kr = '통합서비스',
    n.domain = 'SV',
    n.definition = 'CSB, CSP, 멀티클라우드, - 클라우드 익스체인지 서비스';

MERGE (n:Concept {id: '오케스트레이션'})
SET     n.name = '오케스트레이션',
    n.name_kr = '오케스트레이션',
    n.domain = 'SV',
    n.definition = '쿠버네스트, AMQP, 레빗MQ';

MERGE (n:Concept {id: 'nw_측면'})
SET     n.name = 'NW 측면',
    n.name_kr = 'NW 측면',
    n.domain = 'SV',
    n.definition = '전용망, 광대역 NW';

MERGE (n:Concept {id: '하이브리드_클라우드'})
SET     n.name = '하이브리드 클라우드',
    n.name_kr = '하이브리드 클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '멀티클라우드'})
SET     n.name = '멀티클라우드',
    n.name_kr = '멀티클라우드',
    n.domain = 'SV';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SV';

MERGE (n:Concept {id: '상세설명'})
SET     n.name = '상세설명',
    n.name_kr = '상세설명',
    n.domain = 'SV';

MERGE (n:Concept {id: '세부특징'})
SET     n.name = '세부특징',
    n.name_kr = '세부특징',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: 'cloud_computing'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '컴퓨팅'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '결합요소'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '통합서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '오케스트레이션'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: 'nw_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Concept {id: '멀티클라우드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '하이브리드_클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '멀티클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부특징'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '세부특징'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Concept {id: '상세설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Document {id: 'SV_101'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hybrid_cloud'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cloud_computing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨팅'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결합요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오케스트레이션'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nw_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이브리드_클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세설명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부특징'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 496개
// 관계: 1015개
// ================================================================