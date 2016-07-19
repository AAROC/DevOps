[![Build Status](https://travis-ci.org/AAROC/DevOps.svg?branch=master)](https://travis-ci.org/AAROC/DevOps) [![Documentation Status](https://readthedocs.org/projects/aaroc-devops/badge/?version=docs-dev)](http://aaroc-devops.readthedocs.org/en/docs-dev/?badge=docs-dev) [![Documentation Status](https://readthedocs.org/projects/aaroc-devops/badge/?version=latest)](http://aaroc-devops.readthedocs.io/en/latest/?badge=latest)

#  DevOps

This is the repository for the DevOps code which executes AAROC infrastructure. We support Ansible and Puppet.

# Communicating and Collaborating.

We're on [Slack](https://africa-arabia-roc.slack.com). Come on over if you want to hang out and work with us. If you have something you want to help on, see [Contributing.md](CONTRIBUTING.md). The usual [workflow](https://guides.github.com/introduction/flow/index.html) for collaboration on Github is recommended. If you want to request documentation or guides, or would like to contrbute to the more 'meta' aspects, discuss these things with on [the forum](http://discourse.sci-gaia.eu/c/devops/).

## Development Status and Roadmap

You can see the development roadmap on the [project milestones](../../milestones). Feel free to propose new milestones based on features you would like to see.

There is a development status board at https://waffle.io/aaroc/devops, a snapshot of the current state is below.

[![Issues Identified](https://badge.waffle.io/aaroc/devops.svg?label=identified&title=Identified)](http://waffle.io/aaroc/devops)
[![Issues Diagnosed](https://badge.waffle.io/aaroc/devops.svg?label=diagnosed&title=Diagnosed)](http://waffle.io/aaroc/devops)
[![Issues in Progress](https://badge.waffle.io/aaroc/devops.svg?&label=In%20Progress&title=In%20Progress)](http://waffle.io/aaroc/devops)
[![Issues Ready](https://badge.waffle.io/aaroc/devops.svg?label=ready&title=Ready)](http://waffle.io/aaroc/devops)

# Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

# Citing
[![DOI](https://zenodo.org/badge/1514/AAROC/DevOps.png)](http://dx.doi.org/10.5281/zenodo.11914)

We like our code so much, we put a DOI on it ! If you like it, please use it, but also cite us, so that our funders will be happy.

# Getting started.

## Ansible

Contribute inventory spec to `Ansible/inventories/inventory.site`. If your playbooks are very site-specific, create a subdirectory in Ansible/sites for your site as declared in the GOCDB and work there.

## Puppet

Contribute your code to `Puppet/` If your Puppet modules are site-specific, create a subdirectory in Puppet/sites for your site as declared in GOCDB and work there.

# Issues

If you have questions, comments or suggestions, please open an issue and assign it the right tag.
