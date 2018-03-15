#!/bin/bash

HOSTSFILE=$(cat /etc/hosts)

if [[ $(curl -s rancher-metadata/latest/self/container/name) -eq 1 ]]; then
		PRIMARY_IP=$(curl -s rancher-metadata/latest/self/container/primary_ip)
else
		PRIMARY_IP=$(hostname -i)
fi


echo ${HOSTSFILE//`hostname -i`/$PRIMARY_IP} > /etc/hosts
hostname -i
export ZEPPELIN_ADDR=$PRIMARY_IP
exec bin/zeppelin.sh