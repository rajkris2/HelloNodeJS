FROM node:6

# Create app directory
RUN mkdir -p /opt/HelloNodeJS
WORKDIR /opt/HelloNodeJS

# Install app dependencies
COPY package.json /opt/HelloNodeJS
RUN npm install

# Bundle app source
COPY . /opt/HelloNodeJS

EXPOSE 5001

CMD [ "npm", "start" ]
