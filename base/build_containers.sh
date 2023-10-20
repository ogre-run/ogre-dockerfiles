#!/bin/bash

OS="linux"
REPO="ogrerun"


# CPU - Building the base dockers for multiplatforms
for UBUNTU_VERSION in "20.04" "22.04"
do
    for PLATFORM in "amd64" "arm64"
    do
        docker buildx build --platform $OS/$PLATFORM --load -t ogrerun/base:ubuntu${UBUNTU_VERSION}-${PLATFORM} -f ./Dockerfile.base-ubuntu${UBUNTU_VERSION} .
    done
done

# GPU - Building the base dockers for multiplatforms
for UBUNTU_VERSION in "20.04" "22.04"
do
    for PLATFORM in "amd64" "arm64"
    do
        docker buildx build --platform $OS/$PLATFORM --load -t ogrerun/base:ubuntu${UBUNTU_VERSION}-${PLATFORM}-gpu -f ./Dockerfile.base-ubuntu${UBUNTU_VERSION}-gpu .
    done
done
