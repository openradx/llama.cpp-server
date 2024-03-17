# llama.cpp-server

Some feature improved Dockerfile files of the llama.cpp server. If provided
with `MODEL_URL` environment variable it downloads this model (.gguf format)
and uses it. If a model as `/models/model.gguf` is already present (e.g.
by mounting it) this one will be used.
Additional command line options to the llama.cpp server can be provided
using the Docker command (see `./run_cpu_image` as an example).

Build the images (CPU and CUDA) with: `./build_images.sh`

Publish them to Docker Hub: `./publish_images.sh`

__Cave!__ Publishes all tags of `medihack/llama.cpp-server`
