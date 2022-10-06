FROM nvidia/cuda:11.4.0-base-ubuntu20.04

# Add some dependencies
RUN apt-get clean && apt-get update -y -qq \
  && DEBIAN_FRONTEND="noninteractive" apt-get install --yes --no-install-recommends curl git build-essential vim ffmpeg libsm6 libxext6\
  && apt-get install wget \
  && apt-get install unzip


# create user
RUN useradd --shell /bin/bash --create-home --home-dir /home/zhuoyan zhuoyan
USER zhuoyan
WORKDIR /home/zhuoyan

# Setup for conda installation
ENV PATH=${PATH}:/home/zhuoyan/miniconda3/bin
COPY environment.yml .
COPY requirements.txt .

# Install conda and python packages
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 
RUN conda --version

RUN pip install --no-cache-dir -r requirements.txt

