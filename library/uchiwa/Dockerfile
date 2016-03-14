FROM uchiwa/uchiwa

ENV UCHIWA_CONFIG_TEMPLATE /etc/uchiwa.tmpl
# Must be in /tmp because / is readonly
ENV UCHIWA_CONFIG /tmp/uchiwa_config.json

RUN \
  wget https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz && \
  tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.2.0.tar.gz && \
  rm -f dockerize-linux-amd64-v0.2.0.tar.gz

COPY config.tmpl ${UCHIWA_CONFIG_TEMPLATE}

# We use /tmp for the config file because / is a read only filesystem
CMD dockerize -template ${UCHIWA_CONFIG_TEMPLATE}:${UCHIWA_CONFIG} /go/bin/app -c ${UCHIWA_CONFIG}
