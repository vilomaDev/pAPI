FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install strapi@workspace

RUN npm install

COPY . .

EXPOSE 1337

CMD ["npm", "start"]
