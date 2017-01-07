FROM gocd/gocd-server:16.12.0
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
COPY gocd-*.jar /var/lib/go-server/plugins/external/
