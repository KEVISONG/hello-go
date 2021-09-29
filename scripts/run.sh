docker stop hello-go
docker rm hello-go

docker load -i 1.0.0.image

docker run -d --name hello-go --restart always kevisong/hello-go:1.0.0
docker logs -f hello-go