FROM python:3.7-alpine

COPY . /app

WORKDIR /app

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update && apk add build-base postgresql-dev

RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple

CMD python run.py