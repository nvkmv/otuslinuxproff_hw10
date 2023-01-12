# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "nvkmv/rockylinux9"
  config.vm.box_version = "1.0"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"


  config.vm.network "public_network"#, ip: "192.168.1.55"

  config.vm.synced_folder "./data", "/home/vagrant/data"

    # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  # documentation for more information about their specific syntax and use.
  config.vm.provision "ansible", playbook: "ansible/playbook.yml"
  
end
