FROM gocd/gocd-server:16.12.0
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
COPY gocd_plugins.txt /
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN cd /var/lib/go-server/plugins/external \
    && wget -i /gocd_plugins.txt \
    && chmod 644 *.jar
RUN echo -e "StrictHostKeyChecking no\nUserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config
