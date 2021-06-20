FROM archlinux/archlinux

RUN pacman -Syu --needed --noconfirm base-devel unzip python-pip boost boost-libs && \
    python -m pip install atcoder-tools && \
    useradd -mG wheel user && \
    curl -L https://img.atcoder.jp/practice2/ac-library.zip -o /tmp/ac-library.zip && \
    unzip /tmp/ac-library.zip -d /home/user/ac-library

WORKDIR /pwd

USER user

ADD .atcodertools.toml template.cpp cpp.py cpp.toml /home/user/

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
