# bfd-binary-for-kube-ovn-cni

``` bash

# 基于build/build.sh 构建镜像以及二进制
# 从镜像中取出二进制
# 编译完成后基于docker cp 从镜像中取出 /usr/local/bin/bfdd-beacon /usr/local/bin/bfdd-control

docker run -d --name kube-ovn-bfdd-base kube-ovn-bfdd-base:v1.12.0  sleep infinity
docker cp kube-ovn-bfdd-base:/usr/local/bin/bfdd-control .
docker cp kube-ovn-bfdd-base:/usr/local/bin/bfdd-beacon .


```

## 1. 该项目仅用于编译kube-ovn-cni所需要的bfd二进制 

- bfdd-beacon 
- bfdd-control


## 2. 二进制依赖构建源项目是OpenBFDD
https://github.com/dyninc/OpenBFDD

