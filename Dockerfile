FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    make \
    curl \
    sudo \
    binutils \
    libc6-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# デフォルト作業ディレクトリを 9cc に変更
WORKDIR /9cc

CMD ["/bin/bash"]
