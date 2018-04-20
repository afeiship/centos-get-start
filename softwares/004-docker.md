# docker 

## commands:
```shell
yum install -y docker
```

## check:
```shell
docker --version
```

## start docker
```shell
service docker start
```

## speed up
+ solution1
```shell
sudo cp -n /lib/systemd/system/docker.service /etc/systemd/system/docker.service
sudo sed -i "s|ExecStart=/usr/bin/docker daemon|ExecStart=/usr/bin/docker daemon --registry-mirror=<your accelerate address>|g" /etc/systemd/system/docker.service
sudo systemctl daemon-reload
sudo service docker restart
```
+ solution2
```shell
# 您可以修改 /etc/docker/daemon.json 文件并添加上 registry-mirrors 键值。
vim /etc/docker/daemon.json

{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
# restart docker
service docker restart
```

## resouces:
+ https://blog.csdn.net/hyzhou33550336/article/details/58033405
+ https://blog.csdn.net/shenzhen_zsw/article/details/74277518
+ https://blog.csdn.net/qq_33575129/article/details/78196279