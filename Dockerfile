FROM alpine:3.14

RUN apk --no-cache add nodejs npm

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1337

CMD ["npm", "start"]
