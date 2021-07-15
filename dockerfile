FROM ubuntu:18.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    wget \
    curl \
    vim \
    ffmpeg \
    youtube-dl

ENTRYPOINT ["sleep", "infinity"]