FROM gradle:6.6.1-jre11
WORKDIR /app
RUN whoami && pwd
COPY . /app/src
RUN cd /app/src
RUN chmod +x gradlew
RUN gradlew jar
RUN ls -alh /app
RUN ls -alh /app/src
RUN ls -alh /app/src/build
RUN ls -alh /app/src/build/libs
#COPY /home/runner/work/zzizily-spring-cloud-config-server/zzizily-spring-cloud-config-server/build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "RUN ls -alh /app/src/build/libs/zzizily-spring-cloud-config-server-latest.jar"]
EXPOSE 8888