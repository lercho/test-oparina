# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port your application will run on
EXPOSE 8080

# Define the command to run your application
CMD ["node", "app.js"]
