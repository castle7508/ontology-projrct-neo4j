// ================================================================
// MG 도메인 (MG_001 ~ MG_050) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// MG_001: ITSM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_001'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'itsm'})
SET     n.name = 'ITSM',
    n.name_kr = 'ITSM',
    n.domain = 'MG',
    n.aliases = ['ITSM'];

MERGE (n:Standard {id: 'itil'})
SET     n.name = 'ITIL',
    n.name_kr = 'ITIL',
    n.domain = 'MG',
    n.aliases = ['ITIL'];

MERGE (n:Standard {id: 'itil_v3'})
SET     n.name = 'ITIL V3',
    n.name_kr = 'ITIL V3',
    n.domain = 'MG',
    n.aliases = ['ITIL V3'];

MERGE (n:Concept {id: 'escm'})
SET     n.name = 'eSCM',
    n.name_kr = 'eSCM',
    n.domain = 'MG',
    n.aliases = ['eSCM'];

MERGE (n:Standard {id: 'cmmi'})
SET     n.name = 'CMMI',
    n.name_kr = 'CMMI',
    n.domain = 'MG',
    n.aliases = ['CMMI'];

MERGE (n:Concept {id: '서비스_데스크'})
SET     n.name = '서비스 데스크',
    n.name_kr = '서비스 데스크',
    n.domain = 'MG',
    n.definition = 'SR(Service Request)';

MERGE (n:Concept {id: '인시던트_관리'})
SET     n.name = '인시던트 관리',
    n.name_kr = '인시던트 관리',
    n.domain = 'MG',
    n.definition = 'BCP(Biz. 연속성 계획';

MERGE (n:Concept {id: '문제_관리'})
SET     n.name = '문제 관리',
    n.name_kr = '문제 관리',
    n.domain = 'MG',
    n.definition = '문제원인 분석';

MERGE (n:Concept {id: '변경_관리'})
SET     n.name = '변경 관리',
    n.name_kr = '변경 관리',
    n.domain = 'MG',
    n.definition = 'CAB';

MERGE (n:Concept {id: '릴리즈_관리'})
SET     n.name = '릴리즈 관리',
    n.name_kr = '릴리즈 관리',
    n.domain = 'MG',
    n.definition = '배포관리 프로세스';

MERGE (n:Concept {id: '형상관리'})
SET     n.name = '형상관리',
    n.name_kr = '형상관리',
    n.domain = 'MG',
    n.definition = '가시성, 추적성 확보';

MERGE (n:Concept {id: '용량_관리'})
SET     n.name = '용량 관리',
    n.name_kr = '용량 관리',
    n.domain = 'MG',
    n.definition = 'IT 자원 성능 관리';

MERGE (n:Metric {id: '가용성_관리'})
SET     n.name = '가용성 관리',
    n.name_kr = '가용성 관리',
    n.domain = 'MG',
    n.definition = '가용수준 유지 관리';

MERGE (n:Metric {id: '연속성_관리'})
SET     n.name = '연속성 관리',
    n.name_kr = '연속성 관리',
    n.domain = 'MG',
    n.definition = 'SLA';

MERGE (n:Concept {id: '서비스_수준_관리'})
SET     n.name = '서비스 수준 관리',
    n.name_kr = '서비스 수준 관리',
    n.domain = 'MG',
    n.definition = '서비스 유형';

MERGE (n:Concept {id: '재무_관리'})
SET     n.name = '재무 관리',
    n.name_kr = '재무 관리',
    n.domain = 'MG',
    n.definition = 'IT 자산 관리';

