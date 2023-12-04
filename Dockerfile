# 톰캣 9.0.83 버전의 이미지를 베이스로 사용합니다.
FROM tomcat:9.0.83

COPY build/libs/*.war /usr/local/tomcat/webapps

