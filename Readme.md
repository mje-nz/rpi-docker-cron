Docker cron image for Raspberry Pi
==================================
To use this image directly, just mount a crontab file as /crontab.
e.g.

```
docker run -t --rm -v $(pwd)/crontab.demo:/crontab:ro mjenz/rpi-cron
```

To use this as a base image, copy in your crontab file as /crontab.


Implementation details
----------------------
This image uses the Busybox crond from Alpine.
Crond loads files in its spool directory with the same name as a local user.
Tasks in each file are run as the user it is named after, so the only filename that makes sense in this case is 'root'.
Changing the spool directory isn't working for me for some reason, so I'm copying /crontab to /etc/crontabs/root.
Unlike other versions of crond, the Busybox version doesn't care about file ownership or permissions.


