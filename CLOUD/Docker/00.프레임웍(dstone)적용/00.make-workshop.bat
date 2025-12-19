setlocal

REM =========================================================
REM Docker Build 를 위한 기본 골격(workshop)을 생성.
REM Destination : C:/Temp/workshop 아래에 생성.
REM =========================================================


REM /workshop
REM   └─ /dstone-batch                             # <Batch Application>
REM      ├─ conf/                                  #   설정 파일
REM      ├─ target/                                #   실행 파일
REM      ├─ 01.dstone-batch-docker.yml             #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-batch-docker-reg.sh          #   Docker Hub 등록 Shell
REM   └─ /dstone-batch-server                      # <Batch Admin Application>
REM      ├─ conf/                                  #   설정 파일
REM      ├─ target/                                #   실행 파일
REM      ├─ 01.dstone-batch-server-docker.yml      #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-batch-server-docker-reg.sh   #   Docker Hub 등록 Shell
REM   └─ /dstone-boot                              # <Boot Application>
REM      ├─ conf/                                  #   설정 파일
REM      ├─ target/                                #   실행 파일
REM      ├─ 01.dstone-boot-docker.yml              #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-boot-docker-reg.sh           #   Docker Hub 등록 Shell
REM   └─ /dstone-mysql                             # <Database (MySQL)>
REM      ├─ init-db/                               #   DB 초기화 스크립트
REM      ├─ 01.dstone-mysql-docker.yml             #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-mysql-docker-reg.sh          #   Docker Hub 등록 Shell
REM   └─ /dstone-rabbitmq                          # <RabbitMQ>
REM      ├─ init-data/                             #   초기 데이터
REM      ├─ 01.dstone-rabbitmq-docker.yml          #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-rabbitmq-docker-reg.sh       #   Docker Hub 등록 Shell
REM   └─ /dstone-redis                             # <Redis>
REM      ├─ 01.dstone-redis-docker.yml             #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-redis-docker-reg.sh          #   Docker Hub 등록 Shell
REM   └─ /dstone-boot-docker-compose.yml           # dstone-boot Docker Compose 빌드파일
REM   └─ /dstone-batch-docker-compose.yml          # dstone-batch Docker Compose 빌드파일
REM   └─ /dstone-compose.yml                       # 전체 Docker Compose 빌드파일

set FROM_ROOT=D:\AppHome\framework
set TO_ROOT=C:\Temp\workshop

mkdir %TO_ROOT%

REM 1. Batch Application
mkdir %TO_ROOT%\dstone-batch
mkdir %TO_ROOT%\dstone-batch\conf
mkdir %TO_ROOT%\dstone-batch\target
copy  %FROM_ROOT%\dstone-batch\conf\application.yml %TO_ROOT%\dstone-batch\conf
copy  %FROM_ROOT%\dstone-batch\conf\log4j2.xml %TO_ROOT%\dstone-batch\conf
copy  %FROM_ROOT%\dstone-batch\target\*.jar %TO_ROOT%\dstone-batch\target
copy  %FROM_ROOT%\dstone-batch\docs\docker\dstone-batch\01.dstone-batch-docker.yml %TO_ROOT%\dstone-batch
copy  %FROM_ROOT%\dstone-batch\docs\docker\dstone-batch\02.dstone-batch-docker-reg.sh %TO_ROOT%\dstone-batch
copy  %FROM_ROOT%\dstone-batch\docs\docker\dstone-batch-docker-compose.yml %TO_ROOT%

REM 2. Batch Server Application
mkdir %TO_ROOT%\dstone-batch-server
mkdir %TO_ROOT%\dstone-batch-server\conf
mkdir %TO_ROOT%\dstone-batch-server\target
copy  %FROM_ROOT%\dstone-batch-server\conf\* %TO_ROOT%\dstone-batch-server\conf
copy  %FROM_ROOT%\dstone-batch-server\target\*.jar %TO_ROOT%\dstone-batch-server\target
copy  %FROM_ROOT%\dstone-batch-server\docs\docker\dstone-batch-server\01.dstone-batch-server-docker.yml %TO_ROOT%\dstone-batch-server
copy  %FROM_ROOT%\dstone-batch-server\docs\docker\dstone-batch-server\02.dstone-batch-server-docker-reg.sh %TO_ROOT%\dstone-batch-server

REM 3. Boot Application
mkdir %TO_ROOT%\dstone-boot
mkdir %TO_ROOT%\dstone-boot\conf
mkdir %TO_ROOT%\dstone-boot\target
copy  %FROM_ROOT%\dstone-boot\conf\application.yml %TO_ROOT%\dstone-boot\conf
copy  %FROM_ROOT%\dstone-boot\conf\log4j2.xml %TO_ROOT%\dstone-boot\conf
copy  %FROM_ROOT%\dstone-boot\target\dstone-boot.war %TO_ROOT%\dstone-boot\target
copy  %FROM_ROOT%\dstone-boot\docs\docker\dstone-boot\01.dstone-boot-docker.yml %TO_ROOT%\dstone-boot
copy  %FROM_ROOT%\dstone-boot\docs\docker\dstone-boot\02.dstone-boot-docker-reg.sh %TO_ROOT%\dstone-boot
copy  %FROM_ROOT%\dstone-boot\docs\docker\dstone-boot-docker-compose.yml %TO_ROOT%

REM 4. Database
mkdir %TO_ROOT%\dstone-mysql
mkdir %TO_ROOT%\dstone-mysql\init-db
xcopy %FROM_ROOT%\dstone-boot\docs\docker\dstone-mysql %TO_ROOT%\dstone-mysql /E

REM 5. RabbitMQ
mkdir %TO_ROOT%\dstone-rabbitmq
mkdir %TO_ROOT%\dstone-rabbitmq\init-data
xcopy %FROM_ROOT%\dstone-boot\docs\docker\dstone-rabbitmq %TO_ROOT%\dstone-rabbitmq /E

REM 6. Redis
mkdir %TO_ROOT%\dstone-redis
xcopy %FROM_ROOT%\dstone-boot\docs\docker\dstone-redis %TO_ROOT%\dstone-redis /E

endlocal
