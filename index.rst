|Build Status|
==============

AAROC is DevOps
===============

| The `Africa-Arabia Regional Operations
  Centre <http://www.africa-grid.org>`__\ (AAROC) is an e-Infrastructure
  collaboration with members across Africa and the Middle East. AAROC
| This is the repository for the DevOps code which executes AAROC
  infrastructure. We support Ansible and Puppet.

Communicating and Collaborating.
================================

We're on `Slack <https://africa-arabia-roc.slack.com>`__. Come on over
if you want to hang out and work with us. If you have something you want
to help on, see `Contributing.md <CONTRIBUTING.md>`__. The usual
`workflow <https://guides.github.com/introduction/flow/index.html>`__
for collaboration on Github is recommended. If you want to request
documentation or guides, or would like to contrbute to the more 'meta'
aspects, discuss these things with on `the
forum <http://discourse.sci-gaia.eu/c/devops/>`__.

Development Status and Roadmap
------------------------------

You can see the development roadmap on the `project
milestones <../../milestones>`__. Feel free to propose new milestones
based on features you would like to see.

There is a development status board at https://waffle.io/aaroc/devops, a
snapshot of the current state is below.

| |Issues Identified|
| |Issues Diagnosed|
| |Issues in Progress|
| |Issues Ready|

Contributing
------------

See `CONTRIBUTING.md <CONTRIBUTING.md>`__

Quickstart guide for site administrators
========================================

Service configuration

Ansible
-------

| If you are using
| Contribute inventory spec to ``Ansible/inventories/inventory.site``.
  If your playbooks are very site-specific, create a subdirectory in
  Ansible/sites for your site as declared in the GOCDB and work there.

Puppet
------

Contribute your code to ``Puppet/`` If your Puppet modules are
site-specific, create a subdirectory in Puppet/sites for your site as
declared in GOCDB and work there.

Issues
======

If you have questions, comments or suggestions, please open an issue and
assign it the right tag.

Using Ansible
=============

Playbook Documentation
----------------------

Ansible

Role documentation
------------------

How to cite this work
=====================

|DOI|

We like our code so much, we put a DOI on it ! If you like it, please
use it, but also cite us, so that our funders will be happy.

`F.A.Q <docs/FAQ.md>`__
=======================

.. |Build Status| image:: https://travis-ci.org/AAROC/DevOps.svg?branch=dev
   :target: https://travis-ci.org/AAROC/DevOps
.. |Issues Identified| image:: https://badge.waffle.io/aaroc/devops.svg?label=identified&title=Identified
   :target: http://waffle.io/aaroc/devops
.. |Issues Diagnosed| image:: https://badge.waffle.io/aaroc/devops.svg?label=diagnosed&title=Diagnosed
   :target: http://waffle.io/aaroc/devops
.. |Issues in Progress| image:: https://badge.waffle.io/aaroc/devops.svg?&label=In%20Progress&title=In%20Progress
   :target: http://waffle.io/aaroc/devops
.. |Issues Ready| image:: https://badge.waffle.io/aaroc/devops.svg?label=ready&title=Ready
   :target: http://waffle.io/aaroc/devops
.. |DOI| image:: https://zenodo.org/badge/1514/AAROC/DevOps.png
   :target: http://dx.doi.org/10.5281/zenodo.11914
