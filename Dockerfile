FROM gradle:6.6.1-jre11
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
WORKDIR /app
COPY build/libs/*.jar .
ENTRYPOINT ["java", "-jar", "/app/*.jar"]
EXPOSE 8888