# Intro to Docker

[![ci](https://github.com/christianfosli/intro-to-docker-slides/actions/workflows/ci.yaml/badge.svg)](https://github.com/christianfosli/intro-to-docker-slides/actions/workflows/ci.yaml)

A small presentation that I'm giving.

## Run from Dockerhub

```console
docker run --rm -d -p 8080:80 christianfosli/intro-to-docker-slides
```

Open http://localhost:8080 in your browser to see the presentation.


## Run from source-code

```sh
git clone <this repo>

# with docker-compose and nginx
docker-compose up -d --build
# open http://localhost:8080 in your browser to see the presentatio

# with node/vite and hot-reload
npm run dev
# open the url displayed in the console in your browser to see the presentation
```

Open http://localhost:8080 in your browser to see the presentation.
