#!/usr/bin/env bash

set -euo pipefail

echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin

docker build -t tsukiy0/dotnet-multisdk:latest ./src/dotnet-multisdk
docker push tsukiy0/dotnet-multisdk:latest

docker build -t tsukiy0/node-docker:latest ./src/node-docker
docker push tsukiy0/node-docker:latest

docker build -t tsukiy0/ci-dotnet:latest ./src/ci-dotnet
docker push tsukiy0/ci-dotnet:latest
