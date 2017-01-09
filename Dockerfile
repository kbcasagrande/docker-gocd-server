FROM gocd/gocd-server:16.12.0
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
ADD https://github.com/gocd-contrib/script-executor-task/releases/download/0.3/script-executor-0.3.0.jar /var/lib/go-server/plugins/external/script-executor-0.3.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-docker-compose-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-docker-compose-plugin-1.0.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-docker-pipeline-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-docker-pipeline-plugin-1.0.0.jar
ADD https://github.com/Haufe-Lexware/gocd-plugins/blob/master/bin/gocd-nessus-scan-plugin-1.0.0.jar /var/lib/go-server/plugins/external/gocd-nessus-scan-plugin-1.0.0.jar
ADD https://github.com/gocd-contrib/gocd-build-status-notifier/releases/download/1.2/github-pr-status-1.2.jar /var/lib/go-server/plugins/external/github-pr-status-1.2.jar
ADD https://github.com/ashwanthkumar/gocd-build-github-pull-requests/releases/download/v1.3.0-RC2/git-fb-poller-1.3.0-RC2.jar /var/lib/go-server/plugins/external/git-fb-poller-1.3.0-RC2.jar
ADD https://github.com/ashwanthkumar/gocd-build-github-pull-requests/releases/download/v1.3.0-RC2/github-pr-poller-1.3.0-RC2.jar /var/lib/go-server/plugins/external/github-pr-poller-1.3.0-RC2.jar
RUN chmod 644 /var/lib/go-server/plugins/external/*.jar
