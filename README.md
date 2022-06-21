salt-master

##### 如何构建?
```bash
docker build -t "salt-master:0.0.0" .
```

##### 如何运行?
```bash
docker run --name master-node -it -p 4505-4506:4505-4506 salt-master:0.0.0
```

##### 验证镜像是否可用
```bash
# 先运行一个master容器
docker run --name master-node -it -p 4505-4506:4505-4506 salt-master:0.0.0


# 运行一个minion容器
docker run --name minion-node -it -e "SALT_MASTER=192.168.x.x" -e "MINION_ID=salt-minion-t" salt-minion:0.0.0


# 回到master容器使用如下命令，查看是否存在salt-minion-t的key
[root@0a44465d72d7 /]# salt-key -L
Accepted Keys:
salt-minion-t
Denied Keys:
Unaccepted Keys:
Rejected Keys:
[root@0a44465d72d7 /]# 
# 至此运行成功
```


---
that's all
