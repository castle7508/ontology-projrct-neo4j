"""규칙 기반 온톨로지 추출기 v2: ID 통합 + 관계 다양화"""
import json
import re
from pathlib import Path
from dataclasses import dataclass, field

# ────────────────────────────────────────
# 데이터 모델
# ────────────────────────────────────────

@dataclass
class Node:
    """온톨로지 노드"""
    id: str
    label: str  # Concept, Technology, Method, Standard, Threat, Metric
    name: str
    name_kr: str
    domain: str
    definition: str = ""
    aliases: list[str] = field(default_factory=list)

    def to_dict(self) -> dict:
        d = {"id": self.id, "label": self.label, "name": self.name,
             "name_kr": self.name_kr, "domain": self.domain}
        if self.definition:
            d["definition"] = self.definition
        if self.aliases:
            d["aliases"] = self.aliases
        return d


@dataclass
class Relationship:
    """온톨로지 관계"""
    source_id: str
    source_label: str
    target_id: str
    target_label: str
    rel_type: str
    properties: dict = field(default_factory=dict)

    def to_dict(self) -> dict:
        d = {"source_id": self.source_id, "source_label": self.source_label,
             "target_id": self.target_id, "target_label": self.target_label,
             "rel_type": self.rel_type}
        if self.properties:
            d["properties"] = self.properties
        return d


@dataclass
class ExtractionResult:
    """추출 결과"""
    file_id: str
    domain: str
    topic_name: str
    nodes: list[Node] = field(default_factory=list)
    relationships: list[Relationship] = field(default_factory=list)

    def to_dict(self) -> dict:
        return {
            "file_id": self.file_id,
            "domain": self.domain,
            "topic_name": self.topic_name,
            "nodes": [n.to_dict() for n in self.nodes],
            "relationships": [r.to_dict() for r in self.relationships],
        }


# ────────────────────────────────────────
# 노이즈 필터
# ────────────────────────────────────────

NOISE_TERMS = {
    "구분", "정의", "종류", "특성", "설명", "의미", "시점", "유형",
    "특징", "주요사건", "활용사례", "사례", "개념", "비교", "차이점",
    "장점", "단점", "목표", "필요 기법", "영향 요인", "조건",
    "관리 측면", "인력 측면", "기술 측면", "번호", "문제", "회차",
    "좋은 소프트웨어 조건", "알고리즘 측면", "글로벌 동향",
    "인공지능 산업이슈", "인공지능 주요기술 트렌드",
    "동향", "이슈", "트렌드", "배경", "목적", "필요성", "기대효과",
    "결론", "요약", "참고", "출처", "분류", "주제",
    "항목", "내용", "기능", "방식", "절차", "단계", "과정",
    "핵심", "요소", "구성", "구성요소", "대상", "범위",
}

NOISE_PATTERNS = [
    r'^.{40,}$',
    r'^\d+[년월일]',
    r'^-\s',
    r'^\(.+\)$',
    r'^\s*$',
]


def is_noise(text: str) -> bool:
    cleaned = re.sub(r'\s+', ' ', text.replace('\n', ' ')).strip()
    if cleaned.lower() in {t.lower() for t in NOISE_TERMS}:
        return True
    if len(cleaned) < 2:
        return True
    for pattern in NOISE_PATTERNS:
        if re.match(pattern, cleaned):
            return True
    return False


def clean_text(text: str) -> str:
    return re.sub(r'\s+', ' ', text.replace('\n', ' ')).strip()


# ────────────────────────────────────────
# 한글↔영문 매핑 사전 (ID 통합 핵심)
# ────────────────────────────────────────

