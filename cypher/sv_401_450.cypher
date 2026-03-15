// ================================================================
// SV 도메인 (SV_401 ~ SV_450) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_367: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_367'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_368.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_368.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_368.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_368.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_368.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_368.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_369: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_369'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_370: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_370'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_371.1: Digital ID
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_371.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_id'})
SET     n.name = 'Digital ID',
    n.name_kr = 'Digital ID',
    n.domain = 'SV',
    n.aliases = ['Digital ID'];

MERGE (n:Concept {id: 'id관리'})
SET     n.name = 'ID관리',
    n.name_kr = 'ID관리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'silo'})
SET     n.name = '개방형',
    n.name_kr = '개방형',
    n.domain = 'SV';

MERGE (n:Concept {id: 'centralized'})
SET     n.name = '중앙집중형',
    n.name_kr = '중앙집중형',
    n.domain = 'SV';

MERGE (n:Concept {id: 'federated'})
SET     n.name = '연계형',
    n.name_kr = '연계형',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산형모델'})
SET     n.name = '분산형모델',
    n.name_kr = '분산형모델',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털id_관리_기술'})
SET     n.name = '디지털ID 관리 기술',
    n.name_kr = '디지털ID 관리 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'self_sovereign'})
SET     n.name = '자기주권형(Self-Sovereign) 신원증명',
    n.name_kr = '자기주권형(Self-Sovereign) 신원증명',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'id관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'silo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'centralized'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'federated'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: '분산형모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: '디지털id_관리_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'centralized'})
