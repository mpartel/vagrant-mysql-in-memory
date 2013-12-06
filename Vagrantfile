# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.vm.network :private_network, :ip => "192.168.50.14"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  #config.vm.forward_port 3306, 13306

  config.vm.provision :shell, :path => "shell/01_install_mysql.sh"
  config.vm.provision :shell, :path => "shell/02_remote_mysql_root.sh"
  config.vm.provision :shell, :path => "shell/03_ramdisk.sh"

end
