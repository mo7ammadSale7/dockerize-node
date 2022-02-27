# First stage base image
FROM node:lts-slim as build
RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/
RUN yarn install

COPY . /app/
ENTRYPOINT [ "yarn", "start" ]
