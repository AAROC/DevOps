grid-services-deployment
========================

Example ansible playbooks that are used to deploy Grid services. 

Assumptions taken in building these templates:
* network configurations of all of the nodes is done beforehand (firewall should be setup to deny all inbound connections except on port 22 - ssh and ntp client ports)
* a user named ansible (with a home directory preferably on /ansible) exists on all nodes. The user ansible has sudo rights configured on all nodes
* on all of your nodes the packages redhat-lsb, yum-utils are installed
* an ntp service is installed and operational within your region. All grid nodes have ntp clients configured properly
* Optional packages (depending on your needs) may also be installed beforehand (i.e. vim-enchanced, screen, ruby etc). 

