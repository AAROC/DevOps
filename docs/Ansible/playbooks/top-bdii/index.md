# The Top-BDII playbook.

The `top-bdii.yml` playbook is used to deploy the [Top-BDII](http://www.eu-emi.eu/products/-/asset_publisher/1gkD/content/bdii-top-2).

# Plays

```
- hosts: top-bdiis
  name: BDII_TOP plays


  pre_tasks:
    - debug:
        msg: "Site is  {{ site_name }}"
      tags:
        - debug
    - name: Tell the team
      slack:
        domain: africa-arabia-roc.slack.com
        token: V4qyCjHMRUb9ZmNdcf2hVEmI
        msg: "Running top-bdii play at on {{ ansible_hostname }} at {{ site_name }}"
        username: "Ansible on {{ ansible_hostname }} at {{ site_name }}"
        validate_certs: False
      tags:
        - slack
  roles:
    - { role: common, become: true }
    - { role: certificates, become: true }
    - { role: umd, become: true, tags: "umd" }
    - { role: top-bdii, become: true }
    - { role: yaim, become: true }
  post_tasks:
    - name: Fix /etc/bdii/DB_CONFIG
      debug: msg="TODO. comment set_flags DB_LOG_INMEMORY set_flags DB_TXN_NOSYNC"
      tags:
        - debug
    - name: Start BDII if PID but Process dead.
      become: true
      service:
        name: bdii
        state: restarted
      tags:
        - testing
  vars_files:
    - "roles/common/vars/distros/{{ ansible_distribution }}-{{ ansible_distribution_version }}.yml"
    - roles/common/vars/middleware/IGTF.yml
  handlers:
    - include: roles/common/handlers/main.yml
```
