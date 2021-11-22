docker stop $(docker ps | grep "tongxincode/gohttptest:1.0" | sed -n "1, 1p" | awk '{print $1}')
docker rm $(docker ps -a | grep "tongxincode/gohttptest:1.0" | sed -n "1, 1p" | awk '{print $1}')
# 以下命令可视打包调试情况取消注释
docker rmi tongxincode/gohttptest:1.0
# docker rmi $(docker images -f "dangling=true" -q)