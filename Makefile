IMAGE_PREFIX = twosixlabsdart
APP_VERSION = R2022_03_21

docker-login:
	docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}

docker-push-reader: docker-login
	docker build -f Dockerfile-Reader -t $(IMAGE_PREFIX)/hume-bbn-reader:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/hume-bbn-reader:$(APP_VERSION)
	docker logout

docker-push-oiad: docker-login
	docker build -f Dockerfile-Reader -t $(IMAGE_PREFIX)/hume-bbn-oiad:$(APP_VERSION) .
	docker push $(IMAGE_PREFIX)/hume-bbn-oiad:$(APP_VERSION)
	docker logout
