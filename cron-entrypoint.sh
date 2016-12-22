#!/bin/sh

# Copy crontab file into the right place
cp /crontab /etc/crontabs/root

# Run cron in the foreground
crond -f
