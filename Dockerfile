FROM openjdk:17-oracle

COPY "./target/docker-app-0.0.1-SNAPSHOT.jar" "docker-app.jar"

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "docker-app.jar" ]