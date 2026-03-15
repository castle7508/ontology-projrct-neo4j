# Ch.03 — STEP 1: 인프라 구성

> **"인프라는 보이지 않아야 좋은 인프라다. 한 번 세팅하면 다시 신경 쓸 일 없게 만들어라."**

이 챕터에서는 Neo4j 그래프 데이터베이스를 Docker로 구성하고,
APOC, GDS, n10s 플러그인을 설치하여 **온톨로지 구축에 필요한 전체 인프라**를 완성합니다.

---

## 3.1 왜 Docker인가

> 💡 **Docker Compose란?**
>
> Docker Compose는 여러 컨테이너(가상 서버)를 하나의 YAML 파일로 정의하고,
> `docker-compose up -d` 한 줄로 전체를 실행하는 도구입니다.
> "설치 과정을 코드로 기록해두고, 누구나 동일하게 재현"하는 것이 핵심 가치입니다.
> Docker Desktop을 설치하면 Docker Compose가 함께 포함됩니다.

Neo4j를 설치하는 방법은 크게 세 가지입니다:

| 방법 | 장점 | 단점 |
|------|------|------|
| **로컬 설치** (MSI/DMG) | 설치 간단, GUI 설치 마법사 | 플러그인 수동 관리, OS 의존, 삭제 잔여물 |
| **Docker** | 환경 재현성, 볼륨 관리, 명령 한 줄 | Docker Desktop 필요, 초기 학습 |
| **Neo4j Aura** (클라우드) | 설치 불필요, 관리 불필요 | 비용 발생, 플러그인 제한, 네트워크 의존 |

우리 프로젝트는 **Docker**를 선택합니다. 이유:

1. **환경 재현성**: `docker-compose.yml` 하나로 누구나 동일한 환경을 즉시 구축
2. **플러그인 자동 설치**: APOC, GDS를 환경변수 한 줄로 설치 (`NEO4J_PLUGINS`)
3. **데이터 격리**: Named Volume으로 데이터 영속성 보장, `down -v`로 깨끗한 초기화
4. **버전 관리**: 이미지 태그(`neo4j:2025.02.0-enterprise`)로 정확한 버전 고정
5. **팀 협업**: 동일 `docker-compose.yml`을 Git으로 공유하면 모든 팀원이 같은 환경

> 💡 **Docker Desktop이 처음이라면**:
> Windows의 경우 [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop/)를
> 설치하세요. WSL 2 백엔드를 활성화하고, Settings → Resources → Memory를 **4GB 이상**으로 설정합니다.

---

## 3.2 Docker Compose 구성 해설

우리 프로젝트의 `docker-compose.yml`을 라인별로 해설합니다.

### 3.2.1 서비스 정의

```yaml
version: '3.8'    # ⓪ 아래 참고

services:
  neo4j:
    image: neo4j:2025.02.0-enterprise       # ① 이미지
    container_name: neo4j-ontology           # ② 컨테이너 이름
    restart: unless-stopped                  # ③ 재시작 정책
```

> ⚠️ **⓪ `version` 필드에 대하여 (Docker Compose V2)**
>
> Docker Compose V2(2023년~)에서는 `version` 필드가 **deprecated**되었습니다.
> 있어도 동작하지만, `docker compose up` 실행 시 아래 경고가 나올 수 있습니다:
>
> ```
> WARN[0000] ... the attribute `version` is obsolete, it will be ignored
> ```
>
> **영향**: 기능상 문제는 없습니다. Docker Compose가 자동으로 스키마를 감지합니다.
> **권장**: 경고가 거슬리면 `version: '3.8'` 줄을 삭제해도 됩니다.
> 이 교재에서는 호환성을 위해 유지하지만, 새 프로젝트에서는 생략을 권장합니다.
>
> 참고: `docker-compose` (V1, 하이픈)은 2023년 6월 EOL.
> `docker compose` (V2, 공백)를 사용하세요. Docker Desktop에 기본 포함됩니다.

| 항목 | 설명 | 선택 근거 |
|------|------|-----------|
| ① `image` | Neo4j Enterprise 에디션 | EXISTS/NODE KEY 제약조건, RBAC, 다중 데이터베이스 지원 |
| ② `container_name` | 고정 이름 지정 | `docker exec neo4j-ontology ...`으로 일관된 접근 |
| ③ `restart` | 비정상 종료 시 자동 재시작 | 개발 중 예기치 않은 종료 대비 |

