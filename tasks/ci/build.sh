#!/usr/bin/env bash

set -euo pipefail

echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin

build_and_push() {
    local REPO=tsukiy0/${1}
    docker build -t ${REPO}:latest ./src/${1}
    docker push ${REPO}:latest
}

# build_and_push dotnet-multisdk
build_and_push ci-node
# build_and_push ci-dotnet
# build_and_push ci-py
# build_and_push ci-golang
