docker run -d -p 3000:3000 tongxincode/gohttptest:1.0 --name gohttptest:1.0
curl http://127.0.0.1:3000/

# 进入容器检查
# docker exec -it $(docker ps -a | grep "tongxincode/gohttptest:1.0" | sed -n "1, 1p" | awk '{print $1}') /bin/bash