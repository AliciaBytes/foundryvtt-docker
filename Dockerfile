FROM node:lts@sha256:fa54405993eaa6bab6b6e460f5f3e945a2e2f07942ba31c0e297a7d9c2041f62

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
