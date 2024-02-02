# Use the official Node image with a specified version as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Strapi dependencies
RUN npm install

# Copy the rest of the Strapi application code to the container
COPY . .

# Expose the port that Strapi will run on
EXPOSE 1337

# Start Strapi in production mode
CMD ["npm", "start"]
