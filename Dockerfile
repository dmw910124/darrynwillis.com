# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Change directory to frontend
RUN cd frontend

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install

# Copy the rest of the app's source code to the container
COPY . .

# Build the Nuxt.js app
RUN yarn build

# Expose the port
EXPOSE 80

# Set the command to start the Nuxt.js app
CMD ["yarn", "start"]
