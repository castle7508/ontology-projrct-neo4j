"""IT 학습 튜터 AI 에이전트 — Streamlit 메인 앱"""
import json
import sys
import time
from pathlib import Path

# tools/ 디렉토리를 import 경로에 추가
sys.path.insert(0, str(Path(__file__).parent.parent))

import streamlit as st
import config

st.set_page_config(page_title="IT 학습 튜터", page_icon="🧠", layout="wide")

from app.components.sidebar import render_sidebar
from agent.prompts import (
    TUTOR_SYSTEM,
    SOLVER_SYSTEM,
    ESSAY_SYSTEM,
    KEYWORD_EXTRACT_SYSTEM,
    format_llm_context,
)
from graphrag.searcher import expand_node


# ── 공통 헬퍼 ──


def _extract_keywords(raw: str) -> list[str]:
    """KEYWORD_EXTRACT_SYSTEM의 JSON 응답에서 검색 키워드를 추출.
    JSON 파싱 실패 시 comma split 폴백."""
    try:
        data = json.loads(raw)
        keywords = []
        for pc in data.get("primary_concepts", []):
            if isinstance(pc, dict):
                keywords.append(pc.get("term_ko", ""))
            elif isinstance(pc, str):
                keywords.append(pc)
        for ct in data.get("comparison_targets", []):
            if isinstance(ct, dict):
                keywords.append(ct.get("term_ko", ""))
        keywords.extend(data.get("graph_search_queries", []))
        return [kw for kw in keywords if kw]
    except (json.JSONDecodeError, TypeError, AttributeError):
        return [kw.strip() for kw in raw.split(",") if kw.strip()]


def _search_essay_context(tutor, query: str) -> tuple[list[str], list[dict], str]:
    """서술형 답안용: 키워드 추출 → Neo4j 검색 → 컨텍스트 조합.
    Returns (keywords, seeds, context_str)."""
    try:
        keywords_str = tutor.gemini.generate(KEYWORD_EXTRACT_SYSTEM, "", query)
        keywords = _extract_keywords(keywords_str)
    except Exception:
        keywords = [query[:50]]

    all_seeds, all_expansions, seen_ids = [], {}, set()
    for kw in keywords[:5]:
        seeds, _ = tutor._search_context(kw, limit=3, depth=1)
        for seed in seeds:
            if seed["id"] not in seen_ids:
                seen_ids.add(seed["id"])
                all_seeds.append(seed)
                all_expansions[seed["id"]] = expand_node(tutor.driver, seed["id"], depth=1)

    ctx = format_llm_context(all_seeds, all_expansions)
    return keywords, all_seeds, ctx


# ── 메인 ──


def main():
    st.title("🧠 IT 학습 튜터")

    tutor = render_sidebar()

    if tutor is None:
        st.info("👈 사이드바에서 Neo4j 연결 확인 및 Gemini API Key를 설정하세요.")
        return

    # 5개 탭
    tab1, tab2, tab3, tab4, tab5 = st.tabs(
        ["📚 개념 학습", "📝 기출 풀이", "🎯 문제 출제", "✍️ 서술형 답안", "🔬 RAG 검증"]
    )

    with tab1:
        _tab_concept(tutor)

    with tab2:
        _tab_exam(tutor)

    with tab3:
        _tab_generate(tutor)

    with tab4:
        _tab_essay(tutor)

    with tab5:
        _tab_rag_compare(tutor)


# ── 탭 1: 개념 학습 ──


def _tab_concept(tutor):
    st.subheader("개념 검색 및 학습")
    depth = st.session_state.get("search_depth", 1)
    query = st.text_input("학습할 개념을 입력하세요", placeholder="예: 딥러닝, TCP/IP, 정규화", key="concept_query")

    if st.button("검색", key="concept_btn") and query:
        with st.spinner("지식그래프 검색 중..."):
            seeds, ctx = tutor._search_context(query, limit=5, depth=depth)
        with st.expander(f"📊 Neo4j 검색 컨텍스트 (시드 {len(seeds)}개)", expanded=False):
            if ctx:
                st.code(ctx, language="markdown")
            else:
                st.warning("검색 결과 없음")
        if ctx:
            st.write_stream(tutor.gemini.generate_stream(TUTOR_SYSTEM, ctx, query))
        else:
            st.warning(f"'{query}'에 대한 관련 개념을 찾지 못했습니다.")


# ── 탭 2: 기출문제 풀이 ──


