FROM node:16.18.0

# create app directory
WORKDIR /usr/src/app

# copy package files
COPY package*.json ./

# install dependencies
# running npm install
RUN npm install

# bundle app resources
COPY . ./

# run app
CMD ["node", "app.js"]