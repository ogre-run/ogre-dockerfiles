# docker build -t ogrerun/cuda:11.8-py3.9 .
# docker run -it --rm --gpus all ogrerun/cuda:11.8-py3.9 bash
FROM nvcr.io/nvidia/cuda:11.8.0-base-ubuntu20.04

# Install Python 3.9
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3.9 python3.9-venv python3.9-dev python3-pip
RUN python3.9 -m pip install --upgrade pip

# Set the default Python version
ENV PYTHON_VERSION 3.9
