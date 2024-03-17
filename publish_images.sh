#!/usr/bin/env bash

docker login

docker push --all-tags medihack/llama.cpp-server
