## Build
FROM node:13 AS ionic
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .

CMD ["./node_modules/@ionic/cli/bin/ionic", "build"]
CMD ["npm", "start"]