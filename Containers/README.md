# Containers for the Container President !

This is where we keep the definition of the various containers which we're working on.
There are many ways to develop and deploy containers, and this is moving very quickly
so here's a quick guide as to how we go about things.

As a general rule, we should aim to provide as many deployment scenarios as possible,
within the limits of our manpower. Thus, the top-level directory should contain a
list of deployment methods (Dockerfiles, Docker Compose, Ansible-Container, etc),
under which a list of orchestrations can be found.

# Plain old Dockerfiles

The directory `Dockerfiles` contains the list of individual Docker files that we
maintain for stand-alone containers.

# Docker Compose

Some services don't make sense in a stand-alone way, and need to be deployed in
orchestration with other services. Docker Compose is one way of doing this, using
Docker files.

# Ansible Compose

Ansible compose can be used to manage container orchestration using the semantics
of Docker Compose and the idempotence and re-usability of Ansible playbooks.

# Contributing

Please see [contributing](CONTRIBUTING.md) for general considerations of contributing
to this repo. Furthermore, please provide some means for testing your containers
if you send pull requests.
