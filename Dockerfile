FROM node:14.17.1-alpine
WORKDIR /srv/app
COPY ./package.json ./
RUN npm install

COPY ./package-lock.json ./
CMD ["npm", "run", "start"]
