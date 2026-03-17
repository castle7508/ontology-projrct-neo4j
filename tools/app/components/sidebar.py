"""Streamlit 사이드바: 설정, 연결 상태, 토큰 사용량"""
import streamlit as st
from neo4j import GraphDatabase

import config


DOMAIN_OPTIONS = {f"{code} ({info['name']})": code for code, info in config.DOMAINS.items()}


def render_sidebar():
    """사이드바 렌더링. Tutor 인스턴스를 반환 (또는 None)."""
    st.sidebar.title("⚙️ 설정")

    # ── API 키 ──
    api_key = st.sidebar.text_input(
        "Gemini API Key",
        value=st.session_state.get("gemini_api_key", config.GEMINI_API_KEY),
        type="password",
        help="Google AI Studio에서 발급: https://aistudio.google.com/apikey",
    )
    if api_key:
        st.session_state.gemini_api_key = api_key

    # ── 모델 선택 ──
    model = st.sidebar.selectbox(
        "모델",
        ["gemini-2.5-flash", "gemini-2.5-pro"],
        index=0,
    )

    # ── 도메인 필터 ──
    domain_display = st.sidebar.selectbox(
        "도메인 필터",
        ["전체"] + list(DOMAIN_OPTIONS.keys()),
        index=0,
    )
    domain_code = DOMAIN_OPTIONS.get(domain_display, "")
    st.session_state.selected_domain = domain_code

    # ── 검색 깊이 ──
    search_depth = st.sidebar.slider("검색 깊이 (hop)", 1, 2, 1)
    st.session_state.search_depth = search_depth

    # ── 연결 상태 ──
    st.sidebar.divider()
    st.sidebar.subheader("📡 연결 상태")

    # Neo4j
    neo4j_ok = _check_neo4j()
    if neo4j_ok:
        st.sidebar.success("Neo4j: 연결됨")
    else:
        st.sidebar.error("Neo4j: 연결 실패")
        st.sidebar.caption("`docker-compose up -d` 실행하세요")

    # Gemini
    gemini_ok = bool(api_key)
    if gemini_ok:
        st.sidebar.success("Gemini: API 키 설정됨")
    else:
        st.sidebar.warning("Gemini: API 키 필요")

    # ── Tutor 인스턴스 생성 ──
    tutor = None
    if neo4j_ok and gemini_ok:
        tutor = _get_tutor(api_key, model)

    # ── 토큰 사용량 ──
    if tutor and hasattr(tutor.gemini, "token_usage"):
        usage = tutor.gemini.token_usage
        st.sidebar.divider()
        st.sidebar.subheader("📊 토큰 사용량")
        col1, col2 = st.sidebar.columns(2)
        col1.metric("Input", f"{usage['input']:,}")
        col2.metric("Output", f"{usage['output']:,}")

    return tutor


@st.cache_resource
def _get_neo4j_driver():
    """Neo4j 드라이버 싱글턴"""
    return GraphDatabase.driver(
        config.NEO4J_URI,
        auth=(config.NEO4J_USER, config.NEO4J_PASSWORD),
    )


def _check_neo4j() -> bool:
    """Neo4j 연결 상태 확인"""
    try:
        driver = _get_neo4j_driver()
        driver.verify_connectivity()
        return True
    except Exception:
        return False


def _get_tutor(api_key: str, model: str):
    """Tutor 인스턴스 생성/캐싱"""
    from agent.llm import GeminiClient
    from agent.tutor import Tutor

    # 키 또는 모델이 바뀌면 새 클라이언트 생성
    cache_key = f"{api_key[:8]}_{model}"
    if st.session_state.get("_tutor_cache_key") != cache_key:
        gemini = GeminiClient(api_key=api_key, model=model)
        driver = _get_neo4j_driver()
        st.session_state._tutor_instance = Tutor(driver=driver, gemini=gemini)
        st.session_state._tutor_cache_key = cache_key

    return st.session_state._tutor_instance
