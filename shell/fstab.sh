#!/bin/bash

FSTAB_CONTENT="tmpfs /var/lib/mysql/test tmpfs rw,nosuid,nodev,noexec,uid=$(id -u mysql),gid=$(id -g mysql) 0 0"
echo "Adding $FSTAB_CONTENT to /etc/fstab.d/tmpfs.conf"
echo $FSTAB_CONTENT >> /etc/fstab
cat /etc/fstab|uniq > /tmp/fstab
mv /tmp/fstab /etc/fstab
mount -a
