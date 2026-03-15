// ================================================================
// PM 도메인 (PM_051 ~ PM_094) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// PM_044.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_044.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_044.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_044.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_045: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_045'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_046: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_046'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_047: 품질보증(QA) 품질관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_047'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'qa'})
SET     n.name = '품질보증(QA) 품질관리',
    n.name_kr = '품질보증(QA) 품질관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'quality_management'})
SET     n.name = '품질관리',
    n.name_kr = '품질관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '엔지니어링_활동_검토'})
SET     n.name = '엔지니어링 활동 검토',
    n.name_kr = '엔지니어링 활동 검토',
    n.domain = 'PM';

MERGE (n:Concept {id: '품질측정평가'})
SET     n.name = '품질측정평가',
    n.name_kr = '품질측정평가',
    n.domain = 'PM';

MERGE (n:Concept {id: '문서화'})
SET     n.name = '문서화',
    n.name_kr = '문서화',
    n.domain = 'PM';

MERGE (n:Concept {id: '승인'})
SET     n.name = '승인',
    n.name_kr = '승인',
    n.domain = 'PM';

MERGE (n:Concept {id: '보고및_통보'})
SET     n.name = '보고및 통보',
    n.name_kr = '보고및 통보',
    n.domain = 'PM';

MERGE (n:Concept {id: '기법_:'})
SET     n.name = '기법 :',
    n.name_kr = '기법 :',
    n.domain = 'PM';

MERGE (n:Concept {id: '1)_6판_:_[수분표의]_수집'})
SET     n.name = '1) 6판 : [수분표의] 수집',
    n.name_kr = '1) 6판 : [수분표의] 수집',
    n.domain = 'PM';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '표현'})
SET     n.name = '표현',
    n.name_kr = '표현',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정'})
SET     n.name = '의사결정',
    n.name_kr = '의사결정',
    n.domain = 'PM';

MERGE (n:Concept {id: '수-[체]_체크리스트'})
SET     n.name = '수-[체] 체크리스트',
    n.name_kr = '수-[체] 체크리스트',
    n.domain = 'PM';

MERGE (n:Concept {id: '분-[근대문]_근본원인'})
SET     n.name = '분-[근대문] 근본원인',
    n.name_kr = '분-[근대문] 근본원인',
    n.domain = 'PM';

MERGE (n:Concept {id: '대안분석'})
SET     n.name = '대안분석',
    n.name_kr = '대안분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '문서분석'})
SET     n.name = '문서분석',
    n.name_kr = '문서분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '표-[특산흐친히]_특성요인도'})
SET     n.name = '표-[특산흐친히] 특성요인도',
    n.name_kr = '표-[특산흐친히] 특성요인도',
    n.domain = 'PM';

MERGE (n:Concept {id: '산점도'})
SET     n.name = '산점도',
    n.name_kr = '산점도',
    n.domain = 'PM';

MERGE (n:Concept {id: '흐름도'})
SET     n.name = '흐름도',
    n.name_kr = '흐름도',
    n.domain = 'PM';

MERGE (n:Concept {id: '친화도'})
SET     n.name = '친화도',
    n.name_kr = '친화도',
    n.domain = 'PM';

MERGE (n:Concept {id: '히스토그램'})
SET     n.name = '히스토그램',
    n.name_kr = '히스토그램',
    n.domain = 'PM';

MERGE (n:Concept {id: 'technical_revie'})
SET     n.name = 'Technical Revie',
    n.name_kr = 'Technical Revie',
    n.domain = 'PM',
    n.aliases = ['Technical Revie'];

MERGE (n:Concept {id: 'inspection'})
SET     n.name = 'Inspection',
    n.name_kr = 'Inspection',
    n.domain = 'PM',
    n.aliases = ['Inspection'];

MERGE (n:Concept {id: 'walkthrough'})
SET     n.name = 'Walkthrough',
    n.name_kr = 'Walkthrough',
    n.domain = 'PM',
    n.aliases = ['Walkthrough'];

MERGE (n:Concept {id: 'audit'})
SET     n.name = 'Audit',
    n.name_kr = 'Audit',
    n.domain = 'PM',
    n.aliases = ['Audit'];

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'PM',
    n.definition = '체크리스트';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'PM',
    n.definition = '근본원인분석';

MERGE (n:Concept {id: '데이터_표현'})
SET     n.name = '데이터 표현',
    n.name_kr = '데이터 표현',
    n.domain = 'PM',
    n.definition = '특성요인도';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'PM',
    n.definition = '품질감사';

MERGE (n:Concept {id: 'dfx'})
SET     n.name = 'Dfx',
    n.name_kr = '우수설계',
    n.domain = 'PM',
    n.definition = '우수성을 위한 설계 기법',
    n.aliases = ['Dfx', '우수설계'];

MERGE (n:Concept {id: 'pdca'})
SET     n.name = 'PDCA',
    n.name_kr = '품질개선방법',
    n.domain = 'PM',
    n.definition = 'Plan-Do-Check-Act',
    n.aliases = ['PDCA', '품질개선방법'];

MERGE (n:Concept {id: 'management_review'})
SET     n.name = 'Management Review',
    n.name_kr = 'Management Review',
    n.domain = 'PM',
    n.definition = '진행상태를 점검하고 시정조치 - 스케줄과 계획의 진행상태 확정',
    n.aliases = ['Management Review'];

MERGE (n:Concept {id: 'technical_review'})
SET     n.name = 'Technical Review',
    n.name_kr = 'Technical Review',
    n.domain = 'PM',
    n.definition = '프로젝트 요구사항의 기술적 적합성 평가 및 검토 - 기술적 대안 제시',
    n.aliases = ['Technical Review'];

MERGE (n:Concept {id: 'audits'})
SET     n.name = 'Audits',
    n.name_kr = '감사',
    n.domain = 'PM',
    n.definition = '프로젝트 활동들이 조직과 프로젝트 정책, 프로 세스, 절차를 준수하는지, 결정하는 조직적이고 독립적인 프로세스 - 수행 조직: PMO, 외부 조직의 감사자(Auditor) 수행',
    n.aliases = ['Audits', '감사'];

MERGE (n:Concept {id: 'problem_solving'})
SET     n.name = 'Problem Solving',
    n.name_kr = '문제 해결',
    n.domain = 'PM',
    n.definition = '프로젝트 이슈 및 도적적인 문제를 해결하기 위한 기법을 모두 말 함 예) 문제 정의, 원인 파악, 가장 좋은 해결책 찾기, 가능한 해결책 마련.',
    n.aliases = ['Problem Solving', '문제 해결'];

MERGE (n:Concept {id: 'quality_improvement_methods'})
SET     n.name = 'Quality Improvement Methods',
    n.name_kr = '품질 개선 방법',
    n.domain = 'PM',
    n.definition = 'PDCA(계획, 실행, 체크, 조치 혹은 개선)을 수행하는 방법 적용 Six Sigma 적용 등 개선할 수 있는 방법들을 말한다.',
    n.aliases = ['Quality Improvement Methods', '품질 개선 방법'];

// --- 관계 ---

MERGE (a:Concept {id: 'quality_management'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'quality_management'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '엔지니어링_활동_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '품질측정평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '문서화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '승인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '보고및_통보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '기법_:'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '1)_6판_:_[수분표의]_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '의사결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '수-[체]_체크리스트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '분-[근대문]_근본원인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '대안분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '문서분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '표-[특산흐친히]_특성요인도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '산점도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '흐름도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '친화도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '히스토그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'technical_revie'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'inspection'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'walkthrough'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'audit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '데이터_표현'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'dfx'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'pdca'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'management_review'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'technical_review'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'audits'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'problem_solving'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Concept {id: 'quality_improvement_methods'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Document {id: 'PM_047'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'qa'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality_management'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '엔지니어링_활동_검토'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질측정평가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '승인'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보고및_통보'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법_:'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '1)_6판_:_[수분표의]_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수-[체]_체크리스트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분-[근대문]_근본원인'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대안분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표-[특산흐친히]_특성요인도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산점도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '흐름도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '친화도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '히스토그램'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'technical_revie'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'inspection'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'walkthrough'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'audit'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dfx'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdca'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'management_review'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'technical_review'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'audits'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'problem_solving'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'quality_improvement_methods'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_048: 품질통제
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_048'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'qc'})
SET     n.name = 'Qc',
    n.name_kr = '품질통제',
    n.domain = 'PM',
    n.aliases = ['품질통제'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '품질관리'})
SET     n.name = '품질관리',
    n.name_kr = '품질관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[수]-체통설'})
SET     n.name = '[수]-체통설',
    n.name_kr = '[수]-체통설',
    n.domain = 'PM';

MERGE (n:Concept {id: '[분]-성근'})
SET     n.name = '[분]-성근',
    n.name_kr = '[분]-성근',
    n.domain = 'PM';

MERGE (n:Concept {id: '[표]-특산히관'})
SET     n.name = '[표]-특산히관',
    n.name_kr = '[표]-특산히관',
    n.domain = 'PM';

MERGE (n:Concept {id: '[기]-검테'})
SET     n.name = '[기]-검테',
    n.name_kr = '[기]-검테',
    n.domain = 'PM';

MERGE (n:Concept {id: 'qc7'})
SET     n.name = 'QC7',
    n.name_kr = 'QC7',
    n.domain = 'PM',
    n.aliases = ['QC7'];

MERGE (n:Concept {id: '[현원자]_현상파악'})
SET     n.name = '[현원자] 현상파악',
    n.name_kr = '[현원자] 현상파악',
    n.domain = 'PM';

MERGE (n:Concept {id: '원인분석'})
SET     n.name = '원인분석',
    n.name_kr = '원인분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '자료관리'})
SET     n.name = '자료관리',
    n.name_kr = '자료관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[현]_-_[파히체]_파레토차트'})
SET     n.name = '[현] - [파히체] 파레토차트',
    n.name_kr = '[현] - [파히체] 파레토차트',
    n.domain = 'PM';

MERGE (n:Concept {id: '히스토그램'})
SET     n.name = '히스토그램',
    n.name_kr = '히스토그램',
    n.domain = 'PM';

MERGE (n:Concept {id: '체크시트'})
SET     n.name = '체크시트',
    n.name_kr = '체크시트',
    n.domain = 'PM';

MERGE (n:Concept {id: '[원]_-_[특산흐]_특성요인도'})
SET     n.name = '[원] - [특산흐] 특성요인도',
    n.name_kr = '[원] - [특산흐] 특성요인도',
    n.domain = 'PM';

MERGE (n:Concept {id: '산점도'})
SET     n.name = '산점도',
    n.name_kr = '산점도',
    n.domain = 'PM';

MERGE (n:Concept {id: '흐름도'})
SET     n.name = '흐름도',
    n.name_kr = '흐름도',
    n.domain = 'PM';

MERGE (n:Concept {id: '[자]_-_[관]_관리도'})
SET     n.name = '[자] - [관] 관리도',
    n.name_kr = '[자] - [관] 관리도',
    n.domain = 'PM';

MERGE (n:Concept {id: '신oc7_:_[친연계매데p애]_친화도'})
SET     n.name = '신OC7 : [친연계매데P애] 친화도',
    n.name_kr = '신OC7 : [친연계매데P애] 친화도',
    n.domain = 'PM';

MERGE (n:Concept {id: '연관도'})
SET     n.name = '연관도',
    n.name_kr = '연관도',
    n.domain = 'PM';

MERGE (n:Concept {id: '계통도'})
SET     n.name = '계통도',
    n.name_kr = '계통도',
    n.domain = 'PM';

MERGE (n:Concept {id: '매트릭스도'})
SET     n.name = '매트릭스도',
    n.name_kr = '매트릭스도',
    n.domain = 'PM';

