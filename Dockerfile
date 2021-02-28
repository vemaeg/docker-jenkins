FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
    && apt-get install -y zip \
    && curl -fsSL https://get.docker.com/ | sh \
    && apt-get install -y build-essential \
    && apt-get clean

RUN groupadd -g 113 docker-host \
    && usermod -a -G docker-host jenkins

#Keep running as user root.
#USER jenkins

