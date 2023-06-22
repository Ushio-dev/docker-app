FROM openjdk:21-ea-17-slim-buster

ARG PORT1
ENV PORT=$PORT1

COPY "./target/docker-app-0.0.1-SNAPSHOT.jar" "docker-app.jar"

ENTRYPOINT [ "java", "-jar", "docker-app.jar" ]
