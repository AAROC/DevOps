# Docker file for Zenodo from
# https://github.com/zenodo/zenodo/blob/master/INSTALL.rst
FROM centos:6
MAINTAINER Bruce Becker <bbecker@csir.co.za>
# We prepare the machine for ansble
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip
RUN mkdir /etc/ansible/
RUN echo $'[local]\nlocalhost\n' | tee --append /etc/ansible/hosts
RUN echo $'[UIs]\nlocalhost\n' | tee --append /etc/ansible/hosts
RUN echo $'[uis]\nlocalhost\n' | tee --append /etc/ansible/hosts
RUN mkdir /opt/ansible/
RUN git clone --recursive https://github.com/ansible/ansible.git /opt/ansible/ansible
WORKDIR /opt/ansible/ansible
RUN git submodule update --init
ENV PATH /opt/ansible/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin
ENV PYTHONPATH /opt/ansible/ansible/lib
ENV ANSIBLE_LIBRARY /opt/ansible/ansible/library
WORKDIR /root
RUN git clone https://github.com/AAROC/DevOps
WORKDIR DevOps/Ansible
RUN ansible-playbook -c local -i /etc/ansible/hosts docker-ui.yml
