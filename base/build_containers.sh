#!/bin/bash

# Build baseimage mini
docker build -t ogarantia/ogre:baseimage-mini -f ./Dockerfile.baseimage_ogre_mini .
# Build baseimage standard
docker build -t ogarantia/ogre:baseimage-standard -f ./Dockerfile.baseimage_ogre_standard .
# Build baseimage standard gpu
docker build -t ogarantia/ogre:baseimage-standard-gpu -f ./Dockerfile.baseimage_ogre_standard_gpu .
