# Docker4C:

This repository contains all the logic required to be able to compile and run C programs in a Docker container. This way, you can debug your programs with ease using tools like _valgrind_.


**Note 1**: This repository was created with 42 projects in mind.

**Note 2**: The container is deleted when you exit, so no need to manage anything!


## Usage:
### Run specific directory:
- Go to the directory you want to use inside the container.
- Run in Mac:
  - Open the Docker App.
  - Run the following command:
```zsh
docker run -it --rm -v $(PWD):/docker jkutkut/docker4c
```

- Run in Linux:
  - Run the following command:
```zsh
docker run -it --rm -v $(pwd):/docker jkutkut/docker4c
```


### Run with all my things:
Replace `$(PWD)` with the directory you want.

**Example**: Run with the Desktop:
```zsh
docker run -it --rm -v ~/Desktop:/docker jkutkut/docker4c
```

### Update:
If you want to use the latest version, run this before using it:
```zsh
docker pull jkutkut/docker4c:latest
```

## Features:
#### v1.0.0:
- valgrind
- clang
- zsh:
  - Oh-my-zsh
  - Custom .zshrc
- vim:
  - Custom .vimrc
- git
- zip
- curl
- Libraries installed:
	- build-essential
	- readline-common
	- libreadline-dev

## Customization:
If you want to add more tools or features to the container, feel free to contribute to this repository.

If you just want to personalize your container, you can create a permanent container by removing the `--rm` flag from the command (and naming it so it will be easy to handle later). Keep in mind that you will have to manage the container yourself:

- Create and run the container:
```zsh
docker run -it --name d4c -v $(PWD):/docker jkutkut/docker4c
```
```zsh
docker run -it --name d4c -v $(pwd):/docker jkutkut/docker4c
```

- Stop the container:
```zsh
docker stop d4c
```

- Restart the container:
```zsh
docker start d4c
```

- Delete the container (Requires to stop it first):
```zsh
docker rm d4c
```


## Versions:
You can see all the images already created [here](https://hub.docker.com/r/jkutkut/docker4c) or build your own from the code from this repository.
```zsh
docker run -it --rm -v $(PWD):/docker jkutkut/docker4c:v1.X.X
```
```zsh
docker run -it --rm -v $(pwd):/docker jkutkut/docker4c:v1.X.X
```

## Special thanks:
This project was possible thanks to the inspiration from [this repository](https://github.com/yeta1990/docker-gcc-clang) from [yeta1990](https://github.com/yeta1990). Thank you!
