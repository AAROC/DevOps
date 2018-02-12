[![Build Status](https://travis-ci.org/AAROC/perfsonar-base.svg?branch=master)](https://travis-ci.org/AAROC/perfsonar-base)

# Perfsonar Base

This is a role to prepare a machine for deployment of one of the [PerfSONAR bundles](http://docs.perfsonar.net/install_centos.html#step-2-install-a-bundle). 
This role is designed to be applied to all hosts in the perfSONAR mesh, and used in conjunction with other perfsonar "bundles".
This role installs two bundles : 

 - `perfsonar-tools`

These are the two underlying packages for the basic creation of a  mesh.
In our use case, the nodes with this role applied will be self-contained: they will store their own data and have access to their web interfaces.

## Notes on deviation from perfsonar documentation


### Idempotence and testing

The perfsonar documentation suggests the execution of scripts provided by their packages for configuring the desired endpoint.
This has a few issues associated: 

  1. The execution of a script is likely not to be _idempotent_, which makes it difficult to ensure a desired state.
  1. Failures in scripts are often hard to isolate, since the script simply exits. Breaking up scripts into tasks makes it easier to isolate where the error or issue is and debug it or address it.
  1. Writing tasks in a "plain-language" format like YAML makes it easier for new devs or maintainers to understand what the role does, instead of reading through inscrutable shell scripts.

In principle, _how_ the state is achieved is irrelevant, as long as the _correct_ state is achieved.
We can factor out the 

### Security

<!-- todo  -->


### Networking

This role will configure the networking (firewall, denyhosts, _etc_) for a model perfSONAR endpoint.
**Consider variations on this model with extreme caution and foresight.**
The role is not meant to be flexible around the network configuration yet, and is designed to provision perfSONAR hosts in a rigid mesh.

**Firewall rules**

The role respects the [perfSONAR default firewall configuration](http://docs.perfsonar.net/manage_security.html) defaults.

## Requirements

This requires only the basic Ansible requirements.

## Role Variables


Role variables are kept in `defaults/main.yml` and `vars/main.yml`. Default variables can be used. Overwrite these if you wish
in the `vars/main.yml` variables file.

## Dependencies

This role does not express any dependencies.

# Example Playbook

If you define a perfsonar-mesh group in your inventory with all of the host groups in the perfSONAR mesh as your children groups, then you can apply this role to them as follows:

    - hosts: perfsonar-mesh
      roles:
         - { role: perfsonar-base, become: true }

## License

Apache-2.0

## Author Information


Bruce Becker CSIR Meraka Institute