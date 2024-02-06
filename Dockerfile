FROM node:14.17.1-alpine
WORKDIR /srv/app
COPY ./package.json ./
RUN npm install

CMD ["npm", "run", "start"]
