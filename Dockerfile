# Use the official Node.js image as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 4200 (default for Angular)
EXPOSE 4200

# Command to start the Angular app
CMD ["npm", "start"]
