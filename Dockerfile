FROM maven:3.9.4-amazoncorretto-17 as maven_build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests
FROM amazoncorretto:17
COPY --from=maven_build /home/app/target/*.jar /usr/local/lib/livechat.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/livechat.jar"]