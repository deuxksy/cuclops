FROM openjdk:11.0.8-slim
WORKDIR /app
COPY . /app
RUN chmod +x ./gradlew
RUN ./gradlew jar
RUN ls -alh
RUN ls -alh ./build
RUN ls -alh ./build/libs
COPY ./build/libs/zzizily-spring-cloud-config-server-latest.jar .
ENTRYPOINT ["java", "-jar", "./zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888