FROM node:14-alpine3.14

EXPOSE 3000

WORKDIR /app

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/
RUN yarn install

COPY . /app/
ENTRYPOINT [ "yarn", "start" ]