FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y zip && \
 curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && \
 apt-get install -y build-essential && \
 npm config set unsafe-perm=true && \
 npm i -g web-ext

USER jenkins

