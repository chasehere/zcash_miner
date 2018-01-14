FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04

RUN apt-get update -q && apt-get -qy install \
      cmake build-essential libboost-all-dev git wget

WORKDIR /root/

RUN wget https://github.com/nanopool/ewbf-miner/releases/download/v0.3.4b/Zec.miner.0.3.4b.Linux.Bin.tar.gz

RUN tar -xvzf Zec.miner.0.3.4b.Linux.Bin.tar.gz

ENV CUDA_HOME=/usr/local/cuda
ENV CUDA_ROOT=$CUDA_HOME
ENV PATH=$PATH:$CUDA_ROOT/bin:$HOME/bin
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64
