// ================================================================
// SE 도메인 (SE_151 ~ SE_200) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_121.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_121.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_121.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_121.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_122.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_122.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_122.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_122.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_123: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_123'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_124.1: 블록체인(Block Chain) 플랫폼 보안위협
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_124.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'block_chain'})
SET     n.name = '블록체인(Block Chain) 플랫폼 보안위협',
    n.name_kr = '블록체인(Block Chain) 플랫폼 보안위협',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'public'})
SET     n.name = 'Public',
    n.name_kr = 'Public',
    n.domain = 'SE',
    n.aliases = ['Public'];

MERGE (n:Concept {id: 'private'})
SET     n.name = 'Private',
    n.name_kr = 'Private',
    n.domain = 'SE',
    n.aliases = ['Private'];

MERGE (n:Concept {id: 'consortium'})
SET     n.name = 'Consortium',
    n.name_kr = 'Consortium',
    n.domain = 'SE',
    n.aliases = ['Consortium'];

MERGE (n:Concept {id: '이트코인'})
SET     n.name = '이트코인',
    n.name_kr = '이트코인',
    n.domain = 'SE';

MERGE (n:Concept {id: '이더리움'})
SET     n.name = '이더리움',
    n.name_kr = '이더리움',
    n.domain = 'SE';

MERGE (n:Concept {id: '하이퍼레저'})
SET     n.name = '하이퍼레저',
    n.name_kr = '하이퍼레저',
    n.domain = 'SE';

MERGE (n:Concept {id: '키_보안'})
SET     n.name = '키 보안',
    n.name_kr = '키 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '개인정보침해'})
SET     n.name = '개인정보침해',
    n.name_kr = '개인정보침해',
    n.domain = 'SE';

MERGE (n:Concept {id: '51%_공격'})
SET     n.name = '51% 공격',
    n.name_kr = '51% 공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '합의_알고리즘'})
SET     n.name = '합의 알고리즘',
    n.name_kr = '합의 알고리즘',
    n.domain = 'SE';

MERGE (n:Concept {id: '금융분야'})
SET     n.name = '금융분야',
    n.name_kr = '금융분야',
    n.domain = 'SE',
    n.definition = '거래 장부를 분산 저장하므로 모든 거래자의 컴퓨터를 해킹하지 않는 이상, 사이버 공격에 안전 - 증권 거래(블록체인 기반의 거래 플랫폼 및 스마트 계약 기능 제공) - 결제 및 송금(정부의 감사 및 규제 및 다양한 통화 수용 플랫폼 제공) - 투자 및 대출(투자자 와 기업 간 연결 플랫폼 제공)';

MERGE (n:Concept {id: '제조분야'})
SET     n.name = '제조분야',
    n.name_kr = '제조분야',
    n.domain = 'SE',
    n.definition = '제조 공정상 BOM에 대한 생성, 소멸의 전 주기 관리 - 제품의 제조 정보에 대한 위/변조 원천적 방지';

MERGE (n:Concept {id: '의료분야'})
SET     n.name = '의료분야',
    n.name_kr = '의료분야',
    n.domain = 'SE',
    n.definition = '개인 의료 정보에 대한 저장, 활용 시 이력 관리 투명성';

MERGE (n:Concept {id: '콘텐츠분야'})
SET     n.name = '콘텐츠분야',
    n.name_kr = '콘텐츠분야',
    n.domain = 'SE',
    n.definition = '저작권에 대한 분쟁 사전 차단 - 중계 시스템 없이 저작권자와 구매자 간의 계약에 의한 거래 가능';

MERGE (n:Concept {id: '공공분야'})
SET     n.name = '공공분야',
    n.name_kr = '공공분야',
    n.domain = 'SE',
    n.definition = '신뢰성, 투명성 확보 비용 감소 및 참여자에 대한 임의 관리 불필요';

MERGE (n:Concept {id: '유통분야'})
SET     n.name = '유통분야',
    n.name_kr = '유통분야',
    n.domain = 'SE',
    n.definition = '유통 대상의 이력 추적에 활용';

MERGE (n:Concept {id: '블록_발행_주체_기준'})
SET     n.name = '블록 발행 주체 기준',
    n.name_kr = '블록 발행 주체 기준',
    n.domain = 'SE',
    n.definition = 'Public Blockchain';

MERGE (n:Concept {id: 'private_blockchain'})
SET     n.name = 'Private Blockchain',
    n.name_kr = 'Private Blockchain',
    n.domain = 'SE',
    n.definition = '중앙 통제에 의한 참여 제한 및 블록 발행 - 중앙 기관에 의한 거래 증명(PBFT)',
    n.aliases = ['Private Blockchain'];

MERGE (n:Concept {id: 'consortium_blockchain'})
SET     n.name = 'Consortium Blockchain',
    n.name_kr = 'Consortium Blockchain',
    n.domain = 'SE',
    n.definition = '사전 합의된 규칙에 의해 거래 검증 및 블록 발행 - 허가 받은 사용자만 접근 가능',
    n.aliases = ['Consortium Blockchain'];

MERGE (n:Concept {id: '개발처_기준'})
SET     n.name = '개발처 기준',
    n.name_kr = '개발처 기준',
    n.domain = 'SE',
    n.definition = 'Bitcoin';

MERGE (n:Concept {id: 'ethereum'})
SET     n.name = 'Ethereum',
    n.name_kr = 'Ethereum',
    n.domain = 'SE',
    n.definition = '분산형 응용프로그램인 DApp의 동작을 위한 플랫폼 - Solidity 언어로 개발되고 EVM 내에서 실행되는 코드 형태로 표현된 스마트 계약 제공',
    n.aliases = ['Ethereum'];

MERGE (n:Concept {id: 'hyperledger_fabric'})
SET     n.name = 'Hyperledger Fabric',
    n.name_kr = 'Hyperledger Fabric',
    n.domain = 'SE',
    n.definition = '블록체인 참여자에 대한 인증과 접근 제어를 위해 멤버십 서비스가 존재 - Peer는 거래의 검증을 수행하는 endorser의 역할과 거래를 시행하는 committer의 역할을 수행',
    n.aliases = ['Hyperledger Fabric'];

MERGE (n:Concept {id: '공통_보안_위협'})
SET     n.name = '공통 보안 위협',
    n.name_kr = '공통 보안 위협',
    n.domain = 'SE',
    n.definition = '키 도난 및 분실';

MERGE (n:Concept {id: '취약한_키_생성'})
SET     n.name = '취약한 키 생성',
    n.name_kr = '취약한 키 생성',
    n.domain = 'SE',
    n.definition = '취약한 키 생성 알고리즘으로 인해 키 재생성 공격이 가능할 경우 자산 및 기밀거래 메시지가 유출 가능';

MERGE (n:Threat {id: '블록체인_s/w_취약점'})
SET     n.name = '블록체인 S/W 취약점',
    n.name_kr = '블록체인 S/W 취약점',
    n.domain = 'SE',
    n.definition = '블록체인 S/W에 보안 취약점이 존재할 경우 키 도난, 합의 조작, DDoS 공격 등에 악용가능';

MERGE (n:Threat {id: '분산_서비스_거부_공격'})
SET     n.name = '분산 서비스 거부 공격',
    n.name_kr = '분산 서비스 거부 공격',
    n.domain = 'SE',
    n.definition = '다수 참여자가 악성코드 등을 통해 공격자에게 장악될 경우 대량의 스팸거래를 발생 가능하며 이로 인해 블록체인 서비스가 중단 가능';

MERGE (n:Concept {id: '상호운용성_미제공'})
SET     n.name = '상호운용성 미제공',
    n.name_kr = '상호운용성 미제공',
    n.domain = 'SE',
    n.definition = '블록체인 간 자산교환, 기능 확장 등 연계 필요시 책임주체 및 표준규격이 명확하지 않아 예상치 못한 보안위협 발생 가능';

MERGE (n:Threat {id: '스마트_컨트랙트_취약점'})
SET     n.name = '스마트 컨트랙트 취약점',
    n.name_kr = '스마트 컨트랙트 취약점',
    n.domain = 'SE',
    n.definition = '스마트 컨트랙트에 취약점이 존재할 경우 자산 유출, 개인정보 침해, DDoS 공격 등에 악용가능';

MERGE (n:Concept {id: 'public_blockchain'})
SET     n.name = 'Public Blockchain',
    n.name_kr = 'Public Blockchain',
    n.domain = 'SE',
    n.definition = '합의 가로채기(51%)',
    n.aliases = ['Public Blockchain'];

