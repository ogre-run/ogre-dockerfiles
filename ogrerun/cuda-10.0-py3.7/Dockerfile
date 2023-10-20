# docker build -t ogrerun/cuda:10.0-py3.7 .
# docker run -it --rm --gpus all ogrerun/cuda:10.0-py3.7 bash
FROM nvcr.io/nvidia/cuda:10.0-base-ubuntu18.04

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y build-essential checkinstall gdb lcov pkg-config wget \
    libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
    libncurses5-dev libncursesw5-dev libreadline6-dev libsqlite3-dev libssl-dev \
    lzma lzma-dev tk-dev uuid-dev zlib1g-dev libc6-dev libgpm2

# The latest version of Python 3.7 is 3.7.17
ENV PYTHON_MAJOR_VERSION=3
ENV PYTHON_MINOR_VERSION=7
ENV PYTHON_PATCH_VERSION=17
ENV PYTHON_VERSION=${PYTHON_MAJOR_VERSION}.${PYTHON_MINOR_VERSION}
ENV PYTHON_FULL_VERSION=${PYTHON_MAJOR_VERSION}.${PYTHON_MINOR_VERSION}.${PYTHON_PATCH_VERSION}

# Install Python
# RUN apt-get install -y python${PYTHON_VERSION} python${PYTHON_VERSION}-venv python${PYTHON_VERSION}-dev python${PYTHON_MAJOR_VERSION}-pip

# Build Python from source
RUN wget https://www.python.org/ftp/python/${PYTHON_FULL_VERSION}/Python-${PYTHON_FULL_VERSION}.tgz
RUN tar -zxvf Python-${PYTHON_FULL_VERSION}.tgz
# RUN cd Python-${PYTHON_FULL_VERSION} && ./configure --enable-optimizations && make -j8 && make install
# RUN cd Python-${PYTHON_FULL_VERSION} && ./configure && make altinstall
RUN cd Python-${PYTHON_FULL_VERSION} && ./configure && make -j8 build_all && make install

# Update pip
RUN python${PYTHON_VERSION} -m pip install --upgrade pip
