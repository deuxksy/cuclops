FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
RUN whoami && pwd && hostname
RUN ls -alh
RUN ls -alh /home
WORKDIR /app
RUN whoami && pwd
#COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888