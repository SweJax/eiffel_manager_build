FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY builds/latest/'eiffelmanager-dev'.jar app.jar
COPY eiffel-filter.json eiffel-filter.json

ENTRYPOINT ["java", "-jar", "app.jar"]
