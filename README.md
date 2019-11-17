# Docker Demo

This repository is the demo for the blog post:

[DevOps - Docker 入门](https://jinhucheung.github.io/2019/11/16/9_devops_docker_started)

## Installation

Clone this repository:

```
$ git clone git@github.com:jinhucheung/docker-demo.git
```

Then build app image:

```
$ cd docker-demo
$ docker build -t jinhucheung/docker-demo .
```

Create docker demo network:

```
$ docker network create docker-demo-network
```

Run Postgres container:

```
$ docker run --rm --name postgre-app --network docker-demo-network -e POSTGRES_PASSWORD=1234 -d postgres
```

Run docker demo app:

```
$ docker run --rm --network docker-demo-network --env-file .env jinhucheung/docker-demo
```