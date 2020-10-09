FROM openjdk:11.0.8-slim as BUILD

WORKDIR /app
RUN pwd && ls -alh
COPY . /app/temp
RUN pwd && ls -alh && ls -alh ./temp
RUN chmod +x ./temp/gradlew
RUN pwd && ls -alh && ls -alh ./temp
RUN ./temp/gradlew bootJar
RUN pwd && ls -alh && ls -alh ./temp && ls -alh ./temp/build && ls -alh ./temp/build/libs
RUN cp ./temp/build/libs/*.jar ./ZZiZiLY.jar
RUN pwd && ls -alh
RUN rm -rf ./temp
RUN pwd && ls -alh
ENTRYPOINT ["java", "-jar", "./ZZiZiLY.jar"]
EXPOSE 8888