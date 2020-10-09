FROM gradle:6.6.1-jre11
WORKDIR /app
COPY . /app
RUN gradlew jar
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888