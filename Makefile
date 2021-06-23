all: build

build:
	@docker build -t rmeharg/doxygen:latest .

release: build
	@docker build -t rmeharg/doxygen:$(shell cat VERSION) .

release: build
	@docker build -f Dockerfile-Offline --build-arg http_proxy=${HTTP_PROXY} --build-arg https_proxy=${HTTPS_PROXY} -t rmeharg/doxygen-offline:latest .
