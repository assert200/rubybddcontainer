FROM ruby:2.6.3

MAINTAINER Assert200

RUN apt-get update && apt-get install -y vim && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v 2.0.1
RUN gem install capybara -v 3.21.0
RUN gem install selenium-webdriver -v 3.142.3
RUN gem install rspec -v 3.8.0
RUN gem install cucumber -v 3.1.2
RUN gem install pry -v 0.12.2