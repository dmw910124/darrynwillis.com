# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install

# Copy the rest of the app's source code to the container
COPY . .

# Expose the port
EXPOSE 80

# Set the command to start the Node.js app
CMD ["node", "index.js"]
