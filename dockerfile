FROM node:16.13.2-alpine3.14

WORKDIR /home/node/app

COPY package.json /home/node/app

RUN npm install --quiet

COPY . /home/node/app

EXPOSE 3000

CMD [ "node", "server.js" ]
