FROM adoptopenjdk/openjdk11
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=.target/*.jar
COPY ${JAR_FILE_PATH} /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom" ,"-jar", "/app.jar"]
