FROM openjdk:11.0.8-slim as BUILD
WORKDIR /app

COPY . /app/src
RUN cd ./src
RUN chmod +x ./gradlew
RUN ./gradlew jar

FROM openjdk:11.0.8-jre-slim
EXPOSE 8888

RUN ls -alh
RUN ls -alh ./build
RUN ls -alh ./build/libs
#COPY ./build/libs/zzizily-spring-cloud-config-server-latest.jar .

ENTRYPOINT ["java", "-jar", "zzizily-spring-cloud-config-server-latest.jar"]
COPY --from=BUILD /app/build/libs/*.jar /app/zzizily-spring-cloud-config-server-latest.jar