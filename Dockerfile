# Use an official Node.js runtime as the base image
FROM node:18-alpine

# apt-get update and upgrade
RUN sudo apt-get update && sudo apt-get upgrade

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY ./frontend/package.json ./frontend/yarn.lock ./

# Install app dependencies
RUN yarn install

# Copy the rest of the app's source code to the container
COPY ./frontend .

# Build the Nuxt.js app
RUN yarn build

# Expose the port
EXPOSE 80

# Set the command to start the Nuxt.js app
CMD ["yarn", "start"]