MERGE (n:Concept {id: '사이드_체인_내_비정상_거래_발생'})
SET     n.name = '사이드 체인 내 비정상 거래 발생',
    n.name_kr = '사이드 체인 내 비정상 거래 발생',
    n.domain = 'SE',
    n.definition = '메인 체인에서 유효하지 않은 자산이 사이드 체인에서 거래 가능';

MERGE (n:Concept {id: '개인정보_침해'})
SET     n.name = '개인정보 침해',
    n.name_kr = '개인정보 침해',
    n.domain = 'SE',
    n.definition = '거래정보에 대한 참여자의 접근권한 관리 불가로 원장 내 개인정보 침해 가능';

MERGE (n:Metric {id: '가용성_저하'})
SET     n.name = '가용성 저하',
    n.name_kr = '가용성 저하',
    n.domain = 'SE',
    n.definition = '블록체인의 처리속도 한계, 거래정보 급증으로 인해 추가 서비스 개발 및 확대 제한 등의 가용성이 저하';

MERGE (n:Concept {id: '비정상거래_탐지_불가'})
SET     n.name = '비정상거래 탐지 불가',
    n.name_kr = '비정상거래 탐지 불가',
    n.domain = 'SE',
    n.definition = '비정상거래에 대한 사전 탐지 및 차단 기술이 부족하여 사기거래, 자금세탁, 이중지불 등의 거래가 발생 가능';

MERGE (n:Concept {id: 'private,_consortium_blockchain'})
SET     n.name = 'Private, Consortium Blockchain',
    n.name_kr = 'Private, Consortium Blockchain',
    n.domain = 'SE',
    n.definition = '권한 오남용';

MERGE (n:Concept {id: '내부_담합'})
SET     n.name = '내부 담합',
    n.name_kr = '내부 담합',
    n.domain = 'SE',
    n.definition = '시스템 내부 참여자 간의 악의적 담합에 의한 거래 내역의 변조 및 블록 발행 제한';

MERGE (n:Concept {id: '키_관리'})
SET     n.name = '키 관리',
    n.name_kr = '키 관리',
    n.domain = 'SE',
    n.definition = '신뢰성 확보';

MERGE (n:Concept {id: '다중_서명'})
SET     n.name = '다중 서명',
    n.name_kr = '다중 서명',
    n.domain = 'SE',
    n.definition = '거래 서명에 다중 서명기술(multi signature)을 적용하여 공격자가 거래 서명에 필요한 모든 키를 획득하지 않는 한 불법 거래를 시도하지 못하도록 대응';

MERGE (n:Concept {id: '키_분리'})
SET     n.name = '키 분리',
    n.name_kr = '키 분리',
    n.domain = 'SE',
    n.definition = '업무 및 용도(거래 서명, 거래 메시지 암․복호화 등)별로 키를 구분하여 사용함으로써 키 유출로 인한 피해를 해당 키가 사용되던 업무로 제한';

MERGE (n:Concept {id: '재생_공격_방지'})
SET     n.name = '재생 공격 방지',
    n.name_kr = '재생 공격 방지',
    n.domain = 'SE',
    n.definition = '공격자가 키를 재생성 하지 못하도록 키를 안전한 방식으로 생성 및 검증';

MERGE (n:Concept {id: '거래_검증_및_합의'})
SET     n.name = '거래 검증 및 합의',
    n.name_kr = '거래 검증 및 합의',
    n.domain = 'SE',
    n.definition = '모니터링';

MERGE (n:Concept {id: '거래_수수료'})
SET     n.name = '거래 수수료',
    n.name_kr = '거래 수수료',
    n.domain = 'SE',
    n.definition = '거래에 일정 수준 수수료를 부과하여 많은 참여자가 거래검증에 참여하도록 유도하고 특정 노드가 대량의 거래를 처리하기 어렵도록 거래 처리량을 제한';

MERGE (n:Concept {id: '참여자_권한관리'})
SET     n.name = '참여자 권한관리',
    n.name_kr = '참여자 권한관리',
    n.domain = 'SE',
    n.definition = '3자 접근 통제';

MERGE (n:Concept {id: '거버넌스_확립'})
SET     n.name = '거버넌스 확립',
    n.name_kr = '거버넌스 확립',
    n.domain = 'SE',
    n.definition = '거래에 대한 내부직원의 서명을 식별 및 통제 가능하도록 내부 거버넌스 통제 절차를 수립';

MERGE (n:Concept {id: '블록체인_s/w_보안'})
SET     n.name = '블록체인 S/W 보안',
    n.name_kr = '블록체인 S/W 보안',
    n.domain = 'SE',
    n.definition = '최신 상태 유지';

MERGE (n:Threat {id: '스마트_계약_취약점_탐지'})
SET     n.name = '스마트 계약 취약점 탐지',
    n.name_kr = '스마트 계약 취약점 탐지',
    n.domain = 'SE',
    n.definition = '스마트 컨트랙트 배포 이전에 코드 검토를 통해 보안 취약점 존재 여부와 악성코드 감염 여부를 확인';

MERGE (n:Concept {id: '유효성_검증'})
SET     n.name = '유효성 검증',
    n.name_kr = '유효성 검증',
    n.domain = 'SE',
    n.definition = '유효성 검사 시간을 지연시킬 목적으로 요청 되는 스팸거래 요청을 차단';

MERGE (n:Metric {id: '가용성_확보'})
SET     n.name = '가용성 확보',
    n.name_kr = '가용성 확보',
    n.domain = 'SE',
    n.definition = '거래 유효성 검증을 전체 참여자가 아닌 신뢰 가능한 일부 검증노드와 수행하여 유효성 검증에 참여하는 노드의 수를 줄임으로써 처리속도를 개선';

MERGE (n:Concept {id: '신뢰성_확보'})
SET     n.name = '신뢰성 확보',
    n.name_kr = '신뢰성 확보',
    n.domain = 'SE',
    n.definition = '내․외부 공격자에게 장악된 노드로 인해 거래 유효성이 조작되지 않도록 모니터링 및 차단';

MERGE (n:Threat {id: '스팸거래_차단'})
SET     n.name = '스팸거래 차단',
    n.name_kr = '스팸거래 차단',
    n.domain = 'SE',
    n.definition = 'DDoS 공격에 대응하기 위해서는 정상거래와 스팸거래를 분류하고 차단할 수 있는 기술 개발';

MERGE (n:Concept {id: '참여자_검증'})
SET     n.name = '참여자 검증',
    n.name_kr = '참여자 검증',
    n.domain = 'SE',
    n.definition = '경우 참여자의 보안 수준이 일관성 있게 유지되도록 신규 참여자에 대한 보안성 검증 기준을 강화, 마련하고 지속적으로 관리';

MERGE (n:Concept {id: '사이드체인_활용'})
SET     n.name = '사이드체인 활용',
    n.name_kr = '사이드체인 활용',
    n.domain = 'SE',
    n.definition = '중계자 없이 블록체인 간 자산을 교환 하기 위한 기술인 Pegged 사이드 체인 기술을 활용하여 자산 이전 시 신뢰성을 제공';

MERGE (n:Concept {id: '앵커링_검증'})
SET     n.name = '앵커링 검증',
    n.name_kr = '앵커링 검증',
    n.domain = 'SE',
    n.definition = '내부 참여자의 담합을 방지하고 대외 투명성을 확보하기 위해 프라이빗 블록체인과 퍼블릭 블록체인을 연계하는 인터커넥션 기술 도입';

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SE',
    n.definition = 'HSM (Hardware Security Module)';

MERGE (n:Metric {id: 'trusted_computing_group'})
SET     n.name = 'Trusted Computing Group',
    n.name_kr = 'TPM',
    n.domain = 'SE',
    n.definition = '개인키나 비밀키 등과 같은 키 저장과 관리부분에 중점에 둔 장치로서, 인증서나 키 등을 안전하게 저장, 보관, 활용할 수 있도록 설계 - 부팅시 불법적인 변경 확인, 무결성 인증 등을 수행 - 개인 키를 유출하지 않고 암/복호화 서명 검증기능을 수행할 수 있고 비밀정보에 대한 봉인이 가능하도록 구성 - RSA(비대칭암호), 키생성, 해시알고리즘(SHA),',
    n.aliases = ['Trusted Computing Group', 'TPM'];

