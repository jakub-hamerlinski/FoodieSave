FROM node:14-alpine as base

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package*.json ./
USER node

EXPOSE 3000

FROM base as production
ENV NODE_ENV=production
RUN npm ci
COPY --chown=node:node . .
CMD ["node", "bin/www"]

FROM base as dev
ENV NODE_ENV=development
RUN npm install nodemon && npm install
COPY --chown=node:node . .
CMD ["nodemon", "bin/www"]
