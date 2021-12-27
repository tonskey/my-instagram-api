FROM node:16-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY tsconfig.json ./
COPY src ./src

RUN npm ci
RUN npm run build

EXPOSE 8080
CMD [ "node", "./dist/index.js" ]