@echo off
chcp 65001 >nul
echo ================================================================
echo  Neo4j 온톨로지 환경 설치 스크립트 (Windows)
echo ================================================================
echo.

REM ── 폴더 생성 ──
echo [1/4] 폴더 구조 생성...
if not exist "import" mkdir import
if not exist "documents" mkdir documents
if not exist "cypher" mkdir cypher
echo       import/      - OWL, CSV 파일 (Neo4j에서 직접 읽음)
echo       documents/   - 원본 DOCX 파일 보관
echo       cypher/      - Cypher 스크립트 보관
echo.

REM ── Docker 확인 ──
echo [2/4] Docker 확인...
docker --version >nul 2>&1
if errorlevel 1 (
    echo [오류] Docker가 설치되어 있지 않습니다.
    echo        https://www.docker.com/products/docker-desktop 에서 설치하세요.
    pause
    exit /b 1
)
docker info >nul 2>&1
if errorlevel 1 (
    echo [오류] Docker Desktop이 실행 중이 아닙니다.
    echo        Docker Desktop을 시작한 후 다시 실행하세요.
    pause
    exit /b 1
)
echo       Docker OK
echo.

REM ── Neo4j 시작 ──
echo [3/4] Neo4j 시작 (최초 실행 시 이미지 다운로드 2-5분 소요)...
docker-compose up -d
echo.

REM ── 대기 ──
echo [4/4] Neo4j 초기화 대기 중...
echo       플러그인(APOC, GDS, n10s) 설치로 최초 실행 시 1-3분 걸립니다.
echo.

:WAIT_LOOP
timeout /t 10 /nobreak >nul
docker-compose exec -T neo4j cypher-shell -u neo4j -p "ontology2025!" "RETURN 1" >nul 2>&1
if errorlevel 1 (
    echo       아직 초기화 중...
    goto WAIT_LOOP
)

echo.
echo ================================================================
echo  설치 완료!
echo ================================================================
echo.
echo  Browser UI:  http://localhost:7474
echo  Bolt:        bolt://localhost:7687
echo  ID:          neo4j
echo  PW:          ontology2025!
echo.
echo  다음 단계:
echo    1. 브라우저에서 http://localhost:7474 접속
echo    2. neo4j / ontology2025! 로 로그인
echo    3. verify.cypher 내용을 실행하여 플러그인 확인
echo.
echo  문서 넣기:
echo    documents/ 폴더에 DOCX 파일을 넣으세요
echo    import/ 폴더에 OWL, CSV 파일을 넣으세요
echo.
pause