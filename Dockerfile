# Use an official Node.js runtime as the base image
FROM lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json to the container
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install

# Copy the rest of the app's source code to the container
COPY . .

# Expose the port
EXPOSE 3000

# Set the command to start the Express app
CMD ["node", "app.js"]
