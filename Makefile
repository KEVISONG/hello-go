version = 1.0.0

all: build-hello-go build-hello-go-image save-hello-go-image

build-hello-go:
	GOOS=linux GOARCH=amd64 go build -o ./cmd/hello-go/hello-go ./cmd/hello-go

build-hello-go-image:
	docker build \
		-f ./build/package/hello-go/Dockerfile \
		. \
		-t kevisong/hello-go:$(version)

save-hello-go-image:
	docker save \
	-o ./build/package/hello-go/$(version).image \
	kevisong/hello-go:$(version)

push:
	docker push \
	kevisong/hello-go:$(version)
