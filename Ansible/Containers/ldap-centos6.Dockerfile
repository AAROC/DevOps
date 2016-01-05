# Ansible-enabled for CentOS 6 for CODE-RADE
#
# basic metadata
FROM aaroc/code-rade-sl6-ansible
MAINTAINER "Bruce Becker <bbecker@Csir.co.za>"
WORKDIR /root
RUN yum install -y openssh-server
RUN /etc/init.d/sshd stop
RUN ping -c 1 www.africa-grid.org
RUN ansible localhost -c local -m ping
RUN /usr/sbin/sshd -D
