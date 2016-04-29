Role Name
=========

This is a role for deploying [Discourse](http://www.discourse.org) with federated login. Discourse uses docker to run the application in a container, and has a custom script for delpoying the database and supporting services on the host machine. This script `launcher` is used by the role.

The SAML configuration uses [DiscourseSSO](http://github.com/fmarco76/DiscourseSSO), which in turn uses the [Flask](http://flask.pocoo.org/) microservice framework.

Requirements
------------

  1. Apache web server with proxy to nginx inside the Discourse container
  2. Flask python microserver framework


Role Variables
--------------

Variables are used to tune the Rails application that runs Discourse. These are in a template, and set in the `defaults/main.yml` and `vars/main.yml` file. Please read them and set them accordingly in `vars/main.yml`

  - db_shared_buffer_size
  - unicorn_workers
  - smtp_address
  - smtp_port
  - smtp_username

Dependencies
------------

  - dochang.ansible-role-docker

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: discourse-servers
      roles:
         - { role: dochang.ansible-role-docker }

License
-------

Apache 2.0

Author Information
------------------

Bruce Becker (CSIR Meraka Institute)
