FROM maven:3.9.9-eclipse-temurin-21-alpine


WORKDIR /app

COPY SMSService/target/SMSService-1.0.jar output/app.jar
ADD SMSService/src/main/resources/application.properties config/

EXPOSE 9097
ENTRYPOINT ["java", "-jar", "output/app.jar"]