FROM node:6-alpine

RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/app
WORKDIR /usr/src/app

USER node
COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app

EXPOSE 3010
