FROM node:12-slim

ARG TAG

# Create and change to the app directory.
WORKDIR /usr/src/app

# Prevents re-running npm install on every code change.
COPY package*.json ./

# Install dependencies.
RUN npm install

RUN ls

RUN chmod 755 k8s/script.sh

RUN k8s/script.sh $TAG

# Copy local code to the container image.
COPY . ./

# Run the web service on container startup.
CMD [ "npm", "start" ]