MERGE (n:Concept {id: '멀티인증'})
SET     n.name = '멀티인증',
    n.name_kr = '멀티인증',
    n.domain = 'SE',
    n.definition = '개인키+OTP';

MERGE (n:Concept {id: '개인키+생체인증'})
SET     n.name = '개인키+생체인증',
    n.name_kr = '개인키+생체인증',
    n.domain = 'SE',
    n.definition = '지문, 홍채, 서명 등의 인증방식';

MERGE (n:Concept {id: '개인키+sms'})
SET     n.name = '개인키+SMS(알림 톡 등)',
    n.name_kr = '개인키+SMS(알림 톡 등)',
    n.domain = 'SE',
    n.definition = 'SMS, MMS 등의 문자 메시지 추가 인증 방식';

MERGE (n:Concept {id: '다중서명'})
SET     n.name = '다중서명',
    n.name_kr = '다중서명',
    n.domain = 'SE',
    n.definition = '기존 비트코인 시스템은 하나의 주소에 하나의 개인키가 연결된 단일 서명 거래 방식을 사용하여 개인키에 대한 해킹이 SPOF(Single Point of Failure)로 인지됨 - 다중서명을 사용하는 경우 n개의 개인키 중에서 m개의 서명이 있어야 인증이 가능하므로 네트워크 사용자 보호하는 방법으로 다양하게 활용 가능';

MERGE (n:Concept {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SE',
    n.definition = '참여자 검증';

MERGE (n:Threat {id: '거래수수료_활용'})
SET     n.name = '거래수수료 활용',
    n.name_kr = '거래수수료 활용',
    n.domain = 'SE',
    n.definition = '특정 블록체인 네트워크에서는 DDoS등 과 같이 네트워크의 가용성을 무력화시키는 공격에 대응하여 프로그램 코드 실행 시 실행 코드 볼륨에 비례하여 제한 - 해커가 무한대의 거래를 실행할 수 있는 특정 자신이 존재하지 않는다면 특정 네트워크에서 합의 검증 및 가용성 공격에 대해 방어 가능 - 이더리움에서는 코드 실행 시 GAS를 소비하도록 설계하여 해커의 무';

MERGE (n:Technology {id: '거래암호화와_거래_정보_삭제'})
SET     n.name = '거래암호화와 거래 정보 삭제',
    n.name_kr = '거래암호화와 거래 정보 삭제',
    n.domain = 'SE',
    n.definition = 'AES 256 이상의 알고리즘을 사용하여 개인정보를 암호화 - 접근통제(AC)를 활용하여 인가 받은 사용자만 개인정보에 접근이 가능하도록 구현 - 비밀키에 대한 보관 및 접근에 대해 분산저장 또는 다중 인증 등을 통해 복호화가 가능하도록 설계 - 거래정보와 개인정보를 분리한 별도의 채널을 구성하여 거래의 유효성은 유지하면서 개인정보를 삭제';

MERGE (n:Concept {id: '보안_산업표준과_인증제도_수립'})
SET     n.name = '보안 산업표준과 인증제도 수립',
    n.name_kr = '보안 산업표준과 인증제도 수립',
    n.domain = 'SE',
    n.definition = '블록체인 분석, 평가에 대한 가이드라인 발표(한국블록체인학회 학술대회, 2018.6.7)';

MERGE (n:Concept {id: '서비스_제공자의_인식_전환'})
SET     n.name = '서비스 제공자의 인식 전환',
    n.name_kr = '서비스 제공자의 인식 전환',
    n.domain = 'SE',
    n.definition = '2017년 과학기술정보통신부와 한국인터넷진흥원이 국내 주요 가상화폐거래소 10개사를 대상으로 보안 취약점 점검 수행 결과 보안 점검 기준에 만족한 거래소는 단 한곳도 없었음 - 서비스 제공자는 서비스 구현뿐만 아니라 보안성을 확보하기 위한 노력을 선제적으로 수행함으로써 건전성과 도덕적 해이를 방지할 필요 있음';

MERGE (n:Concept {id: '법_제정_이슈의_지속적인_논의'})
SET     n.name = '법 제정 이슈의 지속적인 논의',
    n.name_kr = '법 제정 이슈의 지속적인 논의',
    n.domain = 'SE',
    n.definition = '법무부는 암호화폐 거래소를 통한 암호화폐 거래금지에 대한 특별법을 제정하겠다고 밝힘(2018.01) - 청와대 국민청원에 규제 반대에 관한 청원이 올라와 30만 명의 국민들이 참여 - 이에 대해 정부는 거래 과정의 불법행위는 막고 블록체인의 기술은 적극 육성할 계획이라는 입장 표명';

// --- 관계 ---

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'public'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'private'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'consortium'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '이트코인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '이더리움'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '하이퍼레저'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '키_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '개인정보침해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '51%_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '합의_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '금융분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '제조분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '의료분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '콘텐츠분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '공공분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '유통분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '블록_발행_주체_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'private_blockchain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'consortium_blockchain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '개발처_기준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'ethereum'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'hyperledger_fabric'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '공통_보안_위협'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '취약한_키_생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '블록체인_s/w_취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '분산_서비스_거부_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '상호운용성_미제공'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '스마트_컨트랙트_취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'public_blockchain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '사이드_체인_내_비정상_거래_발생'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '개인정보_침해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Metric {id: '가용성_저하'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '비정상거래_탐지_불가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: 'private,_consortium_blockchain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '내부_담합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '키_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '다중_서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '키_분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '재생_공격_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '거래_검증_및_합의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '거래_수수료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '참여자_권한관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '거버넌스_확립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '블록체인_s/w_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '스마트_계약_취약점_탐지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '유효성_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Metric {id: '가용성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '신뢰성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '스팸거래_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '참여자_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '사이드체인_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '앵커링_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Metric {id: 'trusted_computing_group'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '멀티인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '개인키+생체인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '개인키+sms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '다중서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '관리적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Threat {id: '거래수수료_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Technology {id: '거래암호화와_거래_정보_삭제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '보안_산업표준과_인증제도_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '서비스_제공자의_인식_전환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Concept {id: '법_제정_이슈의_지속적인_논의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Document {id: 'SE_124.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'block_chain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'private'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consortium'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이트코인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이더리움'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하이퍼레저'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보침해'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '51%_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합의_알고리즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제조분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공공분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유통분야'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록_발행_주체_기준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'private_blockchain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'consortium_blockchain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발처_기준'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ethereum'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hyperledger_fabric'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공통_보안_위협'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약한_키_생성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '블록체인_s/w_취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '분산_서비스_거부_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호운용성_미제공'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '스마트_컨트랙트_취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public_blockchain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이드_체인_내_비정상_거래_발생'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_침해'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성_저하'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비정상거래_탐지_불가'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'private,_consortium_blockchain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부_담합'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키_분리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재생_공격_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래_검증_및_합의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거래_수수료'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여자_권한관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거버넌스_확립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인_s/w_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '스마트_계약_취약점_탐지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효성_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성_확보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성_확보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '스팸거래_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여자_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이드체인_활용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '앵커링_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'trusted_computing_group'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '멀티인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인키+생체인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인키+sms'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '거래수수료_활용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '거래암호화와_거래_정보_삭제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_산업표준과_인증제도_수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_제공자의_인식_전환'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법_제정_이슈의_지속적인_논의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_124.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_124.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_124.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_124.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_124.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_124.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_125.1: 안전재난환경 사이버보안 가이드
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_125.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '안전재난환경_사이버보안_가이드'})
SET     n.name = '안전재난환경 사이버보안 가이드',
    n.name_kr = '안전재난환경 사이버보안 가이드',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '시설안전관리'})
SET     n.name = '시설안전관리',
    n.name_kr = '시설안전관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '재난감시대응'})
SET     n.name = '재난감시대응',
    n.name_kr = '재난감시대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '생활안전도움'})
SET     n.name = '생활안전도움',
    n.name_kr = '생활안전도움',
    n.domain = 'SE';

MERGE (n:Concept {id: '환경정보수집'})
SET     n.name = '환경정보수집',
    n.name_kr = '환경정보수집',
    n.domain = 'SE';

MERGE (n:Concept {id: '오염감시'})
SET     n.name = '오염감시',
    n.name_kr = '오염감시',
    n.domain = 'SE';

MERGE (n:Concept {id: '주거환경관리'})
SET     n.name = '주거환경관리',
    n.name_kr = '주거환경관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '디바이스'})
