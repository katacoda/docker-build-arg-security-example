.PHONY: build habitus

default: build

build:
	docker build --build-arg token=12345 -t build-arg-eg .

habitus: 
	cd habitus && ./habitus_darwin_amd64 -f habitus.yaml --build host=192.168.99.1

onvault:
	docker run -p 172.17.0.1:14242:3000 -v ~/.ssh:/vault/.ssh --name=vault -d dockito/vault
	docker build --no-cache -f Dockerfile-onvault .
	docker rm -f vault
