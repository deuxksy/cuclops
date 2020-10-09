FROM openjdk:11.0.8-slim as BUILD

WORKDIR /app
COPY . /app
RUN chmod +x gradlew
RUN ./gradlew bootJar
RUN cp ./build/libs/*.jar ./ZZiZiLY.jar
RUN rm -rf ./gradle ./build ./src
ENTRYPOINT ["java", "-jar", "./ZZiZiLY.jar"]
EXPOSE 8888