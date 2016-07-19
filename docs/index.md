[![Build Status](https://travis-ci.org/AAROC/DevOps.svg?branch=dev)](https://travis-ci.org/AAROC/DevOps)
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [AAROC is DevOps](#aaroc-is-devops)
	- [Software-Defined Infrastructure](#software-defined-infrastructure)
- [Communicating and Collaborating.](#communicating-and-collaborating)
	- [Development Status and Roadmap](#development-status-and-roadmap)
	- [Contributing](#contributing)
- [Quickstart guide for site administrators](#quickstart-guide-for-site-administrators)
	- [Ansible](#ansible)
	- [Puppet](#puppet)
- [Issues](#issues)
- [How to cite this work](#how-to-cite-this-work)

<!-- /TOC -->
# AAROC is DevOps

> The mission of the Africa-Arabia Regional Operations Centre is to promote and support collective, coherent and sustainable interoperability of e-Infrastructures within the region and beyond, to peer infrastructures in the rest of the world; and to act as a point of coordination and support to computational resource providers in the region, in order to promote and develop regional scientific and technical collaboration.

The [Africa-Arabia Regional Operations Centre](http://www.africa-grid.org) (AAROC) is an e-Infrastructure collaboration with members across Africa and the Middle East. AAROC is an resource infrastructure provider to [EGI.eu], and has signed an [Operating Level Agreement]() with EGI.

## Interoperability

EGI provides several infrastructure services which enable interoperability :

  * [GOCDB](http://goc.egi.eu) : The operations database, where all sites and services are defined. GOCDB provides a topology which is used by various other services, and is used to declare service states and downtimes.
  * [Operations Portal](https://operations-portal.egi.eu) : The dashboard for the [Regional Operator on Duty](https://wiki.egi.eu/wiki/Regional_Operator_on_Duty)
  * [Accounting Portal](http://accounting.egi.eu) : The accounting portal where usage by various communities is reported.

## Software-Defined Infrastructure

<! --- todo: why software-defined infrastructure is a good idea -->

# Communicating and Collaborating.

We're on [Slack](https://africa-arabia-roc.slack.com). Come on over if you want to hang out and work with us. If you have something you want to help on, see [Contributing.md](../CONTRIBUTING.md). The usual [workflow](https://guides.github.com/introduction/flow/index.html) for collaboration on Github is recommended. If you want to request documentation or guides, or would like to contrbute to the more 'meta' aspects, discuss these things with on [the forum](http://discourse.sci-gaia.eu/c/devops/).

## Development Status and Roadmap

You can see the development roadmap on the [project milestones](../../milestones). Feel free to propose new milestones based on features you would like to see.

There is a development status board at https://waffle.io/aaroc/devops, a snapshot of the current state is below.

[![Issues Identified](https://badge.waffle.io/aaroc/devops.svg?label=identified&title=Identified)](http://waffle.io/aaroc/devops)
[![Issues Diagnosed](https://badge.waffle.io/aaroc/devops.svg?label=diagnosed&title=Diagnosed)](http://waffle.io/aaroc/devops)
[![Issues in Progress](https://badge.waffle.io/aaroc/devops.svg?&label=In%20Progress&title=In%20Progress)](http://waffle.io/aaroc/devops)
[![Issues Ready](https://badge.waffle.io/aaroc/devops.svg?label=ready&title=Ready)](http://waffle.io/aaroc/devops)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)


# Quickstart guide for site administrators

This is the repository for the DevOps code which executes AAROC infrastructure. We support Ansible and Puppet.
Site administrators have freedom of choice in managing the services at their site, as long as they

## Ansible

If you would like to use Ansible to deploy your site :

  1. Clone the repository's `master` branch  : `git clone https://github.com/AAROC/DevOps`
  2. Create create a new branch with your site name as defined in GOCDB : `git branch <site-name>`
  3. Propose the local site configuration :
		4. *Inventory*. Contribute your inventory to  to `Ansible/inventories/inventory.<site-name>`. If your playbooks are very site-specific, create a subdirectory in Ansible/sites for your site as declared in the GOCDB and work there.
	  4. *Variables*. Create two variables files for your site in `Ansible/group_vars` :
		  5. `<site-name>`, where `<site-name>` is the name of your site in the GOCDB (_e.g._ za-meraka). This will contain the site-specific variables, but not sensitive information.
		  6. `<site-name>-passwords` (_e.g._ `za-meraka-passwords`) : This is the site-specific variables file containing sensitive information. It should be encrypted with `ansible-vault` before being committed : `ansible-vault encrypt Ansible/group_vars/passwords-<site-name>`.
	  7. Send a pull request to the repository so that the configuration can be checked and verified.
  8. Create your `<site-name>.yml`  playbook to deploy the services which you need at your site - use as many of the provided roles as you need.
  9. Run ansible : `ansible-playbook -i inventories/inventory-<site-name> --ask-vault-pass <site-name>.yml`

## Puppet

Contribute your code to `Puppet/` If your Puppet modules are site-specific, create a subdirectory in Puppet/sites for your site as declared in GOCDB and work there.

# Issues

If you have questions, comments or suggestions, please open an issue and assign it the right tag.

# How to cite this work
[![DOI](https://zenodo.org/badge/1514/AAROC/DevOps.png)](http://dx.doi.org/10.5281/zenodo.11914)

We like our code so much, we put a DOI on it ! If you like it, please use it, but also cite us, so that our funders will be happy.
