#!/usr/bin/env bash

# Just a test drive that the build image runs

MODEL_URL=https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v0.3-GGUF/resolve/main/tinyllama-1.1b-chat-v0.3.Q2_K.gguf

docker run -e MODEL_URL="$MODEL_URL" llama.cpp-server:latest -c 256 -cb