SET     n.name = '디바이스(정보 수집)',
    n.name_kr = '디바이스(정보 수집)',
    n.domain = 'SE';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크(정보 전달)',
    n.name_kr = '네트워크(정보 전달)',
    n.domain = 'SE';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스(정보활용)',
    n.name_kr = '서비스(정보활용)',
    n.domain = 'SE';

MERGE (n:Concept {id: '통합운영센터'})
SET     n.name = '통합운영센터',
    n.name_kr = '통합운영센터',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '시설안전관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '재난감시대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '생활안전도움'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '환경정보수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '오염감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '주거환경관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '디바이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Concept {id: '통합운영센터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Document {id: 'SE_125.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '안전재난환경_사이버보안_가이드'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시설안전관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재난감시대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생활안전도움'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경정보수집'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '오염감시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주거환경관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디바이스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통합운영센터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_125.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_125.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_125.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_125.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_126: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_126'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_127: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_127'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_128: 멜트다운
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_128'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'meltdown'})
SET     n.name = 'Meltdown',
    n.name_kr = '멜트다운',
    n.domain = 'SE',
    n.aliases = ['멜트다운'];

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '파이프라인'})
SET     n.name = '파이프라인',
    n.name_kr = '파이프라인',
    n.domain = 'SE';

MERGE (n:Concept {id: '비순차실행'})
SET     n.name = '비순차실행',
    n.name_kr = '비순차실행',
    n.domain = 'SE';

MERGE (n:Concept {id: '예측실행'})
SET     n.name = '예측실행',
    n.name_kr = '예측실행',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Concept {id: '파이프라인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Concept {id: '비순차실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Concept {id: '예측실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Document {id: 'SE_128'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'meltdown'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '파이프라인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비순차실행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예측실행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_129.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_129.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_129.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_129.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_130: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_130'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_131: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_131'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_132: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_132'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_133: 무선 랜 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_133'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '무선_랜_보안'})
SET     n.name = '무선 랜 보안',
    n.name_kr = '무선 랜 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '802_11i'})
SET     n.name = '802.11i',
    n.name_kr = '802.11i',
    n.domain = 'SE';

MERGE (n:Concept {id: 'wep'})
SET     n.name = 'WEP',
    n.name_kr = 'WEP',
    n.domain = 'SE',
    n.aliases = ['WEP'];

MERGE (n:Concept {id: 'wpa'})
SET     n.name = 'WPA',
    n.name_kr = 'WPA',
    n.domain = 'SE',
    n.aliases = ['WPA'];

MERGE (n:Concept {id: 'wpa2'})
SET     n.name = 'WPA2',
    n.name_kr = 'WPA2',
    n.domain = 'SE',
    n.aliases = ['WPA2'];

MERGE (n:Concept {id: 'wpa3'})
SET     n.name = 'WPA3',
    n.name_kr = 'WPA3',
    n.domain = 'SE',
    n.aliases = ['WPA3'];

