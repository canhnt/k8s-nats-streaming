IMAGE_NAME=nats-streaming-server
PREFIX=canhnt/nats-streaming-server
TAG=v0.5.0

.PHONY: docker
docker:
	docker build -t $(IMAGE_NAME) .
.PHONY: push
push:
	docker tag $(IMAGE_NAME) $(PREFIX):$(TAG)
	docker push $(PREFIX):$(TAG)