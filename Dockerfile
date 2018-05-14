FROM node:latest
MAINTAINER geeks@mataharimall.com

ENV CORSANYWHERE_WHITELIST https://mataharimall.com,http://mataharimall.com,https://mataharimall.com,http://mataharimall.com
ENV CORSANYWHERE_BLACKLIST https://blacklisted.host

RUN mkdir -p /www/
WORKDIR /www/

COPY ./package.json /www/package.json
RUN npm install

COPY ./ /www/

EXPOSE 8080