FROM jenkins/inbound-agent
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER voop@voop.lv

USER root

COPY install.sh install.sh

RUN chmod 755 -R install.sh
RUN bash install.sh
RUN rm -rf install.sh

USER jenkins
ENTRYPOINT ["/usr/local/bin/jenkins-agent"]