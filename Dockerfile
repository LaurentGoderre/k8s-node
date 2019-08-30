FROM node:10-alpine

USER node

RUN mkdir /home/node/app

WORKDIR /home/node/app

COPY package* ./

RUN npm install --production

COPY index.js .

CMD ["node", "index.js"]
