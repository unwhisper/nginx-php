## Example
### 1、docker run 启动，并安装PHP扩展(不挂载ini、extension目录则不安装扩展)
```sh
cd example && \
docker run -p 80:80 \
-p 443:443 \
-v $(pwd)/wwwroot:/data/wwwroot \
-v $(pwd)/wwwlogs:/data/wwwlogs \
-v $(pwd)/vhost:/data/server/nginx/vhost \
-v $(pwd)/ssl:/data/server/nginx/ssl \
-v $(pwd)/ini:/data/server/php/ini \
-v $(pwd)/extension:/data/server/php/extension \
-d nginx-php
```

### 2、docker-compose启动

#### 2.1 安装docker-compose
```sh
# 地址一
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 地址二
curl -L "https://get.daocloud.io/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m`" > /usr/local/bin/docker-compose
```

#### 2.2 授予可执行权限
```sh
sudo chmod +x /usr/local/bin/docker-compose
```
#### 2.3 在当前目录编写 docker-compose.yml 文件
[docker-compose.yml](./docker-compose.yml)

#### 2.4 启动服务
```sh
# 在当前目录运行
docker-compose up  # 前台运行

docker-compose up -d  # 后台运行
```

### WEB
- **HTTP**: http://ip
- **HTTPS**: https://ip

If you modify the hosts, you can open the website with the domain.
- https://test.domain.com