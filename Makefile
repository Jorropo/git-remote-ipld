all: deps
	go build ./...

gx:
	go get github.com/whyrusleeping/gx
	go get github.com/whyrusleeping/gx-go

deps: gx
	gx --verbose install --global
	gx-go rewrite

install: all
	go install

.PHONY: all gx deps install
