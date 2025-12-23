setlocal

REM =========================================================
REM Docker Build 를 위한 기본 골격(workshop)을 생성.
REM Destination : C:/Temp/workshop 아래에 생성.
REM =========================================================


REM /workshop
REM   └─ /workshop/dstone-jenkins                  # <Jenkins>
REM      ├─ jenkins_home/                          #   jenkins home 디렉토리
REM      ├─ 01.dstone-jenkins-docker.yml           #   개별 Docker Compose 빌드파일
REM      └─ 02.dstone-jenkins-docker-reg.sh        #   Docker Hub 등록 Shell

set FROM_ROOT=D:\AppHome\framework\docs\CLOUD\Docker\jenkins적용
set TO_ROOT=C:\Temp\workshop

mkdir %TO_ROOT%

REM 1. Jenkins
mkdir %TO_ROOT%\dstone-jenkins
mkdir %TO_ROOT%\dstone-jenkins\jenkins_home
copy  %FROM_ROOT%\01.dstone-jenkins-docker.yml %TO_ROOT%\dstone-jenkins
copy  %FROM_ROOT%\02.dstone-jenkins-docker-reg.sh %TO_ROOT%\dstone-jenkins

endlocal
