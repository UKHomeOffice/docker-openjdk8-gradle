FROM ukhomeofficedigital/centos-base

RUN mkdir /data
WORKDIR /data

ONBUILD COPY . /data
ONBUILD RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    ./gradlew clean installApp && \
     yum remove -y java-1.8.0-openjdk-devel && \
     yum clean all && \
     rm -rf ~/.gradle
