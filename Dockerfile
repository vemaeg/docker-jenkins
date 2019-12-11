FROM jenkins/jenkins:lts

USER root

RUN apt-get update \
    && apt-get install -y zip \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && curl -fsSL https://get.docker.com/ | sh \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential \
    && apt-get install -y python-pip \
    && pip install docker-compose \
    && npm config set unsafe-perm=true \
    && npm i -g web-ext \
    && apt-get clean

RUN groupadd -g 113 docker-host \
    && usermod -a -G docker-host jenkins

#Keep running as user root.
#USER jenkins

