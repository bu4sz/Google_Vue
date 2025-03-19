# Use the Node.js 20 Alpine image as the base image
FROM node:22-alpine

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# npm aktualisieren ...
RUN npm install -g npm@11.2.0

# Install the Vue CLI globally in the container
RUN npm install -g @vue/cli

COPY src/google-vue .

# Expose port 8080 for the development server
EXPOSE 8080

# Start the development server when the container starts
CMD ["npm", "run", "serve"]