MERGE (b:Concept {id: 'self_sovereign'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'centralized'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Concept {id: 'self_sovereign'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Document {id: 'SV_371.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_id'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'id관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'silo'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'centralized'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'federated'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산형모델'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털id_관리_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_sovereign'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_371.2: DID(Decentralized Identity)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_371.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'decentralized_identity'})
SET     n.name = 'Decentralized Identity',
    n.name_kr = 'DID',
    n.domain = 'SV',
    n.aliases = ['Decentralized Identity', 'DID'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'did'})
SET     n.name = 'DID',
    n.name_kr = 'DID',
    n.domain = 'SV',
    n.aliases = ['DID'];

MERGE (n:Concept {id: '탈중앙화'})
SET     n.name = '탈중앙화',
    n.name_kr = '탈중앙화',
    n.domain = 'SV';

MERGE (n:Concept {id: '신원인증'})
SET     n.name = '신원인증',
    n.name_kr = '신원인증',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ssi_모델'})
SET     n.name = 'SSI 모델',
    n.name_kr = 'SSI 모델',
    n.domain = 'SV';

MERGE (n:Concept {id: '사용자_관리'})
SET     n.name = '사용자 관리',
    n.name_kr = '사용자 관리',
    n.domain = 'SV',
    n.definition = 'Credential(자격증명 데이터)를 사용자 기기에 저장';

MERGE (n:Concept {id: '제공_내용_검증'})
SET     n.name = '제공 내용 검증',
    n.name_kr = '제공 내용 검증',
    n.domain = 'SV',
    n.definition = 'Verifier가 개인정보 저장하지 않고 고객이 제공한 정보만 검증';

MERGE (n:Concept {id: 'decentralized'})
SET     n.name = 'Decentralized',
    n.name_kr = 'Decentralized',
    n.domain = 'SV',
    n.definition = '중앙화된 인증 등록이 요구되지 않음',
    n.aliases = ['Decentralized'];

MERGE (n:Concept {id: 'digital_hub'})
SET     n.name = 'Digital Hub',
    n.name_kr = 'Digital Hub',
    n.domain = 'SV',
    n.definition = '개인이 Identity를 저장, 소유, 제어 가능',
    n.aliases = ['Digital Hub'];

MERGE (n:Concept {id: 'cryptographically_verifiable'})
SET     n.name = 'Cryptographically-verifiable',
    n.name_kr = 'Cryptographically-verifiable',
    n.domain = 'SV',
    n.definition = '암호화를 이용하여 오너십 증명 가능',
    n.aliases = ['Cryptographically-verifiable'];

MERGE (n:Concept {id: '구성도'})
SET     n.name = '구성도',
    n.name_kr = '구성도',
    n.domain = 'SV';

MERGE (n:Concept {id: '기술요소'})
SET     n.name = '기술요소',
    n.name_kr = '기술요소',
    n.domain = 'SV',
    n.definition = 'Verifiable Credentials';

MERGE (n:Standard {id: 'decentralized_identifiers'})
SET     n.name = 'Decentralized Identifiers',
    n.name_kr = 'DIDs',
    n.domain = 'SV',
    n.definition = 'RFC 2141 URN(Uniform Resource Name, 통합자원 이름) 기반의 scheme:method:method-specific identifier로 구성',
    n.aliases = ['Decentralized Identifiers', 'DIDs'];

MERGE (n:Concept {id: 'did_auth'})
SET     n.name = 'DID Auth',
    n.name_kr = 'DID Auth',
    n.domain = 'SV',
    n.definition = 'DID 소유자가 사설 키의 제어를 증명에 의해 인증',
    n.aliases = ['DID Auth'];

MERGE (n:Concept {id: 'did_예시'})
SET     n.name = 'DID 예시',
    n.name_kr = 'DID 예시',
    n.domain = 'SV';

MERGE (n:Technology {id: 'did_document_예시'})
SET     n.name = 'DID Document 예시',
    n.name_kr = 'DID Document 예시',
    n.domain = 'SV',
    n.definition = '{ "@context": "https://www.w3.org/ns/did/v1", "id": "did:s:123456789abcdefghi", "authentication": [{ "id": "did:example:123456789abcdefghi#keys-1", "type": "RsaVerificationKey2018", "controller": "did';

MERGE (n:Concept {id: '기존_신원인증'})
SET     n.name = '기존 신원인증',
    n.name_kr = '기존 신원인증',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'did'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '탈중앙화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '신원인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'ssi_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '사용자_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '제공_내용_검증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'decentralized'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'digital_hub'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'cryptographically_verifiable'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '구성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '기술요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Standard {id: 'decentralized_identifiers'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'did_auth'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'did_예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Technology {id: 'did_document_예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'did'})
MERGE (b:Concept {id: '기존_신원인증'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: 'did'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Concept {id: '기존_신원인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Document {id: 'SV_371.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'decentralized_identity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'did'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탈중앙화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신원인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssi_모델'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제공_내용_검증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decentralized'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_hub'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cryptographically_verifiable'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술요소'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'decentralized_identifiers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'did_auth'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'did_예시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'did_document_예시'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_신원인증'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_371.3: SSI(Self-Sovereign Identity)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_371.3'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'self_sovereign_identity'})
SET     n.name = 'Self-Sovereign Identity',
    n.name_kr = 'SSI',
    n.domain = 'SV',
    n.aliases = ['Self-Sovereign Identity', 'SSI'];

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ssi'})
SET     n.name = '자기주권신원',
    n.name_kr = '자기주권신원',
    n.domain = 'SV';

MERGE (n:Concept {id: 'did'})
SET     n.name = 'DID',
    n.name_kr = 'DID',
    n.domain = 'SV',
    n.aliases = ['DID'];

MERGE (n:Concept {id: 'gadi'})
SET     n.name = 'GADI',
    n.name_kr = 'GADI',
    n.domain = 'SV',
    n.aliases = ['GADI'];

MERGE (n:Concept {id: '12_원칙'})
SET     n.name = '12 원칙',
    n.name_kr = '12 원칙',
    n.domain = 'SV';

MERGE (n:Concept {id: '전략적_측면'})
SET     n.name = '전략적 측면',
    n.name_kr = '전략적 측면',
    n.domain = 'SV',
    n.definition = '비즈니스 원동력';

MERGE (n:Concept {id: '제도적_측면'})
SET     n.name = '제도적 측면',
    n.name_kr = '제도적 측면',
    n.domain = 'SV',
    n.definition = '법제도 대응';

MERGE (n:Concept {id: '보안적_측면'})
SET     n.name = '보안적 측면',
    n.name_kr = '보안적 측면',
    n.domain = 'SV',
    n.definition = '민감정보 침해';

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SV',
    n.definition = '블록체인';

// --- 관계 ---

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: 'ssi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: 'did'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: 'gadi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '12_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '전략적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '제도적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '보안적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Document {id: 'SV_371.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'self_sovereign_identity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ssi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'did'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gadi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '12_원칙'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_371.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_371.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_372: GADI(Global Architecture for Digital Identity)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_372'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'global_architecture_for_digital_identity'})
SET     n.name = 'Global Architecture for Digital Identity',
    n.name_kr = 'GADI',
    n.domain = 'SV',
    n.aliases = ['Global Architecture for Digital Identity', 'GADI'];

MERGE (n:Concept {id: 'id관리'})
SET     n.name = 'ID관리',
    n.name_kr = 'ID관리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'digital_indentity'})
SET     n.name = 'Digital Indentity',
    n.name_kr = 'Digital Indentity',
    n.domain = 'SV',
    n.aliases = ['Digital Indentity'];

MERGE (n:Concept {id: 'digital_address'})
SET     n.name = 'Digital Address',
    n.name_kr = 'Digital Address',
    n.domain = 'SV',
    n.aliases = ['Digital Address'];

MERGE (n:Concept {id: 'issuers'})
SET     n.name = 'Issuers',
    n.name_kr = 'Issuers',
    n.domain = 'SV',
    n.aliases = ['Issuers'];

MERGE (n:Concept {id: 'did'})
SET     n.name = 'DID',
    n.name_kr = 'DID',
    n.domain = 'SV',
    n.aliases = ['DID'];

MERGE (n:Concept {id: 'zkp'})
SET     n.name = 'ZKP',
    n.name_kr = 'ZKP',
    n.domain = 'SV',
    n.aliases = ['ZKP'];

MERGE (n:Concept {id: 'digital_address_provider'})
SET     n.name = 'Digital Address Provider',
    n.name_kr = 'DAP',
    n.domain = 'SV',
    n.definition = 'DID 플랫폼 제공 업체, DID관련 Indentity 서비스 제공 솔루션 공급자',
    n.aliases = ['Digital Address Provider', 'DAP'];

MERGE (n:Concept {id: 'service_providers'})
SET     n.name = 'Service Providers',
    n.name_kr = 'Service Providers',
    n.domain = 'SV',
    n.definition = '사용자 확인 가능한 자격증명 제출',
    n.aliases = ['Service Providers'];

MERGE (n:Concept {id: 'dap_wallet_app_user'})
SET     n.name = 'DAP Wallet App/User',
    n.name_kr = 'DAP Wallet App/User',
    n.domain = 'SV',
    n.definition = 'DAP Wallet에 DA(Digital Address) 관리, 자격증명 제어',
    n.aliases = ['DAP Wallet App/User'];

MERGE (n:Concept {id: '주요기능'})
SET     n.name = '주요기능',
    n.name_kr = '주요기능',
    n.domain = 'SV',
    n.definition = '사용자 경험';

MERGE (n:Standard {id: '완성도'})
SET     n.name = '완성도',
    n.name_kr = '완성도',
    n.domain = 'SV',
    n.definition = '생태계에서 고유한 Digital Address - 증명서에 대한 기술적 보증 수준(NIST 800-63) - User 를 위한 신원 검증 - 사용자 등록 시 철저한 신원 검증';

MERGE (n:Concept {id: '에코시스템'})
SET     n.name = '에코시스템',
    n.name_kr = '에코시스템',
    n.domain = 'SV',
    n.definition = '발급자가 검증한 Digital Address 통한 신뢰할 수 있는 신원 - 각 인증에 대해 User와 Issuer 보상 - 플랫폼에 모든 참여자를 포함';

MERGE (n:Concept {id: '주요기술'})
SET     n.name = '주요기술',
    n.name_kr = '주요기술',
    n.domain = 'SV',
    n.definition = '블록체인';

MERGE (n:Concept {id: 'zero_knowledge_proof'})
SET     n.name = 'Zero-knowledge proof',
    n.name_kr = '영지식 증명',
    n.domain = 'SV',
    n.definition = '한사람(제공자)의 정보를 공개하지 않고, 자신이 일부 정보에 소유권을 가지고 있음을 다른 사람(검증자)에게 증명하는 암호법',
    n.aliases = ['Zero-knowledge proof', '영지식 증명'];

MERGE (n:Concept {id: '신뢰_기반_프레임워크'})
SET     n.name = '신뢰 기반 프레임워크',
    n.name_kr = '신뢰 기반 프레임워크',
    n.domain = 'SV',
    n.definition = '표준화된 Credential 발급 절차 및 의미 체계도입 - 특정 Credential 유형에 대해 공개된 요구사항에 따라 Credential 발급자 인증';

MERGE (n:Concept {id: '이기종_플랫폼_호환성'})
SET     n.name = '이기종 플랫폼 호환성',
    n.name_kr = '이기종 플랫폼 호환성',
    n.domain = 'SV',
    n.definition = 'DID관련 거래의 교환 플랫폼 역할을 하는 분산 원장(Distributed Ledger)을 지원하여 이기종 원장간 상호호환성을 실현';

MERGE (n:Concept {id: '확장_가능한_포용성'})
SET     n.name = '확장 가능한 포용성',
    n.name_kr = '확장 가능한 포용성',
    n.domain = 'SV',
    n.definition = '자신이 선택한 DID 체계와 상호작용할 수 있도록 Trust Proxy를 사용할 수 있는 일련의 프로토콜을 제공';

// --- 관계 ---

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'digital_indentity'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'digital_address'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'issuers'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'did'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'zkp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'digital_address_provider'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'service_providers'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'dap_wallet_app_user'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '주요기능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Standard {id: '완성도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '에코시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '주요기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: 'zero_knowledge_proof'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '신뢰_기반_프레임워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '이기종_플랫폼_호환성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Concept {id: '확장_가능한_포용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Document {id: 'SV_372'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'global_architecture_for_digital_identity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'id관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_indentity'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_address'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'issuers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'did'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zkp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_address_provider'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_providers'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dap_wallet_app_user'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '완성도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에코시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰_기반_프레임워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이기종_플랫폼_호환성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장_가능한_포용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_373: 디지털 헬스 패스포트(Digital Health Passport)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_373'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_health_passport'})
SET     n.name = 'Digital Health Passport',
    n.name_kr = '디지털 헬스 패스포트',
    n.domain = 'SV',
    n.aliases = ['Digital Health Passport', '디지털 헬스 패스포트'];

MERGE (n:Concept {id: 'id관리'})
SET     n.name = 'ID관리',
    n.name_kr = 'ID관리',
    n.domain = 'SV';

MERGE (n:Concept {id: '블록체인'})
SET     n.name = '블록체인',
    n.name_kr = '블록체인',
    n.domain = 'SV';

MERGE (n:Concept {id: 'qr코드'})
SET     n.name = 'QR코드',
    n.name_kr = 'QR코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '백신접종_증명서'})
SET     n.name = '백신접종 증명서',
    n.name_kr = '백신접종 증명서',
    n.domain = 'SV';

MERGE (n:Concept {id: '백신_디바이드'})
SET     n.name = '백신 디바이드(격차)',
    n.name_kr = '백신 디바이드(격차)',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Concept {id: 'id관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Concept {id: '블록체인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Concept {id: 'qr코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Concept {id: '백신접종_증명서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Concept {id: '백신_디바이드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Document {id: 'SV_373'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_health_passport'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'id관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블록체인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백신접종_증명서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '백신_디바이드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_374.1: 전자출입명부(KI-PASS)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_374.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ki_pass'})
SET     n.name = 'KI-PASS',
    n.name_kr = '전자출입명부',
    n.domain = 'SV',
    n.aliases = ['KI-PASS', '전자출입명부'];

MERGE (n:Concept {id: 'id관리'})
SET     n.name = 'ID관리',
    n.name_kr = 'ID관리',
    n.domain = 'SV';

MERGE (n:Concept {id: 'qr코드'})
SET     n.name = 'QR코드',
    n.name_kr = 'QR코드',
    n.domain = 'SV';

MERGE (n:Concept {id: '분산관리'})
SET     n.name = '분산관리',
    n.name_kr = '분산관리',
    n.domain = 'SV';

MERGE (n:Concept {id: '한국_사회보장_정보원'})
SET     n.name = '한국 사회보장 정보원',
    n.name_kr = '한국 사회보장 정보원',
    n.domain = 'SV';

MERGE (n:Law {id: '개인정보보호법'})
SET     n.name = '개인정보보호법',
    n.name_kr = '개인정보보호법',
    n.domain = 'SV';

MERGE (n:Concept {id: '위치정보보호법'})
SET     n.name = '위치정보보호법',
    n.name_kr = '위치정보보호법',
    n.domain = 'SV';

MERGE (n:Concept {id: '감염병예방법'})
SET     n.name = '감염병예방법',
    n.name_kr = '감염병예방법',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: 'id관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: 'qr코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: '분산관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: '한국_사회보장_정보원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Law {id: '개인정보보호법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: '위치정보보호법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Concept {id: '감염병예방법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Document {id: 'SV_374.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ki_pass'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'id관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qr코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한국_사회보장_정보원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치정보보호법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감염병예방법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_374.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_374.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_374.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_374.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_379: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_379'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_380: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_380'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_381: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_381'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_382: 스마트러닝
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_382'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'smart_learning'})
SET     n.name = 'Smart Learning',
    n.name_kr = '스마트러닝',
    n.domain = 'SV',
    n.aliases = ['스마트러닝'];

MERGE (n:Concept {id: 'e_learning'})
SET     n.name = 'e-Learning',
    n.name_kr = 'e-Learning',
    n.domain = 'SV',
    n.aliases = ['e-Learning'];

MERGE (n:Concept {id: '수평적'})
SET     n.name = '수평적',
    n.name_kr = '수평적',
    n.domain = 'SV';

MERGE (n:Concept {id: '쌍방향적'})
SET     n.name = '쌍방향적',
    n.name_kr = '쌍방향적',
    n.domain = 'SV';

MERGE (n:Concept {id: '참여적'})
SET     n.name = '참여적',
    n.name_kr = '참여적',
    n.domain = 'SV';

MERGE (n:Concept {id: '지능적'})
SET     n.name = '지능적',
    n.name_kr = '지능적',
    n.domain = 'SV';

MERGE (n:Concept {id: '상호작용적'})
SET     n.name = '상호작용적',
    n.name_kr = '상호작용적',
    n.domain = 'SV';

MERGE (n:Concept {id: 'self_directed'})
SET     n.name = '자기주도적',
    n.name_kr = '자기주도적',
    n.domain = 'SV';

MERGE (n:Concept {id: 'motivated'})
SET     n.name = '학습흥미',
    n.name_kr = '학습흥미',
    n.domain = 'SV';

MERGE (n:Concept {id: '이러닝'})
SET     n.name = '이러닝',
    n.name_kr = '이러닝',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: 'e_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '수평적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '쌍방향적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '참여적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '지능적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '상호작용적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: 'self_directed'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: 'motivated'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '이러닝'})
MERGE (b:Concept {id: 'smart_learning'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Concept {id: '이러닝'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Document {id: 'SV_382'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smart_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수평적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쌍방향적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '참여적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상호작용적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'self_directed'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'motivated'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이러닝'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_383: Flipped Learning
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_383'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'flipped_learning'})
SET     n.name = 'Flipped Learning',
    n.name_kr = 'Flipped Learning',
    n.domain = 'SV',
    n.aliases = ['Flipped Learning'];

MERGE (n:Concept {id: 'e_learning'})
SET     n.name = 'e-Learning',
    n.name_kr = 'e-Learning',
    n.domain = 'SV',
    n.aliases = ['e-Learning'];

MERGE (n:Concept {id: 'flip_-유학의전'})
SET     n.name = 'FLIP -유학(배)의전',
    n.name_kr = 'FLIP -유학(배)의전',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'flipped_learning'})
MERGE (b:Concept {id: 'e_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'flipped_learning'})
MERGE (b:Concept {id: 'flip_-유학의전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'flipped_learning'})
MERGE (b:Document {id: 'SV_383'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'flipped_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flip_-유학의전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_384: MOOC (Massie Online Open Course)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_384'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'massie_online_open_course'})
SET     n.name = 'Massie Online Open Course',
    n.name_kr = 'MOOC',
    n.domain = 'SV',
    n.aliases = ['Massie Online Open Course', 'MOOC'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'e_learning'})
SET     n.name = 'e-Learning',
    n.name_kr = 'e-Learning',
    n.domain = 'SV',
    n.aliases = ['e-Learning'];

MERGE (n:Concept {id: 'mooc'})
SET     n.name = 'MOOC',
    n.name_kr = 'MOOC',
    n.domain = 'SV',
    n.aliases = ['MOOC'];

MERGE (n:Concept {id: '컨지퀴토커'})
SET     n.name = '컨지퀴토커',
    n.name_kr = '컨지퀴토커',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'mooc'})
MERGE (b:Concept {id: 'e_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'massie_online_open_course'})
MERGE (b:Concept {id: '컨지퀴토커'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'massie_online_open_course'})
MERGE (b:Document {id: 'SV_384'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'massie_online_open_course'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mooc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컨지퀴토커'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_385: 에듀테크
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_385'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'edutech'})
SET     n.name = 'Edutech',
    n.name_kr = '에듀테크',
    n.domain = 'SV',
    n.aliases = ['에듀테크'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'e_learning'})
SET     n.name = 'e-Learning',
    n.name_kr = 'e-Learning',
    n.domain = 'SV',
    n.aliases = ['e-Learning'];

MERGE (n:Concept {id: '실감교육'})
SET     n.name = '실감교육',
    n.name_kr = '실감교육',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'SV';

MERGE (n:Concept {id: '플랫폼'})
SET     n.name = '플랫폼',
    n.name_kr = '플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ar_vr'})
SET     n.name = 'AR/VR',
    n.name_kr = 'AR/VR',
    n.domain = 'SV',
    n.aliases = ['AR/VR'];

MERGE (n:Concept {id: '빅데이터'})
SET     n.name = '빅데이터',
    n.name_kr = '빅데이터',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ai'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mooc'})
SET     n.name = 'MOOC',
    n.name_kr = 'MOOC',
    n.domain = 'SV',
    n.aliases = ['MOOC'];

MERGE (n:Concept {id: '콘텐츠'})
SET     n.name = '콘텐츠',
    n.name_kr = '콘텐츠',
    n.domain = 'SV';

MERGE (n:Concept {id: '에이전트'})
SET     n.name = '에이전트',
    n.name_kr = '에이전트',
    n.domain = 'SV';

MERGE (n:Concept {id: 'content'})
SET     n.name = 'Content',
    n.name_kr = 'Content',
    n.domain = 'SV',
    n.definition = '인공지능(AI) 교사',
    n.aliases = ['Content'];

MERGE (n:Concept {id: 'platform'})
SET     n.name = 'Platform',
    n.name_kr = 'Platform',
    n.domain = 'SV',
    n.definition = 'MOOC',
    n.aliases = ['Platform'];

MERGE (n:Technology {id: 'network'})
SET     n.name = 'Network',
    n.name_kr = 'Network',
    n.domain = 'SV',
    n.definition = '5G, WiFi 6',
    n.aliases = ['Network'];

MERGE (n:Concept {id: 'device'})
SET     n.name = 'Device',
    n.name_kr = 'Device',
    n.domain = 'SV',
    n.definition = '디지털 교과서',
    n.aliases = ['Device'];

// --- 관계 ---

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'e_learning'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '실감교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'ar_vr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '빅데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'ai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'mooc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '콘텐츠'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: '에이전트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'content'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'platform'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Technology {id: 'network'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Concept {id: 'device'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Document {id: 'SV_385'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'edutech'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_learning'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실감교육'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ar_vr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ai'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mooc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '콘텐츠'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에이전트'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'content'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'platform'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'network'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'device'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_386.1: 원격교육
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_386.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '원격교육'})
SET     n.name = '원격교육',
    n.name_kr = '원격교육',
    n.domain = 'SV';

MERGE (n:Concept {id: '교육'})
SET     n.name = '교육',
    n.name_kr = '교육',
    n.domain = 'SV';

MERGE (n:Concept {id: '교육망분리'})
SET     n.name = '교육망분리',
    n.name_kr = '교육망분리',
    n.domain = 'SV';

MERGE (n:Concept {id: '캐시서버'})
SET     n.name = '캐시서버',
    n.name_kr = '캐시서버',
    n.domain = 'SV';

MERGE (n:Concept {id: '만14세_미만'})
SET     n.name = '만14세 미만',
    n.name_kr = '만14세 미만',
    n.domain = 'SV';

MERGE (n:Concept {id: 'eaas'})
SET     n.name = 'EaaS',
    n.name_kr = 'EaaS',
    n.domain = 'SV',
    n.aliases = ['EaaS'];

MERGE (n:Concept {id: 'it인프라_측면'})
SET     n.name = 'IT인프라 측면',
    n.name_kr = 'IT인프라 측면',
    n.domain = 'SV',
    n.definition = '학교 행정망과 교육망 사용에 있어 트래픽 병목 발생 - 디지털 기기 낮은 보급률 - 교육청 서버관리 업체 위탁 상황에서 교육용 서버 용량 확대 즉각 수용 어려움 - 학부모의 디지털 활용 능력 격차로 인한 불평등 발생 - PC, 모바일 기기 등 기기 지원 예산 부족';

MERGE (n:Law {id: '제도적_측면'})
SET     n.name = '제도적 측면',
    n.name_kr = '제도적 측면',
    n.domain = 'SV',
    n.definition = '만 14세 미만자가 원격교육 서비스를 이용하려는 경우 법정대리인의 동의 및 확인 의무가 학생의 초기사용에 대한 접근장벽으로 작용 (정보통신망법 제22조 제3항, 제31조, 위치정보법 제25조 및 개인정보보호법 제22조 제6항) - 조손가정, 다문화가정 등 소외계층 초•중등 학생은 원격 서비스 회원가입 시 법정대리인 의 동의절차를 준수하기 어려움';

MERGE (n:Concept {id: '구축안'})
SET     n.name = '구축안',
    n.name_kr = '구축안',
    n.domain = 'SV';

MERGE (n:Concept {id: '교육망_분리'})
SET     n.name = '교육망 분리',
    n.name_kr = '교육망 분리',
    n.domain = 'SV',
    n.definition = '스마트 기기를 활용한 수업 증가로 기존 스쿨넷의 집선망은 트래픽을 감당하지 못해 저품질 서비스 제공으로 교사 및 학생 불만 발생 -학교 행정망은 기존 집선망을 사용하여 보안성을 유지하고 트래픽을 많이 차지하는 동영상 시청, 영상수업은 인터넷 서비스 회선을 사용';

MERGE (n:Concept {id: '캐시서버_구축'})
SET     n.name = '캐시서버 구축',
    n.name_kr = '캐시서버 구축',
    n.domain = 'SV',
    n.definition = '인터넷 서비스 회선 증설과 함께 대역폭 절감을 위한 캐시서버 구축 지원 - 학교 수업에서 사용하는 동영상 자료들은 학급별로 중복 사용하는 콘텐츠가 많으며, 디지털 교육으로 이러한 트래픽 수요가 증가할 것 - 트래픽 절감 효과와 고품질 서비스를 제공할 수 있도록 인터넷 서비스 회선에 동영상 캐시서버 구축 지원';

MERGE (n:Concept {id: '클라우드_전환'})
SET     n.name = '클라우드 전환',
    n.name_kr = '클라우드 전환',
    n.domain = 'SV',
    n.definition = 'EaaS(Education as a Service) 도입';

MERGE (n:Concept {id: '교육sw'})
SET     n.name = '교육SW',
    n.name_kr = '교육SW',
    n.domain = 'SV',
    n.definition = '데이터 활용 (맞춤형 교육)';

MERGE (n:Concept {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'SV',
    n.definition = 'EBS와 e학습터 동시접속자 증가';

MERGE (n:Concept {id: '학내망_불안정'})
SET     n.name = '학내망 불안정',
    n.name_kr = '학내망 불안정',
    n.domain = 'SV',
    n.definition = '학교 네트워크가 불안정해 교사가 학교에서 실시간 양방향 수업을 진행 불가';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = '영상회의 앱 보안';

MERGE (n:Concept {id: '디지털_개인정보_문제'})
SET     n.name = '디지털 개인정보 문제',
    n.name_kr = '디지털 개인정보 문제',
    n.domain = 'SV',
    n.definition = '교사 수업을 찍어서 SNS에 유포하는 행위, 개인정보 침해 우려 심각';

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'SV',
    n.definition = '평가 불안정';

MERGE (n:Concept {id: '학습_태도_관리'})
SET     n.name = '학습 태도 관리',
    n.name_kr = '학습 태도 관리',
    n.domain = 'SV',
    n.definition = '학생들이 접속만 하면 출석이 인정됨에 따라 영상만 틀어 놓고 다른 일을 해도 확인 및 관리할 방법 부재';

MERGE (n:Concept {id: '운용'})
SET     n.name = '운용',
    n.name_kr = '운용',
    n.domain = 'SV',
    n.definition = 'IT 교육 격차';

MERGE (n:Concept {id: '스마트폰_중독_우려'})
SET     n.name = '스마트폰 중독 우려',
    n.name_kr = '스마트폰 중독 우려',
    n.domain = 'SV',
    n.definition = '하루 적정 사용시간을 넘어서는 스마트 기기의 사용';

MERGE (n:Concept {id: '교육자료_유선'})
SET     n.name = '교육자료 유선',
    n.name_kr = '교육자료 유선',
    n.domain = 'SV',
    n.definition = '교육자료 수업 전날 유선 인터넷, 와이파이 이용해 사전 업로드';

MERGE (n:Concept {id: '학생_인식_제고'})
SET     n.name = '학생 인식 제고',
    n.name_kr = '학생 인식 제고',
    n.domain = 'SV',
    n.definition = '수업 중에 선생님이나 친구들을 촬영, 배포하지 않도록 지속 안내';

MERGE (n:Concept {id: '쌍방향_수업'})
SET     n.name = '쌍방향 수업',
    n.name_kr = '쌍방향 수업',
    n.domain = 'SV',
    n.definition = '실시간 쌍방향 중심의 수업을 진행하여 학생의 참여를 유도';

MERGE (n:Concept {id: '이용_시간_제어'})
SET     n.name = '이용 시간 제어',
    n.name_kr = '이용 시간 제어',
    n.domain = 'SV',
    n.definition = 'MDM, MCM 등의 자녀 이용시간 제어 관리 툴 이용';

// --- 관계 ---

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '교육'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '교육망분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '캐시서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '만14세_미만'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: 'eaas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: 'it인프라_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Law {id: '제도적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '구축안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '교육망_분리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '캐시서버_구축'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '클라우드_전환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '교육sw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '성능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '학내망_불안정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '디지털_개인정보_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '학습_태도_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '운용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '스마트폰_중독_우려'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '교육자료_유선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '학생_인식_제고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '쌍방향_수업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Concept {id: '이용_시간_제어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Document {id: 'SV_386.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '원격교육'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육망분리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐시서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '만14세_미만'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eaas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it인프라_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '제도적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구축안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육망_분리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '캐시서버_구축'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_전환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육sw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학내망_불안정'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_개인정보_문제'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학습_태도_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트폰_중독_우려'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '교육자료_유선'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '학생_인식_제고'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '쌍방향_수업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이용_시간_제어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_386.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_386.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_388: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_388'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_389: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_389'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_391: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_391'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_392: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_392'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_393: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_393'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_394: 스트리밍 게임
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_394'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스트리밍_게임'})
SET     n.name = '스트리밍 게임',
    n.name_kr = '스트리밍 게임',
    n.domain = 'SV';

MERGE (n:Concept {id: '게임'})
SET     n.name = '게임',
    n.name_kr = '게임',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_게임'})
SET     n.name = '클라우드 게임',
    n.name_kr = '클라우드 게임',
    n.domain = 'SV';

MERGE (n:Concept {id: '게임개발사'})
SET     n.name = '게임개발사',
    n.name_kr = '게임개발사',
    n.domain = 'SV';

MERGE (n:Concept {id: '사용자'})
SET     n.name = '사용자',
    n.name_kr = '사용자',
    n.domain = 'SV';

MERGE (n:Concept {id: '서비스제공자'})
SET     n.name = '서비스제공자',
    n.name_kr = '서비스제공자',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_게임_서버_플랫폼'})
SET     n.name = '클라우드 게임 서버 플랫폼',
    n.name_kr = '클라우드 게임 서버 플랫폼',
    n.domain = 'SV';

MERGE (n:Concept {id: '스트리밍_게임_서버'})
SET     n.name = '스트리밍 게임 서버',
    n.name_kr = '스트리밍 게임 서버',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_게임_플레이어'})
SET     n.name = '클라우드 게임 플레이어',
    n.name_kr = '클라우드 게임 플레이어',
    n.domain = 'SV';

MERGE (n:Concept {id: '게이트웨이_기술'})
SET     n.name = '게이트웨이 기술',
    n.name_kr = '게이트웨이 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '클라우드_서버_플랫폼_관리기술'})
SET     n.name = '클라우드 서버 플랫폼 관리기술',
    n.name_kr = '클라우드 서버 플랫폼 관리기술',
    n.domain = 'SV';

MERGE (n:Concept {id: 'av_인코딩_기술'})
SET     n.name = 'AV 인코딩 기술',
    n.name_kr = 'AV 인코딩 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '실시간_캡쳐_기술'})
SET     n.name = '실시간 캡쳐 기술',
    n.name_kr = '실시간 캡쳐 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '새로운_성장기회'})
SET     n.name = '새로운 성장기회',
    n.name_kr = '새로운 성장기회',
    n.domain = 'SV',
    n.definition = '안정적, 고도화된 네트워크 인프라 활용';

MERGE (n:Concept {id: '경쟁_심화'})
SET     n.name = '경쟁 심화',
    n.name_kr = '경쟁 심화',
    n.domain = 'SV',
    n.definition = '이종 산업 플레이어 등장';

// --- 관계 ---

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '게임'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '클라우드_게임'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '게임개발사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '서비스제공자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '클라우드_게임_서버_플랫폼'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '스트리밍_게임_서버'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '클라우드_게임_플레이어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '게이트웨이_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '클라우드_서버_플랫폼_관리기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: 'av_인코딩_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '실시간_캡쳐_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '게임개발사'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '게임개발사'})
MERGE (b:Concept {id: '서비스제공자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '게임개발사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Concept {id: '서비스제공자'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '서비스제공자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '새로운_성장기회'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Concept {id: '경쟁_심화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Document {id: 'SV_394'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스트리밍_게임'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게임'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_게임'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게임개발사'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스제공자'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_게임_서버_플랫폼'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스트리밍_게임_서버'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_게임_플레이어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게이트웨이_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_서버_플랫폼_관리기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'av_인코딩_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_캡쳐_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '새로운_성장기회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경쟁_심화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_396: IT 에코시스템(IT Ecosystem)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_396'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'it_ecosystem'})
SET     n.name = 'IT Ecosystem',
    n.name_kr = 'IT 에코시스템',
    n.domain = 'SV',
    n.aliases = ['IT Ecosystem', 'IT 에코시스템'];

MERGE (n:Concept {id: '정부정책'})
SET     n.name = '정부정책',
    n.name_kr = '정부정책',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'it_ecosystem'})
MERGE (b:Concept {id: '정부정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'it_ecosystem'})
MERGE (b:Document {id: 'SV_396'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'it_ecosystem'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부정책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_400: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_400'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_401: 기술 수명 주기
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_401'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '기술_수명_주기'})
SET     n.name = '기술 수명 주기',
    n.name_kr = '기술 수명 주기',
    n.domain = 'SV';

MERGE (n:Concept {id: '정책'})
SET     n.name = '정책',
    n.name_kr = '정책',
    n.domain = 'SV';

MERGE (n:Concept {id: 's_curve'})
SET     n.name = 'S-Curve',
    n.name_kr = 'S-Curve',
    n.domain = 'SV',
    n.aliases = ['S-Curve'];

MERGE (n:Concept {id: '기술수용주기_이론'})
SET     n.name = '기술수용주기 이론',
    n.name_kr = '기술수용주기 이론',
    n.domain = 'SV';

MERGE (n:Concept {id: 'gartner\'s_hype_cycle'})
SET     n.name = 'Gartner\'s Hype Cycle',
    n.name_kr = 'Gartner\'s Hype Cycle',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Concept {id: '정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Concept {id: 's_curve'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Concept {id: '기술수용주기_이론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Concept {id: 'gartner\'s_hype_cycle'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Document {id: 'SV_401'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '기술_수명_주기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 's_curve'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술수용주기_이론'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gartner\'s_hype_cycle'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_402: TRL(Technology Readiness Level)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_402'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'technology_readiness_level'})
SET     n.name = 'Technology Readiness Level',
    n.name_kr = 'TRL',
    n.domain = 'SV',
    n.aliases = ['Technology Readiness Level', 'TRL'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: 'trl'})
SET     n.name = 'TRL',
    n.name_kr = 'TRL',
    n.domain = 'SV',
    n.aliases = ['TRL'];

// --- 관계 ---

MERGE (a:Concept {id: 'trl'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'technology_readiness_level'})
MERGE (b:Document {id: 'SV_402'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'technology_readiness_level'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'trl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_403: 마세라티 문제(Maserati Problem)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_403'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'maserati_problem'})
SET     n.name = 'Maserati Problem',
    n.name_kr = '마세라티 문제',
    n.domain = 'SV',
    n.aliases = ['Maserati Problem', '마세라티 문제'];

MERGE (n:Concept {id: '디지털서비스'})
SET     n.name = '디지털서비스',
    n.name_kr = '디지털서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '출제_예상_토픽'})
SET     n.name = '출제 예상 토픽',
    n.name_kr = '출제 예상 토픽',
    n.domain = 'SV';

MERGE (n:Concept {id: '기술/트랜드_과몰입'})
SET     n.name = '기술/트랜드 과몰입',
    n.name_kr = '기술/트랜드 과몰입',
    n.domain = 'SV';

MERGE (n:Concept {id: '스타트업'})
SET     n.name = '스타트업',
    n.name_kr = '스타트업',
    n.domain = 'SV';

MERGE (n:Concept {id: 'mvp'})
SET     n.name = 'MVP',
    n.name_kr = 'MVP',
    n.domain = 'SV',
    n.aliases = ['MVP'];

MERGE (n:Concept {id: '애자일'})
SET     n.name = '애자일',
    n.name_kr = '애자일',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: '출제_예상_토픽'})
MERGE (b:Concept {id: '디지털서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Concept {id: '출제_예상_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Concept {id: '기술/트랜드_과몰입'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Concept {id: '스타트업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Concept {id: 'mvp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Concept {id: '애자일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Document {id: 'SV_403'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'maserati_problem'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출제_예상_토픽'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술/트랜드_과몰입'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스타트업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mvp'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애자일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_404.1: 디지털 디바이드(Digital Divide)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_404.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_divide'})
SET     n.name = 'Digital Divide',
    n.name_kr = '디지털 디바이드',
    n.domain = 'SV',
    n.aliases = ['Digital Divide', '디지털 디바이드'];

MERGE (n:Concept {id: '플랫폼_기술'})
SET     n.name = '플랫폼 기술',
    n.name_kr = '플랫폼 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보기기_접근성'})
SET     n.name = '정보기기 접근성',
    n.name_kr = '정보기기 접근성',
    n.domain = 'SV';

MERGE (n:Concept {id: '소외계층_정보격차'})
SET     n.name = '소외계층 정보격차',
    n.name_kr = '소외계층 정보격차',
    n.domain = 'SV';

MERGE (n:Concept {id: '지역간_정보격차'})
SET     n.name = '지역간 정보격차',
    n.name_kr = '지역간 정보격차',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털포용'})
SET     n.name = '디지털포용',
    n.name_kr = '디지털포용',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보'})
SET     n.name = '정보',
    n.name_kr = '정보',
    n.domain = 'SV',
    n.definition = '정보의 불균형 문제';

MERGE (n:Concept {id: '사회'})
SET     n.name = '사회',
    n.name_kr = '사회',
    n.domain = 'SV',
    n.definition = '디지털 취약 계층 발생';

MERGE (n:Concept {id: '환경'})
SET     n.name = '환경',
    n.name_kr = '환경',
    n.domain = 'SV',
    n.definition = '고령층, 장애인의 디지털 기기 활용 취약';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SV',
    n.definition = '프라이버시 문제';

MERGE (n:Concept {id: '개인'})
SET     n.name = '개인',
    n.name_kr = '개인',
    n.domain = 'SV',
    n.definition = '정치이념･가치관 격차';

MERGE (n:Concept {id: '정치참여･영향력_격차'})
SET     n.name = '정치참여･영향력 격차',
    n.name_kr = '정치참여･영향력 격차',
    n.domain = 'SV',
    n.definition = '가상세계의 확장으로 거리시위대가 종말하고, 가상세계에서 정치적 견해를 표현하고 특정 정치인을 지지하는 디지털 군중의 영향력이 증가함에 따라, 가상세계에 접속하여 정치에 참여할 수 있는 자와 그렇지 못한 자 간에 정치참여 격차 심화';

MERGE (n:Concept {id: '국가'})
SET     n.name = '국가',
    n.name_kr = '국가',
    n.domain = 'SV',
    n.definition = '국정운영능력 격차';

MERGE (n:Concept {id: '거버넌스_격차'})
SET     n.name = '거버넌스 격차',
    n.name_kr = '거버넌스 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술 활용능력 수준에 따라 네트워크를 구축하여 정책을 개발하고 이슈를 해결하는 거버넌스 국정운영 방식에서 국가 간 또는 중앙정부와 지방정부 간 격차 발생';

MERGE (n:Concept {id: '영토_개척능력의_격차'})
SET     n.name = '영토 개척능력의 격차',
    n.name_kr = '영토 개척능력의 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 우주진출, 해저탐사, 디지털 영토 등 새로운 영역을 개척하는 국가와 그렇지 못한 국가 간 영토 격차 심화';

MERGE (n:Concept {id: '디지털_기술_공급망_확보_격차'})
SET     n.name = '디지털 기술 공급망 확보 격차',
    n.name_kr = '디지털 기술 공급망 확보 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 융합하여 혁신적인 성과를 창출할 역량을 보유한 국가와 그렇지 못한 국가 간 글로벌 디지털 공급망을 주도적으로 확보할 수 있는 기술 외교력 수준 차이 발생';

MERGE (n:Concept {id: '디지털_투자_격차'})
SET     n.name = '디지털 투자 격차',
    n.name_kr = '디지털 투자 격차',
    n.domain = 'SV',
    n.definition = '투자예측 알고리즘을 직접 설계 또는 활용하는 역량을 갖춘 개인과 그렇지 못한 개인 간 투자 전략에서 차이 발생';

MERGE (n:Concept {id: '디지털_자산_격차'})
SET     n.name = '디지털 자산 격차',
    n.name_kr = '디지털 자산 격차',
    n.domain = 'SV',
    n.definition = '마이데이터, NFT 등 새롭게 등장할 다양한 디지털 자산을 능숙하게 거래할 수 있는 개인과 그렇지 못한 개인 간 디지털 자산 격차 발생';

MERGE (n:Concept {id: '일자리_격차'})
SET     n.name = '일자리 격차',
    n.name_kr = '일자리 격차',
    n.domain = 'SV',
    n.definition = 'AI 등 첨단기술 활용능력을 갖춘 개인(고급 디지털 인재)과 기술이 시키는 일을 하는 개인(프레카리아트) 간 고용의 질적 수준에서 격차 발생';

MERGE (n:Metric {id: '직무능력_격차'})
SET     n.name = '직무능력 격차',
    n.name_kr = '직무능력 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 업무를 처리하는 개인과 그렇지 못한 개인 간 일의 처리속도, 양, 정확도에서 차이 확대';

MERGE (n:Concept {id: '기업'})
SET     n.name = '기업',
    n.name_kr = '기업',
    n.domain = 'SV',
    n.definition = '초개인화 서비스 제공 격차';

MERGE (n:Concept {id: '디지털_기반_신제품･_서비스_개발_격차'})
SET     n.name = '디지털 기반 신제품･ 서비스 개발 격차',
    n.name_kr = '디지털 기반 신제품･ 서비스 개발 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술의 성능과 활용수준의 차이가 기업간 제품･서비스 개발 속도의 차이를 유발';

MERGE (n:Concept {id: '데이터_기반_기회포착_격차'})
SET     n.name = '데이터 기반 기회포착 격차',
    n.name_kr = '데이터 기반 기회포착 격차',
    n.domain = 'SV',
    n.definition = 'AI, 메타버스 등 디지털 기술을 활용하여 새로운 사업기회를 신속하고 정확하게 발견할 수 있는가에 따라 기업 간 기회포착 격차 심화';

MERGE (n:Concept {id: '자동화_수준에_따른_생산효율성_격차'})
SET     n.name = '자동화 수준에 따른 생산효율성 격차',
    n.name_kr = '자동화 수준에 따른 생산효율성 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술(자동화 등)을 업무 프로세스, 공급체인, 기업운영 측면에 접목하여 활용할 수 있는가에 따라 기업 간 생산효율 격차 심화';

MERGE (n:Concept {id: '시장지배력_격차'})
SET     n.name = '시장지배력 격차',
    n.name_kr = '시장지배력 격차',
    n.domain = 'SV',
    n.definition = '자동추천 및 데이터 분석능력으로 디지털 역량을 강화한 플랫폼 기업의 영향력 확대는 전통적 기업의 플랫폼 기업에 대한 종속 수준을 강화하며 시장지배력과 수익성 측면에서 격차를 확대할 것';

MERGE (n:Concept {id: '원격화_수준에_따른_생산성_격차'})
SET     n.name = '원격화 수준에 따른 생산성 격차',
    n.name_kr = '원격화 수준에 따른 생산성 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 비대면 상황에서도 업무를 수행할 수 있는 기업과 그렇지 못한 기업 간 생산성 격차 확대';

MERGE (n:Concept {id: '시장_변화_대응_능력'})
SET     n.name = '시장 변화 대응 능력',
    n.name_kr = '시장 변화 대응 능력',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 시장의 변화와 고객의 니즈를 충분히 이해하고 대응할 역량을 보유한 기업과 그렇지 못한 기업 간 격차 심화';

MERGE (n:Concept {id: '고객_범위_격차'})
SET     n.name = '고객 범위 격차',
    n.name_kr = '고객 범위 격차',
    n.domain = 'SV',
    n.definition = '인터넷, 모바일, 메타버스 플랫폼을 이용하여 고객 접근성을 확보하는 기업과 그렇지 못한 기업 간 고객의 범위에서 격차 발생';

MERGE (n:Concept {id: '디지털_자산_창출_격차'})
SET     n.name = '디지털 자산 창출 격차',
    n.name_kr = '디지털 자산 창출 격차',
    n.domain = 'SV',
    n.definition = '디지털 세계에서 새로운 니즈를 발굴하고 이를 충족하는 서비스를 제공할 역량을 보유한 기업과 그렇지 못한 기업 간 격차 발생';

MERGE (n:Concept {id: '일상생활_디지털_활용_격차'})
SET     n.name = '일상생활 디지털 활용 격차',
    n.name_kr = '일상생활 디지털 활용 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술(예: 로봇프로세스자동화(RPA) 등)을 통해 일상의 반복적인 일(예: 쓰레기 수거, 세금납부, 청소 등)을 자동화할 수 있는가에 따라 개인 간 생활방식의 격차 발생';

MERGE (n:Concept {id: '활동범위_격차'})
SET     n.name = '활동범위 격차',
    n.name_kr = '활동범위 격차',
    n.domain = 'SV',
    n.definition = '메타버스, AR/VR 등 신기술이 제공하는 가상공간에서 업무, 여가 등을 누릴 수 있는가에 따라 개인 간 활동 범위의 격차 발생';

MERGE (n:Concept {id: '인간관계_폭과_질의_격차'})
SET     n.name = '인간관계 폭과 질의 격차',
    n.name_kr = '인간관계 폭과 질의 격차',
    n.domain = 'SV',
    n.definition = '메타버스 가상공간에서 디지털 신분을 취득하고 새로운 자아를 형성하여 활동할 수 있는가에 인간관계의 폭과 깊이에서 개인 간 차이가 확연하게 발생';

MERGE (n:Concept {id: '디지털_신분격차'})
SET     n.name = '디지털 신분격차',
    n.name_kr = '디지털 신분격차',
    n.domain = 'SV',
    n.definition = '디지털 기술 전문성을 보유한 개인/집단이 디지털 세계에서 공동체의 의사결정에 결정적인 영향력을 행사하는 테크노크라시 사회가 도래하며, 기술 전문성 수준에 따라 개인 간 신분 격차가 극대화될 것';

MERGE (n:Concept {id: '디지털_활용에_따른_학력격차'})
SET     n.name = '디지털 활용에 따른 학력격차',
    n.name_kr = '디지털 활용에 따른 학력격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 이용해 다양한 교육의 기회를 잘 활용하는 개인과 그렇지 못한 개인 간에 학력 수준에서 격차 발생';

MERGE (n:Concept {id: '건강･수명격차'})
SET     n.name = '건강･수명격차',
    n.name_kr = '건강･수명격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 이용하여 신체 및 정신건강을 관리하고 육체적 한계를 극복할 수 있는가에 따라 개인 간 건강 및 수명 격차 발생';

MERGE (n:Concept {id: '행정서비스_격차'})
SET     n.name = '행정서비스 격차',
    n.name_kr = '행정서비스 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 행정서비스를 단방향 중심에서 양방향 중심으로 전환한 국가와 그렇지 못한 국가 간 행정서비스 양과 질의 격차 확대';

MERGE (n:Concept {id: '디지털_모빌리티_생태계_격차'})
SET     n.name = '디지털 모빌리티 생태계 격차',
    n.name_kr = '디지털 모빌리티 생태계 격차',
    n.domain = 'SV',
    n.definition = '공유차 서비스, 자율주행차, UMV(Ultimate Mobility Vehicle) 등을 포함하여 디지털 모빌리티 생태계가 활성화된 국가와 그렇지 못한 국가 간에 이동의 신속성과 편리성 측면에서 격차 발생';

MERGE (n:Concept {id: '보건･의료_서비스_격차'})
SET     n.name = '보건･의료 서비스 격차',
    n.name_kr = '보건･의료 서비스 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 보건･의료 서비스의 질과 양을 높인 국가와 그렇지 못한 국가 간 격차';

MERGE (n:Concept {id: '지식생산_격차'})
SET     n.name = '지식생산 격차',
    n.name_kr = '지식생산 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 논문, 특허, 콘텐츠 등의 지식을 생산하는 개인과 그렇지 못한 개인 간 격차가 확대될 것';

MERGE (n:Concept {id: '디지털_기반_특허_통과_격차'})
SET     n.name = '디지털 기반 특허 통과 격차',
    n.name_kr = '디지털 기반 특허 통과 격차',
    n.domain = 'SV',
    n.definition = '신기술에 대한 이해도와 디지털 활용 능력에 따라 특허통과 비율에서 격차 발생';

MERGE (n:Concept {id: '디지털_자산_방어능력'})
SET     n.name = '디지털 자산 방어능력',
    n.name_kr = '디지털 자산 방어능력',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 기업의 자산과 기밀정보를 보호하고 해킹의 공격으로부터 기업 자산을 방어할 수 있는 기업과 그렇지 못한 기업 간 격차';

MERGE (n:Concept {id: '글로벌_정보지배력_격차'})
SET     n.name = '글로벌 정보지배력 격차',
    n.name_kr = '글로벌 정보지배력 격차',
    n.domain = 'SV',
    n.definition = '국가 간 양자암호통신, 5G와 같은 디지털 기술의 수준 차이는 글로벌 차원의 데이터 수집 및 해석 능력의 차이로 이어질 것';

MERGE (n:Concept {id: '사이버안보_기술력_격차'})
SET     n.name = '사이버안보 기술력 격차',
    n.name_kr = '사이버안보 기술력 격차',
    n.domain = 'SV',
    n.definition = '국가의 핵심 인프라와 자산을 공격하는 고도의 사이버 기술을 방어할 수 있는 국가와 그렇지 못한 국가 간 사이버안보 격차 심화';

MERGE (n:Concept {id: '알고리즘_기반_국방력_격차'})
SET     n.name = '알고리즘 기반 국방력 격차',
    n.name_kr = '알고리즘 기반 국방력 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 융합하여 전통적 무기체계를 넘어서는 알고리즘 기반의 국방 과학기술을 보유한 국가와 그렇지 못한 국가 간 국방력 격차 심화';

MERGE (n:Concept {id: '디지털_인재_확보_격차'})
SET     n.name = '디지털 인재 확보 격차',
    n.name_kr = '디지털 인재 확보 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하고 응용할 여건이 갖추어진 국가와 그렇지 못한 국가 간에 디지털 고급 인재 유치 측면에서 격차 발생';

MERGE (n:Concept {id: '탄소_격차'})
SET     n.name = '탄소 격차',
    n.name_kr = '탄소 격차',
    n.domain = 'SV',
    n.definition = '디지털 경제 기반 국가와 전통 제조업 기반 국가 간의 탄소배출량 격차가 벌어지고, 탄소배출권 규제의 강화는 국가 간 종속관계를 심화할 것';

MERGE (n:Concept {id: '순환경제_격차'})
SET     n.name = '순환경제 격차',
    n.name_kr = '순환경제 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술로 환경 상태를 모니터링하고 자원과 에너지를 재활용하는 수준을 높인 나라의 환경이슈 대응 및 순환경제 시스템 상 격차 발생';

MERGE (n:Concept {id: '위기대응_격차'})
SET     n.name = '위기대응 격차',
    n.name_kr = '위기대응 격차',
    n.domain = 'SV',
    n.definition = '디지털 기술을 활용하여 자연재해를 예측, 관리, 대응할 수 있는 시스템을 구축한 나라와 그렇지 못한 나라 간 위기대응 격차 발생';

MERGE (n:Concept {id: '에너지_효율_격차'})
SET     n.name = '에너지 효율 격차',
    n.name_kr = '에너지 효율 격차',
    n.domain = 'SV',
    n.definition = '스마트그리드 인프라를 적시에 저렴한 비용으로 구축한 국가와 그렇지 못한 국가 간 에너지 효율 격차 심화';

MERGE (n:Concept {id: '발생원인'})
SET     n.name = '발생원인',
    n.name_kr = '발생원인',
    n.domain = 'SV';

MERGE (n:Concept {id: '설_명'})
SET     n.name = '설 명',
    n.name_kr = '설 명',
    n.domain = 'SV';

MERGE (n:Concept {id: '경제적_측면'})
SET     n.name = '경제적 측면',
    n.name_kr = '경제적 측면',
    n.domain = 'SV',
    n.definition = '소외계층 보조금 확대';

MERGE (n:Concept {id: '인프라_측면'})
SET     n.name = '인프라 측면',
    n.name_kr = '인프라 측면',
    n.domain = 'SV',
    n.definition = '디지털 인프라의 균형적인 구축';

MERGE (n:Concept {id: '서비스_측면'})
SET     n.name = '서비스 측면',
    n.name_kr = '서비스 측면',
    n.domain = 'SV',
    n.definition = '쉬운 디지털 사용을 위한 컨텐츠 확대 개발';

// --- 관계 ---

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '플랫폼_기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '정보기기_접근성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '소외계층_정보격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '지역간_정보격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털포용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '사회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '환경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '개인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '정치참여･영향력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '국가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '거버넌스_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '영토_개척능력의_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_기술_공급망_확보_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_투자_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_자산_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '일자리_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Metric {id: '직무능력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '기업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_기반_신제품･_서비스_개발_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '데이터_기반_기회포착_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '자동화_수준에_따른_생산효율성_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '시장지배력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '원격화_수준에_따른_생산성_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '시장_변화_대응_능력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '고객_범위_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_자산_창출_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '일상생활_디지털_활용_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '활동범위_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '인간관계_폭과_질의_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_신분격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_활용에_따른_학력격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '건강･수명격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '행정서비스_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_모빌리티_생태계_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '보건･의료_서비스_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '지식생산_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_기반_특허_통과_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_자산_방어능력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '글로벌_정보지배력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '사이버안보_기술력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '알고리즘_기반_국방력_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '디지털_인재_확보_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '탄소_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '순환경제_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '위기대응_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '에너지_효율_격차'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Concept {id: '설_명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '발생원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '설_명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '경제적_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '인프라_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Concept {id: '서비스_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Document {id: 'SV_404.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_divide'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플랫폼_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보기기_접근성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소외계층_정보격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지역간_정보격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털포용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정치참여･영향력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거버넌스_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영토_개척능력의_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_기술_공급망_확보_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_투자_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_자산_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일자리_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '직무능력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_기반_신제품･_서비스_개발_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_기반_기회포착_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동화_수준에_따른_생산효율성_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시장지배력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격화_수준에_따른_생산성_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시장_변화_대응_능력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_범위_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_자산_창출_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일상생활_디지털_활용_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활동범위_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인간관계_폭과_질의_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_신분격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_활용에_따른_학력격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '건강･수명격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '행정서비스_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_모빌리티_생태계_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보건･의료_서비스_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지식생산_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_기반_특허_통과_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_자산_방어능력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌_정보지배력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버안보_기술력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘_기반_국방력_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_인재_확보_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '탄소_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '순환경제_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위기대응_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에너지_효율_격차'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생원인'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설_명'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경제적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인프라_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_404.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_404.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_404.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_404.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_404.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_404.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_405: Gartner 10대 전략기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_405'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'gartner_10대_전략기술'})
SET     n.name = 'Gartner 10대 전략기술',
    n.name_kr = 'Gartner 10대 전략기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '정부/정책'})
SET     n.name = '정부/정책',
    n.name_kr = '정부/정책',
    n.domain = 'SV';

MERGE (n:Concept {id: 'total_experience'})
SET     n.name = 'Total Experience',
    n.name_kr = 'Total Experience',
    n.domain = 'SV',
    n.aliases = ['Total Experience'];

MERGE (n:Concept {id: 'data_fabric'})
SET     n.name = 'Data Fabric',
    n.name_kr = 'Data Fabric',
    n.domain = 'SV',
    n.aliases = ['Data Fabric'];

MERGE (n:Concept {id: 'generative_ai'})
SET     n.name = 'Generative AI',
    n.name_kr = 'Generative AI',
    n.domain = 'SV',
    n.aliases = ['Generative AI'];

MERGE (n:Concept {id: '가트너_2022년_전략_기술'})
SET     n.name = '가트너 2022년 전략 기술',
    n.name_kr = '가트너 2022년 전략 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '가트너_2023년_전략_기술'})
SET     n.name = '가트너 2023년 전략 기술',
    n.name_kr = '가트너 2023년 전략 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '전략_기술'})
SET     n.name = '전략 기술',
    n.name_kr = '전략 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '주요_내용'})
SET     n.name = '주요 내용',
    n.name_kr = '주요 내용',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '정부/정책'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: 'total_experience'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: 'data_fabric'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: 'generative_ai'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '가트너_2022년_전략_기술'})
MERGE (b:Concept {id: '가트너_2023년_전략_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '가트너_2022년_전략_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '가트너_2023년_전략_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전략_기술'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '전략_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전략_기술'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '전략_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Concept {id: '주요_내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Document {id: 'SV_405'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부/정책'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'total_experience'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'data_fabric'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'generative_ai'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가트너_2022년_전략_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가트너_2023년_전략_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_내용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_406: 자율 사물(Autonomous Things)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_406'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'autonomous_things'})
SET     n.name = 'Autonomous Things',
    n.name_kr = '자율 사물',
    n.domain = 'SV',
    n.aliases = ['Autonomous Things', '자율 사물'];

MERGE (n:Concept {id: 'gartner_10대_전략_기술'})
SET     n.name = 'Gartner 10대 전략 기술',
    n.name_kr = 'Gartner 10대 전략 기술',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'autonomous_things'})
MERGE (b:Concept {id: 'gartner_10대_전략_기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'autonomous_things'})
MERGE (b:Document {id: 'SV_406'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'autonomous_things'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_407: 전문성의 민주화(Democratization of Expertise)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_407'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'democratization_of_expertise'})
SET     n.name = 'Democratization of Expertise',
    n.name_kr = '전문성의 민주화',
    n.domain = 'SV',
    n.aliases = ['Democratization of Expertise', '전문성의 민주화'];

MERGE (n:Concept {id: 'gartner_10대_전략_기술'})
SET     n.name = 'Gartner 10대 전략 기술',
    n.name_kr = 'Gartner 10대 전략 기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '데이터분석의_민주화'})
SET     n.name = '데이터분석의 민주화',
    n.name_kr = '데이터분석의 민주화',
    n.domain = 'SV';

MERGE (n:Concept {id: '개발의_민주화'})
SET     n.name = '개발의 민주화',
    n.name_kr = '개발의 민주화',
    n.domain = 'SV';

MERGE (n:Concept {id: '설계의_민주화'})
SET     n.name = '설계의 민주화',
    n.name_kr = '설계의 민주화',
    n.domain = 'SV';

MERGE (n:Concept {id: 'it_전문지식의_민주화'})
SET     n.name = 'IT 전문지식의 민주화',
    n.name_kr = 'IT 전문지식의 민주화',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Concept {id: 'gartner_10대_전략_기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Concept {id: '데이터분석의_민주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Concept {id: '개발의_민주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Concept {id: '설계의_민주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Concept {id: 'it_전문지식의_민주화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Document {id: 'SV_407'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'democratization_of_expertise'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gartner_10대_전략_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터분석의_민주화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발의_민주화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계의_민주화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_전문지식의_민주화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_408.1: IoB(Internet of Behavior)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_408.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'internet_of_behavior'})
SET     n.name = 'Internet of Behavior',
    n.name_kr = 'IoB',
    n.domain = 'SV',
    n.aliases = ['Internet of Behavior', 'IoB'];

MERGE (n:Concept {id: '가트너10대전략기술'})
SET     n.name = '가트너10대전략기술',
    n.name_kr = '가트너10대전략기술',
    n.domain = 'SV';

MERGE (n:Concept {id: '기술적_배격'})
SET     n.name = '기술적 배격',
    n.name_kr = '기술적 배격',
    n.domain = 'SV',
    n.definition = 'IoT의 확대';

MERGE (n:Concept {id: '인터넷_확대'})
SET     n.name = '인터넷 확대',
    n.name_kr = '인터넷 확대',
    n.domain = 'SV',
    n.definition = '네트워크 속도의 안정화에 따른 데이터 수집 가속화';

MERGE (n:Concept {id: '핀테크_등_활용_확대'})
SET     n.name = '핀테크 등 활용 확대',
    n.name_kr = '핀테크 등 활용 확대',
    n.domain = 'SV',
    n.definition = '핀테크 활성화 등에 따라 수집된 데이터의 분석 허용 및 활성화';

MERGE (n:Concept {id: '사회적_배격'})
SET     n.name = '사회적 배격',
    n.name_kr = '사회적 배격',
    n.domain = 'SV',
    n.definition = '개인정보 보호 인지 확대';

MERGE (n:Concept {id: '데이터_활용_확대'})
SET     n.name = '데이터 활용 확대',
    n.name_kr = '데이터 활용 확대',
    n.domain = 'SV',
    n.definition = '디지털 먼지가 모여 빅데이터가 됨에 따라 활용에 대한 관심 지속';

MERGE (n:Concept {id: '정보의_확대'})
SET     n.name = '정보의 확대',
    n.name_kr = '정보의 확대',
    n.domain = 'SV',
    n.definition = '데이터 가공을 통한 정보의 사고 팜 등의 거래 확대';

MERGE (n:Concept {id: 'digital_dust'})
SET     n.name = 'digital dust',
    n.name_kr = 'digital dust',
    n.domain = 'SV',
    n.definition = '데이터',
    n.aliases = ['digital dust'];

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'SV',
    n.definition = 'IoT';

MERGE (n:Concept {id: '빅데이터_수집/저장_기술'})
SET     n.name = '빅데이터 수집/저장 기술',
    n.name_kr = '빅데이터 수집/저장 기술',
    n.domain = 'SV',
    n.definition = '크롤링 엔진, 로그 수집기, Open API 활용 - HDFS, Nosql 등 비정형 데이터 저장';

MERGE (n:Concept {id: '데이터_처리'})
SET     n.name = '데이터 처리',
    n.name_kr = '데이터 처리',
    n.domain = 'SV',
    n.definition = '빅데이터 처리 기술';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'SV',
    n.definition = '통계분석';

MERGE (n:Concept {id: '데이터마이닝'})
SET     n.name = '데이터마이닝',
    n.name_kr = '데이터마이닝',
    n.domain = 'SV',
    n.definition = '분류, 예측, 시계열분석, 군집화, 연관규칙 등';

MERGE (n:Concept {id: 'iob'})
SET     n.name = 'IoB',
    n.name_kr = 'IoB',
    n.domain = 'SV',
    n.aliases = ['IoB'];

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IoT',
    n.name_kr = 'IoT',
    n.domain = 'SV',
    n.aliases = ['IoT'];

MERGE (n:Concept {id: '긍정적_측면'})
SET     n.name = '긍정적 측면',
    n.name_kr = '긍정적 측면',
    n.domain = 'SV',
    n.definition = '인간의 행동 예측';

MERGE (n:Concept {id: '빅데이터_활용분야_증가'})
SET     n.name = '빅데이터 활용분야 증가',
    n.name_kr = '빅데이터 활용분야 증가',
    n.domain = 'SV',
    n.definition = '상용 고객데이터에서 SNS까지 다양한 소스의 데이터 수집 - 정보의 양이 계속 증가하며 분석기술이 보다 정교해짐 - 단순 데이터 수집기술에서 분석 및 활용으로 기술 확대';

MERGE (n:Concept {id: '합리적_판단에_활용'})
SET     n.name = '합리적 판단에 활용',
    n.name_kr = '합리적 판단에 활용',
    n.domain = 'SV',
    n.definition = '데이터 분석결과를 통해 소비, 구매 등 합리적 판단 가능 - 데이터에 기초한 기업의 위험예측 등 위험관리에 활용';

MERGE (n:Concept {id: 'compliance_모니터링'})
SET     n.name = 'Compliance 모니터링',
    n.name_kr = 'Compliance 모니터링',
    n.domain = 'SV',
    n.definition = '공공 또는 민간 조직의 컴플라이언스에 대한 모니터링 자동화 - 코로나19 등 팬데믹 시대에 관련 규정 준수 여부 확인';

MERGE (n:Concept {id: '부정적_측면'})
SET     n.name = '부정적 측면',
    n.name_kr = '부정적 측면',
    n.domain = 'SV',
    n.definition = '프라이버시 노출';

MERGE (n:Law {id: '기존_법률과의_충돌'})
SET     n.name = '기존 법률과의 충돌',
    n.name_kr = '기존 법률과의 충돌',
    n.domain = 'SV',
    n.definition = '개인정보보호법, 위치정보보호법 등 기존 법률과의 충돌 우려 - 관련 입법을 위해서는 사회적인 합의 등 필요';

MERGE (n:Concept {id: '범죄_활용_가능성'})
SET     n.name = '범죄 활용 가능성',
    n.name_kr = '범죄 활용 가능성',
    n.domain = 'SV',
    n.definition = '수집되고 분석된 데이터를 악의적으로 범죄에 활용 가능';

MERGE (n:Concept {id: '지배력_강화_우려'})
SET     n.name = '지배력 강화 우려',
    n.name_kr = '지배력 강화 우려',
    n.domain = 'SV',
    n.definition = '기업, 정부 등 빅브라더에 의한 일반인의 지배력 강화 우려 - 데이터 부정적인 활용을 통한 권력화 가능성';

// --- 관계 ---

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '가트너10대전략기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '기술적_배격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '인터넷_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '핀테크_등_활용_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '사회적_배격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '데이터_활용_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '정보의_확대'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'digital_dust'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '빅데이터_수집/저장_기술'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '데이터_처리'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '데이터마이닝'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'iob'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'iob'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'iob'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'iob'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '긍정적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '빅데이터_활용분야_증가'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '합리적_판단에_활용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: 'compliance_모니터링'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '부정적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Law {id: '기존_법률과의_충돌'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '범죄_활용_가능성'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Concept {id: '지배력_강화_우려'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Document {id: 'SV_408.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'internet_of_behavior'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가트너10대전략기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_배격'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인터넷_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핀테크_등_활용_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사회적_배격'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_활용_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보의_확대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'digital_dust'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_수집/저장_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_처리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터마이닝'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iob'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긍정적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_활용분야_증가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '합리적_판단에_활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'compliance_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정적_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '기존_법률과의_충돌'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '범죄_활용_가능성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지배력_강화_우려'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_408.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_408.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_408.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_408.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_408.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_408.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_409: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_409'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_410: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_410'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_411: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_411'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_412: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_412'})
SET doc.domain = 'SV';

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 254개
// 관계: 525개
// ================================================================