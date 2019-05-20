# A basic apache server. To use either add or bind mount content under /var/www
FROM ruby:2.5

MAINTAINER Assert200

RUN apt-get update && apt-get install -y vim && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install bundler
RUN gem install capybara
RUN gem install selenium-webdriver
RUN gem install rspec
RUN gem install cucumber

RUN gem install pry
RUN gem install pry-nav
RUN gem install rb-readline