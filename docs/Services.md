#  Services offered by the ROC

Infrastructure services offered by the ROC fall into two broad categories :

  1. [Core services](http://www.africa-grid.org/core) : Services operated by the ROC itself to enable interoperability with other resource infrastructure providers such as EGI.
  2. [Site services]() : Services operated by the sites which offer resourcs such as compute and data endpoints to users and applications

In the software-defined infrastruture model, each of these services has an abstract description written in the language of the DevOps tool of choice, as well as some local contextualisation. Contextualisation may take the form of local variables such as passwords or host names in an inventory. In order to maintain the desired state of the infrastructure, another component is needed : the orchestration layer, which ensures  that the abstract description is *applied* with the local contextualisation, resulting in a well-configured site.

In Ansible, service descriptions take the form of [_roles_](https://docs.ansible.com/ansible/playbooks_roles.html#roles), whilst orchestration is done with [_playbooks_](https://docs.ansible.com/ansible/playbooks.html). Puppet has similar concepts of [_modules_](https://docs.puppetlabs.com/puppet/latest/reference/modules_fundamentals.html), while having an internal execution engine, with a master-slave architecture.

This chapter contains the documentation of the roles (services) which have been developed in the project. For how to apply them in playbooks, see [the playbooks chapter](Playbooks.md)

# Ansible

Some Ansible roles have been developed to apply generic configurations independent of any middleware or service. These are :

  * [`boostrap`](Ansible/roles/bootstrap/README.md) : Brings a machine to a working state which can execute Ansible playbooks.
  * [`common`](Ansible/roles/common/README.md) : Applies a common environment and installs commonly-used packages
  * [`ansible-executor`](Ansible/roles/ansible-executor/README.md) : Ensures that a host can execute Ansible, to allow autoconfiguration

## Core Services

Roles have been developed for the following services:

### Grid Services

  1. [top-BDII](Ansible/roles/top-bdii/index.md)

# Site Services