> ⚠️ **Enterprise 라이선스 참고**
>
> Neo4j Enterprise는 개발/평가 목적으로 무료 사용 가능합니다.
> `NEO4J_ACCEPT_LICENSE_AGREEMENT=yes` 환경변수가 필요합니다.
> Community 에디션을 사용하려면 `neo4j:2025.02.0-community`로 변경하되,
> EXISTS 제약조건과 NODE KEY를 사용할 수 없음에 유의하세요.

### 3.2.2 포트 매핑

```yaml
    ports:
      - "7474:7474"    # Neo4j Browser UI (HTTP)
      - "7687:7687"    # Bolt Protocol (애플리케이션 연결용)
```

- **7474**: 웹 브라우저에서 `http://localhost:7474`로 접속하는 Neo4j Browser
- **7687**: Python Driver, Java Driver 등 애플리케이션이 Bolt 프로토콜로 연결하는 포트

### 3.2.3 환경변수 — 인증과 라이선스

```yaml
    environment:
      # ── 인증 ──
      - NEO4J_AUTH=neo4j/ontology2025!

      # ── Enterprise 라이선스 ──
      - NEO4J_ACCEPT_LICENSE_AGREEMENT=yes
```

- `NEO4J_AUTH`: `사용자명/비밀번호` 형식. 첫 접속 시 비밀번호 변경 프롬프트 생략
- 프로덕션에서는 `.env` 파일로 분리하여 Git에 커밋하지 않아야 합니다

### 3.2.4 환경변수 — 플러그인 자동 설치

```yaml
      # ── 플러그인 자동 설치 ──
      - NEO4J_PLUGINS=["apoc", "graph-data-science", "n10s"]

      # ── 플러그인 보안 허용 ──
      - NEO4J_dbms_security_procedures_unrestricted=apoc.*,gds.*,n10s.*
      - NEO4J_dbms_security_procedures_allowlist=apoc.*,gds.*,n10s.*
```

Neo4j Docker 이미지는 `NEO4J_PLUGINS` 환경변수로 플러그인을 자동 다운로드합니다.
단, 보안 정책 기본값이 "모두 차단"이므로 `unrestricted`와 `allowlist`를 설정해야 합니다.

| 플러그인 | 용도 | 자동 설치 |
|----------|------|-----------|
| **APOC** | 유틸리티 400+ (refactor, export, load, meta) | ✅ |
| **GDS** (Graph Data Science) | 그래프 알고리즘 (PageRank, Louvain, Node Similarity) | ✅ |
| **n10s** (neosemantics) | RDF/OWL 임포트/익스포트 | ⚠️ 부분적 |

### 3.2.5 환경변수 — 메모리 설정

```yaml
      # ── 메모리 설정 (4GB RAM 기준) ──
      - NEO4J_server_memory_heap_initial__size=512m
      - NEO4J_server_memory_heap_max__size=1G
      - NEO4J_server_memory_pagecache_size=512m
```

Neo4j의 메모리는 크게 두 영역으로 나뉩니다:

```
┌─────────────────────────────────────────────────────────┐
│  JVM Heap Memory (512m ~ 1G)                            │
│  - 쿼리 실행, 트랜잭션, GC                              │
│  - 노드/관계 수가 많을수록 증가                          │
├─────────────────────────────────────────────────────────┤
│  Page Cache (512m)                                      │
│  - 디스크의 그래프 데이터를 메모리에 캐싱                 │
│  - 전체 그래프가 캐시에 들어가면 최고 성능                │
└─────────────────────────────────────────────────────────┘
```

우리 프로젝트 규모(~2,000노드, ~5,000관계)에서는 위 설정으로 충분합니다.
전체 적재(예상 ~50,000노드) 시에도 1GB Page Cache면 여유 있습니다.

> 💡 **메모리 계산 공식** (대략):
> - Heap: `max(512m, 노드수 × 50bytes + 관계수 × 100bytes)`
> - Page Cache: `그래프 크기(GB) × 1.2` (120% 여유)
> - 총 필요: Heap + Page Cache + OS 예약(~1GB)

### 3.2.6 환경변수 — APOC과 파일 임포트

```yaml
      # ── APOC 설정 ──
      - NEO4J_apoc_export_file_enabled=true
      - NEO4J_apoc_import_file_enabled=true
      - NEO4J_apoc_import_file_use__neo4j__config=true

      # ── 파일 임포트 허용 ──
      - NEO4J_server_directories_import=import
```

