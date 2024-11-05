FROM maven:3.9.9-eclipse-temurin-21-alpine

WORKDIR /app


COPY OrderService/target/OrderService-1.0.jar output/app.jar
ADD OrderService/src/main/resources/application.properties config/

EXPOSE 9095
ENTRYPOINT ["java", "-jar", "output/app.jar"]