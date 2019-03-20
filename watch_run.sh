# https://www.cnblogs.com/qiniu/p/6182679.html

docker run -d -p 8083:8083 -p 8086:8086 --expose 8090 --expose 8099 --name influxsrv  registry.cn-hangzhou.aliyuncs.com/mengstars/influxdb
# cadvisor cadvisor

# 8081
docker run --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --publish=8081:8080 --detach=true --link influxsrv:influxsrv --name=cadvisor  registry.cn-hangzhou.aliyuncs.com/mengstars/cadvisor:latest -storage_driver=influxdb -storage_driver_db=cadvisor -storage_driver_host=influxsrv:8086


docker run -d -p 3000:3000 -e INFLUXDB_HOST= 10.105.72.79  -e INFLUXDB_PORT=8086 -e INFLUXDB_NAME=cadvisor -e INFLUXDB_USER=cadvisor -e INFLUXDB_PASS=cadvisor --link influxsrv:influxsrv --name grafana grafana/grafana


# docker stack deploy -c watch_deploy.yml watch
