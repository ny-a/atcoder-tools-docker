FROM alpine:3.14.0

RUN apk update && \
    apk add g++ boost boost-dev py3-pip && \
    python3 -m pip install atcoder-tools && \
    adduser -D user && \
    wget https://img.atcoder.jp/practice2/ac-library.zip -O /tmp/ac-library.zip && \
    unzip /tmp/ac-library.zip -d /home/user/ac-library

WORKDIR /pwd

USER user

ADD .atcodertools.toml template.cpp cpp.py cpp.toml /home/user/

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
