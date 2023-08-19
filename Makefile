

build:
	docker buildx build --platform linux/amd64,linux/arm64 --tag apitable/node:v16.15.0 -f 7/bullseye/Dockerfile . 

buildpush:
	docker buildx build --platform linux/amd64,linux/arm64 --tag apitable/node:v16.15.0 -f 7/bullseye/Dockerfile . --push