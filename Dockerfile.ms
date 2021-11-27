FROM docker.io/golang:alpine AS build-env

MAINTAINER tongxinCode@github
LABEL description="golang build env"
ENV GO111MODULE=auto
ADD src/main.go /opt/
RUN cd /opt &&\
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go

FROM alpine:latest
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main/" > /etc/apk/repositories && \
    apk add --update curl bash && \
    rm -rf /var/cache/apk/*
LABEL version 1.0
COPY --from=build-env /opt/main .
EXPOSE 3000
ENTRYPOINT  ["./main"]