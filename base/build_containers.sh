#!/bin/bash

OS="linux"

for PLATFORM in "amd64" #"amd64"
do
    # Build baseimage mini
    # docker buildx build --platform $PLATFORM -t ogarantia/ogre:baseimage-mini -f ./Dockerfile.baseimage_ogre_mini .

    # Build baseimage standard ubuntu22.04 - CPU
    #docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:baseimage-standard-ubuntu22.04 -f ./Dockerfile.baseimage_ogre_standard_ubuntu22.04 .
    # Build baseimage standard ubuntu22.04 - GPU
    docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:baseimage-standard-gpu-ubuntu22.04 -f ./Dockerfile.baseimage_ogre_standard_ubuntu22.04_gpu .
    #docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:baseimage-standard-ubuntu20.04 -f ./Dockerfile.baseimage_ogre_standard_ubuntu20.04 .
    # Build baseimage standard ubuntu16.04
    #docker buildx build --platform $OS/$PLATFORM -t ogarantia/ogre:baseimage-standard-ubuntu16.04 -f ./Dockerfile.baseimage_ogre_standard_ubuntu16.04 .
    # Build baseimage standard gpu
#    docker buildx build --platform $PLATFORM -t ogarantia/ogre:baseimage-standard-gpu -f ./Dockerfile.baseimage_ogre_standard_gpu .
done
