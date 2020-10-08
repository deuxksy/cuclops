FROM gradle:6.6.1-jre11
LABEL maintainer="SeokYoung.Kim 'deuxksy@gmail.com'"
WORKDIR /app
RUN ["gradle", "--version"]
RUN ["gradle", "classes"]
COPY build/docker/libs libs/
COPY build/docker/resources resources/
COPY build/docker/classes classes/
ENTRYPOINT ["java", "-cp", "/app/resources:/app/classes:/app/libs/*", "com.zzizily.mas.ZZiZiLYApplication"]
EXPOSE 8888
ㅎ