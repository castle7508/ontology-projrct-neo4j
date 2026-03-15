// ================================================================
// SE 도메인 (SE_001 ~ SE_010) — 온톨로지 Cypher
// 도메인: SE (보안/Security)
// 포함관계: 암호화 알고리즘 ⊂ 암호화 ⊂ 정보보안
// ================================================================

// ──────────────────────────────────────
// SE_001: 보안 특징 (CIA)
// ──────────────────────────────────────

// --- Concept 노드: 정보보안 3대요소 ---

MERGE (c:Concept {id: 'information_security'})
SET c.name = 'Information Security',
    c.name_kr = '정보보안',
    c.domain = 'SE',
    c.definition = '정보 및 정보 시스템을 허가되지 않은 접근, 사용, 공개, 손상, 변경, 파괴 등으로부터 보호함으로써 무결성, 기밀성, 가용성을 제공하는 방법.',
    c.aliases = ['정보보호'],
    c.importance = 'high';

MERGE (c:Concept {id: 'confidentiality'})
SET c.name = 'Confidentiality',
    c.name_kr = '기밀성',
    c.domain = 'SE',
    c.definition = '오직 인가된 사람, 인가된 프로세스, 인가된 시스템만이 알 필요성에 근거하여 시스템에 접근해야 한다는 원칙.';

MERGE (c:Concept {id: 'integrity'})
SET c.name = 'Integrity',
    c.name_kr = '무결성',
    c.domain = 'SE',
    c.definition = '네트워크를 통하여 송수신되는 정보의 내용이 불법적으로 생성 또는 변경되거나 삭제되지 않도록 보호되어야 하는 성질.';

MERGE (c:Concept {id: 'availability'})
SET c.name = 'Availability',
    c.name_kr = '가용성',
    c.domain = 'SE',
    c.definition = '시스템이 지체 없이 동작하도록 하고, 합법적 사용자가 서비스 사용을 거절당하지 않도록 하는 것.';

// --- Threat 노드: 기밀성 위협 ---

MERGE (t:Threat {id: 'snooping'})
SET t.name = 'Snooping',
    t.name_kr = '스누핑',
    t.domain = 'SE',
    t.definition = '데이터에 대한 비인가 접근 또는 탈취. 인터넷으로 전송되는 파일을 비인가자가 가로채는 행위.',
    t.threat_target = 'confidentiality';

MERGE (t:Threat {id: 'traffic_analysis'})
SET t.name = 'Traffic Analysis',
    t.name_kr = '트래픽 분석',
    t.domain = 'SE',
    t.definition = '온라인 트래픽 분석을 통해 정보를 획득하는 공격.',
    t.threat_target = 'confidentiality';

// --- Threat 노드: 무결성 위협 ---

MERGE (t:Threat {id: 'modification_attack'})
SET t.name = 'Modification',
    t.name_kr = '변경',
    t.domain = 'SE',
    t.definition = '적법한 메시지의 일부를 불법으로 수정하거나 메시지 전송을 지연시키거나 순서를 뒤바꾸어 인가되지 않은 효과를 노리는 행위.',
    t.threat_target = 'integrity';

MERGE (t:Threat {id: 'masquerading'})
SET t.name = 'Masquerading',
    t.name_kr = '가장',
    t.domain = 'SE',
    t.definition = '한 개체가 다른 개체의 행세를 하는 공격.',
    t.threat_target = 'integrity';

MERGE (t:Threat {id: 'replaying'})
SET t.name = 'Replaying',
    t.name_kr = '재연',
    t.domain = 'SE',
    t.definition = '획득한 데이터를 보관하고 있다가 시간이 경과한 후에 재전송함으로써 인가되지 않은 사항에 접근하는 공격.',
    t.threat_target = 'integrity';

MERGE (t:Threat {id: 'repudiation'})
SET t.name = 'Repudiation',
    t.name_kr = '부인',
    t.domain = 'SE',
    t.definition = '송신자나 수신자가 자신이 메시지를 보냈다는 것을, 또는 메시지를 받았다는 것을 부인하는 행위.',
    t.threat_target = 'integrity';

// --- Threat 노드: 가용성 위협 ---

MERGE (t:Threat {id: 'dos'})
SET t.name = 'Denial of Service',
    t.name_kr = '서비스 거부 공격',
    t.domain = 'SE',
    t.definition = '시스템의 서비스를 느리게 하거나 완전히 차단하는 공격.',
    t.aliases = ['DoS'],
    t.threat_target = 'availability';

MERGE (t:Threat {id: 'ddos'})
SET t.name = 'Distributed Denial of Service',
    t.name_kr = '분산 서비스 거부 공격',
    t.domain = 'SE',
    t.definition = '여러 대의 공격자를 분산적으로 배치해 동시에 서비스 거부 공격을 하는 방법.',
    t.aliases = ['DDoS'],
    t.threat_target = 'availability';

// --- Concept 노드: 보호대책 유형 ---

MERGE (c:Concept {id: 'technical_protection'})
SET c.name = 'Technical Protection',
    c.name_kr = '기술적 보호대책',
    c.domain = 'SE',
    c.definition = '접근통제, 암호기술, 백업체제, 정보시스템 자체 보안성이 강화된 소프트웨어 사용.';

