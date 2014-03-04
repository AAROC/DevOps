# Ansible playbooks for grid services deployment

## Audience and content

This repository contains the ansible playbooks that are used to deploy Grid services for the
sites in the [Africa-Arabia Regional Operations Centre](https://roc.africa-grid.org). The playbooks contained in this repository are meant for once-off site deployment, as well as continued site maintenance and upgrades. 

This repository is meant for site administrators of sites in the Africa-Arabia Regional Operations Centre. Anyone can use, fork or contribute to it though. 


# Site Deployment
These playbooks are meant to be run by the site admnistrator against a site in an initial state defined roughly as the following : 
+ An inventory of services reflecting that which is typically provided by a site is defined. These are:
  + One Information Service: Site-BDII (Site information index)
  + At least 1 Comput Service: CREAM-CE (Front-end to HPC cluster)
  + At least one Worker Node
  + Recommended also one Data Service: DPM-based SE (Storage Element) for local persistent storage
+ Each of the hosts which will run these services must have an Operating System installed. Supported Operating Systems are dictated by the chosen release and version of middleware (see below where the Operating Level Agreement is discussed). Supported OS depend on the include Scientific Linux 5, Scientific Linux 6 and Debian 6. 

## Important Notes 
+ Architecture and distribution considerations
  + Only x86_64 architecture is supported.
  + Other RHEL clones, such as CEntOS should work, as long as official repositories are used.
+ Networking considerations
  + All hosts, except WN _must_ have public IPv4 addresses and _must_ have [reverse DNS resolution](http://en.wikipedia.org/wiki/Reverse_DNS_lookup)
  + The [South African National Research Network SANREN](https://www.sanren.ac.za) runs a network monitor and testing service based on [PerfSONAR PS](http://psps.perfsonar.net/). You can optionally include a perfSONAR endpoint at your site to enable network debuging and performance testing.
  + One of the biggest issues when deploying a grid site is the institutional or local firewall which does not allow communication on required ports. An effort is being made to document these ports in the ansible variables, however if problems arise, the site admin is required to check the [service reference card](http://www.eu-emi.eu/products) of the respective produtcts.
+ Host certificates
  + All services except the BDII and User Interface required a host certificate. 
    + During the testing phase, it's possible to use non-accredited certificates from a national CA developed by the [ei4Africa](https://www.ei4africa.eu) project in [Kenya](https://ca.kenet.or.ke/), [Tanzania](https://sec.ternet.or.tz/CA/), [Nigeria](https://ngca.eko-konnect.net.ng), and [South Africa](https://security.sanren.ac.za). Other CA's may be added in due course. 
      + It is, however, recommended to create a Registration Authority (RA) for the site, under the EGI Catch-All Certificate Authority. See http://see-grid-ca.hellasgrid.gr/ra-setup.html

## What if I am starting from bare metal ?
These playbooks currently only provide functionality 'from the OS up', and make some assumptions about the initial state of the servers. We understand that there is a need as well for 'bare metal' deployment. For now, we make no playbooks available for that, and it's up to the site administrator to install the base OS (whether on a physical or virtual machine). You can write to hpcforum@africa-grid.org for tips and tricks on this. Contributions to this repo are also welcome !

## Supported Middleware
The default middleware expected to be deployed on AAROC sites is the [Monte Bianco release](http://www.eu-emi.eu/emi-3-montebianco) of the [European Middleware Initiative](http://eu-emi.eu). The [Unified Middleware Distribution](http://repository.egi.eu) is also supported.

## Certification and OLA
In order to be included in production infrastructure, at any level basic critiera must be met by the site. These are referred to in the *Operating Level Agreement* (OLA). 

### Participation to external infrastructure
If your site is planning to become part of the production infrastructure for AAROC and is considering exposing resources to international Virtual Organisations supported by [EGI.eu](https://www.egi.eu) then it has to undergo the [site certification procedure](https://wiki.egi.eu/wiki/PROC09_Resource_Centre_Registration_and_Certification). This implies that the site signs and accepts the [site Operating Level Agreement](https://documents.egi.eu/document/31) which describes the minimum number, type and level of services required by an EGI-certified site. 

### Local, National or Regional participation
If your site is only serving local communities and does not need to be visible to EGI, it can forgo the EGI certification procedure and adopt a slightly-less stringent AAROC certification procedure (under development) with consquent OLA. 


## Assumptions taken in building these templates:
~~* Network configurations of all of the nodes is done beforehand. Firewall should be setup to deny all inbound connections except on port 22 - ssh and ntp client ports
* a user named ansible (with a home directory preferably on /ansible) exists on all nodes. The user ansible has sudo rights configured on all nodes
* on all of your nodes the packages redhat-lsb, yum-utils, vim screen, ruby are installed. A further set of required packages will be installed on a per-service basis - see the individual playbooks and handlers
* an ntp service is installed and operational within your region. All grid nodes have ntp clients configured properly~~ 
These are now done in the bootstrap playbook

# How to use these playbooks
_NOTE : THIS SECTION HAS YET TO BE COMPLETED_

## Site registration - manual steps
These playbooks are developed to automate as far as possible site deployment. However, there are some manual steps which have to done first. 

The [EGI Resource Centre integration procedure](https://wiki.egi.eu/wiki/PROC09) is a good starting point. Once you have completed the [initial procedure](https://wiki.egi.eu/wiki/HOWTO01) to register your site in [the GOCDB](https://goc.egi.eu/portal), you will be ready to use this code.

## Quickstart guide

The basic workflow for deploying a site in the ROC using Ansible is as follows :
  1. Define your inventory by adding a file to the top-level directory (e.g. `za-meraka.inventory`)
  2. Define the variables for your site by adding a file in the `group_vars` directory (e.g. `za-meraka`)
  3. run the bootstrap and preflight test playbooks to see if you can prepare the machines properly. 
  4. Choose the services you want to configure at your site in the main playbook (`playbook.yml`)
  5. run the playbook - this will install and configure everything necessary
  6. let the operations coordinator know that your site is ready and needs to be included in the GOCDB

A detailed guide is in 
