FROM node:11-alpine

MAINTAINER Jônatas Rodrigues <jonatas.rodriguess@gmail.com>

RUN npm install -g -q create-react-app@2.1.1

WORKDIR /app

COPY . /app