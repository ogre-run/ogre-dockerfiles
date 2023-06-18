#!/bin/bash

OS="linux"

for PLATFORM in "amd64"
do
    # Build baseimage standard ubuntu22.04 - CPU
    docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu22.04-$PLATFORM -f ./Dockerfile.base_ubuntu22.04 .
    docker push ogarantia/ogre:base-ubuntu22.04-$PLATFORM 
    # Build baseimage standard ubuntu22.04 - GPU
    docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu22.04-gpu-$PLATFORM -f ./Dockerfile.base_ubuntu22.04_gpu .
    docker push ogarantia/ogre:base-ubuntu22.04-gpu-$PLATFORM 
    # Build baseimage standard ubuntu20.04 - CPU
    docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu20.04-$PLATFORM -f ./Dockerfile.base_ubuntu20.04 .
    docker push ogarantia/ogre:base-ubuntu20.04-$PLATFORM 
    # Build baseimage standard ubuntu20.04 - GPU
    docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu20.04-gpu-$PLATFORM -f ./Dockerfile.base_ubuntu20.04_gpu .
    docker push ogarantia/ogre:base-ubuntu20.04-gpu-$PLATFORM 
    # Build baseimage standard ubuntu18.04 - CPU
    # docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu18.04-$PLATFORM -f ./Dockerfile.base_ubuntu18.04 .
    # Build baseimage standard ubuntu18.04 - GPU
    # docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:base-ubuntu18.04-gpu-$PLATFORM -f ./Dockerfile.base_ubuntu18.04_gpu .

done
