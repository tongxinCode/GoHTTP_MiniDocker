# 利用alpine linux构建精简容器

## 多文件分步构建法

适用于docker不同版本,docker.io/docker.ce/docker.ee

### 第一步，构建golang build环境

利用./build/Dockerfile构建编译环境

```bash
    ./BuildEnv.sh
```

### 第二步，基于容器编译环境编译alpine linux下的可执行程序

```bash
    ./BuildApp.sh
```

### 第三步，基于编译好的二进制程序打包基于alpine linux的运行容器

利用./Dockerfile打包二进制程序

```bash
    ./DockerBuild.sh
```

### 第四步，运行自定义的容器

```bash
    ./DockerRun.sh
```

### 第五步，清理容器（可选，常用于调试）

```bash
    ./DockerClean.sh
```

## 多阶段构建法（推荐）

只适用于高版本的docker.ce/docker.ee

### 第一步，基于多阶段构建技术直接构建最小容器

其实就是Docker公司将多文件分步构建法的思想整合进docker中，便于用户使用

```bash
    ./DockerMSBuild.sh
```

### 第二步，运行自定义的容器

```bash
    ./DockerMSRun.sh
```

### 第三步，清理容器（可选，常用于调试）

```bash
    ./DockerClean.sh
```
