FROM openjdk:17-slim-buster
ARG JAR_FILE_PATH=build/libs/code-build-test-0.0.1-SNAPSHOT.jar

COPY $JAR_FILE_PATH app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]