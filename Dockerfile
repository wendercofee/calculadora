from debian:latest as build

RUN apt update -y && \
    apt install nodejs -y &&\
    apt install npm -y

WORKDIR /home/project/react

COPY projeto/ .

RUN npm install

EXPOSE 3000

ENTRYPOINT [ "npm", "start" ]