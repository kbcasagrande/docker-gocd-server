FROM gocd/gocd-server:16.12.0
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
RUN cd /var/lib/go-server/plugins/external \
    && wget -i gocd_plugins.txt \
    && chmod 644 *.jar
