# Vagrant box for Symfony2 Development #

A simple *Vagrant* box for Symfony2 Development powered by Nginx, PHP-FPM and MySQL.

## Dependencies: ##
-  [Vagrant][1]
-  [Librarian-Chef][2]
-  [VirtualBox][3]

## Usage ##

**Install VirtualBox**

On Ubuntu you can install *VirtualBox* using the following:
```bash
sudo apt-get install virtualbox
```

On *Mac Os X* you can download it [here][3].

**Install Vagrant & Librarian**
```bash
gem install vagrant
gem install librarian
```

**Update Cookbooks**

```bash
librarian-chef install
```

**Download & Provision the Vagrant Box**

Customize *Vagrantfile* with your app settings and then run:

```bash
vagrant up
```

**Forward your local ports to the Vagrant box**

Just edit your local machine */etc/hosts* with an entry pointing to *33.33.33.33* (the app's name on Vagrant file is the name of the Virtualhost):

```
...
33.33.33.33     yourappname.lo
...
```

If you need to work on your VagrantBox just fire up SSH:

```bash
vagrant ssh
```


[1]: http://www.vagrantup.com/
[2]: https://github.com/applicationsonline/librarian
[3]: https://www.virtualbox.org/wiki/Downloads
