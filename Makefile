all: build

build:
	@docker build -t rmeharg/doxygen:latest .

release: build
	@docker build -t rmeharg/doxygen:$(shell cat VERSION) .
