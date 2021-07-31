FROM ubuntu:20.04

# install curl
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "curl"]

# install node
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN ["apt-get", "install", "-y", "nodejs"]

WORKDIR /root

# init strapi app
RUN ["npx", "create-strapi-app", "app", "--quickstart", "--no-run"]
WORKDIR /root/app
RUN ["npm", "install", "--save-dev", "jest"]
RUN ["npm", "install"]

# update params
RUN sed -i 's/1337/8080/' config/server.js
RUN sed -i "3a\  url: 'http://localhost'," config/server.js

CMD ["npm", "start"]
