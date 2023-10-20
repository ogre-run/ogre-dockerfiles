# docker build -t ogrerun/cuda:11.6-py3.8 .
# docker run -it --rm --gpus all ogrerun/cuda:11.6-py3.8 bash
FROM nvcr.io/nvidia/cuda:11.6.2-base-ubuntu20.04

# Install Python 3.8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3.8 python3.8-venv python3.8-dev python3-pip
RUN python3.8 -m pip install --upgrade pip

# Set the default Python version
ENV PYTHON_VERSION 3.8
