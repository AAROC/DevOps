PerfSONAR Toolkit
=========

This role adds a [PerfSONAR toolkit](http://docs.perfsonar.net/index.html#perfsonar-toolkit) capability to a host

Requirements
------------

none

Role Variables
--------------

Variables are described in `defaults/main.yml`

Dependencies
------------

`perfsonar-base`

Example Playbook
----------------


    - hosts: servers
      roles:
         - { role: perfsonar-base, become: true}
         - { role: perfsonar-toolkit }

License
-------

Apache-2.0

Author Information
------------------

Bruce  Becker, CSIR Meraka Institute