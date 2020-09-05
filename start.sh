#!/bin/sh

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bin/rails db:create
echo 'migrating ...'
bin/rails db:migrate
echo 'done ...'

bin/rails s -p 3000 -b '0.0.0.0'