def _tab_exam(tutor):
    st.subheader("기출문제 검색 및 해설")
    depth = st.session_state.get("search_depth", 1)

    col1, col2 = st.columns([3, 1])
    with col1:
        keyword = st.text_input("키워드 검색", placeholder="예: SQL Injection, 정규화", key="exam_keyword")
    with col2:
        st.write("")  # 정렬용
        st.write("")
        random_btn = st.button("🎲 랜덤 출제", key="exam_random")

    domain = st.session_state.get("selected_domain", "")

    # 문제 검색/랜덤
    keyword_stripped = keyword.strip() if keyword else ""
    if keyword_stripped or random_btn:
        questions = tutor.get_questions(keyword=keyword_stripped, domain=domain, limit=5)
        if not questions:
            st.warning("관련 문제를 찾지 못했습니다.")
        else:
            st.session_state.exam_questions = questions

    # 문제 목록 표시
    questions = st.session_state.get("exam_questions", [])
    if questions:
        for i, q in enumerate(questions):
            text = q.get("text", "")[:300]
            session_name = q.get("exam_session", "?")
            with st.expander(f"문제 {i+1} [{session_name}] {q.get('domain', '')}", expanded=(i == 0)):
                st.markdown(text)
                if st.button("해설 보기", key=f"solve_{i}"):
                    seeds, ctx = tutor._search_context(text[:100], limit=3, depth=depth)
                    with st.expander(f"📊 Neo4j 컨텍스트 (시드 {len(seeds)}개)", expanded=False):
                        st.code(ctx if ctx else "검색 결과 없음", language="markdown")
                    st.write_stream(tutor.gemini.generate_stream(SOLVER_SYSTEM, ctx, text))


# ── 탭 3: 문제 출제 ──


def _tab_generate(tutor):
    st.subheader("새 문제 출제")

    col1, col2, col3 = st.columns(3)
    with col1:
        domain = st.selectbox("도메인", list(config.DOMAINS.keys()), key="gen_domain")
    with col2:
        difficulty = st.selectbox("난이도", ["하", "중", "상"], index=1, key="gen_diff")
    with col3:
        q_type = st.selectbox("유형", ["객관식", "단답형", "서술형"], key="gen_type")

    if st.button("출제", key="gen_btn"):
        with st.spinner("문제 생성 중..."):
            result = tutor.generate_question(domain=domain, difficulty=difficulty, q_type=q_type)

        if "error" in result:
            st.error(result["error"])
        elif result:
            st.session_state.generated_q = result
        else:
            st.error("문제 생성에 실패했습니다. 다시 시도하세요.")

    # session_state에서 문제 읽기 (rerun 후에도 유지)
    result = st.session_state.get("generated_q")
    if not result:
        return

    st.markdown(f"### 문제\n{result.get('question', '')}")

    choices = result.get("choices", [])
    if choices:
        for j, choice in enumerate(choices):
            st.markdown(f"{j+1}. {choice}")

    # 사용자 답변
    user_answer = st.text_area("답변을 입력하세요", key="gen_user_answer")
    if st.button("채점", key="gen_grade") and user_answer:
        correct = result.get("answer", "")
        st.write_stream(tutor.grade_answer(
            question=result.get("question", ""),
            correct_answer=correct,
            user_answer=user_answer,
        ))

    with st.expander("모범답안 보기"):
        st.markdown(f"**정답:** {result.get('answer', '')}")
        st.markdown(f"**해설:** {result.get('explanation', '')}")


# ── 탭 4: 서술형 답안 ──


def _tab_essay(tutor):
    st.subheader("서술형 답안 작성")

    question_text = st.text_area(
        "서술형 문제를 입력하세요",
        placeholder="예: TCP와 UDP의 차이점을 설명하고, 각각의 활용 사례를 서술하시오.",
        height=120,
        key="essay_question",
    )

    if st.button("답안 작성", key="essay_btn") and question_text:
        with st.spinner("키워드 추출 + 지식그래프 검색 중..."):
            keywords, all_seeds, ctx = _search_essay_context(tutor, question_text)

        st.caption(f"추출 키워드: {', '.join(keywords)}")
        with st.expander(f"📊 Neo4j 검색 컨텍스트 (시드 {len(all_seeds)}개)", expanded=False):
            if ctx:
                st.code(ctx, language="markdown")
            else:
                st.warning("검색 결과 없음")

        if not ctx:
            ctx = "(관련 개념을 찾지 못했습니다. 일반 지식으로 답변합니다.)"
        st.write_stream(tutor.gemini.generate_stream(ESSAY_SYSTEM, ctx, question_text))


# ── 탭 5: RAG 검증 ──


