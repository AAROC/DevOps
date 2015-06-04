Role Name
=========

This is a role to create a generic shibboleth service provider, configured to use the Apache web server.

Requirements
------------

This role requires a host certificate for the service provider, which is not provided in the role.

Role Variables
--------------

Default variables are found in `defaults/main.yml`, while specific variables for this role are in `vars/main.yml`. Please read these carefully and set them to whatever you need. The include:

  -


Dependencies
------------

None

Example Playbook
----------------

An example playbook would use the following :

    - hosts: service-providers
      roles:
         - { role: shibboleth-sp }

License
-------

Apache 2.0

Author Information
------------------

@brucellino
