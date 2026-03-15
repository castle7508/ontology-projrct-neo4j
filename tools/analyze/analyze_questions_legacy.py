"""기술사 문제 전량 정량 분석 스크립트"""
import re
import json
import sys
import io
from collections import Counter, defaultdict

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

FILE = "documents/문제.txt"

with open(FILE, "r", encoding="utf-8") as f:
    lines = f.readlines()

print(f"총 줄 수: {len(lines)}")

# ─────────────────────────────────────────
# 1. 키워드 사전 (도메인별 핵심 개념)
# ─────────────────────────────────────────
KEYWORDS = {
    # AI/머신러닝
    "AI": ["인공지능", "AI ", "Artificial Intelligence"],
    "머신러닝": ["머신러닝", "기계학습", "Machine Learning", "ML "],
    "딥러닝": ["딥러닝", "Deep Learning", "심층학습"],
    "LLM": ["LLM", "대규모 언어 모델", "대규모 언어모델", "거대 언어"],
    "생성형 AI": ["생성형 AI", "생성형AI", "Generative AI", "생성형 인공지능"],
    "트랜스포머": ["트랜스포머", "Transformer"],
    "CNN": ["CNN", "합성곱 신경망", "Convolutional"],
    "RNN": ["RNN", "순환 신경망", "Recurrent Neural"],
    "GAN": ["GAN", "생성적 적대", "Generative Adversarial"],
    "강화학습": ["강화학습", "Reinforcement Learning"],
    "RAG": ["RAG", "Retrieval Augmented", "검색 증강"],
    "파인튜닝": ["파인튜닝", "Fine-tuning", "Fine Tuning", "미세조정"],
    "전이학습": ["전이학습", "Transfer Learning"],
    "연합학습": ["연합학습", "Federated Learning"],
    "프롬프트": ["프롬프트", "Prompt"],
    "자연어처리": ["자연어처리", "NLP", "Natural Language"],
    "컴퓨터비전": ["컴퓨터 비전", "Computer Vision"],
    "추천시스템": ["추천 시스템", "추천시스템", "Recommendation"],
    "오토인코더": ["오토인코더", "Autoencoder", "Auto-encoder"],
    "K-means": ["K-means", "K-Means", "k-means"],
    "SVM": ["SVM", "서포트 벡터"],
    "의사결정나무": ["의사결정나무", "Decision Tree", "결정트리"],
    "앙상블": ["앙상블", "Ensemble", "Bagging", "Boosting", "XGBoost", "Random Forest"],
    "과적합": ["과적합", "Overfitting", "과대적합"],
    "활성화함수": ["활성화 함수", "활성화함수", "Activation Function"],
    "역전파": ["역전파", "Backpropagation", "Back Propagation"],
    "경사하강법": ["경사하강법", "Gradient Descent"],
    "혼동행렬": ["혼동행렬", "Confusion Matrix", "혼동 행렬"],
    "F1-Score": ["F1-Score", "F1 Score", "F1-score", "F1스코어"],
    "MLOps": ["MLOps", "ModelOps"],
    "온디바이스AI": ["온디바이스", "On-device", "On Device AI"],
    "XAI": ["XAI", "설명 가능한 AI", "설명가능한"],
    "AI윤리": ["AI 윤리", "AI윤리", "AI 거버넌스", "인공지능 윤리"],
    "뉴로모픽": ["뉴로모픽", "Neuromorphic"],
    "에이전틱AI": ["에이전틱", "Agentic AI", "AI Agent", "AI 에이전트"],
    "멀티모달": ["멀티모달", "Multimodal"],
    "데이터마이닝": ["데이터 마이닝", "데이터마이닝", "Data Mining"],
    "연관규칙": ["연관 규칙", "연관규칙", "Association Rule", "Apriori"],

    # 보안
    "암호화": ["암호화", "Encryption", "암호 알고리즘"],
    "대칭키": ["대칭키", "대칭 키", "AES", "DES", "블록 암호", "블록암호"],
    "비대칭키": ["비대칭키", "비대칭 키", "RSA", "공개키", "공개 키"],
    "해시함수": ["해시 함수", "해시함수", "Hash Function", "SHA", "MD5"],
    "디지털서명": ["디지털 서명", "디지털서명", "Digital Signature", "전자서명"],
    "PKI": ["PKI", "공개키 기반", "공개키기반"],
    "인증서": ["인증서", "Certificate", "X.509"],
    "ISMS": ["ISMS", "정보보호 관리체계", "정보보호관리체계"],
    "ISMS-P": ["ISMS-P"],
    "개인정보보호": ["개인정보", "개인 정보", "Privacy", "프라이버시"],
    "랜섬웨어": ["랜섬웨어", "Ransomware", "RaaS"],
    "DDoS": ["DDoS", "디도스", "분산 서비스 거부", "분산서비스거부"],
    "APT": ["APT", "지능형 지속", "Advanced Persistent"],
    "제로트러스트": ["제로 트러스트", "제로트러스트", "Zero Trust"],
    "침입탐지": ["침입 탐지", "침입탐지", "IDS", "침입 방지", "침입방지", "IPS"],
    "방화벽": ["방화벽", "Firewall", "침입차단"],
    "VPN": ["VPN", "가상사설망", "가상 사설망"],
    "접근제어": ["접근 제어", "접근제어", "Access Control"],
    "인증": ["인증", "Authentication", "FIDO", "OTP"],
    "포렌식": ["포렌식", "Forensic"],
    "취약점": ["취약점", "Vulnerability", "취약성"],
    "SQL인젝션": ["SQL Injection", "SQL 인젝션", "SQL인젝션"],
    "XSS": ["XSS", "크로스 사이트", "Cross-Site Scripting"],
    "버퍼오버플로우": ["버퍼 오버플로우", "버퍼오버플로우", "Buffer Overflow"],
    "시큐어코딩": ["시큐어 코딩", "시큐어코딩", "Secure Coding"],
    "양자암호": ["양자 암호", "양자암호", "양자내성", "PQC", "QKD"],
    "망분리": ["망분리", "망 분리"],
    "OWASP": ["OWASP"],
    "SBOM": ["SBOM", "소프트웨어 자재명세"],
    "PET": ["PET", "Privacy Enhancing", "개인정보 보호 강화"],
    "동형암호": ["동형암호", "동형 암호", "Homomorphic"],
    "SIEM": ["SIEM", "ESM"],
    "SOAR": ["SOAR"],
    "EDR": ["EDR", "XDR"],
    "스푸핑": ["스푸핑", "Spoofing"],
    "피싱": ["피싱", "Phishing", "스피어피싱"],

    # 네트워크
    "OSI": ["OSI", "OSI 7"],
    "TCP": ["TCP", "전송 제어", "전송제어"],
    "UDP": ["UDP"],
    "IP": ["IPv4", "IPv6", "IP 주소", "IP주소"],
    "라우팅": ["라우팅", "Routing", "라우터"],
    "SDN": ["SDN", "소프트웨어 정의 네트워크", "Software Defined Network"],
    "NFV": ["NFV", "네트워크 기능 가상화"],
    "5G": ["5G", "5세대"],
    "6G": ["6G", "6세대"],
    "LTE": ["LTE"],
    "Wi-Fi": ["Wi-Fi", "WiFi", "와이파이", "무선랜"],
    "IoT": ["IoT", "사물 인터넷", "사물인터넷"],
    "DNS": ["DNS", "도메인 네임"],
    "HTTP": ["HTTP", "HTTPS"],
    "MQTT": ["MQTT"],
    "VLAN": ["VLAN"],
    "QoS": ["QoS", "서비스 품질"],
    "CDN": ["CDN", "콘텐츠 전송", "콘텐츠전송"],
    "NAT": ["NAT", "네트워크 주소 변환"],
    "멀티캐스트": ["멀티캐스트", "Multicast"],
    "서브넷": ["서브넷", "Subnet", "서브네팅"],
    "슬라이딩윈도우": ["슬라이딩 윈도우", "슬라이딩윈도우", "Sliding Window"],
    "ARQ": ["ARQ", "자동 재전송", "Stop-and-Wait", "Go-Back-N"],

    # 데이터베이스
    "정규화": ["정규화", "Normalization", "1NF", "2NF", "3NF", "BCNF"],
    "반정규화": ["반정규화", "비정규화", "Denormalization"],
    "트랜잭션": ["트랜잭션", "Transaction", "ACID"],
    "동시성제어": ["동시성 제어", "동시성제어", "병행 제어", "병행제어", "Concurrency"],
    "교착상태": ["교착상태", "교착 상태", "Deadlock", "데드락"],
    "인덱스": ["인덱스", "Index", "B-트리", "B-Tree", "B+트리"],
    "NoSQL": ["NoSQL", "비관계형"],
    "빅데이터": ["빅데이터", "빅 데이터", "Big Data"],
    "데이터레이크": ["데이터 레이크", "데이터레이크", "Data Lake"],
    "데이터웨어하우스": ["데이터 웨어하우스", "데이터웨어하우스", "Data Warehouse", "DW"],
    "하둡": ["하둡", "Hadoop"],
    "스파크": ["스파크", "Spark"],
    "데이터품질": ["데이터 품질", "데이터품질", "Data Quality"],
    "데이터거버넌스": ["데이터 거버넌스", "데이터거버넌스", "Data Governance"],
    "데이터모델링": ["데이터 모델링", "데이터모델링", "Data Modeling"],
    "옵티마이저": ["옵티마이저", "Optimizer", "RBO", "CBO"],
    "파티셔닝": ["파티셔닝", "Partitioning", "샤딩", "Sharding"],
    "벡터DB": ["벡터 데이터베이스", "벡터DB", "Vector Database", "Vector DB"],

    # SW공학
    "애자일": ["애자일", "Agile"],
    "스크럼": ["스크럼", "Scrum"],
    "칸반": ["칸반", "Kanban"],
    "폭포수": ["폭포수", "Waterfall"],
    "DevOps": ["DevOps", "데브옵스"],
    "CI/CD": ["CI/CD", "CI CD", "지속적 통합", "지속적 배포"],
    "MSA": ["MSA", "마이크로서비스", "Microservice"],
    "디자인패턴": ["디자인 패턴", "디자인패턴", "Design Pattern"],
    "리팩토링": ["리팩토링", "Refactoring"],
    "UML": ["UML"],
    "테스트": ["테스트", "Test", "테스팅", "Testing"],
    "블랙박스": ["블랙박스", "Black Box", "블랙 박스"],
    "화이트박스": ["화이트박스", "White Box", "화이트 박스"],
    "요구공학": ["요구공학", "요구 공학", "요구사항", "Requirements"],
    "형상관리": ["형상관리", "형상 관리", "Configuration Management"],
    "소프트웨어아키텍처": ["소프트웨어 아키텍처", "SW 아키텍처", "Software Architecture"],
    "결합도": ["결합도", "Coupling"],
    "응집도": ["응집도", "Cohesion"],
    "객체지향": ["객체지향", "객체 지향", "Object Oriented", "OOP"],
    "기능점수": ["기능점수", "기능 점수", "Function Point", "FP "],
    "COCOMO": ["COCOMO"],
    "품질": ["품질", "Quality"],
    "CMMI": ["CMMI"],
    "역공학": ["역공학", "Reverse Engineering"],
    "재공학": ["재공학", "Re-engineering", "Reengineering"],
    "EDA": ["EDA", "Event Driven", "이벤트 기반", "이벤트 드리븐"],
    "SOA": ["SOA", "서비스 지향"],

    # 클라우드
    "클라우드": ["클라우드", "Cloud"],
    "IaaS": ["IaaS"],
    "PaaS": ["PaaS"],
    "SaaS": ["SaaS"],
    "FaaS": ["FaaS", "서버리스", "Serverless"],
    "쿠버네티스": ["쿠버네티스", "Kubernetes", "K8s"],
    "도커": ["도커", "Docker", "컨테이너"],
    "가상화": ["가상화", "Virtualization", "하이퍼바이저", "Hypervisor"],
    "엣지컴퓨팅": ["엣지 컴퓨팅", "엣지컴퓨팅", "Edge Computing"],
    "클라우드네이티브": ["클라우드 네이티브", "클라우드네이티브", "Cloud Native"],
    "멀티클라우드": ["멀티 클라우드", "멀티클라우드", "Multi Cloud", "Multi-Cloud"],
    "오토스케일링": ["오토스케일링", "오토 스케일링", "Auto Scaling"],
    "SLA": ["SLA", "서비스 수준", "Service Level"],

    # OS/컴퓨터구조
    "프로세스": ["프로세스", "Process"],
    "스레드": ["스레드", "Thread"],
    "스케줄링": ["스케줄링", "Scheduling", "스케줄러"],
    "가상메모리": ["가상 메모리", "가상메모리", "Virtual Memory"],
    "페이징": ["페이징", "Paging", "페이지 교체"],
    "캐시": ["캐시", "Cache"],
    "파이프라인": ["파이프라인", "Pipeline"],
    "인터럽트": ["인터럽트", "Interrupt"],
    "DMA": ["DMA", "Direct Memory Access"],
    "세마포어": ["세마포어", "Semaphore"],
    "뮤텍스": ["뮤텍스", "Mutex", "상호배제", "상호 배제"],
    "RAID": ["RAID"],
    "SSD": ["SSD", "Solid State"],
    "메모리": ["메모리", "Memory", "DRAM", "SRAM", "HBM", "FRAM"],
    "CPU": ["CPU", "프로세서", "Processor"],
    "레지스터": ["레지스터", "Register"],
    "RISC": ["RISC", "CISC"],
    "NPU": ["NPU", "Neural Processing"],
    "GPU": ["GPU", "Graphics Processing"],

    # 관리/법제도
    "프로젝트관리": ["프로젝트 관리", "프로젝트관리", "PMBOK", "PMO"],
    "WBS": ["WBS", "작업분류체계", "작업 분류 체계"],
    "EVM": ["EVM", "획득가치", "획득 가치", "Earned Value"],
    "감리": ["감리", "Audit"],
    "ISP": ["ISP", "정보전략계획", "정보 전략 계획"],
    "EA": ["EA ", "엔터프라이즈 아키텍처", "Enterprise Architecture"],
    "IT거버넌스": ["IT 거버넌스", "IT거버넌스", "IT Governance"],
    "BSC": ["BSC", "Balanced Scorecard"],
    "BCP": ["BCP", "업무 연속성", "업무연속성", "재해복구", "DRS", "DR "],
    "ESG": ["ESG"],

    # 블록체인/신기술
    "블록체인": ["블록체인", "블록 체인", "Blockchain"],
    "NFT": ["NFT"],
    "디지털트윈": ["디지털 트윈", "디지털트윈", "Digital Twin"],
    "메타버스": ["메타버스", "Metaverse"],
    "양자컴퓨팅": ["양자 컴퓨팅", "양자컴퓨팅", "Quantum Computing", "큐비트"],
    "자율주행": ["자율주행", "자율 주행", "Autonomous", "ADAS"],
    "스마트팩토리": ["스마트 팩토리", "스마트팩토리", "Smart Factory"],
    "디지털전환": ["디지털 전환", "디지털전환", "Digital Transformation", "DX"],
}

