#!/bin/bash

# this gets prefixed with <servicename>- to get the domain
export BASE_DOMAIN="mon.example.tld.localhost"
export PROMETHEUS_USERS=$(bash prometheus_users.sh)
export ALERTMANAGER_USERS=$(bash alertmanager_users.sh)
export PROM2TEAMS_CONNECTOR="<MS Teams webhook url>"