FROM amazoncorretto:17
ADD target/*.jar livechat.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "livechat.jar"]