# docker build -t ogrerun/cuda:9.0-py3.5 .
# docker run -it --rm --gpus all ogrerun/cuda:9.0-py3.5 bash
FROM nvcr.io/nvidia/cuda:9.0-runtime-ubuntu16.04

# Install Python 3.5
RUN apt-get update && apt-get install -y python3.5 python3.5-venv python3.5-dev python3-pip
RUN python3.5 -m pip install --upgrade pip==20.3.4

# Set the default Python version
ENV PYTHON_VERSION 3.5
