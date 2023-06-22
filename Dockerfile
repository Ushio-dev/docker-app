FROM openjdk:21-ea-17-slim-buster

COPY "./target/docker-app-0.0.1-SNAPSHOT.jar" "docker-app.jar"

EXPOSE 8000

ENTRYPOINT [ "java", "-jar", "docker-app.jar" ]
