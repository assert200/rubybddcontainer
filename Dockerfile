FROM ruby:2.6.3

MAINTAINER Assert200

# Set the working directory to /bdd
WORKDIR /bdd

COPY ./Gemfile /

RUN apt-get update && apt-get install -y vim && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install bundler
RUN bundle install --path=/