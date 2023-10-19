# docker build -t ogrerun/cuda:11.1-py3.7 .
# docker run -it --rm --gpus all ogrerun/cuda:11.1-py3.7 bash
FROM nvcr.io/nvidia/cuda:11.1.1-base-ubuntu18.04

# Install Python 3.7
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3.7 python3.7-venv python3.7-dev python3-pip
RUN python3.7 -m pip install --upgrade pip

# Set the default Python version
ENV PYTHON_VERSION 3.7
