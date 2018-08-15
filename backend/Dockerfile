# Get base image
FROM ruby:2.6-rc-alpine

# Update important dependencies for rails
RUN apk update && apk add build-base nodejs postgresql-dev tzdata

# Set directory for application
RUN mkdir /app
WORKDIR /app

# Copy gem dependencies over
COPY Gemfile* ./
# And install them
RUN bundle install

# Copy current directory contents over
COPY . .
