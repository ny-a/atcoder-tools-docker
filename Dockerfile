FROM alpine:3.14.0

WORKDIR /pwd

ENV HOME=/home/user

RUN apk update && \
    apk add g++ boost boost-dev py3-pip && \
    python3 -m pip install atcoder-tools && \
    wget https://img.atcoder.jp/practice2/ac-library.zip -O /tmp/ac-library.zip && \
    mkdir -p /home/user && \
    unzip /tmp/ac-library.zip -d /home/user/ac-library && \
    rm /tmp/ac-library.zip

ADD .atcodertools.toml template.cpp cpp.py cpp.toml entrypoint.sh /home/user/

ENTRYPOINT ["/home/user/entrypoint.sh"]
