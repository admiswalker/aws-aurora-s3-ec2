FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \ 
    curl \
    unzip \
    tar \
    git \
    bash-completion \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
 && unzip awscliv2.zip \
 && rm awscliv2.zip \
 && ./aws/install

ENV NODE_DL_URL https://nodejs.org/download/release/v18.8.0/node-v18.8.0-linux-x64.tar.gz
ENV NODE_FILE_NAME node-v18.8.0-linux-x64.tar.gz
RUN curl -SLO ${NODE_DL_URL} \
    && tar -zxvf ./${NODE_FILE_NAME} -C /usr/local --strip-components=1 --no-same-owner \
    && rm ./${NODE_FILE_NAME} \
    && ln -s /usr/local/binnode /usr/local/bin/nodejs

