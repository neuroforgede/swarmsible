Proudly made by [NeuroForge](https://neuroforge.de/) in Bayreuth, Germany.

# swarmsible

Simple Ansible based Tooling for setting up and managing a production grade Docker Swarm.

Currently tested and validated on Ubuntu 18.04/20.04.

# Companion Repos

- [swarmsible-hetzner](https://github.com/neuroforgede/swarmsible-hetzner) (Automatic provisioning of VMs at Hetzner for use with this repo)
- [swarmsible-stacks](https://github.com/neuroforgede/swarmsible-stacks) (Production grade Docker Stacks)
- [swarmsible-example](https://github.com/neuroforgede/swarmsible-example) (Example Environment)

# Used software

1. NeuroForge [ufw-docker fork](https://github.com/neuroforgede/ufw-docker) to configure firewall to disable access to published ports on public IPs by default
2. Docker CE with Docker Swarm Mode
3. Ansible >= 2.8
4. docker-setup role adapted from geerlingguy.docker
5. docker-stack-deploy for secret rotation (https://github.com/neuroforgede/docker-stack-deploy)
