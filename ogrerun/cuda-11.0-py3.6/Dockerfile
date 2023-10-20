# docker build -t ogrerun/cuda:11.0-py3.6 .
# docker run -it --rm --gpus all ogrerun/cuda:11.0-py3.6 bash
FROM nvcr.io/nvidia/cuda:11.0.3-base-ubuntu18.04

# Install Python 3.6
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3.6 python3.6-venv python3.6-dev python3-pip
RUN python3.6 -m pip install --upgrade pip

# Set the default Python version
ENV PYTHON_VERSION 3.6
