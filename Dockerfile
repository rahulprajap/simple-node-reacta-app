
FROM node:21-alpine

WORKDIR /app

COPY package*.json  .

USER node

RUN npm install

COPY  . .


CMD [ "node", "app.js" ]