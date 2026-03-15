// ================================================================
// SV 도메인 (SV_251 ~ SV_300) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SV_235.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_235.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_236: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_236'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_237: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_237'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_238: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_238'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_245: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_245'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_246: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_246'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_247: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_247'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_248: 스마트 헬스케어
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_248'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '스마트_헬스케어'})
SET     n.name = '스마트 헬스케어',
    n.name_kr = '스마트 헬스케어',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'smart_health'})
SET     n.name = 'Smart Health',
    n.name_kr = 'Smart Health',
    n.domain = 'SV',
    n.aliases = ['Smart Health'];

MERGE (n:Concept {id: 'emr'})
SET     n.name = 'EMR',
    n.name_kr = 'EMR',
    n.domain = 'SV',
    n.aliases = ['EMR'];

MERGE (n:Concept {id: 'ocs'})
SET     n.name = 'OCS',
    n.name_kr = 'OCS',
    n.domain = 'SV',
    n.aliases = ['OCS'];

MERGE (n:Concept {id: 'pacs'})
SET     n.name = 'PACS',
    n.name_kr = 'PACS',
    n.domain = 'SV',
    n.aliases = ['PACS'];

MERGE (n:Concept {id: 'dicom'})
SET     n.name = 'DICOM',
    n.name_kr = 'DICOM',
    n.domain = 'SV',
    n.aliases = ['DICOM'];

MERGE (n:Concept {id: 'hl'})
SET     n.name = 'HL',
    n.name_kr = 'HL',
    n.domain = 'SV',
    n.aliases = ['HL'];

MERGE (n:Concept {id: '7개인맞춤형'})
SET     n.name = '7개인맞춤형',
    n.name_kr = '7개인맞춤형',
    n.domain = 'SV';

MERGE (n:Concept {id: 'phd'})
SET     n.name = 'PHD',
    n.name_kr = 'PHD',
    n.domain = 'SV',
    n.aliases = ['PHD'];

MERGE (n:Concept {id: 'phi'})
SET     n.name = 'PHI',
    n.name_kr = 'PHI',
    n.domain = 'SV',
    n.aliases = ['PHI'];

MERGE (n:Concept {id: 'pha'})
SET     n.name = 'PHA',
    n.name_kr = 'PHA',
    n.domain = 'SV',
    n.aliases = ['PHA'];

MERGE (n:Concept {id: 'cdss'})
SET     n.name = 'CDSS',
    n.name_kr = 'CDSS',
    n.domain = 'SV',
    n.aliases = ['CDSS'];

MERGE (n:Concept {id: 'telehealthcare'})
SET     n.name = '원격의료',
    n.name_kr = '원격의료',
    n.domain = 'SV';

MERGE (n:Concept {id: '의료진단'})
SET     n.name = '의료진단',
    n.name_kr = '의료진단',
    n.domain = 'SV';

MERGE (n:Concept {id: '주간기술동향'})
SET     n.name = '주간기술동향',
    n.name_kr = '주간기술동향',
    n.domain = 'SV';

MERGE (n:Concept {id: '정보통신정책연구원'})
SET     n.name = '정보통신정책연구원',
    n.name_kr = '정보통신정책연구원',
    n.domain = 'SV';

MERGE (n:Concept {id: '의료_·_ict_융합_관련_규제_현황'})
SET     n.name = '의료 · ICT 융합 관련 규제 현황',
    n.name_kr = '의료 · ICT 융합 관련 규제 현황',
    n.domain = 'SV';

MERGE (n:Concept {id: 'd.n.a_관점'})
SET     n.name = 'D.N.A 관점',
    n.name_kr = 'D.N.A 관점',
    n.domain = 'SV',
    n.definition = '데이터';

MERGE (n:Concept {id: '서비스_관점'})
SET     n.name = '서비스 관점',
    n.name_kr = '서비스 관점',
    n.domain = 'SV',
    n.definition = '바이오 빅데이터 플랫폼';

MERGE (n:Concept {id: '디지털_헬스케어_산업별_역할'})
SET     n.name = '디지털 헬스케어 산업별 역할',
    n.name_kr = '디지털 헬스케어 산업별 역할',
    n.domain = 'SV';

MERGE (n:Concept {id: '분야'})
SET     n.name = '분야',
    n.name_kr = '분야',
    n.domain = 'SV';

MERGE (n:Concept {id: '스마트_헬스케어_시장_사업자_변화'})
SET     n.name = '스마트 헬스케어 시장 사업자 변화',
    n.name_kr = '스마트 헬스케어 시장 사업자 변화',
    n.domain = 'SV',
    n.definition = '전통 사업자';

MERGE (n:Concept {id: '디지털_헬스케어_기술_트랜드_활용'})
SET     n.name = '디지털 헬스케어 기술 트랜드 활용',
    n.name_kr = '디지털 헬스케어 기술 트랜드 활용',
    n.domain = 'SV',
    n.definition = '사물인터넷(IoT)';

MERGE (n:Concept {id: '수집가능_데이터'})
SET     n.name = '수집가능 데이터',
    n.name_kr = '수집가능 데이터',
    n.domain = 'SV',
    n.definition = '의료기관 진료정보';

MERGE (n:Concept {id: '활용서비스'})
SET     n.name = '활용서비스',
    n.name_kr = '활용서비스',
    n.domain = 'SV',
    n.definition = '내 건강정보 내 의사에게';

MERGE (n:Concept {id: '정부_추진_사업'})
SET     n.name = '정부 추진 사업',
    n.name_kr = '정부 추진 사업',
    n.domain = 'SV',
    n.definition = '바이오 헬스 빅데이터 구축사업 추진';

// --- 관계 ---

