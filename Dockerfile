# 톰캣 9.0.83 버전의 이미지를 베이스로 사용합니다.
FROM tomcat:9.0.83

# OpenJDK 설치
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk

# 작업 디렉토리 설정
WORKDIR /usr/local/tomcat/file

# 소스 코드와 pom.xml 파일 복사
COPY ./build/libs/*.war /usr/local/tomcat/file

#RUN chmod -R 755 gradlew
# Maven 빌드 실행
#RUN ./gradlew build
# 생성된 WAR 파일을 Tomcat의 webapps 폴더로 복사
RUN cp /usr/local/tomcat/file/build/libs/*.war /usr/local/tomcat/webapps/
