// ================================================================
// SE 도메인 (SE_051 ~ SE_100) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_045: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_045'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_046: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_046'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_047: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_047'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_048: PDoS (Permanent Denial of Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_048'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'permanent_denial_of_service'})
SET     n.name = 'Permanent Denial of Service',
    n.name_kr = 'PDoS',
    n.domain = 'SE',
    n.aliases = ['Permanent Denial of Service', 'PDoS'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = 'Hacking',
    n.domain = 'SE',
    n.aliases = ['Hacking'];

MERGE (n:Threat {id: 'pdos'})
SET     n.name = 'PDoS',
    n.name_kr = 'PDoS',
    n.domain = 'SE',
    n.aliases = ['PDoS'];

MERGE (n:Threat {id: '스파이웨어'})
SET     n.name = '스파이웨어',
    n.name_kr = '스파이웨어',
    n.domain = 'SE';

MERGE (n:Threat {id: '펌웨어에_악성코드'})
SET     n.name = '펌웨어에 악성코드',
    n.name_kr = '펌웨어에 악성코드',
    n.domain = 'SE';

MERGE (n:Concept {id: '펌웨어_업데이트_사이트'})
SET     n.name = '펌웨어 업데이트 사이트',
    n.name_kr = '펌웨어 업데이트 사이트',
    n.domain = 'SE';

MERGE (n:Concept {id: '기기_파괴'})
SET     n.name = '기기 파괴',
    n.name_kr = '기기 파괴',
    n.domain = 'SE';

MERGE (n:Threat {id: 'drdos'})
SET     n.name = 'DRDoS',
    n.name_kr = 'DRDoS',
    n.domain = 'SE',
    n.aliases = ['DRDoS'];

// --- 관계 ---

MERGE (a:Threat {id: 'pdos'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Threat {id: '스파이웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Threat {id: '펌웨어에_악성코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Concept {id: '펌웨어_업데이트_사이트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Concept {id: '기기_파괴'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'drdos'})
MERGE (b:Threat {id: 'pdos'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Threat {id: 'pdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Document {id: 'SE_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'permanent_denial_of_service'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'pdos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '스파이웨어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '펌웨어에_악성코드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '펌웨어_업데이트_사이트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기기_파괴'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'drdos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_049.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_049.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_049.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_049.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_049.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_049.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_050.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_050.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_050.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_050.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_051: APT(Advanced Persistent Threat)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_051'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'advanced_persistent_threat'})
SET     n.name = 'Advanced Persistent Threat',
    n.name_kr = 'APT',
    n.domain = 'SE',
    n.aliases = ['Advanced Persistent Threat', 'APT'];

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Threat {id: 'apt'})
SET     n.name = 'APT',
    n.name_kr = 'APT',
    n.domain = 'SE',
    n.aliases = ['APT'];

MERGE (n:Concept {id: '침탐수유'})
SET     n.name = '침탐수유',
    n.name_kr = '침탐수유',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Threat {id: 'apt'})
MERGE (b:Concept {id: '해킹'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'advanced_persistent_threat'})
MERGE (b:Concept {id: '침탐수유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'advanced_persistent_threat'})
MERGE (b:Document {id: 'SE_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'advanced_persistent_threat'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'apt'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침탐수유'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_052: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_052'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_053: 드라이브 바이 다운로드(Drive by Download)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_053'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'drive_by_download'})
SET     n.name = 'Drive by Download',
    n.name_kr = '드라이브 바이 다운로드',
    n.domain = 'SE',
    n.aliases = ['Drive by Download', '드라이브 바이 다운로드'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = 'Hacking',
    n.domain = 'SE',
    n.aliases = ['Hacking'];

MERGE (n:Concept {id: 'watering_hole'})
SET     n.name = '워터링홀',
    n.name_kr = '워터링홀',
    n.domain = 'SE';

MERGE (n:Threat {id: 'spear_phishing'})
SET     n.name = '스피어피싱',
    n.name_kr = '스피어피싱',
    n.domain = 'SE';

MERGE (n:Concept {id: 'web_exploit_kit'})
SET     n.name = 'Web Exploit Kit',
    n.name_kr = 'Web Exploit Kit',
    n.domain = 'SE',
    n.aliases = ['Web Exploit Kit'];

MERGE (n:Concept {id: '측면'})
SET     n.name = '측면',
    n.name_kr = '측면',
    n.domain = 'SE';

MERGE (n:Concept {id: '상세_방안'})
SET     n.name = '상세 방안',
    n.name_kr = '상세 방안',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Concept {id: 'watering_hole'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Threat {id: 'spear_phishing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Concept {id: 'web_exploit_kit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '측면'})
MERGE (b:Concept {id: '상세_방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Concept {id: '측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Concept {id: '상세_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Document {id: 'SE_053'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'drive_by_download'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'watering_hole'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web_exploit_kit'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세_방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_054: Exploit
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_054'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'exploit'})
SET     n.name = 'Exploit',
    n.name_kr = 'Exploit',
    n.domain = 'SE',
    n.aliases = ['Exploit'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = 'Hacking',
    n.domain = 'SE',
    n.aliases = ['Hacking'];

MERGE (n:Concept {id: '버그'})
SET     n.name = '버그',
    n.name_kr = '버그',
    n.domain = 'SE';

MERGE (n:Concept {id: '취약점'})
SET     n.name = '취약점',
    n.name_kr = '취약점',
    n.domain = 'SE';

MERGE (n:Threat {id: '제로데이공격'})
SET     n.name = '제로데이공격',
    n.name_kr = '제로데이공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '스펨메일'})
SET     n.name = '스펨메일',
    n.name_kr = '스펨메일',
    n.domain = 'SE';

MERGE (n:Concept {id: '시그니처'})
SET     n.name = '시그니처',
    n.name_kr = '시그니처',
    n.domain = 'SE';

MERGE (n:Concept {id: 'exploit_kit'})
SET     n.name = 'Exploit Kit',
    n.name_kr = '매타잇스플로잇',
    n.domain = 'SE',
    n.aliases = ['Exploit Kit', '매타잇스플로잇'];

MERGE (n:Concept {id: 'anti_exploit'})
SET     n.name = 'Anti Exploit',
    n.name_kr = 'Anti Exploit',
    n.domain = 'SE',
    n.aliases = ['Anti Exploit'];

MERGE (n:Concept {id: '사용자측면'})
SET     n.name = '사용자측면',
    n.name_kr = '사용자측면',
    n.domain = 'SE',
    n.definition = '보안패치';

MERGE (n:Concept {id: '최신_업데이트'})
SET     n.name = '최신 업데이트',
    n.name_kr = '최신 업데이트',
    n.domain = 'SE',
    n.definition = '최신버전의 프로그램으로 재설치 - 자동 업데이트 설정';

MERGE (n:Concept {id: '프로그램_사용_자제'})
SET     n.name = '프로그램 사용 자제',
    n.name_kr = '프로그램 사용 자제',
    n.domain = 'SE',
    n.definition = '공격 대상이 되는 서비스나 SW 사용을 차단';

MERGE (n:Threat {id: '보안_백신_sw_사용'})
SET     n.name = '보안 백신 SW 사용',
    n.name_kr = '보안 백신 SW 사용',
    n.domain = 'SE',
    n.definition = '최신 버전의 바이러스 프로그램 검사 이용';

MERGE (n:Concept {id: '사회공학적_공격대응'})
SET     n.name = '사회공학적 공격대응',
    n.name_kr = '사회공학적 공격대응',
    n.domain = 'SE',
    n.definition = '수상한 메일, 링크 사용금지, Adobe/JAVA 업데이트 주의';

MERGE (n:Concept {id: '관리자_측면'})
SET     n.name = '관리자 측면',
    n.name_kr = '관리자 측면',
    n.domain = 'SE',
    n.definition = '보안장비 설치';

MERGE (n:Concept {id: '보안_os_설치'})
SET     n.name = '보안 OS 설치',
    n.name_kr = '보안 OS 설치',
    n.domain = 'SE',
    n.definition = '커넬레벨의 접근통제 기능 제공하는 보안 OS 설치';

MERGE (n:Concept {id: '인터넷_망_분리'})
SET     n.name = '인터넷 망 분리',
    n.name_kr = '인터넷 망 분리',
    n.domain = 'SE',
    n.definition = '업무용과 개인용을 위한 네트워크 분리';

MERGE (n:Concept {id: 'secure_coding'})
SET     n.name = 'Secure Coding',
    n.name_kr = 'Secure Coding',
    n.domain = 'SE',
    n.definition = '소프트웨어 개발 과정에서 보안 취약점 제거',
    n.aliases = ['Secure Coding'];

MERGE (n:Concept {id: '클라우드_기반_정책'})
SET     n.name = '클라우드 기반 정책',
    n.name_kr = '클라우드 기반 정책',
    n.domain = 'SE',
    n.definition = '국가적 차원의 Exploit 대응체계, 경보제 도입 및 배포';

MERGE (n:Concept {id: '무료_백신배포'})
SET     n.name = '무료 백신배포',
    n.name_kr = '무료 백신배포',
    n.domain = 'SE',
    n.definition = '개인용 PC의 Bot 이용 최소화를 위한 백신 강제 설치 의무화';

MERGE (n:Threat {id: '안티_바이러스'})
SET     n.name = '안티 바이러스',
    n.name_kr = '안티 바이러스',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '버그'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Threat {id: '제로데이공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '스펨메일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '시그니처'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: 'exploit_kit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: 'anti_exploit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '사용자측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '최신_업데이트'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '프로그램_사용_자제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Threat {id: '보안_백신_sw_사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '사회공학적_공격대응'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '관리자_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '보안_os_설치'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '인터넷_망_분리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: 'secure_coding'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '클라우드_기반_정책'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: '무료_백신배포'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'anti_exploit'})
MERGE (b:Threat {id: '안티_바이러스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Concept {id: 'anti_exploit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Threat {id: '안티_바이러스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Document {id: 'SE_054'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '버그'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '제로데이공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스펨메일'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시그니처'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'exploit_kit'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anti_exploit'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최신_업데이트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로그램_사용_자제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '보안_백신_sw_사용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회공학적_공격대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_os_설치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_망_분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secure_coding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_기반_정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무료_백신배포'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '안티_바이러스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_055: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_055'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_056: 워너크라이
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_056'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '워너크라이'})
SET     n.name = '워너크라이',
    n.name_kr = '워너크라이',
    n.domain = 'SE';

MERGE (n:Concept {id: '디지털정보보안'})
SET     n.name = '디지털정보보안',
    n.name_kr = '디지털정보보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Threat {id: '공격기술'})
SET     n.name = '공격기술',
    n.name_kr = '공격기술',
    n.domain = 'SE',
    n.definition = '윈도우 운영체제의 공유 프로토콜 SMBv1 원격코드 실행 취약점 악용, PC와 서버로 전파 - 네트워크웜(network WORM) 기반공격으로 인터넷에 연결 만으로도 감염 - PC가 워너크라이에 감염되면 \'Wana Decrypt0r 2.0\'이라는 이름의 창이 뜸 - 감염창에는 상황 설명, 복구방법, 금전 지급 방법, 비트코인을 보내는 주소가 함께 표시되며,';

MERGE (n:Concept {id: '공격대상os'})
SET     n.name = '공격대상OS',
    n.name_kr = '공격대상OS',
    n.domain = 'SE',
    n.definition = 'Microsoft 최신업데이트가 진행되지 않은Windows 운영체제사용PC -PC: Windows 10, Windows 8.1, Windows RT 8.1, Windows -서버: Windows Server 2016, Windows Server 2012 R2, Windows server 2008 R2 SP1 SP2';

MERGE (n:Concept {id: '감염구조'})
SET     n.name = '감염구조',
    n.name_kr = '감염구조',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '해킹'})
MERGE (b:Concept {id: '디지털정보보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Concept {id: '해킹'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Threat {id: '공격기술'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Concept {id: '공격대상os'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Concept {id: '감염구조'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Document {id: 'SE_056'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '워너크라이'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털정보보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '공격기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격대상os'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감염구조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_057: 독스웨어(Doxware)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_057'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'doxware'})
SET     n.name = 'Doxware',
    n.name_kr = '독스웨어',
    n.domain = 'SE',
    n.aliases = ['Doxware', '독스웨어'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해키',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해키'];

MERGE (n:Concept {id: '독싱'})
SET     n.name = '독싱',
    n.name_kr = '독싱',
    n.domain = 'SE';

MERGE (n:Threat {id: '랜섬웨어'})
SET     n.name = '랜섬웨어',
    n.name_kr = '랜섬웨어',
    n.domain = 'SE';

MERGE (n:Threat {id: '피싱'})
SET     n.name = '피싱',
    n.name_kr = '피싱',
    n.domain = 'SE';

MERGE (n:Concept {id: '표적형_공격'})
SET     n.name = '표적형 공격',
    n.name_kr = '표적형 공격',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Concept {id: '독싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Threat {id: '랜섬웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Threat {id: '피싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Concept {id: '표적형_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Document {id: 'SE_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'doxware'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독싱'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '랜섬웨어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '피싱'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표적형_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_058: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_058'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_059.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_059.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_059.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_059.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_060: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_060'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_061: Phishing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_061'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'phishing'})
SET     n.name = 'Phishing',
    n.name_kr = 'Phishing',
    n.domain = 'SE',
    n.aliases = ['Phishing'];

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: '위장_사이트'})
SET     n.name = '위장 사이트',
    n.name_kr = '위장 사이트',
    n.domain = 'SE';

MERGE (n:Concept {id: '입력_유도'})
SET     n.name = '입력 유도',
    n.name_kr = '입력 유도',
    n.domain = 'SE',
    n.definition = '이메일을 이용하여 당첨, 경품 등의 미끼로 수신자의 개인정보 탈취';

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SE',
    n.definition = '웹사이트 인증, 메일서버 인증';

MERGE (n:Threat {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SE',
    n.definition = '신원불명 이메일 첨부파일 실행금지 - 금융기관 정보갱신 요구시, 오프라인 사실확인 습관 - 주요금융기관에 접근시 URL 링크보다는 타이핑하여 접근 - PC보안 프로그램, Anti-피싱도구 설치활용 필요';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

MERGE (n:Concept {id: '공격_단계'})
SET     n.name = '공격 단계',
    n.name_kr = '공격 단계',
    n.domain = 'SE',
    n.definition = '1단계';

MERGE (n:Concept {id: '2단계'})
SET     n.name = '2단계',
    n.name_kr = '2단계',
    n.domain = 'SE',
    n.definition = '공격자는 피해자를 서비스를 이용하여 위조사이트로 안내';

MERGE (n:Concept {id: '3단계'})
SET     n.name = '3단계',
    n.name_kr = '3단계',
    n.domain = 'SE',
    n.definition = '피해자는 위조사이트에 접속 인증정보를 입력';

MERGE (n:Concept {id: '4단계'})
SET     n.name = '4단계',
    n.name_kr = '4단계',
    n.domain = 'SE',
    n.definition = '공격자는 위조사이트에서 피해자의 인증정보를 취득';

MERGE (n:Concept {id: '5단계'})
SET     n.name = '5단계',
    n.name_kr = '5단계',
    n.domain = 'SE',
    n.definition = '공격자는 정식 사이트에서 인증정보 제공하고 금전 출금';

MERGE (n:Concept {id: '6단계'})
SET     n.name = '6단계',
    n.name_kr = '6단계',
    n.domain = 'SE',
    n.definition = '공격자와 제공자는 거래의 대가로 대금 지급';

// --- 관계 ---

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '위장_사이트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '입력_유도'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Threat {id: '관리적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '공격_단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '2단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '3단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '4단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '5단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Concept {id: '6단계'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Document {id: 'SE_061'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'phishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위장_사이트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '입력_유도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '관리적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6단계'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_062: 스피어피싱(Spear Phishing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_062'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'spear_phishing'})
SET     n.name = 'Spear Phishing',
    n.name_kr = '스피어피싱',
    n.domain = 'SE',
    n.aliases = ['Spear Phishing', '스피어피싱'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해킹',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해킹'];

MERGE (n:Concept {id: '특정대상'})
SET     n.name = '특정대상',
    n.name_kr = '특정대상',
    n.domain = 'SE';

MERGE (n:Concept {id: '타겟'})
SET     n.name = '타겟',
    n.name_kr = '타겟',
    n.domain = 'SE';

MERGE (n:Concept {id: '이메일'})
SET     n.name = '이메일',
    n.name_kr = '이메일',
    n.domain = 'SE';

MERGE (n:Concept {id: 'dvd'})
SET     n.name = 'DVD',
    n.name_kr = 'DVD',
    n.domain = 'SE',
    n.aliases = ['DVD'];

MERGE (n:Concept {id: '온라인_개인정보_노출_최소화'})
SET     n.name = '온라인 개인정보 노출 최소화',
    n.name_kr = '온라인 개인정보 노출 최소화',
    n.domain = 'SE';

MERGE (n:Concept {id: '최신_보안패치'})
SET     n.name = '최신 보안패치',
    n.name_kr = '최신 보안패치',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: '특정대상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: '타겟'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: '이메일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: 'dvd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: '온라인_개인정보_노출_최소화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Concept {id: '최신_보안패치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Document {id: 'SE_062'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특정대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타겟'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이메일'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dvd'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_개인정보_노출_최소화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최신_보안패치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_063: Pharming
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_063'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pharming'})
SET     n.name = 'Pharming',
    n.name_kr = 'Pharming',
    n.domain = 'SE',
    n.aliases = ['Pharming'];

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: 'dns캐쉬_포이즈닝'})
SET     n.name = 'DNS캐쉬 포이즈닝',
    n.name_kr = 'DNS캐쉬 포이즈닝',
    n.domain = 'SE';

MERGE (n:Concept {id: 'host파일_변조'})
SET     n.name = 'HOST파일 변조',
    n.name_kr = 'HOST파일 변조',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'pharming'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pharming'})
MERGE (b:Concept {id: 'dns캐쉬_포이즈닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pharming'})
MERGE (b:Concept {id: 'host파일_변조'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pharming'})
MERGE (b:Document {id: 'SE_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pharming'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dns캐쉬_포이즈닝'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'host파일_변조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_064: 비즈니스스캠 (Business SCAM)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_064'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'business_scam'})
SET     n.name = 'Business SCAM',
    n.name_kr = '비즈니스스캠',
    n.domain = 'SE',
    n.aliases = ['Business SCAM', '비즈니스스캠'];

MERGE (n:Concept {id: '보안_출제_예상_토픽'})
SET     n.name = '보안 출제 예상 토픽',
    n.name_kr = '보안 출제 예상 토픽',
    n.domain = 'SE';

MERGE (n:Concept {id: '무역_거래_해킹'})
SET     n.name = '무역 거래 해킹',
    n.name_kr = '무역 거래 해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: 'email_spoofing'})
SET     n.name = 'Email Spoofing',
    n.name_kr = 'Email Spoofing',
    n.domain = 'SE',
    n.aliases = ['Email Spoofing'];

// --- 관계 ---

MERGE (a:Concept {id: 'business_scam'})
MERGE (b:Concept {id: '보안_출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'business_scam'})
MERGE (b:Concept {id: '무역_거래_해킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_scam'})
MERGE (b:Concept {id: 'email_spoofing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_scam'})
MERGE (b:Document {id: 'SE_064'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'business_scam'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_출제_예상_토픽'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무역_거래_해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'email_spoofing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_065: Smishing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_065'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'smishing'})
SET     n.name = 'Smishing',
    n.name_kr = 'Smishing',
    n.domain = 'SE',
    n.aliases = ['Smishing'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: '소액결제'})
SET     n.name = '소액결제',
    n.name_kr = '소액결제',
    n.domain = 'SE';

MERGE (n:Concept {id: '스마트폰'})
SET     n.name = '스마트폰',
    n.name_kr = '스마트폰',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드'})
SET     n.name = '악성코드',
    n.name_kr = '악성코드',
    n.domain = 'SE';

MERGE (n:Concept {id: '대응방법'})
SET     n.name = '대응방법',
    n.name_kr = '대응방법',
    n.domain = 'SE';

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Concept {id: '소액결제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Concept {id: '스마트폰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Threat {id: '악성코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '대응방법'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Concept {id: '대응방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Document {id: 'SE_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소액결제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트폰'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_066.1: 스팸(Spam) 메일, 스팸 메시지
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_066.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'spam'})
SET     n.name = '스팸(Spam) 메일, 스팸 메시지',
    n.name_kr = '스팸(Spam) 메일, 스팸 메시지',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: '원치않는_정보'})
SET     n.name = '원치않는 정보',
    n.name_kr = '원치않는 정보',
    n.domain = 'SE';

MERGE (n:Concept {id: '상업성'})
SET     n.name = '상업성',
    n.name_kr = '상업성',
    n.domain = 'SE';

MERGE (n:Concept {id: '일방성'})
SET     n.name = '일방성',
    n.name_kr = '일방성',
    n.domain = 'SE';

MERGE (n:Concept {id: '대량성'})
SET     n.name = '대량성',
    n.name_kr = '대량성',
    n.domain = 'SE';

MERGE (n:Concept {id: 'open_relay'})
SET     n.name = 'OPEN RELAY',
    n.name_kr = 'OPEN RELAY',
    n.domain = 'SE',
    n.aliases = ['OPEN RELAY'];

MERGE (n:Concept {id: 'open_proxy'})
SET     n.name = 'OPEN PROXY',
    n.name_kr = 'OPEN PROXY',
    n.domain = 'SE',
    n.aliases = ['OPEN PROXY'];

MERGE (n:Concept {id: '사회적'})
SET     n.name = '사회적',
    n.name_kr = '사회적',
    n.domain = 'SE',
    n.definition = 'Opt-out';

MERGE (n:Concept {id: 'opt_in'})
SET     n.name = 'Opt-in',
    n.name_kr = 'Opt-in',
    n.domain = 'SE',
    n.definition = '수신자의 권리를 중시하여 수신자가 사전에 동의해야만 e-메일을 전송가능',
    n.aliases = ['Opt-in'];

MERGE (n:Concept {id: '벌금_규제_강화'})
SET     n.name = '벌금 규제 강화',
    n.name_kr = '벌금 규제 강화',
    n.domain = 'SE',
    n.definition = '스팸 메일 송신자 벌금 부여';

MERGE (n:Concept {id: '메일_등급제'})
SET     n.name = '메일 등급제',
    n.name_kr = '메일 등급제',
    n.domain = 'SE',
    n.definition = '메일 등급에 따른 발송 제한';

MERGE (n:Concept {id: '기술적'})
SET     n.name = '기술적',
    n.name_kr = '기술적',
    n.domain = 'SE',
    n.definition = '도메인 차단';

MERGE (n:Concept {id: '메시지_필터링'})
SET     n.name = '메시지 필터링',
    n.name_kr = '메시지 필터링',
    n.domain = 'SE',
    n.definition = '발송자 정보, 키워드, 내용(단어, 이미지 등) - 패턴학습을 통한 필터링(베이지안 등)';

MERGE (n:Concept {id: 'dkim'})
SET     n.name = 'DKIM',
    n.name_kr = 'DKIM',
    n.domain = 'SE',
    n.definition = 'Domain Key Identified Mail - e-메일에 서버가 암호화된 서명 첨부하고, 의뢰 도메인의 인정여부 감정',
    n.aliases = ['DKIM'];

MERGE (n:Concept {id: '온라인_우표'})
SET     n.name = '온라인 우표',
    n.name_kr = '온라인 우표',
    n.domain = 'SE',
    n.definition = 'e-메일을 발송하고자 하는 발송자가 사전에 온라인 우표를 구입하여 발송자에게 e-메일 발송에 따른 비용 부과';

MERGE (n:Concept {id: 'spf'})
SET     n.name = 'SPF',
    n.name_kr = 'SPF',
    n.domain = 'SE',
    n.definition = 'Sender Policy Framework - 도메인 이름을 사용할 수 있는 호스트를 도메인에 명시적으로 인증하기 위한 프로토콜',
    n.aliases = ['SPF'];

MERGE (n:Concept {id: 'sidf'})
SET     n.name = 'SIDF',
    n.name_kr = 'SIDF',
    n.domain = 'SE',
    n.definition = 'Sender ID Framework - 송신자의 인증을 통한 실제 보낸 곳을 검증',
    n.aliases = ['SIDF'];

MERGE (n:Concept {id: '운영적'})
SET     n.name = '운영적',
    n.name_kr = '운영적',
    n.domain = 'SE',
    n.definition = '내부 교육 강화';

MERGE (n:Concept {id: '운영자_기술_함양'})
SET     n.name = '운영자 기술 함양',
    n.name_kr = '운영자 기술 함양',
    n.domain = 'SE',
    n.definition = '서버 관리 환경/옵션 설정, Key word 검색, 필터링';

MERGE (n:Concept {id: '보안_정책_수립'})
SET     n.name = '보안 정책 수립',
    n.name_kr = '보안 정책 수립',
    n.domain = 'SE',
    n.definition = 'E-mail 계정 발급 제한 (HIP: Human Interface Proof) - E-mail 발송 횟수 및 전송량 제한 - White IP 주소 등록 관리';

MERGE (n:Concept {id: '대응방안'})
SET     n.name = '대응방안',
    n.name_kr = '대응방안',
    n.domain = 'SE';

MERGE (n:Concept {id: '세부내용'})
SET     n.name = '세부내용',
    n.name_kr = '세부내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '부정_가입_방지'})
SET     n.name = '부정 가입 방지',
    n.name_kr = '부정 가입 방지',
    n.domain = 'SE',
    n.definition = '제13조 (인터넷 문자 메시지 전화번호 등록) 문자 발송 웹 사이트를 운영하는 문자중계사업자 및 문자재판매사업자는 문자 발송 웹 사이트 회원 가입 시 가입자 본인을 확인';

MERGE (n:Concept {id: '발신번호_등록_및_차단'})
SET     n.name = '발신번호 등록 및 차단',
    n.name_kr = '발신번호 등록 및 차단',
    n.domain = 'SE',
    n.definition = '제13조 (인터넷발송 문자 메시지 전화번호 등록) 문자 발송 웹 사이트를 운영하는 문자 중계 사업자는 가입자 소유의 전화번호마다 인증 후 전화번호 등록';

// --- 관계 ---

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '원치않는_정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '상업성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '일방성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '대량성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'open_relay'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'open_proxy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '사회적'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'opt_in'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '벌금_규제_강화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '메일_등급제'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '기술적'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '메시지_필터링'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'dkim'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '온라인_우표'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'spf'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: 'sidf'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '운영적'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '운영자_기술_함양'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '보안_정책_수립'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Concept {id: '세부내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '세부내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '부정_가입_방지'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Concept {id: '발신번호_등록_및_차단'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Document {id: 'SE_066.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'spam'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원치않는_정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상업성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일방성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대량성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_relay'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'open_proxy'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'opt_in'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '벌금_규제_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메일_등급제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지_필터링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dkim'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온라인_우표'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sidf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영자_기술_함양'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_정책_수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정_가입_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발신번호_등록_및_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_066.2: 이메일 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_066.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '이메일_보안'})
SET     n.name = '이메일 보안',
    n.name_kr = '이메일 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Threat {id: 'phishing'})
SET     n.name = '피싱',
    n.name_kr = '피싱',
    n.domain = 'SE';

MERGE (n:Threat {id: 'spear_phishing'})
SET     n.name = '스피어피싱',
    n.name_kr = '스피어피싱',
    n.domain = 'SE';

MERGE (n:Concept {id: 'whaling'})
SET     n.name = '웨일링',
    n.name_kr = '웨일링',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_감염'})
SET     n.name = '악성코드 감염',
    n.name_kr = '악성코드 감염',
    n.domain = 'SE';

MERGE (n:Concept {id: '스팸메일_차단솔루션'})
SET     n.name = '스팸메일 차단솔루션',
    n.name_kr = '스팸메일 차단솔루션',
    n.domain = 'SE';

MERGE (n:Concept {id: '발신자_확인'})
SET     n.name = '발신자 확인',
    n.name_kr = '발신자 확인',
    n.domain = 'SE';

MERGE (n:Concept {id: '첨부파일_주의'})
SET     n.name = '첨부파일 주의',
    n.name_kr = '첨부파일 주의',
    n.domain = 'SE';

MERGE (n:Concept {id: '피해_기업'})
SET     n.name = '피해 기업',
    n.name_kr = '피해 기업',
    n.domain = 'SE';

MERGE (n:Concept {id: '피해_사례'})
SET     n.name = '피해 사례',
    n.name_kr = '피해 사례',
    n.domain = 'SE';

MERGE (n:Concept {id: '계정접근_강화'})
SET     n.name = '계정접근 강화',
    n.name_kr = '계정접근 강화',
    n.domain = 'SE',
    n.definition = '2차 인증 로그인 사용 - 패스워드 주기적 변경 - 해외 로그인 접속 차단 - 로그인 접속기록 수시 확인';

MERGE (n:Concept {id: '메일함_관리'})
SET     n.name = '메일함 관리',
    n.name_kr = '메일함 관리',
    n.domain = 'SE',
    n.definition = '정기적인 이메일 삭제';

MERGE (n:Concept {id: '중요정보_입력금지'})
SET     n.name = '중요정보 입력금지',
    n.name_kr = '중요정보 입력금지',
    n.domain = 'SE',
    n.definition = '패스워드, 보안카드 정보 등 중요 정보는 입력금지';

MERGE (n:Concept {id: '메일발송_시_주의'})
SET     n.name = '메일발송 시 주의',
    n.name_kr = '메일발송 시 주의',
    n.domain = 'SE',
    n.definition = '중요 메일은 개인메일로 재전송 금지 - 첨부파일은 비밀번호 설정';

MERGE (n:Concept {id: '업무_사칭'})
SET     n.name = '업무 사칭',
    n.name_kr = '업무 사칭',
    n.domain = 'SE',
    n.definition = '견적서 요청 - 협력업체 직원 계정 도용 - 이력서 사칭';

MERGE (n:Concept {id: '국세청_사칭'})
SET     n.name = '국세청 사칭',
    n.name_kr = '국세청 사칭',
    n.domain = 'SE',
    n.definition = '세무조사, 세금납부 사칭 - 연말정산 내역 사칭';

MERGE (n:Concept {id: '관리자_사칭'})
SET     n.name = '관리자 사칭',
    n.name_kr = '관리자 사칭',
    n.domain = 'SE',
    n.definition = '비밀번호 만료 알림 사칭 - 해외 로그인 차단기능 사칭';

MERGE (n:Concept {id: '사회적_이슈_활용'})
SET     n.name = '사회적 이슈 활용',
    n.name_kr = '사회적 이슈 활용',
    n.domain = 'SE',
    n.definition = '여론조사 결과 사칭 - 코로나19 백신 개발문서 사칭';

// --- 관계 ---

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Threat {id: 'phishing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Threat {id: 'spear_phishing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: 'whaling'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Threat {id: '악성코드_감염'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '스팸메일_차단솔루션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '발신자_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '첨부파일_주의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '피해_기업'})
MERGE (b:Concept {id: '피해_사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '피해_기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '피해_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '계정접근_강화'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '메일함_관리'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '중요정보_입력금지'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '메일발송_시_주의'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '업무_사칭'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '국세청_사칭'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '관리자_사칭'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Concept {id: '사회적_이슈_활용'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Document {id: 'SE_066.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '이메일_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'phishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'spear_phishing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'whaling'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_감염'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스팸메일_차단솔루션'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발신자_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '첨부파일_주의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해_기업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해_사례'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계정접근_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메일함_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요정보_입력금지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메일발송_시_주의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무_사칭'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국세청_사칭'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자_사칭'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적_이슈_활용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_067: SPF(Sender Policy Framework), DKIM(DomainKeys Identified Mail), DMARC(Domain-based Message Authentication, Reporting and Conformance)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_067'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: 'spf_record'})
SET     n.name = 'SPF Record',
    n.name_kr = 'SPF Record',
    n.domain = 'SE',
    n.aliases = ['SPF Record'];

MERGE (n:Concept {id: '도메인_키'})
SET     n.name = '도메인 키',
    n.name_kr = '도메인 키',
    n.domain = 'SE';

MERGE (n:Technology {id: 'tls'})
SET     n.name = 'TLS',
    n.name_kr = 'TLS',
    n.domain = 'SE',
    n.aliases = ['TLS'];

MERGE (n:Concept {id: '화이트리스트'})
SET     n.name = '화이트리스트',
    n.name_kr = '화이트리스트',
    n.domain = 'SE';

MERGE (n:Concept {id: '메일_헤더'})
SET     n.name = '메일 헤더',
    n.name_kr = '메일 헤더',
    n.domain = 'SE';

MERGE (n:Concept {id: '발신인_확인'})
SET     n.name = '발신인 확인',
    n.name_kr = '발신인 확인',
    n.domain = 'SE';

MERGE (n:Concept {id: '전자서명'})
SET     n.name = '전자서명',
    n.name_kr = '전자서명',
    n.domain = 'SE';

MERGE (n:Standard {id: '표준'})
SET     n.name = '표준',
    n.name_kr = '표준',
    n.domain = 'SE',
    n.definition = 'RFC7372';

MERGE (n:Concept {id: '차단_방식'})
SET     n.name = '차단 방식',
    n.name_kr = '차단 방식',
    n.domain = 'SE',
    n.definition = 'SPF Record 기반 TXT 레코드 생성 & 질의';

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'SE',
    n.definition = 'DNS 리소스 레코드 이용';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE',
    n.definition = 'SPF, DKIM의 메일 검증';

MERGE (n:Concept {id: 'dns'})
SET     n.name = 'DNS',
    n.name_kr = 'DNS',
    n.domain = 'SE',
    n.definition = 'DMARC 레코드를 통해 정책을 등록하고 DKIM 레코드로 수신자 메일서버에서 정책을 통해 메일을 검증 수행',
    n.aliases = ['DNS'];

MERGE (n:Concept {id: '보고'})
SET     n.name = '보고',
    n.name_kr = '보고',
    n.domain = 'SE',
    n.definition = '보고서';

MERGE (n:Concept {id: 'dns기반_정책_배포'})
SET     n.name = 'DNS기반 정책 배포',
    n.name_kr = 'DNS기반 정책 배포',
    n.domain = 'SE',
    n.definition = 'DMARC 프로토콜 버전별 송신자를 검증하고 메시지 유효성 검사 및 최종사용자를 DMARC 검증';

MERGE (n:Concept {id: 'spf'})
SET     n.name = 'SPF',
    n.name_kr = 'SPF',
    n.domain = 'SE',
    n.aliases = ['SPF'];

MERGE (n:Concept {id: 'dkim'})
SET     n.name = 'DKIM',
    n.name_kr = 'DKIM',
    n.domain = 'SE',
    n.aliases = ['DKIM'];

MERGE (n:Concept {id: 'dmarc'})
SET     n.name = 'DMARC',
    n.name_kr = 'DMARC',
    n.domain = 'SE',
    n.aliases = ['DMARC'];

// --- 관계 ---

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'spf_record'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '도메인_키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Technology {id: 'tls'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '화이트리스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '메일_헤더'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '발신인_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '전자서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Standard {id: '표준'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '차단_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'dns'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: '보고'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'dns기반_정책_배포'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spf'})
MERGE (b:Concept {id: 'dkim'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'spf'})
MERGE (b:Concept {id: 'dmarc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'spf'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dkim'})
MERGE (b:Concept {id: 'dmarc'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'dkim'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Concept {id: 'dmarc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sender_policy_framework'})
MERGE (b:Document {id: 'SE_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spf_record'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도메인_키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tls'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '화이트리스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메일_헤더'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발신인_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '표준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '차단_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dns'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보고'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dns기반_정책_배포'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spf'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dkim'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dmarc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_068: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_068'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_069: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_069'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_070: 은닉채널(Convert Channel) / DNS Covert Channel
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_070'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '컨텐츠_보안'})
SET     n.name = '컨텐츠 보안',
    n.name_kr = '컨텐츠 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'covert_channel'})
SET     n.name = '은닉채널',
    n.name_kr = '은닉채널',
    n.domain = 'SE';

MERGE (n:Concept {id: '존재_은닉'})
SET     n.name = '존재 은닉',
    n.name_kr = '존재 은닉',
    n.domain = 'SE';

MERGE (n:Concept {id: 'dns'})
SET     n.name = 'DNS',
    n.name_kr = 'DNS',
    n.domain = 'SE',
    n.aliases = ['DNS'];

// --- 관계 ---

MERGE (a:Concept {id: 'covert_channel'})
MERGE (b:Concept {id: '컨텐츠_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'convert_channel'})
MERGE (b:Concept {id: '존재_은닉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convert_channel'})
MERGE (b:Concept {id: 'dns'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'convert_channel'})
MERGE (b:Document {id: 'SE_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '컨텐츠_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'covert_channel'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '존재_은닉'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dns'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_071.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_071.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_071.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_071.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_071.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_071.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_072: 25
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_072'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '25'})
SET     n.name = '25',
    n.name_kr = '25',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: 'worm'})
SET     n.name = 'Worm',
    n.name_kr = 'Worm',
    n.domain = 'SE',
    n.aliases = ['Worm'];

MERGE (n:Threat {id: '웜의_유형'})
SET     n.name = '웜의 유형',
    n.name_kr = '웜의 유형',
    n.domain = 'SE';

MERGE (n:Concept {id: 'virus'})
SET     n.name = 'Virus',
    n.name_kr = 'Virus',
    n.domain = 'SE',
    n.aliases = ['Virus'];

MERGE (n:Concept {id: 'zombie'})
SET     n.name = 'Zombie',
    n.name_kr = 'Zombie',
    n.domain = 'SE',
    n.aliases = ['Zombie'];

// --- 관계 ---

MERGE (a:Concept {id: 'worm'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Threat {id: '웜의_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'worm'})
MERGE (b:Concept {id: 'virus'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'worm'})
MERGE (b:Concept {id: 'zombie'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Concept {id: 'worm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'virus'})
MERGE (b:Concept {id: 'zombie'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Concept {id: 'virus'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Concept {id: 'zombie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Document {id: 'SE_072'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '25'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'worm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '웜의_유형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virus'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zombie'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_073: 20
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_073'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '20'})
SET     n.name = '20',
    n.name_kr = '20',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: 'virus'})
SET     n.name = 'Virus',
    n.name_kr = 'Virus',
    n.domain = 'SE',
    n.aliases = ['Virus'];

MERGE (n:Concept {id: '복제'})
SET     n.name = '복제',
    n.name_kr = '복제',
    n.domain = 'SE';

MERGE (n:Concept {id: '압축'})
SET     n.name = '압축',
    n.name_kr = '압축',
    n.domain = 'SE';

MERGE (n:Concept {id: '후킹기술'})
SET     n.name = '후킹기술',
    n.name_kr = '후킹기술',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'virus'})
MERGE (b:Concept {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '20'})
MERGE (b:Concept {id: '복제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '20'})
MERGE (b:Concept {id: '압축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '20'})
MERGE (b:Concept {id: '후킹기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '20'})
MERGE (b:Document {id: 'SE_073'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '20'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'virus'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압축'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '후킹기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_074: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_074'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_075: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_075'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_076: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_076'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_077: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_077'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_078: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_078'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_079: Mirai 봇넷
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_079'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'mirai_봇넷'})
SET     n.name = 'Mirai 봇넷',
    n.name_kr = 'Mirai 봇넷',
    n.domain = 'SE';

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'SE',
    n.aliases = ['IoT'];

MERGE (n:Threat {id: '봇넷'})
SET     n.name = '봇넷',
    n.name_kr = '봇넷',
    n.domain = 'SE';

MERGE (n:Concept {id: '디폴트_password'})
SET     n.name = '디폴트 Password',
    n.name_kr = '디폴트 Password',
    n.domain = 'SE';

MERGE (n:Threat {id: 'ddos공격'})
SET     n.name = 'DDOS공격',
    n.name_kr = 'DDOS공격',
    n.domain = 'SE';

MERGE (n:Concept {id: 'busybox'})
SET     n.name = 'BusyBox',
    n.name_kr = 'BusyBox',
    n.domain = 'SE',
    n.aliases = ['BusyBox'];

// --- 관계 ---

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Threat {id: '봇넷'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Concept {id: '디폴트_password'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Threat {id: 'ddos공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Concept {id: 'busybox'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Document {id: 'SE_079'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'mirai_봇넷'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '봇넷'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디폴트_password'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'ddos공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'busybox'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_080: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_080'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_081.1: Web Shell
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_081.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'web_shell'})
SET     n.name = 'Web Shell',
    n.name_kr = 'Web Shell',
    n.domain = 'SE',
    n.aliases = ['Web Shell'];

MERGE (n:Concept {id: '악성프로그램'})
SET     n.name = '악성프로그램',
    n.name_kr = '악성프로그램',
    n.domain = 'SE';

MERGE (n:Concept {id: '파일업로드'})
SET     n.name = '파일업로드',
    n.name_kr = '파일업로드',
    n.domain = 'SE';

MERGE (n:Threat {id: '랜섬웨어'})
SET     n.name = '랜섬웨어',
    n.name_kr = '랜섬웨어',
    n.domain = 'SE';

MERGE (n:Concept {id: '호스팅'})
SET     n.name = '호스팅',
    n.name_kr = '호스팅',
    n.domain = 'SE';

MERGE (n:Concept {id: '웹_유출'})
SET     n.name = '웹 유출',
    n.name_kr = '웹 유출',
    n.domain = 'SE';

MERGE (n:Concept {id: '개인유출'})
SET     n.name = '개인유출',
    n.name_kr = '개인유출',
    n.domain = 'SE';

MERGE (n:Concept {id: '기업유출_기법'})
SET     n.name = '기업유출 기법',
    n.name_kr = '기업유출 기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '파일_업로드'})
SET     n.name = '파일 업로드',
    n.name_kr = '파일 업로드',
    n.domain = 'SE',
    n.definition = '파일첨부가능 게시판의 글쓰기로 웹쉘 파일 업로드';

MERGE (n:Concept {id: '암호_설정'})
SET     n.name = '암호 설정',
    n.name_kr = '암호 설정',
    n.domain = 'SE',
    n.definition = '웹쉘 제작자만 사용하도록 패스워드 설정';

MERGE (n:Concept {id: 'sql직접_입력'})
SET     n.name = 'SQL직접 입력',
    n.name_kr = 'SQL직접 입력',
    n.domain = 'SE',
    n.definition = '쿼리문 직접입력하여 바로 실행';

MERGE (n:Concept {id: '파일명_직접입력'})
SET     n.name = '파일명 직접입력',
    n.name_kr = '파일명 직접입력',
    n.domain = 'SE',
    n.definition = '파일내용을 직접 입력하게 구현';

MERGE (n:Technology {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE',
    n.definition = 'CGI는 HTTP 패킷 헤더의 데이터를 환경변수로 설정하여 쉘을 싱행, 운영 서버에 임의의 명령어 실행 가능';

MERGE (n:Technology {id: '대응_방안'})
SET     n.name = '대응 방안',
    n.name_kr = '대응 방안',
    n.domain = 'SE',
    n.definition = 'Bash 업데이트 NW탐지룰 IPS/IDS/FW 설정 미사용 CGI 삭제 및 CGI 서비스 중지';

// --- 관계 ---

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '파일업로드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Threat {id: '랜섬웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '호스팅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '웹_유출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '개인유출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '기업유출_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '파일_업로드'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '암호_설정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: 'sql직접_입력'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Concept {id: '파일명_직접입력'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Technology {id: '개념도'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Technology {id: '대응_방안'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Document {id: 'SE_081.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'web_shell'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파일업로드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '랜섬웨어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '호스팅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웹_유출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인유출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업유출_기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파일_업로드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호_설정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql직접_입력'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파일명_직접입력'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '대응_방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_081.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_081.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_082: Malvertising (멀버타이징)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_082'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'malvertising'})
SET     n.name = 'Malvertising',
    n.name_kr = '멀버타이징',
    n.domain = 'SE',
    n.aliases = ['Malvertising', '멀버타이징'];

MERGE (n:Concept {id: '보안_출제_예상_토픽'})
SET     n.name = '보안 출제 예상 토픽',
    n.name_kr = '보안 출제 예상 토픽',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'malvertising'})
MERGE (b:Document {id: 'SE_082'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'malvertising'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_출제_예상_토픽'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_084: 기타 용어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_084'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '기타_용어'})
SET     n.name = '기타 용어',
    n.name_kr = '기타 용어',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성프로그램'})
SET     n.name = '악성프로그램(Malvare, 악성코드)',
    n.name_kr = '악성프로그램(Malvare, 악성코드)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '기타_용어'})
MERGE (b:Threat {id: '악성프로그램'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '기타_용어'})
MERGE (b:Document {id: 'SE_084'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기타_용어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성프로그램'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_085: 정적분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_085'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '정적분석'})
SET     n.name = '정적분석',
    n.name_kr = '정적분석',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_분석방법'})
SET     n.name = '악성코드 분석방법',
    n.name_kr = '악성코드 분석방법',
    n.domain = 'SE';

MERGE (n:Concept {id: '소스_코드_검증'})
SET     n.name = '소스 코드 검증',
    n.name_kr = '소스 코드 검증',
    n.domain = 'SE';

MERGE (n:Concept {id: '코드_리뷰'})
SET     n.name = '코드 리뷰',
    n.name_kr = '코드 리뷰',
    n.domain = 'SE';

MERGE (n:Concept {id: '리버스_엔지니어링'})
SET     n.name = '리버스 엔지니어링 (역공학-정적분석)',
    n.name_kr = '리버스 엔지니어링 (역공학-정적분석)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Threat {id: '악성코드_분석방법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Concept {id: '소스_코드_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Concept {id: '코드_리뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Concept {id: '리버스_엔지니어링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Document {id: 'SE_085'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정적분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_분석방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소스_코드_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드_리뷰'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리버스_엔지니어링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_086.1: 동적분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_086.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '동적분석'})
SET     n.name = '동적분석',
    n.name_kr = '동적분석',
    n.domain = 'SE';

MERGE (n:Threat {id: '악성코드_분석방법'})
SET     n.name = '악성코드 분석방법',
    n.name_kr = '악성코드 분석방법',
    n.domain = 'SE';

MERGE (n:Concept {id: '디버깅'})
SET     n.name = '디버깅',
    n.name_kr = '디버깅',
    n.domain = 'SE';

MERGE (n:Concept {id: '스트레스_테스트'})
SET     n.name = '스트레스 테스트',
    n.name_kr = '스트레스 테스트',
    n.domain = 'SE';

MERGE (n:Concept {id: '모의_해킹'})
SET     n.name = '모의 해킹',
    n.name_kr = '모의 해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: '리버스_엔지니어링'})
SET     n.name = '리버스 엔지니어링 (역공학-동적분석)',
    n.name_kr = '리버스 엔지니어링 (역공학-동적분석)',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Threat {id: '악성코드_분석방법'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Concept {id: '디버깅'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Concept {id: '스트레스_테스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Concept {id: '모의_해킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Concept {id: '리버스_엔지니어링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Document {id: 'SE_086.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '동적분석'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드_분석방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디버깅'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스트레스_테스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모의_해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리버스_엔지니어링'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_086.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_086.2'})
SET doc.domain = 'SE';

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 205개
// 관계: 416개
// ================================================================