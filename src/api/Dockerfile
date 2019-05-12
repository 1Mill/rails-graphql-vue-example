FROM ruby:2.6.3-alpine

# Update important dependencies for rails
RUN apk update && apk add build-base nodejs postgresql-dev tzdata

# Set directory for application
RUN mkdir /app
WORKDIR /app

# Install latest bundler
RUN gem install bundler -v '~> 2.0'

# Copy gem dependencies over
COPY Gemfile* ./
# And install them
RUN bundle install

# Copy current directory contents over
COPY . .

# Expose and publish on port 3000
EXPOSE 3000
# TODO: Not a production ready CMD, only useful for development.
CMD [ "bundle", "exec", "rails", "server", "-p 3000", "-b 0.0.0.0" ]
