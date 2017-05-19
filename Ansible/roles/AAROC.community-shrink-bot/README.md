Community Shrink (Bot)
=========

This role deploys the community shrink which tries to get people in Slack to talk about their issues on Discourse instead.

Requirements
------------

The role will install go, which the bot is written in.

Role Variables
--------------

  * prerequisites (OS-dependent)


Dependencies
------------

none

Example Playbook
----------------


    - hosts: servers
      roles:
         - { role: AAROC.community-shrink-bot }

License
-------

Apache-2.0

Author Information
------------------

Bruce Becker  (C.S.I.R. Meraka Institute)
@brusisceddu