def build_term_map(data: dict) -> dict[str, str]:
    """문서 전체를 스캔하여 한글→영문 매핑을 수집.
    테이블 셀, 섹션 content에서 "한글(English)" 또는 "English(한글)" 패턴 추출.
    Returns: {한글명: 영문ID} 딕셔너리
    """
    kr_to_en: dict[str, str] = {}

    # 패턴: "한글명(영문명)" 또는 "영문명\n(한글명)"
    pair_pattern = re.compile(
        r'([가-힣][가-힣\s]*?)\s*\(([A-Za-z][A-Za-z0-9\s\-,.]*)\)'
        r'|([A-Za-z][A-Za-z0-9\s\-]*)\s*\(([가-힣][가-힣\s]*)\)'
    )

    def scan_text(text: str):
        for m in pair_pattern.finditer(text):
            if m.group(1) and m.group(2):
                kr = clean_text(m.group(1))
                en = m.group(2).strip()
                en_id = re.sub(r'[\s\-./]+', '_', en.lower()).strip('_')
                if kr and en_id and len(kr) >= 2:
                    kr_to_en[kr] = en_id
            elif m.group(3) and m.group(4):
                en = m.group(3).strip()
                kr = clean_text(m.group(4))
                en_id = re.sub(r'[\s\-./]+', '_', en.lower()).strip('_')
                if kr and en_id and len(kr) >= 2:
                    kr_to_en[kr] = en_id

    # 테이블 스캔
    for table in data.get("tables", []):
        for h in table.get("headers", []):
            scan_text(h)
        for row in table.get("rows", []):
            for cell in row:
                scan_text(cell)

    # 섹션 content 스캔
    for section in data.get("sections", []):
        scan_text(section.get("content", ""))
        scan_text(section.get("heading", ""))

    # raw_text 스캔
    scan_text(data.get("raw_text", ""))

    return kr_to_en


# ────────────────────────────────────────
# ID 생성 (v2: 영문 우선)
# ────────────────────────────────────────

def make_id(text: str, term_map: dict[str, str] | None = None) -> str:
    """텍스트 → 노드 id. 영문 우선 정책."""
    text = clean_text(text)

    # 1) 괄호 안 영문이 있으면 최우선
    eng_match = re.search(r'\(([A-Za-z][A-Za-z0-9\s\-]*)\)', text)
    if eng_match:
        return re.sub(r'[\s\-]+', '_', eng_match.group(1).lower()).strip('_')

    # 2) 순수 영문이면 그대로
    text_clean = re.sub(r'\([^)]*\)', '', text).strip()
    if not text_clean:
        text_clean = text
    if re.match(r'^[A-Za-z0-9\s\-_./]+$', text_clean):
        return re.sub(r'[\s\-./]+', '_', text_clean.lower()).strip('_')

    # 3) term_map에서 영문 ID 찾기 (한글→영문 매핑)
    if term_map and text_clean in term_map:
        return term_map[text_clean]

    # 4) 한글 그대로
    return re.sub(r'\s+', '_', text_clean.lower()).strip('_')


# ────────────────────────────────────────
# 노드 타입 분류
# ────────────────────────────────────────

TECH_PATTERNS = [
    r'\b(CNN|RNN|LSTM|GAN|GPT|BERT|ResNet|VGG|GRU|Transformer)\b',
    r'\b(Docker|Kubernetes|AWS|Azure|GCP|Jenkins|Ansible|Terraform)\b',
    r'\b(MySQL|PostgreSQL|MongoDB|Redis|Elasticsearch|Kafka|RabbitMQ)\b',
    r'\b(React|Vue|Angular|Node\.js|Spring|Django|Flask|Express)\b',
    r'\b(TCP|UDP|HTTP|HTTPS|FTP|SSH|SSL|TLS|IPSec|VPN)\b',
    r'\b(AES|DES|RSA|SHA|MD5|HMAC|ECC|ARIA|SEED)\b',
    r'\b(IDS|IPS|WAF|SIEM|EDR|NAC|DLP|UTM)\b',
    r'\b(AlphaGo|Watson|DeepBlue|WaveNet|YOLO)\b',
    r'\b(Hadoop|Spark|MapReduce|Hive|Pig|Flume)\b',
    r'\b(OAuth|SAML|Kerberos|LDAP|RADIUS)\b',
    r'\b(OSPF|BGP|RIP|EIGRP|MPLS|SDN|NFV)\b',
    r'\b(LTE|5G|Wi-?Fi|Bluetooth|ZigBee|LoRa|NB-?IoT)\b',
]

