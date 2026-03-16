"""프로젝트 전역 설정"""
from pathlib import Path

# 프로젝트 루트 (ontology-project-neo4j/)
PROJECT_ROOT = Path(__file__).parent.parent

# 경로
DOCUMENTS_DIR = PROJECT_ROOT / "documents"
CYPHER_DIR = PROJECT_ROOT / "cypher"
SYSTEM_DOCS_DIR = PROJECT_ROOT / "system-docs"
DATA_DIR = Path(__file__).parent / "data"

# 중간 산출물 경로
PARSED_DIR = DATA_DIR / "parsed"
CLEANED_DIR = DATA_DIR / "cleaned"
ANALYZED_DIR = DATA_DIR / "analyzed"
EXTRACTED_DIR = DATA_DIR / "extracted"

# Neo4j 접속 정보
NEO4J_URI = "bolt://localhost:7687"
NEO4J_USER = "neo4j"
NEO4J_PASSWORD = "ontology2025"

# 13개 도메인 코드
DOMAINS = {
    "PM": {"code": "01.PM", "name": "프로젝트관리"},
    "MG": {"code": "02.MG", "name": "IT경영/관리"},
    "SW": {"code": "03.SW", "name": "소프트웨어공학"},
    "SV": {"code": "04.SV", "name": "서비스/웹/클라우드"},
    "ST": {"code": "05.ST", "name": "통계학"},
    "AI": {"code": "06.AI", "name": "인공지능"},
    "DS": {"code": "07.DS", "name": "자료구조"},
    "AL": {"code": "08.AL", "name": "알고리즘"},
    "SE": {"code": "09.SE", "name": "보안"},
    "DB": {"code": "10.DB", "name": "데이터베이스"},
    "NW": {"code": "11.NW", "name": "네트워크"},
    "CA": {"code": "12.CA", "name": "컴퓨터구조"},
    "OS": {"code": "13.OS", "name": "운영체제"},
}


def ensure_dirs():
    """중간 산출물 디렉토리 생성"""
    for d in [PARSED_DIR, CLEANED_DIR, ANALYZED_DIR, EXTRACTED_DIR]:
        d.mkdir(parents=True, exist_ok=True)
