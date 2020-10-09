FROM gradle:6.6.1-jre11

RUN whoami && pwd
RUN ls -alh
WORKDIR /app
RUN whoami && pwd
COPY . /app
RUN pwd && ls -alh
RUN pwd && cd /app/src
RUN pwd && ls -alh
RUN pwd && chmod +x gradlew
RUN pwd && ls -alh
RUN pwd && ./gradlew jar
RUN pwd && ls -alh /app/src/build
RUN pwd && ls -alh /app/src/build/libs
#COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888