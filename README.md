# spring-boot-with-docker
Simple Dockerfile based Spring boot Project

To make jar using maven

mvn clean package

To build image:
```
docker build -f Dockerfile -t spring-boot-docker:v.0.1 .

```
To run image:
```
docker run -p 8090:8090 spring-boot-docker:v.0.1
```
