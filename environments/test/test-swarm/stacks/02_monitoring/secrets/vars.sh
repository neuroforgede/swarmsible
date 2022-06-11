#!/bin/bash

# this gets prefixed with <servicename>- to get the domain
export BASE_DOMAIN="mon.test.tld.localhost"
export PROMETHEUS_USERS=$(bash prometheus_users.sh)