FROM node:14.17.1-alpine

# Instala las dependencias necesarias para Node.js y npm
RUN apk add --no-cache nodejs npm

# Establece el directorio de trabajo en /srv/app
WORKDIR /srv/app

# Copia los archivos de la aplicación Strapi al directorio de trabajo
COPY . .

# Instala Strapi
RUN npm install strapi@latest -g
RUN yarn install

# Expone el puerto 1337 para acceder a la aplicación Strapi
EXPOSE 1337

# Comando para ejecutar Strapi cuando se inicie el contenedor
CMD ["strapi", "develop"]
