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
```
This is a helper task to see if the `{{ site_name }}` variable has been picked up correctly. This is usually stored in `{{ group_vars/<site-name> }}` where `<site_name>` is the name of the site as registered in the GOCDB.

```
    - name: Tell the team
      slack:
        domain: africa-arabia-roc.slack.com
        token: {{ slack_token }}
        msg: "Running top-bdii play at on {{ ansible_hostname }} at {{ site_name }}"
        username: "Ansible on {{ ansible_hostname }} at {{ site_name }}"
        validate_certs: False
      tags:
        - slack
```
Ansible will tell the team in a channel on Slack what is happening. The variables are provided via files in `group_vars`

```
  roles:
    - { role: common, become: true }
    - { role: certificates, become: true }
    - { role: umd, become: true, tags: "umd" }
    - { role: top-bdii, become: true }
    - { role: yaim, become: true }
```

The playbook applies - in order - the 5 necessary roles. The `top-bdii` role ensures that the correct packages are installed and tha the firewall on the target machine has been properly configured to allow communication via port 2170. The `yaim` role is applied in order to ensure that the right configuration is generated via templates and the execution of the configuration via yaim is performed. See the [`yaim` role](../../roles/yaim/index.md) for more information.

```
  post_tasks:
    - name: Start BDII if PID but Process dead.
      become: true
      service:
        name: bdii
        state: restarted
      tags:
        - testing
```

Post tasks are applied once yaim has completed :

  1. Ensure that the bdii service is restarted.

```
  vars_files:
    - "roles/common/vars/distros/{{ ansible_distribution }}-{{ ansible_distribution_version }}.yml"
    - roles/common/vars/middleware/IGTF.yml
```
Variables necessary for this playbook, which are not provided by the role itself are pulled in from the common role. See the [`common` role](../../roles/common/index.md) role for more information.
  handlers:
    - include: roles/common/handlers/main.yml
```
