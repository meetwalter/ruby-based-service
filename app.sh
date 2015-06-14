#!/bin/sh
cd /app
# TODO(mtwilliams): Only install Gems required for the right configuration?
bundle install
exec bundle exec rackup -o 0.0.0.0 -p 80 -P /var/run/app.pid >>/var/log/app.log 2>&1
