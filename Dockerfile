# Use the official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source code
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Define the command to run the app
CMD [ "npm", "start" ]