def _tab_rag_compare(tutor):
    st.subheader("RAG 검증: 온톨로지 활용 vs Gemini 단독")
    st.caption("동일 질문에 대해 Neo4j 지식그래프 컨텍스트를 제공한 답변과 Gemini만 사용한 답변을 비교합니다.")

    # 모드 선택
    mode = st.radio(
        "비교 유형",
        ["개념 설명", "서술형 답안"],
        horizontal=True,
        key="rag_mode",
    )

    query = st.text_area(
        "질문 입력",
        placeholder="예: TCP와 UDP의 차이점을 설명하시오." if mode == "서술형 답안"
        else "예: 딥러닝, 정규화, AES",
        height=80,
        key="rag_query",
    )

    if st.button("비교 실행", key="rag_btn", type="primary") and query:
        system_prompt = ESSAY_SYSTEM if mode == "서술형 답안" else TUTOR_SYSTEM
        depth = st.session_state.get("search_depth", 1)

        # ── RAG 모드: Neo4j 검색 + Gemini ──
        with st.spinner("Neo4j 지식그래프 검색 중..."):
            t0 = time.time()
            if mode == "서술형 답안":
                _, rag_seeds, rag_ctx = _search_essay_context(tutor, query)
            else:
                rag_seeds, rag_ctx = tutor._search_context(query, limit=5, depth=depth)
            rag_search_time = time.time() - t0

        if not rag_ctx:
            rag_ctx_for_llm = "(관련 개념을 찾지 못했습니다. 일반 지식으로 답변합니다.)"
        else:
            rag_ctx_for_llm = rag_ctx

        with st.spinner("RAG + Non-RAG 답변 생성 중..."):
            t0 = time.time()
            rag_response = tutor.gemini.generate(system_prompt, rag_ctx_for_llm, query)
            rag_gen_time = time.time() - t0

            t0 = time.time()
            plain_response = tutor.gemini.generate(system_prompt, "", query)
            plain_gen_time = time.time() - t0

        # session_state에 저장 (평가 버튼용)
        st.session_state.rag_compare_result = {
            "query": query,
            "system_prompt": system_prompt,
            "rag_response": rag_response,
            "plain_response": plain_response,
            "rag_ctx": rag_ctx or "",
            "rag_search_time": rag_search_time,
            "rag_gen_time": rag_gen_time,
            "plain_gen_time": plain_gen_time,
            "rag_seed_count": len(rag_seeds),
        }

    # session_state에서 결과 표시 (rerun 후에도 유지)
    cmp = st.session_state.get("rag_compare_result")
    if not cmp:
        return

    # 두 컬럼으로 나란히 표시
    col_rag, col_plain = st.columns(2)

    with col_rag:
        st.markdown("### 🟢 RAG 모드 (온톨로지 + Gemini)")
        st.caption(f"Neo4j 검색: {cmp['rag_search_time']:.2f}s | 시드 {cmp['rag_seed_count']}개")

        with st.expander("📊 Neo4j 컨텍스트", expanded=False):
            if cmp["rag_ctx"]:
                st.code(cmp["rag_ctx"], language="markdown")
            else:
                st.warning("검색 결과 없음")

        st.caption(f"생성 시간: {cmp['rag_gen_time']:.2f}s")
        st.markdown(cmp["rag_response"])

    with col_plain:
        st.markdown("### 🔴 Non-RAG 모드 (Gemini 단독)")
        st.caption("컨텍스트 없이 Gemini 모델의 내재 지식만 사용")
        st.caption(f"생성 시간: {cmp['plain_gen_time']:.2f}s")
        st.markdown(cmp["plain_response"])

    # ── 비교 분석 요약 ──
    st.divider()
    st.markdown("### 📊 비교 분석")

    m1, m2, m3, m4 = st.columns(4)
    m1.metric("RAG 검색 시간", f"{cmp['rag_search_time']:.2f}s")
    m2.metric("RAG 생성 시간", f"{cmp['rag_gen_time']:.2f}s")
    m3.metric("Non-RAG 생성 시간", f"{cmp['plain_gen_time']:.2f}s")
    m4.metric("RAG 시드 수", f"{cmp['rag_seed_count']}개")

    rag_len = len(cmp["rag_response"])
    plain_len = len(cmp["plain_response"])
    l1, l2, l3 = st.columns(3)
    l1.metric("RAG 답변 길이", f"{rag_len:,}자")
    l2.metric("Non-RAG 답변 길이", f"{plain_len:,}자")
    l3.metric("길이 차이", f"{rag_len - plain_len:+,}자")

    # 자동 평가 요청
    if st.button("AI 자동 평가 (두 답변 비교)", key="rag_eval_btn"):
        eval_prompt = f"""두 답변을 비교 평가해주세요.

[질문]
{cmp['query']}

[답변 A — RAG 모드 (Neo4j 지식그래프 컨텍스트 활용)]
{cmp['rag_response'][:3000]}

[답변 B — Non-RAG 모드 (LLM 내재 지식만 사용)]
{cmp['plain_response'][:3000]}

다음 5가지 기준으로 각 답변을 1~10점 평가하고, 표로 정리하세요:
1. 정확성: 기술 개념의 정의/원리 오류 여부
2. 구체성: 구체적 예시, 수치, 표준명 포함 여부
3. 구조성: 논리적 흐름과 체계적 구성
4. 최신성: 2024~2025 기술 트렌드 반영 여부
5. 실전성: 기술사 시험 답안으로 직접 활용 가능한 수준

마지막에 "RAG 기여도 분석" 섹션을 추가하여, 지식그래프가 답변 품질에 기여한 구체적 부분을 분석하세요."""

        eval_system = "당신은 IT 기술 답변 품질 평가 전문가입니다. 객관적이고 구체적으로 비교 평가합니다."
        st.write_stream(tutor.gemini.generate_stream(eval_system, "", eval_prompt))


if __name__ == "__main__":
    main()
