FROM node:lts@sha256:93d2e801dabc677ea0b30b47d3d729fab63ecb20be7ac0ab204cc3c65731297a

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
