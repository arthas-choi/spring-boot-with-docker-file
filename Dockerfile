FROM arm64v8/amazoncorretto:17-alpine3.18

WORKDIR /root/

ADD target/spring-boot-docker.jar spring-boot-docker.jar
RUN chmod 755 spring-boot-docker.jar

EXPOSE 8090
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]
