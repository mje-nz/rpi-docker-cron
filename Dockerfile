FROM hypriot/rpi-alpine:3.4

COPY start-cron.sh /
CMD ["/start-cron.sh"]
