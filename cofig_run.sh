#!/usr/bin/env bash

docker network create -d bridge arcms
docker run  --name sync--network arcms -p 8080:8080 registry.cn-hangzhou.aliyuncs.com/mengstars/sync
docker run  --name admin --network arcms -p 8090:8090 registry.cn-hangzhou.aliyuncs.com/mengstars/admin
docker run  --name portal --network arcms -p 8070:8070 registry.cn-hangzhou.aliyuncs.com/mengstars/portal

#docker stack deploy -c config_deploy.yml arcms
