FROM debian:jessie

ENV CONFIG_DIR /etc/sensu

VOLUME ${CONFIG_DIR}


COPY pubkey.gpg /opt/pubkey.gpg

COPY config.json ${CONFIG_DIR}/config.json

RUN \
    apt-key add /opt/pubkey.gpg && \
    echo "deb     http://repositories.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list && \
    apt-get update && \
    apt-get install --no-install-recommends sensu && \
    chown -R sensu:sensu ${CONFIG_DIR}

USER sensu

CMD /opt/sensu/bin/sensu-server -c ${CONFIG_DIR}/config.json -d ${CONFIG_DIR}/conf.d -e ${CONFIG_DIR}/extensions