MERGE (n:Concept {id: '전통적인_it_운영'})
SET     n.name = '전통적인 IT 운영',
    n.name_kr = '전통적인 IT 운영',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: 'itsm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Standard {id: 'itil'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Standard {id: 'itil_v3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: 'escm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Standard {id: 'cmmi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '서비스_데스크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '인시던트_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '문제_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '변경_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '릴리즈_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '형상관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '용량_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Metric {id: '가용성_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Metric {id: '연속성_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '서비스_수준_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '재무_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '전통적인_it_운영'})
MERGE (b:Concept {id: 'itsm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Concept {id: '전통적인_it_운영'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Document {id: 'MG_001'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_v3'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'escm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'cmmi'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_데스크'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인시던트_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '릴리즈_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '형상관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '용량_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '연속성_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스_수준_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재무_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전통적인_it_운영'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_002: IT Outsourcing
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_002'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'it_outsourcing'})
SET     n.name = 'IT Outsourcing',
    n.name_kr = 'IT Outsourcing',
    n.domain = 'MG',
    n.aliases = ['IT Outsourcing'];

MERGE (n:Concept {id: 'itsm'})
SET     n.name = 'ITSM',
    n.name_kr = 'ITSM',
    n.domain = 'MG',
    n.aliases = ['ITSM'];

MERGE (n:Concept {id: '토셀자코'})
SET     n.name = '토셀자코',
    n.name_kr = '토셀자코',
    n.domain = 'MG';

MERGE (n:Concept {id: '사전_준비'})
SET     n.name = '사전 준비',
    n.name_kr = '사전 준비',
    n.domain = 'MG',
    n.definition = '장단기 전략, Master Plan 명시, 수립 - 업무 프로세스 분석 및 재설계';

MERGE (n:Concept {id: '조직_구성'})
SET     n.name = '조직 구성',
    n.name_kr = '조직 구성',
    n.domain = 'MG',
    n.definition = '팀 구성 계획 및 조직';

MERGE (n:Metric {id: '업체_선정'})
SET     n.name = '업체 선정',
    n.name_kr = '업체 선정',
    n.domain = 'MG',
    n.definition = 'RFI/RFP, 제안서, SLO/SLA, 사업 범위 명시화';

MERGE (n:Metric {id: '협상_및_계약'})
SET     n.name = '협상 및 계약',
    n.name_kr = '협상 및 계약',
    n.domain = 'MG',
    n.definition = 'Partnership 관리, SLA';

MERGE (n:Concept {id: '이행'})
SET     n.name = '이행',
    n.name_kr = '이행',
    n.domain = 'MG',
    n.definition = '구축 및 ITSM (IT Service Management)';

MERGE (n:Concept {id: '계약관리'})
SET     n.name = '계약관리',
    n.name_kr = '계약관리',
    n.domain = 'MG',
    n.definition = '유지보수, 차기 사업, 보상, Penalty';

MERGE (n:Concept {id: '위험_요소'})
SET     n.name = '위험 요소',
    n.name_kr = '위험 요소',
    n.domain = 'MG';

MERGE (n:Concept {id: '해결_방안'})
SET     n.name = '해결 방안',
    n.name_kr = '해결 방안',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: 'itsm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '토셀자코'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '사전_준비'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '조직_구성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Metric {id: '업체_선정'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Metric {id: '협상_및_계약'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '이행'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '계약관리'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '위험_요소'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '위험_요소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Concept {id: '해결_방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Document {id: 'MG_002'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'it_outsourcing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '토셀자코'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사전_준비'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조직_구성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '업체_선정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '협상_및_계약'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '이행'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '계약관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위험_요소'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결_방안'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_003: SoW (Statement of Work)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_003'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'statement_of_work'})
SET     n.name = 'Statement of Work',
    n.name_kr = 'SoW',
    n.domain = 'MG',
    n.aliases = ['Statement of Work', 'SoW'];

MERGE (n:Concept {id: 'itsm'})
SET     n.name = 'ITSM',
    n.name_kr = 'ITSM',
    n.domain = 'MG',
    n.aliases = ['ITSM'];

MERGE (n:Concept {id: 'slm'})
SET     n.name = 'SLM',
    n.name_kr = 'SLM',
    n.domain = 'MG',
    n.aliases = ['SLM'];

MERGE (n:Metric {id: 'sla'})
SET     n.name = 'SLA',
    n.name_kr = 'SLA',
    n.domain = 'MG',
    n.aliases = ['SLA'];

MERGE (n:Concept {id: 'sow'})
SET     n.name = 'SoW',
    n.name_kr = 'SoW',
    n.domain = 'MG',
    n.aliases = ['SoW'];

MERGE (n:Concept {id: '제품'})
SET     n.name = '제품',
    n.name_kr = '제품',
    n.domain = 'MG';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스',
    n.name_kr = '서비스',
    n.domain = 'MG';

MERGE (n:Concept {id: '결과'})
SET     n.name = '결과',
    n.name_kr = '결과',
    n.domain = 'MG';

MERGE (n:Concept {id: 'business_case'})
SET     n.name = 'Business case',
    n.name_kr = 'Business case',
    n.domain = 'MG',
    n.aliases = ['Business case'];

MERGE (n:Concept {id: 'rfp'})
SET     n.name = 'RFP',
    n.name_kr = 'RFP',
    n.domain = 'MG',
    n.aliases = ['RFP'];

MERGE (n:Concept {id: 'bm'})
SET     n.name = 'BM',
    n.name_kr = 'BM',
    n.domain = 'MG',
    n.aliases = ['BM'];

MERGE (n:Concept {id: '프로세스'})
SET     n.name = '프로세스',
    n.name_kr = '프로세스',
    n.domain = 'MG',
    n.definition = '목적';

MERGE (n:Concept {id: '수행기간'})
SET     n.name = '수행기간',
    n.name_kr = '수행기간',
    n.domain = 'MG',
    n.definition = '시작 및 종료기간, 기간 내 작업 시간, 프로젝트 허용시간 등';

MERGE (n:Concept {id: '산출물_일정'})
SET     n.name = '산출물 일정',
    n.name_kr = '산출물 일정',
    n.domain = 'MG',
    n.definition = '산출물 인도예정일 등 기록';

MERGE (n:Concept {id: '업무범위'})
SET     n.name = '업무범위',
    n.name_kr = '업무범위',
    n.domain = 'MG',
    n.definition = '작업범위';

MERGE (n:Concept {id: '작업위치'})
SET     n.name = '작업위치',
    n.name_kr = '작업위치',
    n.domain = 'MG',
    n.definition = '하드웨어, 소프트웨어 위치 및 수행인의 위치';

MERGE (n:Concept {id: '인수기진'})
SET     n.name = '인수기진',
    n.name_kr = '인수기진',
    n.domain = 'MG',
    n.definition = '고객이 제품이나 서비스가 객관적인 기준에 따라 수용가능 역부 결정 방법 지정';

MERGE (n:Concept {id: '책임범위'})
SET     n.name = '책임범위',
    n.name_kr = '책임범위',
    n.domain = 'MG',
    n.definition = '적용표준';

MERGE (n:Concept {id: '특별요구사항'})
SET     n.name = '특별요구사항',
    n.name_kr = '특별요구사항',
    n.domain = 'MG',
    n.definition = '인력의 요건, 계약세부사항에서 다루지 않은 하드웨어나 소프트웨어 등 요구사항 지정';

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'MG',
    n.definition = '프로젝트수행에 필요한 기타 협상 내용 기록';

// --- 관계 ---

MERGE (a:Concept {id: 'slm'})
MERGE (b:Concept {id: 'itsm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Metric {id: 'sla'})
MERGE (b:Concept {id: 'slm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'sow'})
MERGE (b:Metric {id: 'sla'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '제품'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '결과'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: 'business_case'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: 'rfp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: 'bm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '수행기간'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '산출물_일정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '업무범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '작업위치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '인수기진'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '책임범위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '특별요구사항'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Document {id: 'MG_003'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'statement_of_work'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'slm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sla'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sow'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제품'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '결과'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'business_case'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rfp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '프로세스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행기간'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산출물_일정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무범위'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '작업위치'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인수기진'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '책임범위'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '특별요구사항'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_004: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_004'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_005: 기술사양서 (Technical Specification)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_005'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'technical_specification'})
SET     n.name = 'Technical Specification',
    n.name_kr = '기술사양서',
    n.domain = 'MG',
    n.aliases = ['Technical Specification', '기술사양서'];

MERGE (n:Concept {id: 'itsm'})
SET     n.name = 'ITSM',
    n.name_kr = 'ITSM',
    n.domain = 'MG',
    n.aliases = ['ITSM'];

// --- 관계 ---

MERGE (a:Concept {id: 'technical_specification'})
MERGE (b:Concept {id: 'itsm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'technical_specification'})
MERGE (b:Document {id: 'MG_005'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'technical_specification'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'itsm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_006: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_006'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_007: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_007'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_008: ITIL 4.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_008'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Standard {id: 'itil_4_0'})
SET     n.name = 'ITIL 4.0',
    n.name_kr = 'ITIL 4.0',
    n.domain = 'MG',
    n.aliases = ['ITIL 4.0'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Standard {id: 'itil_3.0,_v4.0'})
SET     n.name = 'ITIL 3.0, V4.0',
    n.name_kr = 'ITIL 3.0, V4.0',
    n.domain = 'MG';

MERGE (n:Concept {id: '개념도'})
SET     n.name = '개념도',
    n.name_kr = '개념도',
    n.domain = 'MG';

MERGE (n:Concept {id: '2._거버넌스'})
SET     n.name = '2. 거버넌스',
    n.name_kr = '2. 거버넌스',
    n.domain = 'MG',
    n.definition = '조직이 감독되고 통제되는 수단 - EDM 모델(지시(Direct) -> 모니터링(Monitor) -> 평가(Evaluate))을 통해 거버넌스 개선 적용';

MERGE (n:Concept {id: 'service_value_chain'})
SET     n.name = 'Service Value Chain',
    n.name_kr = '3. 서비스 가치 사슬',
    n.domain = 'MG',
    n.definition = '조직이 소비자에게 가치 있는 제품이나 서비스를 제공 - 가치 실현을 촉진하기 위해 수행하는 6가지 활동 - 서비스 가치 사슬(SVC)을 통해, 요구사항에 가치를 Feedback 시킴 1) 계획(Plan) 2) 약속된 업무 참여(Engage) 3) 획득/빌드(Obtain/Build) 4) 수행과 지원(Deliver and Support) 5) 개선(Impro',
    n.aliases = ['Service Value Chain', '3. 서비스 가치 사슬'];

MERGE (n:Concept {id: '4._지속적인_개선'})
SET     n.name = '4. 지속적인 개선',
    n.name_kr = '4. 지속적인 개선',
    n.domain = 'MG',
    n.definition = '조직의 성과가 이해 관계자의 기대를 지속적으로 충족 하는지 확인하기 위해 모든 수준에서 수행되는 반복 활동 - ITSM 계획 성공을 위한 지속적인 개선 적용';

MERGE (n:Metric {id: 'practices'})
SET     n.name = 'Practices',
    n.name_kr = '5. 실행',
    n.domain = 'MG',
    n.definition = '작업을 수행하거나 목표를 달성하기 위해 설계된 34가지 Practices - ITIL4 includes 34 management practives - 일반 관리, 서비스 관리, 기술관리 프랙티스를 실행 (예) 전략관리, SLM, 가용성관리, 문제관리',
    n.aliases = ['Practices', '5. 실행'];

MERGE (n:Metric {id: '2._정보_및_기술'})
SET     n.name = '2. 정보 및 기술',
    n.name_kr = '2. 정보 및 기술',
    n.domain = 'MG',
    n.definition = '데이터의 가치 극대화, 소유로 인한 위험과 의무 관리 - 클라우드 서비스를 통해 신속 배포, 확장, 해체 수행 - 정보의 중요성과 가용성, 클라우드 서비스 등의 기술의 중요성 강조';

MERGE (n:Concept {id: '3._파트너_및_공급업체'})
SET     n.name = '3. 파트너 및 공급업체',
    n.name_kr = '3. 파트너 및 공급업체',
    n.domain = 'MG',
    n.definition = '서비스와 파트너 사와 공급하는 협력업체와 가치 창출 - SIAM(Service Integration and Management)이라는 프레임 워크 사용';

MERGE (n:Concept {id: '4._가치_흐름과_프로세스'})
SET     n.name = '4. 가치 흐름과 프로세스',
    n.name_kr = '4. 가치 흐름과 프로세스',
    n.domain = 'MG',
    n.definition = '조직이 제품과 서비스를 이용하여, 가치 창출을 위한 프로세스 관리';

MERGE (n:Standard {id: 'itil_v3'})
SET     n.name = 'ITIL V3',
    n.name_kr = 'ITIL V3',
    n.domain = 'MG',
    n.aliases = ['ITIL V3'];

MERGE (n:Standard {id: 'itil_v4'})
SET     n.name = 'ITIL V4',
    n.name_kr = 'ITIL V4',
    n.domain = 'MG',
    n.aliases = ['ITIL V4'];

// --- 관계 ---

MERGE (a:Standard {id: 'itil_3.0,_v4.0'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Standard {id: 'itil_3.0,_v4.0'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: '개념도'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: '2._거버넌스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: 'service_value_chain'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: '4._지속적인_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Metric {id: 'practices'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Metric {id: '2._정보_및_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: '3._파트너_및_공급업체'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Concept {id: '4._가치_흐름과_프로세스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_v3'})
MERGE (b:Standard {id: 'itil_v4'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Standard {id: 'itil_v3'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Standard {id: 'itil_v4'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Document {id: 'MG_008'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Standard {id: 'itil_4_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_3.0,_v4.0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개념도'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '2._거버넌스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_value_chain'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._지속적인_개선'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'practices'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '2._정보_및_기술'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '3._파트너_및_공급업체'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '4._가치_흐름과_프로세스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_v3'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_v4'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_009: Service Support
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_009'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'service_support'})
SET     n.name = 'Service Support',
    n.name_kr = 'Service Support',
    n.domain = 'MG',
    n.aliases = ['Service Support'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Standard {id: 'itil_3.0,_v4.0'})
SET     n.name = 'ITIL 3.0, V4.0',
    n.name_kr = 'ITIL 3.0, V4.0',
    n.domain = 'MG';

MERGE (n:Concept {id: '서인문변구릴_or_쓰데이피알씨'})
SET     n.name = '서인문변구릴 or 쓰데이피알씨',
    n.name_kr = '서인문변구릴 or 쓰데이피알씨',
    n.domain = 'MG';

MERGE (n:Concept {id: '분류_및_우선순위'})
SET     n.name = '분류 및 우선순위',
    n.name_kr = '분류 및 우선순위',
    n.domain = 'MG',
    n.definition = '사건의 유형, 특성, SLA에 따라 문제 유형을 분류 - 영향도 및 긴급도를 산정해 우선순위를 결정';

MERGE (n:Concept {id: '조사_및_진단'})
SET     n.name = '조사 및 진단',
    n.name_kr = '조사 및 진단',
    n.domain = 'MG',
    n.definition = '근본적인 분석 및 해결책 모색 - 알려진 오류(Know Error)화';

MERGE (n:Concept {id: '해결책_식별'})
SET     n.name = '해결책 식별',
    n.name_kr = '해결책 식별',
    n.domain = 'MG',
    n.definition = '알려진 오류에 대한 해결방법 제시 - KEDB(Known Error DB)에 저장';

MERGE (n:Concept {id: '문제해결_및_종료'})
SET     n.name = '문제해결 및 종료',
    n.name_kr = '문제해결 및 종료',
    n.domain = 'MG',
    n.definition = '동일한 문제 재발 방지 - 종료된 문제 기록';

MERGE (n:Concept {id: '일반변경'})
SET     n.name = '일반변경',
    n.name_kr = '일반변경',
    n.domain = 'MG',
    n.definition = '시스템의 대규모 전개의 경우(개발 시스템 전개, 법개정, 2개이상 시스템 연관된 경우), CAB 진행';

MERGE (n:Concept {id: '긴급변경'})
SET     n.name = '긴급변경',
    n.name_kr = '긴급변경',
    n.domain = 'MG',
    n.definition = '인시던트로 인하여 변경이 발생한 경우';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'MG',
    n.definition = '변경 사항에 대한 영향도 분석 및 변경 유형 결정';

MERGE (n:Concept {id: '변경_승인'})
SET     n.name = '변경 승인',
    n.name_kr = '변경 승인',
    n.domain = 'MG',
    n.definition = '단순변경 : 변경 관리자가 변경 요청 승인 - 일반, 긴급변경 : 변경조정위원회(CAB) 개최 및 승인';

MERGE (n:Concept {id: '변경작업_실시'})
SET     n.name = '변경작업 실시',
    n.name_kr = '변경작업 실시',
    n.domain = 'MG',
    n.definition = '변경 수행 및 릴리즈 이관';

MERGE (n:Concept {id: '변경결과_review'})
SET     n.name = '변경결과 Review',
    n.name_kr = '변경결과 Review',
    n.domain = 'MG',
    n.definition = '변경이행에 대한 모니터링, 변경요청자 확인';

MERGE (n:Concept {id: '변경작업_종료'})
SET     n.name = '변경작업 종료',
    n.name_kr = '변경작업 종료',
    n.domain = 'MG',
    n.definition = '종료된 변경작업 기록, 보고서 작성';

// --- 관계 ---

MERGE (a:Standard {id: 'itil_3.0,_v4.0'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Standard {id: 'itil_3.0,_v4.0'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '서인문변구릴_or_쓰데이피알씨'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '분류_및_우선순위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '조사_및_진단'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '해결책_식별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '문제해결_및_종료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '일반변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '긴급변경'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '변경_승인'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '변경작업_실시'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '변경결과_review'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: '변경작업_종료'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Document {id: 'MG_009'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_3.0,_v4.0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서인문변구릴_or_쓰데이피알씨'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분류_및_우선순위'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조사_및_진단'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '해결책_식별'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '문제해결_및_종료'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반변경'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '긴급변경'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경_승인'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경작업_실시'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경결과_review'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경작업_종료'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_010: Service Delivery
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_010'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'service_delivery'})
SET     n.name = 'Service Delivery',
    n.name_kr = 'Service Delivery',
    n.domain = 'MG',
    n.aliases = ['Service Delivery'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Standard {id: 'itil_3_0'})
SET     n.name = 'ITIL 3.0',
    n.name_kr = 'ITIL 3.0',
    n.domain = 'MG',
    n.aliases = ['ITIL 3.0'];

MERGE (n:Concept {id: 'ac2fsl'})
SET     n.name = 'AC2FSL',
    n.name_kr = 'AC2FSL',
    n.domain = 'MG',
    n.aliases = ['AC2FSL'];

MERGE (n:Concept {id: '수재가용보연'})
SET     n.name = '수재가용보연',
    n.name_kr = '수재가용보연',
    n.domain = 'MG';

MERGE (n:Concept {id: 'service_support'})
SET     n.name = 'Service Support',
    n.name_kr = '서비스 지원',
    n.domain = 'MG',
    n.aliases = ['Service Support', '서비스 지원'];

// --- 관계 ---

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Standard {id: 'itil_3_0'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Concept {id: 'ac2fsl'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Concept {id: '수재가용보연'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Concept {id: 'service_delivery'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Concept {id: 'service_support'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Document {id: 'MG_010'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'service_delivery'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ac2fsl'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수재가용보연'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_011: Incident Management
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_011'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'incident_management'})
SET     n.name = 'Incident Management',
    n.name_kr = 'Incident Management',
    n.domain = 'MG',
    n.aliases = ['Incident Management'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Standard {id: 'itil_3_0'})
SET     n.name = 'ITIL 3.0',
    n.name_kr = 'ITIL 3.0',
    n.domain = 'MG',
    n.aliases = ['ITIL 3.0'];

MERGE (n:Standard {id: 'itil'})
SET     n.name = 'ITIL',
    n.name_kr = 'ITIL',
    n.domain = 'MG',
    n.aliases = ['ITIL'];

MERGE (n:Metric {id: 'sla'})
SET     n.name = 'SLA',
    n.name_kr = 'SLA',
    n.domain = 'MG',
    n.aliases = ['SLA'];

MERGE (n:Metric {id: '가용성'})
SET     n.name = '가용성',
    n.name_kr = '가용성',
    n.domain = 'MG';

MERGE (n:Concept {id: 'it_서비스'})
SET     n.name = 'IT 서비스',
    n.name_kr = 'IT 서비스',
    n.domain = 'MG';

MERGE (n:Concept {id: 'service_support'})
SET     n.name = 'Service Support',
    n.name_kr = 'Service Support',
    n.domain = 'MG',
    n.aliases = ['Service Support'];

MERGE (n:Concept {id: 'service_operation'})
SET     n.name = 'Service Operation',
    n.name_kr = 'Service Operation',
    n.domain = 'MG',
    n.aliases = ['Service Operation'];

MERGE (n:Concept {id: 'incident'})
SET     n.name = '인시던트(Incident) 관리',
    n.name_kr = '인시던트(Incident) 관리',
    n.domain = 'MG',
    n.definition = '가능한 SLA를 위반하지 않도록 최대한 빨리, 그리고 비즈니스에 영향을 최소로 하여 인시던트를 해결하는 활동 인시던트: 계획되지 않은 IT 서비스의 중단이나 IT 서비스의 질을 감소시키는 이벤트';

MERGE (n:Metric {id: 'problem'})
SET     n.name = '문제(Problem) 관리',
    n.name_kr = '문제(Problem) 관리',
    n.domain = 'MG',
    n.definition = '문제의 근본 원인을 해결함과 동시에 그러한 문제들이 재발되지 않도록 하여 IT 서비스의 가용성을 높이는 활동 문제: 하나 이상의 인시던트의 근본원인을 해결해야 하는 것. 해결방안을 아직 모르는 인시던트';

MERGE (n:Concept {id: 'incident관리'})
SET     n.name = 'Incident관리',
    n.name_kr = 'Incident관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'problem관리'})
SET     n.name = 'Problem관리',
    n.name_kr = 'Problem관리',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Standard {id: 'itil_3_0'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Standard {id: 'itil'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Metric {id: 'sla'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Metric {id: '가용성'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'it_서비스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'service_support'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'service_operation'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'incident'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Metric {id: 'problem'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'incident관리'})
MERGE (b:Concept {id: 'problem관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'incident관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Concept {id: 'problem관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Document {id: 'MG_011'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'incident_management'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'sla'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: '가용성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_서비스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_support'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_operation'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'incident'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'problem'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'incident관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'problem관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_012: CMDB
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_012'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'cmdb'})
SET     n.name = 'CMDB',
    n.name_kr = 'CMDB',
    n.domain = 'MG',
    n.aliases = ['CMDB'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Standard {id: 'itil_3_0'})
SET     n.name = 'ITIL 3.0',
    n.name_kr = 'ITIL 3.0',
    n.domain = 'MG',
    n.aliases = ['ITIL 3.0'];

MERGE (n:Concept {id: '변경추적/지식관리/성과관리'})
SET     n.name = '변경추적/지식관리/성과관리',
    n.name_kr = '변경추적/지식관리/성과관리',
    n.domain = 'MG';

MERGE (n:Concept {id: 'cmdb_구성'})
SET     n.name = 'CMDB 구성',
    n.name_kr = 'CMDB 구성',
    n.domain = 'MG',
    n.definition = '구성정보(CI)';

MERGE (n:Concept {id: '서비스'})
SET     n.name = '서비스',
    n.name_kr = '서비스',
    n.domain = 'MG',
    n.definition = 'Incident 관리';

MERGE (n:Concept {id: 'problem_관리'})
SET     n.name = 'Problem 관리',
    n.name_kr = 'Problem 관리',
    n.domain = 'MG',
    n.definition = '관련 Incident ID, 과거 유사사례, 처리방안';

MERGE (n:Concept {id: 'change_정보'})
SET     n.name = 'Change 정보',
    n.name_kr = 'Change 정보',
    n.domain = 'MG',
    n.definition = '서비스 변경이력, 변경내용, 변경사유';

MERGE (n:Concept {id: 'service_정보'})
SET     n.name = 'Service 정보',
    n.name_kr = 'Service 정보',
    n.domain = 'MG',
    n.definition = '서비스 ID, 서비스 접수채널, 접수담당자';

MERGE (n:Concept {id: '내부관리'})
SET     n.name = '내부관리',
    n.name_kr = '내부관리',
    n.domain = 'MG',
    n.definition = 'Agent 및 조직정보';

MERGE (n:Concept {id: '서비스관리'})
SET     n.name = '서비스관리',
    n.name_kr = '서비스관리',
    n.domain = 'MG',
    n.definition = '요청로그, 관리정보';

MERGE (n:Concept {id: 'skms'})
SET     n.name = 'SKMS',
    n.name_kr = 'SKMS',
    n.domain = 'MG',
    n.aliases = ['SKMS'];

// --- 관계 ---

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Standard {id: 'itil_3_0'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: '변경추적/지식관리/성과관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'cmdb_구성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: '서비스'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'problem_관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'change_정보'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'service_정보'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: '내부관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: '서비스관리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'skms'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Concept {id: 'skms'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Document {id: 'MG_012'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cmdb'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: 'itil_3_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변경추적/지식관리/성과관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cmdb_구성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'problem_관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'change_정보'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'service_정보'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내부관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '서비스관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'skms'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_015: 시스템 다이내믹스(System Dynamics)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_015'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'system_dynamics'})
SET     n.name = 'System Dynamics',
    n.name_kr = '시스템 다이내믹스',
    n.domain = 'MG',
    n.aliases = ['System Dynamics', '시스템 다이내믹스'];

MERGE (n:Concept {id: 'mining_총론'})
SET     n.name = 'Mining 총론',
    n.name_kr = 'Mining 총론',
    n.domain = 'MG';

MERGE (n:Concept {id: '피드백_루프'})
SET     n.name = '피드백 루프',
    n.name_kr = '피드백 루프',
    n.domain = 'MG';

MERGE (n:Concept {id: '인과관계'})
SET     n.name = '인과관계',
    n.name_kr = '인과관계',
    n.domain = 'MG';

MERGE (n:Concept {id: 'level'})
SET     n.name = 'Level',
    n.name_kr = 'Level',
    n.domain = 'MG',
    n.aliases = ['Level'];

MERGE (n:Concept {id: 'rate'})
SET     n.name = 'Rate',
    n.name_kr = 'Rate',
    n.domain = 'MG',
    n.aliases = ['Rate'];

MERGE (n:Concept {id: '제시내용'})
SET     n.name = '제시내용',
    n.name_kr = '제시내용',
    n.domain = 'MG',
    n.definition = '현상';

MERGE (n:Concept {id: '영향_인자'})
SET     n.name = '영향 인자',
    n.name_kr = '영향 인자',
    n.domain = 'MG',
    n.definition = '입소문( Word of Mouse ) 영향 인자 1) 입소문꾼(Talker) : 누가 입소문을 낼 것인가? 2) 입소문 내용(Topic) : 무엇을 입소문 낼 것인가? 3) 입소문 도구(Tool) : 어떻게 입소문이 퍼지도록 만들 것인가? 4) 입소문 참여(Taking Part) : 어떻게 고객의 입소문 대화에 참여할 것인가? 5) 입소문 추적(Tracki';

MERGE (n:Concept {id: '분석'})
SET     n.name = '분석',
    n.name_kr = '분석',
    n.domain = 'MG',
    n.definition = '인과관계 방향';

MERGE (n:Concept {id: '변수'})
SET     n.name = '변수',
    n.name_kr = '변수',
    n.domain = 'MG',
    n.definition = '신제품 매출, 입소문, 제품 만족도, 재구매율 - 입소문꾼, 입소문내용, 입소문 도구, 입소문 참여, 입소문 추적';

MERGE (n:Concept {id: '다이어그램'})
SET     n.name = '다이어그램',
    n.name_kr = '다이어그램',
    n.domain = 'MG',
    n.definition = '현상에 대한 인과루프 다이어그램';

// --- 관계 ---

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: 'mining_총론'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '피드백_루프'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '인과관계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: 'level'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: 'rate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '제시내용'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '영향_인자'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '분석'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '변수'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Concept {id: '다이어그램'})
MERGE (a)-[:USES]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Document {id: 'MG_015'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'system_dynamics'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mining_총론'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피드백_루프'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인과관계'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'level'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rate'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제시내용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영향_인자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변수'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다이어그램'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_016.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_016.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_016.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_016.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_017: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_017'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_018.1: DRS
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_018.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'drs'})
SET     n.name = 'DRS',
    n.name_kr = 'DRS',
    n.domain = 'MG',
    n.aliases = ['DRS'];

MERGE (n:Concept {id: 'it경영전략'})
SET     n.name = 'IT경영전략',
    n.name_kr = 'IT경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bcp'})
SET     n.name = 'BCP',
    n.name_kr = 'BCP',
    n.domain = 'MG',
    n.aliases = ['BCP'];

MERGE (n:Concept {id: 'mirror'})
SET     n.name = 'Mirror',
    n.name_kr = 'Mirror',
    n.domain = 'MG',
    n.aliases = ['Mirror'];

MERGE (n:Concept {id: 'hot'})
SET     n.name = 'Hot',
    n.name_kr = 'Hot',
    n.domain = 'MG',
    n.aliases = ['Hot'];

MERGE (n:Concept {id: 'warm'})
SET     n.name = 'Warm',
    n.name_kr = 'Warm',
    n.domain = 'MG',
    n.aliases = ['Warm'];

MERGE (n:Concept {id: 'cold_site'})
SET     n.name = 'Cold site',
    n.name_kr = 'Cold site',
    n.domain = 'MG',
    n.aliases = ['Cold site'];

MERGE (n:Concept {id: 'rso'})
SET     n.name = 'RSO',
    n.name_kr = 'RSO',
    n.domain = 'MG',
    n.aliases = ['RSO'];

MERGE (n:Concept {id: 'rto'})
SET     n.name = 'RTO',
    n.name_kr = 'RTO',
    n.domain = 'MG',
    n.aliases = ['RTO'];

MERGE (n:Concept {id: 'rpo'})
SET     n.name = 'RPO',
    n.name_kr = 'RPO',
    n.domain = 'MG',
    n.aliases = ['RPO'];

MERGE (n:Concept {id: 'rco'})
SET     n.name = 'RCO',
    n.name_kr = 'RCO',
    n.domain = 'MG',
    n.aliases = ['RCO'];

MERGE (n:Concept {id: 'bco'})
SET     n.name = 'BCO',
    n.name_kr = 'BCO',
    n.domain = 'MG',
    n.aliases = ['BCO'];

MERGE (n:Concept {id: '네트워크_측면'})
SET     n.name = '네트워크 측면',
    n.name_kr = '네트워크 측면',
    n.domain = 'MG',
    n.definition = '– L2/L3/L4 Switch – Backbone Router';

MERGE (n:Concept {id: '–_routing,_qos_–_wan,_fddi'})
SET     n.name = '– Routing, QoS – WAN, FDDI',
    n.name_kr = '– Routing, QoS – WAN, FDDI',
    n.domain = 'MG',
    n.definition = '– 주/복구 센터 간 통신체계 – 원거리 특징 기반 구성';

MERGE (n:Concept {id: '시스템_측면'})
SET     n.name = '시스템 측면',
    n.name_kr = '시스템 측면',
    n.domain = 'MG',
    n.definition = '– Web/WAS Server – DBMS, Storage';

MERGE (n:Concept {id: '–_데이터_동기화_–_dwdm/cwdm'})
SET     n.name = '– 데이터 동기화 – DWDM/CWDM',
    n.name_kr = '– 데이터 동기화 – DWDM/CWDM',
    n.domain = 'MG',
    n.definition = '– 센터 간 데이터 동기화 – 원거리 데이터 전송 기술';

MERGE (n:Concept {id: '시스템'})
SET     n.name = '시스템',
    n.name_kr = '시스템',
    n.domain = 'MG',
    n.definition = 'HA(High Availability)';

MERGE (n:Concept {id: '데이터_베이스'})
SET     n.name = '데이터 베이스',
    n.name_kr = '데이터 베이스',
    n.domain = 'MG',
    n.definition = 'Redo, Undo';

MERGE (n:Concept {id: '네트워크'})
SET     n.name = '네트워크',
    n.name_kr = '네트워크',
    n.domain = 'MG',
    n.definition = 'IP-SAN';

MERGE (n:Concept {id: '스토리지'})
SET     n.name = '스토리지',
    n.name_kr = '스토리지',
    n.domain = 'MG',
    n.definition = 'RAID';

MERGE (n:Concept {id: '디스크장치_이용'})
SET     n.name = '디스크장치 이용',
    n.name_kr = '디스크장치 이용',
    n.domain = 'MG';

MERGE (n:Concept {id: '운영체제_이용'})
SET     n.name = '운영체제 이용',
    n.name_kr = '운영체제 이용',
    n.domain = 'MG';

MERGE (n:Concept {id: 'dbms이용'})
SET     n.name = 'DBMS이용',
    n.name_kr = 'DBMS이용',
    n.domain = 'MG';

MERGE (n:Concept {id: 'mirror_site'})
SET     n.name = 'Mirror Site',
    n.name_kr = 'Mirror Site',
    n.domain = 'MG',
    n.definition = '양 센터에서 동시에 데이터를 처리 및 운영하며, 재해발생 시 즉시 대체 가동',
    n.aliases = ['Mirror Site'];

MERGE (n:Concept {id: 'hot_site'})
SET     n.name = 'Hot Site',
    n.name_kr = 'Hot Site',
    n.domain = 'MG',
    n.definition = '주 전산센터와 거의 동일한 수준의 자원 확보 - 데이터 실시간 이중화',
    n.aliases = ['Hot Site'];

MERGE (n:Concept {id: 'warm_site'})
SET     n.name = 'Warm Site',
    n.name_kr = 'Warm Site',
    n.domain = 'MG',
    n.definition = '주요업무처리를 위한 일부 장비를 구비하고, 재해발생 시 주요 업무만 복구하여 운영하는 형태',
    n.aliases = ['Warm Site'];

// --- 관계 ---

MERGE (a:Concept {id: 'bcp'})
MERGE (b:Concept {id: 'it경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'bcp'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'mirror'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'hot'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'warm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'cold_site'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'rso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'rto'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'rpo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'rco'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'bco'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '네트워크_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '–_routing,_qos_–_wan,_fddi'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '시스템_측면'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '–_데이터_동기화_–_dwdm/cwdm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '시스템'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '데이터_베이스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '네트워크'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '스토리지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '디스크장치_이용'})
MERGE (b:Concept {id: '운영체제_이용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '디스크장치_이용'})
MERGE (b:Concept {id: 'dbms이용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '디스크장치_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '운영체제_이용'})
MERGE (b:Concept {id: 'dbms이용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: '운영체제_이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'dbms이용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'mirror_site'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'hot_site'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Concept {id: 'warm_site'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Document {id: 'MG_018.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mirror'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hot'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'warm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cold_site'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rso'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rto'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rpo'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '–_routing,_qos_–_wan,_fddi'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '–_데이터_동기화_–_dwdm/cwdm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_베이스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '네트워크'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '스토리지'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디스크장치_이용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영체제_이용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'dbms이용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mirror_site'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'hot_site'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'warm_site'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_018.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_018.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_019: RTO RPO RCO RSC BCO
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_019'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'rto_rpo_rco_rsc_bco'})
SET     n.name = 'RTO RPO RCO RSC BCO',
    n.name_kr = 'RTO RPO RCO RSC BCO',
    n.domain = 'MG',
    n.aliases = ['RTO RPO RCO RSC BCO'];

MERGE (n:Concept {id: 'it경영전략'})
SET     n.name = 'IT경영전략',
    n.name_kr = 'IT경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bcp'})
SET     n.name = 'BCP',
    n.name_kr = 'BCP',
    n.domain = 'MG',
    n.aliases = ['BCP'];

MERGE (n:Concept {id: 'recovery_point_objective'})
SET     n.name = 'Recovery Point Objective',
    n.name_kr = 'RPO',
    n.domain = 'MG',
    n.definition = '업무 중단 시점부터 데이터가 복구되어 다시 정상 가동될 때까지 시간 - 데이터가 복구되어야 하는 시점',
    n.aliases = ['Recovery Point Objective', 'RPO'];

MERGE (n:Concept {id: 'recovery_time_objective'})
SET     n.name = 'Recovery Time Objective',
    n.name_kr = 'RTO',
    n.domain = 'MG',
    n.definition = '업무 중단 시점부터 업무가 복구되어 다시 가동될 때까지 시간 - 재해 시 복구 목표 시간 설정',
    n.aliases = ['Recovery Time Objective', 'RTO'];

MERGE (n:Concept {id: 'recovery_scope_objective'})
SET     n.name = 'Recovery Scope Objective',
    n.name_kr = 'RSO',
    n.domain = 'MG',
    n.definition = '재해 시 목표 복구 범위의 선정 - 계정계, 정보계, 대외계, 인사관리 시스템, CMDB, 메일 등',
    n.aliases = ['Recovery Scope Objective', 'RSO'];

MERGE (n:Concept {id: 'recovery_communication_objective'})
SET     n.name = 'Recovery Communication Objective',
    n.name_kr = 'RCO',
    n.domain = 'MG',
    n.definition = '각종 통신메체들의 복구를 통해 복구 대상 NW의 정상 가동 재개 시간 범 위를 정의하는 NW 복구 목표 - 본점과 지점, 영업점 간, 고객 접점 등',
    n.aliases = ['Recovery Communication Objective', 'RCO'];

MERGE (n:Concept {id: 'backup_center_objective'})
SET     n.name = 'Backup Center Objective',
    n.name_kr = 'BCO',
    n.domain = 'MG',
    n.definition = '재해복구를 위한 재해복구센터의 활용방안과 구축 형태를 정의하는 백업 센 터 구축 목표',
    n.aliases = ['Backup Center Objective', 'BCO'];

MERGE (n:Concept {id: 'rso'})
SET     n.name = 'RSO',
    n.name_kr = 'RSO',
    n.domain = 'MG',
    n.definition = 'Recovery Scope Objective , 재해복구 범위목표 예) 계정계, 정보계, 대외계 등의 재해시 복구목표(Web, Mail,ERP,EIP)',
    n.aliases = ['RSO'];

MERGE (n:Concept {id: 'rto'})
SET     n.name = 'RTO',
    n.name_kr = 'RTO',
    n.domain = 'MG',
    n.definition = 'Recovery Time Objective, 재해복구 시간목표 (업무 관점) 예) 업무중단시점부터 ‘업무’가 복구하여 가동될 때 까지의 시간목표',
    n.aliases = ['RTO'];

MERGE (n:Concept {id: 'rpo'})
SET     n.name = 'RPO',
    n.name_kr = 'RPO',
    n.domain = 'MG',
    n.definition = 'Recovery Point Objective 재해복구 시점목표 (데이터 관점)/ 전일 마감 데이터 백업 시점 예) 업무중단시점부터 ‘데이터’가 복구하여 가동될 때 까지의 시간목표',
    n.aliases = ['RPO'];

MERGE (n:Concept {id: 'rco'})
SET     n.name = 'RCO',
    n.name_kr = 'RCO',
    n.domain = 'MG',
    n.definition = 'Recovery Communication Objective 네크워크복구 시간목표(네트워크 복구 수준) 예) 본점과 지점간의 네트워크 복구등의 네트워크 복구목표',
    n.aliases = ['RCO'];

MERGE (n:Concept {id: 'bco'})
SET     n.name = 'BCO',
    n.name_kr = 'BCO',
    n.domain = 'MG',
    n.definition = 'Backup Center Objective, 백업센터목표(백업 센터에 재해복구 시스템 구축) 예) 독자구축, 공동구축, 상호구축 구축형태 목표',
    n.aliases = ['BCO'];

MERGE (n:Concept {id: 'mbco'})
SET     n.name = 'MBCO',
    n.name_kr = 'MBCO',
    n.domain = 'MG',
    n.definition = 'Minimum Business Coontinuity Objective 최소 비즈니스 업무 연속성 목표',
    n.aliases = ['MBCO'];

MERGE (n:Concept {id: 'mtpd'})
SET     n.name = 'MTPD',
    n.name_kr = 'MTPD',
    n.domain = 'MG',
    n.definition = 'Maximum Tolerable Period of Disruption 최대허용가능 중단기간',
    n.aliases = ['MTPD'];

// --- 관계 ---

MERGE (a:Concept {id: 'bcp'})
MERGE (b:Concept {id: 'it경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'bcp'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'recovery_point_objective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'recovery_time_objective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'recovery_scope_objective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'recovery_communication_objective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'backup_center_objective'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'rso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'rto'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'rpo'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'rco'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'bco'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'mbco'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Concept {id: 'mtpd'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Document {id: 'MG_019'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rto_rpo_rco_rsc_bco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery_point_objective'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery_time_objective'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery_scope_objective'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'recovery_communication_objective'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'backup_center_objective'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rso'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rto'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rpo'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mbco'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mtpd'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_023: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_023'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_024: BIA(Business Impact Analysis), RA(Risk Assessment)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_024'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'business_impact_analysis'})
SET     n.name = 'Risk Assessment',
    n.name_kr = 'BIA(Business Impact Analysis), RA',
    n.domain = 'MG',
    n.aliases = ['Risk Assessment', 'BIA(Business Impact Analysis), RA'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bcp_bcm'})
SET     n.name = 'BCP/BCM',
    n.name_kr = 'BCP/BCM',
    n.domain = 'MG',
    n.aliases = ['BCP/BCM'];

MERGE (n:Concept {id: 'bia'})
SET     n.name = 'BIA',
    n.name_kr = 'BIA',
    n.domain = 'MG',
    n.aliases = ['BIA'];

MERGE (n:Concept {id: '정량적/정석적_분석'})
SET     n.name = '정량적/정석적 분석',
    n.name_kr = '정량적/정석적 분석',
    n.domain = 'MG';

MERGE (n:Concept {id: '재무적/비재무적_지표'})
SET     n.name = '재무적/비재무적 지표',
    n.name_kr = '재무적/비재무적 지표',
    n.domain = 'MG';

MERGE (n:Concept {id: '복구우선순위'})
SET     n.name = '복구우선순위',
    n.name_kr = '복구우선순위',
    n.domain = 'MG';

MERGE (n:Concept {id: '관점별수준_(미미'})
SET     n.name = '관점별수준 (미미',
    n.name_kr = '관점별수준 (미미',
    n.domain = 'MG';

MERGE (n:Concept {id: '사소'})
SET     n.name = '사소',
    n.name_kr = '사소',
    n.domain = 'MG';

MERGE (n:Concept {id: '보통'})
SET     n.name = '보통',
    n.name_kr = '보통',
    n.domain = 'MG';

MERGE (n:Concept {id: '중요'})
SET     n.name = '중요',
    n.name_kr = '중요',
    n.domain = 'MG';

MERGE (n:Concept {id: '극심)'})
SET     n.name = '극심)',
    n.name_kr = '극심)',
    n.domain = 'MG';

MERGE (n:Concept {id: '최종등급_(광범위/전파'})
SET     n.name = '최종등급 (광범위/전파',
    n.name_kr = '최종등급 (광범위/전파',
    n.domain = 'MG';

MERGE (n:Concept {id: '중요/대형'})
SET     n.name = '중요/대형',
    n.name_kr = '중요/대형',
    n.domain = 'MG';

MERGE (n:Concept {id: '일반/제한'})
SET     n.name = '일반/제한',
    n.name_kr = '일반/제한',
    n.domain = 'MG';

MERGE (n:Concept {id: '부분/국지적)'})
SET     n.name = '부분/국지적)',
    n.name_kr = '부분/국지적)',
    n.domain = 'MG';

MERGE (n:Concept {id: 'critical_periodization'})
SET     n.name = 'Critical Periodization',
    n.name_kr = '핵심 우선순위 결정',
    n.domain = 'MG',
    n.definition = '영향도가 가장 큰 업무를 우선 복구하여 피해 최소화',
    n.aliases = ['Critical Periodization', '핵심 우선순위 결정'];

MERGE (n:Concept {id: 'downtime_estimate'})
SET     n.name = 'Downtime Estimate',
    n.name_kr = '중단시간 산정',
    n.domain = 'MG',
    n.definition = '최대 허용 가능한 Downtime을 산정하여 서비스 연속성 보장',
    n.aliases = ['Downtime Estimate', '중단시간 산정'];

MERGE (n:Concept {id: 'resource_requirements'})
SET     n.name = 'Resource Requirements',
    n.name_kr = '요구자원 산정',
    n.domain = 'MG',
    n.definition = '업무별 자원 요구사항을 파악, 원활한 재해복구 지원',
    n.aliases = ['Resource Requirements', '요구자원 산정'];

MERGE (n:Concept {id: '주요요소'})
SET     n.name = '주요요소',
    n.name_kr = '주요요소',
    n.domain = 'MG',
    n.definition = '위험 식별';

MERGE (n:Concept {id: '수행_프로세스'})
SET     n.name = '수행 프로세스',
    n.name_kr = '수행 프로세스',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: 'bcp_bcm'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bia'})
MERGE (b:Concept {id: 'bcp_bcm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '정량적/정석적_분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '재무적/비재무적_지표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '복구우선순위'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '관점별수준_(미미'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '사소'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '보통'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '중요'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '극심)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '최종등급_(광범위/전파'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '중요/대형'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '일반/제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '부분/국지적)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: 'critical_periodization'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: 'downtime_estimate'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: 'resource_requirements'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '주요요소'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Concept {id: '수행_프로세스'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Document {id: 'MG_024'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'business_impact_analysis'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcp_bcm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bia'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정량적/정석적_분석'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '재무적/비재무적_지표'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복구우선순위'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관점별수준_(미미'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사소'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보통'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '극심)'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종등급_(광범위/전파'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '중요/대형'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반/제한'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부분/국지적)'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'critical_periodization'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'downtime_estimate'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'resource_requirements'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요요소'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수행_프로세스'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_025.1: BCP, DRS 필요한 기술요소(DWDM, SAN, 가상화)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_025.1'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'bcp,_drs_필요한_기술요소'})
SET     n.name = 'BCP, DRS 필요한 기술요소(DWDM, SAN, 가상화)',
    n.name_kr = 'BCP, DRS 필요한 기술요소(DWDM, SAN, 가상화)',
    n.domain = 'MG';

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bcp_bcm'})
SET     n.name = 'BCP/BCM',
    n.name_kr = 'BCP/BCM',
    n.domain = 'MG',
    n.aliases = ['BCP/BCM'];

// --- 관계 ---

MERGE (a:Concept {id: 'bcp_bcm'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bcp,_drs_필요한_기술요소'})
MERGE (b:Concept {id: 'bcp_bcm'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bcp,_drs_필요한_기술요소'})
MERGE (b:Document {id: 'MG_025.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bcp,_drs_필요한_기술요소'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bcp_bcm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_025.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_025.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_025.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_025.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_026.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_026.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_026.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_026.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_027: 7S
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_027'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: '7s'})
SET     n.name = '7S',
    n.name_kr = '7S',
    n.domain = 'MG';

MERGE (n:Concept {id: '경영전략'})
SET     n.name = '경영전략',
    n.name_kr = '경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '전략수립도구'})
SET     n.name = '전략수립도구',
    n.name_kr = '전략수립도구',
    n.domain = 'MG';

MERGE (n:Concept {id: 'style'})
SET     n.name = 'Style',
    n.name_kr = 'Style',
    n.domain = 'MG',
    n.aliases = ['Style'];

MERGE (n:Concept {id: 'strategy'})
SET     n.name = 'Strategy',
    n.name_kr = 'Strategy',
    n.domain = 'MG',
    n.aliases = ['Strategy'];

MERGE (n:Concept {id: 'structure'})
SET     n.name = 'Structure',
    n.name_kr = 'Structure',
    n.domain = 'MG',
    n.aliases = ['Structure'];

MERGE (n:Concept {id: 'staff'})
SET     n.name = 'Staff',
    n.name_kr = 'Staff',
    n.domain = 'MG',
    n.aliases = ['Staff'];

MERGE (n:Concept {id: 'system'})
SET     n.name = 'System',
    n.name_kr = 'System',
    n.domain = 'MG',
    n.aliases = ['System'];

MERGE (n:Concept {id: 'skill'})
SET     n.name = 'Skill',
    n.name_kr = 'Skill',
    n.domain = 'MG',
    n.aliases = ['Skill'];

MERGE (n:Concept {id: 'share_value'})
SET     n.name = 'Share Value',
    n.name_kr = 'Share Value',
    n.domain = 'MG',
    n.aliases = ['Share Value'];

MERGE (n:Concept {id: '모델'})
SET     n.name = '모델',
    n.name_kr = '모델',
    n.domain = 'MG';

MERGE (n:Concept {id: '분석내용'})
SET     n.name = '분석내용',
    n.name_kr = '분석내용',
    n.domain = 'MG';

MERGE (n:Concept {id: '구현방안'})
SET     n.name = '구현방안',
    n.name_kr = '구현방안',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '전략수립도구'})
MERGE (b:Concept {id: '경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'style'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'strategy'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'structure'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'staff'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'system'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'skill'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: 'share_value'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '모델'})
MERGE (b:Concept {id: '분석내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '모델'})
MERGE (b:Concept {id: '구현방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: '모델'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '분석내용'})
MERGE (b:Concept {id: '구현방안'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: '분석내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Concept {id: '구현방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Document {id: 'MG_027'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '7s'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략수립도구'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'style'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'strategy'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'structure'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'staff'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'system'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'skill'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'share_value'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '모델'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석내용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구현방안'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_028: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_028'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_029: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_029'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_030: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_030'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_031: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_031'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_032: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_032'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_033: BABOK
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_033'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'babok'})
SET     n.name = 'BABOK',
    n.name_kr = 'BABOK',
    n.domain = 'MG',
    n.aliases = ['BABOK'];

MERGE (n:Concept {id: 'it경영'})
SET     n.name = 'IT경영',
    n.name_kr = 'IT경영',
    n.domain = 'MG';

MERGE (n:Concept {id: '전략계획'})
SET     n.name = '전략계획',
    n.name_kr = '전략계획',
    n.domain = 'MG';

MERGE (n:Concept {id: 'business_analysis'})
SET     n.name = '-Business Analysis',
    n.name_kr = '-Business Analysis',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '전략계획'})
MERGE (b:Concept {id: 'it경영'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'babok'})
MERGE (b:Concept {id: '전략계획'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'babok'})
MERGE (b:Concept {id: 'business_analysis'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'babok'})
MERGE (b:Document {id: 'MG_033'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'babok'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it경영'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략계획'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'business_analysis'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_034.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_034.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_034.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_034.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_035: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_035'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_036: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_036'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_037.1: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_037.1'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_037.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_037.2'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_037.3: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_037.3'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_037.4: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_037.4'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_045: CRM
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_045'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'crm'})
SET     n.name = 'CRM',
    n.name_kr = 'CRM',
    n.domain = 'MG',
    n.aliases = ['CRM'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '기간시스템'})
SET     n.name = '기간시스템',
    n.name_kr = '기간시스템',
    n.domain = 'MG';

MERGE (n:Concept {id: 'life_time_value'})
SET     n.name = 'Life Time Value',
    n.name_kr = 'LTV',
    n.domain = 'MG',
    n.aliases = ['Life Time Value', 'LTV'];

MERGE (n:Concept {id: '운영crm'})
SET     n.name = '운영CRM',
    n.name_kr = '운영CRM',
    n.domain = 'MG';

MERGE (n:Concept {id: '분석crm'})
SET     n.name = '분석CRM',
    n.name_kr = '분석CRM',
    n.domain = 'MG';

MERGE (n:Concept {id: '협업crm'})
SET     n.name = '협업CRM',
    n.name_kr = '협업CRM',
    n.domain = 'MG';

MERGE (n:Concept {id: 'e_crm'})
SET     n.name = 'e-CRM',
    n.name_kr = 'e-CRM',
    n.domain = 'MG',
    n.aliases = ['e-CRM'];

MERGE (n:Concept {id: 'g_crm'})
SET     n.name = 'g-CRM',
    n.name_kr = 'g-CRM',
    n.domain = 'MG',
    n.aliases = ['g-CRM'];

MERGE (n:Concept {id: 'm_crm'})
SET     n.name = 'm-CRM',
    n.name_kr = 'm-CRM',
    n.domain = 'MG',
    n.aliases = ['m-CRM'];

MERGE (n:Concept {id: '운영_crm_operational_crm'})
SET     n.name = '운영 CRM Operational CRM',
    n.name_kr = '운영 CRM Operational CRM',
    n.domain = 'MG',
    n.definition = '고객접점에서 고객 관리 지원 - 영업, 마케팅, 고객서비스를 연계한 업무지원, 비즈니스 프로세스의 통합화 및 자동화';

MERGE (n:Concept {id: '분석_crm_analytical_crm'})
SET     n.name = '분석 CRM Analytical CRM',
    n.name_kr = '분석 CRM Analytical CRM',
    n.domain = 'MG',
    n.definition = '운영에서 발생하는 데이터로 마케팅 분석, 판매분석 지원 - DW와 연계하여 분석 정보 제공';

MERGE (n:Concept {id: '협업_crm_collaborative_crm'})
SET     n.name = '협업 CRM Collaborative CRM',
    n.name_kr = '협업 CRM Collaborative CRM',
    n.domain = 'MG',
    n.definition = '고객과의 접촉 채널 지원(접점) - 고객과 기업, 기업 내의 조직 간 업무 일원화, 협업을 목적으로 상호 연관 서비스를 지원';

MERGE (n:Concept {id: 'roi_based_approach'})
SET     n.name = 'ROI based Approach',
    n.name_kr = 'ROI based Approach',
    n.domain = 'MG',
    n.definition = '단기간에 ROI 효과를 거둘 수 있는 분야부터 투자 신속한 구현, 적절한 가격, 복잡하지 않고 Simple해야 함',
    n.aliases = ['ROI based Approach'];

MERGE (n:Concept {id: 'business_based_approach'})
SET     n.name = 'Business based Approach',
    n.name_kr = 'Business based Approach',
    n.domain = 'MG',
    n.definition = 'System Function 위주가 아닌 Business Flow 접근방식 전환 선진 Best Practice가 반영된 미리 검증된 프로세스 모델 벤치 마크',
    n.aliases = ['Business based Approach'];

MERGE (n:Concept {id: 'big_picture_and_start_small'})
SET     n.name = 'Big Picture and Start Small',
    n.name_kr = 'Big Picture and Start Small',
    n.domain = 'MG',
    n.definition = 'CRM에 대한 장기적인 Master Plan을 수립한 후 작은 것부터 시행(확장성 고려) - CRM 뿐 아니라 ERP/SCM/SEM 등 전체 BiZ 고려(통합성 고려)',
    n.aliases = ['Big Picture and Start Small'];

MERGE (n:Concept {id: 'crm_응용_확대'})
SET     n.name = 'CRM 응용 확대',
    n.name_kr = 'CRM 응용 확대',
    n.domain = 'MG',
    n.definition = 'CRM을 바탕으로 각종 기술이 융합된 CRM으로 발전(e-CRM, g-CRM, m-CRM)';

MERGE (n:Concept {id: '환경분석'})
SET     n.name = '환경분석',
    n.name_kr = '환경분석',
    n.domain = 'MG',
    n.definition = '시장/고객 분석';

MERGE (n:Concept {id: '고객분석'})
SET     n.name = '고객분석',
    n.name_kr = '고객분석',
    n.domain = 'MG',
    n.definition = '기초 분석';

MERGE (n:Concept {id: 'target_marketing'})
SET     n.name = 'Target Marketing',
    n.name_kr = 'Target Marketing',
    n.domain = 'MG',
    n.definition = '가설설정',
    n.aliases = ['Target Marketing'];

MERGE (n:Concept {id: 'crm_전략_방향_설정'})
SET     n.name = 'CRM 전략 방향 설정',
    n.name_kr = 'CRM 전략 방향 설정',
    n.domain = 'MG',
    n.definition = 'CRM 목적 설정';

MERGE (n:Concept {id: 'offer_설계'})
SET     n.name = 'Offer 설계',
    n.name_kr = 'Offer 설계',
    n.domain = 'MG',
    n.definition = '부가서비스 설계';

MERGE (n:Concept {id: 'channel_설계'})
SET     n.name = 'Channel 설계',
    n.name_kr = 'Channel 설계',
    n.domain = 'MG',
    n.definition = '고객과의 채널 설계';

MERGE (n:Concept {id: '목적에_따른_설정'})
SET     n.name = '목적에 따른 설정',
    n.name_kr = '목적에 따른 설정',
    n.domain = 'MG',
    n.definition = '도입 목적의 명확화 및 CRM을 무엇을 어떻게 사용할지에 대한 정확한 확인 필요 - 명확한 목적 기반에서 입력 항목 선정, 분석 방법, 지표 설정';

MERGE (n:Concept {id: '변화에_바로_입력'})
SET     n.name = '변화에 바로 입력',
    n.name_kr = '변화에 바로 입력',
    n.domain = 'MG',
    n.definition = '대부분 CRM이 잘 활용되지 않는 원인은 <정보 입력이 밀려 있다> 경우임 - CRM의 가장 큰 강점은 실시간 정보공유로 고객 정보 변화 시 바로 입력 필요';

MERGE (n:Concept {id: '데이터_분석/활용_극대화'})
SET     n.name = '데이터 분석/활용 극대화',
    n.name_kr = '데이터 분석/활용 극대화',
    n.domain = 'MG',
    n.definition = '입력한 데이터는 다양한 측면에서 분석하여 마케팅, 영업, 고객 서포트 활동 반영 - 축적한 데이터를 기반으로 분석하고 활용하여야 진정한 의미를 가짐';

MERGE (n:Concept {id: '적절한_커뮤니케이션'})
SET     n.name = '적절한 커뮤니케이션',
    n.name_kr = '적절한 커뮤니케이션',
    n.domain = 'MG',
    n.definition = '고객과의 적극적인 관계 유지를 통한 커뮤니케이션 방안 고민 - 다양한 채널 중 어떤 채널이 효과적인지 무슨 콘텐츠를 전달할 지 고민';

// --- 관계 ---

MERGE (a:Concept {id: '기간시스템'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '기간시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'life_time_value'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '운영crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '분석crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '협업crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'e_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'g_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'm_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '운영_crm_operational_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '분석_crm_analytical_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '협업_crm_collaborative_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'roi_based_approach'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'business_based_approach'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'big_picture_and_start_small'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'crm_응용_확대'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'e_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'g_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'm_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'e_crm'})
MERGE (b:Concept {id: 'g_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'e_crm'})
MERGE (b:Concept {id: 'm_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'e_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'g_crm'})
MERGE (b:Concept {id: 'm_crm'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'g_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'm_crm'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '환경분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '고객분석'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'target_marketing'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'crm_전략_방향_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'offer_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: 'channel_설계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '목적에_따른_설정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '변화에_바로_입력'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '데이터_분석/활용_극대화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Concept {id: '적절한_커뮤니케이션'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Document {id: 'MG_045'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기간시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'life_time_value'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협업crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'e_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'g_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'm_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영_crm_operational_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_crm_analytical_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '협업_crm_collaborative_crm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'roi_based_approach'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'business_based_approach'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'big_picture_and_start_small'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crm_응용_확대'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '환경분석'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '고객분석'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'target_marketing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'crm_전략_방향_설정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'offer_설계'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'channel_설계'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '목적에_따른_설정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '변화에_바로_입력'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_분석/활용_극대화'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '적절한_커뮤니케이션'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_046: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_046'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_047: ERP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_047'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'erp'})
SET     n.name = 'ERP',
    n.name_kr = 'ERP',
    n.domain = 'MG',
    n.aliases = ['ERP'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '기간시스템'})
SET     n.name = '기간시스템',
    n.name_kr = '기간시스템',
    n.domain = 'MG';

MERGE (n:Concept {id: '영업'})
SET     n.name = '영업',
    n.name_kr = '영업',
    n.domain = 'MG';

MERGE (n:Concept {id: '생산'})
SET     n.name = '생산',
    n.name_kr = '생산',
    n.domain = 'MG';

MERGE (n:Concept {id: '자재/구매'})
SET     n.name = '자재/구매',
    n.name_kr = '자재/구매',
    n.domain = 'MG';

MERGE (n:Concept {id: '무역'})
SET     n.name = '무역',
    n.name_kr = '무역',
    n.domain = 'MG';

MERGE (n:Concept {id: '원가'})
SET     n.name = '원가',
    n.name_kr = '원가',
    n.domain = 'MG';

MERGE (n:Concept {id: '회계'})
SET     n.name = '회계',
    n.name_kr = '회계',
    n.domain = 'MG';

MERGE (n:Concept {id: '인사'})
SET     n.name = '인사',
    n.name_kr = '인사',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bing_bang'})
SET     n.name = 'Bing Bang',
    n.name_kr = 'Bing Bang',
    n.domain = 'MG',
    n.aliases = ['Bing Bang'];

MERGE (n:Concept {id: '기능/단계별'})
SET     n.name = '기능/단계별',
    n.name_kr = '기능/단계별',
    n.domain = 'MG';

MERGE (n:Concept {id: '사업장별'})
SET     n.name = '사업장별',
    n.name_kr = '사업장별',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bpr'})
SET     n.name = 'BPR',
    n.name_kr = 'BPR',
    n.domain = 'MG',
    n.aliases = ['BPR'];

MERGE (n:Concept {id: 'xrp'})
SET     n.name = 'XRP',
    n.name_kr = 'XRP',
    n.domain = 'MG',
    n.aliases = ['XRP'];

MERGE (n:Concept {id: 'erp_ii'})
SET     n.name = 'ERP II',
    n.name_kr = 'ERP II',
    n.domain = 'MG',
    n.aliases = ['ERP II'];

MERGE (n:Concept {id: '영업관리'})
SET     n.name = '영업관리',
    n.name_kr = '영업관리',
    n.domain = 'MG',
    n.definition = '판매관리와 재고관리가 연계된 시스템으로 수주, 매출 에서 수금관리까지 연동되는 체제로 구축되며, 제품의 흐름 정보를 종합적으로 관리 파악할 수 있는 시스템 으로 구축';

MERGE (n:Concept {id: '생산관리'})
SET     n.name = '생산관리',
    n.name_kr = '생산관리',
    n.domain = 'MG',
    n.definition = '생산계획, 작업계획, 원/부자재 수급계획 업무가 유기 적으로 연결된 형태 구축';

MERGE (n:Concept {id: '자재/구매관리'})
SET     n.name = '자재/구매관리',
    n.name_kr = '자재/구매관리',
    n.domain = 'MG',
    n.definition = '거래선 평가정보 및 자재단가 정보, 현 재고정보 및 적정 재고량을 참조하여 최적의 자재 구매계획 수립';

MERGE (n:Concept {id: '무역관리'})
SET     n.name = '무역관리',
    n.name_kr = '무역관리',
    n.domain = 'MG',
    n.definition = '해외 수주로부터 Nego까지 수출 업무를 연계 관리하고 영업관리로 자동 반영되어 고객별 생산 진척 및 Documents 진행 사항을 파악할 수 있도록 지원';

MERGE (n:Concept {id: '원가관리'})
SET     n.name = '원가관리',
    n.name_kr = '원가관리',
    n.domain = 'MG',
    n.definition = '개별원가와 종합원가를 다양하게 분석하여 의사결정 지표 제공';

MERGE (n:Concept {id: '회계관리'})
SET     n.name = '회계관리',
    n.name_kr = '회계관리',
    n.domain = 'MG',
    n.definition = '예산편성 및 집행실적이 관리되며, 회계관리와 연동 시킨 종합 회계시스템 구축';

MERGE (n:Concept {id: '인사/급여관리'})
SET     n.name = '인사/급여관리',
    n.name_kr = '인사/급여관리',
    n.domain = 'MG',
    n.definition = '근태관리, 급여, 연말정산관리, 복리후생관리를 통한 급여체제 제공';

MERGE (n:Concept {id: 'sem'})
SET     n.name = 'SEM',
    n.name_kr = 'SEM',
    n.domain = 'MG',
    n.aliases = ['SEM'];

MERGE (n:Concept {id: '최종사용자'})
SET     n.name = '최종사용자',
    n.name_kr = '최종사용자',
    n.domain = 'MG',
    n.definition = '환경 변화에 따른 시스템 적용 - 신규 업무 프로세스 이해(사용자 매뉴얼 배포) - 도입 목적 이해와 업무 협조';

MERGE (n:Concept {id: '개발자'})
SET     n.name = '개발자',
    n.name_kr = '개발자',
    n.domain = 'MG',
    n.definition = '현행 업무 분석 및 개발전략 수립 - 개발 업무 범위의 확정 - 사용자 요구사항 반영';

MERGE (n:Concept {id: '운영자'})
SET     n.name = '운영자',
    n.name_kr = '운영자',
    n.domain = 'MG',
    n.definition = '현업담당 협조 및 전사적 인식 변화 - 안정적인 시스템 운영 및 관리 방안 확립';

// --- 관계 ---

MERGE (a:Concept {id: '기간시스템'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '기간시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '영업'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '생산'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '자재/구매'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '무역'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '원가'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '회계'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '인사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'bing_bang'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '기능/단계별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '사업장별'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'bpr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'xrp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'erp_ii'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '영업관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '생산관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '자재/구매관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '무역관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '원가관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '회계관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '인사/급여관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'sem'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'sem'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '최종사용자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '개발자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: '운영자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'xrp'})
MERGE (b:Concept {id: 'erp'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'xrp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'erp_ii'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Concept {id: 'erp_ii'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Document {id: 'MG_047'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기간시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자재/구매'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무역'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회계'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인사'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bing_bang'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기능/단계별'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사업장별'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bpr'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'xrp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erp_ii'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영업관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '생산관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자재/구매관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '무역관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '원가관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회계관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '인사/급여관리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sem'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '최종사용자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개발자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운영자'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_048: BI 2.0, 3.0
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_048'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'bi_2.0,_3.0'})
SET     n.name = 'BI 2.0, 3.0',
    n.name_kr = 'BI 2.0, 3.0',
    n.domain = 'MG';

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '의사판단시스템'})
SET     n.name = '의사판단시스템',
    n.name_kr = '의사판단시스템',
    n.domain = 'MG';

MERGE (n:Concept {id: '운전분정'})
SET     n.name = '운전분정',
    n.name_kr = '운전분정',
    n.domain = 'MG';

MERGE (n:Concept {id: '수분의표'})
SET     n.name = '수분의표',
    n.name_kr = '수분의표',
    n.domain = 'MG';

MERGE (n:Concept {id: '내적_측면'})
SET     n.name = '내적 측면',
    n.name_kr = '내적 측면',
    n.domain = 'MG',
    n.definition = '비용절감';

MERGE (n:Concept {id: '수익증대'})
SET     n.name = '수익증대',
    n.name_kr = '수익증대',
    n.domain = 'MG',
    n.definition = '정보기반 고객서비스와 차별화된 경쟁력확보로 수익 증대';

MERGE (n:Concept {id: '외적_측면'})
SET     n.name = '외적 측면',
    n.name_kr = '외적 측면',
    n.domain = 'MG',
    n.definition = '고객만족도향상';

MERGE (n:Concept {id: '기술'})
SET     n.name = '기술',
    n.name_kr = '기술',
    n.domain = 'MG';

MERGE (n:Concept {id: '내_용'})
SET     n.name = '내 용',
    n.name_kr = '내 용',
    n.domain = 'MG';

MERGE (n:Concept {id: 'bi_1_0'})
SET     n.name = 'BI 1.0',
    n.name_kr = 'BI 1.0',
    n.domain = 'MG',
    n.aliases = ['BI 1.0'];

MERGE (n:Concept {id: 'bi_2_0'})
SET     n.name = 'BI 2.0',
    n.name_kr = 'BI 2.0',
    n.domain = 'MG',
    n.aliases = ['BI 2.0'];

MERGE (n:Concept {id: 'bi_3_0'})
SET     n.name = 'BI 3.0',
    n.name_kr = 'BI 3.0',
    n.domain = 'MG',
    n.aliases = ['BI 3.0'];

// --- 관계 ---

MERGE (a:Concept {id: '의사판단시스템'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '의사판단시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '운전분정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '수분의표'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '내적_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '수익증대'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '외적_측면'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: '내_용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_1_0'})
MERGE (b:Concept {id: 'bi_2_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_1_0'})
MERGE (b:Concept {id: 'bi_3_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: 'bi_1_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2_0'})
MERGE (b:Concept {id: 'bi_3_0'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: 'bi_2_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Concept {id: 'bi_3_0'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Document {id: 'MG_048'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'bi_2.0,_3.0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사판단시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '운전분정'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수분의표'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내적_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수익증대'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '외적_측면'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '내_용'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bi_1_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bi_2_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bi_3_0'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_049: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_049'})
SET doc.domain = 'MG';

// ──────────────────────────────────────
// MG_050: HOLAP
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_050'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'holap'})
SET     n.name = 'HOLAP',
    n.name_kr = 'HOLAP',
    n.domain = 'MG',
    n.aliases = ['HOLAP'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '의사판단시스템'})
SET     n.name = '의사판단시스템',
    n.name_kr = '의사판단시스템',
    n.domain = 'MG';

MERGE (n:Concept {id: 'rolap'})
SET     n.name = 'ROLAP',
    n.name_kr = 'ROLAP',
    n.domain = 'MG',
    n.aliases = ['ROLAP'];

MERGE (n:Concept {id: 'molap'})
SET     n.name = 'MOLAP',
    n.name_kr = 'MOLAP',
    n.domain = 'MG',
    n.aliases = ['MOLAP'];

MERGE (n:Concept {id: '다차원_데이터'})
SET     n.name = '다차원 데이터',
    n.name_kr = '다차원 데이터',
    n.domain = 'MG';

MERGE (n:Concept {id: '저장_및_처리_프로세싱'})
SET     n.name = '저장 및 처리 프로세싱',
    n.name_kr = '저장 및 처리 프로세싱',
    n.domain = 'MG';

MERGE (n:Concept {id: '데이터_큐브'})
SET     n.name = '데이터 큐브',
    n.name_kr = '데이터 큐브',
    n.domain = 'MG';

// --- 관계 ---

MERGE (a:Concept {id: '의사판단시스템'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: '의사판단시스템'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: 'rolap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: 'molap'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: '다차원_데이터'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: '저장_및_처리_프로세싱'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Concept {id: '데이터_큐브'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Document {id: 'MG_050'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'holap'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의사판단시스템'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'rolap'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'molap'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '다차원_데이터'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '저장_및_처리_프로세싱'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_큐브'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_051: RTE
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_051'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'rte'})
SET     n.name = 'RTE',
    n.name_kr = 'RTE',
    n.domain = 'MG',
    n.aliases = ['RTE'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '실시간_기업'})
SET     n.name = '실시간 기업',
    n.name_kr = '실시간 기업',
    n.domain = 'MG';

MERGE (n:Concept {id: 'event'})
SET     n.name = 'event',
    n.name_kr = '실시간 이벤트',
    n.domain = 'MG',
    n.aliases = ['event', '실시간 이벤트'];

MERGE (n:Concept {id: 'awareness'})
SET     n.name = 'awareness',
    n.name_kr = '인지',
    n.domain = 'MG',
    n.aliases = ['awareness', '인지'];

MERGE (n:Concept {id: 'decision'})
SET     n.name = 'decision',
    n.name_kr = '의사결정',
    n.domain = 'MG',
    n.aliases = ['decision', '의사결정'];

MERGE (n:Concept {id: 'action'})
SET     n.name = 'action',
    n.name_kr = '집행',
    n.domain = 'MG',
    n.aliases = ['action', '집행'];

MERGE (n:Concept {id: 'response'})
SET     n.name = 'response',
    n.name_kr = '대응',
    n.domain = 'MG',
    n.aliases = ['response', '대응'];

MERGE (n:Concept {id: 's_w_system'})
SET     n.name = 'S/W System',
    n.name_kr = 'S/W System',
    n.domain = 'MG',
    n.definition = 'CRM',
    n.aliases = ['S/W System'];

MERGE (n:Concept {id: 'erp'})
SET     n.name = 'ERP',
    n.name_kr = 'ERP',
    n.domain = 'MG',
    n.definition = 'Enterprise Resource Planning -구매, 판매, 생산, 설비, 인사 등 기업의 각종 경영자원과 정보자원을 하나의 체계로 통합, 재구축함으로써 생산성과 기업의 경쟁력을 극대화시키는 전사적 자원관리',
    n.aliases = ['ERP'];

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'MG',
    n.definition = 'Service Oriented architecture -기존어플리케이션의 서비스를 조합함으로써, 새로운 어플리케이션을 구현할 수 있도록 한 통합기술 및 아키텍처 모델',
    n.aliases = ['SOA'];

MERGE (n:Metric {id: 'process'})
SET     n.name = 'Process',
    n.name_kr = 'Process',
    n.domain = 'MG',
    n.definition = 'BPR',
    n.aliases = ['Process'];

MERGE (n:Metric {id: 'bpm'})
SET     n.name = 'BPM',
    n.name_kr = 'BPM',
    n.domain = 'MG',
    n.definition = 'Business Process Management -업무프로세스 자동화, 통합, 최적화를 통해 업무프로세스를 합리화,효율화하고 이를 통해 기업의 경쟁력 강화',
    n.aliases = ['BPM'];

MERGE (n:Concept {id: 'bam'})
SET     n.name = 'BAM',
    n.name_kr = 'BAM',
    n.domain = 'MG',
    n.definition = 'Business Activity Monitoring -업무프로세스 진행 및 결과 모니터링을 통한 실시간 가시화 및 경고(alerts) 제공',
    n.aliases = ['BAM'];

MERGE (n:Concept {id: 'technology'})
SET     n.name = 'Technology',
    n.name_kr = 'Technology',
    n.domain = 'MG',
    n.definition = 'RFID',
    n.aliases = ['Technology'];

MERGE (n:Concept {id: 'drs'})
SET     n.name = 'DRS',
    n.name_kr = 'DRS',
    n.domain = 'MG',
    n.definition = 'Disaster Recovery System(Service) -정보시스템에 대한 비상대비체계 유지와 각 업무 조직 별 비상사태에 대비하여 복구계획수립을 통한 업무연속성을 유지할 수 있는 체제',
    n.aliases = ['DRS'];

MERGE (n:Concept {id: 'utility_computing'})
SET     n.name = 'Utility Computing',
    n.name_kr = 'Utility Computing',
    n.domain = 'MG',
    n.definition = 'Server, Storage, N/W, S/W 등의 IT자원을 하나의 서비스개념으로 보고, 구입 또는 자체 개발을 하지 않고, 서비스 공급자와의 계약을 통하여 실제 사용한 양 만큼의 요금을 지불하는 컴퓨팅 기술',
    n.aliases = ['Utility Computing'];

// --- 관계 ---

MERGE (a:Concept {id: '실시간_기업'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: '실시간_기업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'event'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'awareness'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'decision'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'action'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'response'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 's_w_system'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'erp'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Metric {id: 'process'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Metric {id: 'bpm'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'bam'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'technology'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'drs'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Concept {id: 'utility_computing'})
MERGE (a)-[:DEPENDS_ON]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Document {id: 'MG_051'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'rte'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_기업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'awareness'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'decision'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'action'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'response'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 's_w_system'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'erp'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'process'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'bpm'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bam'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'technology'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'drs'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'utility_computing'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_052: Cyclone Model
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_052'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'cyclone_model'})
SET     n.name = 'Cyclone Model',
    n.name_kr = 'Cyclone Model',
    n.domain = 'MG',
    n.aliases = ['Cyclone Model'];

MERGE (n:Concept {id: '실시간_기업'})
SET     n.name = '실시간 기업',
    n.name_kr = '실시간 기업',
    n.domain = 'MG';

MERGE (n:Concept {id: 'lead'})
SET     n.name = 'Lead',
    n.name_kr = 'Lead',
    n.domain = 'MG',
    n.aliases = ['Lead'];

MERGE (n:Concept {id: 'manage'})
SET     n.name = 'Manage',
    n.name_kr = 'Manage',
    n.domain = 'MG',
    n.aliases = ['Manage'];

MERGE (n:Concept {id: 'operate'})
SET     n.name = 'Operate',
    n.name_kr = 'Operate',
    n.domain = 'MG',
    n.aliases = ['Operate'];

// --- 관계 ---

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Concept {id: '실시간_기업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Concept {id: 'lead'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Concept {id: 'manage'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Concept {id: 'operate'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Document {id: 'MG_052'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyclone_model'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_기업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'lead'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'manage'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'operate'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// MG_053: EDA
// ──────────────────────────────────────

MERGE (doc:Document {id: 'MG_053'})
SET doc.domain = 'MG';

// --- 노드 ---

MERGE (n:Concept {id: 'eda'})
SET     n.name = 'EDA',
    n.name_kr = 'EDA',
    n.domain = 'MG',
    n.aliases = ['EDA'];

MERGE (n:Concept {id: 'it_경영전략'})
SET     n.name = 'IT 경영전략',
    n.name_kr = 'IT 경영전략',
    n.domain = 'MG';

MERGE (n:Concept {id: '실시간_기업'})
SET     n.name = '실시간 기업',
    n.name_kr = '실시간 기업',
    n.domain = 'MG';

MERGE (n:Concept {id: '분산된_시스템간_의존성_배제'})
SET     n.name = '분산된 시스템간 의존성 배제',
    n.name_kr = '분산된 시스템간 의존성 배제',
    n.domain = 'MG',
    n.definition = '약속된 Message를 통해 통신하기 때문에 다른 시스템의 정보를 알 필요가 없으므로 시스템 간 의존성이 배제';

MERGE (n:Concept {id: '확장성'})
SET     n.name = '확장성',
    n.name_kr = '확장성',
    n.domain = 'MG',
    n.definition = '확장성, 탄력성 향상';

MERGE (n:Concept {id: 'transaction_단위_분리'})
SET     n.name = 'Transaction 단위 분리',
    n.name_kr = 'Transaction 단위 분리',
    n.domain = 'MG',
    n.definition = '장애나 이슈발생시 Retry/Rollback에 대한 고려가 필요';

MERGE (n:Concept {id: 'flow_파악_어려움'})
SET     n.name = 'Flow 파악 어려움',
    n.name_kr = 'Flow 파악 어려움',
    n.domain = 'MG',
    n.definition = '시스템 Flow파악이 어려움, 디버깅이 어려움';

MERGE (n:Concept {id: 'event_generator'})
SET     n.name = 'Event Generator',
    n.name_kr = 'Event Generator',
    n.domain = 'MG',
    n.definition = 'Publisher - Producer - Creator',
    n.aliases = ['Event Generator'];

MERGE (n:Concept {id: 'event_channel'})
SET     n.name = 'Event Channel',
    n.name_kr = 'Event Channel',
    n.domain = 'MG',
    n.definition = 'Event Bus',
    n.aliases = ['Event Channel'];

MERGE (n:Metric {id: 'event_processing_engine'})
SET     n.name = 'Event Processing Engine',
    n.name_kr = 'Event Processing Engine',
    n.domain = 'MG',
    n.definition = 'Event Processor - Event Consumer',
    n.aliases = ['Event Processing Engine'];

MERGE (n:Concept {id: 'mediator_topology'})
SET     n.name = '중재자 토폴로지',
    n.name_kr = '중재자 토폴로지',
    n.domain = 'MG';

MERGE (n:Concept {id: 'broker_topology'})
SET     n.name = '브로커 토폴로지',
    n.name_kr = '브로커 토폴로지',
    n.domain = 'MG';

MERGE (n:Concept {id: 'soa'})
SET     n.name = 'SOA',
    n.name_kr = 'SOA',
    n.domain = 'MG',
    n.aliases = ['SOA'];

// --- 관계 ---

MERGE (a:Concept {id: '실시간_기업'})
MERGE (b:Concept {id: 'it_경영전략'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: '실시간_기업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: '분산된_시스템간_의존성_배제'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: '확장성'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'transaction_단위_분리'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'flow_파악_어려움'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'event_generator'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'event_channel'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Metric {id: 'event_processing_engine'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'mediator_topology'})
MERGE (b:Concept {id: 'broker_topology'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'mediator_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'broker_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'mediator_topology'})
MERGE (b:Concept {id: 'broker_topology'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'mediator_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'broker_topology'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Concept {id: 'soa'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Document {id: 'MG_053'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'eda'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'it_경영전략'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실시간_기업'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분산된_시스템간_의존성_배제'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '확장성'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'transaction_단위_분리'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'flow_파악_어려움'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_generator'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'event_channel'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Metric {id: 'event_processing_engine'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'mediator_topology'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'broker_topology'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'soa'})
MERGE (b:Domain {id: 'MG'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// MG 도메인 자동 생성 완료
// 노드: 312개
// 관계: 657개
// ================================================================