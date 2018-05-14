FROM node:0.12
MAINTAINER geeks@mataharimall.com

ENV PORT=8080
ENV CORSANYWHERE_WHITELIST https://mataharimall.com,http://mataharimall.com,https://mataharimall.com,http://mataharimall.com

RUN mkdir -p /www/
WORKDIR /www/

COPY ./package.json /www/package.json
RUN npm install

COPY ./ /www/

EXPOSE 8080