MERGE (n:Concept {id: '매트릭스_데이터_해석법'})
SET     n.name = '매트릭스 데이터 해석법',
    n.name_kr = '매트릭스 데이터 해석법',
    n.domain = 'PM';

MERGE (n:Concept {id: 'pdpc'})
SET     n.name = 'PDPC',
    n.name_kr = 'PDPC',
    n.domain = 'PM',
    n.aliases = ['PDPC'];

MERGE (n:Concept {id: '애로우_다이어그램'})
SET     n.name = '애로우 다이어그램',
    n.name_kr = '애로우 다이어그램',
    n.domain = 'PM';

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'PM',
    n.definition = '체크리스트';

MERGE (n:Concept {id: '통계적_표본추출'})
SET     n.name = '통계적 표본추출',
    n.name_kr = '통계적 표본추출',
    n.domain = 'PM',
    n.definition = '모집단에서 표본 추출';

MERGE (n:Concept {id: '설문지&_설문조사'})
SET     n.name = '설문지& 설문조사',
    n.name_kr = '설문지& 설문조사',
    n.domain = 'PM',
    n.definition = '설문지 및 설문조사';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'PM',
    n.definition = '성과 검토';

MERGE (n:Concept {id: '근본원인분석'})
SET     n.name = '근본원인분석',
    n.name_kr = '근본원인분석',
    n.domain = 'PM',
    n.definition = '근본적인 원인을 찾아 문제 해결';

MERGE (n:Concept {id: '데이터_표현'})
SET     n.name = '데이터 표현',
    n.name_kr = '데이터 표현',
    n.domain = 'PM',
    n.definition = '특성요인도';

MERGE (n:Concept {id: '관리도'})
SET     n.name = '관리도',
    n.name_kr = '관리도',
    n.domain = 'PM',
    n.definition = '프로세스가 일정 품질수준유지 상태인지 판단';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'PM',
    n.definition = '검사(Inspection)';

MERGE (n:Concept {id: '테스트&제품평가'})
SET     n.name = '테스트&제품평가',
    n.name_kr = '테스트&제품평가',
    n.domain = 'PM',
    n.definition = '체계적 조사, 결함 조사';

MERGE (n:Concept {id: '현상파악'})
SET     n.name = '현상파악',
    n.name_kr = '현상파악',
    n.domain = 'PM',
    n.definition = '파레토 차트';

MERGE (n:Standard {id: '층별'})
SET     n.name = '층별',
    n.name_kr = '층별',
    n.domain = 'PM',
    n.definition = '데이터를 2개 이상의 관련 부분집단으로 나누어 문제의 원인을 규명하는 기법 (PMBOK 5th에는 없는 도구)';

MERGE (n:Concept {id: '현상파악_단계_활용_도구'})
SET     n.name = '현상파악 단계 활용 도구',
    n.name_kr = '현상파악 단계 활용 도구',
    n.domain = 'PM',
    n.definition = '파레토 차트';

MERGE (n:Concept {id: '체크_시트'})
SET     n.name = '체크 시트',
    n.name_kr = '체크 시트',
    n.domain = 'PM',
    n.definition = 'Check Sheet - 데이터 수집, 문제 분석을 효율적으로 실시하기 위한 도구 - 간단히 체크해서 결과를 쉽게 알 수 있도록 만든 도표';

MERGE (n:Concept {id: '원인분석_단계_활용_도구'})
SET     n.name = '원인분석 단계 활용 도구',
    n.name_kr = '원인분석 단계 활용 도구',
    n.domain = 'PM',
    n.definition = '특성요인도';

MERGE (n:Concept {id: '자료관리_단계_활용도구'})
SET     n.name = '자료관리 단계 활용도구',
    n.name_kr = '자료관리 단계 활용도구',
    n.domain = 'PM',
    n.definition = '관리도';

// --- 관계 ---

MERGE (a:Concept {id: '품질관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '품질관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[수]-체통설'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[분]-성근'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[표]-특산히관'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[기]-검테'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: 'qc7'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[현원자]_현상파악'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '원인분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '자료관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[현]_-_[파히체]_파레토차트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '히스토그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '체크시트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[원]_-_[특산흐]_특성요인도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '산점도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '흐름도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '[자]_-_[관]_관리도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '신oc7_:_[친연계매데p애]_친화도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '연관도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '계통도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '매트릭스도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '매트릭스_데이터_해석법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: 'pdpc'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '애로우_다이어그램'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '통계적_표본추출'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '설문지&_설문조사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '근본원인분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '데이터_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '관리도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '테스트&제품평가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '현상파악'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Standard {id: '층별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '현상파악_단계_활용_도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '체크_시트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '원인분석_단계_활용_도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Concept {id: '자료관리_단계_활용도구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Document {id: 'PM_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'qc'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '품질관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[수]-체통설'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[분]-성근'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[표]-특산히관'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[기]-검테'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'qc7'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[현원자]_현상파악'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원인분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[현]_-_[파히체]_파레토차트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '히스토그램'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체크시트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[원]_-_[특산흐]_특성요인도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산점도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '흐름도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[자]_-_[관]_관리도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신oc7_:_[친연계매데p애]_친화도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연관도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계통도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매트릭스도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매트릭스_데이터_해석법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pdpc'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애로우_다이어그램'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통계적_표본추출'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설문지&_설문조사'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '근본원인분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '테스트&제품평가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현상파악'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '층별'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '현상파악_단계_활용_도구'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체크_시트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원인분석_단계_활용_도구'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자료관리_단계_활용도구'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_049.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_049.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_050: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_050'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_051: RACI
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_051'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'raci'})
SET     n.name = 'RACI',
    n.name_kr = 'RACI',
    n.domain = 'PM',
    n.aliases = ['RACI'];

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '인적자원관리'})
SET     n.name = '인적자원관리',
    n.name_kr = '인적자원관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[실의조통]_실무책임자'})
SET     n.name = '[실의조통] 실무책임자',
    n.name_kr = '[실의조통] 실무책임자',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정권자'})
SET     n.name = '의사결정권자',
    n.name_kr = '의사결정권자',
    n.domain = 'PM';

MERGE (n:Concept {id: '조언자'})
SET     n.name = '조언자',
    n.name_kr = '조언자',
    n.domain = 'PM';

MERGE (n:Concept {id: '결과통보대상자'})
SET     n.name = '결과통보대상자',
    n.name_kr = '결과통보대상자',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '인적자원관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Concept {id: '인적자원관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Concept {id: '[실의조통]_실무책임자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Concept {id: '의사결정권자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Concept {id: '조언자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Concept {id: '결과통보대상자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Document {id: 'PM_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'raci'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인적자원관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[실의조통]_실무책임자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정권자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조언자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과통보대상자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_052: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_052'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_053: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_053'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_054.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_054.1'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_054.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_054.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_055: 프로젝트 의사소통관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_055'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_의사소통관리'})
SET     n.name = '프로젝트 의사소통관리',
    n.name_kr = '프로젝트 의사소통관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사소통관리'})
SET     n.name = '의사소통관리',
    n.name_kr = '의사소통관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '해독화'})
SET     n.name = '해독화',
    n.name_kr = '해독화',
    n.domain = 'PM';

MERGE (n:Concept {id: '전달_메시지'})
SET     n.name = '전달 메시지',
    n.name_kr = '전달 메시지',
    n.domain = 'PM';

MERGE (n:Concept {id: '수신확인'})
SET     n.name = '수신확인',
    n.name_kr = '수신확인',
    n.domain = 'PM';

MERGE (n:Concept {id: '피드백/응답'})
SET     n.name = '피드백/응답',
    n.name_kr = '피드백/응답',
    n.domain = 'PM';

MERGE (n:Concept {id: '매체)'})
SET     n.name = '매체)',
    n.name_kr = '매체)',
    n.domain = 'PM';

MERGE (n:Concept {id: '6하_원칙'})
SET     n.name = '6하 원칙(5W 1H)',
    n.name_kr = '6하 원칙(5W 1H)',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사소통_모델'})
SET     n.name = '의사소통 모델',
    n.name_kr = '의사소통 모델',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '의사소통관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '의사소통관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '해독화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '전달_메시지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '수신확인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '피드백/응답'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '매체)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '6하_원칙'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Concept {id: '의사소통_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Document {id: 'PM_055'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_의사소통관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사소통관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해독화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전달_메시지'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수신확인'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피드백/응답'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '매체)'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '6하_원칙'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사소통_모델'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_056: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_056'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_057: 프로젝트 위험관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_057'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_위험관리'})
SET     n.name = '프로젝트 위험관리',
    n.name_kr = '프로젝트 위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[계식성량대실감]_계획'})
SET     n.name = '[계식성량대실감] 계획',
    n.name_kr = '[계식성량대실감] 계획',
    n.domain = 'PM';

MERGE (n:Concept {id: '식별'})
SET     n.name = '식별',
    n.name_kr = '식별',
    n.domain = 'PM';

MERGE (n:Concept {id: '정성적'})
SET     n.name = '정성적',
    n.name_kr = '정성적',
    n.domain = 'PM';

MERGE (n:Concept {id: '정량적'})
SET     n.name = '정량적',
    n.name_kr = '정량적',
    n.domain = 'PM';

MERGE (n:Concept {id: '대응계획수립'})
SET     n.name = '대응계획수립',
    n.name_kr = '대응계획수립',
    n.domain = 'PM';

MERGE (n:Concept {id: '대응실행'})
SET     n.name = '대응실행',
    n.name_kr = '대응실행',
    n.domain = 'PM';

MERGE (n:Concept {id: '감시'})
SET     n.name = '감시',
    n.name_kr = '감시',
    n.domain = 'PM';

MERGE (n:Concept {id: '비현실적_일정/예산'})
SET     n.name = '비현실적 일정/예산',
    n.name_kr = '비현실적 일정/예산',
    n.domain = 'PM';

MERGE (n:Concept {id: '잘못된_기능_구현'})
SET     n.name = '잘못된 기능 구현',
    n.name_kr = '잘못된 기능 구현',
    n.domain = 'PM';

MERGE (n:Concept {id: '잘못된_ui_개발'})
SET     n.name = '잘못된 UI 개발',
    n.name_kr = '잘못된 UI 개발',
    n.domain = 'PM';

MERGE (n:Concept {id: '과대포장'})
SET     n.name = '과대포장',
    n.name_kr = '과대포장',
    n.domain = 'PM';

MERGE (n:Concept {id: '지속적_요구사항변경'})
SET     n.name = '지속적 요구사항변경',
    n.name_kr = '지속적 요구사항변경',
    n.domain = 'PM';

MERGE (n:Concept {id: '외부_기능_부족'})
SET     n.name = '외부 기능 부족',
    n.name_kr = '외부 기능 부족',
    n.domain = 'PM';

MERGE (n:Concept {id: '외부_작업_부족'})
SET     n.name = '외부 작업 부족',
    n.name_kr = '외부 작업 부족',
    n.domain = 'PM';

MERGE (n:Concept {id: '실시간_성능_문제'})
SET     n.name = '실시간 성능 문제',
    n.name_kr = '실시간 성능 문제',
    n.domain = 'PM';

MERGE (n:Concept {id: '기술적_취약'})
SET     n.name = '기술적 취약',
    n.name_kr = '기술적 취약',
    n.domain = 'PM';

MERGE (n:Concept {id: '이슈관리'})
SET     n.name = '이슈관리',
    n.name_kr = '이슈관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '주요_관리_대상'})
SET     n.name = '주요 관리 대상',
    n.name_kr = '주요 관리 대상',
    n.domain = 'PM',
    n.definition = '일정, 비용, 품질, 인적자원 등';

