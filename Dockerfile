# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /frontend

# Copy package.json and yarn.lock to the container
COPY ./frontend/package.json ./frontend/yarn.lock ./

# Install app dependencies
RUN yarn install

# Copy the rest of the app's source code to the container
COPY ./frontend .

# Expose the port
EXPOSE 3000

# Set the command to start the Nuxt.js app
RUN yarn run build && yarn run start
