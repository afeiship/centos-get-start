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
```shell
sudo cp -n /lib/systemd/system/docker.service /etc/systemd/system/docker.service
sudo sed -i "s|ExecStart=/usr/bin/docker daemon|ExecStart=/usr/bin/docker daemon --registry-mirror=<your accelerate address>|g" /etc/systemd/system/docker.service
sudo systemctl daemon-reload
sudo service docker restart
```

## resouces:
+ https://blog.csdn.net/hyzhou33550336/article/details/58033405