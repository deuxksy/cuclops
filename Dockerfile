FROM openjdk:11.0.8-jre-slim
WORKDIR /app
COPY . /app
RUN chmod +x gradlew && ls -alh
RUN gradlew jar && ls -alh && ls -alh build && ls -alh lib
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "./zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888