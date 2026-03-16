"""IT 학습 튜터 AI 에이전트 — Streamlit 메인 앱"""
import sys
from pathlib import Path

# tools/ 디렉토리를 import 경로에 추가
sys.path.insert(0, str(Path(__file__).parent.parent))

import streamlit as st
import config

st.set_page_config(page_title="IT 학습 튜터", page_icon="🧠", layout="wide")

from app.components.sidebar import render_sidebar


def main():
    st.title("🧠 IT 학습 튜터")

    tutor = render_sidebar()

    if tutor is None:
        st.info("👈 사이드바에서 Neo4j 연결 확인 및 Gemini API Key를 설정하세요.")
        return

    # 4개 탭
    tab1, tab2, tab3, tab4 = st.tabs(["📚 개념 학습", "📝 기출 풀이", "🎯 문제 출제", "✍️ 서술형 답안"])

    with tab1:
        _tab_concept(tutor)

    with tab2:
        _tab_exam(tutor)

    with tab3:
        _tab_generate(tutor)

    with tab4:
        _tab_essay(tutor)


def _tab_concept(tutor):
    """탭 1: 개념 학습"""
    st.subheader("개념 검색 및 학습")
    query = st.text_input("학습할 개념을 입력하세요", placeholder="예: 딥러닝, TCP/IP, 정규화", key="concept_query")

    if st.button("검색", key="concept_btn") and query:
        with st.spinner("지식그래프 검색 + 답변 생성 중..."):
            st.write_stream(tutor.explain_concept(query, domain=st.session_state.get("selected_domain", "")))


def _tab_exam(tutor):
    """탭 2: 기출문제 풀이"""
    st.subheader("기출문제 검색 및 해설")

    col1, col2 = st.columns([3, 1])
    with col1:
        keyword = st.text_input("키워드 검색", placeholder="예: SQL Injection, 정규화", key="exam_keyword")
    with col2:
        st.write("")  # 정렬용
        st.write("")
        random_btn = st.button("🎲 랜덤 출제", key="exam_random")

    domain = st.session_state.get("selected_domain", "")

    # 문제 검색/랜덤
    if keyword or random_btn:
        questions = tutor.get_questions(keyword=keyword, domain=domain, limit=5)
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
                if st.button(f"해설 보기", key=f"solve_{i}"):
                    st.write_stream(tutor.solve_question(text))


def _tab_generate(tutor):
    """탭 3: 문제 출제"""
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
        else:
            st.error("문제 생성에 실패했습니다. 다시 시도하세요.")


def _tab_essay(tutor):
    """탭 4: 서술형 답안 작성"""
    st.subheader("서술형 답안 작성")

    question_text = st.text_area(
        "서술형 문제를 입력하세요",
        placeholder="예: TCP와 UDP의 차이점을 설명하고, 각각의 활용 사례를 서술하시오.",
        height=120,
        key="essay_question",
    )

    if st.button("답안 작성", key="essay_btn") and question_text:
        with st.spinner("키워드 추출 + 지식그래프 검색 + 답안 생성 중..."):
            st.write_stream(tutor.write_essay(question_text))


if __name__ == "__main__":
    main()
