FROM amazoncorretto:17
VOLUME /tmp
ADD target/*.jar livechat.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "livechat.jar"]