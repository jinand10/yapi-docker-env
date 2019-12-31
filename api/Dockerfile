FROM node:12-alpine

LABEL MAINTAINER jinand10@163.com

ENV TZ="Asia/Shanghai" 
ENV YAPI_VERSION="1.8.5"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache git python make openssl tar gcc

RUN mkdir /api && mkdir /api/package

COPY ./package/yapi-${YAPI_VERSION}.tar.gz /api/package/

RUN cd /api/package && tar zxvf yapi-${YAPI_VERSION}.tar.gz && \
    mv /api/package/yapi-${YAPI_VERSION} /api/vendors

RUN npm config set registry https://registry.npm.taobao.org

RUN cd /api/vendors && \
    npm install -g node-gyp yapi-cli && \
	npm install --production

WORKDIR /api

COPY ./config.json /api/

EXPOSE 3000

#COPY entrypoint.sh /api/
#RUN chmod 755 /api/entrypoint.sh

CMD ["node", "/api/vendors/server/app.js"]
