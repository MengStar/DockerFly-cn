docker run --name dockerfly -d   -v /var/run/docker.sock:/var/run/docker.sock  --privileged --restart always  -p 28083:28083  registry.cn-hangzhou.aliyuncs.com/mengstars/dockerfly