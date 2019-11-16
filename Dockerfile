############################################################
# Dockerfile to build Node Application
# container image, based on node image
############################################################
FROM node:latest

LABEL Version="1.2"

# Variables
ENV PORT 5000
ENV WDIR /usr/src/nodejs

# Create app directory
RUN mkdir -p ${WDIR}
WORKDIR ${WDIR}

# Bundle app source
COPY . .

# run NPM install
RUN npm install

# Verify files are there
RUN find ${WDIR} -type f  -follow -print | grep -v ./node_modules

# Port for Web
EXPOSE ${PORT}


# Start the app
CMD [ "npm", "start" ]