- `apoc_export/import_file_enabled`: APOC의 파일 입출력 기능 활성화
- `apoc_import_file_use__neo4j__config`: 임포트 경로를 Neo4j 설정(import 디렉토리)으로 제한 (보안)
- `server_directories_import`: 컨테이너 내부의 `/var/lib/neo4j/import` 디렉토리를 임포트 경로로 설정

### 3.2.7 볼륨 마운트

```yaml
    volumes:
      # ── 데이터 영속성 ──
      - neo4j_data:/data
      - neo4j_logs:/logs

      # ── 임포트 폴더 ──
      - ./import:/var/lib/neo4j/import

      # ── 문서 폴더 ──
      - ./documents:/documents

volumes:
  neo4j_data:
    name: neo4j_ontology_data
  neo4j_logs:
    name: neo4j_ontology_logs
```

**Named Volume vs Bind Mount:**

| 구분 | Named Volume | Bind Mount |
|------|-------------|------------|
| 선언 | `neo4j_data:/data` | `./import:/var/lib/neo4j/import` |
| 관리 | Docker가 관리 | 호스트 파일 시스템 |
| 용도 | DB 데이터, 로그 (삭제 보호) | 파일 교환 (CSV, OWL 임포트) |
| 삭제 | `docker-compose down -v`로만 삭제 | 호스트에서 직접 삭제 가능 |

> ⚠️ **`docker-compose down` vs `docker-compose down -v`**
>
> - `down`: 컨테이너만 제거, **데이터 유지** (Named Volume 보존)
> - `down -v`: 컨테이너 + **데이터 삭제** (Named Volume 포함)
>
> 개발 중 스키마를 완전히 초기화하고 싶을 때만 `-v`를 사용하세요.
> 실수로 `-v`를 붙이면 모든 적재 데이터가 사라집니다!

### 3.2.8 헬스체크

```yaml
    healthcheck:
      test: ["CMD-SHELL", "cypher-shell -u neo4j -p 'ontology2025!' 'RETURN 1' || exit 1"]
      interval: 15s
      timeout: 10s
      retries: 10
      start_period: 60s
```

- Neo4j가 실제로 Cypher 쿼리에 응답하는지 확인 (단순 포트 체크가 아님)
- `start_period: 60s`: 플러그인 설치와 초기화에 시간이 걸리므로 60초 유예
- `docker-compose ps`에서 `healthy` 상태를 확인할 수 있음

---

## 3.3 플러그인 설치와 검증

### 3.3.1 APOC — 자동 설치

APOC(Awesome Procedures on Cypher)은 Neo4j의 공식 유틸리티 라이브러리입니다.
400개 이상의 프로시저/함수를 제공합니다.

**우리 프로젝트에서 사용하는 APOC 기능:**

| 기능 | 프로시저 | 용도 |
|------|----------|------|
| 메타 통계 | `apoc.meta.stats()` | 노드/관계 수 전체 통계 |
| 메타 그래프 | `apoc.meta.graph()` | 스키마 시각화 |
| 노드 병합 | `apoc.refactor.mergeNodes()` | 중복 노드 병합 |
| 속성 이름 변경 | `apoc.refactor.rename.nodeProperty()` | 스키마 마이그레이션 |
| JSON 로드 | `apoc.load.json()` | 외부 JSON 데이터 임포트 |
| 배치 처리 | `apoc.periodic.iterate()` | 대량 데이터 배치 처리 |

**설치 확인 (Neo4j Browser에서 실행):**

```cypher
RETURN apoc.version() AS apoc_version;
```

### 3.3.2 GDS — 자동 설치

GDS(Graph Data Science)는 그래프 알고리즘 라이브러리입니다.
STEP 7~8(전체 적재, GraphRAG)에서 본격 활용합니다.

**주요 알고리즘:**

| 카테고리 | 알고리즘 | 온톨로지 활용 |
|----------|----------|--------------|
| 중심성 | PageRank | 가장 중요한 Concept 식별 |
| 커뮤니티 | Louvain | 도메인 자동 클러스터링 |
| 유사도 | Node Similarity | 유사 개념 자동 발견 |
| 경로 | Dijkstra | 최단 관계 경로 탐색 |

**설치 확인:**

```cypher
RETURN gds.version() AS gds_version;
```

### 3.3.3 n10s — 수동 설치가 필요한 이유

