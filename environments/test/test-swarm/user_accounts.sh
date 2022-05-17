#!/bin/bash

check_result () {
    ___RESULT=$?
    if [ $___RESULT -ne 0 ]; then
        echo $1
        exit 1
    fi
}

ansible-playbook -i inventory/hosts.yml ../../../swarmsible/developer_accounts.yml
check_result "failed to run developer_accounts"