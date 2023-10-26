FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu
FROM --platform=linux/arm64/v8 amazoncorretto:17-alpine3.18

COPY --from=qemu /usr/bin/qemu-* /usr/bin

ADD target/spring-boot-docker.jar spring-boot-docker.jar
RUN chmod 755 spring-boot-docker.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]
