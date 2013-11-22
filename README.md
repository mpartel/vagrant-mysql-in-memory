vagrant-mysql-in-memory
=======================

Simple vagrant profile. It includes only mysql server, where database is stored at ramdisk. 

Forked from https://github.com/harijari/vagrant-mysql-in-memory

Changes:
- put all databases on ramdisk instead of only 'test'
- simplified set up to only use shell scripts
- replaced port forwarding with dedicated IP (due to subjective taste)

Installation and usage
=======================

1. Install latest stable release of virtualbox (http://www.virtualbox.org/)
2. Install vagrant tool (http://vagrantup.com/v1/docs/getting-started/index.html)
3. Download or clone this project content
4. In downloaded directory, call 
` cd [vagrant project directory];
 vagrant up`
5. You are ready to go! 

Access details
======================
* db password: _root_
* db login: _root_
* db host: _192.168.50.14_
* db port: _3306_
