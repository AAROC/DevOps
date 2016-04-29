Role Name
=========

This is the role for installing the web frontend to a shibboleth idp.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

The role takes two variables :

  * `IDPPublic_release`: The number of the release of the IDPPublic package. The default is 1.1.5
  * `useradmin_password`: the password of the administrator user which is used by the web application to connect to the identity store backend.


Dependencies
------------

none

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: fmarco76.IDPPublic}

License
-------

BSD

Author Information
------------------

Written by @fmarco76 and contributed to by @brucellino and other members of @AAROC
