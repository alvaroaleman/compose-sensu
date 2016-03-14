FROM debian:jessie

ENV SENSU_CONFIG_DIR /etc/sensu

COPY pubkey.gpg /opt/pubkey.gpg

RUN \
    apt-key add /opt/pubkey.gpg && \
    echo "deb     http://repositories.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list

CMD true
