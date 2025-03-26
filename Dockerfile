FROM node:16-alpine

RUN apk update && apk upgrade --no-cache && \
    apk add --no-cache git
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install
EXPOSE  4000
CMD node graphserver.js
