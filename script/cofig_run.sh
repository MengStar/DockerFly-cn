#!/usr/bin/env bash

docker run  --name syncv1 --network arcms -p 8080:8080 registry.cn-hangzhou.aliyuncs.com/mengstars/syncv1
docker run  --name adminv1 --network arcms -p 8090:8090 registry.cn-hangzhou.aliyuncs.com/mengstars/adminv1
docker run  --name portalv1 --network arcms -p 8070:8070 registry.cn-hangzhou.aliyuncs.com/mengstars/portalv1


# docker stack deploy -c config_fake_deploy.yml arcms
