FROM maven:3.9.9-eclipse-temurin-21-alpine

WORKDIR /app


COPY StockService/target/StockService-1.0.jar output/app.jar
ADD StockService/src/main/resources/application.properties config/

EXPOSE 9096
ENTRYPOINT ["java", "-jar", "output/app.jar"]