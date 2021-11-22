FROM  docker.io/golang:alpine
MAINTAINER tongxinCode@github
LABEL description="golang build env"
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main/" > /etc/apk/repositories && \
    apk add --update curl bash && \
    rm -rf /var/cache/apk/*