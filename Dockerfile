FROM openjdk:21-ea-17-slim-buster

ARG RAILWAY_ENVIRONMENT
ENV RAILWAY_ENVIRONMENT=$RAILWAY_ENVIRONMENT

COPY "./target/docker-app-0.0.1-SNAPSHOT.jar" "docker-app.jar"

ENTRYPOINT [ "java", "-jar", "docker-app.jar" ]
