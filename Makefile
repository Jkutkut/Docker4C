all: build run

build:
	docker build -t jkutkut/docker4c .

run:
	docker run -it --rm -v $(PWD):/home/marvin/app jkutkut/docker4c
