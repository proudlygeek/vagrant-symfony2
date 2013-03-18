# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "quantal64"
  config.vm.box_url = "https://github.com/downloads/roderik/VagrantQuantal64Box/quantal64.box"

  config.vm.network :hostonly, "33.33.33.33"
  config.vm.forward_port 80, 8080
  
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  config.vm.customize do |vm|
    vm.memory_size = 256
  end

  config.vm.share_folder "viagrant", "/var/www/yourapp.lo", "./viagrant"
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "my-cookbooks"]
    chef.add_recipe "nginx"
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "php-fpm"
    chef.add_recipe "nginx"
    chef.add_recipe "php"
    chef.add_recipe "php::module_mysql"
    chef.add_recipe "composer"
    chef.add_recipe "mysql"
    chef.add_recipe "mysql::server"
    chef.add_recipe "git"
    chef.add_recipe "viagrant"
    chef.json = {
        app: {
            name: "yourapp",
            web_dir: "/var/www/yourapp.lo",
            dev: true
        },
        nginx: {
            user: "vagrant"
        },
        mysql: {
            server_root_password:   "yourpass",
            server_repl_password:   "yourpass",
            server_debian_password: "yourpass"
        }
    }
  end
end
