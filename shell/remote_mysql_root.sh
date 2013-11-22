#!/bin/bash

mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;"
mysql -uroot -proot -e "FLUSH PRIVILEGES;"

echo "[mysqld]" > /etc/mysql/conf.d/network-access.cnf
echo "bind-address = 0.0.0.0" >> /etc/mysql/conf.d/network-access.cnf
sudo service mysql restart
