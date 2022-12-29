FROM adoptopenjdk/openjdk11
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=home/ubuntu/mztalk-gateway-server/target/*.jar
COPY home/ubuntu/mztalk-gateway-server/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
