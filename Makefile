
.PHONY: build

default: build

build:
	docker build --build-arg token=12345 -t build-arg-eg .
