FROM node:14.17.1-alpine
WORKDIR /opt/papi
COPY ./package.json /opt/papi/package.json
COPY ./package-lock.json /opt/papi/package-lock.json

RUN npm config set fetch-retry-maxtimeout 600000 -g && npm install
ENV PATH /opt/node_modules/.bin:$PATH

COPY . .
RUN mv /opt/strapi-in/flag.txt /flag.txt
RUN chown -R node:node /opt/papi/data
RUN chown -R node:node /opt/papi/public/uploads
RUN chown node:node /opt/papi.env
RUN npm run build

USER node
CMD ["npm", "run", "start"]
