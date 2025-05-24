FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY builds/latest/'eiffelmanager-latest'.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
