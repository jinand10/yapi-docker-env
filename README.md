# YAPI接口文档管理平台docker部署

* YAPI官方文档：https://hellosean1025.github.io/yapi/index.html
* YAPI-github：https://github.com/YMFE/yapi
* 联系：jinand10@163.com

## usage

* 首次安装：  `docker-compose up`
* 初始化超管账号：  `docker exec -it 容器ID /bin/bash  && node /api/vendors/server/install.js`

## notice

* 使用端口 `3000:3000`
* yapi 版本 为 `v1.8.5`
* 管理员帐号 `jinand10@163.com` 密码：`ymfe.org`
