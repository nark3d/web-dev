# 64bit LAMP Stack with Laravel using Vagrant & Puppet

Building a LAMP stack with Puppet and Vagrant to develop, test, and/or build the worlds next great application should be easy. Use this all inclusive code to quickly kickstart your next application environement.

## Prerequisites
* [Vagrant](http://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/)

## Instructions
0. Insure Vagrant and Virutal Box are installed.
1. Install precise64 Vagrant box. (If not installed already)

        $ vagrant box add precise64 http://files.vagrantup.com/precise64.box

2. Clone this repository.
3. Create directory "webroot" in the root directory of the clone. This will act as your root web folder.
4. Open up terminal, change directory to the git repo root, and start the vagrant box.

        $ vagrant up

You're all set up. The webserver will now be accessible from http://localhost:8888

## System Packages include

* apache2 - rewrite mode enabled, having virtual host with config - refer manifest/vagrant_webroot.sample
* php5
* php5-cli
* php5-mysql
* php-pear - installed packages: phpunit and its dependencies
* php5-dev
* php5-gd
* php5-mcrypt
* libapache2-mod-php5
* mysql-server
* curl
* vim
* htop
* phpmyadmin accessible via localhost:8888/phpmyadmin
* laravel 4
