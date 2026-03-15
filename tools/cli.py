"""Ontology Pipeline CLI"""
import json
import sys
from pathlib import Path

import click
from rich.console import Console
from rich.progress import Progress, SpinnerColumn, TextColumn, BarColumn, MofNCompleteColumn
from rich.table import Table

import config

console = Console()


@click.group()
def main():
    """IT 도메인 학습 문서 → Neo4j 온톨로지 파이프라인"""
    config.ensure_dirs()


@main.command()
@click.option("--domain", "-d", default=None, help="특정 도메인만 처리 (예: CA, NW, SE)")
@click.option("--limit", "-n", default=0, help="처리할 파일 수 제한")
@click.option("--output", "-o", default=None, help="출력 디렉토리 (기본: data/parsed/)")
def parse(domain: str | None, limit: int, output: str | None):
    """문서 파싱 (DOC/DOCX → JSON)"""
    from parse.docx_parser import parse_docx
    from parse.doc_parser import parse_doc

    out_dir = Path(output) if output else config.PARSED_DIR
    out_dir.mkdir(parents=True, exist_ok=True)

    # 대상 파일 수집
    files = _collect_files(domain)
    if limit > 0:
        files = files[:limit]

    console.print(f"\n[bold]파싱 대상: {len(files)}개 파일[/bold]")
    if domain:
        console.print(f"  도메인 필터: {domain}")

    success = 0
    errors: list[tuple[str, str]] = []

    with Progress(
        SpinnerColumn(),
        TextColumn("[progress.description]{task.description}"),
        BarColumn(),
        MofNCompleteColumn(),
        console=console,
    ) as progress:
        task = progress.add_task("파싱 중...", total=len(files))

        for filepath in files:
            try:
                if filepath.suffix.lower() == ".docx":
                    result = parse_docx(filepath)
                elif filepath.suffix.lower() == ".doc":
                    result = parse_doc(filepath)
                else:
                    progress.advance(task)
                    continue

                # JSON 저장
                out_file = out_dir / f"{result.file_id}.json"
                out_file.write_text(
                    result.model_dump_json(indent=2, ensure_ascii=False),
                    encoding="utf-8",
                )
                success += 1
            except Exception as e:
                errors.append((filepath.name, str(e)))
            progress.advance(task)

    # Word COM 인스턴스 정리
    try:
        from parse.doc_parser import quit_word
        quit_word()
    except Exception:
        pass

    # 결과 요약
    console.print(f"\n[green]성공: {success}개[/green]  [red]실패: {len(errors)}개[/red]")
    if errors:
        console.print("\n[bold red]실패 목록:[/bold red]")
        for fname, err in errors[:20]:
            console.print(f"  {fname}: {err[:80]}")
        if len(errors) > 20:
            console.print(f"  ... 외 {len(errors) - 20}개")


@main.command()
def stats():
    """문서 통계 출력"""
    table = Table(title="도메인별 문서 통계")
    table.add_column("도메인", style="bold")
    table.add_column("코드")
    table.add_column("DOCX", justify="right")
    table.add_column("DOC", justify="right")
    table.add_column("합계", justify="right", style="bold")

    total_docx = 0
    total_doc = 0

    for domain_id, info in sorted(config.DOMAINS.items(), key=lambda x: x[1]["code"]):
        domain_dir = config.DOCUMENTS_DIR / info["code"]
        if not domain_dir.exists():
            continue

        docx_count = len(list(domain_dir.glob("*.docx")))
        doc_count = len(list(domain_dir.glob("*.doc")))
        total = docx_count + doc_count
        total_docx += docx_count
        total_doc += doc_count

        table.add_row(
            info["name"],
            domain_id,
            str(docx_count),
            str(doc_count),
            str(total),
        )

    table.add_section()
    table.add_row("합계", "", str(total_docx), str(total_doc), str(total_docx + total_doc), style="bold green")

    console.print(table)


