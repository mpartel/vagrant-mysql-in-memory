#!/bin/bash

FSTAB_CONTENT="tmpfs /var/lib/mysql tmpfs rw,nosuid,nodev,noexec,uid=$(id -u mysql),gid=$(id -g mysql) 0 0"
echo "Moving mysql data to ramdisk"
sudo service mysql stop
if [ ! -d /var/lib/mysql.disk ]; then
  mv /var/lib/mysql /var/lib/mysql.disk
  mkdir /var/lib/mysql
fi

echo $FSTAB_CONTENT >> /etc/fstab
cat /etc/fstab|uniq > /tmp/fstab
mv /tmp/fstab /etc/fstab

mount -a

cat > /root/onreboot.sh <<EOF
sudo service mysql stop

chown mysql:mysql /var/lib/mysql
cp -a /var/lib/mysql.disk/* /var/lib/mysql/

sudo service mysql start
EOF

chmod +x /root/onreboot.sh

echo "@reboot root /root/onreboot.sh" > /etc/cron.d/root_onreboot_sh
sh /root/onreboot.sh
