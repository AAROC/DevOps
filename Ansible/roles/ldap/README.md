Role Name
=========

This role will configure an LDAP database intended for use with a [Shibboleth Identity Provider](http://shibboleth.net/products/identity-provider.html)

Requirements
------------

None, but is used together with shibboleth-idp role.

Role Variables
--------------

  * tls_cacert_dir - directory containing CA certificate files 
  * domain: the host domain name of the Identity provider that is being served by this LDAP backend
  * organisation: the Org name of the IdP
  * admin: the administrator user name
  * Administrator: the Administrator group name
  * idp_group: the gorup into which users who belong to the IdP are added
  * user_cn: normal user common name
  * user_sn: normal user surname
  * user_given: normal user given name (ie, the user's actual name)
  * user_initials: initials of the user (given and surnames)
  * user_email: primary email address of the user
  * user_secondary_email: secondary email of the user
  * user_org: Organisation to which the user belongs
  * user_country: ISO code of the country from which the user comes. 
  * user_registered_address: the address with which the user has registered (usually the same as the primary email address). This is used as the identification token.
  
Other variables are OS specific (for Redhat/CentOS and Debian only at the moment).

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: identity-servers
      roles:
         -  brucellino.ldap 

License
-------

Apache

Author Information
------------------

Part of the @AAROC organisation, developed for ei4Africa with @fmarco76
