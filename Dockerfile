FROM debian:latest
COPY bin/watch_changes /usr/bin/
RUN chmod a+x /usr/bin/watch_changes
RUN apt-get update && apt-get install -y mysql-client

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
