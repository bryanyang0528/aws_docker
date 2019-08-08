FROM cgswong/aws:latest
RUN apk add --no-cache  --repository http://dl-cdn.alpinelinux.org/alpine/edge/main --repository  http://dl-cdn.alpinelinux.org/alpine/edge/community && apk update && apk upgrade && \
    apk add docker py-pip at
RUN pip install docker-compose
RUN atd

VOLUME ["/var/run/docker.sock"]
