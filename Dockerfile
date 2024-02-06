FROM node:18-alpine
WORKDIR /opt/
COPY ./package.json ./
ENV PATH /opt/node_modules/.bin:$PATH
RUN  npm install
WORKDIR /opt/app
COPY . .
RUN npm run build
EXPOSE 1337
CMD ["yarn", "develop"]
