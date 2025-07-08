#FROM eclipse-temurin:17-jdk
#WORKDIR /app
#COPY lib-0.0.1-SNAPSHOT.war app.war
#CMD ["java", "-jar", "app.war", "--server.port=${PORT}"]
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Копируем WAR-файл (без переименования, чтобы не ломать внутренние пути)
COPY lib-0.0.1-SNAPSHOT.war .

# Создаем папку для внешней конфигурации и копируем properties-файлы
RUN mkdir -p /config
COPY config/application.properties /config/

# Запускаем с указанием внешнего конфига
CMD ["java", "-jar", "lib-0.0.1-SNAPSHOT.war", \
     "--spring.config.location=file:/config/application.properties", \
     "--server.port=${PORT}"]


