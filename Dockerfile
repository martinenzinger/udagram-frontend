# Base image
FROM beevelop/ionic:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

RUN ionic build
RUN ionic serve --port 8080 --verbose

# Bind the port that the image will run on
EXPOSE 8080