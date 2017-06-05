FROM arm32v6/alpine:3.6

COPY start-cron.sh /
CMD ["/start-cron.sh"]