METHOD_PATTERNS = [
    r'\b(SVM|K-Means|KNN|PCA|DBSCAN|Apriori)\b',
    r'\b(Agile|Scrum|Kanban|XP|Waterfall|Spiral|DevOps|CI/CD)\b',
    r'\b(Backpropagation|Gradient.Descent|Adam|SGD)\b',
    r'\b(SDLC|RUP|RAD|Prototype|Incremental)\b',
    r'\b(DFS|BFS|Dijkstra|Floyd|Kruskal|Prim)\b',
    r'\b(Quick.?Sort|Merge.?Sort|Heap.?Sort|Bubble.?Sort)\b',
]

STANDARD_PATTERNS = [
    r'\b(ISO\s*\d+|IEEE\s*\d+|NIST|RFC\s*\d+|ITU|IETF)\b',
    r'\b(CMMI|SPICE|COBIT|ITIL|TOGAF|PMBOK)\b',
    r'\b(ISMS|PIMS|ISO\s*27001|CC|EAL)\b',
]

THREAT_PATTERNS = [
    r'(DDoS|DoS|랜섬웨어|피싱|스미싱|파밍|APT|제로데이)',
    r'(SQL\s*Injection|XSS|CSRF|Buffer\s*Overflow)',
    r'(악성코드|바이러스|웜|트로이목마|스파이웨어|봇넷)',
    r'(스니핑|스푸핑|세션\s*하이재킹|중간자\s*공격)',
    r'(백도어|루트킷|키로거|애드웨어)',
]

METRIC_PATTERNS = [
    r'(F1.Score|정확도|재현율|정밀도|AUC|ROC)',
    r'(가용성|무결성|기밀성)',
    r'\b(MTTF|MTBF|MTTR|SLA)\b',
    r'\b(FP|LOC|McCabe|Halstead)\b',
    r'(결합도|응집도|복잡도)',
]

LAW_PATTERNS = [
    r'(개인정보보호법|정보통신망법|전자서명법|전자정부법)',
    r'\b(GDPR|CCPA|HIPAA)\b',
    r'(저작권법|전자금융거래법|클라우드컴퓨팅법)',
]


def classify_node_type(name: str, name_kr: str, domain: str, context: str = "") -> str:
    combined = f"{name} {name_kr} {context}"

    for pattern in THREAT_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Threat"
    for pattern in STANDARD_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Standard"
    for pattern in LAW_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Law"
    for pattern in METRIC_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Metric"
    for pattern in TECH_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Technology"
    for pattern in METHOD_PATTERNS:
        if re.search(pattern, combined, re.IGNORECASE):
            return "Method"

    return "Concept"


# ────────────────────────────────────────
# 한글(영문) 패턴 추출
# ────────────────────────────────────────

def extract_korean_english_pair(text: str) -> tuple[str, str, list[str]]:
    text = clean_text(text)

    # 패턴1: "한글명(영문명)"
    m = re.match(r'^(.+?)\s*\(([A-Za-z][A-Za-z0-9\s\-,./]*)\)\s*$', text)
    if m:
        name_kr = m.group(1).strip()
        name_en = m.group(2).strip()
        return name_en, name_kr, [name_en, name_kr]

    # 패턴2: "영문명(한글명)"
    m = re.match(r'^([A-Za-z][A-Za-z0-9\s\-]*)\s*\((.+?)\)\s*$', text)
    if m:
        name_en = m.group(1).strip()
        name_kr = m.group(2).strip()
        return name_en, name_kr, [name_en, name_kr]

    # 패턴3: 순수 영문
    if re.match(r'^[A-Za-z][A-Za-z0-9\s\-./]*$', text):
        return text.strip(), text.strip(), [text.strip()]

    return text.strip(), text.strip(), []


