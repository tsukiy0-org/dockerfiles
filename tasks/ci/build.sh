#!/usr/bin/env bash

set -euo pipefail

docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}
docker build -t tsukiy0/dotnet-multisdk:latest ./src/dotnet-multisdk
