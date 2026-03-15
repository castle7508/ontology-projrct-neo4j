// ================================================================
// Neo4j 온톨로지 프로젝트 — 스키마 정의 (v2 정량 분석 반영)
// ================================================================
// 근거: 기술사 기출문제 22,518줄 전수 분석 (Question-Driven Modeling)
//       + 정량 분석 결과 (9,291문제, 150키워드 빈도, 교차출제 패턴)
// 생성일: 2026-03-14
// Neo4j Browser(http://localhost:7474)에서 섹션별 실행
// ================================================================

// ────────────────────────────────────────────
// PART 1: 제약조건 (Constraints)
// ────────────────────────────────────────────
// 각 노드 타입의 id 고유성 보장 + 인덱스 자동 생성

CREATE CONSTRAINT concept_id IF NOT EXISTS
FOR (n:Concept) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT technology_id IF NOT EXISTS
FOR (n:Technology) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT method_id IF NOT EXISTS
FOR (n:Method) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT standard_id IF NOT EXISTS
FOR (n:Standard) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT law_id IF NOT EXISTS
FOR (n:Law) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT threat_id IF NOT EXISTS
FOR (n:Threat) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT metric_id IF NOT EXISTS
FOR (n:Metric) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT domain_id IF NOT EXISTS
FOR (n:Domain) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT question_id IF NOT EXISTS
FOR (n:Question) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT document_id IF NOT EXISTS
FOR (n:Document) REQUIRE n.id IS UNIQUE;

CREATE CONSTRAINT exam_session_id IF NOT EXISTS
FOR (n:ExamSession) REQUIRE n.id IS UNIQUE;

// ────────────────────────────────────────────
// PART 2: 추가 인덱스 (검색 성능)
// ────────────────────────────────────────────

// 이름 검색용
CREATE INDEX concept_name IF NOT EXISTS
FOR (n:Concept) ON (n.name);

CREATE INDEX concept_name_kr IF NOT EXISTS
FOR (n:Concept) ON (n.name_kr);

CREATE INDEX technology_name IF NOT EXISTS
FOR (n:Technology) ON (n.name);

CREATE INDEX method_name IF NOT EXISTS
FOR (n:Method) ON (n.name);

CREATE INDEX threat_name IF NOT EXISTS
FOR (n:Threat) ON (n.name);

// 도메인 필터링용
CREATE INDEX concept_domain IF NOT EXISTS
FOR (n:Concept) ON (n.domain);

CREATE INDEX document_domain IF NOT EXISTS
FOR (n:Document) ON (n.domain);

// 문제 검색용
CREATE INDEX question_session IF NOT EXISTS
FOR (n:Question) ON (n.session);

CREATE INDEX question_type IF NOT EXISTS
FOR (n:Question) ON (n.type);

CREATE INDEX question_year IF NOT EXISTS
FOR (n:Question) ON (n.year);

CREATE INDEX question_source IF NOT EXISTS
FOR (n:Question) ON (n.source);

// 회차 검색용
CREATE INDEX exam_session_year IF NOT EXISTS
FOR (n:ExamSession) ON (n.year);

// ────────────────────────────────────────────
// PART 3: 전문 검색 인덱스 (선택)
// ────────────────────────────────────────────
// 키워드 검색, 유사 개념 탐색에 활용

CREATE FULLTEXT INDEX concept_fulltext IF NOT EXISTS
FOR (n:Concept) ON EACH [n.name, n.name_kr, n.definition];

CREATE FULLTEXT INDEX question_fulltext IF NOT EXISTS
FOR (n:Question) ON EACH [n.text];

// ────────────────────────────────────────────
// PART 4: 13개 도메인 노드 생성 (정량 분석 반영)
// ────────────────────────────────────────────
// exam_weight: 정량 분석 기반 출제 비중 (소수점)

MERGE (d:Domain {id: 'PM'})
SET d.name = '프로젝트관리', d.code = '01.PM', d.doc_count = 96, d.exam_weight = 0.059;

MERGE (d:Domain {id: 'MG'})
SET d.name = 'IT경영/관리', d.code = '02.MG', d.doc_count = 202, d.exam_weight = 0.059;

MERGE (d:Domain {id: 'SW'})
SET d.name = '소프트웨어공학', d.code = '03.SW', d.doc_count = 289, d.exam_weight = 0.192;

