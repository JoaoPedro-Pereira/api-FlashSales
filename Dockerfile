FROM node:24-alpine

WORKDIR /usr/src/app

COPY package.json .

RUN npm ci

COPY . .

EXPOSE 3000

RUN npx tsc

CMD ["node", "dist/server.js"]

USER node