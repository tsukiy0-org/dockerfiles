FROM node:14-bullseye

RUN apt-get update && apt-get install -y \
    curl \
    awscli

# docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
