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

RUN curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh --output /install.sh && \
	/bin/sh /install.sh --unattended --skip-chsh --keep-zshrc && \
	rm /install.sh

COPY res/.vimrc res/.zshrc /root/

WORKDIR /docker
VOLUME /docker

ENTRYPOINT ["/bin/zsh"]
