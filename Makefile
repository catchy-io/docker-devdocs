all: clean build

clean:
	docker images | grep catchy/devdocs:latest && docker rmi  -f catchy/devdocs:latest || echo -n

build:
	docker build -t catchy/devdocs .

run:
	docker run catchy/devdocs:latest

