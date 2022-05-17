#!/bin/bash

check_result () {
    ___RESULT=$?
    if [ $___RESULT -ne 0 ]; then
        echo $1
        exit 1
    fi
}

ansible-playbook -i inventory/hosts.yml ../../../swarmsible/ansible_setup.yml
check_result "failed to run ansible_setup"

ansible-playbook -i inventory/hosts.yml ../../../swarmsible/docker_swarm_volumes.yml
check_result "failed to run docker_swarm_volumes"

ansible-playbook -i inventory/hosts.yml ../../../swarmsible/docker_swarm.yml
check_result "failed to run docker_swarm"

ansible-playbook -i inventory/hosts.yml ../../../swarmsible/developer_accounts.yml
check_result "failed to run developer_accounts"