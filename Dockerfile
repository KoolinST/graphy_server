FROM node:hydrogen-buster


RUN apt-get update && apt-get install -y --only-upgrade git
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js