# ────────────────────────────────────────
# 관계 키워드 기반 추론
# ────────────────────────────────────────

# 섹션 헤딩에서 관계 유형 추론
HEADING_REL_PATTERNS = [
    (r'비교|차이점|대비|versus|vs', 'COMPARED_WITH'),
    (r'구성요소|구성|아키텍처|계층|구조', 'HAS_COMPONENT'),
    (r'단계|절차|프로세스|과정|순서', 'HAS_PHASE'),
    (r'유형|종류|분류|타입|카테고리', 'HAS_TYPE'),
    (r'발전|진화|역사|변천|세대', 'EVOLVED_FROM'),
    (r'대응|방어|예방|보호|대책', 'COUNTERED_BY'),
    (r'위협|공격|취약|악용', 'THREATENS'),
    (r'활용|적용|사용|응용', 'USES'),
    (r'의존|기반|필요|전제', 'DEPENDS_ON'),
]

def infer_relationship_type(heading: str, default: str = "HAS_COMPONENT") -> str:
    """섹션 헤딩에서 관계 유형 추론"""
    for pattern, rel_type in HEADING_REL_PATTERNS:
        if re.search(pattern, heading):
            return rel_type
    return default


# ────────────────────────────────────────
# 핵심 추출 로직 (v2)
# ────────────────────────────────────────

def extract_from_json(data: dict) -> ExtractionResult:
    file_id = data.get("file_id", "")
    domain = data.get("domain", "")
    metadata = data.get("metadata", {})
    topic_name = clean_text(metadata.get("topic_name", ""))
    classification = metadata.get("classification", "")
    keywords_str = metadata.get("keywords", "")

    # 1단계: 한글→영문 매핑 수집 (ID 통합용)
    term_map = build_term_map(data)

    result = ExtractionResult(file_id=file_id, domain=domain, topic_name=topic_name)
    seen_ids: set[str] = set()

    def add_node(node: Node) -> bool:
        if node.id and node.id not in seen_ids and not is_noise(node.name_kr):
            seen_ids.add(node.id)
            result.nodes.append(node)
            return True
        return False

    # 2단계: 메인 토픽 노드 (영문 ID 우선)
    main_id = ""
    main_label = "Concept"
    if topic_name:
        name_en, name_kr, aliases = extract_korean_english_pair(topic_name)
        main_id = make_id(topic_name, term_map)
        main_label = classify_node_type(name_en, name_kr, domain)
        # term_map에서 영문명을 찾았으면 name 업데이트
        if topic_name in term_map and name_en == name_kr:
            # 한글만 있었는데 매핑 발견
            for kr, en_id in term_map.items():
                if kr == topic_name:
                    name_en = en_id.replace('_', ' ').title()
                    if name_kr not in aliases:
                        aliases.append(name_kr)
                    break
        main_node = Node(
            id=main_id, label=main_label, name=name_en,
            name_kr=name_kr, domain=domain, aliases=aliases,
        )
        add_node(main_node)

    # 3단계: classification 경로 (SUBCLASS_OF)
    if classification:
        parts = [p.strip() for p in classification.split(">") if p.strip()]
        concept_ids = []
        for part in parts:
            if re.match(r'^[A-Z]{2}$', part):
                continue
            part = clean_text(part)
            if is_noise(part):
                continue
            cid = make_id(part, term_map)
            name_en, name_kr, aliases = extract_korean_english_pair(part)
            label = classify_node_type(name_en, name_kr, domain)
            node = Node(id=cid, label=label, name=name_en,
                       name_kr=name_kr, domain=domain, aliases=aliases)
            add_node(node)
            concept_ids.append((cid, label))

        for i in range(len(concept_ids) - 1):
            child_id, child_label = concept_ids[i + 1]
            parent_id, parent_label = concept_ids[i]
            result.relationships.append(Relationship(
                source_id=child_id, source_label=child_label,
                target_id=parent_id, target_label=parent_label,
                rel_type="SUBCLASS_OF",
            ))

    # 4단계: keywords → 보조 노드
    if keywords_str:
        keywords = re.split(r'[,\n]', keywords_str)
        for kw in keywords:
            kw = clean_text(kw)
            if not kw or len(kw) < 2 or len(kw) > 20:
                continue
            if re.search(r'[을를의에서으로과와].*[을를의에서으로과와]', kw):
                continue
            if is_noise(kw):
                continue
            kw_id = make_id(kw, term_map)
            if kw_id == main_id:
                continue
            name_en, name_kr, aliases = extract_korean_english_pair(kw)
            label = classify_node_type(name_en, name_kr, domain)
            node = Node(id=kw_id, label=label, name=name_en,
                       name_kr=name_kr, domain=domain, aliases=aliases)
            if add_node(node):
                if main_id:
                    result.relationships.append(Relationship(
                        source_id=main_id, source_label=main_label,
                        target_id=kw_id, target_label=label,
                        rel_type="HAS_COMPONENT",
                    ))

    # 5단계: 테이블에서 노드/관계 추출 + 비교표 COMPARED_WITH
    tables = data.get("tables", [])
    sections = data.get("sections", [])
    # 현재 활성 헤딩 (관계 추론용)
    current_heading = ""
    for section in sections:
        heading = clean_text(section.get("heading", ""))
        if heading:
            current_heading = heading

    for table in tables:
        _extract_from_table(table, domain, topic_name, main_id, main_label,
                           result, seen_ids, term_map, current_heading)

    # 6단계: Document + MENTIONED_IN
    if main_id:
        result.relationships.append(Relationship(
            source_id=main_id, source_label=main_label,
            target_id=file_id, target_label="Document",
            rel_type="MENTIONED_IN",
        ))

    # 7단계: BELONGS_TO
    for node in result.nodes:
        result.relationships.append(Relationship(
            source_id=node.id, source_label=node.label,
            target_id=domain, target_label="Domain",
            rel_type="BELONGS_TO",
        ))

    return result


