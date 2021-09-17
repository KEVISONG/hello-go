FROM alpine

RUN mkdir -p /data/hello-go
WORKDIR /data/hello-go
ADD ./cmd/hello-go/hello-go .

CMD ['/data/hello-go/hello-go', "--config=/data/hello-go/config/config.yml"]
