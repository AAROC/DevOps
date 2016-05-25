Role Name
=========

A role  to mount cvmfs repositories using automount

Requirements
------------

none

Role Variables
--------------

The role has two dependencies  :

  1. prerequisites (the packages needed to install CVMFS)
  2. repos (the repositories that need to be mounted - fqdn)


Dependencies
------------


Example Playbook
----------------


    - hosts: cvmfs-clients
      roles:
         - { role: cvmfs, become: true }

License
-------

Apache-2.0

Author Information
------------------


Bruce Becker, CSIR Meraka Institute
