FROM node:6

# Create app directory
RUN mkdir -p /opt/hellonodejs
WORKDIR /opt/hellonodejs

# Install app dependencies
COPY package.json /opt/hellonodejs
RUN npm install

# Bundle app source
COPY . /opt/hellonodejs

EXPOSE 5001

CMD [ "npm", "start" ]
