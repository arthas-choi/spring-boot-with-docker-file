FROM openjdk:8-jre-alpine
ADD target/spring-boot-docker.jar spring-boot-docker.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]