FROM openjdk:11.0.8-slim as BUILD

WORKDIR /app
COPY . /app/temp
RUN chmod +x ./temp/gradlew
RUN ./temp/gradlew bootJar
RUN cp ./temp/build/libs/*.jar ./ZZiZiLY.jar
RUN rm -rf ./temp
ENTRYPOINT ["java", "-jar", "./ZZiZiLY.jar"]
EXPOSE 8888