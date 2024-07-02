FROM node:lts@sha256:f172e4a7393cef2252c16f5f38d7abcf2cc0fd46c181c0ed5006cf3332e01173

RUN mkdir -p /opt/foundryvtt && \
    mkdir -p /data && \
    mkdir -p /server

COPY --chown=node entrypoint.sh /opt/foundryvtt
RUN chmod +x /opt/foundryvtt/entrypoint.sh

VOLUME /data
VOLUME /server

EXPOSE 30000

WORKDIR /server

ENTRYPOINT ["/opt/foundryvtt/entrypoint.sh"]
