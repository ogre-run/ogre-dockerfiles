# docker build -t ogrerun/cuda:10.2-py3.7-dev .
# docker run -it --rm --gpus all ogrerun/cuda:10.2-py3.7-dev bash
FROM nvcr.io/nvidia/cuda:10.2-devel-ubuntu18.04

# Install Python 3.7
RUN apt-get update && apt-get install -y python3.7 python3.7-venv python3.7-dev python3-pip
RUN python3.7 -m pip install --upgrade pip

# Set the default Python version
ENV PYTHON_VERSION 3.7
