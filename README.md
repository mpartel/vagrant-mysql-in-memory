vagrant-mysql-in-memory
=======================

Simple vagrant profile. It includes only mysql server, where database is stored at ramdisk. 
This virtual machine should implement tweaks listed here http://drupal.org/node/466972.

Hopefully, this should boost significantly simpletest test suite execution on my drupal installation :)

Installation and usage
=======================

1. Install latest stable release of virtualbox (http://www.virtualbox.org/)
2. Install vagrant tool (http://vagrantup.com/v1/docs/getting-started/index.html)
3. Download or clone project content
4. In downloaded directory, call 
` cd [vagrant project directory];
 vagrant up`
5. You are ready to go! 

Access details
======================
* db password: _root_
* db login: _root_
* db host: _127.0.0.1_ (host machine)
* db port: _13306_
* test database (stored at ramdisk): _test_