FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY lib-0.0.1-SNAPSHOT.war app.war
CMD ["java", "-jar", "app.war", "--server.port=${PORT}"]