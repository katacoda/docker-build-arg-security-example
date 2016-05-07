.PHONY: build habitus

default: build

build:
	docker build --build-arg token=12345 -t build-arg-eg .

habitus: 
	cd habitus && ./habitus_darwin_amd64 -f habitus.yaml --build host=192.168.99.1
