"""Neo4j 적재기: Cypher 파일 → cypher-shell 실행"""
import subprocess
from pathlib import Path

import config


def load_cypher_file(cypher_path: Path, dry_run: bool = False) -> tuple[bool, str]:
    """단일 Cypher 파일을 Neo4j에 적재.

    Args:
        cypher_path: Cypher 파일 경로
        dry_run: True면 실행하지 않고 명령어만 출력

    Returns:
        (성공여부, 메시지)
    """
    if not cypher_path.exists():
        return False, f"파일 없음: {cypher_path}"

    # Windows 경로 → Docker 내부 접근을 위해 stdin redirect 사용
    cmd = [
        "docker", "exec", "-i", "neo4j-ontology",
        "cypher-shell",
        "-u", config.NEO4J_USER,
        "-p", config.NEO4J_PASSWORD,
    ]

    if dry_run:
        return True, f"[DRY RUN] {' '.join(cmd)} < {cypher_path}"

    try:
        cypher_text = cypher_path.read_text(encoding="utf-8")
        result = subprocess.run(
            cmd,
            input=cypher_text,
            capture_output=True,
            text=True,
            timeout=300,  # 5분 타임아웃
        )

        if result.returncode == 0:
            return True, f"성공: {cypher_path.name}"
        else:
            error_msg = result.stderr.strip()[:500]
            return False, f"실패: {cypher_path.name}\n{error_msg}"

    except subprocess.TimeoutExpired:
        return False, f"타임아웃: {cypher_path.name} (5분 초과)"
    except Exception as e:
        return False, f"오류: {cypher_path.name} - {str(e)[:200]}"


def load_domain(cypher_dir: Path, domain: str, dry_run: bool = False) -> list[tuple[str, bool, str]]:
    """도메인별 Cypher 파일 일괄 적재"""
    pattern = f"{domain.lower()}_*.cypher"
    files = sorted(cypher_dir.glob(pattern))
    results = []

    for f in files:
        success, msg = load_cypher_file(f, dry_run=dry_run)
        results.append((f.name, success, msg))

    return results


def check_neo4j_status() -> tuple[bool, str]:
    """Neo4j 컨테이너 상태 확인"""
    try:
        result = subprocess.run(
            ["docker", "inspect", "-f", "{{.State.Status}}", "neo4j-ontology"],
            capture_output=True, text=True, timeout=10,
        )
        status = result.stdout.strip()
        if status == "running":
            return True, "Neo4j 컨테이너 실행 중"
        return False, f"Neo4j 컨테이너 상태: {status}"
    except Exception as e:
        return False, f"Docker 확인 실패: {str(e)[:100]}"
