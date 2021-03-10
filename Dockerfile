FROM node:10-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json /

RUN npm install --only=production

COPY . /

EXPOSE 3000

CMD [ "node", "app.js" ]
