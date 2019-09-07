#!/bin/bash
set -e

sed -i "s/#Port 22/Port ${SSHD_PORT}/" /etc/ssh/sshd_config
systemctl enable ssh
/etc/init.d/ssh start
# /usr/sbin/sshd

mkdir -p ~/.ssh
echo  ${PUBLIC_KEY} > ~/.ssh/authorized_keys

exec "$@"