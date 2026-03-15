"""TXT 파일 파싱 모듈 (문제.txt)

문제.txt 실제 구조 분석 결과:
- 회차/교시 구분자 없음 — 순차적 문제 나열
- 단일행 문제: 1. 멧칼프 법칙을 설명하시오.
- 복수행 인용 문제: "1. 질문 본문\n가. 항목1\n나. 항목2"
- 하위항목: 가. 나. 다. 라.
- 코드/수식 블록이 문제 내에 포함될 수 있음
- 총 22,518줄, 약 9,291문제
"""
import re
from pathlib import Path

from pydantic import BaseModel


class ParsedQuestion(BaseModel):
    """파싱된 기출문제"""
    id: str = ""               # 고유 ID (예: "q_0001")
    number: int = 0            # 문제번호
    text: str = ""             # 원문 전체
    sub_items: list[str] = []  # 가/나/다/라 하위항목
    source: str = "기출"        # 기출|모의|FR


def parse_questions_txt(filepath: Path) -> list[ParsedQuestion]:
    """문제.txt를 파싱하여 문제 목록 반환.

    파싱 전략:
    1. 인용부호로 감싼 복수행 문제 먼저 추출
    2. 나머지 단일행 번호 문제 추출
    3. ID 부여 및 정렬
    """
    with open(filepath, encoding="utf-8") as f:
        content = f.read()

    questions: list[ParsedQuestion] = []
    used_ranges: list[tuple[int, int]] = []

    # ── 1단계: 인용부호 복수행 문제 추출 ──
    # 패턴: "숫자. 내용..." (여러 줄에 걸침, 닫는 인용부호로 끝남)
    quote_pattern = re.compile(r'"(\d+)\.\s(.*?)"', re.DOTALL)
    for m in quote_pattern.finditer(content):
        number = int(m.group(1))
        body = m.group(2).strip()
        full_text = f"{number}. {body}"

        sub_items = re.findall(r"^[가-힣]\.\s*.+", body, re.MULTILINE)

        questions.append(ParsedQuestion(
            number=number,
            text=full_text,
            sub_items=sub_items,
        ))
        used_ranges.append((m.start(), m.end()))

    # ── 2단계: 단일행 번호 문제 추출 ──
    # 각 줄의 파일 내 오프셋 계산
    line_starts: list[int] = []
    pos = 0
    for line in content.splitlines(keepends=True):
        line_starts.append(pos)
        pos += len(line)

    for i, line in enumerate(content.splitlines()):
        stripped = line.strip()
        if not stripped or stripped.startswith('"'):
            continue

        num_match = re.match(r"^(\d+)[\.\)]\s+(.+)", stripped)
        if not num_match:
            continue

        # 인용문 범위 안이면 스킵 (하위항목 등)
        line_pos = line_starts[i] if i < len(line_starts) else 0
        if any(start <= line_pos < end for start, end in used_ranges):
            continue

        number = int(num_match.group(1))
        questions.append(ParsedQuestion(
            number=number,
            text=stripped,
            sub_items=[],
        ))
        used_ranges.append((line_pos, line_pos + len(line)))

    # ── 3단계: 등장 순서 정렬 + ID 부여 ──
    # 각 문제의 원본 위치로 정렬
    question_with_pos: list[tuple[int, ParsedQuestion]] = []
    for q in questions:
        # 문제 텍스트 앞부분으로 위치 검색
        search_text = q.text[:min(40, len(q.text))]
        pos = content.find(search_text)
        question_with_pos.append((pos if pos >= 0 else 999999, q))

    question_with_pos.sort(key=lambda x: x[0])

    result: list[ParsedQuestion] = []
    for idx, (_, q) in enumerate(question_with_pos, 1):
        q.id = f"q_{idx:04d}"
        result.append(q)

    return result
