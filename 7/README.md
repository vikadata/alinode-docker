# How to compile Docker images ?

## Docker Buildx Debug

由于我们是在定制化Dockerfile，我们不能保证一次就编写成功，所以绝大多数的情况我们需要再本地调试一下...

```bash
docker buildx build --platform linux/arm64 --output type=docker --tag alinode/test:v16.15.0 -f [Dockerfile Path] .
```

## Docker Buildx Push

推送镜像到docker hub官方仓库需要我们先登录

```bash
docker login -u [docker hub user]

Password: ***** [you token]


# out
Login Succeeded
...
```

当我们看到`Login Succeeded`登录成功就表示登录成功，执行下面的命令开始推送镜像

```bash
docker buildx build --platform linux/amd64,linux/arm64 --tag apitable/node:v16.15.0 . --push
```