@main.command()
@click.option("--domain", "-d", default=None, help="특정 도메인만 (예: AI, SW)")
@click.option("--limit", "-n", default=0, help="처리할 파일 수 제한")
@click.option("--file", "-f", "single_file", default=None, help="단일 파일 (예: AI_001)")
def extract(domain: str | None, limit: int, single_file: str | None):
    """온톨로지 추출 (JSON → 노드/관계)"""
    from extract.extractor import extract_file, extract_domain

    if single_file:
        json_path = config.PARSED_DIR / f"{single_file}.json"
        if not json_path.exists():
            console.print(f"[red]파일 없음: {json_path}[/red]")
            return
        result = extract_file(json_path)
        out_path = config.EXTRACTED_DIR / f"{single_file}.json"
        out_path.write_text(
            json.dumps(result.to_dict(), ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        console.print(f"[green]추출 완료: {result.topic_name}[/green]")
        console.print(f"  노드: {len(result.nodes)}개, 관계: {len(result.relationships)}개")
        return

    # 도메인별 또는 전체
    domains = [domain.upper()] if domain else list(config.DOMAINS.keys())
    total_nodes = 0
    total_rels = 0
    total_files = 0

    for d in domains:
        results = extract_domain(config.PARSED_DIR, d)
        if limit > 0:
            results = results[:limit]

        for r in results:
            out_path = config.EXTRACTED_DIR / f"{r.file_id}.json"
            out_path.write_text(
                json.dumps(r.to_dict(), ensure_ascii=False, indent=2),
                encoding="utf-8",
            )
            total_nodes += len(r.nodes)
            total_rels += len(r.relationships)
            total_files += 1

        if results:
            console.print(f"  {d}: {len(results)}개 파일 → 노드 {sum(len(r.nodes) for r in results)}개")

    console.print(f"\n[bold green]추출 완료: {total_files}개 파일, 노드 {total_nodes}개, 관계 {total_rels}개[/bold green]")


@main.command()
@click.option("--domain", "-d", required=True, help="도메인 (예: AI, SW)")
@click.option("--batch", "-b", default=50, help="파일당 묶음 크기 (기본: 50)")
def generate(domain: str, batch: int):
    """Cypher 생성 (추출 결과 → Cypher 파일)"""
    from extract.extractor import ExtractionResult
    from generate.cypher_generator import generate_batch_cypher, save_cypher

    domain = domain.upper()
    extracted_dir = config.EXTRACTED_DIR
    pattern = f"{domain}_*.json"
    files = sorted(extracted_dir.glob(pattern))

    if not files:
        console.print(f"[red]추출 결과 없음: {pattern}[/red]")
        console.print(f"  먼저 'extract --domain {domain}' 실행하세요.")
        return

    console.print(f"\n[bold]{domain} 도메인: {len(files)}개 추출 결과[/bold]")

    # 배치 단위로 Cypher 생성
    results = []
    for f in files:
        data = json.loads(f.read_text(encoding="utf-8"))
        # ExtractionResult 재구성
        from extract.extractor import Node, Relationship
        nodes = [Node(**n) for n in data.get("nodes", [])]
        rels = [Relationship(**r) for r in data.get("relationships", [])]
        er = ExtractionResult(
            file_id=data["file_id"], domain=data["domain"],
            topic_name=data["topic_name"], nodes=nodes, relationships=rels,
        )
        results.append(er)

    # 배치별 파일 생성
    for i in range(0, len(results), batch):
        chunk = results[i:i + batch]
        start_num = i + 1
        end_num = min(i + batch, len(results))
        cypher_text = generate_batch_cypher(chunk, domain, start_num, end_num)
        out_name = f"{domain.lower()}_{start_num:03d}_{end_num:03d}.cypher"
        out_path = config.CYPHER_DIR / out_name
        save_cypher(cypher_text, out_path)
        node_count = sum(len(r.nodes) for r in chunk)
        rel_count = sum(len(r.relationships) for r in chunk)
        console.print(f"  [green]{out_name}[/green] -{len(chunk)}개 문서, 노드 {node_count}, 관계 {rel_count}")

    console.print(f"\n[bold green]Cypher 생성 완료[/bold green]")


@main.command()
@click.option("--domain", "-d", default=None, help="도메인 (예: AI, SW)")
@click.option("--file", "-f", "cypher_file", default=None, help="특정 Cypher 파일")
@click.option("--dry-run", is_flag=True, help="실행하지 않고 명령어만 출력")
def load(domain: str | None, cypher_file: str | None, dry_run: bool):
    """Neo4j 적재 (Cypher → Neo4j)"""
    from load.loader import load_cypher_file, load_domain, check_neo4j_status

    # Neo4j 상태 확인
    if not dry_run:
        ok, msg = check_neo4j_status()
        console.print(f"  Neo4j: {msg}")
        if not ok:
            console.print("[red]Neo4j가 실행 중이 아닙니다. docker-compose up -d 실행하세요.[/red]")
            return

    if cypher_file:
        cypher_path = config.CYPHER_DIR / cypher_file
        if not cypher_path.exists():
            cypher_path = Path(cypher_file)  # 절대경로 시도
        success, msg = load_cypher_file(cypher_path, dry_run=dry_run)
        icon = "[green]✓[/green]" if success else "[red]✗[/red]"
        console.print(f"  {icon} {msg}")
        return

    if domain:
        results = load_domain(config.CYPHER_DIR, domain.upper(), dry_run=dry_run)
        for fname, success, msg in results:
            icon = "[green]✓[/green]" if success else "[red]✗[/red]"
            console.print(f"  {icon} {msg}")

        ok_count = sum(1 for _, s, _ in results if s)
        console.print(f"\n[bold]적재 결과: {ok_count}/{len(results)} 성공[/bold]")
        return

    console.print("[yellow]--domain 또는 --file 옵션을 지정하세요.[/yellow]")


@main.command()
@click.option("--domain", "-d", required=True, help="도메인 (예: AI, SW)")
@click.option("--limit", "-n", default=0, help="처리할 파일 수 제한")
@click.option("--batch", "-b", default=50, help="Cypher 파일당 묶음 크기")
@click.option("--dry-run", is_flag=True, help="적재 없이 Cypher 생성까지만")
def pipeline(domain: str, limit: int, batch: int, dry_run: bool):
    """전체 파이프라인 (추출 → 생성 → 적재)"""
    from extract.extractor import extract_domain
    from generate.cypher_generator import generate_batch_cypher, save_cypher
    from load.loader import load_cypher_file, check_neo4j_status

    domain = domain.upper()
    console.print(f"\n[bold]=== {domain} 도메인 파이프라인 ===[/bold]\n")

    # Step 1: 추출
    console.print("[bold]STEP 1: 온톨로지 추출[/bold]")
    results = extract_domain(config.PARSED_DIR, domain)
    if limit > 0:
        results = results[:limit]
    if not results:
        console.print(f"[red]  파싱 데이터 없음: {domain}[/red]")
        return
    total_nodes = sum(len(r.nodes) for r in results)
    total_rels = sum(len(r.relationships) for r in results)
    console.print(f"  {len(results)}개 문서 → 노드 {total_nodes}개, 관계 {total_rels}개\n")

    # Step 2: Cypher 생성
    console.print("[bold]STEP 2: Cypher 생성[/bold]")
    cypher_files = []
    for i in range(0, len(results), batch):
        chunk = results[i:i + batch]
        start_num = i + 1
        end_num = min(i + batch, len(results))
        cypher_text = generate_batch_cypher(chunk, domain, start_num, end_num)
        out_name = f"{domain.lower()}_{start_num:03d}_{end_num:03d}.cypher"
        out_path = config.CYPHER_DIR / out_name
        save_cypher(cypher_text, out_path)
        cypher_files.append(out_path)
        console.print(f"  [green]{out_name}[/green] -{len(chunk)}개 문서")
    console.print()

    # Step 3: Neo4j 적재
    if dry_run:
        console.print("[bold]STEP 3: 적재 (DRY RUN -스킵)[/bold]")
        console.print("[yellow]  --dry-run 플래그로 적재를 건너뜁니다.[/yellow]")
    else:
        console.print("[bold]STEP 3: Neo4j 적재[/bold]")
        ok, msg = check_neo4j_status()
        if not ok:
            console.print(f"[red]  {msg}[/red]")
            console.print("[yellow]  Cypher 파일은 생성됨. 수동 적재 가능.[/yellow]")
        else:
            for cypher_path in cypher_files:
                success, msg = load_cypher_file(cypher_path)
                icon = "[green]✓[/green]" if success else "[red]✗[/red]"
                console.print(f"  {icon} {msg}")

    console.print(f"\n[bold green]=== {domain} 파이프라인 완료 ===[/bold green]")
    console.print(f"  문서: {len(results)}개")
    console.print(f"  노드: {total_nodes}개")
    console.print(f"  관계: {total_rels}개")


@main.command()
@click.argument("query")
@click.option("--top-k", "-k", default=5, help="시드 노드 수 (기본: 5)")
@click.option("--depth", "-d", default=1, help="탐색 깊이 (1 또는 2, 기본: 1)")
@click.option("--raw", is_flag=True, help="포맷 없이 원시 출력")
def search(query: str, top_k: int, depth: int, raw: bool):
    """그래프 검색 (GraphRAG 컨텍스트 생성)

    예시: python cli.py search "딥러닝"
          python cli.py search "SQL Injection" --depth 2
          python cli.py search "암호화 알고리즘" -k 10
    """
    from graphrag.searcher import search as graph_search

    if raw:
        result = graph_search(query, top_k=top_k, depth=depth)
        click.echo(result)
        return

    console.print(f"\n[bold]GraphRAG 검색: \"{query}\"[/bold]")
    console.print(f"  top_k={top_k}, depth={depth}\n")

    result = graph_search(query, top_k=top_k, depth=depth)
    console.print(result)


def _collect_files(domain: str | None) -> list[Path]:
    """대상 파일 목록 수집."""
    files: list[Path] = []

    if domain:
        domain = domain.upper()
        if domain in config.DOMAINS:
            domain_dir = config.DOCUMENTS_DIR / config.DOMAINS[domain]["code"]
            if domain_dir.exists():
                files.extend(sorted(domain_dir.glob("*.docx")))
                files.extend(sorted(domain_dir.glob("*.doc")))
    else:
        for info in config.DOMAINS.values():
            domain_dir = config.DOCUMENTS_DIR / info["code"]
            if domain_dir.exists():
                files.extend(sorted(domain_dir.glob("*.docx")))
                files.extend(sorted(domain_dir.glob("*.doc")))

    return files


if __name__ == "__main__":
    # 모듈 import 경로 보정 (패키지명이 숫자로 시작하므로)
    sys.path.insert(0, str(Path(__file__).parent))
    main()
