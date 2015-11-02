AAROC  Bootstrap
=========

This is the bootstrap role for the [Africa-Arabia Regional Operations Centre](http://www.africa-grid.org).
The role is intended to be used on first-time deployed machines or as a disaster recovery mechanism in order to bring managed nodes to a state wherein they can be configured with Ansible.

The role sets up the user `ansible` on all hosts and configures ssh keys for specific ROC staff - please be sure to change this variable if you so desire.

Requirements
------------

Only [Ansible managed nodes requirements](http://docs.ansible.com/ansible/intro_installation.html#managed-node-requirements) are needed in principle.
A few extra packages which are deemed useful to perform manual tasks are also added. These are in the role's `vars/main.yml` file.

Role Variables
--------------

A `bootstrap_prerequisites` variable is created on a per-OS basis and used by the `prerequisites.yml` task to install prerequisite packages.

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: newservers
      roles:
         - bootstrap

License
-------

Apache-2.0

Author Information
------------------

@brucellino
Copyright CSIR Meraka Institute 2015.
