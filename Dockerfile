FROM node:lts@sha256:cfef4432ab2901fd6ab2cb05b177d3c6f8a7f48cb22ad9d7ae28bb6aa5f8b471

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
