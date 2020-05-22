FROM ghost:3.16

COPY ghost /var/lib/ghost/content

EXPOSE 2368
VOLUME /var/lib/ghost/logs
