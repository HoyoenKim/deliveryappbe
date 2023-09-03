FROM node:lts-buster
LABEL author hoyeonKim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 4000
CMD npm run start