MERGE (d:Domain {id: 'SV'})
SET d.name = '서비스/웹/클라우드', d.code = '04.SV', d.doc_count = 475, d.exam_weight = 0.094;

MERGE (d:Domain {id: 'ST'})
SET d.name = '통계학', d.code = '05.ST', d.doc_count = 47, d.exam_weight = 0.010;

MERGE (d:Domain {id: 'AI'})
SET d.name = '인공지능', d.code = '06.AI', d.doc_count = 134, d.exam_weight = 0.117;

MERGE (d:Domain {id: 'DS'})
SET d.name = '자료구조', d.code = '07.DS', d.doc_count = 22, d.exam_weight = 0.020;

MERGE (d:Domain {id: 'AL'})
SET d.name = '알고리즘', d.code = '08.AL', d.doc_count = 44, d.exam_weight = 0.020;

MERGE (d:Domain {id: 'SE'})
SET d.name = '보안', d.code = '09.SE', d.doc_count = 373, d.exam_weight = 0.187;

MERGE (d:Domain {id: 'DB'})
SET d.name = '데이터베이스', d.code = '10.DB', d.doc_count = 179, d.exam_weight = 0.094;

MERGE (d:Domain {id: 'NW'})
SET d.name = '네트워크', d.code = '11.NW', d.doc_count = 286, d.exam_weight = 0.105;

MERGE (d:Domain {id: 'CA'})
SET d.name = '컴퓨터구조', d.code = '12.CA', d.doc_count = 178, d.exam_weight = 0.082;

MERGE (d:Domain {id: 'OS'})
SET d.name = '운영체제', d.code = '13.OS', d.doc_count = 67, d.exam_weight = 0.082;

// ────────────────────────────────────────────
// PART 5: 스키마 검증 쿼리
// ────────────────────────────────────────────

// 제약조건 확인
// SHOW CONSTRAINTS;

// 인덱스 확인
// SHOW INDEXES;

// 도메인 노드 확인
// MATCH (d:Domain) RETURN d.id, d.name, d.doc_count ORDER BY d.code;

// ────────────────────────────────────────────
// PART 6: Top 50 우선 적재 Concept 시드 노드
// ────────────────────────────────────────────
// 정량 분석 출제 빈도 Top 50 기반 (exam_frequency = 출현 횟수)
// 실제 문서 적재 시 MERGE로 속성 보강됨

