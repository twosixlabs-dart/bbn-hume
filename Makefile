IMAGE_PREFIX = twosixlabsdart
APP_VERSION = R2022_03_21

docker-push-reader:
	docker build -f Dockerfile-Reader -t $(IMAGE_PREFIX)/hume-bbn-reader:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/hume-bbn-reader:$(APP_VERSION)

docker-push-oiad:
	docker build -f Dockerfile-Reader -t $(IMAGE_PREFIX)/hume-bbn-oiad:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/hume-bbn-oiad:$(APP_VERSION)
