#!/usr/bin/env bash

# installs webupd8team repository to install java jdk

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get update

echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install -y oracle-java7-installer

apt-get install -y apache2
apt-get install -y git
apt-get install -y php5
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www


# apt-get install -y oracle-java7-installer

# clone, install, load data, build and start ofbiz

git clone --recursive https://github.com/apache/ofbiz.git ofbiz
cd ofbiz
./ant
./ant load-demo
./ant load-extseed
  
#  to start instance of ofbiz: vagrant ssh, cd ofbiz, ./ant start





fi
