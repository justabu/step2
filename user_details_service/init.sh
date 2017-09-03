#!/bin/bash

gem install bundler
bundle install
RAILS_ENV=docker bundle exec rake db:migrate
rm -f /app/tmp/pids/server.pid
RAILS_ENV=docker rails s -b 0.0.0.0
