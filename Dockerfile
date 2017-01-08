FROM gocd/gocd-server:16.12.0
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
ADD https://github.com/gocd-contrib/script-executor-task/releases/download/0.3/script-executor-0.3.0.jar /var/lib/go-server/plugins/external/script-executor-0.3.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-docker-compose-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-docker-compose-plugin-1.0.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-docker-pipeline-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-docker-pipeline-plugin-1.0.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-nessus-scan-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-nessus-scan-plugin-1.0.0.jar
chmod 644 /var/lib/go-server/plugins/external/*.jar
