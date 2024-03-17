#!/usr/bin/env bash

# Build Docker images of llama.cpp server for CPU and CUDA GPU

printf -v CURRENT_DATE '%(%Y%m%d)T' -1

docker build --tag "medihack/llama.cpp-server:$CURRENT_DATE" --tag "medihack/llama.cpp-server:latest" \
    -f ./src/cpu.Dockerfile ./src 

docker build --tag "medihack/llama.cpp-server:$CURRENT_DATE-cuda" --tag "medihack/llama.cpp-server:latest-cuda" \
    -f ./src/cuda.Dockerfile ./src 
