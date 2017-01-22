#!/bin/bash -v
apt-get update
apt-get upgrade -y
apt-get -y install build-essential
apt-get -y install git
wget -O - https://repo.saltstack.com/apt/ubuntu/12.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
touch /etc/apt/sources.list.d/saltstack.list
echo "deb http://repo.saltstack.com/apt/ubuntu/12.04/amd64/latest precise main" >> /etc/apt/sources.list.d/saltstack.list
apt-get update
apt-get install salt-minion
