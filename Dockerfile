# BUILD
# Use NodeJS base image
FROM node:13 as builder

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

CMD ["./node_modules/@ionic/cli/bin/ionic", "build"]

# Bind the port that the image will run on
EXPOSE 8080