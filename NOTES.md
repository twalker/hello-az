
## Repos:
https://hub.docker.com/repository/docker/timwalker2k/hello-az
https://github.com/twalker/hello-az.git

## To build image
docker build -t timwalker2k/hello-az:latest .

# To publish build image
docker image push timwalker2k/hello-az:1.1

## To run docker container
docker run -p 80:80 timwalker2k/hello-az

## shell in running container
docker ps # to get container id
docker exec -it <container-id> sh /usr/app


# Development
docker build -f Dockerfile.dev .
docker run -p 3000:3000 -v /usr/app/node_modules  -v $(pwd):/usr/app <image-id>

## using docker-compose
## run in background
docker-compose --file docker-compose.dev.yml up --build --detach
Note: `--build` option is only needed if dev image hasn't been built

## list composed containers running
docker-compose --file docker-compose.dev.yml ps
## stop and remove containers
docker-compose --file docker-compose.dev.yml down

## In azure url:
https://tw2k-hello-az.azurewebsites.net/
app service: tw2k-hello-az
