FROM openjdk:11.0.8-slim as BUILD

RUN whoami && pwd
RUN ls -alh
WORKDIR /app
RUN whoami && pwd
COPY . /app
RUN pwd && ls -alh
RUN pwd && chmod +x gradlew
RUN pwd && ls -alh
RUN pwd && ./gradlew jar
RUN pwd && ls -alh
RUN pwd && ls -alh ./src
RUN pwd && ls -alh ./src/build
RUN pwd && ls -alh ./src/build/libs
#COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888