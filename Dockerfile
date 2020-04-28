# Specify a base imge
FROM node:alpine

# Specify the WORKDIR
WORKDIR /usr/simpleweb

# Copy the package json
COPY ./package.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY ./ ./

# Default command
CMD ["npm", "start"]

# Simply build image: docker build .
# run with: docker run -p 8080:8080 <container-id>