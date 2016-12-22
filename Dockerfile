FROM hypriot/rpi-alpine:3.4

COPY cron-entrypoint.sh /
ENTRYPOINT ["/cron-entrypoint.sh"]
