FROM ubuntu:18.04

WORKDIR /app

RUN apt-get update && \
    apgt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    wget \
    curl \
    vim \

ENTRYPOINT ["sleep", "inifinity"]