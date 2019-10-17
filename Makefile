IMAGE_NAME ?= echo
PORT = 65432
VERSION ?= 2
CONTAINER_NAME ?= echo2

build:
	docker build . -t $(IMAGE_NAME):$(VERSION)
start:
	docker run -d -p $(PORT):$(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME):$(VERSION)
stop:
	docker container stop $(CONTAINER_NAME)
clean:
	docker rm -f $(CONTAINER_NAME)