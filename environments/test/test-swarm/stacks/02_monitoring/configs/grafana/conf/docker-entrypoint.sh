#!/bin/bash -e

source /run/secrets/grafana_environment_sh

exec /run.sh "$@"