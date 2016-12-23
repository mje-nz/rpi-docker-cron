#!/bin/sh

if [ ! -e /crontab ]; then
	echo "No crontab file found!"
	exit 1
fi

# Copy crontab file into the right place
cp /crontab /etc/crontabs/root

# Run cron in the foreground
crond -f
