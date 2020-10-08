FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"

RUN ["pwd", "&&", "whoami", "&&", "ls", "-alh"]

WORKDIR /app

RUN ["pwd"]
RUN ["ls", "-alh", "/home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/"]
RUN ["ls", "-alh", "/home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build"]
RUN ["ls", "-alh", "/home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs"]

COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .

RUN ["ls", "-alh", "/app"]

ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888