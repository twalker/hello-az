
## Repos:
https://hub.docker.com/repository/docker/timwalker2k/hello-az
https://github.com/twalker/hello-az.git

## To build image
docker build -t timwalker2k/hello-az:latest .

# To publish build image
docker image push timwalker2k/hello-az:1.1

## To run docker container
docker run -p 80:80 timwalker2k/hello-az

## In azure url:
https://tw2k-hello-az.azurewebsites.net/
app service: tw2k-hello-az