n10s(neosemantics)는 RDF/OWL 데이터를 Neo4j로 임포트하거나,
Neo4j 그래프를 RDF로 익스포트하는 플러그인입니다.

**문제**: n10s는 Neo4j Labs 프로젝트로, `NEO4J_PLUGINS` 자동 설치가
지원되지 않는 경우가 있습니다.

**수동 설치 절차:**

```powershell
# ① n10s JAR 다운로드 (GitHub Releases에서)
# ② 컨테이너에 복사
docker cp neosemantics-5.26.0.jar neo4j-ontology:/var/lib/neo4j/plugins/

# ③ 컨테이너 재시작
docker-compose restart neo4j
```

**설치 확인 (Neo4j Browser에서 실행):**

```cypher
// n10s 초기화 (최초 1회, Neo4j Browser에서 실행)
CALL n10s.graphconfig.init();

// 버전 확인
RETURN "n10s installed" AS status;
```

> ⚠️ **중요: `graphconfig.init()`은 반드시 Neo4j Browser에서 실행하세요.**
> PowerShell에서 cypher-shell로 실행하면 트랜잭션 컨텍스트 문제가 발생할 수 있습니다.

### 3.3.4 전체 검증 스크립트

모든 플러그인이 정상 설치되었는지 한 번에 확인:

```cypher
// Neo4j Browser에서 실행
RETURN
  apoc.version() AS apoc,
  gds.version() AS gds,
  'OK' AS neo4j;
```

기대 결과:

```
╒════════════════╤══════════╤═══════╕
│ apoc           │ gds      │ neo4j │
╞════════════════╪══════════╪═══════╡
│ "2025.02.0"    │ "2.15.0" │ "OK"  │
╘════════════════╧══════════╧═══════╛
```

---

## 3.4 명령어 환경 구분 — 이 프로젝트에서 가장 흔한 혼동

이 프로젝트를 진행하면서 **가장 자주 발생하는 실수**는
"이 명령어를 어디서 실행해야 하는가?"를 혼동하는 것입니다.

세 가지 환경을 명확히 구분해야 합니다:

```
┌──────────────────┬────────────────────────────────────────────────┐
│ 환경              │ 실행하는 것                                     │
├──────────────────┼────────────────────────────────────────────────┤
│ PowerShell       │ docker, docker-compose, python, cd, ls 등       │
│ (호스트 터미널)    │ 운영체제 명령어                                  │
├──────────────────┼────────────────────────────────────────────────┤
│ Neo4j Browser    │ MATCH, MERGE, CREATE, CALL, SHOW 등             │
│ (http://7474)     │ Cypher 쿼리 직접 실행                           │
├──────────────────┼────────────────────────────────────────────────┤
│ cypher-shell     │ Cypher 파일 배치 실행                            │
│ (docker exec)     │ docker exec 경유로 .cypher 파일 적재            │
└──────────────────┴────────────────────────────────────────────────┘
```

### 각 환경의 대표 명령어

**PowerShell (호스트):**

```powershell
# 컨테이너 시작/중지
docker-compose up -d
docker-compose down
docker-compose ps

# 상태 확인
docker-compose logs -f neo4j

# Python 파이프라인
cd tools
.venv\Scripts\python cli.py stats
```

**Neo4j Browser (`http://localhost:7474`):**

```cypher
// 그래프 데이터 조회
MATCH (n:Concept) RETURN n LIMIT 10;

// 통계 확인
CALL apoc.meta.stats() YIELD nodeCount, relCount;

// 스키마 시각화
CALL apoc.meta.graph();

// 플러그인 초기화
CALL n10s.graphconfig.init();
```

**cypher-shell (Docker exec 경유):**

```powershell
# 스키마 파일 적재 (PowerShell에서 실행!)
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/00_schema.cypher

# 데이터 파일 적재
docker exec -i neo4j-ontology cypher-shell -u neo4j -p ontology2025! < cypher/ai_001_010.cypher
```

> ⚠️ **[안티패턴] 환경 혼동 사례**
>
> ```powershell
> # ❌ PowerShell에서 Cypher 직접 실행 → 당연히 안 됨
> MATCH (n) RETURN n;
>
> # ❌ Neo4j Browser에서 docker 명령어 → 안 됨
> docker-compose ps
>
> # ❌ cypher-shell에서 CALL n10s.graphconfig.init() → 트랜잭션 문제 가능
> ```
>
> **규칙**: Cypher는 Neo4j Browser 또는 cypher-shell에서만.
> Docker/Python은 PowerShell에서만. 이 구분을 항상 의식하세요.

