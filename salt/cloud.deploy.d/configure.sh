#!/bin/bash -v
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
apt-get update
apt-get upgrade -y
apt-get -y install build-essential
apt-get -y install git
curl -L https://bootstrap.saltstack.com | sudo sh