MERGE (n:Concept {id: '관리_시점'})
SET     n.name = '관리 시점',
    n.name_kr = '관리 시점',
    n.domain = 'PM',
    n.definition = '프로젝트 진행 전부터 종료 시점까지';

MERGE (n:Concept {id: '해결_시점'})
SET     n.name = '해결 시점',
    n.name_kr = '해결 시점',
    n.domain = 'PM',
    n.definition = '당장 해결하지 않아도 프로젝트 진행 가능';

// --- 관계 ---

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '[계식성량대실감]_계획'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '식별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '정성적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '정량적'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '대응계획수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '대응실행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '비현실적_일정/예산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '잘못된_기능_구현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '잘못된_ui_개발'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '과대포장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '지속적_요구사항변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '외부_기능_부족'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '외부_작업_부족'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '실시간_성능_문제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '기술적_취약'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Concept {id: '이슈관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '이슈관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Concept {id: '이슈관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '이슈관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '주요_관리_대상'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '관리_시점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Concept {id: '해결_시점'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Document {id: 'PM_057'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[계식성량대실감]_계획'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '식별'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정성적'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정량적'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응계획수립'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응실행'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감시'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비현실적_일정/예산'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잘못된_기능_구현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '잘못된_ui_개발'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '과대포장'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지속적_요구사항변경'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_기능_부족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외부_작업_부족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_성능_문제'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_취약'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이슈관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_관리_대상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리_시점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_시점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_058: 정성적 위험 분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_058'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '정성적_위험_분석'})
SET     n.name = '정성적 위험 분석',
    n.name_kr = '정성적 위험 분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[수분표대기]_수집'})
SET     n.name = '[수분표대기] 수집',
    n.name_kr = '[수분표대기] 수집',
    n.domain = 'PM';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '표현'})
SET     n.name = '표현',
    n.name_kr = '표현',
    n.domain = 'PM';

MERGE (n:Concept {id: '대인관계_및_팀스킬'})
SET     n.name = '대인관계 및 팀스킬',
    n.name_kr = '대인관계 및 팀스킬',
    n.domain = 'PM';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'PM';

MERGE (n:Concept {id: '수-[인]_인터뷰'})
SET     n.name = '수-[인] 인터뷰',
    n.name_kr = '수-[인] 인터뷰',
    n.domain = 'PM';

MERGE (n:Concept {id: 'risk_data_quality_assessment'})
SET     n.name = '위험 데이터 품질 평가',
    n.name_kr = '위험 데이터 품질 평가',
    n.domain = 'PM';

MERGE (n:Concept {id: 'assessment_of_other_risk_parameters'})
SET     n.name = '기타 위험 모수 평가',
    n.name_kr = '기타 위험 모수 평가',
    n.domain = 'PM';

MERGE (n:Concept {id: '계층적_차트'})
SET     n.name = '계층적 차트',
    n.name_kr = '계층적 차트',
    n.domain = 'PM';

MERGE (n:Concept {id: '대-[촉]_촉진'})
SET     n.name = '대-[촉] 촉진',
    n.name_kr = '대-[촉] 촉진',
    n.domain = 'PM';

MERGE (n:Concept {id: '기-[전유미]_전문가_판단'})
SET     n.name = '기-[전유미] 전문가 판단',
    n.name_kr = '기-[전유미] 전문가 판단',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험유형분류'})
SET     n.name = '위험유형분류',
    n.name_kr = '위험유형분류',
    n.domain = 'PM';

MERGE (n:Concept {id: 'meetings'})
SET     n.name = '미팅',
    n.name_kr = '미팅',
    n.domain = 'PM';

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'PM',
    n.definition = '인터뷰';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'PM',
    n.definition = '위험 확률 및 영향력 평가';

MERGE (n:Concept {id: '데이터_표현'})
SET     n.name = '데이터 표현',
    n.name_kr = '데이터 표현',
    n.domain = 'PM',
    n.definition = '위험 확률 및 영향력 매트릭스';

MERGE (n:Concept {id: 'hierarchical_charts'})
SET     n.name = '계층적인 차트',
    n.name_kr = '계층적인 차트',
    n.domain = 'PM',
    n.definition = '3개 모수를 표현하는 버블차트 버블의 크기가 클수록 허용할 수 없는 큰 위험 요소이다. 버블의 크기는 영향 값(Impact value)이다.';

MERGE (n:Concept {id: 'interpersonal_and_team_skills'})
SET     n.name = '대인관계 및 팀 기술',
    n.name_kr = '대인관계 및 팀 기술',
    n.domain = 'PM',
    n.definition = '촉진';

MERGE (n:Concept {id: '기타_기법'})
SET     n.name = '기타 기법',
    n.name_kr = '기타 기법',
    n.domain = 'PM',
    n.definition = '전문가 판단';

MERGE (n:Concept {id: 'risk_categorization'})
SET     n.name = '위험 유형 분류',
    n.name_kr = '위험 유형 분류',
    n.domain = 'PM',
    n.definition = '비슷한 원인을 가진 리스크를 RBS를 이용하여 분류';

// --- 관계 ---

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '[수분표대기]_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '대인관계_및_팀스킬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '수-[인]_인터뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'risk_data_quality_assessment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'assessment_of_other_risk_parameters'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '계층적_차트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '대-[촉]_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '기-[전유미]_전문가_판단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '위험유형분류'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'meetings'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '데이터_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'hierarchical_charts'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'interpersonal_and_team_skills'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: '기타_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Concept {id: 'risk_categorization'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Document {id: 'PM_058'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정성적_위험_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[수분표대기]_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대인관계_및_팀스킬'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수-[인]_인터뷰'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risk_data_quality_assessment'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'assessment_of_other_risk_parameters'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계층적_차트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대-[촉]_촉진'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기-[전유미]_전문가_판단'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험유형분류'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'meetings'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hierarchical_charts'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'interpersonal_and_team_skills'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'risk_categorization'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_059: 정량적 위험 분석
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_059'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '정량적_위험_분석'})
SET     n.name = '정량적 위험 분석',
    n.name_kr = '정량적 위험 분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트관리'})
SET     n.name = '프로젝트관리',
    n.name_kr = '프로젝트관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[수분대기]_수집'})
SET     n.name = '[수분대기] 수집',
    n.name_kr = '[수분대기] 수집',
    n.domain = 'PM';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '대인관계_및_팀_스킬'})
SET     n.name = '대인관계 및 팀 스킬',
    n.name_kr = '대인관계 및 팀 스킬',
    n.domain = 'PM';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'PM';

MERGE (n:Concept {id: '수-[인]_인터뷰'})
SET     n.name = '수-[인] 인터뷰',
    n.name_kr = '수-[인] 인터뷰',
    n.domain = 'PM';

MERGE (n:Concept {id: '부-[영민의모]_영향도'})
SET     n.name = '부-[영민의모] 영향도',
    n.name_kr = '부-[영민의모] 영향도',
    n.domain = 'PM';

MERGE (n:Concept {id: 'sensitivity_analysis'})
SET     n.name = '민감도 분석',
    n.name_kr = '민감도 분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정'})
SET     n.name = '의사결정',
    n.name_kr = '의사결정',
    n.domain = 'PM';

MERGE (n:Concept {id: 'simulation'})
SET     n.name = '모의실험',
    n.name_kr = '모의실험',
    n.domain = 'PM';

MERGE (n:Concept {id: '대-[촉]_촉진'})
SET     n.name = '대-[촉] 촉진',
    n.name_kr = '대-[촉] 촉진',
    n.domain = 'PM';

MERGE (n:Concept {id: '기-[불전]_불활실성_표현'})
SET     n.name = '기-[불전] 불활실성 표현',
    n.name_kr = '기-[불전] 불활실성 표현',
    n.domain = 'PM';

MERGE (n:Concept {id: 'expert_judgment'})
SET     n.name = '전문가 판단',
    n.name_kr = '전문가 판단',
    n.domain = 'PM';

MERGE (n:Concept {id: '데이터_수집'})
SET     n.name = '데이터 수집',
    n.name_kr = '데이터 수집',
    n.domain = 'PM',
    n.definition = '인터뷰';

MERGE (n:Concept {id: '데이터_분석'})
SET     n.name = '데이터 분석',
    n.name_kr = '데이터 분석',
    n.domain = 'PM',
    n.definition = '영향도';

MERGE (n:Concept {id: 'decision_analysis'})
SET     n.name = '의사결정 분석',
    n.name_kr = '의사결정 분석',
    n.domain = 'PM',
    n.definition = '각 의사결정에 따른 기대값을 계산하여 최적의 의사결정 선택 EMV (Expected Monetary Value) - 예상되는 금전적인 가치로 위험의 크기를 측정하여 의사결정';

MERGE (n:Concept {id: '기타_기법'})
SET     n.name = '기타 기법',
    n.name_kr = '기타 기법',
    n.domain = 'PM',
    n.definition = '불활실성 표현';

MERGE (n:Concept {id: '예시'})
SET     n.name = '예시',
    n.name_kr = '예시',
    n.domain = 'PM';

MERGE (n:Concept {id: 'one_way_anova'})
SET     n.name = 'one-way ANOVA',
    n.name_kr = '일원 분산 분석',
    n.domain = 'PM',
    n.definition = '셋 이상의 집단간 통계적으로 유의미한 차이가 있는지 검증하는 방법',
    n.aliases = ['one-way ANOVA', '일원 분산 분석'];

MERGE (n:Concept {id: 'scenario_analysis'})
SET     n.name = 'Scenario Analysis',
    n.name_kr = '시나리오 분석',
    n.domain = 'PM',
    n.definition = '가정을 토대로 미래 상황 기술하는 것으로 시스템 경계, 할당 방법, 기술, 시간, 공간 및 가중치 방법등 사용',
    n.aliases = ['Scenario Analysis', '시나리오 분석'];

// --- 관계 ---

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Concept {id: '프로젝트관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '[수분대기]_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '대인관계_및_팀_스킬'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '수-[인]_인터뷰'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '부-[영민의모]_영향도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'sensitivity_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '의사결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'simulation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '대-[촉]_촉진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '기-[불전]_불활실성_표현'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'expert_judgment'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '데이터_수집'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '데이터_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'decision_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '기타_기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: '예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'one_way_anova'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Concept {id: 'scenario_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Document {id: 'PM_059'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정량적_위험_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[수분대기]_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대인관계_및_팀_스킬'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수-[인]_인터뷰'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부-[영민의모]_영향도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sensitivity_analysis'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'simulation'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대-[촉]_촉진'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기-[불전]_불활실성_표현'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'expert_judgment'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_수집'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision_analysis'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예시'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'one_way_anova'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'scenario_analysis'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_060.1: 시뮬레이션 기법 (정량적)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_060.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '시뮬레이션_기법'})
SET     n.name = '시뮬레이션 기법 (정량적)',
    n.name_kr = '시뮬레이션 기법 (정량적)',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '모델_유형'})
SET     n.name = '모델 유형',
    n.name_kr = '모델 유형',
    n.domain = 'PM',
    n.definition = '물리적 모델';

MERGE (n:Concept {id: '논리적_모델'})
SET     n.name = '논리적 모델',
    n.name_kr = '논리적 모델',
    n.domain = 'PM',
    n.definition = '디지털 시뮬레이션 (Digital Simulation) - 시스템의 핵심 특징을 수학적으로 모델링하고 컴퓨터 이용해 분석 평가하는 분석 (경영과학에서 수행하는 대부분의 시뮬레이션)';

MERGE (n:Concept {id: '연속적_vs_이산적'})
SET     n.name = '연속적 vs 이산적',
    n.name_kr = '연속적 vs 이산적',
    n.domain = 'PM',
    n.definition = '시스템 상태변화가 계속적이면 연속적, 특정 시간의 상태변화면 이산적';

