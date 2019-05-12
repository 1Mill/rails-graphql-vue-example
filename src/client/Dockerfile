FROM node:12-alpine

# Update system dependencies and install git (to get nuxt)
RUN apk update

# Install yarn
RUN npm install -g yarn@1

RUN mkdir /app
WORKDIR /app

# Copy over dependencies
COPY package.json *yarn* ./
# Install dependencies through yarn
RUN yarn install

# Copy remaining files
COPY . .

# Expose and publish on port 8080
ENV HOST 0.0.0.0
ENV PORT 8080

EXPOSE 8080
# TODO: Not a production ready CMD, only useful for development.
CMD yarn nuxt
