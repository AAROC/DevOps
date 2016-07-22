# README for Ansible Container

[Ansible Container](docs.ansible.com/ansible-container/) is an Ansible component which allows you to
orchestrate containers using the same playbooks that you develop locally.

This is the directory for the Ansible Container projects.

# Adding new projects

Each project represents and orchestration scenario. If you would like to add a new
orchstration scenario, please send a pull request with

  1. a new subdirectory for your project (_e.g._ `science-gateway`). Make sure that the name is _self-explanatory_ and _unique_
  2. If your project is similar to another, please be sure to specify how they differ, in the README.md
  2. Ensure  that there is a README.md in the subdirectory explaining
    3. What usage scenario this represents
    4. Which roles the project uses (either galaxy roles, or roles within the DevOps repo)
  3. and of course the project itself :
    4. `cd Containers/Ansible-Container ; mkdir <project name> ; cd <project name> ansible-container init`
