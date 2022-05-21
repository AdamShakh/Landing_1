FROM node:10-alpine

RUN apk add --no-cache bash

WORKDIR /usr/src/app

COPY ./package*.json ./
COPY . .

ENV HOST=0.0.0.0 \
    PORT=5000

EXPOSE 5000
EXPOSE 9001