MERGE (c:Concept {id: 'physical_protection'})
SET c.name = 'Physical Protection',
    c.name_kr = '물리적 보호대책',
    c.domain = 'SE',
    c.definition = '자연재해로부터 정보처리시설을 보호하는 자연재해 대책. 출입통제, 시건장치 등 물리적 보안 대책.';

MERGE (c:Concept {id: 'administrative_protection'})
SET c.name = 'Administrative Protection',
    c.name_kr = '관리적 보호대책',
    c.domain = 'SE',
    c.definition = '법, 제도, 규정, 교육 등을 확립하고 보안계획 수립 및 운영. 위험분석 및 보안감사 시행.';

// --- Technology 노드: 대응 솔루션 ---

MERGE (t:Technology {id: 'access_control'})
SET t.name = 'Access Control',
    t.name_kr = '접근제어',
    t.domain = 'SE',
    t.definition = '정책(MAC, DAC, RBAC), 모델(Biba, Bell-LaPadula, Clark-Wilson), 메커니즘(ACL, CL, SL)을 통한 접근통제 기술.';

MERGE (t:Technology {id: 'ids'})
SET t.name = 'Intrusion Detection System',
    t.name_kr = '침입탐지시스템',
    t.domain = 'SE',
    t.aliases = ['IDS'],
    t.definition = '네트워크나 시스템에 대한 침입을 탐지하는 시스템.';

MERGE (t:Technology {id: 'ips'})
SET t.name = 'Intrusion Prevention System',
    t.name_kr = '침입방지시스템',
    t.domain = 'SE',
    t.aliases = ['IPS'],
    t.definition = '네트워크나 시스템에 대한 침입을 탐지하고 차단하는 시스템.';

MERGE (t:Technology {id: 'firewall'})
SET t.name = 'Firewall',
    t.name_kr = '방화벽',
    t.domain = 'SE',
    t.definition = '네트워크 트래픽을 모니터링하고 보안 정책에 따라 허용 또는 차단하는 보안 장비.';

MERGE (t:Technology {id: 'siem'})
SET t.name = 'SIEM',
    t.name_kr = 'SIEM',
    t.domain = 'SE',
    t.aliases = ['Security Information and Event Management'],
    t.definition = '보안 정보 및 이벤트 관리 시스템.';

MERGE (t:Technology {id: 'bcp_dr'})
SET t.name = 'BCP/DR',
    t.name_kr = '업무연속성계획/재해복구',
    t.domain = 'SE',
    t.definition = '정보시스템 재해복구. Mirror/Hot/Warm/Cold 사이트 운영.',
    t.aliases = ['Business Continuity Planning', 'Disaster Recovery'];

// --- SE_001 관계: CIA 3대요소 → 정보보안 ---

