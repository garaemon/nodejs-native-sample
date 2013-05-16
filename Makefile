all: build

build: clean configure compile

configure:
	node-gyp configure

compile: configure
	node-gyp build
	npm install .

clean:
	node-gyp clean


.PHONY: clean test build
