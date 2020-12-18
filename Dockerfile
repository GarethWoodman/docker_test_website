FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wilcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

# Internal port of container
EXPOSE 3000

# Command to run service on container
CMD ["node", "./bin/www"]