# AAROC DevOps
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/AAROC/DevOps?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This is the repository for the DevOps code which executes AAROC infrastructure

We support Ansible and Puppet.

# Contributing

Pull requests should be made on the dev branch. Merges from dev to master will happen after Operations meetings.

# Citing

If you like it, please use it, but also cite us, so that our funders will be happy: [![DOI](https://zenodo.org/badge/1514/AAROC/DevOps.png)](http://dx.doi.org/10.5281/zenodo.11914)


## Ansible
Contribute inventory spec to Ansible/inventory.site. If your playbooks are very site-specific, create a subdirectory in Ansible/sites for your site as declared in the GOCDB and work there.

## Puppet
Contribute your code to Puppet/ If your Puppet modules are site-specific, create a subdirectory in Puppet/sites for your site as declared in GOCDB and work there.

