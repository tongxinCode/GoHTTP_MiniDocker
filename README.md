# 利用alpine linux构建精简容器

## 构建golang build环境

利用./build/Dockerfile构建编译环境

```bash
    ./BuildEnv.sh
```

## 基于容器编译环境编译alpine linux下的可执行程序

```bash
    ./BuildApp.sh
```

## 基于编译好的二进制程序打包基于alpine linux的运行容器

利用./Dockerfile打包二进制程序

```bash
    ./DockerBuild.sh
```

## 运行自定义的容器

```bash
    ./DockerRun.sh
```

## 清理容器（可选，常用于调试）

```bash
    ./DockerClean.sh
```
