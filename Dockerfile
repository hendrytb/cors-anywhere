FROM node:latest
MAINTAINER geeks@mataharimall.com

RUN mkdir -p /www/
WORKDIR /www/

COPY ./package.json /www/package.json
RUN npm install

COPY ./ /www/

EXPOSE 8080
