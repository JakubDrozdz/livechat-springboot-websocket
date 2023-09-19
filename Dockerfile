FROM maven:3.8.2-jdk-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

FROM amazoncorretto:17
ADD target/*.jar livechat.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "livechat.jar"]