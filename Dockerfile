# Pull Node.js version 14 images from Docker Hub
FROM node:14

# Change the current directory of docker container to /app
WORKDIR /app

# Copy all of the files from the same directory as Dockerfile
# to the current directory of docker container
COPY . .

# Set environment variable for the Node.js app
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependencies and build the app
RUN npm install --production --unsafe-perm && npm run build

# Start the app
CMD ["npm", "start"]

# Use port 8080
EXPOSE 8080