MERGE (a:Concept {id: 'smart_health'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'smart_health'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'emr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'ocs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'pacs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'dicom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'hl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '7개인맞춤형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'phd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'phi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'pha'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'cdss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'telehealthcare'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '의료진단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '주간기술동향'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '정보통신정책연구원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '의료_·_ict_융합_관련_규제_현황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: 'd.n.a_관점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '서비스_관점'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '디지털_헬스케어_산업별_역할'})
MERGE (b:Concept {id: '분야'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '디지털_헬스케어_산업별_역할'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '스마트_헬스케어_시장_사업자_변화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '디지털_헬스케어_기술_트랜드_활용'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '수집가능_데이터'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '활용서비스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Concept {id: '정부_추진_사업'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Document {id: 'SV_248'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '스마트_헬스케어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_health'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'emr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ocs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pacs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dicom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hl'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7개인맞춤형'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'phd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'phi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pha'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdss'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'telehealthcare'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료진단'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주간기술동향'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보통신정책연구원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료_·_ict_융합_관련_규제_현황'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'd.n.a_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_관점'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_헬스케어_산업별_역할'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분야'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_헬스케어_시장_사업자_변화'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_헬스케어_기술_트랜드_활용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수집가능_데이터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '활용서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정부_추진_사업'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_249.1: 원격의료
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_249.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: '원격의료'})
SET     n.name = '원격의료',
    n.name_kr = '원격의료',
    n.domain = 'SV';

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: 'smart_health'})
SET     n.name = 'Smart Health',
    n.name_kr = 'Smart Health',
    n.domain = 'SV',
    n.aliases = ['Smart Health'];

MERGE (n:Concept {id: 'pacas'})
SET     n.name = 'PACAS',
    n.name_kr = '영상저장전송시스템',
    n.domain = 'SV',
    n.aliases = ['PACAS', '영상저장전송시스템'];

MERGE (n:Concept {id: 'ocs'})
SET     n.name = 'OCS',
    n.name_kr = '처방전달',
    n.domain = 'SV',
    n.aliases = ['OCS', '처방전달'];

MERGE (n:Concept {id: 'ris'})
SET     n.name = 'RIS',
    n.name_kr = '방사선과 정보시스템',
    n.domain = 'SV',
    n.aliases = ['RIS', '방사선과 정보시스템'];

MERGE (n:Concept {id: 'emr'})
SET     n.name = 'EMR',
    n.name_kr = '전자의무기록',
    n.domain = 'SV',
    n.aliases = ['EMR', '전자의무기록'];

MERGE (n:Concept {id: 'lis'})
SET     n.name = 'LIS',
    n.name_kr = '임상병리시스템',
    n.domain = 'SV',
    n.aliases = ['LIS', '임상병리시스템'];

MERGE (n:Concept {id: 'phr'})
SET     n.name = 'PHR',
    n.name_kr = '개인건강기록시스템',
    n.domain = 'SV',
    n.aliases = ['PHR', '개인건강기록시스템'];

MERGE (n:Concept {id: 'cdw'})
SET     n.name = 'CDW',
    n.name_kr = '임상연구검색시스템',
    n.domain = 'SV',
    n.aliases = ['CDW', '임상연구검색시스템'];

MERGE (n:Concept {id: 'ehr'})
SET     n.name = 'EHR',
    n.name_kr = 'EHR',
    n.domain = 'SV',
    n.aliases = ['EHR'];

MERGE (n:Concept {id: 'hs7'})
SET     n.name = 'HS7',
    n.name_kr = 'HS7',
    n.domain = 'SV',
    n.aliases = ['HS7'];

MERGE (n:Concept {id: 'dicom'})
SET     n.name = 'DICOM',
    n.name_kr = 'DICOM',
    n.domain = 'SV',
    n.aliases = ['DICOM'];

MERGE (n:Concept {id: 'himss'})
SET     n.name = 'HIMSS',
    n.name_kr = 'HIMSS',
    n.domain = 'SV',
    n.aliases = ['HIMSS'];

MERGE (n:Concept {id: '원격진찰'})
SET     n.name = '원격진찰',
    n.name_kr = '원격진찰',
    n.domain = 'SV',
    n.definition = '디지털 청진기';

MERGE (n:Metric {id: '휴대용_초음파'})
SET     n.name = '휴대용 초음파',
    n.name_kr = '휴대용 초음파',
    n.domain = 'SV',
    n.definition = '원격 협진 활용, 휴대성, 저렴한 비용, 가용성등의 장점';

MERGE (n:Concept {id: '혈압계'})
SET     n.name = '혈압계',
    n.name_kr = '혈압계',
    n.domain = 'SV',
    n.definition = '가정용 혈압계, 혈압값 저장 기능, 부정맥 감지 기능';

MERGE (n:Concept {id: '디지털_검이경'})
SET     n.name = '디지털 검이경',
    n.name_kr = '디지털 검이경',
    n.domain = 'SV',
    n.definition = '외이도, 고막의 이미지 비디오 확인, 스마트폰 기반 검이경';

MERGE (n:Concept {id: '원격_안과_기기'})
SET     n.name = '원격 안과 기기',
    n.name_kr = '원격 안과 기기',
    n.domain = 'SV',
    n.definition = '스마트폰 기반 검안경, 스마트폰 렌즈, 디지털 검안경';

MERGE (n:Concept {id: '침습적_모니터링'})
SET     n.name = '침습적 모니터링',
    n.name_kr = '침습적 모니터링',
    n.domain = 'SV',
    n.definition = '심박동기';

MERGE (n:Concept {id: 'icd'})
SET     n.name = 'ICD',
    n.name_kr = '삽입형 제세동기',
    n.domain = 'SV',
    n.definition = '높은 전압으로 전기충격을 내보내 부정맥을 치료',
    n.aliases = ['ICD', '삽입형 제세동기'];

MERGE (n:Concept {id: 'crt'})
SET     n.name = 'CRT',
    n.name_kr = '심장재동기화 치료기',
    n.domain = 'SV',
    n.definition = '심부전 환자 심실 수축, 좌심실, 우심실 조율하는 치료',
    n.aliases = ['CRT', '심장재동기화 치료기'];

MERGE (n:Concept {id: '비침습적_모니터링'})
SET     n.name = '비침습적 모니터링',
    n.name_kr = '비침습적 모니터링',
    n.domain = 'SV',
    n.definition = '심전도 기반 장치';

MERGE (n:Metric {id: '웨어러블_기기'})
SET     n.name = '웨어러블 기기',
    n.name_kr = '웨어러블 기기',
    n.domain = 'SV',
    n.definition = '장시간 심전도 검사시 사용, 보안 인증, 기밀성 유지 필요';

MERGE (n:Concept {id: '의무기록'})
SET     n.name = '의무기록',
    n.name_kr = '의무기록',
    n.domain = 'SV',
    n.definition = 'EHR';

MERGE (n:Concept {id: '영상공유'})
SET     n.name = '영상공유',
    n.name_kr = '영상공유',
    n.domain = 'SV',
    n.definition = 'PACS';

MERGE (n:Concept {id: 'hl7'})
SET     n.name = 'HL7',
    n.name_kr = 'HL7',
    n.domain = 'SV',
    n.definition = '건강수준 7, 영상정보 전송을 위한 국제 표준',
    n.aliases = ['HL7'];

MERGE (n:Concept {id: '원격판독'})
SET     n.name = '원격판독',
    n.name_kr = '원격판독',
    n.domain = 'SV',
    n.definition = '보안';

MERGE (n:Concept {id: '압축_및_조회'})
SET     n.name = '압축 및 조회',
    n.name_kr = '압축 및 조회',
    n.domain = 'SV',
    n.definition = '무손실 압축, PACS 가이드라인 준수, 영상 조회기능';

MERGE (n:Concept {id: '전송'})
SET     n.name = '전송',
    n.name_kr = '전송',
    n.domain = 'SV',
    n.definition = '판독 영상 전송방식(DICOM), 검사 처방 전송방식(HL7)';

MERGE (n:Concept {id: '기반기술'})
SET     n.name = '기반기술',
    n.name_kr = '기반기술',
    n.domain = 'SV',
    n.definition = '센싱';

MERGE (n:Concept {id: '클라우드'})
SET     n.name = '클라우드',
    n.name_kr = '클라우드',
    n.domain = 'SV',
    n.definition = '실시간 데이터의 획득, 실시간 소비자에게 정보 분석 제공';

MERGE (n:Technology {id: '5g'})
SET     n.name = '5G',
    n.name_kr = '5G',
    n.domain = 'SV',
    n.definition = '모니터링, 진찰 등을 위한 데이터의 고속 전송';

MERGE (n:Technology {id: 'bluetooth'})
SET     n.name = 'Bluetooth',
    n.name_kr = 'Bluetooth',
    n.domain = 'SV',
    n.definition = '근거리 데이터 전송, 휴대용 기기, 웨어러블 기기에서 활용',
    n.aliases = ['Bluetooth'];

MERGE (n:Law {id: '개인정보보호법'})
SET     n.name = '개인정보보호법',
    n.name_kr = '개인정보보호법',
    n.domain = 'SV',
    n.definition = '환자 데이터 수집, 활용 불가 - 앱에 쌓인 데이터를 병원 지료에 활용 불가';

MERGE (n:Concept {id: '국민건강보험법'})
SET     n.name = '국민건강보험법',
    n.name_kr = '국민건강보험법',
    n.domain = 'SV',
    n.definition = '직접 의료행위만 건강 보험 적용 가능';

MERGE (n:Concept {id: '약사법'})
SET     n.name = '약사법',
    n.name_kr = '약사법',
    n.domain = 'SV',
    n.definition = '온라인을 통한 의약품 처방 및 배송 불가';

MERGE (n:Concept {id: '제도'})
SET     n.name = '제도',
    n.name_kr = '제도',
    n.domain = 'SV',
    n.definition = '규제 샌드박스 적용';

MERGE (n:Concept {id: '한시적_허용'})
SET     n.name = '한시적 허용',
    n.name_kr = '한시적 허용',
    n.domain = 'SV',
    n.definition = '코로나 확산으로 대응 차원에서 한시적으로 일부 허용';

MERGE (n:Concept {id: '미국'})
SET     n.name = '미국',
    n.name_kr = '미국',
    n.domain = 'SV',
    n.definition = '원격서비스 사용 확대';

MERGE (n:Concept {id: '중국'})
SET     n.name = '중국',
    n.name_kr = '중국',
    n.domain = 'SV',
    n.definition = '방역 원격의료 활용 정책';

MERGE (n:Concept {id: '일본'})
SET     n.name = '일본',
    n.name_kr = '일본',
    n.domain = 'SV',
    n.definition = '원격진료 플랫폼 구축';

MERGE (n:Concept {id: '보험적용_평가방안_논의'})
SET     n.name = '보험적용 평가방안 논의',
    n.name_kr = '보험적용 평가방안 논의',
    n.domain = 'SV',
    n.definition = '디지털 헬스 및 원격진료에 대한 보험 적용 논의';

MERGE (n:Concept {id: '가이드라인_마련'})
SET     n.name = '가이드라인 마련',
    n.name_kr = '가이드라인 마련',
    n.domain = 'SV',
    n.definition = '의료, 헬스케어 분야 웨어러블 기기 개발 가이드라인 마련';

MERGE (n:Concept {id: '독일'})
SET     n.name = '독일',
    n.name_kr = '독일',
    n.domain = 'SV',
    n.definition = '병원미래법 제정';

MERGE (n:Concept {id: '의료_데이터_로드맵_마련'})
SET     n.name = '의료 데이터 로드맵 마련',
    n.name_kr = '의료 데이터 로드맵 마련',
    n.domain = 'SV',
    n.definition = '의료체계, R&D의 디지털 네트워크화를 위한 구조 확립';

MERGE (n:Concept {id: '대화형_시스템_개발'})
SET     n.name = '대화형 시스템 개발',
    n.name_kr = '대화형 시스템 개발',
    n.domain = 'SV',
    n.definition = '비대면 건강관리 및 대화형 기술연구 프로젝트 진행';

// --- 관계 ---

MERGE (a:Concept {id: 'smart_health'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'smart_health'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'pacas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'ocs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'ris'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'emr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'lis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'phr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'cdw'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'ehr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'hs7'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'dicom'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'himss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '원격진찰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Metric {id: '휴대용_초음파'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '혈압계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '디지털_검이경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '원격_안과_기기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '침습적_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'icd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'crt'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '비침습적_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Metric {id: '웨어러블_기기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '의무기록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '영상공유'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: 'hl7'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '원격판독'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '압축_및_조회'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '전송'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '기반기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '클라우드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Technology {id: '5g'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Technology {id: 'bluetooth'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Law {id: '개인정보보호법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '국민건강보험법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '약사법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '제도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '한시적_허용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '미국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '중국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '일본'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '보험적용_평가방안_논의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '가이드라인_마련'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '독일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '의료_데이터_로드맵_마련'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Concept {id: '대화형_시스템_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Document {id: 'SV_249.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '원격의료'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'smart_health'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pacas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ocs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ris'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'emr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lis'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'phr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cdw'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ehr'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hs7'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dicom'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'himss'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격진찰'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '휴대용_초음파'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '혈압계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_검이경'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격_안과_기기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침습적_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'icd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crt'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비침습적_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '웨어러블_기기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의무기록'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상공유'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hl7'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원격판독'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압축_및_조회'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전송'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기반기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '5g'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'bluetooth'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '개인정보보호법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국민건강보험법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '약사법'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제도'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '한시적_허용'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미국'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중국'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일본'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보험적용_평가방안_논의'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가이드라인_마련'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '독일'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의료_데이터_로드맵_마련'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대화형_시스템_개발'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_249.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_249.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_250.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_250.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_250.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_250.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_250.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_250.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_250.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_250.4'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_250.5: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_250.5'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_251: AMI
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_251'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ami'})
SET     n.name = 'AMI',
    n.name_kr = 'AMI',
    n.domain = 'SV',
    n.aliases = ['AMI'];

MERGE (n:Concept {id: '스마트_그리드'})
SET     n.name = '스마트 그리드',
    n.name_kr = '스마트 그리드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ami_2_0'})
SET     n.name = 'AMI 2.0',
    n.name_kr = 'AMI 2.0',
    n.domain = 'SV',
    n.aliases = ['AMI 2.0'];

MERGE (n:Concept {id: 'lwm2m'})
SET     n.name = 'LWM2M',
    n.name_kr = 'LWM2M',
    n.domain = 'SV',
    n.aliases = ['LWM2M'];

MERGE (n:Concept {id: 'snmp_v3'})
SET     n.name = 'SNMP v3',
    n.name_kr = 'SNMP v3',
    n.domain = 'SV',
    n.aliases = ['SNMP v3'];

MERGE (n:Concept {id: '보안_강화형_스마트_전력량계'})
SET     n.name = '보안 강화형 스마트 전력량계',
    n.name_kr = '보안 강화형 스마트 전력량계',
    n.domain = 'SV';

MERGE (n:Concept {id: 'can'})
SET     n.name = 'CAN',
    n.name_kr = 'CAN',
    n.domain = 'SV',
    n.aliases = ['CAN'];

MERGE (n:Concept {id: 'wi_sun'})
SET     n.name = 'Wi-SUN',
    n.name_kr = 'Wi-SUN',
    n.domain = 'SV',
    n.aliases = ['Wi-SUN'];

MERGE (n:Concept {id: 'mbed_os'})
SET     n.name = 'Mbed OS',
    n.name_kr = 'Mbed OS',
    n.domain = 'SV',
    n.aliases = ['Mbed OS'];

MERGE (n:Concept {id: 'iot_plc'})
SET     n.name = 'IoT-PLC',
    n.name_kr = 'IoT-PLC',
    n.domain = 'SV',
    n.aliases = ['IoT-PLC'];

MERGE (n:Concept {id: '&boardparam2=7815)'})
SET     n.name = '&boardParam2=7815)',
    n.name_kr = '&boardParam2=7815)',
    n.domain = 'SV';

MERGE (n:Concept {id: '상위시스템'})
SET     n.name = '상위시스템',
    n.name_kr = '상위시스템',
    n.domain = 'SV',
    n.definition = 'MDMS';

MERGE (n:Concept {id: 'cis'})
SET     n.name = 'CIS',
    n.name_kr = 'CIS',
    n.domain = 'SV',
    n.definition = 'Customer Information System - 고객정보를 기반으로 고객 관리와 과금의 주체가 되는 시스템 - 미터로부터 얻어진 계량값으로 과금내용 계산, 전력서비스 신규 가입, 탈퇴를 위한 Remote Connect/Disconnect 기능 - 가입한 전력 서비스 플랜에 맞추어 요금제를 설계',
    n.aliases = ['CIS'];

MERGE (n:Concept {id: 'oms'})
SET     n.name = 'OMS',
    n.name_kr = 'OMS',
    n.domain = 'SV',
    n.definition = 'Outage Management System - 수용가 측의 정전 정보를 수집하고 저장하며, 정전에 대응하여 타 시스템에 이에 따른 조치에 대한 명령을 전달',
    n.aliases = ['OMS'];

MERGE (n:Concept {id: 'wms'})
SET     n.name = 'WMS',
    n.name_kr = 'WMS',
    n.domain = 'SV',
    n.definition = 'Work Management System - 미터의 설치나 서비스 등 작업자 들에 대한 명령과 실행 기록',
    n.aliases = ['WMS'];

MERGE (n:Concept {id: 'eam'})
SET     n.name = 'EAM',
    n.name_kr = 'EAM',
    n.domain = 'SV',
    n.definition = 'Enterprise Asset Management System - 미터나 HAN내의 전력사 소유의 디바이스 등 전력사 자산에 대해 취득, 운용, 소멸에 대한 기록 관리',
    n.aliases = ['EAM'];

MERGE (n:Concept {id: 'esb'})
SET     n.name = 'ESB',
    n.name_kr = 'ESB',
    n.domain = 'SV',
    n.definition = 'Enterprise Service Bus - MDMS를 비롯한 상위 시스템을 연결 - 국제 표준 IEC 61968 CIM(Common Interface Model)이 대표적임',
    n.aliases = ['ESB'];

MERGE (n:Concept {id: '통신시스템'})
SET     n.name = '통신시스템',
    n.name_kr = '통신시스템',
    n.domain = 'SV',
    n.definition = 'WAN';

MERGE (n:Concept {id: 'nan'})
SET     n.name = 'NAN',
    n.name_kr = 'NAN',
    n.domain = 'SV',
    n.definition = '중계기와 미터 사이의 영역, Neighborhood Area Network - 무선 통신과 전력선 통신 많이 사용 - 표준화가 되어 있지 않아, 통신 솔루션 제공 업체의 고유 프로토콜 사용',
    n.aliases = ['NAN'];

MERGE (n:Concept {id: 'concentrator'})
SET     n.name = 'Concentrator',
    n.name_kr = 'Concentrator',
    n.domain = 'SV',
    n.definition = 'NAN영역과 WAN영역 사이를 잇는 장치',
    n.aliases = ['Concentrator'];

MERGE (n:Concept {id: '스마트미터'})
SET     n.name = '스마트미터',
    n.name_kr = '스마트미터',
    n.domain = 'SV',
    n.definition = '양방향 통신 기반이며 AMI의 중심적인 역할하는 기기 - 기존의 미터와 달리 단순히 계량 값 많을 읽어 내는 기능에 더하여 다양한 기능 구현 예)요금제의 지원, 선불형 계량, 양방향 계량, 도전 감지, 정전 감지 등';

MERGE (n:Technology {id: 'han'})
SET     n.name = 'HAN',
    n.name_kr = 'HAN',
    n.domain = 'SV',
    n.definition = 'Home Area Network - 수용가 내부의 통신 네트워크로서 PLC, ZigBee 등',
    n.aliases = ['HAN'];

MERGE (n:Concept {id: 'han내_가정용기기'})
SET     n.name = 'HAN내 가정용기기',
    n.name_kr = 'HAN내 가정용기기',
    n.domain = 'SV',
    n.definition = '사용자 인터페이스 기기';

MERGE (n:Concept {id: 'hems'})
SET     n.name = 'HEMS',
    n.name_kr = 'HEMS',
    n.domain = 'SV',
    n.definition = 'Home Energy Management System',
    n.aliases = ['HEMS'];

MERGE (n:Concept {id: '지능형_가전기기'})
SET     n.name = '지능형 가전기기',
    n.name_kr = '지능형 가전기기',
    n.domain = 'SV',
    n.definition = 'Smart Appliance';

MERGE (n:Concept {id: '분산_전원_연계'})
SET     n.name = '분산 전원 연계',
    n.name_kr = '분산 전원 연계',
    n.domain = 'SV',
    n.definition = '가정 내에 설치될 태양광, 소형 풍력발전기, 연료 전지와 저장 장치 등';

MERGE (n:Technology {id: '통신표준'})
SET     n.name = '통신표준',
    n.name_kr = '통신표준',
    n.domain = 'SV',
    n.definition = 'SEP(Smart Energy Profile)이 주목을 받음 - ZigBee Alliance를 중심으로 제정됨 - ZigBee 무선통신, HomePlug 전력선통신, IP에 기반함';

MERGE (n:Concept {id: '검침_서버_시스템'})
SET     n.name = '검침 서버 시스템',
    n.name_kr = '검침 서버 시스템',
    n.domain = 'SV',
    n.definition = '미터 데이터 관리시스템(MDMS) - 소비자자원관리 시스템(CRMS) - 요금계산 시스템(BUS)';

MERGE (n:Concept {id: 'dcu'})
SET     n.name = 'DCU',
    n.name_kr = '데이터 집중장치',
    n.domain = 'SV',
    n.definition = '변압기 상태정보 수집/전송 - 서버~단말 통신 게이트웨이',
    n.aliases = ['DCU', '데이터 집중장치'];

MERGE (n:Concept {id: '단말장치'})
SET     n.name = '단말장치(모뎀)',
    n.name_kr = '단말장치(모뎀)',
    n.domain = 'SV',
    n.definition = 'PLC 모뎀(내장형/외장형) - 무선 모뎀(내장형/외장형)';

MERGE (n:Concept {id: '전자식_전력량계'})
SET     n.name = '전자식 전력량계',
    n.name_kr = '전자식 전력량계',
    n.domain = 'SV',
    n.definition = '표준형 전력량계 - 확장형 전력량계 (E-Type, G-Type, AE-Type, S-Type)';

MERGE (n:Concept {id: '부가서비스용_장치'})
SET     n.name = '부가서비스용 장치',
    n.name_kr = '부가서비스용 장치',
    n.domain = 'SV',
    n.definition = '전력사용량 표시 (IHD, In-Home Display) - 통합 검침기(전기 + 수도 + 가스) - 전력소비자 스마트폰 앱';

MERGE (n:Concept {id: '기존_기술'})
SET     n.name = '기존 기술',
    n.name_kr = '기존 기술',
    n.domain = 'SV',
    n.definition = '스마트 미터';

MERGE (n:Concept {id: 'ihd'})
SET     n.name = 'IHD',
    n.name_kr = 'IHD',
    n.domain = 'SV',
    n.definition = 'In-Home Display, 사용자와의 상호 작용을 위한 인터페이스 제공',
    n.aliases = ['IHD'];

MERGE (n:Concept {id: 'mdms'})
SET     n.name = 'MDMS',
    n.name_kr = 'MDMS',
    n.domain = 'SV',
    n.definition = '미터 데이터 관리 시스템, 이기종 미터링 시스템 데이터 수신 및 관리',
    n.aliases = ['MDMS'];

MERGE (n:Concept {id: 'ess'})
SET     n.name = 'ESS',
    n.name_kr = 'ESS',
    n.domain = 'SV',
    n.definition = '자가 발전 등을 통해 생산된 에너지를 저장 하기 위한 기술',
    n.aliases = ['ESS'];

MERGE (n:Concept {id: '신규_기술'})
SET     n.name = '신규 기술',
    n.name_kr = '신규 기술',
    n.domain = 'SV',
    n.definition = 'IoT-PLC';

MERGE (n:Concept {id: 'secure_dcu'})
SET     n.name = 'Secure DCU',
    n.name_kr = 'Secure DCU',
    n.domain = 'SV',
    n.definition = '분산 데이터 수집 및 전송을 위한 DCU에 보안 기능이 강화된 형태',
    n.aliases = ['Secure DCU'];

MERGE (n:Technology {id: 'wan'})
SET     n.name = 'WAN',
    n.name_kr = 'WAN',
    n.domain = 'SV',
    n.definition = '유선 네트워크 - CDMA - LTE/5G - Wibro',
    n.aliases = ['WAN'];

MERGE (n:Metric {id: '기밀성'})
SET     n.name = '기밀성',
    n.name_kr = '기밀성',
    n.domain = 'SV',
    n.definition = '전력시스템 제어권의 상실';

MERGE (n:Threat {id: '악성코드'})
SET     n.name = '악성코드',
    n.name_kr = '악성코드',
    n.domain = 'SV',
    n.definition = '기존 네트워크 망에서 사용되는 범용적인 통신장비 및 서버시스템을 사용함으로써 이들 시스템이 가지고 있는 보안 취약성이 스마트 그리드 취약성으로 연결';

MERGE (n:Metric {id: '무결성'})
SET     n.name = '무결성',
    n.name_kr = '무결성',
    n.domain = 'SV',
    n.definition = '비인가된 제어 명령';

MERGE (n:Concept {id: '스마트미터_조작'})
SET     n.name = '스마트미터 조작',
    n.name_kr = '스마트미터 조작',
    n.domain = 'SV',
    n.definition = '특정사용자의 계정정보를 조작하여 요금 수정 - 전기 수요 증감을 통한 전력망 불안정을 유도해 대도시를 대상으로한 정전 사태 유발까지 이루어질 수 있음';

MERGE (n:Threat {id: '가용성'})
SET     n.name = '가용성',
    n.name_kr = '가용성',
    n.domain = 'SV',
    n.definition = 'DoS 공격';

MERGE (n:Concept {id: 'ca_모듈'})
SET     n.name = 'CA',
    n.name_kr = '인증서발급) 모듈 (PKI 인증센터',
    n.domain = 'SV',
    n.definition = '관리서비스',
    n.aliases = ['CA', '인증서발급) 모듈 (PKI 인증센터'];

MERGE (n:Concept {id: 'crl일괄갱신_서비스'})
SET     n.name = 'CRL일괄갱신 서비스',
    n.name_kr = 'CRL일괄갱신 서비스',
    n.domain = 'SV',
    n.definition = '주기적으로 Invoke되어 모든 인증서에 대한 CRL의 갱신 기능을 제공 하며, 폐지된 모든 인증서에 대한 CRL Update';

MERGE (n:Concept {id: '인증서_일괄발급_서비스'})
SET     n.name = '인증서 일괄발급 서비스',
    n.name_kr = '인증서 일괄발급 서비스',
    n.domain = 'SV',
    n.definition = '주기적으로 Invoke 되어 기기 인증서 요청목록을확인 후 해당인증서를 발급하며, PKCS#10 CertificateRequest에서 subject필드와 공개키를 추출하여 기기인증서를 발급';

MERGE (n:Concept {id: 'ra_모듈'})
SET     n.name = 'RA',
    n.name_kr = '등록관리) 모듈 (PKI 인증센터',
    n.domain = 'SV',
    n.definition = '인증서 발급요청 :',
    n.aliases = ['RA', '등록관리) 모듈 (PKI 인증센터'];

MERGE (n:Concept {id: '인증서_획득'})
SET     n.name = '인증서 획득',
    n.name_kr = '인증서 획득',
    n.domain = 'SV',
    n.definition = '제조사 담당자가 인증서를 조회 후 다운로드';

MERGE (n:Concept {id: '가입자관리'})
SET     n.name = '가입자관리',
    n.name_kr = '가입자관리',
    n.domain = 'SV',
    n.definition = '제조사 & 업무서버의 등록/수정/ 삭제 등 가입 관리와 제조사 & 업무서버의인 증서 발급인가/ 폐지처리를 수행';

MERGE (n:Concept {id: '인증서_중계_및_주입모듈'})
SET     n.name = '인증서 중계 및 주입모듈 (기기제조사)',
    n.name_kr = '인증서 중계 및 주입모듈 (기기제조사)',
    n.domain = 'SV',
    n.definition = '인증서 중계모듈';

MERGE (n:Concept {id: '인증서_주입모듈'})
SET     n.name = '인증서 주입모듈',
    n.name_kr = '인증서 주입모듈',
    n.domain = 'SV',
    n.definition = '제조 담당자는 기기 인증서를 기기에 주입';

MERGE (n:Concept {id: '보안인증_모듈'})
SET     n.name = '보안인증 모듈 (서비스 도메인)',
    n.name_kr = '보안인증 모듈 (서비스 도메인)',
    n.domain = 'SV',
    n.definition = '보안인증 모듈 (기기 측)';

// --- 관계 ---

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '스마트_그리드'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'ami_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'lwm2m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'snmp_v3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '보안_강화형_스마트_전력량계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'can'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'wi_sun'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'mbed_os'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'iot_plc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '&boardparam2=7815)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '상위시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'cis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'oms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'wms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'eam'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'esb'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '통신시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'nan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'concentrator'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '스마트미터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Technology {id: 'han'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'han내_가정용기기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'hems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '지능형_가전기기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '분산_전원_연계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Technology {id: '통신표준'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '검침_서버_시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'dcu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '단말장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '전자식_전력량계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '부가서비스용_장치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '기존_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'ihd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'mdms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'ess'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '신규_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'secure_dcu'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Technology {id: 'wan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Metric {id: '기밀성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Threat {id: '악성코드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Metric {id: '무결성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '스마트미터_조작'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Threat {id: '가용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'ca_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'crl일괄갱신_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '인증서_일괄발급_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: 'ra_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '인증서_획득'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '가입자관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '인증서_중계_및_주입모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '인증서_주입모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Concept {id: '보안인증_모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Document {id: 'SV_251'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ami'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_그리드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ami_2_0'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lwm2m'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'snmp_v3'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_강화형_스마트_전력량계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'can'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wi_sun'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mbed_os'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot_plc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '&boardparam2=7815)'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상위시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cis'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'oms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'wms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'eam'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'esb'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'nan'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'concentrator'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트미터'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'han'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'han내_가정용기기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지능형_가전기기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산_전원_연계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '통신표준'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검침_서버_시스템'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dcu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '단말장치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자식_전력량계'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부가서비스용_장치'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기존_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ihd'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mdms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신규_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'secure_dcu'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'wan'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '기밀성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '악성코드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '무결성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트미터_조작'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '가용성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ca_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crl일괄갱신_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_일괄발급_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ra_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_획득'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가입자관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_중계_및_주입모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인증서_주입모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안인증_모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_252: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_252'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_253.1: BEMS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_253.1'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'bems'})
SET     n.name = 'BEMS',
    n.name_kr = 'BEMS',
    n.domain = 'SV',
    n.aliases = ['BEMS'];

MERGE (n:Concept {id: '스마트_그리드'})
SET     n.name = '스마트 그리드',
    n.name_kr = '스마트 그리드',
    n.domain = 'SV';

MERGE (n:Concept {id: '[기준]_공공기관_2017년_건축허가'})
SET     n.name = '[기준] 공공기관 2017년 건축허가',
    n.name_kr = '[기준] 공공기관 2017년 건축허가',
    n.domain = 'SV';

MERGE (n:Concept {id: 'bas'})
SET     n.name = 'BAS',
    n.name_kr = 'BAS',
    n.domain = 'SV',
    n.definition = '건물 설비에 대한 자동화 운용 및 중앙감시',
    n.aliases = ['BAS'];

MERGE (n:Concept {id: 'ibs'})
SET     n.name = 'IBS',
    n.name_kr = 'IBS',
    n.domain = 'SV',
    n.definition = '지능화된 건물 내 시스템의 통합 관리',
    n.aliases = ['IBS'];

MERGE (n:Concept {id: 'fms'})
SET     n.name = 'FMS',
    n.name_kr = 'FMS',
    n.domain = 'SV',
    n.definition = '건물의 경영에 대한 관리 기능 제공',
    n.aliases = ['FMS'];

MERGE (n:Concept {id: 'bms'})
SET     n.name = 'BMS',
    n.name_kr = 'BMS',
    n.domain = 'SV',
    n.definition = '각 설비의 정보 관리 및 효율적인 운용',
    n.aliases = ['BMS'];

MERGE (n:Concept {id: 'ems'})
SET     n.name = 'EMS',
    n.name_kr = 'EMS',
    n.domain = 'SV',
    n.definition = '설비의 에너지 사용 절감',
    n.aliases = ['EMS'];

// --- 관계 ---

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: '스마트_그리드'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: '[기준]_공공기관_2017년_건축허가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: 'bas'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: 'ibs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: 'fms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: 'bms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Concept {id: 'ems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Document {id: 'SV_253.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_그리드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[기준]_공공기관_2017년_건축허가'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bas'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ibs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_253.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_253.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_254: ESS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_254'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'ess'})
SET     n.name = 'ESS',
    n.name_kr = 'ESS',
    n.domain = 'SV',
    n.aliases = ['ESS'];

MERGE (n:Concept {id: '스마트_그리드'})
SET     n.name = '스마트 그리드',
    n.name_kr = '스마트 그리드',
    n.domain = 'SV';

MERGE (n:Concept {id: 'pms'})
SET     n.name = 'PMS',
    n.name_kr = 'PMS',
    n.domain = 'SV',
    n.aliases = ['PMS'];

MERGE (n:Concept {id: 'pcs'})
SET     n.name = 'PCS',
    n.name_kr = 'PCS',
    n.domain = 'SV',
    n.aliases = ['PCS'];

MERGE (n:Concept {id: 'bms'})
SET     n.name = 'BMS',
    n.name_kr = 'BMS',
    n.domain = 'SV',
    n.aliases = ['BMS'];

// --- 관계 ---

MERGE (a:Concept {id: 'ess'})
MERGE (b:Concept {id: '스마트_그리드'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Concept {id: 'pms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Concept {id: 'pcs'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Concept {id: 'bms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Document {id: 'SV_254'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ess'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_그리드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pcs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_256: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_256'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_257.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_257.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_257.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_257.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_257.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_257.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_258: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_258'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_259: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_259'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_260: 에너지 수확(Energy Harvesting)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_260'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'energy_harvesting'})
SET     n.name = 'Energy Harvesting',
    n.name_kr = '에너지 수확',
    n.domain = 'SV',
    n.aliases = ['Energy Harvesting', '에너지 수확'];

MERGE (n:Concept {id: '디지털_서비스'})
SET     n.name = '디지털 서비스',
    n.name_kr = '디지털 서비스',
    n.domain = 'SV';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SV';

MERGE (n:Concept {id: '전자기'})
SET     n.name = '전자기',
    n.name_kr = '전자기',
    n.domain = 'SV';

MERGE (n:Concept {id: '정전기'})
SET     n.name = '정전기',
    n.name_kr = '정전기',
    n.domain = 'SV';

MERGE (n:Concept {id: 'iot'})
SET     n.name = 'IOT',
    n.name_kr = 'IOT',
    n.domain = 'SV',
    n.aliases = ['IOT'];

MERGE (n:Concept {id: '저전력_기기_확산'})
SET     n.name = '저전력 기기 확산',
    n.name_kr = '저전력 기기 확산',
    n.domain = 'SV',
    n.definition = '극소량의 전력만으로 구동될 수 있는 전자기기의 확산';

MERGE (n:Concept {id: '센서_네트워크_확산'})
SET     n.name = '센서 네트워크 확산',
    n.name_kr = '센서 네트워크 확산',
    n.domain = 'SV',
    n.definition = '배터리 교체가 힘든 센터 네트워크를 위한 전력 공급 방안 필요';

MERGE (n:Concept {id: '웨어러블_기기_확산'})
SET     n.name = '웨어러블 기기 확산',
    n.name_kr = '웨어러블 기기 확산',
    n.domain = 'SV',
    n.definition = '충전하기 불편한 웨어러블 기기를 위한 전력 공급 방안 필요';

MERGE (n:Concept {id: '에너지_축적_기술_발전'})
SET     n.name = '에너지 축적 기술 발전',
    n.name_kr = '에너지 축적 기술 발전',
    n.domain = 'SV',
    n.definition = '미량의 에너지를 수집하여 축적할 수 있는 배터리 기술 발전';

MERGE (n:Concept {id: '나노_기술_발전'})
SET     n.name = '나노 기술 발전',
    n.name_kr = '나노 기술 발전',
    n.domain = 'SV',
    n.definition = '저항으로 인한 전력손실을 막을 수 있는 나노 기술 발전';

MERGE (n:Concept {id: '압전_에너지변환'})
SET     n.name = '압전 에너지변환',
    n.name_kr = '압전 에너지변환',
    n.domain = 'SV',
    n.definition = '외부의 힘 또는 진동이 압전 재료에 가해지면 기계적 응력 또는 변경으로 전하가 발생하는 원리';

MERGE (n:Concept {id: '전자기_에너지변환'})
SET     n.name = '전자기 에너지변환',
    n.name_kr = '전자기 에너지변환',
    n.domain = 'SV',
    n.definition = '외부적인 힘 또는 진동으로 도체를 움직여 전자기 유도 원리를 통해 전기를 발전';

MERGE (n:Concept {id: '정전기_에너지변환'})
SET     n.name = '정전기 에너지변환',
    n.name_kr = '정전기 에너지변환',
    n.domain = 'SV',
    n.definition = '미리 충전된 커패시티 시스템에서 평판의 거리 변화 또는 중첩에 의한 정전 용량 변화로 발전';

MERGE (n:Concept {id: '열전_에너지변환'})
SET     n.name = '열전 에너지변환',
    n.name_kr = '열전 에너지변환',
    n.domain = 'SV',
    n.definition = '신체 등의 열 에너지를 이용 온도차이를 전기로 변환';

MERGE (n:Concept {id: '국내'})
SET     n.name = '국내',
    n.name_kr = '국내',
    n.domain = 'SV',
    n.definition = '차세대 고속열차 해무';

MERGE (n:Concept {id: '서울대_eh_스킨'})
SET     n.name = '서울대 EH 스킨',
    n.name_kr = '서울대 EH 스킨',
    n.domain = 'SV',
    n.definition = '압전소자 중 독성분인 납을 포함하지 않은 합성수지 계열 PVDF, 세라믹 계열 PZT 이용하는 연구 진행';

MERGE (n:Concept {id: '미국'})
SET     n.name = '미국',
    n.name_kr = '미국',
    n.domain = 'SV',
    n.definition = '미시건 대학';

MERGE (n:Concept {id: '일본'})
SET     n.name = '일본',
    n.name_kr = '일본',
    n.domain = 'SV',
    n.definition = '수도고속도로';

MERGE (n:Concept {id: '아일랜드'})
SET     n.name = '아일랜드',
    n.name_kr = '아일랜드',
    n.domain = 'SV',
    n.definition = 'Cork대학';

// --- 관계 ---

MERGE (a:Concept {id: '기타'})
MERGE (b:Concept {id: '디지털_서비스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '전자기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '정전기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: 'iot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '저전력_기기_확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '센서_네트워크_확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '웨어러블_기기_확산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '에너지_축적_기술_발전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '나노_기술_발전'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '압전_에너지변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '전자기_에너지변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '정전기_에너지변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '열전_에너지변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '국내'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '서울대_eh_스킨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '미국'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '일본'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Concept {id: '아일랜드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Document {id: 'SV_260'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'energy_harvesting'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디지털_서비스'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정전기'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'iot'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력_기기_확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서_네트워크_확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '웨어러블_기기_확산'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에너지_축적_기술_발전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '나노_기술_발전'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '압전_에너지변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전자기_에너지변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정전기_에너지변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '열전_에너지변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국내'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서울대_eh_스킨'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '미국'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일본'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '아일랜드'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_261: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_261'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_262.2: 스마트 팜 (Smart Farm)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_262.2'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'smart_farm'})
SET     n.name = 'Smart Farm',
    n.name_kr = '스마트 팜',
    n.domain = 'SV',
    n.aliases = ['Smart Farm', '스마트 팜'];

MERGE (n:Concept {id: '스마트팜'})
SET     n.name = '스마트팜',
    n.name_kr = '스마트팜',
    n.domain = 'SV';

MERGE (n:Concept {id: '스마트_온실/축사/원예_등'})
SET     n.name = '스마트 온실/축사/원예 등',
    n.name_kr = '스마트 온실/축사/원예 등',
    n.domain = 'SV';

MERGE (n:Concept {id: '상황인지_센서'})
SET     n.name = '상황인지 센서',
    n.name_kr = '상황인지 센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '무선센서네트워크'})
SET     n.name = '무선센서네트워크',
    n.name_kr = '무선센서네트워크',
    n.domain = 'SV';

MERGE (n:Concept {id: 'lpwan'})
SET     n.name = 'LPWAN',
    n.name_kr = 'LPWAN',
    n.domain = 'SV',
    n.aliases = ['LPWAN'];

MERGE (n:Concept {id: '저전력'})
SET     n.name = '저전력',
    n.name_kr = '저전력',
    n.domain = 'SV';

MERGE (n:Concept {id: '인공지능'})
SET     n.name = '인공지능',
    n.name_kr = '인공지능',
    n.domain = 'SV';

MERGE (n:Concept {id: '운영_원리'})
SET     n.name = '운영 원리',
    n.name_kr = '운영 원리',
    n.domain = 'SV',
    n.definition = '생육환경 유지관리 SW';

MERGE (n:Concept {id: '환경정보_모니터링'})
SET     n.name = '환경정보 모니터링',
    n.name_kr = '환경정보 모니터링',
    n.domain = 'SV',
    n.definition = '온·습도, 일사량, CO2, 생육환경 등 자동수집';

MERGE (n:Concept {id: '자동·원격_환경관리'})
SET     n.name = '자동·원격 환경관리',
    n.name_kr = '자동·원격 환경관리',
    n.domain = 'SV',
    n.definition = '냉·난방기 구동, 창문 개폐, CO2, 영양분·사료 공급 등';

MERGE (n:Concept {id: '적용_분야'})
SET     n.name = '적용 분야',
    n.name_kr = '적용 분야',
    n.domain = 'SV',
    n.definition = '스마트 온실';

MERGE (n:Concept {id: '스마트_과수원'})
SET     n.name = '스마트 과수원',
    n.name_kr = '스마트 과수원',
    n.domain = 'SV',
    n.definition = '디바이스를 통해 온·습도, 기상상황 등을 모니터링하고 원격, 자동으로 관수, 병해충 관리 등';

MERGE (n:Concept {id: '스마트_축사'})
SET     n.name = '스마트 축사',
    n.name_kr = '스마트 축사',
    n.domain = 'SV',
    n.definition = '디바이스를 통해 온·습도, 등축사 환경을 모니터링하고 사료 및 물 공급시기와 양 등을 원격자동으로 제어';

MERGE (n:Concept {id: '1세대'})
SET     n.name = '1세대',
    n.name_kr = '1세대',
    n.domain = 'SV';

MERGE (n:Concept {id: '2세대'})
SET     n.name = '2세대',
    n.name_kr = '2세대',
    n.domain = 'SV';

MERGE (n:Concept {id: '3세대'})
SET     n.name = '3세대',
    n.name_kr = '3세대',
    n.domain = 'SV';

MERGE (n:Concept {id: '센서기술'})
SET     n.name = '센서기술',
    n.name_kr = '센서기술',
    n.domain = 'SV',
    n.definition = '상황인지 센서';

MERGE (n:Concept {id: '통신기술'})
SET     n.name = '통신기술',
    n.name_kr = '통신기술',
    n.domain = 'SV',
    n.definition = 'WPAN';

MERGE (n:Concept {id: 'sw기술'})
SET     n.name = 'SW기술',
    n.name_kr = 'SW기술',
    n.domain = 'SV',
    n.definition = '원격제어';

MERGE (n:Concept {id: '로봇기술'})
SET     n.name = '로봇기술',
    n.name_kr = '로봇기술',
    n.domain = 'SV',
    n.definition = '자율주행';

MERGE (n:Concept {id: '에너지_관리_기술'})
SET     n.name = '에너지 관리 기술',
    n.name_kr = '에너지 관리 기술',
    n.domain = 'SV',
    n.definition = 'ESS 및 스마트그리드';

MERGE (n:Concept {id: '클라우드_기반_서비스_기술'})
SET     n.name = '클라우드 기반 서비스 기술',
    n.name_kr = '클라우드 기반 서비스 기술',
    n.domain = 'SV',
    n.definition = '장치관리서비스 (EMS)';

MERGE (n:Concept {id: '생장/생육_관리측면'})
SET     n.name = '생장/생육 관리측면',
    n.name_kr = '생장/생육 관리측면',
    n.domain = 'SV',
    n.definition = '딥러닝';

MERGE (n:Concept {id: '농업_소프트웨어'})
SET     n.name = '농업 소프트웨어',
    n.name_kr = '농업 소프트웨어',
    n.domain = 'SV',
    n.definition = '센서DB, 제어DB, 이미지DB, 성장정보DB, 이벤트 DB';

MERGE (n:Concept {id: '빅데이터_분석'})
SET     n.name = '빅데이터 분석',
    n.name_kr = '빅데이터 분석',
    n.domain = 'SV',
    n.definition = 'IoT 디바이스에서 수집된 센서/환경 정보와 이미지 분석 - 에너지 시뮬레이션(전기, LED, 태양광)';

MERGE (n:Concept {id: '환경/공급_관리측면'})
SET     n.name = '환경/공급 관리측면',
    n.name_kr = '환경/공급 관리측면',
    n.domain = 'SV',
    n.definition = '소프트웨어';

MERGE (n:Concept {id: '하드웨어'})
SET     n.name = '하드웨어',
    n.name_kr = '하드웨어',
    n.domain = 'SV',
    n.definition = '센서, 제어기, 인터넷, 서버, 로봇, CCTV, 태양광 트랙터 등';

MERGE (n:Technology {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'SV',
    n.definition = '내/외부 환경, Soil, Nutrient solution - Cultivation/Growth 정보, 제어 정보, 비즈니스 운영 - REST API, TCP Socket, WPAN 네트워크를 통해 수집된 정보는 하둡에코 시스템을 통해서 수집되고 처리';

MERGE (n:Concept {id: '노지재배'})
SET     n.name = '노지재배',
    n.name_kr = '노지재배',
    n.domain = 'SV',
    n.definition = '필드 센서 모듈 - 수확량 분석/예측 - GPS 센서';

MERGE (n:Concept {id: '온실재배'})
SET     n.name = '온실재배',
    n.name_kr = '온실재배',
    n.domain = 'SV',
    n.definition = '로봇 자동화 - 완전자율운행 - 다관절 로봇사용';

MERGE (n:Concept {id: '개체관리'})
SET     n.name = '개체관리',
    n.name_kr = '개체관리',
    n.domain = 'SV',
    n.definition = '개체 카운트 - edge 컴퓨팅 기반';

MERGE (n:Concept {id: '이상행동_관리'})
SET     n.name = '이상행동 관리',
    n.name_kr = '이상행동 관리',
    n.domain = 'SV',
    n.definition = '공격도, 활력도 - 딥러닝 활용';

MERGE (n:Concept {id: '시설_보급/_확산측면'})
SET     n.name = '시설 보급/ 확산측면',
    n.name_kr = '시설 보급/ 확산측면',
    n.domain = 'SV',
    n.definition = '고도화된 시설보급 - 신규 품목 발굴 - 청년층 유입';

MERGE (n:Concept {id: 'ict_데이터_수집/활용_측면'})
SET     n.name = 'ICT 데이터 수집/활용 측면',
    n.name_kr = 'ICT 데이터 수집/활용 측면',
    n.domain = 'SV',
    n.definition = '데이터 수집/활용 - 제도적 기준마련 - 데이터 통합/운영';

MERGE (n:Concept {id: '연구개발_측면'})
SET     n.name = '연구개발 측면',
    n.name_kr = '연구개발 측면',
    n.domain = 'SV',
    n.definition = '기술수준 지속향상 - R&D 재원배분 - 연구센터 성과향상';

MERGE (n:Concept {id: '산업생태계_구축_측면'})
SET     n.name = '산업생태계 구축 측면',
    n.name_kr = '산업생태계 구축 측면',
    n.domain = 'SV',
    n.definition = '장비 국산화 - 기자재 표준화 - 전문인력 양성';

MERGE (n:Concept {id: '글로벌_수출지향_핵심기술_확보'})
SET     n.name = '글로벌 수출지향 핵심기술 확보',
    n.name_kr = '글로벌 수출지향 핵심기술 확보',
    n.domain = 'SV',
    n.definition = 'K-Farm 모델의 영농 효율성 증대 - 글로벌 수출지향 핵심기술 확보';

MERGE (n:Concept {id: 'k-farm_모델의_글로벌_시장_진출'})
SET     n.name = 'K-Farm 모델의 글로벌 시장 진출',
    n.name_kr = 'K-Farm 모델의 글로벌 시장 진출',
    n.domain = 'SV',
    n.definition = '스마트팜 원천기술 확보 - K-Farm 모델의 글로벌 시장 진출을 확대';

// --- 관계 ---

MERGE (a:Concept {id: '스마트팜'})
MERGE (b:Concept {id: '스마트팜'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '스마트_온실/축사/원예_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '상황인지_센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '무선센서네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: 'lpwan'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '저전력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '인공지능'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '운영_원리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '환경정보_모니터링'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '자동·원격_환경관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '적용_분야'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '스마트_과수원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '스마트_축사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '1세대'})
MERGE (b:Concept {id: '2세대'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '1세대'})
MERGE (b:Concept {id: '3세대'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '1세대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '2세대'})
MERGE (b:Concept {id: '3세대'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '2세대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '3세대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '센서기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '통신기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: 'sw기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '로봇기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '에너지_관리_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '클라우드_기반_서비스_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '생장/생육_관리측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '농업_소프트웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '빅데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '환경/공급_관리측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '하드웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Technology {id: '데이터_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '노지재배'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '온실재배'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '개체관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '이상행동_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '시설_보급/_확산측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: 'ict_데이터_수집/활용_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '연구개발_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '산업생태계_구축_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: '글로벌_수출지향_핵심기술_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Concept {id: 'k-farm_모델의_글로벌_시장_진출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Document {id: 'SV_262.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'smart_farm'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트팜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_온실/축사/원예_등'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황인지_센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선센서네트워크'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lpwan'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저전력'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인공지능'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_원리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경정보_모니터링'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자동·원격_환경관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용_분야'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_과수원'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스마트_축사'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1세대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2세대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3세대'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통신기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '로봇기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '에너지_관리_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '클라우드_기반_서비스_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생장/생육_관리측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '농업_소프트웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '빅데이터_분석'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경/공급_관리측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '하드웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '데이터_수집'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노지재배'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '온실재배'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개체관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이상행동_관리'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시설_보급/_확산측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ict_데이터_수집/활용_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연구개발_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업생태계_구축_측면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '글로벌_수출지향_핵심기술_확보'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'k-farm_모델의_글로벌_시장_진출'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_262.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_262.3'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_263: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_263'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_264: IPS(Indoor Positioning System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_264'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Technology {id: 'indoor_positioning_system'})
SET     n.name = 'Indoor Positioning System',
    n.name_kr = 'IPS',
    n.domain = 'SV',
    n.aliases = ['Indoor Positioning System', 'IPS'];

MERGE (n:Concept {id: '공간/위치/lbs'})
SET     n.name = '공간/위치/LBS',
    n.name_kr = '공간/위치/LBS',
    n.domain = 'SV';

MERGE (n:Technology {id: 'ips'})
SET     n.name = 'IPS',
    n.name_kr = 'IPS',
    n.domain = 'SV',
    n.aliases = ['IPS'];

MERGE (n:Technology {id: 'wi_fi'})
SET     n.name = 'Wi-Fi',
    n.name_kr = 'Wi-Fi',
    n.domain = 'SV',
    n.aliases = ['Wi-Fi'];

MERGE (n:Concept {id: '센서'})
SET     n.name = '센서',
    n.name_kr = '센서',
    n.domain = 'SV';

MERGE (n:Concept {id: '비콘'})
SET     n.name = '비콘',
    n.name_kr = '비콘',
    n.domain = 'SV';

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

// --- 관계 ---

MERGE (a:Technology {id: 'ips'})
MERGE (b:Concept {id: '공간/위치/lbs'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Technology {id: 'wi_fi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Concept {id: '센서'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Concept {id: '비콘'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Document {id: 'SV_264'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Technology {id: 'indoor_positioning_system'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간/위치/lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'ips'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: 'wi_fi'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '센서'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비콘'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_265: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_265'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_266: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_266'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_267: LAS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_267'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'las'})
SET     n.name = 'LAS',
    n.name_kr = 'LAS',
    n.domain = 'SV',
    n.aliases = ['LAS'];

MERGE (n:Concept {id: 'lbs'})
SET     n.name = 'LBS',
    n.name_kr = 'LBS',
    n.domain = 'SV',
    n.aliases = ['LBS'];

MERGE (n:Concept {id: '삼각측량방식'})
SET     n.name = '삼각측량방식',
    n.name_kr = '삼각측량방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '초음파방식'})
SET     n.name = '초음파방식',
    n.name_kr = '초음파방식',
    n.domain = 'SV';

MERGE (n:Concept {id: 'rfid방식'})
SET     n.name = 'RFID방식',
    n.name_kr = 'RFID방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '컴퓨터비전기반_여상위치_인식방식'})
SET     n.name = '컴퓨터비전기반 여상위치 인식방식',
    n.name_kr = '컴퓨터비전기반 여상위치 인식방식',
    n.domain = 'SV';

MERGE (n:Concept {id: '위성통신을_이용한_위치인식_기술'})
SET     n.name = '위성통신을 이용한 위치인식 기술',
    n.name_kr = '위성통신을 이용한 위치인식 기술',
    n.domain = 'SV',
    n.definition = '지구 궤도에 떠있는 위성의 반송파 신호의 위상을 측정하거나 반송파 신호의 코드를 추적하여 대상물의 위치를 파악하는 기술';

MERGE (n:Concept {id: '이동통신을_이용한_위치인식_기술'})
SET     n.name = '이동통신을 이용한 위치인식 기술',
    n.name_kr = '이동통신을 이용한 위치인식 기술',
    n.domain = 'SV',
    n.definition = '현재 구축되어 있는 셀룰러 이동통신 네트워크를 이용하여 삼각측량 방법에 의해 위치를 측위하는 기술';

MERGE (n:Concept {id: '무선통신을_이용한_위치인식_기술'})
SET     n.name = '무선통신을 이용한 위치인식 기술',
    n.name_kr = '무선통신을 이용한 위치인식 기술',
    n.domain = 'SV',
    n.definition = '적외선, 초음파, RFID, UWB 등의 무선 통신을 이용한 위치 인식 기술';

MERGE (n:Concept {id: '영상인식을_이용한_위치인식_기술'})
SET     n.name = '영상인식을 이용한 위치인식 기술',
    n.name_kr = '영상인식을 이용한 위치인식 기술',
    n.domain = 'SV',
    n.definition = '특정 공간에 놓여진 비디오 카메라를 통해 잡힌 영상의 시간적 또는 공간적 차이점을 찾아내어 위치를 인식하는 기술';

MERGE (n:Concept {id: '매크로'})
SET     n.name = '매크로',
    n.name_kr = '매크로',
    n.domain = 'SV',
    n.definition = '가장 광범위한 위치인식 가능영역 제공 - 위치기반서비스(LBS)를 위해 GPS와 이동통신망 기반위치인식 시스템이 활용';

MERGE (n:Concept {id: '마이크로'})
SET     n.name = '마이크로',
    n.name_kr = '마이크로',
    n.domain = 'SV',
    n.definition = '매크로 위치인식 시스템이 커버하지 못하는 실내나 지하 또는 건물밀집지역 등에서 위치인식 제공 - Ubiquitous Computing을 위해 다방면으로 연구 중';

MERGE (n:Concept {id: 'ad_hoc'})
SET     n.name = 'Ad-hoc',
    n.name_kr = 'Ad-hoc',
    n.domain = 'SV',
    n.definition = '임시로 구성되는 Ad-hoc 네트워크 또는 센서 네트워크 영역에서 활용하기 위한 기술',
    n.aliases = ['Ad-hoc'];

// --- 관계 ---

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: 'lbs'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '삼각측량방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '초음파방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: 'rfid방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '컴퓨터비전기반_여상위치_인식방식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '위성통신을_이용한_위치인식_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '이동통신을_이용한_위치인식_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '무선통신을_이용한_위치인식_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '영상인식을_이용한_위치인식_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '매크로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: '마이크로'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Concept {id: 'ad_hoc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Document {id: 'SV_267'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'las'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '삼각측량방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '초음파방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '컴퓨터비전기반_여상위치_인식방식'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위성통신을_이용한_위치인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이동통신을_이용한_위치인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선통신을_이용한_위치인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영상인식을_이용한_위치인식_기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매크로'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이크로'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ad_hoc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_268.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_268.1'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_268.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_268.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_269: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_269'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_270: RTLS (Real Time Location System)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_270'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'real_time_location_system'})
SET     n.name = 'Real Time Location System',
    n.name_kr = 'RTLS',
    n.domain = 'SV',
    n.aliases = ['Real Time Location System', 'RTLS'];

MERGE (n:Concept {id: 'lbs'})
SET     n.name = 'LBS',
    n.name_kr = 'LBS',
    n.domain = 'SV',
    n.aliases = ['LBS'];

MERGE (n:Concept {id: 'rtls'})
SET     n.name = 'RTLS',
    n.name_kr = 'RTLS',
    n.domain = 'SV',
    n.aliases = ['RTLS'];

MERGE (n:Concept {id: '실시간_위치_추적'})
SET     n.name = '실시간 위치 추적',
    n.name_kr = '실시간 위치 추적',
    n.domain = 'SV';

MERGE (n:Concept {id: '정확한_재고_파악'})
SET     n.name = '정확한 재고 파악',
    n.name_kr = '정확한 재고 파악',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'rtls'})
MERGE (b:Concept {id: 'lbs'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'real_time_location_system'})
MERGE (b:Concept {id: '실시간_위치_추적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_location_system'})
MERGE (b:Concept {id: '정확한_재고_파악'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'real_time_location_system'})
MERGE (b:Document {id: 'SV_270'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'real_time_location_system'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rtls'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_위치_추적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정확한_재고_파악'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_271: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_271'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_272: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_272'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_273: 지오펜싱(Geofencing)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_273'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'geofencing'})
SET     n.name = 'Geofencing',
    n.name_kr = '지오펜싱',
    n.domain = 'SV',
    n.aliases = ['Geofencing', '지오펜싱'];

MERGE (n:Concept {id: '공간/위치/lbs'})
SET     n.name = '공간/위치/LBS',
    n.name_kr = '공간/위치/LBS',
    n.domain = 'SV';

MERGE (n:Concept {id: '가상_구획면'})
SET     n.name = '가상 구획면',
    n.name_kr = '가상 구획면',
    n.domain = 'SV';

MERGE (n:Concept {id: 'gps'})
SET     n.name = 'GPS',
    n.name_kr = 'GPS',
    n.domain = 'SV',
    n.aliases = ['GPS'];

MERGE (n:Concept {id: 'beacon'})
SET     n.name = 'Beacon',
    n.name_kr = '비콘',
    n.domain = 'SV',
    n.aliases = ['Beacon', '비콘'];

MERGE (n:Concept {id: '위치추적'})
SET     n.name = '위치추적',
    n.name_kr = '위치추적',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Concept {id: '공간/위치/lbs'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Concept {id: '가상_구획면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Concept {id: 'gps'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Concept {id: 'beacon'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Concept {id: '위치추적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Document {id: 'SV_273'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'geofencing'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간/위치/lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가상_구획면'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'gps'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'beacon'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위치추적'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_274: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_274'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_275: IndoorGML (인도어GML)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_275'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'indoorgml'})
SET     n.name = 'IndoorGML',
    n.name_kr = '인도어GML',
    n.domain = 'SV',
    n.aliases = ['IndoorGML', '인도어GML'];

MERGE (n:Concept {id: '공간/위치/lbs'})
SET     n.name = '공간/위치/LBS',
    n.name_kr = '공간/위치/LBS',
    n.domain = 'SV';

MERGE (n:Concept {id: '실내측위'})
SET     n.name = '실내측위',
    n.name_kr = '실내측위',
    n.domain = 'SV';

MERGE (n:Concept {id: '위상과_기호공간'})
SET     n.name = '위상과 기호공간',
    n.name_kr = '위상과 기호공간',
    n.domain = 'SV';

MERGE (n:Concept {id: '위상적_연결성'})
SET     n.name = '위상적 연결성',
    n.name_kr = '위상적 연결성',
    n.domain = 'SV';

MERGE (n:Concept {id: '다중공간모델'})
SET     n.name = '다중공간모델',
    n.name_kr = '다중공간모델',
    n.domain = 'SV';

MERGE (n:Concept {id: '실내주행'})
SET     n.name = '실내주행',
    n.name_kr = '실내주행',
    n.domain = 'SV';

MERGE (n:Concept {id: '노드-관계_그래프'})
SET     n.name = '노드-관계 그래프',
    n.name_kr = '노드-관계 그래프',
    n.domain = 'SV';

MERGE (n:Concept {id: '비유클리디언_공간'})
SET     n.name = '비유클리디언 공간',
    n.name_kr = '비유클리디언 공간',
    n.domain = 'SV';

MERGE (n:Concept {id: 'ogc'})
SET     n.name = 'OGC',
    n.name_kr = 'OGC',
    n.domain = 'SV',
    n.aliases = ['OGC'];

MERGE (n:Concept {id: '핵심모듈'})
SET     n.name = '핵심모듈',
    n.name_kr = '핵심모듈',
    n.domain = 'SV';

MERGE (n:Concept {id: '확장모듈'})
SET     n.name = '확장모듈',
    n.name_kr = '확장모듈',
    n.domain = 'SV';

MERGE (n:Concept {id: 'cellular_space'})
SET     n.name = 'Cellular space',
    n.name_kr = 'Cellular space',
    n.domain = 'SV',
    n.aliases = ['Cellular space'];

MERGE (n:Concept {id: 'semantic_space'})
SET     n.name = 'Semantic space',
    n.name_kr = 'Semantic space',
    n.domain = 'SV',
    n.aliases = ['Semantic space'];

// --- 관계 ---

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '공간/위치/lbs'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '실내측위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '위상과_기호공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '위상적_연결성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '다중공간모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '실내주행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '노드-관계_그래프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '비유클리디언_공간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: 'ogc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '핵심모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: '확장모듈'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: 'cellular_space'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Concept {id: 'semantic_space'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Document {id: 'SV_275'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'indoorgml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공간/위치/lbs'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실내측위'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상과_기호공간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위상적_연결성'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다중공간모델'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실내주행'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '노드-관계_그래프'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비유클리디언_공간'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ogc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '핵심모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장모듈'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cellular_space'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'semantic_space'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_276.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_276.2'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_277: RFID
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_277'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'sv'})
SET     n.name = 'SV',
    n.name_kr = '디지털서비스',
    n.domain = 'SV',
    n.aliases = ['SV', '디지털서비스'];

MERGE (n:Concept {id: 'rfid_tag'})
SET     n.name = 'RFID Tag',
    n.name_kr = 'RFID Tag',
    n.domain = 'SV',
    n.aliases = ['RFID Tag'];

MERGE (n:Concept {id: 'reader'})
SET     n.name = 'Reader',
    n.name_kr = 'Reader',
    n.domain = 'SV',
    n.aliases = ['Reader'];

MERGE (n:Concept {id: '비_접촉'})
SET     n.name = '비 접촉',
    n.name_kr = '비 접촉',
    n.domain = 'SV',
    n.definition = '포장 여부와 관계없이 원거리 인식';

MERGE (n:Concept {id: '마이크로_칩'})
SET     n.name = '마이크로 칩',
    n.name_kr = '마이크로 칩',
    n.domain = 'SV',
    n.definition = '마이크로 칩과 메모리 탑재 정보 입력/삭제 기능';

MERGE (n:Concept {id: '무선_통신'})
SET     n.name = '무선 통신',
    n.name_kr = '무선 통신',
    n.domain = 'SV',
    n.definition = '주위 상황을 인지하고 리더와 무선주파수를 이용하여 통신';

MERGE (n:Standard {id: 'rfid_reader'})
SET     n.name = 'RFID Reader',
    n.name_kr = 'RFID Reader',
    n.domain = 'SV',
    n.definition = 'RFID Tag를 인식하는 기기. Tag로부터 송신되는 각종 정보를 인식 전달하며 신호 충돌 방지 알고리즘 (Anti-collision) 등을 이용하여 초당 100개 이상의 태그를 인식 인식성능을 높이기 위해 2~4개의 안테나를 배열하여 사용 통상 Air-protocol로는 Gen2 (ISO18000-6C) 적용',
    n.aliases = ['RFID Reader'];

MERGE (n:Concept {id: 'rfid_미들웨어'})
SET     n.name = 'RFID 미들웨어',
    n.name_kr = 'RFID 미들웨어',
    n.domain = 'SV',
    n.definition = '리더기로부터 인식된 데이터를 수집하고 의미 있는 정보로 요약하여 응용 프로그램에 전달하는 기능 수행 ALE (Application Level Event)가 사실상 표준화 됨';

MERGE (n:Concept {id: 'identification_schema기술'})
SET     n.name = 'Identification Schema기술',
    n.name_kr = 'Identification Schema기술',
    n.domain = 'SV',
    n.definition = 'RFID태그를 이용하여 사물 식별이 가능해야 하므로 용도에 따라서 단위 지역 또는 전세계적으로 유일한 인식번호를 부여하기 위한 식별 코드 체계의 정의 필요(식별코드체계) 96비트 코드체계인 EPC코드를 제일 많이 사용함 128비트 및 그 이상의 코드 다양 메모리 Bank가 4개 영역으로 구분되며, 그 중 User Memory영역에는 EPC이외의 데이터 저장';

MERGE (n:Standard {id: 'rfid_태그_식별프로토콜'})
SET     n.name = 'RFID 태그 식별프로토콜',
    n.name_kr = 'RFID 태그 식별프로토콜',
    n.domain = 'SV',
    n.definition = 'RFID리더가 리드범위에서 많은 태그를 식별하기 위해서는 충돌방지(Anti-Collision) 프로토콜을 수행 (다량 태그식별) 충돌방지 프로토콜은 태그가 Reader에게 전송 하는 차례를 부여함으로써 충돌 방지함. Gen2 (ISO18000-6c)에서는 DRM (Dense Reader mode)를 통하여 다수의 리더가 상호 간섭을 회피하고 태그를 인식 할';

MERGE (n:Concept {id: 'savant'})
SET     n.name = 'Savant',
    n.name_kr = 'Savant',
    n.domain = 'SV',
    n.definition = '인터넷을 통해 ONS 서버의 DB로 제품코드(EPC)를 조회(Query) 조회된 결과(IP)로 PML 서버에 연결하여 해당 EPC의 상세정보 획득 Middleware의 old version 요즘에는 사용하지 않음',
    n.aliases = ['Savant'];

MERGE (n:Concept {id: 'ale'})
SET     n.name = 'ALE',
    n.name_kr = 'ALE',
    n.domain = 'SV',
    n.definition = '2006년 이후의 Middleware 표준 Application Level Event SQL like하게 Application 수준에서 미들웨어에 질의하고 미들웨어가 응답하는 형태의 인터페이스 구조 제공',
    n.aliases = ['ALE'];

MERGE (n:Concept {id: 'ons'})
SET     n.name = 'ONS',
    n.name_kr = 'ONS',
    n.domain = 'SV',
    n.definition = 'Object Name Service EPC를 인터넷 주소상의 URL로 변환. 태그에 저장되어 있는 EPC를 광범위한 제품 정보를 제공해주는 PML 서버(old version 최근에는 모두 EPCIS로 통칭함)의 주소와 연결',
    n.aliases = ['ONS'];

MERGE (n:Concept {id: 'pml'})
SET     n.name = 'PML',
    n.name_kr = 'PML',
    n.domain = 'SV',
    n.definition = 'Physical Markup Language Auto-ID 센터가 개발한 상품기술방식으로 XML 기반의 언어 제품의 광범위한 혹은 종합적인 정보를 저장하는 서버 Savant spec에 대응하는 태그 개체의 참조모델, 최근에는 사용 안함. 2006년이후 모두 EPC를 사용하고 있음',
    n.aliases = ['PML'];

// --- 관계 ---

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'sv'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'rfid_tag'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'reader'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: '비_접촉'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: '마이크로_칩'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: '무선_통신'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Standard {id: 'rfid_reader'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'rfid_미들웨어'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'identification_schema기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Standard {id: 'rfid_태그_식별프로토콜'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'savant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'ale'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'ons'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'pml'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Document {id: 'SV_277'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid_tag'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'reader'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비_접촉'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마이크로_칩'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무선_통신'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'rfid_reader'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid_미들웨어'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'identification_schema기술'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'rfid_태그_식별프로토콜'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ale'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ons'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pml'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_278: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_278'})
SET doc.domain = 'SV';

// ──────────────────────────────────────
// SV_279: ONS(Object Name Service)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_279'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'object_name_service'})
SET     n.name = 'Object Name Service',
    n.name_kr = 'ONS',
    n.domain = 'SV',
    n.aliases = ['Object Name Service', 'ONS'];

MERGE (n:Concept {id: 'sv'})
SET     n.name = 'SV',
    n.name_kr = '디지털서비스',
    n.domain = 'SV',
    n.aliases = ['SV', '디지털서비스'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'ons'})
SET     n.name = 'ONS',
    n.name_kr = 'ONS',
    n.domain = 'SV',
    n.aliases = ['ONS'];

MERGE (n:Concept {id: 'epc'})
SET     n.name = 'EPC',
    n.name_kr = 'EPC',
    n.domain = 'SV',
    n.aliases = ['EPC'];

MERGE (n:Concept {id: 'savant'})
SET     n.name = 'Savant',
    n.name_kr = 'Savant',
    n.domain = 'SV',
    n.aliases = ['Savant'];

MERGE (n:Concept {id: 'url로_변환'})
SET     n.name = 'URL로 변환',
    n.name_kr = 'URL로 변환',
    n.domain = 'SV';

// --- 관계 ---

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'sv'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ons'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'object_name_service'})
MERGE (b:Concept {id: 'epc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_name_service'})
MERGE (b:Concept {id: 'savant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_name_service'})
MERGE (b:Concept {id: 'url로_변환'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'object_name_service'})
MERGE (b:Document {id: 'SV_279'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'object_name_service'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ons'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'epc'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'url로_변환'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_280: PML Server (Physical Markup. Language)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_280'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'pml_server'})
SET     n.name = 'Physical Markup. Language',
    n.name_kr = 'PML Server',
    n.domain = 'SV',
    n.aliases = ['Physical Markup. Language', 'PML Server'];

MERGE (n:Concept {id: 'sv'})
SET     n.name = 'SV',
    n.name_kr = '디지털서비스',
    n.domain = 'SV',
    n.aliases = ['SV', '디지털서비스'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'savant'})
SET     n.name = 'Savant',
    n.name_kr = 'Savant',
    n.domain = 'SV',
    n.aliases = ['Savant'];

MERGE (n:Concept {id: 'ons'})
SET     n.name = 'ONS',
    n.name_kr = 'ONS',
    n.domain = 'SV',
    n.aliases = ['ONS'];

// --- 관계 ---

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'sv'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pml_server'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'pml_server'})
MERGE (b:Concept {id: 'savant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pml_server'})
MERGE (b:Concept {id: 'ons'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'pml_server'})
MERGE (b:Document {id: 'SV_280'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'pml_server'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ons'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SV_281: SAVANT
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SV_281'})
SET doc.domain = 'SV';

// --- 노드 ---

MERGE (n:Concept {id: 'savant'})
SET     n.name = 'SAVANT',
    n.name_kr = 'SAVANT',
    n.domain = 'SV',
    n.aliases = ['SAVANT'];

MERGE (n:Concept {id: 'sv'})
SET     n.name = 'SV',
    n.name_kr = '디지털서비스',
    n.domain = 'SV',
    n.aliases = ['SV', '디지털서비스'];

MERGE (n:Concept {id: 'rfid'})
SET     n.name = 'RFID',
    n.name_kr = 'RFID',
    n.domain = 'SV',
    n.aliases = ['RFID'];

MERGE (n:Concept {id: 'ems'})
SET     n.name = 'EMS',
    n.name_kr = 'EMS',
    n.domain = 'SV',
    n.aliases = ['EMS'];

MERGE (n:Concept {id: 'ried'})
SET     n.name = 'RIED',
    n.name_kr = 'RIED',
    n.domain = 'SV',
    n.aliases = ['RIED'];

MERGE (n:Concept {id: 'tms'})
SET     n.name = 'TMS',
    n.name_kr = 'TMS',
    n.domain = 'SV',
    n.aliases = ['TMS'];

// --- 관계 ---

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Concept {id: 'sv'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Concept {id: 'rfid'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Concept {id: 'ems'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Concept {id: 'ried'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Concept {id: 'tms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Document {id: 'SV_281'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'savant'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sv'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfid'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ems'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ried'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'tms'})
MERGE (b:Domain {id: 'SV'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SV 도메인 자동 생성 완료
// 노드: 277개
// 관계: 555개
// ================================================================