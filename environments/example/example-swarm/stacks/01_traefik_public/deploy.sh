#!/bin/bash

set -a

source ./vars.sh

exec docker-sdp stack deploy -c traefik_public.yml traefik_public