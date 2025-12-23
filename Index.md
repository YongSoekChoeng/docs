#  Dstone Framework 문서

이 문서는 Dstone 프레임워크의 각 컴포넌트에 대한 기술적인 개요와 설정 가이드를 제공합니다.

---

## <span style="color:#4A90E2;">📘 FRAMEWORK</span>

### Dstone Boot
- **[프로젝트 개요](../dstone-boot/docs/01.프로젝트개요(dstone-boot).md)**
  - `dstone-boot` 프레임워크의 아키텍처, 주요 기능 및 소스 코드 분석 도구에 대해 설명합니다.
- **[Docker 빌드 가이드](../dstone-boot/docs/02.Docker빌드(dstone-boot).md)**
  - `dstone-boot`와 관련 서비스(MySQL, RabbitMQ, Redis)를 Docker Compose로 빌드하고 실행하는 방법을 안내합니다.

### Dstone Batch
- **[프로젝트 개요](../dstone-batch/docs/01.프로젝트개요(dstone-batch).md)**
  - `dstone-batch` 프레임워크의 핵심 개념, 잡(Job) 정의 방법 및 실행 방식에 대해 설명합니다.
- **[Docker 빌드 가이드](../dstone-batch/docs/02.Docker빌드(dstone-batch).md)**
  - `dstone-batch` 및 관리 서버를 Docker Compose로 빌드하고 실행하는 방법을 안내합니다.

### Dstone Batch Server
- **[프로젝트 개요](../dstone-batch-server/docs/01.프로젝트개요(dstone-batch-server).md)**
  - Spring Cloud Data Flow와 Skipper를 활용한 배치 애플리케이션 관리 서버의 구성과 사용법을 설명합니다.

---

## <span style="color:#50E3C2;">☁️ CLOUD</span>

### Docker
- **[Docker 진행 가이드](./CLOUD/Docker/01.Docker진행가이드.md)**
  - Docker 엔진 설치, 기본 명령어, Dockerfile 작성법 및 `dstone` 프레임워크 적용 방법을 종합적으로 안내합니다.
- **[Jenkins Docker 빌드 가이드](./CLOUD/Docker/02.Docker빌드(dstone-jenkins).md)**
  - Jenkins를 Docker 컨테이너로 구성하여 `dstone` 프로젝트의 CI/CD 환경을 구축하는 방법을 설명합니다.

### Kubernetes
- **[Kubernetes 진행 가이드](./CLOUD/Kubernetes/01.Kubernetes진행가이드.md)**
  - VirtualBox와 Ubuntu를 사용하여 Kubernetes 클러스터(Master/Worker)를 구축하고 설정하는 방법을 안내합니다.

---

## <span style="color:#F5A623;">📦 CM (Configuration Management)</span>

- **[Git 관련 설명](./CM/Git/01.Git관련설명.md)**
  - Git 사용 시 발생할 수 있는 한글 폴더명 문제 및 해결 방법을 안내합니다.