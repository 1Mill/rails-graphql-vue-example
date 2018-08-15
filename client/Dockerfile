FROM node:10.5-alpine

# Update system dependencies and install git (to get nuxt)
RUN apk update

# Install yarn
RUN npm install -g yarn@1.9

RUN mkdir /app
WORKDIR /app

# Copy over dependencies
COPY package.json *yarn* ./
# Install dependencies through yarn
RUN yarn install

# Copy remaining files
COPY . .