MERGE (n:Concept {id: '결정론적_vs_확률적'})
SET     n.name = '결정론적 vs 확률적',
    n.name_kr = '결정론적 vs 확률적',
    n.domain = 'PM',
    n.definition = '입력변수로 확률 변수 사용 여부에 따라 분류';

// --- 관계 ---

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Concept {id: '모델_유형'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Concept {id: '논리적_모델'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Concept {id: '연속적_vs_이산적'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Concept {id: '결정론적_vs_확률적'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Document {id: 'PM_060.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '시뮬레이션_기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델_유형'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '논리적_모델'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '연속적_vs_이산적'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결정론적_vs_확률적'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_060.3: 의사결정 트리(Decision Tree)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_060.3'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'decision_tree'})
SET     n.name = 'Decision Tree',
    n.name_kr = '의사결정 트리',
    n.domain = 'PM',
    n.aliases = ['Decision Tree', '의사결정 트리'];

MERGE (n:Concept {id: '프로젝트_위험관리'})
SET     n.name = '프로젝트 위험관리',
    n.name_kr = '프로젝트 위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정'})
SET     n.name = '의사결정',
    n.name_kr = '의사결정',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정_노드'})
SET     n.name = '의사결정 노드',
    n.name_kr = '의사결정 노드',
    n.domain = 'PM';

MERGE (n:Concept {id: '기회노트'})
SET     n.name = '기회노트',
    n.name_kr = '기회노트',
    n.domain = 'PM';

MERGE (n:Concept {id: '말단노드'})
SET     n.name = '말단노드',
    n.name_kr = '말단노드',
    n.domain = 'PM';

MERGE (n:Concept {id: '가지'})
SET     n.name = '가지',
    n.name_kr = '가지',
    n.domain = 'PM';

MERGE (n:Concept {id: 'emv'})
SET     n.name = 'EMV',
    n.name_kr = 'EMV',
    n.domain = 'PM',
    n.aliases = ['EMV'];

MERGE (n:Concept {id: '사례정의'})
SET     n.name = '사례정의',
    n.name_kr = '사례정의',
    n.domain = 'PM',
    n.definition = '가. 신제품은 앞으로 10년간 계속 판매하며 수요가 높을 확률은 60%, 낮을 확률은 40%이다. 나. 시설투자는 대규모 투자 시 5억원이고, 소규모 투자 시 3억원의 비용이 발생된다. 다. 대규모 시설에서 수요가 높으면 10년간 매년 9천만원, 수요가 낮으면 매년 2천만원의 수익이 발생된다. 라. 소규모 시설에서 수요가 높으면 10년간 매년 5천만원, 수';

MERGE (n:Concept {id: '의사결정_사항'})
SET     n.name = '의사결정 사항',
    n.name_kr = '의사결정 사항',
    n.domain = 'PM',
    n.definition = '대규모 시설 투자? - 소규모 시설 투자?';

MERGE (n:Concept {id: 'emv_계산'})
SET     n.name = 'EMV 계산',
    n.name_kr = 'EMV 계산',
    n.domain = 'PM',
    n.definition = '선택';

MERGE (n:Concept {id: '대규모_시설_투자'})
SET     n.name = '대규모 시설 투자',
    n.name_kr = '대규모 시설 투자',
    n.domain = 'PM',
    n.definition = '높은 수요';

MERGE (n:Concept {id: '낮은_수요'})
SET     n.name = '낮은 수요',
    n.name_kr = '낮은 수요',
    n.domain = 'PM',
    n.definition = '40%';

MERGE (n:Concept {id: '소규모_시설_투자'})
SET     n.name = '소규모 시설 투자',
    n.name_kr = '소규모 시설 투자',
    n.domain = 'PM',
    n.definition = '3억';

MERGE (n:Concept {id: '0.1억'})
SET     n.name = '0.1억',
    n.name_kr = '0.1억',
    n.domain = 'PM',
    n.definition = '0.8억 = ((0.1억*10)-3억) * 40%';

MERGE (n:Concept {id: '의사결정_트리_작성'})
SET     n.name = '의사결정 트리 작성',
    n.name_kr = '의사결정 트리 작성',
    n.domain = 'PM';

MERGE (n:Concept {id: '의사결정나무'})
SET     n.name = '의사결정나무',
    n.name_kr = '의사결정나무',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '의사결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '의사결정_노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '기회노트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '말단노드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '가지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: 'emv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '사례정의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '의사결정_사항'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: 'emv_계산'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '대규모_시설_투자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '낮은_수요'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '소규모_시설_투자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '0.1억'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '의사결정_트리_작성'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'emv'})
MERGE (b:Concept {id: '의사결정나무'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: 'emv'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Concept {id: '의사결정나무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Document {id: 'PM_060.3'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'decision_tree'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정_노드'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기회노트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '말단노드'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가지'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'emv'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사례정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정_사항'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'emv_계산'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대규모_시설_투자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '낮은_수요'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소규모_시설_투자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '0.1억'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정_트리_작성'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사결정나무'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_061: 위험 대응 계획 수립
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_061'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '위험_대응_계획_수립'})
SET     n.name = '위험 대응 계획 수립',
    n.name_kr = '위험 대응 계획 수립',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험관리'})
SET     n.name = '위험관리',
    n.name_kr = '위험관리',
    n.domain = 'PM';

MERGE (n:Concept {id: 'avoid'})
SET     n.name = '회피',
    n.name_kr = '회피',
    n.domain = 'PM';

MERGE (n:Concept {id: 'transfer'})
SET     n.name = '전가',
    n.name_kr = '전가',
    n.domain = 'PM';

MERGE (n:Concept {id: 'mitigate'})
SET     n.name = '완화',
    n.name_kr = '완화',
    n.domain = 'PM';

MERGE (n:Concept {id: 'accept'})
SET     n.name = '수용',
    n.name_kr = '수용',
    n.domain = 'PM';

MERGE (n:Concept {id: 'exploit'})
SET     n.name = '활용',
    n.name_kr = '활용',
    n.domain = 'PM';

MERGE (n:Concept {id: 'share'})
SET     n.name = '공유',
    n.name_kr = '공유',
    n.domain = 'PM';

MERGE (n:Concept {id: 'enhance'})
SET     n.name = '증대',
    n.name_kr = '증대',
    n.domain = 'PM';

MERGE (n:Concept {id: '주요_관리_대상'})
SET     n.name = '주요 관리 대상',
    n.name_kr = '주요 관리 대상',
    n.domain = 'PM',
    n.definition = '일정, 비용, 품질, 인적자원 등';

MERGE (n:Concept {id: '관리_시점'})
SET     n.name = '관리 시점',
    n.name_kr = '관리 시점',
    n.domain = 'PM',
    n.definition = '프로젝트 진행 전부터 종료 시점까지';

MERGE (n:Concept {id: '해결_시점'})
SET     n.name = '해결 시점',
    n.name_kr = '해결 시점',
    n.domain = 'PM',
    n.definition = '당장 해결하지 않아도 프로젝트 진행 가능';

MERGE (n:Concept {id: '적극적_대응'})
SET     n.name = '적극적 대응',
    n.name_kr = '적극적 대응',
    n.domain = 'PM',
    n.definition = '회피';

MERGE (n:Concept {id: '소극적_대응'})
SET     n.name = '소극적 대응',
    n.name_kr = '소극적 대응',
    n.domain = 'PM',
    n.definition = '완화';

MERGE (n:Concept {id: '위험대응_방안_예시'})
SET     n.name = '위험대응 방안 예시',
    n.name_kr = '위험대응 방안 예시',
    n.domain = 'PM';

MERGE (n:Concept {id: '위험대응_전략'})
SET     n.name = '위험대응 전략',
    n.name_kr = '위험대응 전략',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '위험관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'avoid'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'transfer'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'mitigate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'accept'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'exploit'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'share'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: 'enhance'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '주요_관리_대상'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '관리_시점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '해결_시점'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '적극적_대응'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '소극적_대응'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: '위험대응_방안_예시'})
MERGE (b:Concept {id: '위험대응_전략'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '위험대응_방안_예시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Concept {id: '위험대응_전략'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Document {id: 'PM_061'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '위험_대응_계획_수립'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'avoid'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transfer'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mitigate'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'accept'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'exploit'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'share'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'enhance'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요_관리_대상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리_시점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_시점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적극적_대응'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '소극적_대응'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험대응_방안_예시'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험대응_전략'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_062: 프로젝트 조달관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_062'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_조달관리'})
SET     n.name = '프로젝트 조달관리',
    n.name_kr = '프로젝트 조달관리',
    n.domain = 'PM';

MERGE (n:Metric {id: 'fp'})
SET     n.name = 'FP',
    n.name_kr = 'FP',
    n.domain = 'PM',
    n.aliases = ['FP'];

MERGE (n:Concept {id: 'cpx'})
SET     n.name = 'CPx',
    n.name_kr = 'CPx',
    n.domain = 'PM',
    n.aliases = ['CPx'];

MERGE (n:Concept {id: 't&m'})
SET     n.name = 'T&M',
    n.name_kr = 'T&M',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Metric {id: 'fp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Concept {id: 'cpx'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Concept {id: 't&m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Document {id: 'PM_062'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'fp'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cpx'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 't&m'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_063: 계약 유형 3가지
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_063'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '계약_유형_3가지'})
SET     n.name = '계약 유형 3가지',
    n.name_kr = '계약 유형 3가지',
    n.domain = 'PM';

MERGE (n:Concept {id: '프로젝트_조달관리'})
SET     n.name = '프로젝트 조달관리',
    n.name_kr = '프로젝트 조달관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[고원시]_고정가'})
SET     n.name = '[고원시] 고정가',
    n.name_kr = '[고원시] 고정가',
    n.domain = 'PM';

MERGE (n:Concept {id: '원가정산'})
SET     n.name = '원가정산',
    n.name_kr = '원가정산',
    n.domain = 'PM';

MERGE (n:Concept {id: '시간/자재'})
SET     n.name = '시간/자재',
    n.name_kr = '시간/자재',
    n.domain = 'PM';

MERGE (n:Concept {id: '고_-_[확성가]_확정_공정가'})
SET     n.name = '고 - [확성가] 확정 공정가',
    n.name_kr = '고 - [확성가] 확정 공정가',
    n.domain = 'PM';

MERGE (n:Concept {id: '성과급_가산'})
SET     n.name = '성과급 가산',
    n.name_kr = '성과급 가산',
    n.domain = 'PM';

MERGE (n:Concept {id: '가격조정-조건부'})
SET     n.name = '가격조정-조건부',
    n.name_kr = '가격조정-조건부',
    n.domain = 'PM';

MERGE (n:Concept {id: '원_-_[고성보원]_공정수수료'})
SET     n.name = '원 - [고성보원] 공정수수료',
    n.name_kr = '원 - [고성보원] 공정수수료',
    n.domain = 'PM';

MERGE (n:Concept {id: '성과급'})
SET     n.name = '성과급',
    n.name_kr = '성과급',
    n.domain = 'PM';

MERGE (n:Concept {id: '보상금'})
SET     n.name = '보상금',
    n.name_kr = '보상금',
    n.domain = 'PM';

MERGE (n:Concept {id: '원가비율_수수료_가산원가'})
SET     n.name = '원가비율 수수료 가산원가',
    n.name_kr = '원가비율 수수료 가산원가',
    n.domain = 'PM';

MERGE (n:Concept {id: '시_-_t&m'})
SET     n.name = '시 - T&M',
    n.name_kr = '시 - T&M',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '프로젝트_조달관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '[고원시]_고정가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '원가정산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '시간/자재'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '고_-_[확성가]_확정_공정가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '성과급_가산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '가격조정-조건부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '원_-_[고성보원]_공정수수료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '성과급'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '보상금'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '원가비율_수수료_가산원가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Concept {id: '시_-_t&m'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Document {id: 'PM_063'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '계약_유형_3가지'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_조달관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[고원시]_고정가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가정산'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시간/자재'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고_-_[확성가]_확정_공정가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성과급_가산'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가격조정-조건부'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원_-_[고성보원]_공정수수료'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '성과급'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보상금'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가비율_수수료_가산원가'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시_-_t&m'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_064: 프로젝트 이해관계자관리
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_064'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: '프로젝트_이해관계자관리'})
SET     n.name = '프로젝트 이해관계자관리',
    n.name_kr = '프로젝트 이해관계자관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[식계참감]_이해관계자_식별'})
SET     n.name = '[식계참감] 이해관계자 식별',
    n.name_kr = '[식계참감] 이해관계자 식별',
    n.domain = 'PM';

MERGE (n:Concept {id: '이해관계자_참여_계획수립'})
SET     n.name = '이해관계자 참여 계획수립',
    n.name_kr = '이해관계자 참여 계획수립',
    n.domain = 'PM';

MERGE (n:Concept {id: '이해관계자_참여_관리'})
SET     n.name = '이해관계자 참여 관리',
    n.name_kr = '이해관계자 참여 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '이해관계자_참여_감시'})
SET     n.name = '이해관계자 참여 감시',
    n.name_kr = '이해관계자 참여 감시',
    n.domain = 'PM';

MERGE (n:Concept {id: 'salience_model'})
SET     n.name = '현저성 모델',
    n.name_kr = '현저성 모델',
    n.domain = 'PM';

MERGE (n:Concept {id: '권력-관심_그리드'})
SET     n.name = '권력-관심 그리드',
    n.name_kr = '권력-관심 그리드',
    n.domain = 'PM';

MERGE (n:Concept {id: '이해_관계자_큐브'})
SET     n.name = '이해 관계자 큐브',
    n.name_kr = '이해 관계자 큐브',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '[식계참감]_이해관계자_식별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '이해관계자_참여_계획수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '이해관계자_참여_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '이해관계자_참여_감시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '권력-관심_그리드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: 'salience_model'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '권력-관심_그리드'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '권력-관심_그리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Document {id: 'PM_064'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[식계참감]_이해관계자_식별'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해관계자_참여_계획수립'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해관계자_참여_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해관계자_참여_감시'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권력-관심_그리드'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해_관계자_큐브'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_065: 현저성 모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_065'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'salience_model'})
SET     n.name = 'Salience Model',
    n.name_kr = '현저성 모델',
    n.domain = 'PM',
    n.aliases = ['현저성 모델'];

MERGE (n:Concept {id: '이해관계자_관리'})
SET     n.name = '이해관계자 관리',
    n.name_kr = '이해관계자 관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[권합긴]_권력'})
SET     n.name = '[권합긴] 권력',
    n.name_kr = '[권합긴] 권력',
    n.domain = 'PM';

MERGE (n:Concept {id: 'legitimate'})
SET     n.name = '합법성',
    n.name_kr = '합법성',
    n.domain = 'PM';

MERGE (n:Concept {id: 'urgency'})
SET     n.name = '긴급성',
    n.name_kr = '긴급성',
    n.domain = 'PM';

MERGE (n:Concept {id: '[활자요지위의가]_활동없는'})
SET     n.name = '[활자요지위의가] 활동없는',
    n.name_kr = '[활자요지위의가] 활동없는',
    n.domain = 'PM';

MERGE (n:Concept {id: '자유재량'})
SET     n.name = '자유재량',
    n.name_kr = '자유재량',
    n.domain = 'PM';

MERGE (n:Concept {id: '요구많은'})
SET     n.name = '요구많은',
    n.name_kr = '요구많은',
    n.domain = 'PM';

MERGE (n:Concept {id: 'dominant'})
SET     n.name = '지배적',
    n.name_kr = '지배적',
    n.domain = 'PM';

MERGE (n:Concept {id: 'dangerous'})
SET     n.name = '위험한',
    n.name_kr = '위험한',
    n.domain = 'PM';

MERGE (n:Concept {id: '의존적인'})
SET     n.name = '의존적인',
    n.name_kr = '의존적인',
    n.domain = 'PM';

MERGE (n:Concept {id: '가장_중요한'})
SET     n.name = '가장 중요한',
    n.name_kr = '가장 중요한',
    n.domain = 'PM';

MERGE (n:Concept {id: '권력-관심_그리드'})
SET     n.name = '권력-관심 그리드',
    n.name_kr = '권력-관심 그리드',
    n.domain = 'PM';

MERGE (n:Concept {id: '이해_관계자_큐브'})
SET     n.name = '이해 관계자 큐브',
    n.name_kr = '이해 관계자 큐브',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '이해관계자_관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '[권합긴]_권력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: 'legitimate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: 'urgency'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '[활자요지위의가]_활동없는'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '자유재량'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '요구많은'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: 'dominant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: 'dangerous'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '의존적인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '가장_중요한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '권력-관심_그리드'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '권력-관심_그리드'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '권력-관심_그리드'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Concept {id: '이해_관계자_큐브'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Document {id: 'PM_065'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'salience_model'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해관계자_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[권합긴]_권력'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'legitimate'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'urgency'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[활자요지위의가]_활동없는'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자유재량'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구많은'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dominant'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dangerous'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의존적인'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가장_중요한'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권력-관심_그리드'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이해_관계자_큐브'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_066: 이해관계자 참여 평가 매트릭스
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_066'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'stakeholders_engagement_assessment_matrix'})
SET     n.name = 'Stakeholders Engagement Assessment Matrix',
    n.name_kr = '이해관계자 참여 평가 매트릭스',
    n.domain = 'PM',
    n.aliases = ['이해관계자 참여 평가 매트릭스'];

MERGE (n:Concept {id: '프로젝트_이해관계자관리'})
SET     n.name = '프로젝트 이해관계자관리',
    n.name_kr = '프로젝트 이해관계자관리',
    n.domain = 'PM';

MERGE (n:Concept {id: '[무저중지적]_무인식'})
SET     n.name = '[무저중지적] 무인식',
    n.name_kr = '[무저중지적] 무인식',
    n.domain = 'PM';

MERGE (n:Concept {id: 'resistant'})
SET     n.name = '저항',
    n.name_kr = '저항',
    n.domain = 'PM';

MERGE (n:Concept {id: 'neutral'})
SET     n.name = '중립',
    n.name_kr = '중립',
    n.domain = 'PM';

MERGE (n:Concept {id: 'supportive'})
SET     n.name = '지원',
    n.name_kr = '지원',
    n.domain = 'PM';

MERGE (n:Concept {id: 'leading'})
SET     n.name = '적극',
    n.name_kr = '적극',
    n.domain = 'PM';

MERGE (n:Concept {id: 'unaware'})
SET     n.name = 'Unaware',
    n.name_kr = '무인식',
    n.domain = 'PM',
    n.definition = '프로젝트의 영향력을 인식하지 못함',
    n.aliases = ['Unaware', '무인식'];

// --- 관계 ---

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: '프로젝트_이해관계자관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: '[무저중지적]_무인식'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: 'resistant'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: 'neutral'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: 'supportive'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: 'leading'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Concept {id: 'unaware'})
MERGE (a)-[:HAS_TYPE]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Document {id: 'PM_066'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'stakeholders_engagement_assessment_matrix'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_이해관계자관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[무저중지적]_무인식'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resistant'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'neutral'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'supportive'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'leading'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'unaware'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_067: Agile 방법론
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_067'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Method {id: 'agile_방법론'})
SET     n.name = 'Agile 방법론',
    n.name_kr = 'Agile 방법론',
    n.domain = 'PM';

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '개변동고_공계문계'})
SET     n.name = '개변동고 공계문계',
    n.name_kr = '개변동고 공계문계',
    n.domain = 'PM';

MERGE (n:Concept {id: '고요배의_동대소지_좋단자효'})
SET     n.name = '고요배의 동대소지 좋단자효',
    n.name_kr = '고요배의 동대소지 좋단자효',
    n.domain = 'PM';

MERGE (n:Concept {id: 'delivery_time_감소'})
SET     n.name = 'Delivery Time 감소',
    n.name_kr = 'Delivery Time 감소',
    n.domain = 'PM',
    n.definition = 'Time to Market 실현';

MERGE (n:Concept {id: '창의력_향상'})
SET     n.name = '창의력 향상',
    n.name_kr = '창의력 향상',
    n.domain = 'PM',
    n.definition = '팀 자율성 강화';

MERGE (n:Concept {id: '생산성_향상'})
SET     n.name = '생산성 향상',
    n.name_kr = '생산성 향상',
    n.domain = 'PM',
    n.definition = '불필요한 산출물 제거';

MERGE (n:Concept {id: '제품_품질_향상'})
SET     n.name = '제품 품질 향상',
    n.name_kr = '제품 품질 향상',
    n.domain = 'PM',
    n.definition = '주기적 피드백, 테스트';

MERGE (n:Concept {id: '리스크_관리_부족'})
SET     n.name = '리스크 관리 부족',
    n.name_kr = '리스크 관리 부족',
    n.domain = 'PM',
    n.definition = '개발자 위주의 측정지표';

MERGE (n:Concept {id: '체계적인_문서_및_지침_부족'})
SET     n.name = '체계적인 문서 및 지침 부족',
    n.name_kr = '체계적인 문서 및 지침 부족',
    n.domain = 'PM',
    n.definition = '적용지원, 지침, 통합, 테스팅 등 관련';

MERGE (n:Concept {id: '감리대응_문제'})
SET     n.name = '감리대응 문제',
    n.name_kr = '감리대응 문제',
    n.domain = 'PM',
    n.definition = '적은 양의 문서, 감리기준 미부합 산출물';

MERGE (n:Concept {id: '사전준비'})
SET     n.name = '사전준비',
    n.name_kr = '사전준비',
    n.domain = 'PM',
    n.definition = '프로세스 정립 위한 애자일 가이드라인 배포 - 경영진 참여 유도 / 이해관계자 식별';

MERGE (n:Concept {id: '요구정의'})
SET     n.name = '요구정의',
    n.name_kr = '요구정의',
    n.domain = 'PM',
    n.definition = 'Product backlog / Sprint backlog 작성 및 문서화 - 요구사항의 Story화';

MERGE (n:Concept {id: '분석/설계'})
SET     n.name = '분석/설계',
    n.name_kr = '분석/설계',
    n.domain = 'PM',
    n.definition = '의사소통 채널 정리 - 분석/설계 반복 수행';

MERGE (n:Concept {id: '개발/검증'})
SET     n.name = '개발/검증',
    n.name_kr = '개발/검증',
    n.domain = 'PM',
    n.definition = '작업과 개발자의 분배문제 극복하기위한 팀워크 활동 - 개발 반복 수행 - TDD 적용';

MERGE (n:Method {id: '배포'})
SET     n.name = '배포',
    n.name_kr = '배포',
    n.domain = 'PM',
    n.definition = '정기 배포 자동화 - CI/CD 프로세스 도입';

MERGE (n:Concept {id: '회고'})
SET     n.name = '회고',
    n.name_kr = '회고',
    n.domain = 'PM',
    n.definition = '기술 부채 정리 - 회고 미팅 후 다음 스프린트 이관';

MERGE (n:Concept {id: '준비'})
SET     n.name = '준비',
    n.name_kr = '준비',
    n.domain = 'PM',
    n.definition = '작업 요구 능력 및 팀원 능력 수집';

MERGE (n:Concept {id: '측정'})
SET     n.name = '측정',
    n.name_kr = '측정',
    n.domain = 'PM',
    n.definition = '팀원 능력 측정';

MERGE (n:Concept {id: '우선순위'})
SET     n.name = '우선순위',
    n.name_kr = '우선순위',
    n.domain = 'PM',
    n.definition = '작업 난이도와 순위 결정';

MERGE (n:Concept {id: '배치'})
SET     n.name = '배치',
    n.name_kr = '배치',
    n.domain = 'PM',
    n.definition = '작업에 개발인력 적절 배치';

MERGE (n:Concept {id: '검증'})
SET     n.name = '검증',
    n.name_kr = '검증',
    n.domain = 'PM',
    n.definition = '인력 배치 적절성 검증';

MERGE (n:Concept {id: '문서화'})
SET     n.name = '문서화',
    n.name_kr = '문서화',
    n.domain = 'PM',
    n.definition = '프로젝트 문서화';

MERGE (n:Threat {id: '가변적_요구_대응'})
SET     n.name = '가변적 요구 대응',
    n.name_kr = '가변적 요구 대응',
    n.domain = 'PM',
    n.definition = 'Predictive 보다 Adaptive 우선';

MERGE (n:Concept {id: '고객_만족'})
SET     n.name = '고객 만족',
    n.name_kr = '고객 만족',
    n.domain = 'PM',
    n.definition = '요구사항 변화를 적극 반영하여 요구 사항 신속 적용(Big Q)';

MERGE (n:Concept {id: '개발자_동기부여'})
SET     n.name = '개발자 동기부여',
    n.name_kr = '개발자 동기부여',
    n.domain = 'PM',
    n.definition = '개발자 환경 고려';

MERGE (n:Concept {id: 'pm_역할_변화'})
SET     n.name = 'PM 역할 변화',
    n.name_kr = 'PM 역할 변화',
    n.domain = 'PM',
    n.definition = '관리자 -> 촉진자 역할 변화';

MERGE (n:Concept {id: 'sweet_spots'})
SET     n.name = 'Sweet Spots',
    n.name_kr = 'Sweet Spots',
    n.domain = 'PM',
    n.definition = '한 작업실에 5~8명 구성',
    n.aliases = ['Sweet Spots'];

MERGE (n:Concept {id: '구조적_방법론'})
SET     n.name = '구조적 방법론',
    n.name_kr = '구조적 방법론',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개변동고_공계문계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '고요배의_동대소지_좋단자효'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'delivery_time_감소'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '창의력_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '생산성_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '제품_품질_향상'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '리스크_관리_부족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '체계적인_문서_및_지침_부족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '감리대응_문제'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '사전준비'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '요구정의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '분석/설계'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개발/검증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Method {id: '배포'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '회고'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '준비'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '측정'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '우선순위'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '배치'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '검증'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '문서화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Threat {id: '가변적_요구_대응'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '고객_만족'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '개발자_동기부여'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'pm_역할_변화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: 'sweet_spots'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Method {id: 'agile_방법론'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Concept {id: '구조적_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Document {id: 'PM_067'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'agile_방법론'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개변동고_공계문계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고요배의_동대소지_좋단자효'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'delivery_time_감소'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '창의력_향상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산성_향상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품_품질_향상'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '리스크_관리_부족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '체계적인_문서_및_지침_부족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '감리대응_문제'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전준비'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석/설계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발/검증'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: '배포'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회고'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준비'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '측정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선순위'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '배치'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '검증'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문서화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '가변적_요구_대응'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객_만족'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자_동기부여'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pm_역할_변화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sweet_spots'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구조적_방법론'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_069: 스테이시 복잡도(Stacey Complexity) 모델
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_069'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Metric {id: 'stacey_complexity'})
SET     n.name = '스테이시 복잡도(Stacey Complexity) 모델',
    n.name_kr = '스테이시 복잡도(Stacey Complexity) 모델',
    n.domain = 'PM';

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Metric {id: '스테이시_복잡도_모델'})
SET     n.name = '스테이시 복잡도 모델',
    n.name_kr = '스테이시 복잡도 모델',
    n.domain = 'PM';

MERGE (n:Concept {id: '[심플렉카]_simple'})
SET     n.name = '[심플렉카] Simple',
    n.name_kr = '[심플렉카] Simple',
    n.domain = 'PM';

MERGE (n:Concept {id: 'complicated'})
SET     n.name = 'Complicated',
    n.name_kr = 'Complicated',
    n.domain = 'PM',
    n.aliases = ['Complicated'];

MERGE (n:Concept {id: 'complex'})
SET     n.name = 'Complex',
    n.name_kr = 'Complex',
    n.domain = 'PM',
    n.aliases = ['Complex'];

MERGE (n:Concept {id: 'chaos'})
SET     n.name = 'Chaos',
    n.name_kr = 'Chaos',
    n.domain = 'PM',
    n.aliases = ['Chaos'];

// --- 관계 ---

MERGE (a:Metric {id: '스테이시_복잡도_모델'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Concept {id: '[심플렉카]_simple'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Concept {id: 'complicated'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Concept {id: 'complex'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Concept {id: 'chaos'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Document {id: 'PM_069'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Metric {id: 'stacey_complexity'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '스테이시_복잡도_모델'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[심플렉카]_simple'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complicated'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complex'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'chaos'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_070: SCRUM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_070'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Method {id: 'scrum'})
SET     n.name = 'SCRUM',
    n.name_kr = 'SCRUM',
    n.domain = 'PM',
    n.aliases = ['SCRUM'];

MERGE (n:Concept {id: '프로젝트_관리'})
SET     n.name = '프로젝트 관리',
    n.name_kr = '프로젝트 관리',
    n.domain = 'PM';

MERGE (n:Method {id: 'agile_프로세스'})
SET     n.name = 'Agile 프로세스',
    n.name_kr = 'Agile 프로세스',
    n.domain = 'PM';

MERGE (n:Method {id: 'xp'})
SET     n.name = 'XP',
    n.name_kr = 'XP',
    n.domain = 'PM',
    n.aliases = ['XP'];

MERGE (n:Concept {id: '번다운차트'})
SET     n.name = '번다운차트',
    n.name_kr = '번다운차트',
    n.domain = 'PM';

MERGE (n:Concept {id: 'po'})
SET     n.name = 'PO',
    n.name_kr = 'PO',
    n.domain = 'PM',
    n.aliases = ['PO'];

MERGE (n:Concept {id: 'sm_등_조직_구조_이해'})
SET     n.name = 'SM 등 조직 구조 이해',
    n.name_kr = 'SM 등 조직 구조 이해',
    n.domain = 'PM';

MERGE (n:Method {id: 'daily_scrum_meeting'})
SET     n.name = 'Daily SCRUM Meeting',
    n.name_kr = 'Daily SCRUM Meeting',
    n.domain = 'PM',
    n.aliases = ['Daily SCRUM Meeting'];

MERGE (n:Concept {id: 'sprint_retrospective'})
SET     n.name = 'Sprint Retrospective',
    n.name_kr = 'Sprint Retrospective',
    n.domain = 'PM',
    n.aliases = ['Sprint Retrospective'];

MERGE (n:Concept {id: '요구_사항'})
SET     n.name = '요구 사항',
    n.name_kr = '요구 사항',
    n.domain = 'PM',
    n.definition = 'Product backlog';

MERGE (n:Concept {id: 'sprint_backlog'})
SET     n.name = 'Sprint backlog',
    n.name_kr = 'Sprint backlog',
    n.domain = 'PM',
    n.definition = '각각의 sprint 주기에서 개발할 작업 목록 - Sprint 기간 동안 개발 가능한 기능의 목록을 product backlog에서 선택',
    n.aliases = ['Sprint backlog'];

MERGE (n:Concept {id: '주기'})
SET     n.name = '주기',
    n.name_kr = '주기',
    n.domain = 'PM',
    n.definition = 'Sprint';

MERGE (n:Concept {id: '회의'})
SET     n.name = '회의',
    n.name_kr = '회의',
    n.domain = 'PM',
    n.definition = 'Product Backlog Meeting';

MERGE (n:Concept {id: 'sprint_planning_meeting'})
SET     n.name = 'Sprint Planning Meeting',
    n.name_kr = 'Sprint Planning Meeting',
    n.domain = 'PM',
    n.definition = '스프린트 계획 회의, 스프린트 백로그 산정',
    n.aliases = ['Sprint Planning Meeting'];

MERGE (n:Concept {id: 'sprint_review'})
SET     n.name = 'Sprint review',
    n.name_kr = 'Sprint review',
    n.domain = 'PM',
    n.definition = '하나의 스프린트 반복 주기가 끝났을 때 실행 가능한 제품에 대해 검토 - 스프린트 목표달성 여부, 작업 진행과 결과물 확인',
    n.aliases = ['Sprint review'];

MERGE (n:Concept {id: '관리'})
SET     n.name = '관리',
    n.name_kr = '관리',
    n.domain = 'PM',
    n.definition = 'Burn-down chart';

MERGE (n:Concept {id: '수행_내용'})
SET     n.name = '수행 내용',
    n.name_kr = '수행 내용',
    n.domain = 'PM',
    n.definition = 'Product Backlog에서 Sprint에서 수행할 Backlog 선택하여 배정 - 전체 스크럼 팀이 함께 공동 작업에 의해 결정 - 해당 sprint 목표를 달성하기 위해 선택된 제품 백로그 항목을 sprint backlog 라고 함. - product owner는 참석자가 가장 중요한 제품 백로그 항목과 제품 목표에 매핑하는 방법에 대해 토론할 준비';

// --- 관계 ---

MERGE (a:Method {id: 'agile_프로세스'})
MERGE (b:Concept {id: '프로젝트_관리'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Method {id: 'agile_프로세스'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Method {id: 'xp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '번다운차트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'po'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'sm_등_조직_구조_이해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Method {id: 'daily_scrum_meeting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'sprint_retrospective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '요구_사항'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'sprint_backlog'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '주기'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '회의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'sprint_planning_meeting'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: 'sprint_review'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '관리'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Concept {id: '수행_내용'})
MERGE (a)-[:USES]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Document {id: 'PM_070'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Method {id: 'scrum'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로젝트_관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile_프로세스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'xp'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '번다운차트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'po'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sm_등_조직_구조_이해'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'daily_scrum_meeting'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sprint_retrospective'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구_사항'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sprint_backlog'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주기'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sprint_planning_meeting'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sprint_review'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행_내용'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_071: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_071'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_072: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_072'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_073: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_073'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_074: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_074'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_075: Lean UX
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_075'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'lean_ux'})
SET     n.name = 'Lean UX',
    n.name_kr = 'Lean UX',
    n.domain = 'PM',
    n.aliases = ['Lean UX'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '[디애린]_디자인적_사고'})
SET     n.name = '[디애린] 디자인적 사고',
    n.name_kr = '[디애린] 디자인적 사고',
    n.domain = 'PM';

MERGE (n:Concept {id: 'agile_software_development'})
SET     n.name = '애자일 개발',
    n.name_kr = '애자일 개발',
    n.domain = 'PM';

MERGE (n:Concept {id: '린스타트업_방법론'})
SET     n.name = '린스타트업 방법론',
    n.name_kr = '린스타트업 방법론',
    n.domain = 'PM';

MERGE (n:Concept {id: '가설_정의'})
SET     n.name = '가설 정의',
    n.name_kr = '가설 정의',
    n.domain = 'PM',
    n.definition = '가치를 이끌어낼 것으로 예상되는 가능성은 무엇인지 검증';

MERGE (n:Concept {id: '우선순위_부여'})
SET     n.name = '우선순위 부여',
    n.name_kr = '우선순위 부여',
    n.domain = 'PM',
    n.definition = '핵심가치를 확인하기 위해 제일 먼저 무엇을 해야 할지 검토';

MERGE (n:Concept {id: 'design_thinking'})
SET     n.name = 'Design Thinking',
    n.name_kr = '디자인적 사고',
    n.domain = 'PM',
    n.definition = '인간을 관찰하고 공감하여 소비자를 이해한 뒤, 다양한 대안을 찾는 확산적 사고와, 주어진 상황에 최선의 방법을 찾는 수렴적 사고의 반복을 통하여 혁신적 결과를 내는 창의적 문제 해결 방법',
    n.aliases = ['Design Thinking', '디자인적 사고'];

MERGE (n:Concept {id: 'lean_startup_method'})
SET     n.name = 'Lean Startup method',
    n.name_kr = '린 스타트 업 방법론',
    n.domain = 'PM',
    n.definition = '제품이나 시장을 발달시키기 위해 기업가들이 사용하는 프로세스 모음 중 하나로, 애자일 개발과, 고객 개발(Customer Development), 그리고 기존의 소프트웨어 플랫폼 (주로 오픈소스) 등을 활용한 지속적 배포(Continuous Deployment) 방법론',
    n.aliases = ['Lean Startup method', '린 스타트 업 방법론'];

MERGE (n:Concept {id: 'mvp'})
SET     n.name = 'MVP',
    n.name_kr = 'MVP',
    n.domain = 'PM',
    n.definition = 'Minimum Viable Product(최소 요건 제품) - 최소 노력과 개발기간으로 사이클을 돌 수 있게 하는 제품/서비스',
    n.aliases = ['MVP'];

MERGE (n:Concept {id: 'pivoting'})
SET     n.name = 'Pivoting',
    n.name_kr = 'Pivoting',
    n.domain = 'PM',
    n.definition = '시장 반응에 따른 비즈니스 모델의 과감한 궤도 수정(방향전환) - 제품, 고객 군, 판매채널, 제휴 사업자 등 모든 구성요소가 대상',
    n.aliases = ['Pivoting'];

MERGE (n:Method {id: 'agile_프로세스'})
SET     n.name = 'Agile 프로세스',
    n.name_kr = 'Agile 프로세스',
    n.domain = 'PM',
    n.definition = '지속적으로 발생하는 불확정적인 상황에 유연하고 빠르게 대응해 생산성과 품질을 향상시키고자 하는 협력적 개발방식 적용';

// --- 관계 ---

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: '[디애린]_디자인적_사고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: 'agile_software_development'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: '린스타트업_방법론'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: '가설_정의'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: '우선순위_부여'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: 'design_thinking'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: 'lean_startup_method'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: 'mvp'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Concept {id: 'pivoting'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Method {id: 'agile_프로세스'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Document {id: 'PM_075'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lean_ux'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '[디애린]_디자인적_사고'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'agile_software_development'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '린스타트업_방법론'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가설_정의'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '우선순위_부여'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'design_thinking'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lean_startup_method'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mvp'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pivoting'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile_프로세스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_076.1: 린 스타트업(Lean Startup), MVP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_076.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'lean_startup'})
SET     n.name = '린 스타트업(Lean Startup), MVP',
    n.name_kr = '린 스타트업(Lean Startup), MVP',
    n.domain = 'PM';

MERGE (n:Concept {id: 'lean_thinking'})
SET     n.name = '린 사고방식',
    n.name_kr = '린 사고방식',
    n.domain = 'PM';

MERGE (n:Method {id: 'rapid_prototype'})
SET     n.name = 'rapid prototype',
    n.name_kr = 'rapid prototype',
    n.domain = 'PM',
    n.aliases = ['rapid prototype'];

MERGE (n:Concept {id: 'pivoting'})
SET     n.name = 'Pivoting',
    n.name_kr = 'Pivoting',
    n.domain = 'PM',
    n.aliases = ['Pivoting'];

MERGE (n:Concept {id: '애자일'})
SET     n.name = '애자일',
    n.name_kr = '애자일',
    n.domain = 'PM';

MERGE (n:Concept {id: '데브옵스'})
SET     n.name = '데브옵스',
    n.name_kr = '데브옵스',
    n.domain = 'PM';

MERGE (n:Method {id: 'ci_cd'})
SET     n.name = 'CI/CD',
    n.name_kr = 'CI/CD',
    n.domain = 'PM',
    n.aliases = ['CI/CD'];

MERGE (n:Concept {id: '제품개발_사이클'})
SET     n.name = '제품개발 사이클',
    n.name_kr = '제품개발 사이클',
    n.domain = 'PM',
    n.definition = 'Build';

MERGE (n:Concept {id: 'measure'})
SET     n.name = 'Measure',
    n.name_kr = 'Measure',
    n.domain = 'PM',
    n.definition = '제품 및 서비스의 고객 반응 측정 - 실제 고객에서 선보이고 피드백을 받음',
    n.aliases = ['Measure'];

MERGE (n:Concept {id: 'learn'})
SET     n.name = 'Learn',
    n.name_kr = 'Learn',
    n.domain = 'PM',
    n.definition = '고객반응을 기반으로 새로운 정보 학습 - 가설의 변경 및 비즈니스 모델의 방향전환',
    n.aliases = ['Learn'];

MERGE (n:Concept {id: '주요기법'})
SET     n.name = '주요기법',
    n.name_kr = '주요기법',
    n.domain = 'PM',
    n.definition = 'MVP';

MERGE (n:Method {id: 'agile_프로세스'})
SET     n.name = 'Agile 프로세스',
    n.name_kr = 'Agile 프로세스',
    n.domain = 'PM',
    n.definition = '지속적으로 발생하는 불확정적인 상황에 유연하고 빠르게 대응해 생산성과 품질을 향상시키고자 하는 협력적 개발방식 적용';

MERGE (n:Concept {id: 'ci,_cd'})
SET     n.name = 'CI, CD',
    n.name_kr = 'CI, CD',
    n.domain = 'PM',
    n.definition = '하루에도 몇 번씩 새로운 코드를 릴리즈 및 지속적 배포(Continuous Deployment)라는 기법을 사용';

// --- 관계 ---

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'lean_thinking'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'rapid_prototype'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'pivoting'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '애자일'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '데브옵스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'ci_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '제품개발_사이클'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'measure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'learn'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: '주요기법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Method {id: 'agile_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Concept {id: 'ci,_cd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Document {id: 'PM_076.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'lean_startup'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lean_thinking'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'rapid_prototype'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'pivoting'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '애자일'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데브옵스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'ci_cd'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품개발_사이클'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'measure'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'learn'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile_프로세스'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ci,_cd'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_076.2: DSDM, FDD
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_076.2'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'dsdm,_fdd'})
SET     n.name = 'DSDM, FDD',
    n.name_kr = 'DSDM, FDD',
    n.domain = 'PM';

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '타당성분석'})
SET     n.name = '타당성분석',
    n.name_kr = '타당성분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '요구사항_분석'})
SET     n.name = '요구사항 분석',
    n.name_kr = '요구사항 분석',
    n.domain = 'PM';

MERGE (n:Concept {id: '기능_모델'})
SET     n.name = '기능 모델',
    n.name_kr = '기능 모델',
    n.domain = 'PM';

MERGE (n:Concept {id: '설계/구현_통합'})
SET     n.name = '설계/구현 통합',
    n.name_kr = '설계/구현 통합',
    n.domain = 'PM';

MERGE (n:Concept {id: 'implementation'})
SET     n.name = '구현',
    n.name_kr = '구현',
    n.domain = 'PM';

MERGE (n:Concept {id: '원칙'})
SET     n.name = '원칙',
    n.name_kr = '원칙',
    n.domain = 'PM',
    n.definition = '적극적인 사용자 참여는 필수적이다. - DSDM 팀이 의사결정을 할 수 있도록 힘을 실어주여야 한다. - 수시로 제품을 인도해야 한다. - 비즈니스 목적에 부합하는 지가 인도물 인수 기준이 되어야 한다. - 반복적이고, 점진적인 개발을 통해 정확한 비즈니스 솔루션으로 융합될 필요가 있다. - 개발하는 동안에 발생되는 변경사항은 되돌릴 수 있어야 한다. -';

MERGE (n:Concept {id: '5단계'})
SET     n.name = '5단계',
    n.name_kr = '5단계',
    n.domain = 'PM',
    n.definition = '타당성 분석(Feasibility Study) - 비즈니스 요구사항 분석 (Business Study) - 기능 모델 반복 (Functional Model Iteration) - 설계와 구현 통합 (Design and Build Iteration) - 구현 (Implementation)';

MERGE (n:Concept {id: '기법'})
SET     n.name = '기법',
    n.name_kr = '기법',
    n.domain = 'PM',
    n.definition = 'Timeboxing';

MERGE (n:Concept {id: 'testing'})
SET     n.name = 'Testing',
    n.name_kr = 'Testing',
    n.domain = 'PM',
    n.definition = '오류 발견 위한 반복적 테스트 진행',
    n.aliases = ['Testing'];

MERGE (n:Concept {id: 'moscow'})
SET     n.name = 'MoSCoW',
    n.name_kr = 'MoSCoW',
    n.domain = 'PM',
    n.definition = '요청한 아이템들의 우선순위 선정(MUST/SHOULD/COULD/WOULD형태로 표기)',
    n.aliases = ['MoSCoW'];

MERGE (n:Concept {id: 'prototyping'})
SET     n.name = 'Prototyping',
    n.name_kr = 'Prototyping',
    n.domain = 'PM',
    n.definition = '프로토타입을 만들고 점진적으로 개선',
    n.aliases = ['Prototyping'];

MERGE (n:Concept {id: 'workshop'})
SET     n.name = 'Workshop',
    n.name_kr = 'Workshop',
    n.domain = 'PM',
    n.definition = 'Stakeholder간 의견 조정',
    n.aliases = ['Workshop'];

MERGE (n:Concept {id: 'modelling'})
SET     n.name = 'Modelling',
    n.name_kr = 'Modelling',
    n.domain = 'PM',
    n.definition = 'System or Biz영역 도식화',
    n.aliases = ['Modelling'];

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'PM';

MERGE (n:Concept {id: '구성원'})
SET     n.name = '구성원',
    n.name_kr = '구성원',
    n.domain = 'PM',
    n.definition = 'Domain Manager, Release Manager - Language Guru, Build Engineer - Toolsmith, System Administrator - Tester, Deployer, Technical Writer';

// --- 관계 ---

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '타당성분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '요구사항_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '기능_모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '설계/구현_통합'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'implementation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '원칙'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '5단계'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '기법'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'testing'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'moscow'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'prototyping'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'workshop'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: 'modelling'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Concept {id: '구성원'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Document {id: 'PM_076.2'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'dsdm,_fdd'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '타당성분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '요구사항_분석'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_모델'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '설계/구현_통합'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'implementation'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원칙'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '5단계'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기법'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'testing'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'moscow'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'prototyping'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'workshop'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'modelling'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구성원'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_077: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_077'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_078: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_078'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_079: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_079'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_080: Planning Poker
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_080'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'planning_poker'})
SET     n.name = 'Planning Poker',
    n.name_kr = 'Planning Poker',
    n.domain = 'PM',
    n.aliases = ['Planning Poker'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '역할자'})
SET     n.name = '역할자',
    n.name_kr = '역할자',
    n.domain = 'PM',
    n.definition = '스크럼 마스터: 플래닝 포커를 활용하여 업무량을 추정할 때, 퍼실리테이터 역할을 수행 -제품 책임자: 업무를 추정할 사용자 스토리에 대해 팀원들에게 설명하고, 팀원들이 추정에 도움이 되는 질문을 할 때 답변 하는 역할을 수행 - 팀원: 업무에 대한 공유, 질문을 통해 사용자 스토리의 업무량을 추정';

MERGE (n:Concept {id: '적용상황'})
SET     n.name = '적용상황',
    n.name_kr = '적용상황',
    n.domain = 'PM',
    n.definition = '계획 수립 시 각자의 의견이 대립되거나 이해관계가 얽혀 있을 때 - 함께 계획을 수립하며 각자의 의견이 골고루 반영되도록 하고 싶을 때';

MERGE (n:Concept {id: '준비물'})
SET     n.name = '준비물',
    n.name_kr = '준비물',
    n.domain = 'PM',
    n.definition = '인덱스 카드, 네임펜, 제품 백로그, 플래닝 포커';

MERGE (n:Concept {id: '기준점_스토리_포인드_결정'})
SET     n.name = '기준점 스토리 포인드 결정',
    n.name_kr = '기준점 스토리 포인드 결정',
    n.domain = 'PM',
    n.definition = '사용자 스토리 중에서 적당한 사용자 스토리의 크기를 3 으로 정하고, 이를 스토리 포인트라는 단위로 정함 -이 업무에 대한 내용을 설명하여 참여자 모두가 이해하도록 함 -참여자의 질문을 유도하여, 업무 크기에 대한 공감대를 형성하고 이 숫자를 인덱스 카드 한 귀퉁이에 기록함';

MERGE (n:Concept {id: '상대적_스토리_포인트_결정'})
SET     n.name = '상대적 스토리 포인트 결정',
    n.name_kr = '상대적 스토리 포인트 결정',
    n.domain = 'PM',
    n.definition = '스토리 포인트가 3인 사용자 스토리를 기준으로 상대적으로 포인트를 정함 -3보다 두 배 정도 큰 일이면 5, 절반 정도 의 일이라면 1이나 2를 선택 -이때 다음과 같은 게임의 형식을 취';

MERGE (n:Concept {id: '대상_사용자_스토리_업무_이해'})
SET     n.name = '대상 사용자 스토리 업무 이해',
    n.name_kr = '대상 사용자 스토리 업무 이해',
    n.domain = 'PM',
    n.definition = '추정 하고자 하는 인덱스카드를 고르고, 제품 책임자가 추정할 사용자 스토리를 설명하면, 팀원들은 이에 대해 질문 하고, 제약사항, 위험 등 에 대해 간략히 토론을 하여 업무에 대해 이해';

MERGE (n:Concept {id: '스토리_포인트_채점'})
SET     n.name = '스토리 포인트 채점',
    n.name_kr = '스토리 포인트 채점',
    n.domain = 'PM',
    n.definition = '설명이 끝나면 각자 생각하는 숫자가 적혀있는 카드가 위로 향하도록 제시';

MERGE (n:Concept {id: '스토리_포인트_재조정을_위한_추가설명'})
SET     n.name = '스토리 포인트 재조정을 위한 추가설명',
    n.name_kr = '스토리 포인트 재조정을 위한 추가설명',
    n.domain = 'PM',
    n.definition = '이번 라운드에서 만장 일치가 아니고 차이가 발생하였다면 이제 의견 조정을 위한 이야기를 다시 시작';

MERGE (n:Concept {id: '최대,_최소_스토리_포인트_채점자_의견_청취_가장'})
SET     n.name = '최대, 최소 스토리 포인트 채점자 의견 청취 가장',
    n.name_kr = '최대, 최소 스토리 포인트 채점자 의견 청취 가장',
    n.domain = 'PM',
    n.definition = '가장 낮게 나온 사람이 낮은 이유를 이야기 하고 가장 높게 나온 사람 이 높은 이유를 설명';

MERGE (n:Concept {id: '게임_반복'})
SET     n.name = '게임 반복',
    n.name_kr = '게임 반복',
    n.domain = 'PM',
    n.definition = '이야기 나눈 것을 바탕으로 다시 게임을 반복합니다.';

MERGE (n:Concept {id: '최종_스토리_포인트_결정'})
SET     n.name = '최종 스토리 포인트 결정',
    n.name_kr = '최종 스토리 포인트 결정',
    n.domain = 'PM',
    n.definition = '만장일치가 될 때까지 진행하는 것을 원칙으로 하지만, 만약 3 회가 되도록 만장 일치가 나오지 않는다면 중간 포인트를 선택하고 다음 게임으로 넘어감';

MERGE (n:Concept {id: '사용자_스토리_분할_검토'})
SET     n.name = '사용자 스토리 분할 검토',
    n.name_kr = '사용자 스토리 분할 검토',
    n.domain = 'PM',
    n.definition = '40 이상의 일이라고 생각한다면, 사용자 스토리가 너무 커서 분할해야 하는 것은 아닌지 다시 한번 확인';

MERGE (n:Concept {id: '분할된_사용자_스토리에_대한_플래닝_게임_수행'})
SET     n.name = '분할된 사용자 스토리에 대한 플래닝 게임 수행',
    n.name_kr = '분할된 사용자 스토리에 대한 플래닝 게임 수행',
    n.domain = 'PM',
    n.definition = '나눌 필요가 있다고 판단되는 일에 대해서는 세분화된 할 일을 인덱스 카드에 적고 이에 대해 플래닝 게임을 한 뒤, 이전의 인덱스 카드를 폐기';

MERGE (n:Concept {id: '마무리'})
SET     n.name = '마무리',
    n.name_kr = '마무리',
    n.domain = 'PM',
    n.definition = '모든 할일 목록에 대해 플래닝 게임을 진행하면 추정을 종료';

// --- 관계 ---

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '역할자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '적용상황'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '준비물'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '기준점_스토리_포인드_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '상대적_스토리_포인트_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '대상_사용자_스토리_업무_이해'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '스토리_포인트_채점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '스토리_포인트_재조정을_위한_추가설명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '최대,_최소_스토리_포인트_채점자_의견_청취_가장'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '게임_반복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '최종_스토리_포인트_결정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '사용자_스토리_분할_검토'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '분할된_사용자_스토리에_대한_플래닝_게임_수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Concept {id: '마무리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Document {id: 'PM_080'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'planning_poker'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역할자'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적용상황'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '준비물'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기준점_스토리_포인드_결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상대적_스토리_포인트_결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대상_사용자_스토리_업무_이해'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리_포인트_채점'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리_포인트_재조정을_위한_추가설명'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최대,_최소_스토리_포인트_채점자_의견_청취_가장'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '게임_반복'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종_스토리_포인트_결정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사용자_스토리_분할_검토'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분할된_사용자_스토리에_대한_플래닝_게임_수행'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '마무리'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_081: Story Point
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_081'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'story_point'})
SET     n.name = 'Story Point',
    n.name_kr = 'Story Point',
    n.domain = 'PM',
    n.aliases = ['Story Point'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '개발_소요시간_추정'})
SET     n.name = '개발 소요시간 추정',
    n.name_kr = '개발 소요시간 추정',
    n.domain = 'PM';

MERGE (n:Concept {id: '플래닝_포커'})
SET     n.name = '플래닝 포커',
    n.name_kr = '플래닝 포커',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'story_point'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'story_point'})
MERGE (b:Concept {id: '개발_소요시간_추정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'story_point'})
MERGE (b:Concept {id: '플래닝_포커'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'story_point'})
MERGE (b:Document {id: 'PM_081'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'story_point'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발_소요시간_추정'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '플래닝_포커'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_082.1: 번다운차트(Burn down)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_082.1'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'burn_down'})
SET     n.name = 'Burn down',
    n.name_kr = '번다운차트',
    n.domain = 'PM',
    n.aliases = ['Burn down', '번다운차트'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: '번쓰.._번다운/스토리포인트/스프린트'})
SET     n.name = '번쓰.. 번다운/스토리포인트/스프린트',
    n.name_kr = '번쓰.. 번다운/스토리포인트/스프린트',
    n.domain = 'PM';

MERGE (n:Concept {id: '가로축'})
SET     n.name = '가로축',
    n.name_kr = '가로축',
    n.domain = 'PM',
    n.definition = '시간 축으로 스프린트 반복 주기 날짜수';

MERGE (n:Concept {id: '세로축'})
SET     n.name = '세로축',
    n.name_kr = '세로축',
    n.domain = 'PM',
    n.definition = '완료된 작업의 추정 일수(스토리 포인트로 표현)';

MERGE (n:Concept {id: '계획_그래프'})
SET     n.name = '계획 그래프',
    n.name_kr = '계획 그래프',
    n.domain = 'PM',
    n.definition = '처음 계획을 세웠을 때 날짜로 남은 작업량 표현';

MERGE (n:Concept {id: '실제_그래프'})
SET     n.name = '실제 그래프',
    n.name_kr = '실제 그래프',
    n.domain = 'PM',
    n.definition = '작업을 수행하면서 실제로 남은 작업량';

MERGE (n:Concept {id: '상황'})
SET     n.name = '상황',
    n.name_kr = '상황',
    n.domain = 'PM',
    n.definition = '스프린트는 4주이며, 현재 1/2 기간이 지났음';

MERGE (n:Concept {id: '도식화'})
SET     n.name = '도식화',
    n.name_kr = '도식화',
    n.domain = 'PM',
    n.definition = '4주이므로, 전체 20일임. 1/2이므로, 10일이 지난 시점이 오늘임.';

MERGE (n:Concept {id: '진단'})
SET     n.name = '진단',
    n.name_kr = '진단',
    n.domain = 'PM',
    n.definition = '10일 경과 시점, 계획 SP 16 대비 실제 SP 13으로 다소 지연되고 있는 상태임. 전반적인 지연 사유에 대한 원인 파악 필요';

// --- 관계 ---

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '번쓰.._번다운/스토리포인트/스프린트'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '가로축'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '세로축'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '계획_그래프'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '실제_그래프'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '상황'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '도식화'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Concept {id: '진단'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Document {id: 'PM_082.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'burn_down'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '번쓰.._번다운/스토리포인트/스프린트'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '가로축'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '세로축'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계획_그래프'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실제_그래프'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상황'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '도식화'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '진단'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// PM_082.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_082.2'})
SET doc.domain = 'PM';

// ──────────────────────────────────────
// PM_083: Feature Chart (기능 차트)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'PM_083'})
SET doc.domain = 'PM';

// --- 노드 ---

MERGE (n:Concept {id: 'feature_chart'})
SET     n.name = 'Feature Chart',
    n.name_kr = '기능 차트',
    n.domain = 'PM',
    n.aliases = ['Feature Chart', '기능 차트'];

MERGE (n:Method {id: 'agile'})
SET     n.name = 'Agile',
    n.name_kr = 'Agile',
    n.domain = 'PM',
    n.aliases = ['Agile'];

MERGE (n:Concept {id: 'total'})
SET     n.name = 'Total',
    n.name_kr = 'Total',
    n.domain = 'PM',
    n.aliases = ['Total'];

MERGE (n:Concept {id: 'complete'})
SET     n.name = 'Complete',
    n.name_kr = 'Complete',
    n.domain = 'PM',
    n.aliases = ['Complete'];

MERGE (n:Concept {id: 'remaining'})
SET     n.name = 'Remaining',
    n.name_kr = 'Remaining',
    n.domain = 'PM',
    n.aliases = ['Remaining'];

MERGE (n:Concept {id: '기능_처리_속도'})
SET     n.name = '기능 처리 속도',
    n.name_kr = '기능 처리 속도',
    n.domain = 'PM';

// --- 관계 ---

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Method {id: 'agile'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Concept {id: 'total'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Concept {id: 'complete'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Concept {id: 'remaining'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Concept {id: '기능_처리_속도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Document {id: 'PM_083'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'feature_chart'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Method {id: 'agile'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'total'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'complete'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'remaining'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능_처리_속도'})
MERGE (b:Domain {id: 'PM'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// PM 도메인 자동 생성 완료
// 노드: 379개
// 관계: 770개
// ================================================================