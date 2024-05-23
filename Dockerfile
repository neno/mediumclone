FROM node:18.20.2-alpine

ENV NODE_ENV=development

WORKDIR /app

RUN npm install -g pnpm@latest

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

CMD [ "pnpm", "start:dev" ]