// --- 관계 ---

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: '802_11i'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wep'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wep'})
MERGE (b:Concept {id: 'wpa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wep'})
MERGE (b:Concept {id: 'wpa2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wep'})
MERGE (b:Concept {id: 'wpa3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wep'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa'})
MERGE (b:Concept {id: 'wpa2'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'wpa'})
MERGE (b:Concept {id: 'wpa3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'wpa2'})
MERGE (b:Concept {id: 'wpa3'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa2'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Concept {id: 'wpa3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Document {id: 'SE_133'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '무선_랜_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '802_11i'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wep'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpa2'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wpa3'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_134: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_134'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_135: 3D 프린팅 취약점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_135'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '3d_프린팅_취약점'})
SET     n.name = '3D 프린팅 취약점',
    n.name_kr = '3D 프린팅 취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '취약점'})
SET     n.name = '취약점',
    n.name_kr = '취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '취약점_상세'})
SET     n.name = '취약점 상세',
    n.name_kr = '취약점 상세',
    n.domain = 'SE';

MERGE (n:Concept {id: '대응방안'})
SET     n.name = '대응방안',
    n.name_kr = '대응방안',
    n.domain = 'SE';

MERGE (n:Concept {id: '대응방안_상세'})
SET     n.name = '대응방안 상세',
    n.name_kr = '대응방안 상세',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Concept {id: '취약점_상세'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Concept {id: '취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Concept {id: '취약점_상세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Concept {id: '대응방안_상세'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Concept {id: '대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Concept {id: '대응방안_상세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Document {id: 'SE_135'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '3d_프린팅_취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약점_상세'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응방안_상세'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_136: 오픈 소스 취약점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_136'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '오픈_소스_취약점'})
SET     n.name = '오픈 소스 취약점',
    n.name_kr = '오픈 소스 취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'heartbleed'})
SET     n.name = '하트블리드',
    n.name_kr = '하트블리드',
    n.domain = 'SE';

MERGE (n:Concept {id: 'shellshock'})
SET     n.name = '쉘쇼크',
    n.name_kr = '쉘쇼크',
    n.domain = 'SE';

MERGE (n:Concept {id: '고스트'})
SET     n.name = '고스트',
    n.name_kr = '고스트',
    n.domain = 'SE';

MERGE (n:Concept {id: '사용'})
SET     n.name = '사용',
    n.name_kr = '사용',
    n.domain = 'SE',
    n.definition = '오픈소스 SW 사용 현황 부재';

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'SE',
    n.definition = '오픈소스 SW 취약점 점검 프로세스 부재';

MERGE (n:Concept {id: '공격'})
SET     n.name = '공격',
    n.name_kr = '공격',
    n.domain = 'SE',
    n.definition = '공개 SW로 Zero Day 공격 가능성 증가';

MERGE (n:Concept {id: '조치'})
SET     n.name = '조치',
    n.name_kr = '조치',
    n.domain = 'SE',
    n.definition = '오픈소스 SW 취약점 자체 조치 불가';

MERGE (n:Concept {id: '개발'})
SET     n.name = '개발',
    n.name_kr = '개발',
    n.domain = 'SE',
    n.definition = '오픈소스 SW 적용전 Sandbox 테스트 적용';

MERGE (n:Concept {id: '장비'})
SET     n.name = '장비',
    n.name_kr = '장비',
    n.domain = 'SE',
    n.definition = '오픈소스 SW 보안 업데이트 자동화 도입';

MERGE (n:Concept {id: '매커니즘'})
SET     n.name = '매커니즘',
    n.name_kr = '매커니즘',
    n.domain = 'SE';

MERGE (n:Technology {id: '취약점의_원리'})
SET     n.name = '취약점의 원리',
    n.name_kr = '취약점의 원리',
    n.domain = 'SE',
    n.definition = 'Log4j 에 포함되어 있는 JNDI 기능이 공격자의 LDAP 및 기타 JNDI 관련 End Point 로 부터 악용될 수 있는 문제점이 발견됨';

MERGE (n:Concept {id: 'log4j_보안취약점'})
SET     n.name = 'Log4j 보안취약점',
    n.name_kr = 'Log4j 보안취약점',
    n.domain = 'SE',
    n.definition = 'JMSSink 역직렬화';

MERGE (n:Concept {id: 'sql_인젝션'})
SET     n.name = 'SQL 인젝션',
    n.name_kr = 'SQL 인젝션',
    n.domain = 'SE',
    n.definition = 'JDBAppender 는 SQL 문을 매개변수로 허용함으로써 발생';

MERGE (n:Concept {id: '역직렬화_코드실행'})
SET     n.name = '역직렬화 코드실행',
    n.name_kr = '역직렬화 코드실행',
    n.domain = 'SE',
    n.definition = 'GUI 기반의 로그 뷰어인 Chainsaw 에서 임의코드 실행 허용';

MERGE (n:Concept {id: 'rce'})
SET     n.name = 'RCE',
    n.name_kr = 'RCE',
    n.domain = 'SE',
    n.definition = '원격의 응용 프로그램이 쉘 명령을 실행',
    n.aliases = ['RCE'];

MERGE (n:Threat {id: 'dos'})
SET     n.name = 'DOS',
    n.name_kr = 'DOS',
    n.domain = 'SE',
    n.definition = '가용성을 침해하는 행위로, 서비스의 정상적인 운영을 방해',
    n.aliases = ['DOS'];

MERGE (n:Technology {id: '보안장비_등을_통한_차단'})
SET     n.name = '보안장비 등을 통한 차단',
    n.name_kr = '보안장비 등을 통한 차단',
    n.domain = 'SE',
    n.definition = 'IPS/WAF 탐지/차단';

MERGE (n:Technology {id: 'jndi_와_통신_차단'})
SET     n.name = 'JNDI 와 통신 차단',
    n.name_kr = 'JNDI 와 통신 차단',
    n.domain = 'SE',
    n.definition = 'Log4j 를 사용하는 시스템에서 LDAP 등 JNDI 와 통신 차단';

MERGE (n:Concept {id: '유효값_검증'})
SET     n.name = '유효값 검증',
    n.name_kr = '유효값 검증',
    n.domain = 'SE',
    n.definition = '입력한 값에 대한 유효성 검사, 송수신 데이터 암복호화';

MERGE (n:Concept {id: '보안업데이트_패치_및_비활성화'})
SET     n.name = '보안업데이트 패치 및 비활성화',
    n.name_kr = '보안업데이트 패치 및 비활성화',
    n.domain = 'SE',
    n.definition = '보안 업데이트';

MERGE (n:Concept {id: '설정파일_비활성화'})
SET     n.name = '설정파일 비활성화',
    n.name_kr = '설정파일 비활성화',
    n.domain = 'SE',
    n.definition = 'JNDI Lookup 비활성화';

MERGE (n:Concept {id: 'log4j_비활성화'})
SET     n.name = 'Log4j 비활성화',
    n.name_kr = 'Log4j 비활성화',
    n.domain = 'SE',
    n.definition = 'User-Agent나 X-API-Version 등의 헤더값을 Log4j로 로깅 금지';

// --- 관계 ---

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'heartbleed'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'shellshock'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '고스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '사용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '장비'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '매커니즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Technology {id: '취약점의_원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'log4j_보안취약점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'sql_인젝션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '역직렬화_코드실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'rce'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Threat {id: 'dos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Technology {id: '보안장비_등을_통한_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Technology {id: 'jndi_와_통신_차단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '유효값_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '보안업데이트_패치_및_비활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: '설정파일_비활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Concept {id: 'log4j_비활성화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Document {id: 'SE_136'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '오픈_소스_취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'heartbleed'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shellshock'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '장비'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매커니즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '취약점의_원리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'log4j_보안취약점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sql_인젝션'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역직렬화_코드실행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rce'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'dos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보안장비_등을_통한_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'jndi_와_통신_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '유효값_검증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안업데이트_패치_및_비활성화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설정파일_비활성화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'log4j_비활성화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_137: 포스(POS) 시스템 취약점
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_137'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'pos'})
SET     n.name = '포스(POS) 시스템 취약점',
    n.name_kr = '포스(POS) 시스템 취약점',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: 'tapping'})
SET     n.name = 'Tapping',
    n.name_kr = '탭핑',
    n.domain = 'SE',
    n.aliases = ['Tapping', '탭핑'];

MERGE (n:Concept {id: 'skimming'})
SET     n.name = 'Skimming',
    n.name_kr = '스키밍',
    n.domain = 'SE',
    n.aliases = ['Skimming', '스키밍'];

MERGE (n:Concept {id: 'keylogging'})
SET     n.name = 'Keylogging',
    n.name_kr = '키로깅',
    n.domain = 'SE',
    n.aliases = ['Keylogging', '키로깅'];

MERGE (n:Concept {id: 'replay_attack'})
SET     n.name = 'Replay Attack',
    n.name_kr = '재전송공격',
    n.domain = 'SE',
    n.aliases = ['Replay Attack', '재전송공격'];

MERGE (n:Concept {id: '메모리_해킹'})
SET     n.name = '메모리 해킹',
    n.name_kr = '메모리 해킹',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: 'tapping'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: 'skimming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: 'keylogging'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: 'replay_attack'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Concept {id: '메모리_해킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Document {id: 'SE_137'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tapping'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'skimming'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keylogging'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'replay_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메모리_해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_138.1: 인터넷 뱅킹 보안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_138.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '인터넷_뱅킹_보안'})
SET     n.name = '인터넷 뱅킹 보안',
    n.name_kr = '인터넷 뱅킹 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Metric {id: 'process_manipulation'})
SET     n.name = 'Process Manipulation',
    n.name_kr = 'Process Manipulation',
    n.domain = 'SE',
    n.aliases = ['Process Manipulation'];

MERGE (n:Concept {id: 'cryptography'})
SET     n.name = 'Cryptography',
    n.name_kr = 'Cryptography',
    n.domain = 'SE',
    n.aliases = ['Cryptography'];

MERGE (n:Concept {id: 'app_manipulation'})
SET     n.name = 'App Manipulation',
    n.name_kr = 'App Manipulation',
    n.domain = 'SE',
    n.aliases = ['App Manipulation'];

MERGE (n:Concept {id: 'sensitive_data'})
SET     n.name = 'Sensitive Data',
    n.name_kr = 'Sensitive Data',
    n.domain = 'SE',
    n.aliases = ['Sensitive Data'];

MERGE (n:Concept {id: 'session_management'})
SET     n.name = 'Session Management',
    n.name_kr = 'Session Management',
    n.domain = 'SE',
    n.aliases = ['Session Management'];

// --- 관계 ---

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Metric {id: 'process_manipulation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Concept {id: 'cryptography'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Concept {id: 'app_manipulation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Concept {id: 'sensitive_data'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Concept {id: 'session_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Document {id: 'SE_138.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '인터넷_뱅킹_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process_manipulation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cryptography'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'app_manipulation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensitive_data'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'session_management'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_138.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_138.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_138.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_138.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_139: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_139'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_140: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_140'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_141: MAC(Mandatory Access Control)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_141'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'mandatory_access_control'})
SET     n.name = 'Mandatory Access Control',
    n.name_kr = 'MAC',
    n.domain = 'SE',
    n.aliases = ['Mandatory Access Control', 'MAC'];

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.aliases = ['AC', '접근제어'];

// --- 관계 ---

MERGE (a:Concept {id: 'mandatory_access_control'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mandatory_access_control'})
MERGE (b:Document {id: 'SE_141'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'mandatory_access_control'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_142: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_142'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_143: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_143'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_145: AC(접근통제) 모델(Access Control Model)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_145'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'access_control_model'})
SET     n.name = 'Access Control Model',
    n.name_kr = 'AC(접근통제) 모델',
    n.domain = 'SE',
    n.aliases = ['Access Control Model', 'AC(접근통제) 모델'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ac'})
SET     n.name = '접근통제',
    n.name_kr = '접근통제',
    n.domain = 'SE';

MERGE (n:Concept {id: 'bell_lapadula'})
SET     n.name = 'Bell-Lapadula',
    n.name_kr = 'Bell-Lapadula',
    n.domain = 'SE',
    n.aliases = ['Bell-Lapadula'];

MERGE (n:Concept {id: 'bida'})
SET     n.name = 'Bida',
    n.name_kr = 'Bida',
    n.domain = 'SE',
    n.aliases = ['Bida'];

MERGE (n:Concept {id: 'clark_&_wilson'})
SET     n.name = 'Clark & Wilson',
    n.name_kr = 'Clark & Wilson',
    n.domain = 'SE';

MERGE (n:Concept {id: 'access_matrix'})
SET     n.name = 'Access Matrix',
    n.name_kr = 'Access Matrix',
    n.domain = 'SE',
    n.aliases = ['Access Matrix'];

MERGE (n:Concept {id: 'subject'})
SET     n.name = 'Subject',
    n.name_kr = '주체',
    n.domain = 'SE',
    n.definition = '사용자, 계정, 프로그램',
    n.aliases = ['Subject', '주체'];

MERGE (n:Concept {id: 'object'})
SET     n.name = 'Object',
    n.name_kr = '객체',
    n.domain = 'SE',
    n.definition = 'Relation, Tuple, Attribute, View, 연산',
    n.aliases = ['Object', '객체'];

MERGE (n:Concept {id: '보안규칙'})
SET     n.name = '보안규칙',
    n.name_kr = '보안규칙',
    n.domain = 'SE',
    n.definition = '각 주체들과 객체들을 데이터 보안 등급에 따라 분류 - 주체의 등급은 Class(S), 객체의 등급은 Class(O)로 표시 - 데이터 접근에 대한 주체/객체의 등급을 기반으로 두 가지 제약사항이 준수되어야 함 1. 단순 보안 속성 (simple security property) - 상향읽기 금지, 하향읽기 허용 - 주체는 자신보다 높은 등급의 객체를 읽을';

MERGE (n:Concept {id: 'no_read_up'})
SET     n.name = 'NRU(No-Read-Up) 상위레벨 읽기금지 단순성질',
    n.name_kr = 'NRU(No-Read-Up) 상위레벨 읽기금지 단순성질',
    n.domain = 'SE',
    n.definition = '보안 수준이 낮은 주체는 보안수준이 높은 객체를 읽어서는 안됨 - 주체의 취급인가가 객체의 기밀 등급보다 길거나 높아야 그 객체를 읽을 수 있음';

MERGE (n:Concept {id: 'no_write_down'})
SET     n.name = 'NWD (No-write-down) 하위레벨 쓰기금지',
    n.name_kr = 'NWD (No-write-down) 하위레벨 쓰기금지',
    n.domain = 'SE',
    n.definition = '보안 수준이 높은 주체는 보안 수준이 낮은 객체에 기록해서는 안됨 - 주체의 취급인가가 객체의 기밀 등급보다 낮거나 같은 경우에 그 객체를 주체가 기록할 수 있음';

MERGE (n:Concept {id: 'nru_nwd'})
SET     n.name = 'NRU/ NWD',
    n.name_kr = 'NRU/ NWD',
    n.domain = 'SE',
    n.aliases = ['NRU/ NWD'];

MERGE (n:Concept {id: 'no_read_down'})
SET     n.name = 'NRD (No-Read-Down) 하위레벨 읽기금지',
    n.name_kr = 'NRD (No-Read-Down) 하위레벨 읽기금지',
    n.domain = 'SE';

MERGE (n:Metric {id: 'no_write_up'})
SET     n.name = 'NWU (No-Write-Up) 상위레벨 쓰기금지',
    n.name_kr = 'NWU (No-Write-Up) 상위레벨 쓰기금지',
    n.domain = 'SE',
    n.definition = '하위 등급에서 상위 무결성 등급 객체에 대한 수정을 막음';

MERGE (n:Metric {id: '접근통제_원칙'})
SET     n.name = '접근통제 원칙',
    n.name_kr = '접근통제 원칙',
    n.domain = 'SE',
    n.definition = '정확한 트랜잭션 : 데이터를 하나의 일치 상태에서 다른 일치상태로 변경하는 일련의 동작 - 무결성의 3가지 목표 제시';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'SE';

MERGE (n:Metric {id: '3가지_무결성_목적'})
SET     n.name = '3가지 무결성 목적',
    n.name_kr = '3가지 무결성 목적',
    n.domain = 'SE',
    n.definition = '1) 비 인가된 사용자가 수정권한을 갖지 못하도록 방지 2) 내부 일관성과 외부 일관성을 갖도록 함(정확한 트랜잭션) 3) 인가된 사용자가 부당한 변경으로부터 보호 되어야 함(직무분리)';

// --- 관계 ---

MERGE (a:Concept {id: 'ac'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'bell_lapadula'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'bida'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'clark_&_wilson'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'access_matrix'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'subject'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'object'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: '보안규칙'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'no_read_up'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'no_write_down'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'nru_nwd'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: 'no_read_down'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Metric {id: 'no_write_up'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Metric {id: '접근통제_원칙'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Metric {id: '3가지_무결성_목적'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Document {id: 'SE_145'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'access_control_model'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bell_lapadula'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bida'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clark_&_wilson'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'access_matrix'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'subject'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'object'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안규칙'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_read_up'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_write_down'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nru_nwd'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'no_read_down'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'no_write_up'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '접근통제_원칙'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '3가지_무결성_목적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_146: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_146'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_147: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_147'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_148: AAA( Authentication, Authorization, Accounting)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_148'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.aliases = ['AC', '접근제어'];

MERGE (n:Concept {id: 'aaa'})
SET     n.name = 'AAA',
    n.name_kr = 'AAA',
    n.domain = 'SE',
    n.aliases = ['AAA'];

MERGE (n:Concept {id: '요-전-통-설'})
SET     n.name = '요-전-통-설',
    n.name_kr = '요-전-통-설',
    n.domain = 'SE';

MERGE (n:Concept {id: '요소_기술'})
SET     n.name = '요소 기술',
    n.name_kr = '요소 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '설_명'})
SET     n.name = '설 명',
    n.name_kr = '설 명',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Concept {id: '요-전-통-설'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '요소_기술'})
MERGE (b:Concept {id: '설_명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Concept {id: '요소_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Concept {id: '설_명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Document {id: 'SE_148'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aaa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요-전-통-설'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요소_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설_명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_149: RADIUS (Remote Authentication Dial-in User Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_149'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'remote_authentication_dial_in_user_service'})
SET     n.name = 'Remote Authentication Dial-in User Service',
    n.name_kr = 'RADIUS',
    n.domain = 'SE',
    n.aliases = ['Remote Authentication Dial-in User Service', 'RADIUS'];

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.aliases = ['AC', '접근제어'];

MERGE (n:Technology {id: 'radius'})
SET     n.name = 'RADIUS',
    n.name_kr = 'RADIUS',
    n.domain = 'SE',
    n.aliases = ['RADIUS'];

MERGE (n:Concept {id: 'nas'})
SET     n.name = 'NAS',
    n.name_kr = 'NAS',
    n.domain = 'SE',
    n.aliases = ['NAS'];

MERGE (n:Concept {id: '원격_access_정책'})
SET     n.name = '원격 Access 정책',
    n.name_kr = '원격 Access 정책',
    n.domain = 'SE';

MERGE (n:Concept {id: '외부_사용자_인증'})
SET     n.name = '외부 사용자 인증',
    n.name_kr = '외부 사용자 인증',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Technology {id: 'radius'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'remote_authentication_dial_in_user_service'})
MERGE (b:Concept {id: 'nas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'remote_authentication_dial_in_user_service'})
MERGE (b:Concept {id: '원격_access_정책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'remote_authentication_dial_in_user_service'})
MERGE (b:Concept {id: '외부_사용자_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'remote_authentication_dial_in_user_service'})
MERGE (b:Document {id: 'SE_149'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'remote_authentication_dial_in_user_service'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'radius'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nas'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격_access_정책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_사용자_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_150: DIAMETER
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_150'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'diameter'})
SET     n.name = 'DIAMETER',
    n.name_kr = 'DIAMETER',
    n.domain = 'SE',
    n.aliases = ['DIAMETER'];

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = '접근제어',
    n.domain = 'SE',
    n.aliases = ['AC', '접근제어'];

MERGE (n:Concept {id: 'peer_to_peer'})
SET     n.name = '양방향',
    n.name_kr = '양방향',
    n.domain = 'SE';

MERGE (n:Concept {id: 'diameter_broker'})
SET     n.name = 'DIAMETER BROKER',
    n.name_kr = 'DIAMETER BROKER',
    n.domain = 'SE',
    n.aliases = ['DIAMETER BROKER'];

MERGE (n:Concept {id: '응용_계층(메시지_생성/전송'})
SET     n.name = '응용 계층(메시지 생성/전송',
    n.name_kr = '응용 계층(메시지 생성/전송',
    n.domain = 'SE';

MERGE (n:Concept {id: '응용서비스_제공)'})
SET     n.name = '응용서비스 제공)',
    n.name_kr = '응용서비스 제공)',
    n.domain = 'SE';

MERGE (n:Concept {id: '전송_계층'})
SET     n.name = '전송 계층(신뢰성 있는 메시지 전송)',
    n.name_kr = '전송 계층(신뢰성 있는 메시지 전송)',
    n.domain = 'SE';

MERGE (n:Technology {id: 'radius'})
SET     n.name = 'RADIUS',
    n.name_kr = 'RADIUS',
    n.domain = 'SE',
    n.aliases = ['RADIUS'];

// --- 관계 ---

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: 'peer_to_peer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: 'diameter_broker'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: '응용_계층(메시지_생성/전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: '응용서비스_제공)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Concept {id: '전송_계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'radius'})
MERGE (b:Concept {id: 'diameter'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Technology {id: 'radius'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Document {id: 'SE_150'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'diameter'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'peer_to_peer'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'diameter_broker'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용_계층(메시지_생성/전송'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용서비스_제공)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송_계층'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'radius'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_151: 커버로스(Kerberos)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_151'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'kerberos'})
SET     n.name = 'Kerberos',
    n.name_kr = '커버로스',
    n.domain = 'SE',
    n.aliases = ['Kerberos', '커버로스'];

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Technology {id: 'kerberos_server'})
SET     n.name = 'Kerberos Server',
    n.name_kr = 'Kerberos Server',
    n.domain = 'SE',
    n.aliases = ['Kerberos Server'];

MERGE (n:Concept {id: 'session_key'})
SET     n.name = 'Session Key',
    n.name_kr = 'Session Key',
    n.domain = 'SE',
    n.aliases = ['Session Key'];

MERGE (n:Concept {id: 'tgs'})
SET     n.name = 'TGS',
    n.name_kr = 'TGS',
    n.domain = 'SE',
    n.aliases = ['TGS'];

MERGE (n:Concept {id: 'ticket'})
SET     n.name = 'Ticket',
    n.name_kr = 'Ticket',
    n.domain = 'SE',
    n.aliases = ['Ticket'];

// --- 관계 ---

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Technology {id: 'kerberos_server'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Concept {id: 'session_key'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Concept {id: 'tgs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Concept {id: 'ticket'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Document {id: 'SE_151'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'kerberos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'kerberos_server'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'session_key'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tgs'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ticket'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_152: PMI (Privilege Management Infrastructure)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_152'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'privilege_management_infrastructure'})
SET     n.name = 'Privilege Management Infrastructure',
    n.name_kr = 'PMI',
    n.domain = 'SE',
    n.aliases = ['Privilege Management Infrastructure', 'PMI'];

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: 'pmi'})
SET     n.name = 'PMI',
    n.name_kr = 'PMI',
    n.domain = 'SE',
    n.aliases = ['PMI'];

MERGE (n:Concept {id: 'ac'})
SET     n.name = 'AC',
    n.name_kr = 'AC',
    n.domain = 'SE',
    n.aliases = ['AC'];

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'SE',
    n.aliases = ['SOA'];

MERGE (n:Concept {id: 'aa'})
SET     n.name = 'AA',
    n.name_kr = 'AA',
    n.domain = 'SE',
    n.aliases = ['AA'];

MERGE (n:Concept {id: '권한소유자'})
SET     n.name = '권한소유자',
    n.name_kr = '권한소유자',
    n.domain = 'SE';

MERGE (n:Concept {id: '권한입증자'})
SET     n.name = '권한입증자',
    n.name_kr = '권한입증자',
    n.domain = 'SE';

MERGE (n:Concept {id: 'x.509_인증서_사용'})
SET     n.name = 'X.509 인증서 사용',
    n.name_kr = 'X.509 인증서 사용',
    n.domain = 'SE',
    n.definition = 'X.509 인증서의 확장 필드 이용하여 사용자별 속성 저장 -신분 확인용 인증서의 유효기간보다 attribute의 유효기간이 짧으므로 인증서를 자주 폐기/재발급 해야함';

MERGE (n:Concept {id: '별도의_인증서_발급'})
SET     n.name = '별도의 인증서 발급',
    n.name_kr = '별도의 인증서 발급',
    n.domain = 'SE',
    n.definition = '사용자 속성을 보증하는 별도의 인증서 발급 방식 -사용자 신원확인 : 기존의 공개키 인증서 활용 -사용자 속성확인 : 속성 인증서 검증';

// --- 관계 ---

MERGE (a:Concept {id: 'pmi'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: 'ac'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: 'aa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: '권한소유자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: '권한입증자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: 'x.509_인증서_사용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Concept {id: '별도의_인증서_발급'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Document {id: 'SE_152'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'privilege_management_infrastructure'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pmi'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한소유자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한입증자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'x.509_인증서_사용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '별도의_인증서_발급'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_153: SSO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_153'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'sso'})
SET     n.name = 'SSO',
    n.name_kr = 'SSO',
    n.domain = 'SE',
    n.aliases = ['SSO'];

MERGE (n:Concept {id: '기업_접근_관리_보안'})
SET     n.name = '기업 접근 관리 보안',
    n.name_kr = '기업 접근 관리 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'single_sign_on'})
SET     n.name = 'Single Sign-On',
    n.name_kr = 'SSO',
    n.domain = 'SE',
    n.aliases = ['Single Sign-On', 'SSO'];

MERGE (n:Concept {id: '데이터'})
SET     n.name = '데이터',
    n.name_kr = '데이터',
    n.domain = 'SE';

MERGE (n:Concept {id: '디자인'})
SET     n.name = '디자인',
    n.name_kr = '디자인',
    n.domain = 'SE';

MERGE (n:Concept {id: '단순_시각화'})
SET     n.name = '단순 시각화',
    n.name_kr = '단순 시각화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ccl'})
SET     n.name = 'CCL',
    n.name_kr = 'CCL',
    n.domain = 'SE',
    n.aliases = ['CCL'];

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SE',
    n.definition = '기업 내 다양한 응용시스템 도입에 따른 관리 복잡성 증가 - PKI, 생체인식 등 다양한 인증 기술 활성화';

MERGE (n:Concept {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SE',
    n.definition = '중앙 관리를 통한 업무의 단순화 및 표준화 실현 - 중앙 집중적 사용자 관리를 통한 보안 기능의 강화';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE',
    n.definition = 'PKI';

MERGE (n:Concept {id: '생체인식'})
SET     n.name = '생체인식',
    n.name_kr = '생체인식',
    n.domain = 'SE',
    n.definition = '생체의 유일한 특징을 추출하여 인증';

MERGE (n:Concept {id: 'otp'})
SET     n.name = 'OTP',
    n.name_kr = 'OTP',
    n.domain = 'SE',
    n.definition = 'One Time Password 로그인 할 때 마다 세션에서만 사용할 수 있는 1회성 패스워드를 생성하는 보안시스템',
    n.aliases = ['OTP'];

MERGE (n:Technology {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'SE',
    n.definition = 'LDAP';

MERGE (n:Concept {id: '쿠키'})
SET     n.name = '쿠키',
    n.name_kr = '쿠키',
    n.domain = 'SE',
    n.definition = '웹 서버가 웹 브라우저에 보내어 저장했다가 서버의 부가적인 요청이 있을 때 서버로 보내주는 문자열';

MERGE (n:Technology {id: '암호화_통신'})
SET     n.name = '암호화 통신',
    n.name_kr = '암호화 통신',
    n.domain = 'SE',
    n.definition = 'SSL';

MERGE (n:Technology {id: 'ipsec'})
SET     n.name = 'IPSec',
    n.name_kr = 'IPSec',
    n.domain = 'SE',
    n.definition = 'IP Security Protocol IP계층을 기반으로 보안 프로토콜을 제공하는 개방형 프레임워크 인터넷상에 전용 회선과 같이 이용 가능한 가상적인 전용 회선을 구축하여 데이터를 도청당하는 등의 행위를 방지하기 위한 통신 규약',
    n.aliases = ['IPSec'];

MERGE (n:Concept {id: 'delegation'})
SET     n.name = 'Delegation',
    n.name_kr = '인증 대행',
    n.domain = 'SE',
    n.aliases = ['Delegation', '인증 대행'];

MERGE (n:Concept {id: 'propagation'})
SET     n.name = 'Propagation',
    n.name_kr = '인증정보 전달',
    n.domain = 'SE',
    n.aliases = ['Propagation', '인증정보 전달'];

MERGE (n:Concept {id: '사용자'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'SE',
    n.definition = '한 개의 Login ID/Password에 의한 편리한 접속이 가능함 많은 수의 ID/Password를 암기할 필요가 없음';

MERGE (n:Concept {id: '관리자'})
SET     n.name = '관리자',
    n.name_kr = '관리자',
    n.domain = 'SE',
    n.definition = '중앙 집중적인 사용자 관리가 가능 모든 사용자의 자원 접근에 대한 Auditing 기능을 제공함. 접속 Site에 대한 Login ID/Password 관리 기능 양한 인터넷 환경에 대응하는 표준 보안 인프라 체계구축기능';

MERGE (n:Concept {id: '인증방식_측면'})
SET     n.name = '인증방식 측면',
    n.name_kr = '인증방식 측면',
    n.domain = 'SE',
    n.definition = '스마트카드 방식과 생체 기반의 통합 방식이 확대될 것임 EAM과 IAM을 이용한 유무선 통합 인증체계 방향으로 발전할 것임';

MERGE (n:Concept {id: '활용_측면'})
SET     n.name = '활용 측면',
    n.name_kr = '활용 측면',
    n.domain = 'SE',
    n.definition = '관리적 편의성이 아닌 사용자의 시스템 접근 용이성을 고려한 시스템 연구 진행 다양한 응용시스템의 도입에 따른 User Provisioning 작업에 대한 관리비 상승에 따른 IAM 시장의 활성화';

MERGE (n:Concept {id: 'sso_방식'})
SET     n.name = 'SSO 방식',
    n.name_kr = 'SSO 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '응용프로그램_사용자인증_방식'})
SET     n.name = '응용프로그램 사용자인증 방식',
    n.name_kr = '응용프로그램 사용자인증 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: 'enterprise_access_management'})
SET     n.name = 'Enterprise Access Management',
    n.name_kr = 'EAM',
    n.domain = 'SE',
    n.aliases = ['Enterprise Access Management', 'EAM'];

MERGE (n:Concept {id: 'identity_access_management'})
SET     n.name = 'Identity Access Management',
    n.name_kr = 'IAM',
    n.domain = 'SE',
    n.aliases = ['Identity Access Management', 'IAM'];

// --- 관계 ---

MERGE (a:Concept {id: 'single_sign_on'})
MERGE (b:Concept {id: '기업_접근_관리_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '디자인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '단순_시각화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'ccl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '관리적_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '생체인식'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'otp'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Technology {id: '관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '쿠키'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Technology {id: '암호화_통신'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Technology {id: 'ipsec'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'delegation'})
MERGE (b:Concept {id: 'propagation'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'delegation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'propagation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '관리자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '인증방식_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '활용_측면'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'sso_방식'})
MERGE (b:Concept {id: '응용프로그램_사용자인증_방식'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'sso_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: '응용프로그램_사용자인증_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'single_sign_on'})
MERGE (b:Concept {id: 'enterprise_access_management'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'single_sign_on'})
MERGE (b:Concept {id: 'identity_access_management'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'single_sign_on'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'enterprise_access_management'})
MERGE (b:Concept {id: 'identity_access_management'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'enterprise_access_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'identity_access_management'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Document {id: 'SE_153'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_접근_관리_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'single_sign_on'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단순_시각화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ccl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생체인식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'otp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쿠키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '암호화_통신'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ipsec'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delegation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'propagation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증방식_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sso_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용프로그램_사용자인증_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enterprise_access_management'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'identity_access_management'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_154: EAM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_154'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'eam'})
SET     n.name = 'EAM',
    n.name_kr = 'EAM',
    n.domain = 'SE',
    n.aliases = ['EAM'];

MERGE (n:Concept {id: '기업_접근_관리_보안'})
SET     n.name = '기업 접근 관리 보안',
    n.name_kr = '기업 접근 관리 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'clients'})
SET     n.name = 'Clients',
    n.name_kr = '사용자',
    n.domain = 'SE',
    n.aliases = ['Clients', '사용자'];

MERGE (n:Concept {id: 'authorization'})
SET     n.name = 'Authorization',
    n.name_kr = '권한관리',
    n.domain = 'SE',
    n.aliases = ['Authorization', '권한관리'];

MERGE (n:Concept {id: 'legacy_system'})
SET     n.name = 'Legacy System',
    n.name_kr = '접근시스템',
    n.domain = 'SE',
    n.aliases = ['Legacy System', '접근시스템'];

MERGE (n:Concept {id: 'authentication'})
SET     n.name = 'Authentication',
    n.name_kr = '인증/SSO',
    n.domain = 'SE',
    n.definition = 'SSO 기반인증기능제공 로그인(ID/PASSWORD) 기반 또는 PKI 인증서 기반 사용자 인증',
    n.aliases = ['Authentication', '인증/SSO'];

MERGE (n:Concept {id: 'authoruzation'})
SET     n.name = 'Authoruzation',
    n.name_kr = '권한관리',
    n.domain = 'SE',
    n.definition = '사용자 ID와 Role을 명시한 table과 Role과 접근가능 자원을 명시한 table, 각 table을 변경하고 관리하기 위한 policy로 구성',
    n.aliases = ['Authoruzation', '권한관리'];

MERGE (n:Concept {id: 'administration'})
SET     n.name = 'Administration',
    n.name_kr = '사용자관리',
    n.domain = 'SE',
    n.definition = 'EAM의 통합 관리툴 이용 접근정책을 설정, 유지, 관리 Audit 기능포함(로그인, 세션, 시간, 사용자 별 이용현황)',
    n.aliases = ['Administration', '사용자관리'];

MERGE (n:Concept {id: 'sso'})
SET     n.name = 'SSO',
    n.name_kr = 'SSO',
    n.domain = 'SE',
    n.aliases = ['SSO'];

MERGE (n:Concept {id: 'iam'})
SET     n.name = 'IAM',
    n.name_kr = 'IAM',
    n.domain = 'SE',
    n.aliases = ['IAM'];

// --- 관계 ---

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: '기업_접근_관리_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'clients'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'authorization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'legacy_system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'authoruzation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'administration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'eam'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Concept {id: 'iam'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'sso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'iam'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Concept {id: 'iam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Document {id: 'SE_154'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_접근_관리_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'clients'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authorization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'legacy_system'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authoruzation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'administration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sso'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_155.1: IAM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_155.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'iam'})
SET     n.name = 'IAM',
    n.name_kr = 'IAM',
    n.domain = 'SE',
    n.aliases = ['IAM'];

MERGE (n:Concept {id: '기업_접근_관리_보안'})
SET     n.name = '기업 접근 관리 보안',
    n.name_kr = '기업 접근 관리 보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'provisioning'})
SET     n.name = 'Provisioning',
    n.name_kr = 'Provisioning',
    n.domain = 'SE',
    n.aliases = ['Provisioning'];

MERGE (n:Concept {id: '3a(authentication'})
SET     n.name = '3A(Authentication',
    n.name_kr = '3A(Authentication',
    n.domain = 'SE';

MERGE (n:Concept {id: 'authorization'})
SET     n.name = 'Authorization',
    n.name_kr = 'Authorization',
    n.domain = 'SE',
    n.aliases = ['Authorization'];

MERGE (n:Concept {id: 'administration)'})
SET     n.name = 'Administration)',
    n.name_kr = 'Administration)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'authentication'})
SET     n.name = 'Authentication',
    n.name_kr = '인증',
    n.domain = 'SE',
    n.definition = 'SSO, PKI, 스마트카드, 지문등 다양한 인증방법 - ID, PWD, 인증방법을 중앙에서 결정하고 적용 및 관리',
    n.aliases = ['Authentication', '인증'];

MERGE (n:Concept {id: 'administration'})
SET     n.name = 'Administration',
    n.name_kr = '관리',
    n.domain = 'SE',
    n.definition = '통합적인 로깅과 이를 이용한 감사(Audit) 리포팅 기능 - 편리한 UI 및 일반화된 관리도구',
    n.aliases = ['Administration', '관리'];

MERGE (n:Concept {id: 'identity_provisioning'})
SET     n.name = 'Identity Provisioning',
    n.name_kr = 'Identity Provisioning',
    n.domain = 'SE',
    n.definition = '각종 시스템에 최초 사용자 등록 및 Role부여 - 접근 권한 및 권한 수준 변경시 적용할 정책 반영',
    n.aliases = ['Identity Provisioning'];

MERGE (n:Metric {id: 'identity_process_workflow'})
SET     n.name = 'Identity Process Workflow',
    n.name_kr = 'Identity Process Workflow',
    n.domain = 'SE',
    n.definition = 'Provisioning 작업들의 수행 순서, 승인, 거부, 통보 등의 절차를 정의하고 정의된 업무절차에 따라 Process 진행',
    n.aliases = ['Identity Process Workflow'];

MERGE (n:Concept {id: '3a'})
SET     n.name = '3A',
    n.name_kr = '3A',
    n.domain = 'SE',
    n.definition = 'Authentication, Authorization, Administration';

// --- 관계 ---

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: '기업_접근_관리_보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: '3a(authentication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'authorization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'administration)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'administration'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: 'identity_provisioning'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Metric {id: 'identity_process_workflow'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Concept {id: '3a'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Document {id: 'SE_155.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'iam'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업_접근_관리_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'provisioning'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3a(authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authorization'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'administration)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'administration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'identity_provisioning'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'identity_process_workflow'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3a'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_155.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_155.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_156.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_156.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_156.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_156.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_156.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_156.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_156.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_156.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_156.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_156.5'})
SET doc.domain = 'SE';

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 239개
// 관계: 498개
// ================================================================