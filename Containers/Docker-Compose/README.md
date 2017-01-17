# README for Docker Compose

[Docker Compose](https://docs.docker.com/compose/) is an easy way of orchestrating
existing containers into self-consistent deployments. This is _one_ way of providing
and orchestration method.

# Adding Compositions

If you would like to add new service orchestrations, please try to stick to the following procedure :

  1. Create a subdirectory for the use case, with an apt, but concise name
    2. Refer to _what_ the services will do, not _where_ they will be doing it
    3. Keep version numbers inside the `yml` files
  4. In the subdirectory, create a `README.md` file to explain what your service configuration is, what it does, and any other information to disambiguate it from other similar service orchestrations.
  5. Add the `docker-compose.yml`
  6. If at all possible, try to use docker images maintained by AAROC - https://hub.docker.com/u/aaroc
