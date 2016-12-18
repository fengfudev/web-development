#!/usr/bin/env bash

# Update packages.
# apt-get update
# apt-get upgrade -y

# nginx
sudo apt-get -y install nginx
sudo service nginx start


source /vagrant/provision/installation/nginx.sh 

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant
ln -s /vagrant /var/www