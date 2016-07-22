# README for Docker files

[Dockerfiles](https://docs.docker.com/engine/reference/builder/) are the de-facto standard way of creating containers. [Docker Hub](https://hub.docker.com) is the de-facto way of distributing and re-using them. This subdirectory contains the
list of docker files which we develop for our services.

These containers are kept in the [AAROC Organisation](https://hub.docker.com/u/aaroc) on Docker hub. If you would like to join
the team, please [open an issue](https://github.com/AAROC/DevOps/issues/new) with the request, tag it appropriately and assign it to @brucellino.


# Adding new projects

If you have a Dockerfile in a repository which you want to contribute to the ROC, send us the name of the repository and we'll fork it into the [AAROC](https://github.com/AAROC) organisation, then add it as a submodule here. If you are a member of the AAROC developers team, you can create the repository directly in the AAROC Organisation.

A word about good practice:

  1. Use separate Dockerfiles for each OS or version you wish to build for, and avoid different branches
  2. It is good practice to enable automatic building of containers using Docker hub.
  3. Be sure to write a concise README for each container to explain how it should be executed.
