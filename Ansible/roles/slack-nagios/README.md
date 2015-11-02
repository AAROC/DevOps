Role Name
=========

This role applies the nagios integration with slack to a nagios instance.

Requirements
------------

This should be applied to an existing Nagios server - no prerequisite role is specified.

Role Variables
--------------

  * team_domain - your team's slack domain (no default)
  * script_path - the path that will be used to save the perl script
  * slack_token - the token used to communicate with the slack instance (no default)
  * channel - the channel in which alerts will be posted.
  * prerequisites - a list of prerequisite packages (CentOS only)


Dependencies
------------

No Dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: slack-nagios, channel: monitoring }

License
-------

Apache-2.0

Author Information
------------------

[Bruce Becker](http://brucellino.github.io), for [AAROC](http://www.africa-grid.org)
