# swarmsible

Simple Ansible based Tooling for setting up and managing a production grade Docker Swarm on Ubuntu 18.04/20.04.

This repository is designed to be used in in a setup with an external Load Balancer that handles the routing
to the actual Traefik Ingress via a private Network.

Attaching Volumes to servers is out of scope of this repository as well. We suggest using either NFS
or in the case of Hetzner Cloud Volumes. No automatic moving of Hetzner Cloud Volumes between Hosts if a host goes down is
implemented. Instead we suggest to do this either manually or script it via separate tooling. In either case
using labels to mark nodes to have a particular volume present is a good idea. This repository contains the necessary
playbooks to achieve relabeling of nodes.

# Companion Repos

- [swarmsible-hetzner](https://github.com/neuroforgede/swarmsible-hetzner) (Automatic provisioning of VMs at Hetzner for use with this repo)
- [swarmsible-stacks](https://github.com/neuroforgede/swarmsible-stacks) (Production grade Docker Stacks)
- [swarmsible-example](https://github.com/neuroforgede/swarmsible-example) (Example Environment)

# Used software

1. [Traefik](https://doc.traefik.io/traefik/) for Ingress
2. NeuroForge [ufw-docker fork](https://github.com/neuroforgede/ufw-docker) to configure firewall to disable access to published ports on public IPs by default
3. Docker CE with Docker Swarm Mode
4. Ansible >= 2.8
5. ansible role geerlingguy.docker

# Labeling Nodes & Volumes

```
docker1:
    ansible_ssh_host: "127.0.0.1"
    ansible_ssh_port: "8101"
    ansible_ssh_user: "vagrant"

    ansible_host: 10.0.0.81
    host_ip: "{{ ansible_host }}"


    docker_swarm_labels:
        traefik_ingress: '1'
        HC_Volume_XXXX: '1'

    # for paths in volumes ("sub-volumes")
    docker_volumes:
    - path: /mnt/HC_Volume_XXXX/uploads
        state: directory
        owner: root
        group: root
        mode: "0777"
    - path: /mnt/HC_Volume_XXXX/db
        state: directory
        owner: root
        group: root
        mode: "0777"
```