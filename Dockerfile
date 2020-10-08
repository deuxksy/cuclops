FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
WORKDIR /app
RUN ["ls", "-alh"]
RUN ["ls", "-alh", "build"]
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888