def _extract_from_table(table: dict, domain: str, topic_name: str,
                        main_id: str, main_label: str,
                        result: ExtractionResult, seen_ids: set[str],
                        term_map: dict[str, str], heading: str):
    """테이블에서 노드/관계 추출 (v2: 비교표 COMPARED_WITH 포함)"""
    headers = table.get("headers", [])
    rows = table.get("rows", [])

    if not headers or not rows:
        return

    first_header = clean_text(headers[0]) if headers else ""

    skip_patterns = [
        "토픽 이름", "번호", "포함관계", "출처", "*",
        "암기법", "키워드",
    ]
    for sp in skip_patterns:
        if sp in first_header or first_header.startswith(sp):
            return
    if not first_header or "⊂" in first_header:
        return

    header_lower = [clean_text(h).lower() for h in headers]

    # 헤딩 기반 관계 추론
    rel_type = infer_relationship_type(heading) if heading else "HAS_COMPONENT"

    # 패턴 C: 비교 테이블 (구분/A/B/C) → COMPARED_WITH
    definition_headers = {"구분", "특성", "종류", "분류", "주제"}
    if len(headers) >= 3 and header_lower[0] in definition_headers and _is_comparison_table(headers):
        concept_ids = []
        for h in headers[1:]:
            h_clean = clean_text(h)
            if not h_clean or is_noise(h_clean):
                continue
            name_en, name_kr, aliases = extract_korean_english_pair(h_clean)
            node_id = make_id(h_clean, term_map)
            if not node_id:
                continue
            label = classify_node_type(name_en, name_kr, domain)
            node = Node(id=node_id, label=label, name=name_en,
                       name_kr=name_kr, domain=domain, aliases=aliases)
            if node_id not in seen_ids:
                seen_ids.add(node_id)
                result.nodes.append(node)
            concept_ids.append((node_id, label))

        # 비교 대상들 간 COMPARED_WITH
        for i in range(len(concept_ids)):
            for j in range(i + 1, len(concept_ids)):
                id_a, label_a = concept_ids[i]
                id_b, label_b = concept_ids[j]
                result.relationships.append(Relationship(
                    source_id=id_a, source_label=label_a,
                    target_id=id_b, target_label=label_b,
                    rel_type="COMPARED_WITH",
                ))
            # 각 비교 항목 → 메인 토픽 관계
            if main_id and concept_ids[i][0] != main_id:
                result.relationships.append(Relationship(
                    source_id=main_id, source_label=main_label,
                    target_id=concept_ids[i][0], target_label=concept_ids[i][1],
                    rel_type="HAS_COMPONENT",
                ))
        return

    # 패턴 A: "구분/정의" 계열
    if len(headers) >= 2 and header_lower[0] in definition_headers:
        for row in rows:
            if len(row) < 2:
                continue
            term = clean_text(row[0])
            if not term or term.startswith("-") or is_noise(term):
                continue

            definition = clean_text(row[1]) if len(row) > 1 else ""
            definition = definition.lstrip("- ").split("\n")[0]
            if len(definition) > 200:
                definition = definition[:200]

            name_en, name_kr, aliases = extract_korean_english_pair(term)
            node_id = make_id(term, term_map)
            if not node_id or node_id in seen_ids:
                continue

            label = classify_node_type(name_en, name_kr, domain, definition)
            node = Node(
                id=node_id, label=label, name=name_en,
                name_kr=name_kr, domain=domain,
                definition=definition, aliases=aliases,
            )
            seen_ids.add(node_id)
            result.nodes.append(node)

            if main_id:
                result.relationships.append(Relationship(
                    source_id=main_id, source_label=main_label,
                    target_id=node_id, target_label=label,
                    rel_type=rel_type,
                ))

    # 패턴 B: "주제/의미/사례" 테이블
    elif len(headers) >= 2 and header_lower[0] == "주제":
        for row in rows:
            if len(row) < 2:
                continue
            term = clean_text(row[0])
            if not term or is_noise(term):
                continue

            definition = clean_text(row[1]) if len(row) > 1 else ""
            definition = definition.lstrip("- ").split("\n")[0][:200]

            name_en, name_kr, aliases = extract_korean_english_pair(term)
            node_id = make_id(term, term_map)
            if not node_id or node_id in seen_ids:
                continue

            label = classify_node_type(name_en, name_kr, domain, definition)
            node = Node(
                id=node_id, label=label, name=name_en,
                name_kr=name_kr, domain=domain,
                definition=definition, aliases=aliases,
            )
            seen_ids.add(node_id)
            result.nodes.append(node)

            if main_id:
                result.relationships.append(Relationship(
                    source_id=main_id, source_label=main_label,
                    target_id=node_id, target_label=label,
                    rel_type=rel_type,
                ))


def _is_comparison_table(headers: list[str]) -> bool:
    if len(headers) < 3:
        return False
    non_generic = 0
    for h in headers[1:]:
        h_clean = clean_text(h)
        if h_clean and not is_noise(h_clean) and len(h_clean) > 1:
            non_generic += 1
    return non_generic >= 2


# ────────────────────────────────────────
# 배치 처리
# ────────────────────────────────────────

def extract_file(json_path: Path) -> ExtractionResult:
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    return extract_from_json(data)


def extract_domain(parsed_dir: Path, domain: str) -> list[ExtractionResult]:
    results = []
    pattern = f"{domain}_*.json"
    files = sorted(parsed_dir.glob(pattern))
    for f in files:
        try:
            result = extract_file(f)
            results.append(result)
        except Exception as e:
            print(f"  [ERROR] {f.name}: {e}")
    return results
