
## Repos:
https://hub.docker.com/repository/docker/timwalker2k/hello-az
https://github.com/twalker/hello-az.git

## To build image
docker build -t timwalker2k/hello-az:latest .

# TO publish build image
docker image push timwalker2k/hello-az:1.1

## To run docker container
docker run -p 80:80 timwalker2k/hello-az

## In azure url:
https://tw2k-hello-az.azurewebsites.net/
app service:
tw2k-hello-az


azure container webhook url:
https://$tw2k-hello-az:vNbpoJxJCJjeRW46RcEThAkzTs5DbjPxdevfw0zEo5wufcgY003Mdjia6D3z@tw2k-hello-az.scm.azurewebsites.net/docker/hook

secret: foobarbaz

az acr task create --registry timwalker2k/hello-az:latest --name buildwebapp --image webimage --context https://github.com/twalker/hello-az.git --branch master --file Dockerfile --git-access-token <access_token>