IMAGE_PREFIX = twosixlabsdart
APP_VERSION = R2022_03_21

docker-push-reader:
	docker build -f Dockerfile-Reader -t $(IMAGE_PREFIX)/bbn-hume-reader:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/bbn-hume-reader:$(APP_VERSION)

docker-push-oiad:
	docker build -f Dockerfile-OIAD -t $(IMAGE_PREFIX)/bbn-hume-oiad:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/bbn-hume-oiad:$(APP_VERSION)
