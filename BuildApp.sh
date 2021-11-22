#!/bin/bash
# "$(pwd)/src" 表示当前路径下的src目录
# –rm 表示退出之后删除镜像
# 以下是一条命令
docker run -v "$(pwd)/src":/src --rm tongxincode/go-build:1.0 \
    /bin/bash -c " cd /src && go env -w GO111MODULE=auto && go build main.go && exit"
# 可以使用以下命令进行手动交互性测试
# docker run -it -v src:/src --rm tongxincode/go-build:1.0 /bin/bash