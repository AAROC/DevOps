FROM alpine
MAINTAINER Bruce Becker

#RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins
RUN adduser -D  -u 1000 jenkins 
RUN mkdir -p /data
RUN chown -R jenkins:jenkins /data

VOLUME ["/data"]

USER jenkins

CMD ["echo", "Data container for Jenkins"]
