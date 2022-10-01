#!/bin/bash

set -a

CUR_PWD=$(pwd)
cd ./secrets
source ./vars.sh
cd $CUR_PWD

exec docker-sdp stack deploy -c monitoring.yml monitoring