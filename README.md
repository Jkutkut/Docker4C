# Docker4C:

This repository contains all the logic required to be able to compile and run C programs in a Docker container. This way, you can debug your programs with ease using tools like _valgrind_.


**Note 1**: This repository was created with 42 projects in mind.

**Note 2**: The container is deleted when you exit, so no need to manage anything!


## Usage:
### Run specific directory:
- Go to the directory you want to use inside the container.
- Run:
```zsh
docker run -it --rm -v $(PWD):/home/marvin/docker jkutkut/docker4c
```

### Run with all my things:
Replace `$(PWD)` with the directory you want.

**Example**: Run with the Desktop:
```zsh
docker run -it --rm -v ~/Desktop:/home/marvin/docker jkutkut/docker4c
```

## Features:
#### v1.0.0:
- valgrind
- clang
- zsh:
- Oh-my-zsh
- vim
- git
- zip
- curl
- Libraries installed:
	- build-essential
	- readline-common
	- libreadline-dev

## Versions:
You can see all the containers already created [here](https://hub.docker.com/repository/docker/jkutkut/docker4c/general) or build your own from the code from this repository.
```zsh
docker run -it --rm -v $(PWD):/home/marvin/docker jkutkut/docker4c:1.X.X
```

## Special thanks:
This project was possible thanks to the inspiration from [this repository](https://github.com/yeta1990/docker-gcc-clang) from [yeta1990](https://github.com/yeta1990). Thank you!
