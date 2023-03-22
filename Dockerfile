FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
 sudo \
 curl \
 zsh \
 zip \
 git \
 vim \
 build-essential \
 valgrind \
 readline-common \
 libreadline-dev \
 clang \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/zsh marvin && \
	echo "marvin ALL=(ALL) ALL" > /etc/sudoers.d/marvin && \
	chmod 0440 /etc/sudoers.d/marvin && \
	passwd -d marvin

USER marvin

ADD res/.vimrc /home/marvin/.vimrc
ADD res/.zshrc /home/marvin/.zshrc

WORKDIR /home/marvin/app

ENTRYPOINT ["/bin/zsh"]
