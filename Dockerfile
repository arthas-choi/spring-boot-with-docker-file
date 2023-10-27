FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu
FROM arm64v8/amazoncorretto:17-alpine3.18
WORKDIR /root/

COPY --from=qemu /usr/bin/qemu-* /usr/bin

ADD target/spring-boot-docker.jar spring-boot-docker.jar
RUN chmod 755 spring-boot-docker.jar
RUN rm -rf /usr/bin/qemu-*
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]
