FROM ghcr.io/ggerganov/llama.cpp:server-cuda

RUN apt update && apt install -y --no-install-recommends ca-certificates wget

COPY ./start_server.sh .

ENTRYPOINT ["./start_server.sh"]
