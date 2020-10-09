FROM gradle:6.6.1-jre11

RUN whoami && pwd
RUN ls -alh
WORKDIR /app
RUN whoami && pwd
COPY . /app/src
RUN ls -alh /app
#COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888