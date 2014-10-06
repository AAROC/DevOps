# Contributing

This repository has been created to document and excute the configuration of e-Science services at sites in the Africa-Arabian region. That's a big place ! We want to  be able to collate the experience and expertise of site administrators into a repository of knowledge that will enable sustainable development of distributed computing in Africa and Arabia. However, we also want to make sure that if people **want** to contribute, they **can**.

We chose github because the workflow of contibuting to repositories maintained within it is pretty standard; we don't want to re-invent the wheel of collaboraiton. So, if you have an idea, some code lying around, or you've noticed some error in the way we've done things, please ***send us a pull request***. Don't be shy, we're nice people :)

# Continuous Integration
We usually request that commits are tested before inclusion, but this can requirea fairly complicated staging environment or continuous integration service which you may not have access to. You are welcome to use the `.travis.yml` example in the top directory if  you're developing services which can be tested on [travis-CI](http://travis-ci.org)'s platform. For more sophisticated testing, you may need access to a dedicated environment. Contact us to see whether we can make a cloud testbed avaiable for your use case.


# How to send a pull request

First of all, fork the repo to your own account and give it a meaningful name like "New role XXX" or "Puppet Manifest for Awesome Service Y". This will make it clear to us why you are eventually requesting the pull into the main repo.

## Bug fixes and production code.

This repository contains Puppet and Ansible code for instantiating production services. The master branch is where all the development happens. If you have a contribution which fixes or improves code in the master branch, by all means, send a pull request. 

## Experimental or unfinished code

If you want to try out something new and need this repo for code base, please create a new branch called `dev` and make changes to that. Pull requests should be made on the dev branch on this repo. Merges from dev to master will happen after Operations meetings.

# Planning and issues

Please feel free to use the github issues to submit support requests or discuss issues. Please make sure that you mark issues accurately with the provided tags (*e.g.* questions should be specifically marked as such, *etc*.
