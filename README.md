# Ansible playbooks for grid services deployment


This repository contains the ansible playbooks that are used to deploy Grid services for the
sites in the [Africa-Arabia Regional Operations Centre](https://roc.africa-grid.org). The playbooks contained in this repository are meant for once-off site deployment, as well as continued site maintenance and upgrades. 

# Site Deployment
These playbooks are meant to be run by the site admnistrator against a site in an initial state defined roughly as the following : 
* An inventory of services reflecting that which is typically provided by a site is defined. These are:
..* 1 Information Service: Site-BDII (Site information index)
..* At least 1 Comput Service: CREAM-CE (Front-end to HPC cluster)
..* At least one Worker Node
..* Recommended also one Data Service: DPM-based SE (Storage Element) for local persistent storage
* Each of the hosts which will run these services must have an Operating System installed. Supported Operating Systems are dictated by the chosen release and version of middleware (see below where the Operating Level Agreement is discussed). Supported OS depend on the include Scientific Linux 5, Scientific Linux 6 and Debian 6. 
* *Note*
.. *

## Supported Middleware
The default middleware expected to be deployed on AAROC sites is the [Monte Bianco release](http://www.eu-emi.eu/emi-3-montebianco) of the [European Middleware Initiative](http://eu-emi.eu). The [Unified Middleware Distribution](http://repository.egi.eu) is also supported.

## Certification and OLA
If your site is planning to become part of the production infrastructure for AAROC and is considering exposing resources to international Virtual Organisations supported by [EGI.eu](https://www.egi.eu)


## Assumptions taken in building these templates:
* network configurations of all of the nodes is done beforehand (firewall should be setup to deny all inbound connections except on port 22 - ssh and ntp client ports)
* a user named ansible (with a home directory preferably on /ansible) exists on all nodes. The user ansible has sudo rights configured on all nodes
* on all of your nodes the packages redhat-lsb, yum-utils are installed
* an ntp service is installed and operational within your region. All grid nodes have ntp clients configured properly
* Optional packages (depending on your needs) may also be installed beforehand (i.e. vim-enchanced, screen, ruby etc). 