# ─────────────────────────────────────────
# 2. 전체 텍스트에서 키워드 빈도 카운트
# ─────────────────────────────────────────
full_text = "".join(lines)
keyword_counts = {}

for concept, patterns in KEYWORDS.items():
    count = 0
    for pattern in patterns:
        count += full_text.count(pattern)
    if count > 0:
        keyword_counts[concept] = count

sorted_keywords = sorted(keyword_counts.items(), key=lambda x: x[1], reverse=True)

print("\n" + "=" * 60)
print("TOP 50 출제 빈도 키워드")
print("=" * 60)
for i, (kw, cnt) in enumerate(sorted_keywords[:50], 1):
    bar = "█" * min(cnt // 5, 40)
    print(f"{i:3d}. {kw:<20s} {cnt:5d}회  {bar}")

# ─────────────────────────────────────────
# 3. 도메인별 키워드 매핑
# ─────────────────────────────────────────
DOMAIN_MAP = {
    "AI": ["AI", "머신러닝", "딥러닝", "LLM", "생성형 AI", "트랜스포머", "CNN", "RNN", "GAN",
           "강화학습", "RAG", "파인튜닝", "전이학습", "연합학습", "프롬프트", "자연어처리",
           "K-means", "SVM", "의사결정나무", "앙상블", "과적합", "혼동행렬", "F1-Score",
           "MLOps", "온디바이스AI", "XAI", "AI윤리", "뉴로모픽", "에이전틱AI", "멀티모달",
           "데이터마이닝", "연관규칙", "활성화함수", "역전파", "경사하강법", "오토인코더",
           "컴퓨터비전", "추천시스템"],
    "SE": ["암호화", "대칭키", "비대칭키", "해시함수", "디지털서명", "PKI", "인증서",
           "ISMS", "ISMS-P", "개인정보보호", "랜섬웨어", "DDoS", "APT", "제로트러스트",
           "침입탐지", "방화벽", "VPN", "접근제어", "인증", "포렌식", "취약점",
           "SQL인젝션", "XSS", "버퍼오버플로우", "시큐어코딩", "양자암호", "망분리",
           "OWASP", "SBOM", "PET", "동형암호", "SIEM", "SOAR", "EDR", "스푸핑", "피싱"],
    "NW": ["OSI", "TCP", "UDP", "IP", "라우팅", "SDN", "NFV", "5G", "6G", "LTE",
           "Wi-Fi", "IoT", "DNS", "HTTP", "MQTT", "VLAN", "QoS", "CDN", "NAT",
           "멀티캐스트", "서브넷", "슬라이딩윈도우", "ARQ"],
    "DB": ["정규화", "반정규화", "트랜잭션", "동시성제어", "교착상태", "인덱스", "NoSQL",
           "빅데이터", "데이터레이크", "데이터웨어하우스", "하둡", "스파크", "데이터품질",
           "데이터거버넌스", "데이터모델링", "옵티마이저", "파티셔닝", "벡터DB"],
    "SW": ["애자일", "스크럼", "칸반", "폭포수", "DevOps", "CI/CD", "MSA", "디자인패턴",
           "리팩토링", "UML", "테스트", "블랙박스", "화이트박스", "요구공학", "형상관리",
           "소프트웨어아키텍처", "결합도", "응집도", "객체지향", "기능점수", "COCOMO",
           "품질", "CMMI", "역공학", "재공학", "EDA", "SOA"],
    "SV": ["클라우드", "IaaS", "PaaS", "SaaS", "FaaS", "쿠버네티스", "도커", "가상화",
           "엣지컴퓨팅", "클라우드네이티브", "멀티클라우드", "오토스케일링", "SLA"],
    "OS_CA": ["프로세스", "스레드", "스케줄링", "가상메모리", "페이징", "캐시", "파이프라인",
              "인터럽트", "DMA", "세마포어", "뮤텍스", "RAID", "SSD", "메모리", "CPU",
              "레지스터", "RISC", "NPU", "GPU"],
    "MG": ["프로젝트관리", "WBS", "EVM", "감리", "ISP", "EA", "IT거버넌스", "BSC",
           "BCP", "ESG"],
    "ETC": ["블록체인", "NFT", "디지털트윈", "메타버스", "양자컴퓨팅", "자율주행",
            "스마트팩토리", "디지털전환"],
}

print("\n" + "=" * 60)
print("도메인별 출제 빈도 합산")
print("=" * 60)
domain_totals = {}
for domain, kws in DOMAIN_MAP.items():
    total = sum(keyword_counts.get(kw, 0) for kw in kws)
    domain_totals[domain] = total

for domain, total in sorted(domain_totals.items(), key=lambda x: x[1], reverse=True):
    bar = "█" * min(total // 20, 40)
    print(f"  {domain:<8s} {total:5d}  {bar}")

# ─────────────────────────────────────────
# 4. 도메인 간 교차 출제 분석
# ─────────────────────────────────────────
print("\n" + "=" * 60)
print("도메인 간 교차 출제 패턴 (같은 문제에 2개+ 도메인 키워드)")
print("=" * 60)

# 문제 단위로 분리 (빈줄 또는 번호 패턴으로)
questions = []
current_q = []
for line in lines:
    stripped = line.strip()
    if not stripped:
        if current_q:
            questions.append(" ".join(current_q))
            current_q = []
    elif re.match(r'^"?\d+[\.\)]', stripped):
        if current_q:
            questions.append(" ".join(current_q))
        current_q = [stripped]
    else:
        current_q.append(stripped)
if current_q:
    questions.append(" ".join(current_q))

print(f"  추출된 문제 수: {len(questions)}")

cross_domain = Counter()
cross_detail = defaultdict(list)

for q_text in questions:
    q_domains = set()
    q_keywords = []
    for domain, kws in DOMAIN_MAP.items():
        for kw in kws:
            patterns = KEYWORDS.get(kw, [])
            for p in patterns:
                if p in q_text:
                    q_domains.add(domain)
                    q_keywords.append((domain, kw))
                    break

    if len(q_domains) >= 2:
        pair = tuple(sorted(q_domains))
        cross_domain[pair] += 1

for pair, count in sorted(cross_domain.items(), key=lambda x: x[1], reverse=True)[:20]:
    print(f"  {pair[0]:>8s} + {pair[1]:<8s} : {count:4d}건")

# ─────────────────────────────────────────
# 5. 문제 유형 분류
# ─────────────────────────────────────────
print("\n" + "=" * 60)
print("문제 유형 분류")
print("=" * 60)

type_counts = Counter()
for q_text in questions:
    if "비교" in q_text and ("설명" in q_text or "하시오" in q_text):
        type_counts["비교형"] += 1
    if "가." in q_text and "나." in q_text:
        if "다." in q_text and "라." in q_text:
            type_counts["서술형(4항목)"] += 1
        elif "다." in q_text:
            type_counts["서술형(3항목)"] += 1
        else:
            type_counts["서술형(2항목)"] += 1
    if any(w in q_text for w in ["계산", "구하시오", "산출", "도출하시오"]):
        type_counts["계산형"] += 1
    if any(w in q_text for w in ["코드", "프로그램", "함수를 완성", "소스"]):
        type_counts["코드형"] += 1
    if any(w in q_text for w in ["다이어그램", "ERD", "UML", "작성하시오"]):
        type_counts["다이어그램형"] += 1
    if "설명하시오" in q_text and "가." not in q_text:
        type_counts["단답설명형"] += 1

for qtype, cnt in sorted(type_counts.items(), key=lambda x: x[1], reverse=True):
    print(f"  {qtype:<16s} : {cnt:5d}건")

# ─────────────────────────────────────────
# 6. 결과를 JSON으로 저장
# ─────────────────────────────────────────
result = {
    "total_lines": len(lines),
    "total_questions_estimated": len(questions),
    "top50_keywords": [{"rank": i+1, "keyword": kw, "count": cnt}
                       for i, (kw, cnt) in enumerate(sorted_keywords[:50])],
    "domain_totals": domain_totals,
    "cross_domain_top20": [{"domains": list(pair), "count": cnt}
                           for pair, cnt in sorted(cross_domain.items(),
                           key=lambda x: x[1], reverse=True)[:20]],
    "question_types": dict(type_counts),
}

with open("system-docs/STEP3_정량분석결과.json", "w", encoding="utf-8") as f:
    json.dump(result, f, ensure_ascii=False, indent=2)

print("\n결과 저장: system-docs/STEP3_정량분석결과.json")
