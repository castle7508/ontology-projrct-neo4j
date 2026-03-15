// ================================================================
// SE 도메인 (SE_001 ~ SE_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_001: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_001'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_002: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_002'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_003: 혼돈과 확산
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_003'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '혼돈과_확산'})
SET     n.name = '혼돈과 확산',
    n.name_kr = '혼돈과 확산',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'confusion'})
SET     n.name = 'Confusion',
    n.name_kr = '대체',
    n.domain = 'SE',
    n.aliases = ['Confusion', '대체'];

MERGE (n:Concept {id: 'diffusion'})
SET     n.name = 'Diffusion',
    n.name_kr = '치환',
    n.domain = 'SE',
    n.aliases = ['Diffusion', '치환'];

// --- 관계 ---

MERGE (a:Concept {id: '혼돈과_확산'})
MERGE (b:Concept {id: 'confusion'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '혼돈과_확산'})
MERGE (b:Concept {id: 'diffusion'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '혼돈과_확산'})
MERGE (b:Document {id: 'SE_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '혼돈과_확산'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'confusion'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'diffusion'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_004: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_004'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_005: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_005'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_006: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_006'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_007'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_008: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_008'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_009: DES ( Data Encryption Standard )
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_009'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'des'})
SET     n.name = 'DES',
    n.name_kr = 'Data Encryption Standard',
    n.domain = 'SE',
    n.aliases = ['DES', 'Data Encryption Standard'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '56bit의_키'})
SET     n.name = '56bit의 키',
    n.name_kr = '56bit의 키',
    n.domain = 'SE';

MERGE (n:Concept {id: 'xor'})
SET     n.name = 'XOR',
    n.name_kr = 'XOR',
    n.domain = 'SE',
    n.aliases = ['XOR'];

MERGE (n:Concept {id: '문제점'})
SET     n.name = '문제점',
    n.name_kr = '문제점',
    n.domain = 'SE',
    n.definition = 'S-Box의 지정된 논리 식에 대한 약점제기(shift, XOR등) 최근 컴퓨터의 연산 성능 향상으로 key길이가 56비트로 짧아 Key search machine에 의한 Brute Force Attack 가능';

MERGE (n:Technology {id: '보완방안'})
SET     n.name = '보완방안',
    n.name_kr = '보완방안',
    n.domain = 'SE',
    n.definition = 'Blowfish, RC5, IDEA등 보완 알고리즘 보안성을 강화한 2-DES, 3-DES 사용을 권고';

// --- 관계 ---

MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: '56bit의_키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: 'xor'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Concept {id: '문제점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Technology {id: '보완방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Document {id: 'SE_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'des'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '56bit의_키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xor'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '보완방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_010: AES(Advanced Encryption Standard)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_010'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'advanced_encryption_standard'})
SET     n.name = 'Advanced Encryption Standard',
    n.name_kr = 'AES',
    n.domain = 'SE',
    n.aliases = ['Advanced Encryption Standard', 'AES'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Technology {id: 'aes'})
SET     n.name = 'AES',
    n.name_kr = 'AES',
    n.domain = 'SE',
    n.aliases = ['AES'];

MERGE (n:Concept {id: 'spn'})
SET     n.name = 'SPN',
    n.name_kr = 'SPN',
    n.domain = 'SE',
    n.aliases = ['SPN'];

MERGE (n:Concept {id: 's_box'})
SET     n.name = 'S-Box',
    n.name_kr = 'S-Box',
    n.domain = 'SE',
    n.aliases = ['S-Box'];

MERGE (n:Concept {id: 'p_box'})
SET     n.name = 'P-Box',
    n.name_kr = 'P-Box',
    n.domain = 'SE',
    n.aliases = ['P-Box'];

// --- 관계 ---

