FROM openjdk:11.0.8-slim
WORKDIR /app
COPY . /app
RUN chmod +x ./gradlew
RUN ./gradlew jar
COPY ./build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "./zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888