# Future Gateway Stack Readme.

This is the README for the **FutureGatewayStack** with [Ansible Container](https://docs.ansible.com/ansible-container)

# Container inventory

We use an inventory of three containers:

  1. **`api-server`** - the container exposing the flask application which accepts job submission from the application
    * executes: python (flask)
  2. **`gridengine`** - SAGA-enabled web application running in tomcat, communicating with the computational backend.
    * executes: java (tomcat)
  3. **`db`** - persistent storage for the event engine.
    * executes: mysql server
