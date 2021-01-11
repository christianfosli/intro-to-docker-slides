# Intro to Docker

[![build status](https://img.shields.io/docker/cloud/build/christianfosli/intro-to-docker-slides)](https://hub.docker.com/repository/docker/christianfosli/intro-to-docker-slides)

A small presentation that I'm giving.

## Run from Dockerhub

```console
docker run --rm -d -p 80:80 christianfosli/intro-to-docker-slides
```

## Run from source-code

```console
git clone <this repo>

# through nginx
docker-compose up -d --build

# or through snowpack dev-server with hot-reload
docker-compose -f docker-compose.debug.yaml up -d --build
```
