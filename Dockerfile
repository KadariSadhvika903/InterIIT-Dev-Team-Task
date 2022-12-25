FROM node:16-alpine

RUN mkdir -p /home/node/app/node_modules

RUN apk add --update docker openrc

RUN apk add bash

RUN rc-update add docker boot

WORKDIR /home/node/app

COPY package.json ./

RUN yarn install

COPY . .

RUN chmod +x start.sh

CMD ["sh", "./start.sh"]
