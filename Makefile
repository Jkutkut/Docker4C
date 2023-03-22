all: build

build:
	docker build -t jkutkut/docker4c .
	echo "Done! Now you can run it!"

run:
	docker run -it --rm -v $(PWD):/home/marvin/docker jkutkut/docker4c
