#!/usr/bin/env bash

set -euo pipefail

echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin
docker build -t tsukiy0/dotnet-multisdk:latest ./src/dotnet-multisdk
docker push tsukiy0/dotnet-multisdk:latest
