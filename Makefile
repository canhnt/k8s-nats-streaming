IMAGE_NAME=nats-streaming-server
PREFIX=canhnt/nats-streaming-server
TAG=v0.6.0

.PHONY: docker
docker:
	docker build -t $(IMAGE_NAME) .

.PHONY: push
push:
	docker tag $(IMAGE_NAME) $(PREFIX):$(TAG)
	docker push $(PREFIX):$(TAG)

.PHONY: helm
helm: 
	helm package charts/nats-streaming-ft