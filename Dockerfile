FROM openjdk:11.0.8-slim
WORKDIR /app
COPY . /app
RUN ls -alh
RUN chmod +x ./gradlew && ls -alh
RUN ./gradlew jar
RUN ls -alh
RUN ls -alh ./build
RUN ls -alh ./build/lib
COPY ./build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "./zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888