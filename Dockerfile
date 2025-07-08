FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY lib-0.0.1-SNAPSHOT.war lib.war
CMD ["java", "-jar", "lib.war", "--server.port=${PORT}"]