---

## 3.5 실행과 첫 접속

### 3.5.1 컨테이너 시작

```powershell
# 프로젝트 루트에서 실행 (docker-compose.yml이 있는 위치)
cd ontology-project-neo4j
docker-compose up -d
```

`-d` 플래그는 백그라운드(detached) 모드입니다.
첫 실행 시 Neo4j 이미지 다운로드와 플러그인 설치에 2~5분 소요됩니다.

### 3.5.2 상태 확인

```powershell
docker-compose ps
```

기대 출력:

```
NAME              IMAGE                        STATUS                    PORTS
neo4j-ontology    neo4j:2025.02.0-enterprise   Up 2 minutes (healthy)   0.0.0.0:7474->7474/tcp, 0.0.0.0:7687->7687/tcp
```

`(healthy)` 표시가 나올 때까지 기다리세요. 보통 60~90초 소요됩니다.

### 3.5.3 Neo4j Browser 접속

1. 웹 브라우저에서 `http://localhost:7474` 접속
2. 로그인 정보 입력:
   - **Connect URL**: `bolt://localhost:7687`
   - **Username**: `neo4j`
   - **Password**: `ontology2025!`
3. 첫 화면에서 간단한 Cypher 실행으로 정상 동작 확인:

```cypher
RETURN "Hello, Neo4j!" AS greeting;
```

---

## 3.6 프로젝트 디렉토리 구조 초기화

인프라 구성과 함께 프로젝트 디렉토리를 준비합니다:

```
ontology-project-neo4j/
├── docker-compose.yml       ← Neo4j 인프라 정의
├── CLAUDE.md                ← 프로젝트 뇌 (컨텍스트 문서)
├── documents/               ← 원본 문서 보관
│   ├── 01.PM/
│   ├── 02.MG/
│   └── ... (13개 도메인)
├── cypher/                  ← Cypher 스크립트 보관
│   └── 00_schema.cypher     ← 스키마 정의 (STEP 3에서 작성)
├── import/                  ← Neo4j 컨테이너 마운트 (CSV/OWL용)
├── tools/                   ← Python 파이프라인 도구
│   └── .venv/               ← 가상환경
└── system-docs/             ← 프로젝트 문서
    ├── 01_인프라/
    ├── 02_분석설계/
    ├── 03_파이프라인/
    └── 04_보고서/
```

> 💡 **CLAUDE.md의 역할**
>
> 이 프로젝트에서 `CLAUDE.md`는 "프로젝트의 뇌" 역할을 합니다.
> AI 도구(Claude Code 등)와 협업할 때, 프로젝트의 전체 맥락 — 스키마, 규칙,
> 진행 상황, 알려진 이슈 — 을 한 파일에 담아 매 세션마다 동기화합니다.
> AI 도구를 사용하지 않더라도, 프로젝트 온보딩 문서로서 가치가 있습니다.

---

## 3.7 [기업 박스] 프로덕션 구성 고려사항

개발 환경과 프로덕션 환경의 차이:

| 항목 | 개발 (이 프로젝트) | 프로덕션 |
|------|-------------------|----------|
| **에디션** | Enterprise (평가용) | Enterprise (유료 라이선스) |
| **배포** | Docker Compose 단일 노드 | Kubernetes + Cluster (PRIMARY/SECONDARY) |
| **인증** | 환경변수 하드코딩 | Secrets Manager / Vault |
| **메모리** | Heap 1G + Page Cache 512m | 실측 기반 튜닝 (수십 GB) |
| **백업** | 수동 (`neo4j-admin dump`) | 자동 스케줄 (cron + S3) |
| **모니터링** | Docker logs | Prometheus + Grafana |
| **HA** | 없음 (단일 장애점) | 3+ PRIMARY 서버 Cluster |
| **보안** | 기본 인증 | LDAP/SSO + RBAC + TLS |

**Neo4j Cluster 최소 구성 (Neo4j 5+):**

> ⚠️ **용어 변경 참고**: Neo4j 4.x에서는 "Causal Cluster"라는 명칭과
> "Core/Read Replica" 용어를 사용했습니다.
> Neo4j 5.x부터는 단순히 "Cluster"로 명칭이 바뀌었고,
> 서버 역할도 **PRIMARY**(읽기/쓰기)와 **SECONDARY**(읽기 전용)로 변경되었습니다.
> 인터넷의 많은 자료가 아직 구 용어를 사용하므로 혼동에 주의하세요.

