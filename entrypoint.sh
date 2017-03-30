#!/bin/bash

HOSTSFILE=$(cat /etc/hosts)
PRIMARY_IP=$(curl -s rancher-metadata/latest/self/container/primary_ip)

echo ${HOSTSFILE//`hostname -i`/$PRIMARY_IP} > /etc/hosts
hostname -i
ZEPPELIN_ADDR=$PRIMARY_IP \
exec bin/zeppelin.sh