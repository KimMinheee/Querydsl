# base 이미지 설정
FROM openjdk:17-alpine

# jar 파일 위치를 (환경)변수로 설정
ARG JAR_FILE=./build/libs/querydsl-0.0.1-SNAPSHOT.jar

# 프로젝트의 jar 파일 위치를 참조하여 jar 파일을 가져와 컨테이너의 루트디렉토리에 ‘app.jar’의 이름으로 복사하는 커맨드
COPY ${JAR_FILE} app.jar

# 도커 파일이 도커 엔진을 통해서 컨테이너로 올라갈 때, 도커 컨테이너의 시스템 진입점이 어디인지 선언하는 커맨드 # 아래 명령어는 java -jar 명령어를 통해 컨테이너의 루트에 위치한 app.jar을 실행하라는 뜻의 커맨드
ENTRYPOINT ["java","-jar","/app.jar"]
