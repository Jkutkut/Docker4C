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

# Sanitize in clang

RUN useradd -m -s /bin/zsh marvin && \
	echo "marvin ALL=(ALL) ALL" > /etc/sudoers.d/marvin && \
	chmod 0440 /etc/sudoers.d/marvin && \
	passwd -d marvin

RUN chsh -s zsh marvin

USER marvin

WORKDIR /home/marvin/

RUN curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh --output ./install.sh && \
	sh ./install.sh --unattended --skip-chsh --keep-zshrc && \
	rm ./install.sh

WORKDIR /home/marvin/docker

ADD res/.vimrc res/.zshrc /home/marvin/

ENTRYPOINT ["/bin/zsh"]
