#!/bin/bash

rm tmp/pids/server.pid


until nc -z -v -w30 user_mysql 3306
do
  echo "Waiting for database connection..."
  sleep 5
done



RAILS_ENV=docker rake db:migrate
RAILS_ENV=docker bundle exec rails s -p 3000 -b '0.0.0.0'