MERGE (a:Concept {id: 'confidentiality'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'integrity'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'availability'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_COMPONENT]->(b);

// --- 위협 → CIA 위협 관계 ---

MERGE (a:Threat {id: 'snooping'})
MERGE (b:Concept {id: 'confidentiality'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'traffic_analysis'})
MERGE (b:Concept {id: 'confidentiality'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'modification_attack'})
MERGE (b:Concept {id: 'integrity'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'masquerading'})
MERGE (b:Concept {id: 'integrity'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'replaying'})
MERGE (b:Concept {id: 'integrity'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'repudiation'})
MERGE (b:Concept {id: 'integrity'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'dos'})
MERGE (b:Concept {id: 'availability'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Concept {id: 'availability'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Threat {id: 'dos'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// --- 대응 관계 ---

MERGE (a:Technology {id: 'access_control'})
MERGE (b:Threat {id: 'snooping'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'firewall'})
MERGE (b:Threat {id: 'modification_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ids'})
MERGE (b:Threat {id: 'modification_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Threat {id: 'modification_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Technology {id: 'bcp_dr'})
MERGE (b:Threat {id: 'dos'})
MERGE (a)-[:COUNTERED_BY]->(b);

// --- 보호대책 → 정보보안 ---

MERGE (a:Concept {id: 'technical_protection'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'physical_protection'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'administrative_protection'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:HAS_TYPE]->(b);

// ──────────────────────────────────────
// SE_002: 암호화 (Encryption)
// ──────────────────────────────────────

// --- Concept 노드: 암호화 ---

MERGE (c:Concept {id: 'encryption'})
SET c.name = 'Encryption',
    c.name_kr = '암호화',
    c.domain = 'SE',
    c.definition = '메시지의 내용이 불명확하도록 평문(Plain text)을 재구성하여 암호화된 문장(Cipher text)으로 만드는 과정.',
    c.importance = 'high';

MERGE (c:Concept {id: 'decryption'})
SET c.name = 'Decryption',
    c.name_kr = '복호화',
    c.domain = 'SE',
    c.definition = '복호화 키를 이용하여 원래의 평문으로 변환시키는 과정.';

MERGE (c:Concept {id: 'authentication'})
SET c.name = 'Authentication',
    c.name_kr = '인증',
    c.domain = 'SE',
    c.definition = 'PKI 사용자에 대한 신원확인 기능.';

MERGE (c:Concept {id: 'non_repudiation'})
SET c.name = 'Non-repudiation',
    c.name_kr = '부인봉쇄',
    c.domain = 'SE',
    c.definition = '송수신자의 송수신 사실 부인을 봉쇄하는 보안 목표.';

// --- Concept 노드: 암호화 원리 ---

MERGE (c:Concept {id: 'substitution'})
SET c.name = 'Substitution',
    c.name_kr = '대체',
    c.domain = 'SE',
    c.definition = '메시지 각 글자를 다른 글자로 대체하는 암호화 원리.';

MERGE (c:Concept {id: 'transposition'})
SET c.name = 'Transposition',
    c.name_kr = '치환',
    c.domain = 'SE',
    c.definition = '문자열의 위치를 서로 바꾸어 표현하는 암호화 원리.';

// --- Concept 노드: 암호화 분류 ---

MERGE (c:Concept {id: 'symmetric_key_encryption'})
SET c.name = 'Symmetric Key Encryption',
    c.name_kr = '대칭키 암호화',
    c.domain = 'SE',
    c.definition = '송신자와 수신자가 공유한 비밀키로 암호화 복호화 하는 방식. 구현 용이하고 빠른 암호화.',
    c.aliases = ['비밀키 암호화', 'Secret Key Encryption'];

MERGE (c:Concept {id: 'asymmetric_key_encryption'})
SET c.name = 'Asymmetric Key Encryption',
    c.name_kr = '비대칭키 암호화',
    c.domain = 'SE',
    c.definition = '송신자와 수신자가 각각 공개키-비밀키 한쌍을 보유. 상대방의 공개키로 암호화한 정보를 전송하면 공개키에 해당하는 비밀키로 복원하는 방식.',
    c.aliases = ['공개키 암호화', 'Public Key Encryption'];

MERGE (c:Concept {id: 'stream_cipher'})
SET c.name = 'Stream Cipher',
    c.name_kr = '스트림 암호',
    c.domain = 'SE',
    c.definition = '한번에 1비트 혹은 1바이트의 디지털 데이터를 암호화하는 방식. 암호화 속도가 상대적으로 빠름.';

MERGE (c:Concept {id: 'block_cipher'})
SET c.name = 'Block Cipher',
    c.name_kr = '블록 암호',
    c.domain = 'SE',
    c.definition = '평문을 일정한 블록단위로 나누어 각 블록마다 암호화 과정을 수행하여 고정된 크기의 블록 단위의 암호문을 생성하는 기술.';

// --- 암호화 기술 구조 ---

MERGE (c:Concept {id: 'spn_structure'})
SET c.name = 'SPN',
    c.name_kr = 'SPN 구조',
    c.domain = 'SE',
    c.definition = 'Substitution-Permutation Network. 샤논의 혼돈과 확산 이론 기반으로 S-Box와 P-Box를 반복적으로 사용하는 블록 암호화 구조.',
    c.aliases = ['Substitution-Permutation Network'];

MERGE (c:Concept {id: 'feistel_structure'})
SET c.name = 'Feistel',
    c.name_kr = 'Feistel 구조',
    c.domain = 'SE',
    c.definition = '평문을 두 블록으로 나누어 XOR(Exclusive-OR)와 Swap 기법을 이용하는 라운드를 R번 반복으로 암호문을 만드는 블록 암호화 구조.',
    c.aliases = ['Feistel Cipher', '파이스텔'];

// --- 암호화 수학적 기법 ---

MERGE (m:Method {id: 'integer_factorization'})
SET m.name = 'Integer Factorization',
    m.name_kr = '인수분해',
    m.domain = 'SE',
    m.definition = '두 큰 소수 p와 q의 곱셈은 쉬우나 n으로부터 p와 q를 추출하기 어려운 점을 이용한 암호화 기법.',
    m.category = 'crypto_technique';

MERGE (m:Method {id: 'elliptic_curve'})
SET m.name = 'Elliptic Curve',
    m.name_kr = '타원곡선',
    m.domain = 'SE',
    m.definition = 'PKI 기반의 RSA의 문제점인 속도와 안정성을 해결하기 위해 타원 기반의 안정성과 효율성을 기반으로 생성된 암호화 기법.',
    m.category = 'crypto_technique';

MERGE (m:Method {id: 'discrete_logarithm'})
SET m.name = 'Discrete Logarithm',
    m.name_kr = '이산대수',
    m.domain = 'SE',
    m.definition = '이산대수의 계산은 어렵지만 그 역함수/지수함수의 계산은 빠르게 수행하는 특징을 이용한 암호화 기법.',
    m.category = 'crypto_technique';

MERGE (m:Method {id: 'hash_algorithm'})
SET m.name = 'Hash Algorithm',
    m.name_kr = '해시 알고리즘',
    m.domain = 'SE',
    m.definition = '임의의 길이를 가지고 있는 메시지를 받아들여 고정된 길이의 출력 값으로 바꾸어주는 단방향 알고리즘.',
    m.category = 'crypto_technique';

// --- 암호화 관계 ---

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Concept {id: 'information_security'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Concept {id: 'symmetric_key_encryption'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'asymmetric_key_encryption'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stream_cipher'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'block_cipher'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// 암호화 목표 관계
MERGE (a:Concept {id: 'encryption'})
MERGE (b:Concept {id: 'confidentiality'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Concept {id: 'authentication'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Concept {id: 'non_repudiation'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 대칭키 vs 비대칭키 비교
MERGE (a:Concept {id: 'symmetric_key_encryption'})
MERGE (b:Concept {id: 'asymmetric_key_encryption'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['키 관계', '속도', '부인방지', '키 관리', '대표 알고리즘'],
    summary: '대칭키는 동일키 사용으로 빠르지만 키관리 복잡. 비대칭키는 키쌍 사용으로 부인방지 가능하지만 속도 느림.'
}]->(b);

// 스트림 vs 블록 비교
MERGE (a:Concept {id: 'stream_cipher'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['암호화 단위', '속도', '에러 전파', '구현'],
    summary: '스트림은 비트단위로 빠르고 에러 전파 적음. 블록은 블록단위로 혼돈성 높고 해독 어려움.'
}]->(b);

// ──────────────────────────────────────
// SE_003: 혼돈과 확산
// ──────────────────────────────────────

MERGE (c:Concept {id: 'confusion'})
SET c.name = 'Confusion',
    c.name_kr = '혼돈',
    c.domain = 'SE',
    c.definition = '평문(Plain text)과 암호문(Cipher text)간 상관관계를 은닉하여 암호문과 암호키간의 관계를 알기 어렵게 만드는 기법.';

MERGE (c:Concept {id: 'diffusion'})
SET c.name = 'Diffusion',
    c.name_kr = '확산',
    c.domain = 'SE',
    c.definition = '평문의 통계적 특성을 암호문 전반에 확산시켜 은닉하는 기법. 암호화 알고리즘의 패턴 추출을 어렵게 만드는 성질.';

// 혼돈과 확산은 암호화의 기본 원리
MERGE (a:Concept {id: 'confusion'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffusion'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:HAS_COMPONENT]->(b);

// 혼돈 → Substitution, 확산 → Transposition
MERGE (a:Concept {id: 'confusion'})
MERGE (b:Concept {id: 'substitution'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'diffusion'})
MERGE (b:Concept {id: 'transposition'})
MERGE (a)-[:USES]->(b);

// SPN과 Feistel은 혼돈과 확산 이용
MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Concept {id: 'confusion'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Concept {id: 'diffusion'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'feistel_structure'})
MERGE (b:Concept {id: 'confusion'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'feistel_structure'})
MERGE (b:Concept {id: 'diffusion'})
MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// SE_004: 비밀키 암호화
// ──────────────────────────────────────

// 대칭키는 블록/스트림 모두 포함
MERGE (a:Concept {id: 'block_cipher'})
MERGE (b:Concept {id: 'symmetric_key_encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stream_cipher'})
MERGE (b:Concept {id: 'symmetric_key_encryption'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// ──────────────────────────────────────
// SE_005: SPN 구조
// ──────────────────────────────────────

// --- Technology 노드: S-Box, P-Box ---

MERGE (t:Technology {id: 's_box'})
SET t.name = 'S-Box',
    t.name_kr = 'S-Box',
    t.domain = 'SE',
    t.definition = 'Substitution Box. 혼돈(Confusion)을 구현하는 비선형 대치 테이블.',
    t.category = 'crypto_component';

MERGE (t:Technology {id: 'p_box'})
SET t.name = 'P-Box',
    t.name_kr = 'P-Box',
    t.domain = 'SE',
    t.definition = 'Permutation Box. 확산(Diffusion)을 구현하는 치환 테이블.',
    t.category = 'crypto_component';

// SPN 구조는 블록 암호의 하위 구조
MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'feistel_structure'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// SPN → S-Box, P-Box 사용
MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Technology {id: 's_box'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Technology {id: 'p_box'})
MERGE (a)-[:USES]->(b);

// ──────────────────────────────────────
// SE_006: Feistel 구조
// ──────────────────────────────────────

// Feistel → S-Box, XOR 사용
MERGE (a:Concept {id: 'feistel_structure'})
MERGE (b:Technology {id: 's_box'})
MERGE (a)-[:USES]->(b);

// SPN vs Feistel 비교
MERGE (a:Concept {id: 'spn_structure'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['연산량', '구현난이도', '병렬연산', '복호화', '역함수'],
    summary: 'SPN은 연산 적고 병렬연산 가능하나 구현 어려움. Feistel은 구현 용이하나 연산량 2배, 병렬연산 불가.'
}]->(b);

// ──────────────────────────────────────
// SE_007: 스트림 암호화
// ──────────────────────────────────────

// --- Concept 노드: 스트림 암호 유형 ---

MERGE (c:Concept {id: 'synchronous_stream_cipher'})
SET c.name = 'Synchronous Stream Cipher',
    c.name_kr = '동기식 스트림 암호',
    c.domain = 'SE',
    c.definition = '난수열을 생성하기 위해 내부상태를 유지하며, 이전 내부 상태에서 새로운 내부 상태의 유사난수를 생성하는 방식.';

MERGE (c:Concept {id: 'self_synchronizing_stream_cipher'})
SET c.name = 'Self-synchronizing Stream Cipher',
    c.name_kr = '자기동기식 스트림 암호',
    c.domain = 'SE',
    c.definition = '난수열을 생성할 때 암호화 키와 함께 이전에 암호화된 문자열 일부를 사용하는 방식.';

MERGE (a:Concept {id: 'synchronous_stream_cipher'})
MERGE (b:Concept {id: 'stream_cipher'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'self_synchronizing_stream_cipher'})
MERGE (b:Concept {id: 'stream_cipher'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// --- Technology 노드: 스트림 암호 알고리즘 ---

MERGE (t:Technology {id: 'rc4'})
SET t.name = 'RC4',
    t.name_kr = 'RC4',
    t.domain = 'SE',
    t.definition = 'Rivest가 설계한 바이트 단위로 연산을 하는 키 크기가 가변인 스트림 암호.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'seal'})
SET t.name = 'SEAL',
    t.name_kr = 'SEAL',
    t.domain = 'SE',
    t.definition = 'Software-optimized Encryption Algorithm. 32비트 컴퓨터 고속 스트림 암호.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'lfsr'})
SET t.name = 'LFSR',
    t.name_kr = 'LFSR',
    t.domain = 'SE',
    t.definition = 'Linear Feedback Shift Register. 스트림 암호에 사용되는 이진수열 발생기.',
    t.category = 'algorithm';

MERGE (a:Technology {id: 'rc4'})
MERGE (b:Concept {id: 'synchronous_stream_cipher'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'seal'})
MERGE (b:Concept {id: 'stream_cipher'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'lfsr'})
MERGE (b:Concept {id: 'stream_cipher'})
MERGE (a)-[:IMPLEMENTS]->(b);

// ──────────────────────────────────────
// SE_008: 블록 암호화 운영모드
// ──────────────────────────────────────

// --- Concept 노드: 블록 암호 운영모드 ---

MERGE (c:Concept {id: 'ecb_mode'})
SET c.name = 'ECB Mode',
    c.name_kr = 'ECB 모드',
    c.domain = 'SE',
    c.definition = 'Electronic CodeBook. 같은 키에 대해 동일한 평문 블록이 동일한 암호문 블록으로 출력. 기밀성 가장 낮음.',
    c.aliases = ['Electronic CodeBook'];

MERGE (c:Concept {id: 'cbc_mode'})
SET c.name = 'CBC Mode',
    c.name_kr = 'CBC 모드',
    c.domain = 'SE',
    c.definition = 'Cipher Block Chaining. 이전 블록 암호화 결과를 다음 블록과 XOR 처리하여 암호화.',
    c.aliases = ['Cipher Block Chaining'],
    c.recommended = true;

MERGE (c:Concept {id: 'cfb_mode'})
SET c.name = 'CFB Mode',
    c.name_kr = 'CFB 모드',
    c.domain = 'SE',
    c.definition = 'Cipher FeedBack. 블록 암호를 자기 동기 스트림 암호로 변환하는 방식.',
    c.aliases = ['Cipher FeedBack'];

MERGE (c:Concept {id: 'ofb_mode'})
SET c.name = 'OFB Mode',
    c.name_kr = 'OFB 모드',
    c.domain = 'SE',
    c.definition = 'Output FeedBack. 블록 암호를 동기식 스트림 암호로 변환. IV를 암호화하여 Key Stream을 생성.',
    c.aliases = ['Output FeedBack'];

MERGE (c:Concept {id: 'ctr_mode'})
SET c.name = 'CTR Mode',
    c.name_kr = 'CTR 모드',
    c.domain = 'SE',
    c.definition = 'Counter Mode. 카운터를 이용하여 Key Stream 생성. 병렬 처리 가능.',
    c.aliases = ['Counter Mode'],
    c.recommended = true;

// 운영모드 → 블록 암호 관계
MERGE (a:Concept {id: 'ecb_mode'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cbc_mode'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'cfb_mode'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'ofb_mode'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'ctr_mode'})
MERGE (b:Concept {id: 'block_cipher'})
MERGE (a)-[:HAS_TYPE]->(b);

// --- Technology 노드: 블록 암호 알고리즘 (SPN 기반) ---

MERGE (t:Technology {id: 'aes'})
SET t.name = 'AES',
    t.name_kr = 'AES',
    t.domain = 'SE',
    t.definition = 'Advanced Encryption Standard. DES를 대체하는 미국의 연방 표준 암호화 알고리즘. 128비트 고정 입력, 가변 키 길이.',
    t.category = 'algorithm',
    t.block_size = '128bit',
    t.importance = 'high';

MERGE (t:Technology {id: 'aria'})
SET t.name = 'ARIA',
    t.name_kr = 'ARIA',
    t.domain = 'SE',
    t.definition = '학계, 연구소, 정부기관에서 공동으로 개발한 ISPN 구조의 대칭키 암호 알고리즘. 초경량 환경 및 하드웨어 구현에 최적.',
    t.category = 'algorithm',
    t.block_size = '128bit';

// --- Technology 노드: 블록 암호 알고리즘 (Feistel 기반) ---

MERGE (t:Technology {id: 'des'})
SET t.name = 'DES',
    t.name_kr = 'DES',
    t.domain = 'SE',
    t.definition = 'Data Encryption Standard. 56bit의 키를 이용, 64bit의 평문 블록을 64bit의 암호문 블록으로 만드는 블록 암호 방식의 미국 표준 알고리즘.',
    t.category = 'algorithm',
    t.key_size = '56bit',
    t.block_size = '64bit',
    t.aliases = ['Data Encryption Standard'];

MERGE (t:Technology {id: 'triple_des'})
SET t.name = '3DES',
    t.name_kr = '3DES',
    t.domain = 'SE',
    t.definition = 'DES를 3회 반복 적용하여 보안성을 강화한 알고리즘.',
    t.category = 'algorithm',
    t.aliases = ['Triple DES', '2-DES'];

MERGE (t:Technology {id: 'seed'})
SET t.name = 'SEED',
    t.name_kr = 'SEED',
    t.domain = 'SE',
    t.definition = 'Feistel 구조로 128비트의 평문 블록과 128비트의 키를 입력으로 사용하여 총 16라운드를 거쳐 128비트 암호문 블록을 출력하는 국산 알고리즘.',
    t.category = 'algorithm',
    t.block_size = '128bit';

MERGE (t:Technology {id: 'lea'})
SET t.name = 'LEA',
    t.name_kr = 'LEA',
    t.domain = 'SE',
    t.definition = 'Lightweight Encryption Algorithm. 2012년 국가보안기술연구소가 개발한 128비트 경량 고속 국산 블록 암호 알고리즘.',
    t.category = 'algorithm',
    t.block_size = '128bit';

MERGE (t:Technology {id: 'idea'})
SET t.name = 'IDEA',
    t.name_kr = 'IDEA',
    t.domain = 'SE',
    t.definition = 'International Data Encryption Algorithm. DES를 대체하기 위해 스위스 연방기술 기관에서 개발한 128비트 키, 64비트 블록 암호.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'hight'})
SET t.name = 'HIGHT',
    t.name_kr = 'HIGHT',
    t.domain = 'SE',
    t.definition = 'RFID, USN 등 저전력 경량화 환경에서 기밀성을 제공하기 위해 개발된 블록 암호화 알고리즘. 64비트 평문, 128비트 키.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'rc5'})
SET t.name = 'RC5',
    t.name_kr = 'RC5',
    t.domain = 'SE',
    t.definition = '다양한 크기의 키, 블록, 라운드를 가질 수 있는 가변 블록 암호화 알고리즘.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'blowfish'})
SET t.name = 'Blowfish',
    t.name_kr = 'Blowfish',
    t.domain = 'SE',
    t.definition = 'DES의 대안으로 개발된 Feistel 기반 블록 암호 알고리즘.',
    t.category = 'algorithm';

// --- Technology 노드: 비대칭키 알고리즘 ---

MERGE (t:Technology {id: 'rsa'})
SET t.name = 'RSA',
    t.name_kr = 'RSA',
    t.domain = 'SE',
    t.definition = 'Rivest-Shamir-Adleman. 인수분해의 어려움을 이용한 공개키 암호 알고리즘.',
    t.category = 'algorithm',
    t.importance = 'high';

MERGE (t:Technology {id: 'ecc'})
SET t.name = 'ECC',
    t.name_kr = 'ECC',
    t.domain = 'SE',
    t.definition = 'Elliptic Curve Cryptography. 타원곡선 기반의 공개키 암호 알고리즘.',
    t.category = 'algorithm',
    t.aliases = ['Elliptic Curve Cryptography'];

MERGE (t:Technology {id: 'diffie_hellman'})
SET t.name = 'Diffie-Hellman',
    t.name_kr = '디피-헬만',
    t.domain = 'SE',
    t.definition = '이산대수의 어려움을 이용한 키 교환 알고리즘.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'elgamal'})
SET t.name = 'ElGamal',
    t.name_kr = '엘가말',
    t.domain = 'SE',
    t.definition = '이산대수 기반의 공개키 암호 알고리즘.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'dsa'})
SET t.name = 'DSA',
    t.name_kr = 'DSA',
    t.domain = 'SE',
    t.definition = 'Digital Signature Algorithm. 이산대수 기반 전자서명 알고리즘.',
    t.category = 'algorithm',
    t.aliases = ['Digital Signature Algorithm'];

// --- Technology 노드: 해시 알고리즘 ---

MERGE (t:Technology {id: 'md5'})
SET t.name = 'MD5',
    t.name_kr = 'MD5',
    t.domain = 'SE',
    t.definition = 'Message Digest 5. 128비트 해시 값을 생성하는 해시 함수.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'sha1'})
SET t.name = 'SHA-1',
    t.name_kr = 'SHA-1',
    t.domain = 'SE',
    t.definition = 'Secure Hash Algorithm 1. 160비트 해시 값을 생성하는 해시 함수.',
    t.category = 'algorithm';

MERGE (t:Technology {id: 'sha2'})
SET t.name = 'SHA-2',
    t.name_kr = 'SHA-2',
    t.domain = 'SE',
    t.definition = 'Secure Hash Algorithm 2. SHA-256, SHA-512 등을 포함하는 해시 함수 패밀리.',
    t.category = 'algorithm';

// ──────────────────────────────────────
// SE_009: DES
// ──────────────────────────────────────

// DES → Feistel 구조 사용
MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:USES]->(b);

// 3DES → DES 보완
MERGE (a:Technology {id: 'triple_des'})
MERGE (b:Technology {id: 'des'})
MERGE (a)-[:SUBCLASS_OF]->(b);

// DES brute force 위협
MERGE (t:Threat {id: 'brute_force_attack'})
SET t.name = 'Brute Force Attack',
    t.name_kr = '무차별 대입 공격',
    t.domain = 'SE',
    t.definition = '가능한 모든 키 조합을 시도하여 암호를 해독하는 공격. DES의 56비트 키 길이가 짧아 취약.';

MERGE (a:Threat {id: 'brute_force_attack'})
MERGE (b:Technology {id: 'des'})
MERGE (a)-[:EXPLOITS]->(b);

MERGE (a:Technology {id: 'triple_des'})
MERGE (b:Threat {id: 'brute_force_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

// ──────────────────────────────────────
// SE_010: AES
// ──────────────────────────────────────

// AES → SPN 구조 사용
MERGE (a:Technology {id: 'aes'})
MERGE (b:Concept {id: 'spn_structure'})
MERGE (a)-[:USES]->(b);

// AES → DES 대체
MERGE (a:Technology {id: 'aes'})
MERGE (b:Technology {id: 'des'})
MERGE (a)-[:COMPARED_WITH {
    perspectives: ['블록크기', '키길이', '구조', '보안강도'],
    summary: 'AES는 DES를 대체하는 표준. 128비트 블록, SPN 구조로 보안성과 효율성 향상.'
}]->(b);

// --- 알고리즘 → 구조 관계 ---

// SPN 기반 알고리즘
MERGE (a:Technology {id: 'aes'})
MERGE (b:Concept {id: 'spn_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'aria'})
MERGE (b:Concept {id: 'spn_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

// Feistel 기반 알고리즘
MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'idea'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'blowfish'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'hight'})
MERGE (b:Concept {id: 'feistel_structure'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 비대칭키 알고리즘 → 비대칭키 암호화
MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: 'asymmetric_key_encryption'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'ecc'})
MERGE (b:Concept {id: 'asymmetric_key_encryption'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'elgamal'})
MERGE (b:Concept {id: 'asymmetric_key_encryption'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'diffie_hellman'})
MERGE (b:Concept {id: 'asymmetric_key_encryption'})
MERGE (a)-[:IMPLEMENTS]->(b);

// 암호화 수학적 기법 → 알고리즘
MERGE (a:Technology {id: 'rsa'})
MERGE (b:Method {id: 'integer_factorization'})
MERGE (a)-[:USES]->(b);

MERGE (a:Technology {id: 'ecc'})
MERGE (b:Method {id: 'elliptic_curve'})
MERGE (a)-[:USES]->(b);

MERGE (a:Technology {id: 'diffie_hellman'})
MERGE (b:Method {id: 'discrete_logarithm'})
MERGE (a)-[:USES]->(b);

MERGE (a:Technology {id: 'dsa'})
MERGE (b:Method {id: 'discrete_logarithm'})
MERGE (a)-[:USES]->(b);

// 해시 알고리즘 관계
MERGE (a:Technology {id: 'md5'})
MERGE (b:Method {id: 'hash_algorithm'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'sha1'})
MERGE (b:Method {id: 'hash_algorithm'})
MERGE (a)-[:IMPLEMENTS]->(b);

MERGE (a:Technology {id: 'sha2'})
MERGE (b:Method {id: 'hash_algorithm'})
MERGE (a)-[:IMPLEMENTS]->(b);

// AES 암호화 단계 (Method 노드)
MERGE (m:Method {id: 'sub_bytes'})
SET m.name = 'SubBytes',
    m.name_kr = 'SubBytes',
    m.domain = 'SE',
    m.definition = '암호문이 비선형성을 갖도록 바이트 단위로 역변환 가능한 S-Box를 적용. Affine 변환 적용.',
    m.category = 'aes_step';

MERGE (m:Method {id: 'shift_rows'})
SET m.name = 'ShiftRows',
    m.name_kr = 'ShiftRows',
    m.domain = 'SE',
    m.definition = '상태의 각 행을 좌로 순환 이동시키는 연산.',
    m.category = 'aes_step';

MERGE (m:Method {id: 'mix_columns'})
SET m.name = 'MixColumns',
    m.name_kr = 'MixColumns',
    m.domain = 'SE',
    m.definition = '상태 행렬에서 열의 값을 변환하는 연산. 행렬 곱셈을 이용하여 바이트들을 뒤섞는 과정.',
    m.category = 'aes_step';

MERGE (m:Method {id: 'add_round_key'})
SET m.name = 'AddRoundKey',
    m.name_kr = 'AddRoundKey',
    m.domain = 'SE',
    m.definition = 'State 값을 Round Key와 XOR 연산하는 과정.',
    m.category = 'aes_step';

// AES 단계 관계
MERGE (a:Method {id: 'sub_bytes'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Method {id: 'shift_rows'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Method {id: 'mix_columns'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Method {id: 'add_round_key'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:HAS_PHASE]->(b);

// ──────────────────────────────────────
// Domain 연결
// ──────────────────────────────────────

MATCH (n) WHERE n.domain = 'SE' AND (n:Concept OR n:Technology OR n:Method OR n:Threat)
MERGE (d:Domain {id: 'SE'})
SET d.name = 'Security', d.name_kr = '보안'
MERGE (n)-[:BELONGS_TO]->(d);

// ──────────────────────────────────────
// Document 추적
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_001'})
SET doc.filename = 'SE_001_보안 특징(CIA).doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_002'})
SET doc.filename = 'SE_002_암호화(Encryption).doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_003'})
SET doc.filename = 'SE_003_혼돈과확산.docx', doc.domain = 'SE', doc.format = 'docx';

MERGE (doc:Document {id: 'SE_004'})
SET doc.filename = 'SE_004_비밀키 암호화.doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_005'})
SET doc.filename = 'SE_005_SPN.doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_006'})
SET doc.filename = 'SE_006_Feistel.doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_007'})
SET doc.filename = 'SE_007_스트림 암호화(stream cipher).doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_008'})
SET doc.filename = 'SE_008_블록 암호화.doc', doc.domain = 'SE', doc.format = 'doc';

MERGE (doc:Document {id: 'SE_009'})
SET doc.filename = 'SE_009_DES.docx', doc.domain = 'SE', doc.format = 'docx';

MERGE (doc:Document {id: 'SE_010'})
SET doc.filename = 'SE_010_AES.docx', doc.domain = 'SE', doc.format = 'docx';

// --- MENTIONED_IN 관계 ---

// SE_001
MERGE (c:Concept {id: 'information_security'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'confidentiality'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'integrity'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'availability'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Threat {id: 'snooping'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Threat {id: 'dos'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Threat {id: 'ddos'}) MERGE (doc:Document {id: 'SE_001'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SE_002
MERGE (c:Concept {id: 'encryption'}) MERGE (doc:Document {id: 'SE_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'symmetric_key_encryption'}) MERGE (doc:Document {id: 'SE_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'asymmetric_key_encryption'}) MERGE (doc:Document {id: 'SE_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'stream_cipher'}) MERGE (doc:Document {id: 'SE_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'block_cipher'}) MERGE (doc:Document {id: 'SE_002'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SE_003
MERGE (c:Concept {id: 'confusion'}) MERGE (doc:Document {id: 'SE_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'diffusion'}) MERGE (doc:Document {id: 'SE_003'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SE_004
MERGE (c:Concept {id: 'symmetric_key_encryption'}) MERGE (doc:Document {id: 'SE_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'asymmetric_key_encryption'}) MERGE (doc:Document {id: 'SE_004'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SE_005
MERGE (c:Concept {id: 'spn_structure'}) MERGE (doc:Document {id: 'SE_005'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SE_006
MERGE (c:Concept {id: 'feistel_structure'}) MERGE (doc:Document {id: 'SE_006'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// SE_007
MERGE (c:Concept {id: 'stream_cipher'}) MERGE (doc:Document {id: 'SE_007'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'rc4'}) MERGE (doc:Document {id: 'SE_007'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SE_008
MERGE (c:Concept {id: 'block_cipher'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'ecb_mode'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'cbc_mode'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'ctr_mode'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (c)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'aes'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Technology {id: 'des'}) MERGE (doc:Document {id: 'SE_008'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SE_009
MERGE (t:Technology {id: 'des'}) MERGE (doc:Document {id: 'SE_009'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (t:Threat {id: 'brute_force_attack'}) MERGE (doc:Document {id: 'SE_009'}) MERGE (t)-[:MENTIONED_IN]->(doc);

// SE_010
MERGE (t:Technology {id: 'aes'}) MERGE (doc:Document {id: 'SE_010'}) MERGE (t)-[:MENTIONED_IN]->(doc);
MERGE (c:Concept {id: 'spn_structure'}) MERGE (doc:Document {id: 'SE_010'}) MERGE (c)-[:MENTIONED_IN]->(doc);

// ================================================================
// SE 도메인 (SE_001 ~ SE_010) 완료
// 노드: Concept 26개, Technology 27개, Method 8개, Threat 9개, Document 10개
//       (총 80개 노드)
// 관계: SUBCLASS_OF, HAS_COMPONENT, HAS_TYPE, HAS_PHASE,
//       IMPLEMENTS, USES, THREATENS, COUNTERED_BY, EXPLOITS,
//       COMPARED_WITH, BELONGS_TO, MENTIONED_IN
//       (총 약 110개 관계)
// ================================================================