MERGE (c:Concept {id: 'testing'}) SET c.name = 'Testing', c.name_kr = '테스트', c.domain = 'SW', c.exam_frequency = 922, c.importance = 'high';
MERGE (c:Concept {id: 'cloud_computing'}) SET c.name = 'Cloud Computing', c.name_kr = '클라우드', c.domain = 'SV', c.exam_frequency = 734, c.importance = 'high';
MERGE (c:Concept {id: 'artificial_intelligence'}) SET c.name = 'Artificial Intelligence', c.name_kr = '인공지능', c.domain = 'AI', c.exam_frequency = 727, c.importance = 'high';
MERGE (c:Concept {id: 'process'}) SET c.name = 'Process', c.name_kr = '프로세스', c.domain = 'OS', c.exam_frequency = 725, c.importance = 'high';
MERGE (c:Concept {id: 'quality'}) SET c.name = 'Quality', c.name_kr = '품질', c.domain = 'SW', c.exam_frequency = 698, c.importance = 'high';
MERGE (c:Concept {id: 'privacy_protection'}) SET c.name = 'Privacy Protection', c.name_kr = '개인정보보호', c.domain = 'SE', c.exam_frequency = 553, c.importance = 'high';
MERGE (c:Concept {id: 'memory'}) SET c.name = 'Memory', c.name_kr = '메모리', c.domain = 'CA', c.exam_frequency = 516, c.importance = 'high';
MERGE (c:Concept {id: 'authentication'}) SET c.name = 'Authentication', c.name_kr = '인증', c.domain = 'SE', c.exam_frequency = 501, c.importance = 'high';
MERGE (c:Concept {id: 'big_data'}) SET c.name = 'Big Data', c.name_kr = '빅데이터', c.domain = 'DB', c.exam_frequency = 355, c.importance = 'high';
MERGE (c:Concept {id: 'iot'}) SET c.name = 'IoT', c.name_kr = '사물인터넷', c.domain = 'NW', c.exam_frequency = 305, c.importance = 'high';
MERGE (c:Concept {id: 'requirements_engineering'}) SET c.name = 'Requirements Engineering', c.name_kr = '요구공학', c.domain = 'SW', c.exam_frequency = 281, c.importance = 'high';
MERGE (c:Concept {id: 'it_audit'}) SET c.name = 'IT Audit', c.name_kr = '감리', c.domain = 'MG', c.exam_frequency = 271, c.importance = 'high';
MERGE (c:Concept {id: 'cpu'}) SET c.name = 'CPU', c.name_kr = 'CPU', c.domain = 'CA', c.exam_frequency = 225, c.importance = 'high';
MERGE (c:Concept {id: 'vulnerability'}) SET c.name = 'Vulnerability', c.name_kr = '취약점', c.domain = 'SE', c.exam_frequency = 223, c.importance = 'high';
MERGE (c:Concept {id: 'virtualization'}) SET c.name = 'Virtualization', c.name_kr = '가상화', c.domain = 'SV', c.exam_frequency = 221, c.importance = 'high';
MERGE (c:Concept {id: 'encryption'}) SET c.name = 'Encryption', c.name_kr = '암호화', c.domain = 'SE', c.exam_frequency = 212, c.importance = 'high';
MERGE (c:Concept {id: 'project_management'}) SET c.name = 'Project Management', c.name_kr = '프로젝트관리', c.domain = 'PM', c.exam_frequency = 199, c.importance = 'high';
MERGE (c:Concept {id: 'blockchain'}) SET c.name = 'Blockchain', c.name_kr = '블록체인', c.domain = 'SV', c.exam_frequency = 173, c.importance = 'high';
MERGE (c:Concept {id: 'scheduling'}) SET c.name = 'Scheduling', c.name_kr = '스케줄링', c.domain = 'OS', c.exam_frequency = 169, c.importance = 'high';
MERGE (c:Concept {id: 'machine_learning'}) SET c.name = 'Machine Learning', c.name_kr = '머신러닝', c.domain = 'AI', c.exam_frequency = 168, c.importance = 'high';
MERGE (c:Concept {id: 'data_quality'}) SET c.name = 'Data Quality', c.name_kr = '데이터품질', c.domain = 'DB', c.exam_frequency = 164, c.importance = 'high';
MERGE (c:Concept {id: '5g'}) SET c.name = '5G', c.name_kr = '5G', c.domain = 'NW', c.exam_frequency = 161, c.importance = 'high';
MERGE (c:Concept {id: 'agile'}) SET c.name = 'Agile', c.name_kr = '애자일', c.domain = 'SW', c.exam_frequency = 158, c.importance = 'high';
MERGE (c:Concept {id: 'ip'}) SET c.name = 'IP', c.name_kr = 'IP주소', c.domain = 'NW', c.exam_frequency = 141, c.importance = 'high';
MERGE (c:Concept {id: 'transaction'}) SET c.name = 'Transaction', c.name_kr = '트랜잭션', c.domain = 'DB', c.exam_frequency = 136, c.importance = 'high';
MERGE (c:Concept {id: 'cache'}) SET c.name = 'Cache', c.name_kr = '캐시', c.domain = 'CA', c.exam_frequency = 131, c.importance = 'high';
MERGE (c:Concept {id: 'digital_forensics'}) SET c.name = 'Digital Forensics', c.name_kr = '포렌식', c.domain = 'SE', c.exam_frequency = 129, c.importance = 'high';
MERGE (c:Concept {id: 'routing'}) SET c.name = 'Routing', c.name_kr = '라우팅', c.domain = 'NW', c.exam_frequency = 125, c.importance = 'high';
MERGE (c:Concept {id: 'autonomous_driving'}) SET c.name = 'Autonomous Driving', c.name_kr = '자율주행', c.domain = 'AI', c.exam_frequency = 123, c.importance = 'high';
MERGE (c:Concept {id: 'normalization'}) SET c.name = 'Normalization', c.name_kr = '정규화', c.domain = 'DB', c.exam_frequency = 117, c.importance = 'high';
MERGE (c:Concept {id: 'isms'}) SET c.name = 'ISMS', c.name_kr = '정보보호관리체계', c.domain = 'SE', c.exam_frequency = 116, c.importance = 'high';
MERGE (c:Concept {id: 'index'}) SET c.name = 'Index', c.name_kr = '인덱스', c.domain = 'DB', c.exam_frequency = 116, c.importance = 'high';
MERGE (c:Concept {id: 'sla'}) SET c.name = 'SLA', c.name_kr = '서비스수준협약', c.domain = 'MG', c.exam_frequency = 111, c.importance = 'high';
MERGE (c:Concept {id: 'bcp'}) SET c.name = 'BCP', c.name_kr = '업무연속성계획', c.domain = 'MG', c.exam_frequency = 109, c.importance = 'high';
MERGE (c:Concept {id: 'tcp'}) SET c.name = 'TCP', c.name_kr = '전송제어프로토콜', c.domain = 'NW', c.exam_frequency = 108, c.importance = 'high';
MERGE (c:Concept {id: 'sw_architecture'}) SET c.name = 'Software Architecture', c.name_kr = '소프트웨어아키텍처', c.domain = 'SW', c.exam_frequency = 108, c.importance = 'high';
MERGE (c:Concept {id: 'isp'}) SET c.name = 'ISP', c.name_kr = '정보전략계획', c.domain = 'MG', c.exam_frequency = 102, c.importance = 'high';
MERGE (c:Concept {id: 'ransomware'}) SET c.name = 'Ransomware', c.name_kr = '랜섬웨어', c.domain = 'SE', c.exam_frequency = 101, c.importance = 'high';
MERGE (c:Concept {id: 'lte'}) SET c.name = 'LTE', c.name_kr = 'LTE', c.domain = 'NW', c.exam_frequency = 90, c.importance = 'high';
MERGE (c:Concept {id: 'pipeline'}) SET c.name = 'Pipeline', c.name_kr = '파이프라인', c.domain = 'CA', c.exam_frequency = 86, c.importance = 'high';
MERGE (c:Concept {id: 'interrupt'}) SET c.name = 'Interrupt', c.name_kr = '인터럽트', c.domain = 'CA', c.exam_frequency = 84, c.importance = 'high';
MERGE (c:Concept {id: 'docker'}) SET c.name = 'Docker', c.name_kr = '도커', c.domain = 'SV', c.exam_frequency = 81, c.importance = 'high';
MERGE (c:Concept {id: 'wifi'}) SET c.name = 'Wi-Fi', c.name_kr = '와이파이', c.domain = 'NW', c.exam_frequency = 80, c.importance = 'high';
MERGE (c:Concept {id: 'function_point'}) SET c.name = 'Function Point', c.name_kr = '기능점수', c.domain = 'SW', c.exam_frequency = 79, c.importance = 'high';
MERGE (c:Concept {id: 'msa'}) SET c.name = 'Microservice Architecture', c.name_kr = 'MSA', c.domain = 'SW', c.exam_frequency = 77, c.importance = 'high';
MERGE (c:Concept {id: 'digital_twin'}) SET c.name = 'Digital Twin', c.name_kr = '디지털트윈', c.domain = 'SV', c.exam_frequency = 77, c.importance = 'high';
MERGE (c:Concept {id: 'dma'}) SET c.name = 'DMA', c.name_kr = 'DMA', c.domain = 'CA', c.exam_frequency = 76, c.importance = 'high';
MERGE (c:Concept {id: 'generative_ai'}) SET c.name = 'Generative AI', c.name_kr = '생성형AI', c.domain = 'AI', c.exam_frequency = 75, c.importance = 'high';
MERGE (c:Concept {id: 'zero_trust'}) SET c.name = 'Zero Trust', c.name_kr = '제로트러스트', c.domain = 'SE', c.exam_frequency = 73, c.importance = 'high';
MERGE (c:Concept {id: 'paging'}) SET c.name = 'Paging', c.name_kr = '페이징', c.domain = 'OS', c.exam_frequency = 73, c.importance = 'high';

// Top 50 → Domain 연결
MATCH (c:Concept), (d:Domain) WHERE c.domain = d.id
MERGE (c)-[:BELONGS_TO]->(d);

// ================================================================
// 스키마 생성 완료 (v2 정량 반영)
// - 제약조건 11개
// - 인덱스 12개 + 전문검색 2개
// - 도메인 13개 (exam_weight 포함)
// - Top 50 Concept 시드 노드 (exam_frequency 포함)
// - Top 50 → Domain BELONGS_TO 관계
// 다음 단계: 샘플 문서 적재 (cypher/01_sample_*.cypher)
// ================================================================
