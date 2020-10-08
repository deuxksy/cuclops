FROM openjdk:11.0.8-jre-slim
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
WORKDIR /app
RUN cd /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs
RUN ls -alh /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs
COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888