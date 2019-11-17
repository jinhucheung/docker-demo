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

Run app after building:

```
$ docker run --rm jinhucheung/docker-demo
```