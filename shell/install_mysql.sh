#!/bin/bash

debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'

apt-get update
apt-get -y install mysql-server-5.5
apt-get -y clean
