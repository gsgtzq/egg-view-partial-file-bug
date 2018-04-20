FROM node:carbon-alpine
LABEL MAINTAINER="zhangqi<gsgtzq@gmail.com>"
ENV NODE_ENV=prod
RUN apk update \
    && apk add tzdata \
    && rm -rf /var/cache/apk/*
COPY package.json /jzx-jingmai/package.json
WORKDIR /jzx-jingmai
RUN npm install --registry=https://registry.npm.taobao.org
COPY . /jzx-jingmai
VOLUME [ "/jzx-jingmai/logs" ]
EXPOSE 7001
CMD [ "npm", "run", "start:docker" ]
