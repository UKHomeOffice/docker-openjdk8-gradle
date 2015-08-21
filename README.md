#docker-openjdk8-gradle

Builds upon ukhomeofficedigital/centos-base by adding openjdk8 and running gradlew.

##Assumptions

* you use the installApp plugin to generate your Build

##Usage

Base your application on this image like so:

###Dockerfile
```
FROM quay.io/ukhomeofficedigital/openjdk8-gradle:v0.1.0

CMD ["build/install/myapp/bin/myapp", "server", "src/main/resources/myconfiguration.yaml"]

EXPOSE 8080
EXPOSE 8081
```
