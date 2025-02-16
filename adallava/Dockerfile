FROM nvidia/cuda:12.1.0-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    git \
    python3.10 \
    python3-pip \
    build-essential \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

#  Missing GLIBCXX_3.4.32 This is a compatibility issue with the C++ standard library. The error occurs because the container's libstdc++ is older than what bitsandbytes needs.
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get update && \
    apt-get install -y gcc-11 g++-11

RUN python3 -m pip install --no-cache-dir --upgrade pip

WORKDIR /app/test-adallava

# Copy the entire current directory to /app/test-adallava
COPY . .

# Since files are already copied, just install dependencies
WORKDIR /app/test-adallava/lmms-eval
RUN pip install -e .

WORKDIR /app/test-adallava/LLaVA
RUN pip install -e . && \
    pip install protobuf && \
    pip install -e ".[train]" && \
    pip install peft==0.13.2 

WORKDIR /app/test-adallava
RUN pip install -e .


CMD ["bash"]