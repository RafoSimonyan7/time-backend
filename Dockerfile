FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm i && npm cache clean --force

COPY . ./

EXPOSE 5000

CMD ["npm", "run", "dev"]
