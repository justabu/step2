FROM ruby:2.1.3


RUN apt-get update -qq && apt-get install -y build-essential && apt-get install -y netcat

# Install Rails dependencies
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

WORKDIR $APP_HOME

RUN ["chmod", "+x", "start-dev.sh"]