MERGE (a:Concept {id: '암호화'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'aes'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'advanced_encryption_standard'})
MERGE (b:Concept {id: 'spn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'advanced_encryption_standard'})
MERGE (b:Concept {id: 's_box'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'advanced_encryption_standard'})
MERGE (b:Concept {id: 'p_box'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'advanced_encryption_standard'})
MERGE (b:Document {id: 'SE_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'advanced_encryption_standard'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'aes'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'spn'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 's_box'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'p_box'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_011: SEED
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_011'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'seed'})
SET     n.name = 'SEED',
    n.name_kr = 'SEED',
    n.domain = 'SE',
    n.aliases = ['SEED'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '국산_128비트'})
SET     n.name = '국산 128비트',
    n.name_kr = '국산 128비트',
    n.domain = 'SE';

MERGE (n:Concept {id: '대칭키_블록_암호'})
SET     n.name = '대칭키 블록 암호',
    n.name_kr = '대칭키 블록 암호',
    n.domain = 'SE';

MERGE (n:Technology {id: '3_des'})
SET     n.name = '3-DES',
    n.name_kr = '3-DES',
    n.domain = 'SE';

MERGE (n:Technology {id: 'aes'})
SET     n.name = 'AES',
    n.name_kr = 'AES',
    n.domain = 'SE',
    n.aliases = ['AES'];

// --- 관계 ---

MERGE (a:Technology {id: 'seed'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Concept {id: '국산_128비트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Concept {id: '대칭키_블록_암호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '3_des'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: '3_des'})
MERGE (b:Technology {id: 'seed'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Technology {id: '3_des'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'aes'})
MERGE (b:Technology {id: 'seed'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Technology {id: 'aes'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Document {id: 'SE_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'seed'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국산_128비트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대칭키_블록_암호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '3_des'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'aes'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_012: 경량암호화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_012'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '경량암호화'})
SET     n.name = '경량암호화',
    n.name_kr = '경량암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '하드웨어_구현_측면'})
SET     n.name = '하드웨어 구현 측면',
    n.name_kr = '하드웨어 구현 측면',
    n.domain = 'SE',
    n.definition = 'FPGA 또는 ASIC 과 같은 제한된 면적, 적은 전력 소비량';

MERGE (n:Concept {id: '소프트웨어_구현_측면'})
SET     n.name = '소프트웨어 구현 측면',
    n.name_kr = '소프트웨어 구현 측면',
    n.domain = 'SE',
    n.definition = 'AVR 등 경량 SW 플랫폼에서 작은 프로그램 코드 크기, 작은 메모리 크기';

MERGE (n:Concept {id: 'lea'})
SET     n.name = 'LEA',
    n.name_kr = 'LEA',
    n.domain = 'SE',
    n.aliases = ['LEA'];

MERGE (n:Concept {id: 'simon'})
SET     n.name = 'SIMON',
    n.name_kr = 'SIMON',
    n.domain = 'SE',
    n.aliases = ['SIMON'];

MERGE (n:Concept {id: 'speck'})
SET     n.name = 'SPECK',
    n.name_kr = 'SPECK',
    n.domain = 'SE',
    n.aliases = ['SPECK'];

// --- 관계 ---

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: '하드웨어_구현_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: '소프트웨어_구현_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lea'})
MERGE (b:Concept {id: 'simon'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lea'})
MERGE (b:Concept {id: 'speck'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: 'lea'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'simon'})
MERGE (b:Concept {id: 'speck'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: 'simon'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Concept {id: 'speck'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Document {id: 'SE_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '경량암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어_구현_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소프트웨어_구현_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lea'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'simon'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'speck'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_013: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_013'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_014: LEA(Lightweight Encryption Algorithm
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_014'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'lea(lightweight_encryption_algorithm'})
SET     n.name = 'LEA(Lightweight Encryption Algorithm',
    n.name_kr = 'LEA(Lightweight Encryption Algorithm',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'lea'})
SET     n.name = 'LEA',
    n.name_kr = 'LEA',
    n.domain = 'SE',
    n.aliases = ['LEA'];

MERGE (n:Concept {id: '128비트_블록_암호화_알고리즘'})
SET     n.name = '128비트 블록 암호화 알고리즘',
    n.name_kr = '128비트 블록 암호화 알고리즘',
    n.domain = 'SE';

MERGE (n:Technology {id: 'aes_대비_성능우수'})
SET     n.name = 'AES 대비 성능우수',
    n.name_kr = 'AES 대비 성능우수',
    n.domain = 'SE';

MERGE (n:Concept {id: '128/192/256비트'})
SET     n.name = '128/192/256비트',
    n.name_kr = '128/192/256비트',
    n.domain = 'SE';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'SE',
    n.definition = '128비트 블록암호 (2013년 개발)';

MERGE (n:Concept {id: '키_길이'})
SET     n.name = '키 길이',
    n.name_kr = '키 길이',
    n.domain = 'SE',
    n.definition = '128 비트, 192 비트, 256 비트';

MERGE (n:Concept {id: '구조'})
SET     n.name = '구조',
    n.name_kr = '구조',
    n.domain = 'SE',
    n.definition = 'ARX (Addition, Rotation, XOR) 기반 GFN(Generalized Feistel Network)';

MERGE (n:Technology {id: '성능'})
SET     n.name = '성능',
    n.name_kr = '성능',
    n.domain = 'SE',
    n.definition = '다양한 SW 환경에서 국제 표준암호 AES 대비 1.5배 ~ 2배 성능';

MERGE (n:Concept {id: 'nb'})
SET     n.name = 'Nb',
    n.name_kr = '블록길이',
    n.domain = 'SE',
    n.aliases = ['Nb', '블록길이'];

MERGE (n:Concept {id: 'nk'})
SET     n.name = 'Nk',
    n.name_kr = '비밀키 길이',
    n.domain = 'SE',
    n.aliases = ['Nk', '비밀키 길이'];

MERGE (n:Concept {id: 'nr'})
SET     n.name = 'Nr',
    n.name_kr = '라운드 수',
    n.domain = 'SE',
    n.aliases = ['Nr', '라운드 수'];

MERGE (n:Concept {id: '암호화_키_스케줄_함수'})
SET     n.name = '암호화 키 스케줄 함수',
    n.name_kr = '암호화 키 스케줄 함수',
    n.domain = 'SE',
    n.definition = '암호화 과정에 필요한 Nr개의 192비트 암호화 라운드 키를 생성 - LEA-128인 경우, 128비트 비밀키를 입력받아 24개의 192비트 암호화 라운드 키 출력';

MERGE (n:Concept {id: '복호화'})
SET     n.name = '복호화',
    n.name_kr = '복호화',
    n.domain = 'SE',
    n.definition = '복호화 함수';

MERGE (n:Concept {id: '복호화_키_스케줄_함수'})
SET     n.name = '복호화 키 스케줄 함수',
    n.name_kr = '복호화 키 스케줄 함수',
    n.domain = 'SE',
    n.definition = '키 K로 부터 복호화 과정에 필요한 N개의 복호화 라운드 키를 생성 - LEA-128인 경우, 128비트 비밀키를 입력받으면 24개의 192비트 복호화 라운드 키를 출력';

// --- 관계 ---

MERGE (a:Concept {id: 'lea'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '128비트_블록_암호화_알고리즘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Technology {id: 'aes_대비_성능우수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '128/192/256비트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '키_길이'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '구조'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Technology {id: '성능'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'nb'})
MERGE (b:Concept {id: 'nk'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'nb'})
MERGE (b:Concept {id: 'nr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: 'nb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'nk'})
MERGE (b:Concept {id: 'nr'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: 'nk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: 'nr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '암호화_키_스케줄_함수'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '복호화'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Concept {id: '복호화_키_스케줄_함수'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Document {id: 'SE_014'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lea(lightweight_encryption_algorithm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lea'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '128비트_블록_암호화_알고리즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'aes_대비_성능우수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '128/192/256비트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키_길이'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '성능'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nb'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nk'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화_키_스케줄_함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복호화_키_스케줄_함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_015: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_015'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_016: HMAC
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_016'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'hmac'})
SET     n.name = 'HMAC',
    n.name_kr = 'HMAC',
    n.domain = 'SE',
    n.aliases = ['HMAC'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Technology {id: 'hmac'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'hmac'})
MERGE (b:Document {id: 'SE_016'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'hmac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_017: 해시 솔트(Hash Salt)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_017'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'hash_salt'})
SET     n.name = 'Hash Salt',
    n.name_kr = '해시 솔트',
    n.domain = 'SE',
    n.aliases = ['Hash Salt', '해시 솔트'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'reduce함수'})
SET     n.name = 'Reduce함수',
    n.name_kr = 'Reduce함수',
    n.domain = 'SE';

MERGE (n:Concept {id: 'iteration_count'})
SET     n.name = 'Iteration Count',
    n.name_kr = 'Iteration Count',
    n.domain = 'SE',
    n.aliases = ['Iteration Count'];

MERGE (n:Concept {id: '메시지'})
SET     n.name = '메시지',
    n.name_kr = '메시지',
    n.domain = 'SE',
    n.definition = '평문(Plaintext)';

MERGE (n:Concept {id: 'salt'})
SET     n.name = 'SALT',
    n.name_kr = 'SALT',
    n.domain = 'SE',
    n.definition = '입력 메시지를 알아보기 어렵게 하기 위해서 메시지에 추가적으로 입력되는 랜덤 값 * SALT 는 데이터베이스에 저장되며 랜덤으로 생성되는 값',
    n.aliases = ['SALT'];

MERGE (n:Concept {id: 'pepper'})
SET     n.name = 'PEPPER',
    n.name_kr = 'PEPPER',
    n.domain = 'SE',
    n.definition = '입력 메시지를 알아보기 어렵게 하기 위해 데이터베이스에 저장되지 않는 고정 값 - PEPEER 는 모든 유저에게 동일한 고정 값 제공',
    n.aliases = ['PEPPER'];

MERGE (n:Technology {id: '해시함수_알고리즘'})
SET     n.name = '해시함수 알고리즘',
    n.name_kr = '해시함수 알고리즘',
    n.domain = 'SE',
    n.definition = 'MD5 (Message Digest)';

MERGE (n:Technology {id: 'secure_hash_algorithm'})
SET     n.name = 'Secure Hash Algorithm',
    n.name_kr = 'SHA',
    n.domain = 'SE',
    n.definition = '키 길이에 따라 SHA-1, SHA-256, SHA-384, SHA-512 등의 알고리즘을 사용 - 충돌 쌍 문제로 SHA-1 사용 지양으로 SHA-2 사용 권장',
    n.aliases = ['Secure Hash Algorithm', 'SHA'];

MERGE (n:Technology {id: 'cyclic_redundancy_check_32'})
SET     n.name = 'Cyclic Redundancy Check 32',
    n.name_kr = 'CRC32',
    n.domain = 'SE',
    n.definition = 'MD5 나 SHA 보다 계산이 간단해서 빠른 속도로 해시계산 가능 (단 안전성은 MD5, SHA 보다 떨어짐) - 네트워크 간섭, 라인 노이즈, 왜곡 등 오류 감지에 적합',
    n.aliases = ['Cyclic Redundancy Check 32', 'CRC32'];

MERGE (n:Concept {id: 'key_stretching'})
SET     n.name = '키 스트레칭',
    n.name_kr = '키 스트레칭',
    n.domain = 'SE',
    n.definition = 'Iteration Count';

MERGE (n:Concept {id: '다이제스트'})
SET     n.name = '다이제스트',
    n.name_kr = '다이제스트',
    n.domain = 'SE',
    n.definition = '해시 알고리즘을 통해 생성된 메시지 출력 값 - 다이제스트는 해시 알고리즘에 따라 고정 길이의 결과값을 가짐';

// --- 관계 ---

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: 'reduce함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: 'iteration_count'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: '메시지'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: 'salt'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: 'pepper'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Technology {id: '해시함수_알고리즘'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Technology {id: 'secure_hash_algorithm'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Technology {id: 'cyclic_redundancy_check_32'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: 'key_stretching'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Concept {id: '다이제스트'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Document {id: 'SE_017'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'hash_salt'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reduce함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iteration_count'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'salt'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pepper'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '해시함수_알고리즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'secure_hash_algorithm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'cyclic_redundancy_check_32'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'key_stretching'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이제스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_018: Diffie-Hellman 키 교환
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_018'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'diffie-hellman_키_교환'})
SET     n.name = 'Diffie-Hellman 키 교환',
    n.name_kr = 'Diffie-Hellman 키 교환',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '소수'})
SET     n.name = '소수',
    n.name_kr = '소수',
    n.domain = 'SE';

MERGE (n:Concept {id: 'primitive_root'})
SET     n.name = 'Primitive Root',
    n.name_kr = '원시근',
    n.domain = 'SE',
    n.aliases = ['Primitive Root', '원시근'];

MERGE (n:Concept {id: '비_공개키'})
SET     n.name = '비 공개키',
    n.name_kr = '비 공개키',
    n.domain = 'SE';

MERGE (n:Concept {id: '공개키'})
SET     n.name = '공개키',
    n.name_kr = '공개키',
    n.domain = 'SE';

MERGE (n:Concept {id: '비밀키'})
SET     n.name = '비밀키',
    n.name_kr = '비밀키',
    n.domain = 'SE';

MERGE (n:Threat {id: 'mitm'})
SET     n.name = '중간자 공격(MITM) 취약',
    n.name_kr = '중간자 공격(MITM) 취약',
    n.domain = 'SE';

MERGE (n:Concept {id: 'key'})
SET     n.name = 'Key',
    n.name_kr = 'Key',
    n.domain = 'SE',
    n.definition = '비밀키',
    n.aliases = ['Key'];

MERGE (n:Concept {id: '개인키'})
SET     n.name = '개인키',
    n.name_kr = '개인키',
    n.domain = 'SE',
    n.definition = '공개키 알고리즘에서 사용되는 키로 개인이 소유하며 외부에 알려주지 않는 키';

MERGE (n:Concept {id: '기호'})
SET     n.name = '기호',
    n.name_kr = '기호',
    n.domain = 'SE',
    n.definition = 'p';

// --- 관계 ---

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '소수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: 'primitive_root'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '비_공개키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '공개키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '비밀키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Threat {id: 'mitm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: 'key'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '개인키'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Concept {id: '기호'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Document {id: 'SE_018'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'diffie-hellman_키_교환'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'primitive_root'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비_공개키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비밀키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'mitm'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'key'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_019: 타원곡선 ( ECC : Elliptic Curve Cryptosystem )
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_019'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '타원곡선'})
SET     n.name = '타원곡선',
    n.name_kr = '타원곡선',
    n.domain = 'SE';

MERGE (n:Concept {id: 'elliptic(타원형의'})
SET     n.name = 'Elliptic(타원형의',
    n.name_kr = 'Elliptic(타원형의',
    n.domain = 'SE';

MERGE (n:Concept {id: '일립틱한)_curve'})
SET     n.name = '일립틱한) Curve',
    n.name_kr = '일립틱한) Curve',
    n.domain = 'SE';

MERGE (n:Concept {id: '공개키_암호화_방식'})
SET     n.name = '공개키 암호화 방식',
    n.name_kr = '공개키 암호화 방식',
    n.domain = 'SE';

MERGE (n:Concept {id: '짧은_키_사이즈'})
SET     n.name = '짧은 키 사이즈',
    n.name_kr = '짧은 키 사이즈',
    n.domain = 'SE';

MERGE (n:Concept {id: '대등한_안전도'})
SET     n.name = '대등한 안전도',
    n.name_kr = '대등한 안전도',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '타원곡선'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Concept {id: 'elliptic(타원형의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Concept {id: '일립틱한)_curve'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Concept {id: '공개키_암호화_방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Concept {id: '짧은_키_사이즈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Concept {id: '대등한_안전도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: '타원곡선'})
MERGE (b:Document {id: 'SE_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타원곡선'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'elliptic(타원형의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일립틱한)_curve'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키_암호화_방식'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '짧은_키_사이즈'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대등한_안전도'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_020: RSA (Rivest Shamir Adleman)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_020'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'rivest_shamir_adleman'})
SET     n.name = 'Rivest Shamir Adleman',
    n.name_kr = 'RSA',
    n.domain = 'SE',
    n.aliases = ['Rivest Shamir Adleman', 'RSA'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Technology {id: 'rsa'})
SET     n.name = 'RSA',
    n.name_kr = 'RSA',
    n.domain = 'SE',
    n.aliases = ['RSA'];

MERGE (n:Concept {id: '안정성'})
SET     n.name = '안정성',
    n.name_kr = '안정성',
    n.domain = 'SE';

MERGE (n:Concept {id: '신뢰성'})
SET     n.name = '신뢰성',
    n.name_kr = '신뢰성',
    n.domain = 'SE';

MERGE (n:Concept {id: '비대칭키'})
SET     n.name = '비대칭키',
    n.name_kr = '비대칭키',
    n.domain = 'SE';

MERGE (n:Concept {id: '소인수분해'})
SET     n.name = '소인수분해',
    n.name_kr = '소인수분해',
    n.domain = 'SE';

MERGE (n:Threat {id: '랜섬웨어'})
SET     n.name = '랜섬웨어',
    n.name_kr = '랜섬웨어',
    n.domain = 'SE';

MERGE (n:Concept {id: 'prng'})
SET     n.name = 'PRNG',
    n.name_kr = 'PRNG',
    n.domain = 'SE',
    n.aliases = ['PRNG'];

MERGE (n:Concept {id: 'pki'})
SET     n.name = 'PKI',
    n.name_kr = 'PKI',
    n.domain = 'SE',
    n.aliases = ['PKI'];

MERGE (n:Concept {id: '소수_선택'})
SET     n.name = '소수 선택',
    n.name_kr = '소수 선택',
    n.domain = 'SE',
    n.definition = 'p, q는 거의 같은 크기의 소수여야 안전함';

MERGE (n:Concept {id: '키사이즈'})
SET     n.name = '키사이즈',
    n.name_kr = '키사이즈',
    n.domain = 'SE',
    n.definition = '1980년까지 512비트, 1996년에는 1024비트, 2005년에는 2048비트 권장';

MERGE (n:Technology {id: 'ecc'})
SET     n.name = 'ECC',
    n.name_kr = 'ECC',
    n.domain = 'SE',
    n.aliases = ['ECC'];

MERGE (n:Concept {id: 'dsa'})
SET     n.name = 'DSA',
    n.name_kr = 'DSA',
    n.domain = 'SE',
    n.aliases = ['DSA'];

// --- 관계 ---

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '안정성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '신뢰성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '비대칭키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '소인수분해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Threat {id: '랜섬웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'prng'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'pki'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '소수_선택'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: '키사이즈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'ecc'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'ecc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Technology {id: 'rsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Concept {id: 'dsa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Document {id: 'SE_020'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'rivest_shamir_adleman'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'rsa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '안정성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신뢰성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비대칭키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소인수분해'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '랜섬웨어'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prng'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pki'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소수_선택'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키사이즈'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ecc'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dsa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_021: 엘가멜(ElGamal)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_021'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'elgamal'})
SET     n.name = 'ElGamal',
    n.name_kr = '엘가멜',
    n.domain = 'SE',
    n.aliases = ['ElGamal', '엘가멜'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '이산대수_문제'})
SET     n.name = '이산대수 문제',
    n.name_kr = '이산대수 문제',
    n.domain = 'SE';

MERGE (n:Concept {id: '키생성'})
SET     n.name = '키생성',
    n.name_kr = '키생성',
    n.domain = 'SE';

MERGE (n:Concept {id: '복호화'})
SET     n.name = '복호화',
    n.name_kr = '복호화',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Concept {id: '이산대수_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Concept {id: '키생성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Concept {id: '복호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Document {id: 'SE_021'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'elgamal'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이산대수_문제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키생성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_022.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_022.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_022.2: 양자암호기술
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_022.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '양자암호기술'})
SET     n.name = '양자암호기술',
    n.name_kr = '양자암호기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '양자키분배_(qkd'})
SET     n.name = '양자키분배 (QKD',
    n.name_kr = '양자키분배 (QKD',
    n.domain = 'SE';

MERGE (n:Concept {id: 'quantum_channel'})
SET     n.name = 'Quantum Channel',
    n.name_kr = 'Quantum Channel',
    n.domain = 'SE',
    n.aliases = ['Quantum Channel'];

MERGE (n:Concept {id: '구성_요소'})
SET     n.name = '구성 요소',
    n.name_kr = '구성 요소',
    n.domain = 'SE',
    n.definition = 'QKD 네트워크';

MERGE (n:Technology {id: '전달_네트워크'})
SET     n.name = '전달 네트워크',
    n.name_kr = '전달 네트워크',
    n.domain = 'SE',
    n.definition = '기존 데이터 망 자원 할당 요청을 T-SDN 제어기와의 인터페이스를 통해 전달';

MERGE (n:Technology {id: 'q-sdn_제어기'})
SET     n.name = 'Q-SDN 제어기',
    n.name_kr = 'Q-SDN 제어기',
    n.domain = 'SE',
    n.definition = 'QKD 네트워크 제어기 - QKD 네트워크의 전체적인 자원 관리와 감시, 제어를 담당';

MERGE (n:Technology {id: 't-sdn제어기'})
SET     n.name = 'T-SDN제어기',
    n.name_kr = 'T-SDN제어기',
    n.domain = 'SE',
    n.definition = '기존 데이터 망의 네트워크제어기 - Q-SDN 제어기의 요청에 따라 전달 네트워크에 양자암호 전달 네트워크를 위한 자원을 할당';

MERGE (n:Concept {id: '전송장비'})
SET     n.name = '전송장비',
    n.name_kr = '전송장비',
    n.domain = 'SE',
    n.definition = '기존 데이터 망의 전송장치';

MERGE (n:Concept {id: 'qkd_노드_매니저'})
SET     n.name = 'QKD 노드 매니저',
    n.name_kr = 'QKD 노드 매니저',
    n.domain = 'SE',
    n.definition = 'QKD 네트워크 내 관리자';

MERGE (n:Concept {id: '인증개체'})
SET     n.name = '인증개체',
    n.name_kr = '인증개체',
    n.domain = 'SE',
    n.definition = '어플리케이션 인증';

MERGE (n:Concept {id: '키관리개체'})
SET     n.name = '키관리개체',
    n.name_kr = '키관리개체',
    n.domain = 'SE',
    n.definition = '양자암호키 관리';

MERGE (n:Concept {id: 'qkd_개체'})
SET     n.name = 'QKD 개체',
    n.name_kr = 'QKD 개체',
    n.domain = 'SE',
    n.definition = '양자암호키 생성';

MERGE (n:Concept {id: '기술_요소'})
SET     n.name = '기술 요소',
    n.name_kr = '기술 요소',
    n.domain = 'SE',
    n.definition = '편광';

MERGE (n:Concept {id: '위상'})
SET     n.name = '위상',
    n.name_kr = '위상',
    n.domain = 'SE',
    n.definition = '위상 시간차를 두어 간섭계를 이용 신호 부여';

MERGE (n:Concept {id: '양자채널'})
SET     n.name = '양자채널',
    n.name_kr = '양자채널',
    n.domain = 'SE',
    n.definition = '광자 하나하나에 신호를 실어 보내는 통신';

MERGE (n:Concept {id: '퍼블릭채널'})
SET     n.name = '퍼블릭채널',
    n.name_kr = '퍼블릭채널',
    n.domain = 'SE',
    n.definition = '광자가 아닌 기존 통신망을 활요하여 전송';

MERGE (n:Concept {id: 'bb84_프로토콜'})
SET     n.name = 'BB84 프로토콜',
    n.name_kr = 'BB84 프로토콜',
    n.domain = 'SE',
    n.definition = '송신자와 수신자 사이에 OPT를 생성하는 프로토콜 - 0비트의 상태를 나타내는 편광 2가지와 1비트의 상태를 나타내는 편광 2가지를 정의한 다음 십자 필터와 대각 필터를 통해 측정 - 송신자와 수신자는 임의의 난수를 생성할 수 있으며, 중간에 도청자가 난입하여 정보를 가로채려는 시도를 해도 정확한 정보획득이 어려움';

MERGE (n:Concept {id: '표기법'})
SET     n.name = '표기법',
    n.name_kr = '표기법',
    n.domain = 'SE',
    n.definition = '|ψ〉= α|0〉 + β|1〉';

MERGE (n:Concept {id: '값_상태'})
SET     n.name = '값 상태',
    n.name_kr = '값 상태',
    n.domain = 'SE',
    n.definition = '바닥 상태(ground state) 들뜬 상태(excited state)';

// --- 관계 ---

MERGE (a:Concept {id: '암호화'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '양자키분배_(qkd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: 'quantum_channel'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '구성_요소'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Technology {id: '전달_네트워크'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Technology {id: 'q-sdn_제어기'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Technology {id: 't-sdn제어기'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '전송장비'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: 'qkd_노드_매니저'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '인증개체'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '키관리개체'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: 'qkd_개체'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '기술_요소'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '위상'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '양자채널'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '퍼블릭채널'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: 'bb84_프로토콜'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '표기법'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Concept {id: '값_상태'})
MERGE (a)-[:THREATENS]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Document {id: 'SE_022.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '양자암호기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양자키분배_(qkd'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quantum_channel'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성_요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '전달_네트워크'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'q-sdn_제어기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 't-sdn제어기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송장비'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qkd_노드_매니저'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증개체'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '키관리개체'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qkd_개체'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술_요소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '양자채널'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '퍼블릭채널'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bb84_프로토콜'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '값_상태'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_022.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_022.3'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_022.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_022.4'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_023.1: 양자내성암호(Post-Quantum Crytography)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_023.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'post_quantum_crytography'})
SET     n.name = 'Post-Quantum Crytography',
    n.name_kr = '양자내성암호',
    n.domain = 'SE',
    n.aliases = ['Post-Quantum Crytography', '양자내성암호'];

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '다_코_격_아_해'})
SET     n.name = '다 코 격 아 해',
    n.name_kr = '다 코 격 아 해',
    n.domain = 'SE';

MERGE (n:Concept {id: '세부_기술'})
SET     n.name = '세부 기술',
    n.name_kr = '세부 기술',
    n.domain = 'SE';

MERGE (n:Concept {id: '한계점_설명'})
SET     n.name = '한계점 설명',
    n.name_kr = '한계점 설명',
    n.domain = 'SE';

MERGE (n:Concept {id: '다변수기반'})
SET     n.name = '다변수기반',
    n.name_kr = '다변수기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '코드기반'})
SET     n.name = '코드기반',
    n.name_kr = '코드기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '격자기반'})
SET     n.name = '격자기반',
    n.name_kr = '격자기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '아이소제니기반'})
SET     n.name = '아이소제니기반',
    n.name_kr = '아이소제니기반',
    n.domain = 'SE';

MERGE (n:Concept {id: '해시기반'})
SET     n.name = '해시기반',
    n.name_kr = '해시기반',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '암호화'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '다_코_격_아_해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_기술'})
MERGE (b:Concept {id: '한계점_설명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '세부_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '한계점_설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '다변수기반'})
MERGE (b:Concept {id: '코드기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '다변수기반'})
MERGE (b:Concept {id: '격자기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '다변수기반'})
MERGE (b:Concept {id: '아이소제니기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '다변수기반'})
MERGE (b:Concept {id: '해시기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '다변수기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '코드기반'})
MERGE (b:Concept {id: '격자기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '코드기반'})
MERGE (b:Concept {id: '아이소제니기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '코드기반'})
MERGE (b:Concept {id: '해시기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '코드기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '격자기반'})
MERGE (b:Concept {id: '아이소제니기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '격자기반'})
MERGE (b:Concept {id: '해시기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '격자기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '아이소제니기반'})
MERGE (b:Concept {id: '해시기반'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '아이소제니기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Concept {id: '해시기반'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Document {id: 'SE_023.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'post_quantum_crytography'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다_코_격_아_해'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한계점_설명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다변수기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '코드기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '격자기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아이소제니기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해시기반'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_023.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_023.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_024: 전자서명(Digital Signature) / 디지털 서명
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_024'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'digital_signature'})
SET     n.name = '전자서명(Digital Signature) / 디지털 서명',
    n.name_kr = '전자서명(Digital Signature) / 디지털 서명',
    n.domain = 'SE';

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '전자서명_/_디지털_서명'})
SET     n.name = '전자서명 / 디지털 서명',
    n.name_kr = '전자서명 / 디지털 서명',
    n.domain = 'SE';

MERGE (n:Concept {id: '2)_송신측_공개키로_해시값_복호화'})
SET     n.name = '2) 송신측 공개키로 해시값 복호화',
    n.name_kr = '2) 송신측 공개키로 해시값 복호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '생성과정'})
SET     n.name = '생성과정',
    n.name_kr = '생성과정',
    n.domain = 'SE';

MERGE (n:Concept {id: 'public_key_infrastructure'})
SET     n.name = 'Public Key Infrastructure',
    n.name_kr = 'PKI',
    n.domain = 'SE',
    n.definition = '송신측',
    n.aliases = ['Public Key Infrastructure', 'PKI'];

MERGE (n:Metric {id: '수신측'})
SET     n.name = '수신측',
    n.name_kr = '수신측',
    n.domain = 'SE',
    n.definition = '원문에 대한 전자서명 값을 동시에 수신함으로써, 메시지의 무결성을 확인할 수 있음.';

MERGE (n:Technology {id: 'secure_socket_layer'})
SET     n.name = 'Secure Socket Layer',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.definition = '서버측',
    n.aliases = ['Secure Socket Layer', 'SSL'];

MERGE (n:Concept {id: '클라이언트측'})
SET     n.name = '클라이언트측',
    n.name_kr = '클라이언트측',
    n.domain = 'SE',
    n.definition = '서버로부터 전달받은 서버 인증서를 활용해, 인증받은 서버인지를 검증할 수 있음';

MERGE (n:Concept {id: '임베디드_디바이스_secure_boot'})
SET     n.name = '임베디드 디바이스 Secure Boot',
    n.name_kr = '임베디드 디바이스 Secure Boot',
    n.domain = 'SE',
    n.definition = '이미지 생성';

MERGE (n:Concept {id: 'secure_boot'})
SET     n.name = 'Secure Boot',
    n.name_kr = 'Secure Boot',
    n.domain = 'SE',
    n.definition = '부트로더는 커널의 전자서명 값을, 커널은 Root FS의 전자서명을 체크하여 Secure Booting 과정을 수행.',
    n.aliases = ['Secure Boot'];

// --- 관계 ---

MERGE (a:Concept {id: '전자서명_/_디지털_서명'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: '2)_송신측_공개키로_해시값_복호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: '생성과정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: 'public_key_infrastructure'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Metric {id: '수신측'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Technology {id: 'secure_socket_layer'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: '클라이언트측'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: '임베디드_디바이스_secure_boot'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Concept {id: 'secure_boot'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Document {id: 'SE_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'digital_signature'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자서명_/_디지털_서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2)_송신측_공개키로_해시값_복호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생성과정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'public_key_infrastructure'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '수신측'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'secure_socket_layer'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트측'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임베디드_디바이스_secure_boot'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secure_boot'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_025: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_025'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_026: 이중서명(Dual Signature)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_026'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'dual_signature'})
SET     n.name = 'Dual Signature',
    n.name_kr = '이중서명',
    n.domain = 'SE',
    n.aliases = ['Dual Signature', '이중서명'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: 'hash'})
SET     n.name = '해시',
    n.name_kr = '해시',
    n.domain = 'SE';

MERGE (n:Concept {id: '공개키/비밀키'})
SET     n.name = '공개키/비밀키',
    n.name_kr = '공개키/비밀키',
    n.domain = 'SE';

MERGE (n:Concept {id: '전자봉투'})
SET     n.name = '전자봉투',
    n.name_kr = '전자봉투',
    n.domain = 'SE';

MERGE (n:Concept {id: '구매_정보/결제_정보'})
SET     n.name = '구매 정보/결제 정보',
    n.name_kr = '구매 정보/결제 정보',
    n.domain = 'SE';

MERGE (n:Concept {id: '2._전자봉투_생성'})
SET     n.name = '2. 전자봉투 생성',
    n.name_kr = '2. 전자봉투 생성',
    n.domain = 'SE',
    n.definition = '1) 비밀키로 결제 정보 암호화, PG 사 공개키(Public Key)로 비밀키를 암호화 2) 구매/암호화 결제정보, M1M2, 전자서명, 전자봉투 전송';

MERGE (n:Concept {id: '3._구매정보_확인'})
SET     n.name = '3. 구매정보 확인(판매자)',
    n.name_kr = '3. 구매정보 확인(판매자)',
    n.domain = 'SE',
    n.definition = '1) 수신 구매 정보에 메시지 다이제스트 M1’ 생성 2) M1M2 의 M1 을 M1’ 대체 및 M’ 생성, 공개키 기반 M 추출 3) M==M’ 검증 후 결제정보/전자봉투/이중서명/M1M2 PG 사 전송';

MERGE (n:Concept {id: '4._결제정보_확인'})
SET     n.name = '4. 결제정보 확인(PG 사)',
    n.name_kr = '4. 결제정보 확인(PG 사)',
    n.domain = 'SE',
    n.definition = '1) 개인키를 이용하여 전자봉투 복호화 및 비밀키 획득 2) 비밀키 기반 결제정보/M1M2/서명 값 추출 3) 결제정보 해시 M2’ 생성 및 M1M2 의 M2 를 M2’ 생성 4) 이중서명에서 사용자 공개키 기반 M 추출하고 M==M’ 검증';

MERGE (n:Concept {id: '주요_기술'})
SET     n.name = '주요 기술',
    n.name_kr = '주요 기술',
    n.domain = 'SE',
    n.definition = '비밀키 암호화';

MERGE (n:Technology {id: '공개키_암호화'})
SET     n.name = '공개키 암호화',
    n.name_kr = '공개키 암호화',
    n.domain = 'SE',
    n.definition = '비대칭키 암호화 기술 사용 (RSA, ECC, DSA 등)';

MERGE (n:Concept {id: '전자서명'})
SET     n.name = '전자서명',
    n.name_kr = '전자서명',
    n.domain = 'SE',
    n.definition = '사용자의 신원확인을 목적 사용(부인방지) - 비대칭 암호화 기법을 이용하여 생성한 전자적 서명 - 원문을 해시함수로 메시지 다이제스트 후 송신자 개인키로 암호화';

MERGE (n:Concept {id: '은닉서명'})
SET     n.name = '은닉서명',
    n.name_kr = '은닉서명',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: 'hash'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '공개키/비밀키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '전자봉투'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '구매_정보/결제_정보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '2._전자봉투_생성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '3._구매정보_확인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '4._결제정보_확인'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '주요_기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Technology {id: '공개키_암호화'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '전자서명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '전자서명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '은닉서명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '전자서명'})
MERGE (b:Concept {id: '은닉서명'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '전자서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Concept {id: '은닉서명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Document {id: 'SE_026'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dual_signature'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hash'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키/비밀키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자봉투'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구매_정보/결제_정보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._전자봉투_생성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._구매정보_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._결제정보_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '공개키_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '은닉서명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_027: 메시지 인증(Message Authentication)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_027'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'message_authentication'})
SET     n.name = 'Message Authentication',
    n.name_kr = '메시지 인증',
    n.domain = 'SE',
    n.aliases = ['Message Authentication', '메시지 인증'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '공개키'})
SET     n.name = '공개키',
    n.name_kr = '공개키',
    n.domain = 'SE';

MERGE (n:Concept {id: '개인키'})
SET     n.name = '개인키',
    n.name_kr = '개인키',
    n.domain = 'SE';

MERGE (n:Metric {id: '무결성'})
SET     n.name = '무결성',
    n.name_kr = '무결성',
    n.domain = 'SE';

MERGE (n:Concept {id: '인증'})
SET     n.name = '인증',
    n.name_kr = '인증',
    n.domain = 'SE';

MERGE (n:Concept {id: '해시_함수'})
SET     n.name = '해시 함수',
    n.name_kr = '해시 함수',
    n.domain = 'SE';

MERGE (n:Concept {id: '메시지_다이제스트'})
SET     n.name = '메시지 다이제스트',
    n.name_kr = '메시지 다이제스트',
    n.domain = 'SE';

MERGE (n:Concept {id: 'nested_mac'})
SET     n.name = 'Nested MAC',
    n.name_kr = 'Nested MAC',
    n.domain = 'SE',
    n.aliases = ['Nested MAC'];

MERGE (n:Technology {id: 'hash'})
SET     n.name = 'Hash',
    n.name_kr = 'HMAC',
    n.domain = 'SE',
    n.definition = '일방향 Hash 함수를 이용하여 MAC를 구하는 기법 - 두단계 Hash 계산 - 계산 중 Pading값 포함되어 훨씬 복잡함',
    n.aliases = ['Hash', 'HMAC'];

MERGE (n:Concept {id: 'cipher'})
SET     n.name = 'Cipher',
    n.name_kr = 'CMAC',
    n.domain = 'SE',
    n.definition = '블록암호 기반 메시지 인증 코드 - CBC-MAC의 변형',
    n.aliases = ['Cipher', 'CMAC'];

// --- 관계 ---

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '공개키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '개인키'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Metric {id: '무결성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '해시_함수'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: '메시지_다이제스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: 'nested_mac'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Technology {id: 'hash'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Concept {id: 'cipher'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Document {id: 'SE_027'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'message_authentication'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공개키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인키'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '무결성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해시_함수'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '메시지_다이제스트'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nested_mac'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'hash'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cipher'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_028: 동형 암호(Homomorphic Encryption)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_028'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'homomorphic_encryption'})
SET     n.name = 'Homomorphic Encryption',
    n.name_kr = '동형 암호',
    n.domain = 'SE',
    n.aliases = ['Homomorphic Encryption', '동형 암호'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '격자기반암호'})
SET     n.name = '격자기반암호',
    n.name_kr = '격자기반암호',
    n.domain = 'SE';

MERGE (n:Concept {id: '서킷_프라이버시'})
SET     n.name = '서킷 프라이버시',
    n.name_kr = '서킷 프라이버시',
    n.domain = 'SE';

MERGE (n:Concept {id: '다중_도약_동형성_부분_동형_암호'})
SET     n.name = '다중 도약 동형성 부분 동형 암호',
    n.name_kr = '다중 도약 동형성 부분 동형 암호',
    n.domain = 'SE';

MERGE (n:Concept {id: 'squashing'})
SET     n.name = 'Squashing',
    n.name_kr = '스쿼싱',
    n.domain = 'SE',
    n.aliases = ['Squashing', '스쿼싱'];

MERGE (n:Concept {id: '설계원리'})
SET     n.name = '설계원리',
    n.name_kr = '설계원리',
    n.domain = 'SE',
    n.definition = '부트스트래핑 (Bootstrapping)';

MERGE (n:Concept {id: '알고리즘'})
SET     n.name = '알고리즘',
    n.name_kr = '알고리즘',
    n.domain = 'SE',
    n.definition = 'RAD78';

// --- 관계 ---

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '격자기반암호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '서킷_프라이버시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '다중_도약_동형성_부분_동형_암호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: 'squashing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '설계원리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Concept {id: '알고리즘'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Document {id: 'SE_028'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'homomorphic_encryption'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '격자기반암호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서킷_프라이버시'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중_도약_동형성_부분_동형_암호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'squashing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계원리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '알고리즘'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_029: 형태보존암호화(Format-Preserving Encryption) 순서보존암호화(Order-Preserving Encryption)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_029'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE';

MERGE (n:Concept {id: '형태보존암호화_&_순서보존암호화'})
SET     n.name = '형태보존암호화 & 순서보존암호화',
    n.name_kr = '형태보존암호화 & 순서보존암호화',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '형태보존암호화_&_순서보존암호화'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'format_preserving_encryption'})
MERGE (b:Document {id: 'SE_029'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형태보존암호화_&_순서보존암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_030: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_030'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_031.1: 영지식 증명(Zero-Knowledge Proof)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_031.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'zero_knowledge_proof'})
SET     n.name = 'Zero-Knowledge Proof',
    n.name_kr = '영지식 증명',
    n.domain = 'SE',
    n.aliases = ['Zero-Knowledge Proof', '영지식 증명'];

MERGE (n:Concept {id: '응용기술'})
SET     n.name = '응용기술',
    n.name_kr = '응용기술',
    n.domain = 'SE';

MERGE (n:Concept {id: 'shodan'})
SET     n.name = 'Shodan',
    n.name_kr = '쇼단',
    n.domain = 'SE',
    n.aliases = ['Shodan', '쇼단'];

MERGE (n:Concept {id: 'prover'})
SET     n.name = 'Prover',
    n.name_kr = '증명자',
    n.domain = 'SE',
    n.aliases = ['Prover', '증명자'];

MERGE (n:Concept {id: 'verifier'})
SET     n.name = 'Verifier',
    n.name_kr = '검증자',
    n.domain = 'SE',
    n.aliases = ['Verifier', '검증자'];

MERGE (n:Concept {id: 'completeness'})
SET     n.name = 'Completeness',
    n.name_kr = '완전성',
    n.domain = 'SE',
    n.aliases = ['Completeness', '완전성'];

MERGE (n:Concept {id: 'soundness'})
SET     n.name = 'Soundness',
    n.name_kr = '건전성',
    n.domain = 'SE',
    n.aliases = ['Soundness', '건전성'];

// --- 관계 ---

MERGE (a:Concept {id: 'shodan'})
MERGE (b:Concept {id: '응용기술'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Concept {id: 'prover'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Concept {id: 'verifier'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Concept {id: 'completeness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Concept {id: 'soundness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Document {id: 'SE_031.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'zero_knowledge_proof'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '응용기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'shodan'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prover'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'verifier'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'completeness'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soundness'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_031.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_031.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_032.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_032.1'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_032.2: Sniffing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_032.2'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'sniffing'})
SET     n.name = 'Sniffing',
    n.name_kr = 'Sniffing',
    n.domain = 'SE',
    n.aliases = ['Sniffing'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해킹',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해킹'];

MERGE (n:Concept {id: 'switch_jamming'})
SET     n.name = 'Switch Jamming',
    n.name_kr = 'Switch Jamming',
    n.domain = 'SE',
    n.aliases = ['Switch Jamming'];

MERGE (n:Concept {id: 'arp_redirect'})
SET     n.name = 'ARP Redirect',
    n.name_kr = 'ARP Redirect',
    n.domain = 'SE',
    n.aliases = ['ARP Redirect'];

MERGE (n:Concept {id: 'icmp_redirect'})
SET     n.name = 'ICMP Redirect',
    n.name_kr = 'ICMP Redirect',
    n.domain = 'SE',
    n.aliases = ['ICMP Redirect'];

MERGE (n:Concept {id: 'telnet_,_rlogin'})
SET     n.name = 'Telnet , Rlogin',
    n.name_kr = 'Telnet , Rlogin',
    n.domain = 'SE',
    n.definition = '사용자 id, pw등의 모든 통신 내용이 암호화되지 않아 모든 통신내용 도청가능';

MERGE (n:Technology {id: 'http'})
SET     n.name = 'HTTP',
    n.name_kr = 'HTTP',
    n.domain = 'SE',
    n.definition = '기본적인 사용자 인증방식이 간단한 encode 형식이라 통신내용 도청가능',
    n.aliases = ['HTTP'];

MERGE (n:Concept {id: 'snmp'})
SET     n.name = 'SNMP',
    n.name_kr = 'SNMP',
    n.domain = 'SE',
    n.definition = 'v1, v2, v3 로 갈수록 보안은 강화 되었지만 암호화 되고 있지 않은 v1이 가장 많이 이용',
    n.aliases = ['SNMP'];

MERGE (n:Concept {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '패킷을 가로채더라도 내용을 알 수 없도록 암호화';

MERGE (n:Technology {id: 'ssl'})
SET     n.name = 'SSL',
    n.name_kr = 'SSL',
    n.domain = 'SE',
    n.definition = 'Secure Soket Layer, 웹 브라우저의 암호화 통신에 사용되는 보안프로토콜',
    n.aliases = ['SSL'];

MERGE (n:Concept {id: 'pgp'})
SET     n.name = 'PGP',
    n.name_kr = 'PGP',
    n.domain = 'SE',
    n.definition = 'Pretty Good Privacy, 이메일/전자서명 암호화. 전자우편 보안의 사실상 표준',
    n.aliases = ['PGP'];

MERGE (n:Concept {id: 'mime'})
SET     n.name = 'MIME',
    n.name_kr = 'MIME',
    n.domain = 'SE',
    n.definition = 'Multipurpose Internet Mail Extensions, 전자우편을 위한 인터넷 표준 포멧',
    n.aliases = ['MIME'];

MERGE (n:Technology {id: 'ssh'})
SET     n.name = 'SSH',
    n.name_kr = 'SSH',
    n.domain = 'SE',
    n.definition = 'Secure Shell, 유닉스 시스템 암호화 통신 제공',
    n.aliases = ['SSH'];

MERGE (n:Concept {id: 'keberous'})
SET     n.name = 'Keberous',
    n.name_kr = 'Keberous',
    n.domain = 'SE',
    n.definition = '신뢰된 사용자 인증',
    n.aliases = ['Keberous'];

MERGE (n:Technology {id: 'vpn'})
SET     n.name = 'VPN',
    n.name_kr = 'VPN',
    n.domain = 'SE',
    n.definition = 'Virtual Private Network, 인터넷상에서 2노드간 암호화 통신 제공',
    n.aliases = ['VPN'];

// --- 관계 ---

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'switch_jamming'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'arp_redirect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'icmp_redirect'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'telnet_,_rlogin'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Technology {id: 'http'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'snmp'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: '암호화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Technology {id: 'ssl'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'pgp'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'mime'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Technology {id: 'ssh'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Concept {id: 'keberous'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Technology {id: 'vpn'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Document {id: 'SE_032.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'sniffing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'switch_jamming'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_redirect'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'icmp_redirect'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'telnet_,_rlogin'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'http'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snmp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssl'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pgp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mime'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ssh'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'keberous'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'vpn'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_033: 부채널공격
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_033'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '부채널공격'})
SET     n.name = '부채널공격',
    n.name_kr = '부채널공격',
    n.domain = 'SE';

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = 'Hacking',
    n.domain = 'SE',
    n.aliases = ['Hacking'];

MERGE (n:Concept {id: '침해공격'})
SET     n.name = '침해공격',
    n.name_kr = '침해공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '비침해공격'})
SET     n.name = '비침해공격',
    n.name_kr = '비침해공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '무작위성'})
SET     n.name = '무작위성',
    n.name_kr = '무작위성',
    n.domain = 'SE';

MERGE (n:Concept {id: '블라인딩'})
SET     n.name = '블라인딩',
    n.name_kr = '블라인딩',
    n.domain = 'SE';

MERGE (n:Concept {id: '마스킹'})
SET     n.name = '마스킹',
    n.name_kr = '마스킹',
    n.domain = 'SE';

MERGE (n:Concept {id: '부채널_분석_시스템'})
SET     n.name = '부채널 분석 시스템',
    n.name_kr = '부채널 분석 시스템',
    n.domain = 'SE';

MERGE (n:Concept {id: '공격_유형'})
SET     n.name = '공격 유형',
    n.name_kr = '공격 유형',
    n.domain = 'SE';

MERGE (n:Concept {id: '세부_공격기법'})
SET     n.name = '세부 공격기법',
    n.name_kr = '세부 공격기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '상세'})
SET     n.name = '상세',
    n.name_kr = '상세',
    n.domain = 'SE';

MERGE (n:Concept {id: '부채널_공격_기법'})
SET     n.name = '부채널 공격 기법',
    n.name_kr = '부채널 공격 기법',
    n.domain = 'SE';

MERGE (n:Concept {id: '세부_공격_사례'})
SET     n.name = '세부 공격 사례',
    n.name_kr = '세부 공격 사례',
    n.domain = 'SE';

MERGE (n:Concept {id: '침해_공격'})
SET     n.name = '침해 공격',
    n.name_kr = '침해 공격',
    n.domain = 'SE',
    n.definition = 'Tampering Attack';

MERGE (n:Concept {id: '비_침해_공격'})
SET     n.name = '비 침해 공격',
    n.name_kr = '비 침해 공격',
    n.domain = 'SE',
    n.definition = 'Timing Analysis Attack';

MERGE (n:Concept {id: 'dfa'})
SET     n.name = 'DFA',
    n.name_kr = 'DFA',
    n.domain = 'SE',
    n.definition = 'Differential Fault Analysis(고장 이용 해석) - IC 카드 등의 계산 오류',
    n.aliases = ['DFA'];

MERGE (n:Concept {id: 'glitch_attack'})
SET     n.name = 'Glitch Attack',
    n.name_kr = 'Glitch Attack',
    n.domain = 'SE',
    n.definition = '플립플롭 회로 등의 오동작 시킴',
    n.aliases = ['Glitch Attack'];

MERGE (n:Concept {id: 'tempest'})
SET     n.name = 'TEMPEST',
    n.name_kr = 'TEMPEST',
    n.domain = 'SE',
    n.definition = '과도한 전자기 펄스 해석 - 전자기적 신호 측정',
    n.aliases = ['TEMPEST'];

MERGE (n:Concept {id: 'electromagnetic_attack'})
SET     n.name = 'Electromagnetic Attack',
    n.name_kr = 'EM 공격법',
    n.domain = 'SE',
    n.definition = '보호막 층의 손상이나 전기적 접촉 없이 디바이스에 접근을 하는 방법',
    n.aliases = ['Electromagnetic Attack', 'EM 공격법'];

MERGE (n:Concept {id: 'power_consumption_attack'})
SET     n.name = 'Power Consumption Attack',
    n.name_kr = 'Power Consumption Attack',
    n.domain = 'SE',
    n.definition = '전력 해석 - SPA(Simple Power Analysis) - DPA(Differential Power Analysis) - HO-DPA(High Order Differential Power Analysis)',
    n.aliases = ['Power Consumption Attack'];

// --- 관계 ---

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '침해공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '비침해공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '무작위성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '블라인딩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '마스킹'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '부채널_분석_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '공격_유형'})
MERGE (b:Concept {id: '세부_공격기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '공격_유형'})
MERGE (b:Concept {id: '상세'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '공격_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_공격기법'})
MERGE (b:Concept {id: '상세'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '세부_공격기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '상세'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널_공격_기법'})
MERGE (b:Concept {id: '세부_공격_사례'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '부채널_공격_기법'})
MERGE (b:Concept {id: '세부_공격기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '부채널_공격_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '세부_공격_사례'})
MERGE (b:Concept {id: '세부_공격기법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '세부_공격_사례'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '세부_공격기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '침해_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: '비_침해_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'dfa'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'glitch_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'tempest'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'electromagnetic_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Concept {id: 'power_consumption_attack'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Document {id: 'SE_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '부채널공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침해공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비침해공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무작위성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '블라인딩'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마스킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부채널_분석_시스템'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_유형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_공격기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상세'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부채널_공격_기법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세부_공격_사례'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침해_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비_침해_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dfa'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'glitch_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tempest'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'electromagnetic_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'power_consumption_attack'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_034: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_034'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_035: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_035'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_036: 4
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_036'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '보안'})
SET     n.name = '보안',
    n.name_kr = '보안',
    n.domain = 'SE';

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해킹',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해킹'];

MERGE (n:Threat {id: 'arp_스푸핑_공격'})
SET     n.name = 'ARP 스푸핑 공격',
    n.name_kr = 'ARP 스푸핑 공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터링크계층'})
SET     n.name = '데이터링크계층',
    n.name_kr = '데이터링크계층',
    n.domain = 'SE';

MERGE (n:Concept {id: 'arp_rarp'})
SET     n.name = 'ARP/RARP(MAC <-> IP)',
    n.name_kr = 'ARP/RARP(MAC <-> IP)',
    n.domain = 'SE';

MERGE (n:Concept {id: '모든주소확인'})
SET     n.name = '모든주소확인(arp –a)',
    n.name_kr = '모든주소확인(arp –a)',
    n.domain = 'SE';

MERGE (n:Concept {id: '정적주소할당'})
SET     n.name = '정적주소할당(arp –s)',
    n.name_kr = '정적주소할당(arp –s)',
    n.domain = 'SE';

MERGE (n:Concept {id: '서버존'})
SET     n.name = '서버존',
    n.name_kr = '서버존',
    n.domain = 'SE';

MERGE (n:Concept {id: '클라이언트존'})
SET     n.name = '클라이언트존',
    n.name_kr = '클라이언트존',
    n.domain = 'SE';

MERGE (n:Concept {id: 'arp_reply'})
SET     n.name = 'ARP Reply',
    n.name_kr = 'ARP Reply',
    n.domain = 'SE',
    n.aliases = ['ARP Reply'];

// --- 관계 ---

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Concept {id: '보안'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'arp_스푸핑_공격'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: '데이터링크계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: 'arp_rarp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: '모든주소확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: '정적주소할당'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: '서버존'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: '클라이언트존'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Concept {id: 'arp_reply'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '4'})
MERGE (b:Document {id: 'SE_036'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'arp_스푸핑_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터링크계층'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_rarp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모든주소확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정적주소할당'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서버존'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라이언트존'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_reply'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_037: RARP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_037'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'rarp'})
SET     n.name = 'RARP',
    n.name_kr = 'RARP',
    n.domain = 'SE',
    n.aliases = ['RARP'];

MERGE (n:Concept {id: '프로토콜_목록'})
SET     n.name = '프로토콜 목록',
    n.name_kr = '프로토콜 목록',
    n.domain = 'SE';

MERGE (n:Concept {id: 'mac_주소'})
SET     n.name = 'MAC 주소',
    n.name_kr = 'MAC 주소',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ip_주소'})
SET     n.name = 'IP 주소',
    n.name_kr = 'IP 주소',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'rarp'})
MERGE (b:Concept {id: '프로토콜_목록'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rarp'})
MERGE (b:Concept {id: 'mac_주소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rarp'})
MERGE (b:Concept {id: 'ip_주소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rarp'})
MERGE (b:Document {id: 'SE_037'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rarp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로토콜_목록'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mac_주소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ip_주소'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_038: ARP Poisoning
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_038'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'arp_poisoning'})
SET     n.name = 'ARP Poisoning',
    n.name_kr = 'ARP Poisoning',
    n.domain = 'SE',
    n.aliases = ['ARP Poisoning'];

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: 'arp_spoofing'})
SET     n.name = 'ARP Spoofing',
    n.name_kr = 'ARP Spoofing',
    n.domain = 'SE',
    n.aliases = ['ARP Spoofing'];

MERGE (n:Concept {id: '발생증상'})
SET     n.name = '발생증상',
    n.name_kr = '발생증상',
    n.domain = 'SE',
    n.definition = '피해 시스템의 증상';

MERGE (n:Concept {id: '공격_시시템의_증상'})
SET     n.name = '공격 시시템의 증상',
    n.name_kr = '공격 시시템의 증상',
    n.domain = 'SE',
    n.definition = '네트워크 사용량 증가 - 정기적인 ARP 패킷 발송';

MERGE (n:Concept {id: '피해_시스템에서의_탐지방안'})
SET     n.name = '피해 시스템에서의 탐지방안',
    n.name_kr = '피해 시스템에서의 탐지방안',
    n.domain = 'SE',
    n.definition = 'ARP table의 MAC 주소 중복확인';

MERGE (n:Threat {id: '송수신_패킷에서_악성코드_유무_검사'})
SET     n.name = '송수신 패킷에서 악성코드 유무 검사',
    n.name_kr = '송수신 패킷에서 악성코드 유무 검사',
    n.domain = 'SE',
    n.definition = 'tcpdump, ethereal 등의 도구를 사용하여 패킷 분석 - 패킷 내에 비정상적인 iframe등을 이용한 악성코드 유무 확인';

MERGE (n:Concept {id: '비정상적_arp_패킷_수신_확인'})
SET     n.name = '비정상적 ARP 패킷 수신 확인',
    n.name_kr = '비정상적 ARP 패킷 수신 확인',
    n.domain = 'SE',
    n.definition = '필요 이상의 ARP reply 패킷 수신(request 없는 reply 발생)';

MERGE (n:Concept {id: '공격_시스템에서의_탐지방안'})
SET     n.name = '공격 시스템에서의 탐지방안',
    n.name_kr = '공격 시스템에서의 탐지방안',
    n.domain = 'SE',
    n.definition = '패킷 캡쳐 프로그램 존재 유무 확인';

MERGE (n:Concept {id: '네트워크_어댑터의_동작_상태_확인'})
SET     n.name = '네트워크 어댑터의 동작 상태 확인',
    n.name_kr = '네트워크 어댑터의 동작 상태 확인',
    n.domain = 'SE',
    n.definition = 'NIC 동작상태가 promiscuous mode인지 확인(sniffing 상태) - 해당 시스템에서 필요에 의해 활성화되어 있는지 확인';

MERGE (n:Concept {id: 'arp_패킷_관찰'})
SET     n.name = 'ARP 패킷 관찰',
    n.name_kr = 'ARP 패킷 관찰',
    n.domain = 'SE',
    n.definition = '동일한 패킷이 한쌍씩 발생하는 경우 확인(가로챈 패킷 + 재전송 패킷)';

MERGE (n:Concept {id: '네트워크_장비에서의_탐지방안'})
SET     n.name = '네트워크 장비에서의 탐지방안',
    n.name_kr = '네트워크 장비에서의 탐지방안',
    n.domain = 'SE',
    n.definition = 'ARP table 확인';

MERGE (n:Concept {id: '패킷_모니터링_기능_활용'})
SET     n.name = '패킷 모니터링 기능 활용',
    n.name_kr = '패킷 모니터링 기능 활용',
    n.domain = 'SE',
    n.definition = '불필요한 ARP 패킷 탐지 - 호스트의 MAC 주소가 자주 변경되는지 확인';

MERGE (n:Concept {id: '시스템에서의_방지_대책'})
SET     n.name = '시스템에서의 방지 대책',
    n.name_kr = '시스템에서의 방지 대책',
    n.domain = 'SE',
    n.definition = '정적인 ARP table 관리';

MERGE (n:Concept {id: '보안수준_강화'})
SET     n.name = '보안수준 강화',
    n.name_kr = '보안수준 강화',
    n.domain = 'SE',
    n.definition = '시스템의 보안 패치와 보안 체크리스트 활용한 정기점검';

MERGE (n:Technology {id: '중요_패킷_암호화'})
SET     n.name = '중요 패킷 암호화',
    n.name_kr = '중요 패킷 암호화',
    n.domain = 'SE',
    n.definition = 'SSL 기반 보안서버를 구축하여 트래픽 암호화';

MERGE (n:Concept {id: '네트워크_장비에서의_방지_대책'})
SET     n.name = '네트워크 장비에서의 방지 대책',
    n.name_kr = '네트워크 장비에서의 방지 대책',
    n.domain = 'SE',
    n.definition = 'MAC Flooding 제어(정적 MAC 주소관리)';

MERGE (n:Concept {id: 'arp_패킷_검사'})
SET     n.name = 'ARP 패킷 검사',
    n.name_kr = 'ARP 패킷 검사',
    n.domain = 'SE',
    n.definition = '스위치에 수신되는 ARP 패킷들을 검사하여지정된 경로로만 ARP 패킷이 전송되도록 하는 기능 활용 (ARP Inspection)';

MERGE (n:Concept {id: '사설_vlan_기능_활용'})
SET     n.name = '사설 VLAN 기능 활용',
    n.name_kr = '사설 VLAN 기능 활용',
    n.domain = 'SE',
    n.definition = '동일 서브 네트워크이지만, 지정한 호스트만 통신을 가능하도록 하는 사설 VLAN 기능 활용 - 서로 통신할 필요가 없는 서버들을 격리시켜 운용';

// --- 관계 ---

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '해킹'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: 'arp_spoofing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '발생증상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '공격_시시템의_증상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '피해_시스템에서의_탐지방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Threat {id: '송수신_패킷에서_악성코드_유무_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '비정상적_arp_패킷_수신_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '공격_시스템에서의_탐지방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '네트워크_어댑터의_동작_상태_확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: 'arp_패킷_관찰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '네트워크_장비에서의_탐지방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '패킷_모니터링_기능_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '시스템에서의_방지_대책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '보안수준_강화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Technology {id: '중요_패킷_암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '네트워크_장비에서의_방지_대책'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: 'arp_패킷_검사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Concept {id: '사설_vlan_기능_활용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Document {id: 'SE_038'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'arp_poisoning'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_spoofing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '발생증상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_시시템의_증상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해_시스템에서의_탐지방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '송수신_패킷에서_악성코드_유무_검사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비정상적_arp_패킷_수신_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_시스템에서의_탐지방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_어댑터의_동작_상태_확인'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_패킷_관찰'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_장비에서의_탐지방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '패킷_모니터링_기능_활용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템에서의_방지_대책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안수준_강화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '중요_패킷_암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_장비에서의_방지_대책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_패킷_검사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사설_vlan_기능_활용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_039: ARP Redirect
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_039'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'arp_redirect'})
SET     n.name = 'ARP Redirect',
    n.name_kr = 'ARP Redirect',
    n.domain = 'SE',
    n.aliases = ['ARP Redirect'];

MERGE (n:Concept {id: '해킹'})
SET     n.name = '해킹',
    n.name_kr = '해킹',
    n.domain = 'SE';

MERGE (n:Concept {id: 'arp_spoofing'})
SET     n.name = 'ARP Spoofing',
    n.name_kr = 'ARP Spoofing',
    n.domain = 'SE',
    n.aliases = ['ARP Spoofing'];

// --- 관계 ---

MERGE (a:Concept {id: 'arp_redirect'})
MERGE (b:Concept {id: '해킹'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'arp_redirect'})
MERGE (b:Concept {id: 'arp_spoofing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'arp_redirect'})
MERGE (b:Document {id: 'SE_039'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'arp_redirect'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해킹'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'arp_spoofing'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_040: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_040'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_041: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_041'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_042: 카나리 단어, ASLR
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_042'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '카나리_단어,_aslr'})
SET     n.name = '카나리 단어, ASLR',
    n.name_kr = '카나리 단어, ASLR',
    n.domain = 'SE';

MERGE (n:Threat {id: '공격대응/buffer_overflow'})
SET     n.name = '공격대응/Buffer overflow',
    n.name_kr = '공격대응/Buffer overflow',
    n.domain = 'SE';

MERGE (n:Concept {id: '카나리'})
SET     n.name = '카나리',
    n.name_kr = '카나리',
    n.domain = 'SE';

MERGE (n:Concept {id: 'aslr'})
SET     n.name = 'ASLR',
    n.name_kr = 'ASLR',
    n.domain = 'SE',
    n.aliases = ['ASLR'];

MERGE (n:Concept {id: 'stack_guard'})
SET     n.name = 'Stack Guard',
    n.name_kr = 'Stack Guard',
    n.domain = 'SE',
    n.aliases = ['Stack Guard'];

MERGE (n:Concept {id: 'stack_shield'})
SET     n.name = 'Stack Shield',
    n.name_kr = 'Stack Shield',
    n.domain = 'SE',
    n.aliases = ['Stack Shield'];

MERGE (n:Concept {id: 'random_canary'})
SET     n.name = 'Random canary',
    n.name_kr = 'Random canary',
    n.domain = 'SE',
    n.definition = '공격자로부터 canary를 보호하기 위해 canary를 random하게 생성하여 전역 변수로 매핑되지 않는 페이지에 저장되어 canary를 읽으려는 시도는 segmentation fault를 유발하여 오버플로우 경고',
    n.aliases = ['Random canary'];

MERGE (n:Concept {id: 'random_xor_canary'})
SET     n.name = 'Random XOR canary',
    n.name_kr = 'Random XOR canary',
    n.domain = 'SE',
    n.definition = '제어 데이터의 모든 부문 또는 일부를 XOR하여 canary 생성',
    n.aliases = ['Random XOR canary'];

MERGE (n:Concept {id: 'allocation'})
SET     n.name = 'Allocation',
    n.name_kr = 'Allocation',
    n.domain = 'SE',
    n.definition = '오프셋 선택',
    n.aliases = ['Allocation'];

MERGE (n:Concept {id: 'most_significant_bit'})
SET     n.name = 'Most Significant Bit',
    n.name_kr = 'MSB 랜덤계산제외',
    n.domain = 'SE',
    n.definition = '스택과 힙이 서로 충돌하지 않도록 배치 - 라이브러리가 스택, 힙이 충돌하지 않도록 배치',
    n.aliases = ['Most Significant Bit', 'MSB 랜덤계산제외'];

MERGE (n:Concept {id: 'rerandomize'})
SET     n.name = 'Rerandomize',
    n.name_kr = 'Rerandomize',
    n.domain = 'SE',
    n.definition = '셔플',
    n.aliases = ['Rerandomize'];

MERGE (n:Concept {id: '무작위화'})
SET     n.name = '무작위화',
    n.name_kr = '무작위화',
    n.domain = 'SE',
    n.definition = 'mmap() 베이스와 프로그램의 실행가능 베이스를 무작위화';

// --- 관계 ---

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: '카나리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'aslr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'stack_guard'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'stack_shield'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'random_canary'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'random_xor_canary'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'allocation'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'most_significant_bit'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: 'rerandomize'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Concept {id: '무작위화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Document {id: 'SE_042'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '카나리_단어,_aslr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '공격대응/buffer_overflow'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '카나리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'aslr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stack_guard'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'stack_shield'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'random_canary'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'random_xor_canary'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'allocation'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'most_significant_bit'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rerandomize'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무작위화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_043: Dos, DDos
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_043'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Threat {id: 'dos,_ddos'})
SET     n.name = 'Dos, DDos',
    n.name_kr = 'Dos, DDos',
    n.domain = 'SE';

MERGE (n:Concept {id: 'se'})
SET     n.name = 'SE',
    n.name_kr = '보안',
    n.domain = 'SE',
    n.aliases = ['SE', '보안'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해킹',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해킹'];

MERGE (n:Technology {id: 'tcp_udp_flooding'})
SET     n.name = 'TCP/UDP Flooding',
    n.name_kr = 'TCP/UDP Flooding',
    n.domain = 'SE',
    n.aliases = ['TCP/UDP Flooding'];

MERGE (n:Concept {id: '3_way_hand_shake'})
SET     n.name = '3-Way Hand Shake',
    n.name_kr = '3-Way Hand Shake',
    n.domain = 'SE';

MERGE (n:Threat {id: 'drdos'})
SET     n.name = 'DRDoS',
    n.name_kr = 'DRDoS',
    n.domain = 'SE',
    n.aliases = ['DRDoS'];

MERGE (n:Technology {id: 'tcp_traffic_flooding'})
SET     n.name = 'TCP Traffic Flooding',
    n.name_kr = 'TCP Traffic Flooding',
    n.domain = 'SE',
    n.aliases = ['TCP Traffic Flooding'];

MERGE (n:Threat {id: 'hashdos'})
SET     n.name = 'HashDos',
    n.name_kr = 'HashDos',
    n.domain = 'SE',
    n.aliases = ['HashDos'];

MERGE (n:Technology {id: 'tcp_syn_flooding_공격'})
SET     n.name = 'TCP SYN Flooding 공격',
    n.name_kr = 'TCP SYN Flooding 공격',
    n.domain = 'SE',
    n.definition = 'TCP 프로토콜의 3-Way Hand Shake 악용 ① 서버에 수천 개의 TCP 접속(SYN) 요청 메시지를 보냄, 이 때 패킷 내부의 소스 IP 주소를 속이거나 인터넷 상에서 사용하지 않는 IP 주소 값으로 변형 ② 서버는 위조된 클라이언트 IP 주소로 SYN/ACK 응답을 보낸 후, 클라이언트로부터 ACK가 올 때까지 기다리게 되고, 서버는 ACK 메';

MERGE (n:Technology {id: 'tcp_syn_flooding_대처방법'})
SET     n.name = 'TCP SYN Flooding 대처방법',
    n.name_kr = 'TCP SYN Flooding 대처방법',
    n.domain = 'SE',
    n.definition = '1) 백로그 큐를 늘려준다(임시방편 근본적인 해결방안 아님) 2) Syncookies 기능을 사용: 변형 3 Way handshake로 TCP헤더 특정부분 암호화 3) 시스코 TCP 인터셉트 솔루션 사용';

MERGE (n:Threat {id: 'smurfing_dos_공격'})
SET     n.name = 'Smurfing DoS 공격',
    n.name_kr = 'Smurfing DoS 공격',
    n.domain = 'SE',
    n.definition = '광범위한 효과로 인해, 가장 무서운 DoS 방법 중의 하나이며 IP와 ICMP특징을 이용(echo 메시지로 인한 대량 트래픽 발생) - 직접적인 브로드캐스트와 세가지 구성요소인 공격자, 증폭 네트워크, 표적을 최대한 이용 ※ ICMP(Internet Control Message Protocol): 호스트 서버와 인터넷 게이트웨이 사이에서 메시지를 제어하고';

MERGE (n:Technology {id: 'trinoo'})
SET     n.name = 'Trinoo',
    n.name_kr = 'Trinoo',
    n.domain = 'SE',
    n.definition = '많은 소스로부터 통합된 UDP flood서비스 거부공격을 유발 하는데 사용되는 도구 - 몇 개의 서버들과 많은 수의 클라이언트로 이루어짐 - 공격자는 마스터(서버)에게 하나 혹은 여러 개의 IP주소를 대상으로 서비스 거부 공격을 수행하라고 명령을 내리면 마스터는 특정한 기간으로 여러 개의 IP주소를 공격하도록 데몬과 통신함',
    n.aliases = ['Trinoo'];

MERGE (n:Concept {id: '서비스_이용_절차'})
SET     n.name = '서비스 이용 절차',
    n.name_kr = '서비스 이용 절차',
    n.domain = 'SE';

MERGE (n:Concept {id: '서비스대상'})
SET     n.name = '서비스대상',
    n.name_kr = '서비스대상',
    n.domain = 'SE',
    n.definition = '“중소기업기본법 제2조” 및 “중소기업기본법 시행령 제3조”에 해당하는 중소기업';

MERGE (n:Concept {id: '서비스_이용기간'})
SET     n.name = '서비스 이용기간',
    n.name_kr = '서비스 이용기간',
    n.domain = 'SE',
    n.definition = '방어 서비스 적용 후 1개월 - 재공격이 예상되는 경우 지속적으로 1개월 연장';

MERGE (n:Technology {id: '관리적_측면'})
SET     n.name = '관리적 측면',
    n.name_kr = '관리적 측면',
    n.domain = 'SE',
    n.definition = 'HTTP 계열 방어정책';

MERGE (n:Concept {id: 'whitelist_관리'})
SET     n.name = 'WhiteList 관리',
    n.name_kr = 'WhiteList 관리',
    n.domain = 'SE',
    n.definition = '관리자 IP 혹은 지속적으로 요청이 많은 정상적인 URL 및 IP 기반의 예외 설정';

MERGE (n:Concept {id: '이상행위_ip_관리'})
SET     n.name = '이상행위 IP 관리',
    n.name_kr = '이상행위 IP 관리',
    n.domain = 'SE',
    n.definition = '웹서버 구간 내 이상행위 시도 좀비PC IP에 대한 사이버대피소 방어서비스 인입 구간 차단 설정';

MERGE (n:Concept {id: '기술적_측면'})
SET     n.name = '기술적 측면',
    n.name_kr = '기술적 측면',
    n.domain = 'SE',
    n.definition = 'DNS 정보 변경';

MERGE (n:Concept {id: 'cache_적용'})
SET     n.name = 'CACHE 적용',
    n.name_kr = 'CACHE 적용',
    n.domain = 'SE',
    n.definition = '정적 컨텐츠인 멀티미디어 파일 확장자의 경우 캐시 서비스 통해 속도 저하 문제 대응';

MERGE (n:Concept {id: '부하분산'})
SET     n.name = '부하분산',
    n.name_kr = '부하분산',
    n.domain = 'SE',
    n.definition = 'Least Connection 방식의 Load Balancing 기술 적용';

MERGE (n:Threat {id: '공격_개념'})
SET     n.name = '공격 개념',
    n.name_kr = '공격 개념',
    n.domain = 'SE',
    n.definition = 'SSDP Search 요청 명령을 증폭 대량 생성 후 스푸핑(spoofing) 된 피해자 서버로 대규모 응답 집중시키는 IoT 가용성 공격 기법';

MERGE (n:Threat {id: 'ssdp_drdos_공격원리와_절차'})
SET     n.name = 'SSDP DRDoS 공격원리와 절차',
    n.name_kr = 'SSDP DRDoS 공격원리와 절차',
    n.domain = 'SE';

MERGE (n:Threat {id: 'coap_drdos_공격원리와_절차'})
SET     n.name = 'CoAP DRDoS 공격원리와 절차',
    n.name_kr = 'CoAP DRDoS 공격원리와 절차',
    n.domain = 'SE';

MERGE (n:Threat {id: 'ddos'})
SET     n.name = 'DDoS',
    n.name_kr = 'DDoS',
    n.domain = 'SE',
    n.aliases = ['DDoS'];

MERGE (n:Concept {id: '임계치_설정'})
SET     n.name = '임계치 설정',
    n.name_kr = '임계치 설정',
    n.domain = 'SE',
    n.definition = '접속 임계치 설정';

MERGE (n:Technology {id: '우회_및_폐기'})
SET     n.name = '우회 및 폐기',
    n.name_kr = '우회 및 폐기',
    n.domain = 'SE',
    n.definition = 'HTTP 302 Redirect 활용';

MERGE (n:Concept {id: '계층'})
SET     n.name = '계층',
    n.name_kr = '계층',
    n.domain = 'SE';

MERGE (n:Concept {id: '공격_유형'})
SET     n.name = '공격 유형',
    n.name_kr = '공격 유형',
    n.domain = 'SE';

MERGE (n:Concept {id: '①_syn_flooding'})
SET     n.name = '① SYN Flooding',
    n.name_kr = '① SYN Flooding',
    n.domain = 'SE',
    n.definition = '① 공격자는 다량의 SYN 패킷을 서버로 전달 ② 서버의 대기큐(Backlog Queue)를 가득 채워 새로운 클라이언트의 연결 요청을 무시하도록 하여 장애를 유발 시키는 공격';

MERGE (n:Technology {id: '②_tcp_flag_flooding'})
SET     n.name = '② TCP Flag Flooding',
    n.name_kr = '② TCP Flag Flooding',
    n.domain = 'SE',
    n.definition = 'TCP의 Flag 값을 임의로 조작하여 SYN, ACK, FIN, RST와 같이 여러 형태의 패킷을 생성하여 송신 한 후 수신대상이 이 패킷을 검증하기 위해 서버 자원 소모';

MERGE (n:Threat {id: '③_tcp_session'})
SET     n.name = '③ TCP Session',
    n.name_kr = '③ TCP Session',
    n.domain = 'SE',
    n.definition = '① TCP 세션 연결 유지 DDoS 공격 ② TCP 세션 연결/해제를 반복하는 DDoS 공격 ③ TCP 세션 연결 후 정상적인 트랜잭션처럼 보이는 트래픽을 발송하는 DDoS 유발';

MERGE (n:Threat {id: '①_slow_http_post_dos'})
SET     n.name = '① Slow HTTP POST DoS',
    n.name_kr = '① Slow HTTP POST DoS',
    n.domain = 'SE',
    n.definition = '① HTTP POST 지시자를 이용하여 서버로 전달할 대량의 데이터 전송 ② 서버는 POST 데이터가 모두 수신하지 않았다고 판단하여 연결을 장시간 유지';

MERGE (n:Threat {id: 'sloworis'})
SET     n.name = 'Sloworis',
    n.name_kr = '② Slow HTTP Header Dos',
    n.domain = 'SE',
    n.definition = '① 웹서버는 HTTP의 헤더 부분을 먼저 수신하여 이후 수신할 데이터의 종류 판단 ② 헤더 부분을 비정상적으로 조작하여 웹서버가 헤더 구분할 수 없도록 함. ③ 웹 서버는 헤더 정보가 모두 전달되지 않았다고 판단하여 연결 장시간 유지',
    n.aliases = ['Sloworis', '② Slow HTTP Header Dos'];

MERGE (n:Threat {id: '③_slow_http_read_dos'})
SET     n.name = '③ Slow HTTP Read DoS',
    n.name_kr = '③ Slow HTTP Read DoS',
    n.domain = 'SE';

MERGE (n:Concept {id: '취약_대상'})
SET     n.name = '취약 대상',
    n.name_kr = '취약 대상',
    n.domain = 'SE',
    n.definition = 'Java : All version JRuby : 1.65 이하 PHP : 5.38 / 5.4.0 이하 Rython : All version Ruby : 1.87-p356이하 버젼 Apache Geronimo : All version Apache Tomcat : 5.5.34 / 6.034 / 7.022 및 이하 버젼 Oracle Glassfish : 3.1.';

MERGE (n:Concept {id: '①_임계치_기반의_syn_flooding_차단'})
SET     n.name = '① 임계치 기반의 SYN Flooding 차단',
    n.name_kr = '① 임계치 기반의 SYN Flooding 차단',
    n.domain = 'SE',
    n.definition = '방화벽의 IP당 SYN 요청에 대한 PPS 임계치를 단계적으로 조정하여 SYN Flooding을 차단';

MERGE (n:Concept {id: '②_first_syn_drop_설정에_의한_차단'})
SET     n.name = '② First SYN Drop 설정에 의한 차단',
    n.name_kr = '② First SYN Drop 설정에 의한 차단',
    n.domain = 'SE',
    n.definition = 'SYN 패킷을 보내는 클라이언트가 진짜 존재하는지를 파악하여 차단 - 첫 번째 SYN을 Drop하여 재요청 패킷이 도착하는지를 확인하여 Spoofing 여부를 판단';

MERGE (n:Technology {id: '②_syn_이외의_flooding'})
SET     n.name = '② SYN 이외의 Flooding',
    n.name_kr = '② SYN 이외의 Flooding',
    n.domain = 'SE',
    n.definition = '① 먼저 정상적인 TCP 세션 연결 이후 정상적인 트랜잭션(Transaction)이 수행되는지에 대해 검증 ② 정상적인 트랜잭션이 이루어질 경우 서버로 전달 ③ 정상적인 트랜잭션 없이 TCP 세션 연결만 수행할 경우에는 서버로 전달하지 않음 (각 트래픽 유형별 임계치를 통하여 과도한 TCP 세션 연결 발생 시 차단)';

MERGE (n:Concept {id: '②_l7_스위치의_임계치_설정'})
SET     n.name = '② L7 스위치의 임계치 설정',
    n.name_kr = '② L7 스위치의 임계치 설정',
    n.domain = 'SE',
    n.definition = 'L7 스위치를 운영하는 경우, IP당 Connection Limit을 설정하여 하나의 Client와 Serve가 맺을 수 있는 Connection 수치를 조절하여 차단';

MERGE (n:Concept {id: '대역폭_공격'})
SET     n.name = '대역폭 공격',
    n.name_kr = '대역폭 공격',
    n.domain = 'SE';

MERGE (n:Concept {id: '자원_소진_공격'})
SET     n.name = '자원 소진 공격',
    n.name_kr = '자원 소진 공격',
    n.domain = 'SE';

MERGE (n:Concept {id: 'web/db_부하_공격'})
SET     n.name = 'Web/DB 부하 공격',
    n.name_kr = 'Web/DB 부하 공격',
    n.domain = 'SE';

MERGE (n:Threat {id: '랜섬웨어_측면'})
SET     n.name = '랜섬웨어 측면',
    n.name_kr = '랜섬웨어 측면',
    n.domain = 'SE',
    n.definition = '백업 체계 및 대응계획 수립';

MERGE (n:Technology {id: 'sandbox_edr'})
SET     n.name = 'SandBox/EDR',
    n.name_kr = 'SandBox/EDR',
    n.domain = 'SE',
    n.definition = '행위기반 SandBox와 EDR을 이용하여 잘 알려지지 않은 공격 및 변종 악성 코드 검사',
    n.aliases = ['SandBox/EDR'];

MERGE (n:Concept {id: 'anti_virus'})
SET     n.name = 'Anti-Virus',
    n.name_kr = 'Anti-Virus',
    n.domain = 'SE',
    n.definition = 'Anti-Virus 최신 버전 설치',
    n.aliases = ['Anti-Virus'];

MERGE (n:Threat {id: '침해사고_신고'})
SET     n.name = '침해사고 신고',
    n.name_kr = '침해사고 신고',
    n.domain = 'SE',
    n.definition = '랜섬웨어 침해대응센터에 즉시 신곻';

MERGE (n:Technology {id: '디도스_측면'})
SET     n.name = '디도스 측면',
    n.name_kr = '디도스 측면',
    n.domain = 'SE',
    n.definition = 'F/W, IPS/IDS';

MERGE (n:Technology {id: 'siem'})
SET     n.name = 'SIEM',
    n.name_kr = 'SIEM',
    n.domain = 'SE',
    n.definition = '통합된 관제 시스템 구축을 통한 NW 모니터링 및 사전 위협 알림',
    n.aliases = ['SIEM'];

MERGE (n:Threat {id: 'ip._port_차단'})
SET     n.name = 'IP. Port 차단',
    n.name_kr = 'IP. Port 차단',
    n.domain = 'SE',
    n.definition = 'DDoS 트래픽을 유발하는 IP 및 공격 서버의 IP, 서비스 Port 차단';

// --- 관계 ---

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Concept {id: 'se'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: 'hacking'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'tcp_udp_flooding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '3_way_hand_shake'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'tcp_traffic_flooding'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'hashdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'tcp_syn_flooding_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'tcp_syn_flooding_대처방법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'smurfing_dos_공격'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'trinoo'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '서비스_이용_절차'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '서비스대상'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '서비스_이용기간'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: '관리적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: 'whitelist_관리'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '이상행위_ip_관리'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '기술적_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: 'cache_적용'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '부하분산'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '공격_개념'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'ssdp_drdos_공격원리와_절차'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'coap_drdos_공격원리와_절차'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'ddos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'ddos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'drdos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '임계치_설정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: '우회_및_폐기'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '계층'})
MERGE (b:Concept {id: '공격_유형'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '계층'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '공격_유형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '①_syn_flooding'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: '②_tcp_flag_flooding'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '③_tcp_session'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '①_slow_http_post_dos'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'sloworis'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '③_slow_http_read_dos'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '취약_대상'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '①_임계치_기반의_syn_flooding_차단'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '②_first_syn_drop_설정에_의한_차단'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: '②_syn_이외의_flooding'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '②_l7_스위치의_임계치_설정'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '대역폭_공격'})
MERGE (b:Concept {id: '자원_소진_공격'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '대역폭_공격'})
MERGE (b:Concept {id: 'web/db_부하_공격'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '대역폭_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '자원_소진_공격'})
MERGE (b:Concept {id: 'web/db_부하_공격'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: '자원_소진_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: 'web/db_부하_공격'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '랜섬웨어_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'sandbox_edr'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Concept {id: 'anti_virus'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: '침해사고_신고'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: '디도스_측면'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Technology {id: 'siem'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Threat {id: 'ip._port_차단'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Document {id: 'SE_043'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Threat {id: 'dos,_ddos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'se'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_udp_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3_way_hand_shake'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'drdos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_traffic_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'hashdos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding_대처방법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'smurfing_dos_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'trinoo'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_이용_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_이용기간'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '관리적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'whitelist_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이상행위_ip_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cache_적용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부하분산'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '공격_개념'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'ssdp_drdos_공격원리와_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'coap_drdos_공격원리와_절차'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'ddos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '임계치_설정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '우회_및_폐기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계층'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_유형'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_syn_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '②_tcp_flag_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '③_tcp_session'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '①_slow_http_post_dos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'sloworis'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '③_slow_http_read_dos'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '취약_대상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '①_임계치_기반의_syn_flooding_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_first_syn_drop_설정에_의한_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '②_syn_이외의_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '②_l7_스위치의_임계치_설정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대역폭_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자원_소진_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'web/db_부하_공격'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '랜섬웨어_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'sandbox_edr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'anti_virus'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '침해사고_신고'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '디도스_측면'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'siem'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: 'ip._port_차단'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_044: TCP SYN Flooding
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_044'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Technology {id: 'tcp_syn_flooding'})
SET     n.name = 'TCP SYN Flooding',
    n.name_kr = 'TCP SYN Flooding',
    n.domain = 'SE',
    n.aliases = ['TCP SYN Flooding'];

MERGE (n:Concept {id: 'hacking'})
SET     n.name = 'Hacking',
    n.name_kr = '해킹',
    n.domain = 'SE',
    n.aliases = ['Hacking', '해킹'];

MERGE (n:Concept {id: '3_way_handshake'})
SET     n.name = '3 Way Handshake',
    n.name_kr = '3 Way Handshake',
    n.domain = 'SE';

MERGE (n:Concept {id: 'half_open'})
SET     n.name = 'Half Open',
    n.name_kr = 'Half Open',
    n.domain = 'SE',
    n.aliases = ['Half Open'];

MERGE (n:Concept {id: 'backlog_큐'})
SET     n.name = 'Backlog 큐',
    n.name_kr = 'Backlog 큐',
    n.domain = 'SE';

MERGE (n:Concept {id: 'syncookie'})
SET     n.name = 'syncookie',
    n.name_kr = 'syncookie',
    n.domain = 'SE',
    n.aliases = ['syncookie'];

// --- 관계 ---

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Concept {id: '3_way_handshake'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Concept {id: 'half_open'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Concept {id: 'backlog_큐'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Concept {id: 'syncookie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Document {id: 'SE_044'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'tcp_syn_flooding'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hacking'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3_way_handshake'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'half_open'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backlog_큐'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'syncookie'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 320개
// 관계: 685개
// ================================================================