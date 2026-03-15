// ================================================================
// SE 도메인 (SE_351 ~ SE_373) — 자동 생성
// ================================================================

// ──────────────────────────────────────
// SE_278.6: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.6'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_278.7: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_278.7'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_279: 신용정보법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_279'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '신용정보법'})
SET     n.name = '신용정보법',
    n.name_kr = '신용정보법',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '데이터_3법'})
SET     n.name = '데이터 3법',
    n.name_kr = '데이터 3법',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '신용정보법'})
MERGE (b:Document {id: 'SE_279'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '신용정보법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_280: 정보통신망법 (정보통신망 이용촉진 및 정보보호 등에 관한 법률)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_280'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Law {id: '정보통신망법'})
SET     n.name = '정보통신망법 (정보통신망 이용촉진 및 정보보호 등에 관한 법률)',
    n.name_kr = '정보통신망법 (정보통신망 이용촉진 및 정보보호 등에 관한 법률)',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안관련_법령'})
SET     n.name = '보안관련 법령',
    n.name_kr = '보안관련 법령',
    n.domain = 'SE';

MERGE (n:Concept {id: '개인정보의_보호'})
SET     n.name = '개인정보의 보호',
    n.name_kr = '개인정보의 보호',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보통신망의_안전성_확보_등'})
SET     n.name = '정보통신망의 안전성 확보 등',
    n.name_kr = '정보통신망의 안전성 확보 등',
    n.domain = 'SE';

MERGE (n:Concept {id: '구분명'})
SET     n.name = '구분명',
    n.name_kr = '구분명',
    n.domain = 'SE';

MERGE (n:Concept {id: '주요내용'})
SET     n.name = '주요내용',
    n.name_kr = '주요내용',
    n.domain = 'SE';

MERGE (n:Concept {id: '제1절_개인정보의_수집,_이용_및_제공_등'})
SET     n.name = '제1절 개인정보의 수집, 이용 및 제공 등',
    n.name_kr = '제1절 개인정보의 수집, 이용 및 제공 등',
    n.domain = 'SE',
    n.definition = '개인정보 수집 이용 동의';

MERGE (n:Concept {id: '접근_권한에_대한_동의'})
SET     n.name = '접근 권한에 대한 동의',
    n.name_kr = '접근 권한에 대한 동의',
    n.domain = 'SE',
    n.definition = '정보통신서비스 제공자가 이동통신단말장치 내 정보 접근 권한이 필요한 경우 이용자의 동의를 받아야 함. (2016.03월 신설)';

MERGE (n:Concept {id: '개인정보_수집_제한_등'})
SET     n.name = '개인정보 수집 제한 등',
    n.name_kr = '개인정보 수집 제한 등',
    n.domain = 'SE',
    n.definition = '민감정보 수집 제한';

MERGE (n:Concept {id: '주민등록번호_사용의_제한'})
SET     n.name = '주민등록번호 사용의 제한',
    n.name_kr = '주민등록번호 사용의 제한',
    n.domain = 'SE',
    n.definition = '본인확인기관 등 이외 주민번호 수집 및 이용 불가';

MERGE (n:Concept {id: '개인정보_이용_제한'})
SET     n.name = '개인정보 이용 제한',
    n.name_kr = '개인정보 이용 제한',
    n.domain = 'SE',
    n.definition = '수집한 개인 정보 동의 목적이외 사용 금지';

MERGE (n:Concept {id: '개인정보_제공_동의'})
SET     n.name = '개인정보 제공 동의',
    n.name_kr = '개인정보 제공 동의',
    n.domain = 'SE',
    n.definition = '개인정보의 제3자 제공 관련 당사자의 동의 필요';

MERGE (n:Concept {id: '개인정보_처리_위탁'})
SET     n.name = '개인정보 처리 위탁',
    n.name_kr = '개인정보 처리 위탁',
    n.domain = 'SE',
    n.definition = '개인정보 처리 위탁의 경우 당사자 동의 필요 (2016.03월 개정)';

MERGE (n:Concept {id: '제2절_개인정보의_관리_및_파기_등'})
SET     n.name = '제2절 개인정보의 관리 및 파기 등',
    n.name_kr = '제2절 개인정보의 관리 및 파기 등',
    n.domain = 'SE',
    n.definition = '개인정보 관리책임자, 보호책임자의 지정';

MERGE (n:Concept {id: '개인정보_취급,_처리방침의_공개'})
SET     n.name = '개인정보 취급, 처리방침의 공개',
    n.name_kr = '개인정보 취급, 처리방침의 공개',
    n.domain = 'SE',
    n.definition = '이용자가 언제든지 취급 및 처리 방침 확인할 수 있도록 공개';

MERGE (n:Concept {id: '개인정보_누출,_유출_등의_통지,_신고'})
SET     n.name = '개인정보 누출, 유출 등의 통지, 신고',
    n.name_kr = '개인정보 누출, 유출 등의 통지, 신고',
    n.domain = 'SE',
    n.definition = '24시간 이내 개인정보 유출 사실 통지';

MERGE (n:Concept {id: '개인정보의_보호조치'})
SET     n.name = '개인정보의 보호조치',
    n.name_kr = '개인정보의 보호조치',
    n.domain = 'SE',
    n.definition = '개인정보의 기술적, 관리적 보호조치 기준 준수';

MERGE (n:Concept {id: '개인정보의_파기'})
SET     n.name = '개인정보의 파기',
    n.name_kr = '개인정보의 파기',
    n.domain = 'SE',
    n.definition = '개인정보의 복구, 재생이 불가하도록 파기';

MERGE (n:Concept {id: '제3절_이용자의_권리'})
SET     n.name = '제3절 이용자의 권리',
    n.name_kr = '제3절 이용자의 권리',
    n.domain = 'SE',
    n.definition = '개인정보 이용내역의 통지';

MERGE (n:Concept {id: '손해배상'})
SET     n.name = '손해배상',
    n.name_kr = '손해배상',
    n.domain = 'SE',
    n.definition = '정보통신 서비스 제공자들을 고의 또는 과실이 없음을 입증하지 아니하면 책임을 면할 수 없음';

MERGE (n:Concept {id: '법적_손해배상의_청구'})
SET     n.name = '법적 손해배상의 청구',
    n.name_kr = '법적 손해배상의 청구',
    n.domain = 'SE',
    n.definition = '300만원 이하의 범위에서 배상 청구 가능';

MERGE (n:Concept {id: '제5장_정보통신망에서의_이용자_보호'})
SET     n.name = '제5장 정보통신망에서의 이용자 보호',
    n.name_kr = '제5장 정보통신망에서의 이용자 보호',
    n.domain = 'SE',
    n.definition = '청소년 보호 관련';

MERGE (n:Concept {id: '정보의_삭제_요청_등'})
SET     n.name = '정보의 삭제 요청 등',
    n.name_kr = '정보의 삭제 요청 등',
    n.domain = 'SE',
    n.definition = '사생활 침해, 명예훼손 등의 침해사실 소명 및 삭제 요청 내용';

MERGE (n:Concept {id: '불법정보의_유통_금지'})
SET     n.name = '불법정보의 유통 금지',
    n.name_kr = '불법정보의 유통 금지',
    n.domain = 'SE',
    n.definition = '음란, 비방, 개인정보의 거래 등';

MERGE (n:Concept {id: '제6장_정보통신망의_안전성_확보'})
SET     n.name = '제6장 정보통신망의 안전성 확보',
    n.name_kr = '제6장 정보통신망의 안전성 확보',
    n.domain = 'SE',
    n.definition = '정보통신망의 안전성 확보';

MERGE (n:Concept {id: '정보보호_최고책임자의_지정_등'})
SET     n.name = '정보보호 최고책임자의 지정 등',
    n.name_kr = '정보보호 최고책임자의 지정 등',
    n.domain = 'SE',
    n.definition = '정보보호 시스템 보안 및 정보의 안전한 관리 위한 임원급 정보보호 최고책임자 지정';

MERGE (n:Concept {id: '집적된_정보통신_시설의_보호'})
SET     n.name = '집적된 정보통신 시설의 보호',
    n.name_kr = '집적된 정보통신 시설의 보호',
    n.domain = 'SE',
    n.definition = '정보통신시설의 안정적 운영 위한 보호조치';

MERGE (n:Standard {id: '정보보호_관리체계의_인증'})
SET     n.name = '정보보호 관리체계의 인증',
    n.name_kr = '정보보호 관리체계의 인증',
    n.domain = 'SE',
    n.definition = '기술적, 관리적, 물리적 보호조치를 포함한 종합적 관리체계 인증 -> ISMS';

MERGE (n:Standard {id: '개정정보보호_관리체계의_인증'})
SET     n.name = '개정정보보호 관리체계의 인증',
    n.name_kr = '개정정보보호 관리체계의 인증',
    n.domain = 'SE',
    n.definition = '개인정보보호 활동을 체계적이고 지속적으로 수행하기 위해 필요한 관리적, 기술적, 물리적 보호조치를 포함한 종합적 관리 체계 인증 -> PIMS';

MERGE (n:Standard {id: '정보보호_관리등급_부여'})
SET     n.name = '정보보호 관리등급 부여',
    n.name_kr = '정보보호 관리등급 부여',
    n.domain = 'SE',
    n.definition = '미래창조과학부장관으로부터의 정보보호 관리등급 부여 ISMS 등급제';

MERGE (n:Concept {id: '정보통신망_침해행위의_금지'})
SET     n.name = '정보통신망 침해행위의 금지',
    n.name_kr = '정보통신망 침해행위의 금지',
    n.domain = 'SE',
    n.definition = '허용된 접근 권한을 넘어 정보통신망 침입 금지';

MERGE (n:Concept {id: '침해사고의_대응_등'})
SET     n.name = '침해사고의 대응 등',
    n.name_kr = '침해사고의 대응 등',
    n.domain = 'SE',
    n.definition = '침해사고의 적절한 대응';

MERGE (n:Concept {id: '영리목적의_광고성_정보_전송_제한'})
SET     n.name = '영리목적의 광고성 정보 전송 제한',
    n.name_kr = '영리목적의 광고성 정보 전송 제한',
    n.domain = 'SE',
    n.definition = '영리목적의 광고 전달 시 수신자의 명시적 동의 필요';

MERGE (n:Concept {id: '영리목적의_광고성_정보_전송의_위탁_등'})
SET     n.name = '영리목적의 광고성 정보 전송의 위탁 등',
    n.name_kr = '영리목적의 광고성 정보 전송의 위탁 등',
    n.domain = 'SE',
    n.definition = '영리목적의 광고성 정보 전송 타인에게 위탁 시 위탁자의 관리 감독 의무';

MERGE (n:Concept {id: '접근_통제'})
SET     n.name = '접근 통제',
    n.name_kr = '접근 통제',
    n.domain = 'SE',
    n.definition = '개인 정보 취급자에 대한 공인 인증서 등 안전한 인증 수단 사용 의무화 - 접속 권한을 IP 주소 등으로 제한 의무화 - 접속 기록에 대한 분석으로 개인 정보 유출 탐지 의무화 - 개인 정보를 취급하는 컴퓨터에 대한 망 분리 의무화 - 개인 정보 취급자의 비밀 번호는 영문 대문자, 영문 소문자, 숫자, 특수 문자 등 중 2종 이상으로 조합해 최소 10자리';

MERGE (n:Concept {id: '접속_기록'})
SET     n.name = '접속 기록',
    n.name_kr = '접속 기록',
    n.domain = 'SE',
    n.definition = '개인 정보 처리 시스템에 대한 접속 기록의 보존 의무화 - 접속 기록의 위/변조 방지를 위한 보관 및 백업 의무화';

MERGE (n:Technology {id: '암호화'})
SET     n.name = '암호화',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '비밀 번호, 바이오 정보는 일방향 암호화 - 보안 서버에 대해 SSL, 암호화 송수신, 저장 정보 암호화 등 사용 규정';

MERGE (n:Concept {id: '악성_프로그램_방지'})
SET     n.name = '악성 프로그램 방지',
    n.name_kr = '악성 프로그램 방지',
    n.domain = 'SE',
    n.definition = '백신 소프트웨어 사용: 월 1회 이상 주기적 갱신, 점검. 업데이트 사용';

MERGE (n:Concept {id: '출력,_복사시_보호_조치'})
SET     n.name = '출력, 복사시 보호 조치',
    n.name_kr = '출력, 복사시 보호 조치',
    n.domain = 'SE',
    n.definition = '개인 정보 출력 시(인쇄, 화면 표시, 파일 생성 등) 보호 조치 의무화';

MERGE (n:Concept {id: '개인_정보_표시_제한'})
SET     n.name = '개인 정보 표시 제한',
    n.name_kr = '개인 정보 표시 제한',
    n.domain = 'SE',
    n.definition = '개인 정보 업무 처리 과정에서 개인 정보의 마스킹 규정(성명 중 이름의 첫 번째 글자 이상, 생년월일, 전화번호 또는 휴대폰 전화번호의 국번, 주소의 읍/면/동, IPv4의 경우 17~24비트, IPv6의 경우 113~128비트 영역)';

// --- 관계 ---

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '보안관련_법령'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보의_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '정보통신망의_안전성_확보_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '구분명'})
MERGE (b:Concept {id: '주요내용'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '구분명'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '주요내용'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '제1절_개인정보의_수집,_이용_및_제공_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '접근_권한에_대한_동의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_수집_제한_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '주민등록번호_사용의_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_이용_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_제공_동의'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_처리_위탁'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '제2절_개인정보의_관리_및_파기_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_취급,_처리방침의_공개'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보_누출,_유출_등의_통지,_신고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보의_보호조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인정보의_파기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '제3절_이용자의_권리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '손해배상'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '법적_손해배상의_청구'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '제5장_정보통신망에서의_이용자_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '정보의_삭제_요청_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '불법정보의_유통_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '제6장_정보통신망의_안전성_확보'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '정보보호_최고책임자의_지정_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '집적된_정보통신_시설의_보호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Standard {id: '정보보호_관리체계의_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Standard {id: '개정정보보호_관리체계의_인증'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Standard {id: '정보보호_관리등급_부여'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '정보통신망_침해행위의_금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '침해사고의_대응_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '영리목적의_광고성_정보_전송_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '영리목적의_광고성_정보_전송의_위탁_등'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '접근_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '접속_기록'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Technology {id: '암호화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '악성_프로그램_방지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '출력,_복사시_보호_조치'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Concept {id: '개인_정보_표시_제한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Document {id: 'SE_280'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안관련_법령'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보의_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보통신망의_안전성_확보_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '구분명'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요내용'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제1절_개인정보의_수집,_이용_및_제공_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_권한에_대한_동의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_수집_제한_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주민등록번호_사용의_제한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_이용_제한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_제공_동의'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_처리_위탁'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제2절_개인정보의_관리_및_파기_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_취급,_처리방침의_공개'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_누출,_유출_등의_통지,_신고'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보의_보호조치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보의_파기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제3절_이용자의_권리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '손해배상'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_손해배상의_청구'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제5장_정보통신망에서의_이용자_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보의_삭제_요청_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '불법정보의_유통_금지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제6장_정보통신망의_안전성_확보'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보보호_최고책임자의_지정_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '집적된_정보통신_시설의_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '정보보호_관리체계의_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '개정정보보호_관리체계의_인증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '정보보호_관리등급_부여'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보통신망_침해행위의_금지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '침해사고의_대응_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영리목적의_광고성_정보_전송_제한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '영리목적의_광고성_정보_전송의_위탁_등'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접근_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '접속_기록'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '암호화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '악성_프로그램_방지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '출력,_복사시_보호_조치'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인_정보_표시_제한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_281.1: 정보통신기반 보호법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_281.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '정보통신기반_보호법'})
SET     n.name = '정보통신기반 보호법',
    n.name_kr = '정보통신기반 보호법',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '정보통신기반_보호법'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '정보통신기반_보호법'})
MERGE (b:Document {id: 'SE_281.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '정보통신기반_보호법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_281.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_281.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_282: 데이터 3법
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_282'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '데이터_3법'})
SET     n.name = '데이터 3법',
    n.name_kr = '데이터 3법',
    n.domain = 'SE';

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '법/재도_관점'})
SET     n.name = '법/재도 관점',
    n.name_kr = '법/재도 관점',
    n.domain = 'SE',
    n.definition = '데이터 3법 한계';

MERGE (n:Concept {id: '데이터_활용에_대한_법제도_모호'})
SET     n.name = '데이터 활용에 대한 법제도 모호',
    n.name_kr = '데이터 활용에 대한 법제도 모호',
    n.domain = 'SE',
    n.definition = '민간 데이터의 경제/사회적 생산, 거래 활용에 대한 기본법제 부재 - 공공데이터 법, 진흥정보화 기본법 등으로 민간 분야의 데이터 활용에 대한 법적 근거 부족 (데이터 침해 문제에 대한 데이터 거래소 책임여부 등)';

MERGE (n:Concept {id: '산업_관점'})
SET     n.name = '산업 관점',
    n.name_kr = '산업 관점',
    n.domain = 'SE',
    n.definition = '데이터 산업 활성화 진전 미비';

MERGE (n:Concept {id: '데이터_산업에_대한_적극적_지원_법제화'})
SET     n.name = '데이터 산업에 대한 적극적 지원 법제화',
    n.name_kr = '데이터 산업에 대한 적극적 지원 법제화',
    n.domain = 'SE',
    n.definition = '데이터 댐, 인공지능 등 데이터 기술 기반으로 한 산업에 대해 실질적인 지원이 필요';

// --- 관계 ---

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '법/재도_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '데이터_활용에_대한_법제도_모호'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '산업_관점'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Concept {id: '데이터_산업에_대한_적극적_지원_법제화'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Document {id: 'SE_282'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '데이터_3법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법/재도_관점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_활용에_대한_법제도_모호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업_관점'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '데이터_산업에_대한_적극적_지원_법제화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_283: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_283'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_284: 신지식재산권
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_284'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '신지식재산권'})
SET     n.name = '신지식재산권',
    n.name_kr = '신지식재산권',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_교양_토픽'})
SET     n.name = '보안 교양 토픽',
    n.name_kr = '보안 교양 토픽',
    n.domain = 'SE';

MERGE (n:Concept {id: '첨단_산업_재산권'})
SET     n.name = '첨단 산업 재산권',
    n.name_kr = '첨단 산업 재산권',
    n.domain = 'SE';

MERGE (n:Concept {id: '정보_재산권'})
SET     n.name = '정보 재산권',
    n.name_kr = '정보 재산권',
    n.domain = 'SE';

MERGE (n:Concept {id: '산업저작권'})
SET     n.name = '산업저작권',
    n.name_kr = '산업저작권',
    n.domain = 'SE';

MERGE (n:Concept {id: '법률'})
SET     n.name = '법률',
    n.name_kr = '법률',
    n.domain = 'SE',
    n.definition = '특허법';

MERGE (n:Concept {id: '제88조'})
SET     n.name = '제88조(특허권의 존속기간)',
    n.name_kr = '제88조(특허권의 존속기간)',
    n.domain = 'SE',
    n.definition = '특허 출원 후 20년';

MERGE (n:Concept {id: '실용신안법'})
SET     n.name = '실용신안법',
    n.name_kr = '실용신안법',
    n.domain = 'SE',
    n.definition = '실용적인 고안을 보호ㆍ장려하고 그 이용을 도모함으로써 기술의 발전을 촉진하여 산업발전에 이바지함을 목적으로 하는 법률';

MERGE (n:Concept {id: '제22조'})
SET     n.name = '제22조(실용신안권의 존속기간)',
    n.name_kr = '제22조(실용신안권의 존속기간)',
    n.domain = 'SE',
    n.definition = '실용신안등록출원일 후 10년';

MERGE (n:Concept {id: '디자인보호법'})
SET     n.name = '디자인보호법',
    n.name_kr = '디자인보호법',
    n.domain = 'SE',
    n.definition = '디자인의 보호와 이용을 도모함으로써 디자인의 창작을 장려하여 산업발전에 이바지함을 목적으로 하는 법률';

MERGE (n:Concept {id: '제91조'})
SET     n.name = '제91조(디자인권의 존속기간)',
    n.name_kr = '제91조(디자인권의 존속기간)',
    n.domain = 'SE',
    n.definition = '디자인등록출원일 후 20년';

MERGE (n:Concept {id: '상표법'})
SET     n.name = '상표법',
    n.name_kr = '상표법',
    n.domain = 'SE',
    n.definition = '상표를 보호함으로써 상표 사용자의 업무상 신용 유지를 도모하여 산업발전에 이바지하고 수요자의 이익을 보호함을 목적으로 하는 법률';

MERGE (n:Concept {id: '제83조'})
SET     n.name = '제83조(상표권의 존속기간)',
    n.name_kr = '제83조(상표권의 존속기간)',
    n.domain = 'SE',
    n.definition = '상표권 설정 후 10년(10년씩 연장 가능)';

MERGE (n:Law {id: '저작권법'})
SET     n.name = '저작권법',
    n.name_kr = '저작권법',
    n.domain = 'SE',
    n.definition = '저작자의 권리를 보호하고 저작물의 공정한 이용을 도모함으로써 문화 및 관련 산업의 향상발전에 이바지함을 목적으로 하는 법률';

MERGE (n:Concept {id: '제39조'})
SET     n.name = '제39조(보호기간의 원칙)',
    n.name_kr = '제39조(보호기간의 원칙)',
    n.domain = 'SE',
    n.definition = '저작자가 생존 동안 및 사망한 후 70년간 존속 - 공동저작물의 저작재산권은 맨 마지막으로 사망한 저작자가 사망한 후 70년간 존속';

MERGE (n:Concept {id: '제86조'})
SET     n.name = '제86조(보호기간)',
    n.name_kr = '제86조(보호기간)',
    n.domain = 'SE',
    n.definition = '권리발생 시점의 다음해부터 70년 - 방송의 경우에는 50년';

MERGE (n:Concept {id: '반도체설계법'})
SET     n.name = '반도체설계법 (반도체집적회로의 배치설계에 관한 법률)',
    n.name_kr = '반도체설계법 (반도체집적회로의 배치설계에 관한 법률)',
    n.domain = 'SE',
    n.definition = '반도체집적회로의 배치설계에 관한 창작자의 권리를 보호하고 배치설계를 공정하게 이용하도록 하도록 하는 법률';

MERGE (n:Concept {id: '제7조'})
SET     n.name = '제7조(배치설계권의 존속기간)',
    n.name_kr = '제7조(배치설계권의 존속기간)',
    n.domain = 'SE',
    n.definition = '새로운 기능과 구조를 갖는 반도체를 보호 - 특허권과 유사한 원리로 보호 - 배치설계권의 설정등록일부터 10년';

MERGE (n:Concept {id: '부정경쟁방지법'})
SET     n.name = '부정경쟁방지법 (부정경쟁방지 및 영업비밀보호에 관한 법률)',
    n.name_kr = '부정경쟁방지법 (부정경쟁방지 및 영업비밀보호에 관한 법률)',
    n.domain = 'SE',
    n.definition = '타인의 상표ㆍ상호 등을 부정하게 사용하는 등의 부정경쟁행위와 타인의 영업비밀을 침해하는 행위를 방지하기 위한 법률';

MERGE (n:Concept {id: '제2장_부정경쟁행위의_금지_등_제3장_영업비밀의_보호'})
SET     n.name = '제2장 부정경쟁행위의 금지 등 제3장 영업비밀의 보호',
    n.name_kr = '제2장 부정경쟁행위의 금지 등 제3장 영업비밀의 보호',
    n.domain = 'SE',
    n.definition = '특허법, 실용신안법, 상표법 및 디자인 보호법을 적용할 수 없는 부정경쟁 행위를 방지하는 기능 - 기술 노하우, 영업방법 및 고객리스트 등의 영업비밀을 침해하면 부정경쟁 행위에 해당';

MERGE (n:Concept {id: 'sw_지적재산_보호기술'})
SET     n.name = 'SW 지적재산 보호기술',
    n.name_kr = 'SW 지적재산 보호기술',
    n.domain = 'SE',
    n.definition = '난독화(Code Obfuscation)';

MERGE (n:Concept {id: 'fingerprinting'})
SET     n.name = 'Fingerprinting',
    n.name_kr = 'Fingerprinting',
    n.domain = 'SE',
    n.definition = '저작권 정보와 판매처 정보를 제공하는 소스코드나 바이너리에 삽입/추출하는 기술',
    n.aliases = ['Fingerprinting'];

MERGE (n:Concept {id: 'watermark'})
SET     n.name = 'Watermark',
    n.name_kr = 'Watermark',
    n.domain = 'SE',
    n.definition = '저작자의 정보를 소스코드 상에 삽입, 추출하여 저작권을 확인할 수 있는 기술',
    n.aliases = ['Watermark'];

MERGE (n:Concept {id: 'encryption'})
SET     n.name = 'Encryption',
    n.name_kr = '암호화',
    n.domain = 'SE',
    n.definition = '소스코드 및 바이너리 전체를 수학적 알고리즘을 적용하여 형태를 변경한 후 특정 키를 통해서만 실행 및 분석이 가능하게 만드는 기술',
    n.aliases = ['Encryption', '암호화'];

// --- 관계 ---

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '보안_교양_토픽'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '첨단_산업_재산권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '정보_재산권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '산업저작권'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '법률'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제88조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '실용신안법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제22조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '디자인보호법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제91조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '상표법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제83조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Law {id: '저작권법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제39조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제86조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '반도체설계법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제7조'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '부정경쟁방지법'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: '제2장_부정경쟁행위의_금지_등_제3장_영업비밀의_보호'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: 'sw_지적재산_보호기술'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: 'fingerprinting'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: 'watermark'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Concept {id: 'encryption'})
MERGE (a)-[:COMPARED_WITH]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Document {id: 'SE_284'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '신지식재산권'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_교양_토픽'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '첨단_산업_재산권'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '정보_재산권'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '산업저작권'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법률'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제88조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '실용신안법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제22조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '디자인보호법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제91조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '상표법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제83조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '저작권법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제39조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제86조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '반도체설계법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제7조'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '부정경쟁방지법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '제2장_부정경쟁행위의_금지_등_제3장_영업비밀의_보호'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'sw_지적재산_보호기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'fingerprinting'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'watermark'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'encryption'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_285: 탈린매뉴얼(Tallinn Manual)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_285'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'tallinn_manual'})
SET     n.name = 'Tallinn Manual',
    n.name_kr = '탈린매뉴얼',
    n.domain = 'SE',
    n.aliases = ['Tallinn Manual', '탈린매뉴얼'];

MERGE (n:Concept {id: '법적_대응'})
SET     n.name = '법적 대응',
    n.name_kr = '법적 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '군사적보복'})
SET     n.name = '군사적보복',
    n.name_kr = '군사적보복',
    n.domain = 'SE';

MERGE (n:Concept {id: '비국가행위자'})
SET     n.name = '비국가행위자',
    n.name_kr = '비국가행위자',
    n.domain = 'SE';

MERGE (n:Concept {id: '국제법'})
SET     n.name = '국제법',
    n.name_kr = '국제법',
    n.domain = 'SE';

MERGE (n:Concept {id: '전쟁법'})
SET     n.name = '전쟁법',
    n.name_kr = '전쟁법',
    n.domain = 'SE';

MERGE (n:Concept {id: '사이버테러'})
SET     n.name = '사이버테러',
    n.name_kr = '사이버테러',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '법적_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '군사적보복'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '비국가행위자'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '국제법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '전쟁법'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Concept {id: '사이버테러'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Document {id: 'SE_285'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'tallinn_manual'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '법적_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '군사적보복'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '비국가행위자'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국제법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전쟁법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버테러'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_286: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_286'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_287.1: CWE (Common Weakness Enumeration)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_287.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'common_weakness_enumeration'})
SET     n.name = 'Common Weakness Enumeration',
    n.name_kr = 'CWE',
    n.domain = 'SE',
    n.aliases = ['Common Weakness Enumeration', 'CWE'];

MERGE (n:Concept {id: '기타'})
SET     n.name = '기타',
    n.name_kr = '기타',
    n.domain = 'SE';

MERGE (n:Concept {id: 'cwe'})
SET     n.name = 'CWE',
    n.name_kr = 'CWE',
    n.domain = 'SE',
    n.aliases = ['CWE'];

MERGE (n:Concept {id: 'cwe_699'})
SET     n.name = 'CWE 699',
    n.name_kr = 'CWE 699',
    n.domain = 'SE',
    n.aliases = ['CWE 699'];

MERGE (n:Concept {id: 'cwe_1000'})
SET     n.name = 'CWE 1000',
    n.name_kr = 'CWE 1000',
    n.domain = 'SE',
    n.aliases = ['CWE 1000'];

MERGE (n:Concept {id: '7pk'})
SET     n.name = '7PK(700)',
    n.name_kr = '7PK(700)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'cwe_sans_top_25'})
SET     n.name = 'CWE/SANS Top 25(900)',
    n.name_kr = 'CWE/SANS Top 25(900)',
    n.domain = 'SE';

MERGE (n:Concept {id: 'owasp'})
SET     n.name = 'OWASP',
    n.name_kr = '928',
    n.domain = 'SE',
    n.aliases = ['OWASP', '928'];

MERGE (n:Concept {id: 'cwss'})
SET     n.name = 'CWSS',
    n.name_kr = 'CWSS',
    n.domain = 'SE',
    n.aliases = ['CWSS'];

// --- 관계 ---

MERGE (a:Concept {id: 'cwe'})
MERGE (b:Concept {id: '기타'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: 'cwe_699'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: 'cwe_1000'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: '7pk'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: 'cwe_sans_top_25'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: 'owasp'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Concept {id: 'cwss'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Document {id: 'SE_287.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'common_weakness_enumeration'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기타'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwe'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwe_699'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwe_1000'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7pk'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwe_sans_top_25'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'owasp'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cwss'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_287.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_287.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_288: 개인정보관리책임자(CPO: Chief Privacy Officer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_288'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cpo'})
SET     n.name = '개인정보관리책임자(CPO: Chief Privacy Officer)',
    n.name_kr = '개인정보관리책임자(CPO: Chief Privacy Officer)',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안직업'})
SET     n.name = '보안직업',
    n.name_kr = '보안직업',
    n.domain = 'SE';

MERGE (n:Concept {id: '역할(계획_수립/시행'})
SET     n.name = '역할(계획 수립/시행',
    n.name_kr = '역할(계획 수립/시행',
    n.domain = 'SE';

MERGE (n:Concept {id: '조사_및_개선'})
SET     n.name = '조사 및 개선',
    n.name_kr = '조사 및 개선',
    n.domain = 'SE';

MERGE (n:Concept {id: '피해_구제'})
SET     n.name = '피해 구제',
    n.name_kr = '피해 구제',
    n.domain = 'SE';

MERGE (n:Concept {id: '관리/감독_등)'})
SET     n.name = '관리/감독 등)',
    n.name_kr = '관리/감독 등)',
    n.domain = 'SE';

MERGE (n:Concept {id: '관리적_보안'})
SET     n.name = '관리적 보안',
    n.name_kr = '관리적 보안',
    n.domain = 'SE',
    n.definition = '관리체계 수립';

MERGE (n:Concept {id: '보안감사'})
SET     n.name = '보안감사',
    n.name_kr = '보안감사',
    n.domain = 'SE',
    n.definition = '개인정보처리 절차 및 주기적인 감사 수행';

MERGE (n:Concept {id: '보안교육'})
SET     n.name = '보안교육',
    n.name_kr = '보안교육',
    n.domain = 'SE',
    n.definition = '개인정보취급자 및 관리자 대상 개인정보보호 교육 수행';

MERGE (n:Concept {id: '기술적_보안'})
SET     n.name = '기술적 보안',
    n.name_kr = '기술적 보안',
    n.domain = 'SE',
    n.definition = '보호시스템 구축';

MERGE (n:Concept {id: '개인정보파일_관리'})
SET     n.name = '개인정보파일 관리',
    n.name_kr = '개인정보파일 관리',
    n.domain = 'SE',
    n.definition = '개인정보 파일의 안전한 보관 및 활용';

MERGE (n:Concept {id: '개인정보_파기'})
SET     n.name = '개인정보 파기',
    n.name_kr = '개인정보 파기',
    n.domain = 'SE',
    n.definition = '개인정보 사용기한 목적 소멸시 파기 수행';

MERGE (n:Concept {id: '사고대응'})
SET     n.name = '사고대응',
    n.name_kr = '사고대응',
    n.domain = 'SE',
    n.definition = '거버넌스 활동';

MERGE (n:Concept {id: '권한'})
SET     n.name = '권한',
    n.name_kr = '권한',
    n.domain = 'SE',
    n.definition = '관리, 감독';

MERGE (n:Concept {id: '업무수행'})
SET     n.name = '업무수행',
    n.name_kr = '업무수행',
    n.domain = 'SE',
    n.definition = '관련 업무 수행시 정당한 사유없이 불이익을 받지 않음';

MERGE (n:Concept {id: '의무'})
SET     n.name = '의무',
    n.name_kr = '의무',
    n.domain = 'SE',
    n.definition = '개선조치';

MERGE (n:Concept {id: '보고'})
SET     n.name = '보고',
    n.name_kr = '보고',
    n.domain = 'SE',
    n.definition = '필요시 기관장에서 보고';

// --- 관계 ---

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '보안직업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '역할(계획_수립/시행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '조사_및_개선'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '피해_구제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '관리/감독_등)'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '관리적_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '보안감사'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '보안교육'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '기술적_보안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '개인정보파일_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '개인정보_파기'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '사고대응'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '권한'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '업무수행'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '의무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Concept {id: '보고'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Document {id: 'SE_288'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cpo'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안직업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '역할(계획_수립/시행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조사_및_개선'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '피해_구제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리/감독_등)'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '관리적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안감사'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안교육'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기술적_보안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보파일_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보_파기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사고대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '권한'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '업무수행'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의무'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보고'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_289: 정보보호책임자(CSO: Chief Security Officer)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_289'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cso'})
SET     n.name = '정보보호책임자(CSO: Chief Security Officer)',
    n.name_kr = '정보보호책임자(CSO: Chief Security Officer)',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안직업'})
SET     n.name = '보안직업',
    n.name_kr = '보안직업',
    n.domain = 'SE';

MERGE (n:Concept {id: '회사_보안_비전_관리'})
SET     n.name = '회사 보안 비전 관리',
    n.name_kr = '회사 보안 비전 관리',
    n.domain = 'SE';

MERGE (n:Concept {id: '전략_수립'})
SET     n.name = '전략 수립',
    n.name_kr = '전략 수립',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'cso'})
MERGE (b:Concept {id: '보안직업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cso'})
MERGE (b:Concept {id: '회사_보안_비전_관리'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cso'})
MERGE (b:Concept {id: '전략_수립'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cso'})
MERGE (b:Document {id: 'SE_289'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cso'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안직업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '회사_보안_비전_관리'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전략_수립'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_290: CISO 지정신고 의무화
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_290'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'ciso_지정신고_의무화'})
SET     n.name = 'CISO 지정신고 의무화',
    n.name_kr = 'CISO 지정신고 의무화',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안직업'})
SET     n.name = '보안직업',
    n.name_kr = '보안직업',
    n.domain = 'SE';

MERGE (n:Concept {id: '자격요건'})
SET     n.name = '자격요건',
    n.name_kr = '자격요건',
    n.domain = 'SE';

MERGE (n:Concept {id: '주요업무'})
SET     n.name = '주요업무',
    n.name_kr = '주요업무',
    n.domain = 'SE';

MERGE (n:Concept {id: '의무지정'})
SET     n.name = '의무지정',
    n.name_kr = '의무지정',
    n.domain = 'SE';

MERGE (n:Concept {id: '겸직금지'})
SET     n.name = '겸직금지',
    n.name_kr = '겸직금지',
    n.domain = 'SE';

MERGE (n:Concept {id: '겸직_금지요건'})
SET     n.name = '겸직 금지요건',
    n.name_kr = '겸직 금지요건',
    n.domain = 'SE',
    n.definition = '전년도 말 기준 자산총액 5조원 이상인 정보통신서비스 제공자';

MERGE (n:Concept {id: '금융거래법'})
SET     n.name = '금융거래법 (제 21조의 2제 4항)',
    n.name_kr = '금융거래법 (제 21조의 2제 4항)',
    n.domain = 'SE',
    n.definition = '1. 전자금융거래의 안정성 확보 및 이용자 보호를 위한 전략 및 계획의 수립';

MERGE (n:Law {id: '정보통신망법'})
SET     n.name = '정보통신망법 (제 45 조의 3제 4항)',
    n.name_kr = '정보통신망법 (제 45 조의 3제 4항)',
    n.domain = 'SE',
    n.definition = '1. 정보보호관리체계의 수립 및 관리·운영';

MERGE (n:Concept {id: 'ciso_의_겸직제한_완화'})
SET     n.name = 'CISO 의 겸직제한 완화',
    n.name_kr = 'CISO 의 겸직제한 완화',
    n.domain = 'SE',
    n.definition = '겸직제한 완화';

MERGE (n:Standard {id: '겸직제한_유효기업'})
SET     n.name = '겸직제한 유효기업',
    n.name_kr = '겸직제한 유효기업',
    n.domain = 'SE',
    n.definition = '겸직제한 대상 기업 직전사업연도말 자산총액 5조원 이상 - 정보보호 관리체계 (ISMS) 의무대상 중 자산총액 5천억원 이상 기업';

MERGE (n:Concept {id: 'ciso_자격요건_및_지정신고_의무_완화'})
SET     n.name = 'CISO 자격요건 및 지정신고 의무 완화',
    n.name_kr = 'CISO 자격요건 및 지정신고 의무 완화',
    n.domain = 'SE',
    n.definition = '정보보호 최고책임자 지위';

MERGE (n:Concept {id: '기업규모별_ciso_지위_기준_마련'})
SET     n.name = '기업규모별 CISO 지위 기준 마련',
    n.name_kr = '기업규모별 CISO 지위 기준 마련',
    n.domain = 'SE',
    n.definition = '이용자가 많고 정보보호 필요성이 큰 중기업이상 의무신고';

MERGE (n:Concept {id: '신고의무_제외대상자_정비'})
SET     n.name = '신고의무 제외대상자 정비',
    n.name_kr = '신고의무 제외대상자 정비',
    n.domain = 'SE',
    n.definition = '신고의무가 없는 소기업 경우 대표자를 CISO 로 간주 정보보호 공백 최소화(제 36 조 7항)';

MERGE (n:Concept {id: '신고기한_연장'})
SET     n.name = '신고기한 연장',
    n.name_kr = '신고기한 연장',
    n.domain = 'SE',
    n.definition = '정보보호 최고책임자 신고 기한 당초 90 일에서 180 일 연장(제 36 조의 8 )';

MERGE (n:Concept {id: '위반시_과태료_부과'})
SET     n.name = '위반시 과태료 부과',
    n.name_kr = '위반시 과태료 부과',
    n.domain = 'SE',
    n.definition = '의무신고 위반';

// --- 관계 ---

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '보안직업'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '자격요건'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '주요업무'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '의무지정'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '겸직금지'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '겸직_금지요건'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '금융거래법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Law {id: '정보통신망법'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: 'ciso_의_겸직제한_완화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Standard {id: '겸직제한_유효기업'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: 'ciso_자격요건_및_지정신고_의무_완화'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '기업규모별_ciso_지위_기준_마련'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '신고의무_제외대상자_정비'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '신고기한_연장'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Concept {id: '위반시_과태료_부과'})
MERGE (a)-[:COUNTERED_BY]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Document {id: 'SE_290'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'ciso_지정신고_의무화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안직업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자격요건'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주요업무'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '의무지정'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '겸직금지'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '겸직_금지요건'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '금융거래법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Law {id: '정보통신망법'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ciso_의_겸직제한_완화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Standard {id: '겸직제한_유효기업'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ciso_자격요건_및_지정신고_의무_완화'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '기업규모별_ciso_지위_기준_마련'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신고의무_제외대상자_정비'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '신고기한_연장'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '위반시_과태료_부과'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_292: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_292'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_293: 사이버범죄의 유형 및 대응방안
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_293'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '사이버범죄의_유형_및_대응방안'})
SET     n.name = '사이버범죄의 유형 및 대응방안',
    n.name_kr = '사이버범죄의 유형 및 대응방안',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_취약점_및_대응'})
SET     n.name = '보안 취약점 및 대응',
    n.name_kr = '보안 취약점 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '예방활동'})
SET     n.name = '예방활동',
    n.name_kr = '예방활동',
    n.domain = 'SE',
    n.definition = '사이버범죄 정보 수집 및 분석/전파 - 사이버범죄 관련 안전/보안 기술 지도, 취약점 발굴, 개선';

MERGE (n:Concept {id: '대비활동'})
SET     n.name = '대비활동',
    n.name_kr = '대비활동',
    n.domain = 'SE',
    n.definition = '사이버범죄 모의훈련 실시, 사이버 범죄 대응 교육/훈력 강화 - 정보보호 전문 인력/산업 양성 및 대국민 인식 제고';

MERGE (n:Concept {id: '대응활동'})
SET     n.name = '대응활동',
    n.name_kr = '대응활동',
    n.domain = 'SE',
    n.definition = '실무기관별 대응체계 유지 - 국내외 사이버테러 유관 기관과 공조, 국가 차원의 대책기구 운영';

MERGE (n:Concept {id: '복구활동'})
SET     n.name = '복구활동',
    n.name_kr = '복구활동',
    n.domain = 'SE',
    n.definition = '주관기관/대응기구와 긴밀 협조, 실무기관 자체 복구활동 시행 - 범정부차원 복구지원팀 구성/운영';

MERGE (n:Concept {id: '사이버_범죄_종류'})
SET     n.name = '사이버 범죄 종류',
    n.name_kr = '사이버 범죄 종류',
    n.domain = 'SE',
    n.definition = '테러형 범죄';

MERGE (n:Concept {id: '일반형_범죄'})
SET     n.name = '일반형 범죄',
    n.name_kr = '일반형 범죄',
    n.domain = 'SE',
    n.definition = '사이버 사기, 불법복제, 불법/유해사이트, 사이버스토킹, 모욕죄, 성폭력, 개인정보침해, 명예훼손죄, 협박/공갈';

MERGE (n:Concept {id: '사이버_범죄_대응책'})
SET     n.name = '사이버 범죄 대응책',
    n.name_kr = '사이버 범죄 대응책',
    n.domain = 'SE',
    n.definition = '관리적';

MERGE (n:Concept {id: '물리적'})
SET     n.name = '물리적',
    n.name_kr = '물리적',
    n.domain = 'SE',
    n.definition = '보안USB, 망분리, 중고물품 직거래,';

MERGE (n:Technology {id: '기술적'})
SET     n.name = '기술적',
    n.name_kr = '기술적',
    n.domain = 'SE',
    n.definition = '백신, 전자서명, 방화벽, 스크러빙센터, 워터마킹, 웹사이트 인증, SIEM, IPS, IDS, EDR, SNI필터링';

MERGE (n:Concept {id: '병리학'})
SET     n.name = '병리학',
    n.name_kr = '병리학',
    n.domain = 'SE',
    n.definition = '우울증';

MERGE (n:Concept {id: '대인기피증'})
SET     n.name = '대인기피증',
    n.name_kr = '대인기피증',
    n.domain = 'SE',
    n.definition = '온라인의 높은 유대관계로 인해 현실의 대인관계가 줄어드는 문제';

MERGE (n:Concept {id: '주의력_결핍'})
SET     n.name = '주의력 결핍',
    n.name_kr = '주의력 결핍',
    n.domain = 'SE',
    n.definition = '주의력이 떨어져 산만하고 ADHD를 발생시키는 원인이 됨';

MERGE (n:Concept {id: '수면장애'})
SET     n.name = '수면장애',
    n.name_kr = '수면장애',
    n.domain = 'SE',
    n.definition = '불규칙하고 늦은 취침시간으로 인해 수면장애 발생';

MERGE (n:Concept {id: '충동조절/폭력성'})
SET     n.name = '충동조절/폭력성',
    n.name_kr = '충동조절/폭력성',
    n.domain = 'SE',
    n.definition = '과잉행동 및 충동성에 따른 공격적이고 반항심 유발';

MERGE (n:Concept {id: '자살'})
SET     n.name = '자살',
    n.name_kr = '자살',
    n.domain = 'SE',
    n.definition = '대인기피증과 고립감으로 인해 우울증이 심화되어 자살 유도';

MERGE (n:Concept {id: '조기_사망'})
SET     n.name = '조기 사망',
    n.name_kr = '조기 사망',
    n.domain = 'SE',
    n.definition = '장시간 컴퓨터 사용으로 인한 급성 심정지로 인한 조기 사망 원인이 됨';

MERGE (n:Threat {id: '사이버_범죄'})
SET     n.name = '사이버 범죄',
    n.name_kr = '사이버 범죄',
    n.domain = 'SE',
    n.definition = '해킹 및 바이러스';

MERGE (n:Threat {id: '인터넷_사기'})
SET     n.name = '인터넷 사기',
    n.name_kr = '인터넷 사기',
    n.domain = 'SE',
    n.definition = '피싱, 파밍을 통해 금융 계좌정보, 계정 정보 탈취와 금품 갈취';

MERGE (n:Concept {id: '사이버_폭력'})
SET     n.name = '사이버 폭력',
    n.name_kr = '사이버 폭력',
    n.domain = 'SE',
    n.definition = '악성 댓글, 허위사실 유포 등으로 특정인 명예훼손 및 괴롭힘';

MERGE (n:Concept {id: '개인정보유출'})
SET     n.name = '개인정보유출',
    n.name_kr = '개인정보유출',
    n.domain = 'SE',
    n.definition = '사회공학 기법, 불법 계정을 통해 DB의 개인정보 불법 유출';

// --- 관계 ---

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '보안_취약점_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '예방활동'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '대비활동'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '대응활동'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '복구활동'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '사이버_범죄_종류'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '일반형_범죄'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '사이버_범죄_대응책'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '물리적'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Technology {id: '기술적'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '병리학'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '대인기피증'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '주의력_결핍'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '수면장애'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '충동조절/폭력성'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '자살'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '조기_사망'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Threat {id: '사이버_범죄'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Threat {id: '인터넷_사기'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '사이버_폭력'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Concept {id: '개인정보유출'})
MERGE (a)-[:HAS_PHASE]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Document {id: 'SE_293'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '사이버범죄의_유형_및_대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_취약점_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '예방활동'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대비활동'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대응활동'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '복구활동'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_범죄_종류'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '일반형_범죄'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_범죄_대응책'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '물리적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Technology {id: '기술적'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '병리학'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '대인기피증'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '주의력_결핍'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '수면장애'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '충동조절/폭력성'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '자살'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '조기_사망'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '사이버_범죄'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Threat {id: '인터넷_사기'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_폭력'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '개인정보유출'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_294.1: 사이버 킬 체인 (Cyber Kill Chain)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_294.1'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_kill_chain'})
SET     n.name = 'Cyber Kill Chain',
    n.name_kr = '사이버 킬 체인',
    n.domain = 'SE',
    n.aliases = ['Cyber Kill Chain', '사이버 킬 체인'];

MERGE (n:Concept {id: '사이버_공격_및_대응'})
SET     n.name = '사이버 공격 및 대응',
    n.name_kr = '사이버 공격 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '7단계_항목_및_공격방법_+_대응방안'})
SET     n.name = '7단계 항목 및 공격방법 + 대응방안',
    n.name_kr = '7단계 항목 및 공격방법 + 대응방안',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'cyber_kill_chain'})
MERGE (b:Concept {id: '사이버_공격_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_kill_chain'})
MERGE (b:Concept {id: '7단계_항목_및_공격방법_+_대응방안'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_kill_chain'})
MERGE (b:Document {id: 'SE_294.1'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_kill_chain'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_공격_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '7단계_항목_및_공격방법_+_대응방안'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_294.2: 
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_294.2'})
SET doc.domain = 'SE';

// ──────────────────────────────────────
// SE_295: 사이버전 (Cyber Warfare)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_295'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_warfare'})
SET     n.name = 'Cyber Warfare',
    n.name_kr = '사이버전',
    n.domain = 'SE',
    n.aliases = ['Cyber Warfare', '사이버전'];

MERGE (n:Concept {id: '사이버_공격_및_대응'})
SET     n.name = '사이버 공격 및 대응',
    n.name_kr = '사이버 공격 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '거부'})
SET     n.name = '거부',
    n.name_kr = '거부',
    n.domain = 'SE';

MERGE (n:Concept {id: '통제'})
SET     n.name = '통제',
    n.name_kr = '통제',
    n.domain = 'SE';

MERGE (n:Concept {id: 'cyber_isr'})
SET     n.name = 'Cyber ISR',
    n.name_kr = 'Cyber ISR',
    n.domain = 'SE',
    n.definition = '패턴 수집',
    n.aliases = ['Cyber ISR'];

MERGE (n:Concept {id: 'bda'})
SET     n.name = 'BDA',
    n.name_kr = 'BDA',
    n.domain = 'SE',
    n.definition = '피해 측정',
    n.aliases = ['BDA'];

MERGE (n:Concept {id: '지휘_통제'})
SET     n.name = '지휘 통제',
    n.name_kr = '지휘 통제',
    n.domain = 'SE',
    n.definition = 'Risk 측정';

MERGE (n:Concept {id: 'cyber_defense'})
SET     n.name = 'Cyber Defense',
    n.name_kr = 'Cyber Defense',
    n.domain = 'SE',
    n.definition = '탐지',
    n.aliases = ['Cyber Defense'];

MERGE (n:Concept {id: '보안_원천_기술'})
SET     n.name = '보안 원천 기술',
    n.name_kr = '보안 원천 기술',
    n.domain = 'SE',
    n.definition = '초경량 암호화';

MERGE (n:Concept {id: '분석_기술'})
SET     n.name = '분석 기술',
    n.name_kr = '분석 기술',
    n.domain = 'SE',
    n.definition = '근원지 역추적';

MERGE (n:Concept {id: '공격_기술'})
SET     n.name = '공격 기술',
    n.name_kr = '공격 기술',
    n.domain = 'SE',
    n.definition = '봇(Bot) 공격';

MERGE (n:Concept {id: '방어_기술'})
SET     n.name = '방어 기술',
    n.name_kr = '방어 기술',
    n.domain = 'SE',
    n.definition = '사이버 킬 체인';

MERGE (n:Concept {id: '국가_차원'})
SET     n.name = '국가 차원',
    n.name_kr = '국가 차원',
    n.domain = 'SE',
    n.definition = '전시 법/제도 정비';

MERGE (n:Concept {id: '군사/전략_차원'})
SET     n.name = '군사/전략 차원',
    n.name_kr = '군사/전략 차원',
    n.domain = 'SE',
    n.definition = '작전 계획 선진화';

// --- 관계 ---

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '사이버_공격_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '거부'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: 'cyber_isr'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: 'bda'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '지휘_통제'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: 'cyber_defense'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '보안_원천_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '분석_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '공격_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '방어_기술'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '국가_차원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Concept {id: '군사/전략_차원'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Document {id: 'SE_295'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_warfare'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_공격_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '거부'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cyber_isr'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'bda'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '지휘_통제'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'cyber_defense'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_원천_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '분석_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '공격_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '방어_기술'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '국가_차원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '군사/전략_차원'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_296: 사이버보안 조직
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_296'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: '사이버보안_조직'})
SET     n.name = '사이버보안 조직',
    n.name_kr = '사이버보안 조직',
    n.domain = 'SE';

MERGE (n:Concept {id: '사이버_공격_및_대응'})
SET     n.name = '사이버 공격 및 대응',
    n.name_kr = '사이버 공격 및 대응',
    n.domain = 'SE';

MERGE (n:Concept {id: '보안_컴플라이언스'})
SET     n.name = '보안 컴플라이언스',
    n.name_kr = '보안 컴플라이언스',
    n.domain = 'SE';

MERGE (n:Concept {id: 'ciso'})
SET     n.name = 'CISO',
    n.name_kr = 'CISO',
    n.domain = 'SE',
    n.aliases = ['CISO'];

MERGE (n:Concept {id: '전담_조직'})
SET     n.name = '전담 조직',
    n.name_kr = '전담 조직',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Concept {id: '사이버_공격_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Concept {id: '보안_컴플라이언스'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Concept {id: 'ciso'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Concept {id: '전담_조직'})
MERGE (a)-[:HAS_COMPONENT]->(b);

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Document {id: 'SE_296'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: '사이버보안_조직'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_공격_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '보안_컴플라이언스'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: 'ciso'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '전담_조직'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ──────────────────────────────────────
// SE_297: 사이버 레질리언스(Cyber Resilience)
// ──────────────────────────────────────

MERGE (doc:Document {id: 'SE_297'})
SET doc.domain = 'SE';

// --- 노드 ---

MERGE (n:Concept {id: 'cyber_resilience'})
SET     n.name = 'Cyber Resilience',
    n.name_kr = '사이버 레질리언스',
    n.domain = 'SE',
    n.aliases = ['Cyber Resilience', '사이버 레질리언스'];

MERGE (n:Concept {id: '사이버_공격_및_대응'})
SET     n.name = '사이버 공격 및 대응',
    n.name_kr = '사이버 공격 및 대응',
    n.domain = 'SE';

// --- 관계 ---

MERGE (a:Concept {id: 'cyber_resilience'})
MERGE (b:Concept {id: '사이버_공격_및_대응'})
MERGE (a)-[:SUBCLASS_OF]->(b);

MERGE (a:Concept {id: 'cyber_resilience'})
MERGE (b:Document {id: 'SE_297'})
MERGE (a)-[:MENTIONED_IN]->(b);

MERGE (a:Concept {id: 'cyber_resilience'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

MERGE (a:Concept {id: '사이버_공격_및_대응'})
MERGE (b:Domain {id: 'SE'})
MERGE (a)-[:BELONGS_TO]->(b);

// ================================================================
// SE 도메인 자동 생성 완료
// 노드: 174개
// 관계: 347개
// ================================================================