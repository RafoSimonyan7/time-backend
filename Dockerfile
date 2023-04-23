FROM node:alpine

RUN apk add --no-cache mysql-client

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=time_db

WORKDIR /app

COPY package*.json ./

RUN npm i && npm cache clean --force

COPY . ./

EXPOSE 3000

CMD ["nodemon", "--exitcrash", "index.mjs"]
