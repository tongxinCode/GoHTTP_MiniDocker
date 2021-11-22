FROM  docker.io/alpine:latest
MAINTAINER tongxinCode@github
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main/" > /etc/apk/repositories && \
    apk add --update curl bash && \
    rm -rf /var/cache/apk/*
LABEL version 1.0
ADD src/main .
EXPOSE 3000
ENTRYPOINT  ["./main"]