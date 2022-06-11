#!/bin/bash

declare -A USERS
USERS[admin]=CHANGE_THIS_NOW

for K in "${!USERS[@]}"
do 
    echo $K:$(openssl passwd -apr1 "${USERS[$K]}")
done | paste -s -d, -