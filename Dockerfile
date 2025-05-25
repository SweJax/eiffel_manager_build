FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY builds/latest/'eiffelmanager-latest'.jar app.jar
COPY eiffel-filter.json eiffel-filter.json

ENTRYPOINT ["java", "-jar", "app.jar"]
