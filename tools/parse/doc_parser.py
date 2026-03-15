"""DOC (레거시) 파일 파싱 모듈.

Windows에서는 win32com (COM 자동화)으로 DOC → 텍스트 변환.
Word 인스턴스를 재사용하여 대량 처리 시 성능 최적화.
"""
import atexit
import re
import subprocess
import sys
from pathlib import Path

from .docx_parser import ParsedDocument, Section, extract_file_id

# Word COM 인스턴스 (모듈 레벨 싱글턴)
_word_app = None


def _get_word_app():
    """Word COM 인스턴스를 가져오거나 생성 (싱글턴)."""
    global _word_app
    if _word_app is not None:
        try:
            # 인스턴스가 살아있는지 확인
            _ = _word_app.Visible
            return _word_app
        except Exception:
            _word_app = None

    try:
        import win32com.client
        _word_app = win32com.client.Dispatch("Word.Application")
        _word_app.Visible = False
        _word_app.DisplayAlerts = False
        atexit.register(_quit_word)
        return _word_app
    except ImportError:
        raise RuntimeError("pywin32 미설치. `uv pip install pywin32` 실행 필요")


def _quit_word():
    """프로세스 종료 시 Word 인스턴스 정리."""
    global _word_app
    if _word_app is not None:
        try:
            _word_app.Quit()
        except Exception:
            pass
        _word_app = None


def quit_word():
    """외부에서 Word 인스턴스를 명시적으로 정리."""
    _quit_word()


def _parse_with_win32com(filepath: Path) -> str:
    """win32com으로 DOC 파일 텍스트 추출 (Word 인스턴스 재사용)."""
    global _word_app

    for attempt in range(2):
        try:
            word = _get_word_app()
            doc = word.Documents.Open(
                str(filepath.resolve()),
                ReadOnly=True,
                AddToRecentFiles=False,
                Visible=False,
            )
            text = doc.Content.Text
            doc.Close(False)
            return text
        except Exception as e:
            if attempt == 0:
                # 첫 실패 시 Word 인스턴스 재생성
                _word_app = None
                continue
            raise RuntimeError(f"Word COM 오류 ({filepath.name}): {e}")


def _parse_with_antiword(filepath: Path) -> str:
    """antiword CLI로 DOC 파일 텍스트 추출 (Linux/Mac)."""
    try:
        result = subprocess.run(
            ["antiword", str(filepath)],
            capture_output=True,
            text=True,
            encoding="utf-8",
            timeout=30,
        )
        if result.returncode == 0:
            return result.stdout
        raise RuntimeError(f"antiword 오류: {result.stderr}")
    except FileNotFoundError:
        raise RuntimeError("antiword 미설치")


def _extract_sections(raw_text: str) -> list[Section]:
    """텍스트에서 섹션 구조 추출."""
    sections: list[Section] = []
    current_section = Section()

    for line in raw_text.splitlines():
        line = line.strip()
        if not line:
            continue

        # 로마숫자 대제목 (I. II. III.)
        if re.match(r"^[IVX]+\.\s", line):
            if current_section.heading or current_section.content:
                sections.append(current_section)
            current_section = Section(heading=line, level=1)
        # 숫자. 으로 시작하는 줄을 소제목으로
        elif re.match(r"^\d+\.\s", line):
            if current_section.heading or current_section.content:
                sections.append(current_section)
            current_section = Section(heading=line, level=2)
        elif re.match(r"^[가-힣]\.\s", line):
            current_section.items.append(line)
            current_section.content += line + "\n"
        else:
            current_section.content += line + "\n"

    if current_section.heading or current_section.content:
        sections.append(current_section)

    return sections


def parse_doc(filepath: Path) -> ParsedDocument:
    """DOC 파일을 파싱하여 구조화된 데이터 반환."""
    domain, file_id = extract_file_id(filepath.name)

    if sys.platform == "win32":
        raw_text = _parse_with_win32com(filepath)
    else:
        raw_text = _parse_with_antiword(filepath)

    sections = _extract_sections(raw_text)

    return ParsedDocument(
        file_id=file_id,
        filename=filepath.name,
        domain=domain,
        format="doc",
        sections=sections,
        tables=[],
        raw_text=raw_text,
    )
