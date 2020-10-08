FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
WORKDIR /app
RUN ["ls", "-alh", "build/libs"]
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888