Top-BDII
========

This role installs an EMI top-bdii. The top-bdii is a core service and
required only at the infrastructure level, not at the site level.

Middleware information
----------------------

For more information on the middleware itself, see :

-  `EMI BDII Core product
   page <http://www.eu-emi.eu/products/-/asset_publisher/1gkD/content/bdii-core-2>`__
-  `EMI Top-BDII product page <>`__

Role Requirements
-----------------

The role requires the application of *at least* the ``certificates`` and
``umd`` roles.

Role Variables
--------------

This role has no variables

Dependencies
------------

No explicit dependencies, however it should be used with the
``certificates`` and ``umd`` roles

Example Playbook
----------------

See [../../playbooks/top-bdii/]

License
-------

Apache-2.0

Author Information
------------------

Bruce Becker (CSIR Meraka Institute)
