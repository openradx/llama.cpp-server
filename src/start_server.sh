#!/usr/bin/env bash

if [ ! -f /models/model.gguf ]; then
    echo "No model found. Trying to download one."

    if [[ -z "${MODEL_URL}" ]]; then
        echo "Environment variable MODEL_URL not set."
        exit 1
    fi

    echo "Downloading model: ${MODEL_URL}"
    mkdir -p /models
    result=$(wget -q -O /models/model.gguf "${MODEL_URL}")
    if [ $? -ne 0 ]; then
        echo "Failed to download model."
        exit 1
    fi
else
    echo "Model file already exists. Skipping download."
fi

/server -m /models/model.gguf $@
