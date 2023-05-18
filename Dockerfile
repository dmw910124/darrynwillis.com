# Use an official Node.js runtime as the base image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app's source code to the container
COPY . .

# Set the command to start the Node.js app
CMD ["node", "index.js"]