```
┌──────────────┐   ┌──────────────┐   ┌──────────────┐
│  PRIMARY 1   │   │  PRIMARY 2   │   │  PRIMARY 3   │
│  (Leader)    │←→│  (Follower)  │←→│  (Follower)  │
│  R/W         │   │  R/W         │   │  R/W         │
└──────────────┘   └──────────────┘   └──────────────┘
                            │
              ┌─────────────┼─────────────┐
              │             │             │
        ┌───────────┐ ┌───────────┐ ┌───────────┐
        │ SECONDARY │ │ SECONDARY │ │ SECONDARY │
        │ (읽기전용) │ │ (읽기전용) │ │ (읽기전용) │
        └───────────┘ └───────────┘ └───────────┘
```

- **PRIMARY 서버**: 최소 3대 (Raft 합의 알고리즘). 읽기/쓰기 모두 처리
- **SECONDARY 서버**: 읽기 전용. 조회 부하 분산용
- **Leader 선출**: PRIMARY 중 하나가 자동으로 Leader 역할. 장애 시 자동 전환

---

## 3.8 문제 해결 (Troubleshooting)

### 포트 충돌

```powershell
# 7474 또는 7687 포트가 이미 사용 중인 경우
# PowerShell에서 확인
netstat -ano | findstr :7474
```

해결: `docker-compose.yml`에서 호스트 포트를 변경합니다:

```yaml
    ports:
      - "7475:7474"    # 호스트:컨테이너
      - "7688:7687"
```

### 메모리 부족

```
Neo4j failed to start: java.lang.OutOfMemoryError
```

해결: Docker Desktop의 메모리 할당을 4GB 이상으로 증가시킵니다.
Settings → Resources → Memory → 4096MB

### 플러그인 설치 실패

```powershell
# 로그 확인
docker-compose logs neo4j | findstr -i "plugin\|error"
```

플러그인 다운로드에 실패하면 네트워크 문제일 가능성이 높습니다.
회사 프록시 환경에서는 Docker Desktop의 프록시 설정을 확인하세요.

---

## [실습] Docker Compose로 Neo4j 띄우고 Browser 접속까지

### 목표
Docker Compose로 Neo4j를 시작하고, Browser에서 첫 Cypher 쿼리를 실행합니다.

### 순서

**① Docker Compose 시작 (PowerShell):**

```powershell
cd ontology-project-neo4j
docker-compose up -d
```

**② 상태 확인 (PowerShell):**

```powershell
docker-compose ps
# STATUS가 "Up ... (healthy)"가 될 때까지 대기 (60~90초)
```

**③ Neo4j Browser 접속:**
- `http://localhost:7474` 접속
- `neo4j` / `ontology2025!`로 로그인

**④ 플러그인 확인 (Neo4j Browser):**

```cypher
RETURN apoc.version() AS apoc, gds.version() AS gds;
```

**⑤ 첫 노드 만들어보기 (Neo4j Browser):**

```cypher
// 테스트 노드 생성
CREATE (n:Test {name: 'Hello Graph'})
RETURN n;

// 확인
MATCH (n:Test) RETURN n;

// 정리 (테스트 노드 삭제)
MATCH (n:Test) DETACH DELETE n;
```

**⑥ 정리 (선택, PowerShell):**

```powershell
docker-compose down      # 데이터 유지하며 중지
# docker-compose down -v  # 데이터까지 완전 삭제 (주의!)
```

### 체크리스트

- [ ] Docker Compose로 컨테이너가 `healthy` 상태로 시작됨
- [ ] Neo4j Browser에 정상 로그인됨
- [ ] APOC, GDS 버전이 확인됨
- [ ] 노드 생성/조회/삭제가 정상 동작함

---

> 📌 **핵심 정리**
>
> 1. **Docker Compose 한 줄**로 Neo4j + 플러그인 전체 환경 구축
> 2. **세 가지 환경**(PowerShell, Neo4j Browser, cypher-shell) 구분은 필수
> 3. **Named Volume**으로 데이터 영속성 보장, `-v` 사용 시 주의
> 4. `healthy` 상태 확인 후 작업 시작
> 5. 인프라는 한 번 구축하면 다시 신경 쓸 일 없도록 만드는 것이 목표
