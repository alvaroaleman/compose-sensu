FROM sensu_base

VOLUME ${SENSU_CONFIG_DIR}

COPY config.json ${SENSU_CONFIG_DIR}/config.json

RUN \
    apt-get update && \
    apt-get install --no-install-recommends sensu && \
    chown -R sensu:sensu ${SENSU_CONFIG_DIR}

USER sensu

CMD /opt/sensu/bin/sensu-server -c ${SENSU_CONFIG_DIR}/config.json -d ${SENSU_CONFIG_DIR}/conf.d -e ${SENSU_CONFIG_DIR}/extensions
