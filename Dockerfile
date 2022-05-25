FROM node:16-alpine3.11

RUN apk update
RUN apk add wget python3 build-base

WORKDIR /bot
COPY . /bot
RUN npm install

CMD ["npm", "run", "prod", "--prefix", "/bot"]
