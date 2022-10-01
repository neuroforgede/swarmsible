Proudly made by [NeuroForge](https://neuroforge.de/) in Bayreuth, Germany.

# swarmsible

Simple Ansible based Tooling for setting up and managing a production grade Docker Swarm.

Currently tested and validated on Ubuntu 18.04/20.04.

This repository is designed to be used in in a setup with an external Load Balancer that handles the routing
to the actual Traefik Ingress via a private Network.

This repository assumes usage of Hetzner for Cloud Volumes via https://github.com/costela/docker-volume-hetzner.

# Docker Swarm Stacks

To get started with an actual swarm, you will need Stacks. You can find all relevant stacks [here](./environments/example/example-swarm/stacks).
These stacks are configured via the configs/secrets folders, so check these out before deploying.

# Used software

1. NeuroForge [ufw-docker fork](https://github.com/neuroforgede/ufw-docker) to configure firewall to disable access to published ports on public IPs by default
2. Docker CE with Docker Swarm Mode
3. Ansible >= 2.8
4. ansible role geerlingguy.docker
5. docker-stack-deploy for secret rotation (https://github.com/neuroforgede/docker-stack-deploy)

# Labeling Nodes

```
docker1:
    ansible_ssh_host: "127.0.0.1"
    ansible_ssh_port: "8101"
    ansible_ssh_user: "vagrant"

    ansible_host: 10.0.0.81
    host_ip: "{{ ansible_host }}"


    docker_swarm_labels:
        traefik_ingress: '1'
```
