FROM node:lts@sha256:f57e74d3ded287ee0fca136fd04f0c21c3f5e3926d48fbf9d6b17a69536c4397

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
