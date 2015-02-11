# ofbiz
A turnkey demo version of Apache OfBiz using Oracle Virtualbox and Vagrant


see apache ofbiz documentation for information on modules, urls, etc.


=======
the provision file adds a repository for Java JRE, downloads Java JRE and JDK, sets Java path, clones ofbiz from git repository, loads demo data, loads seed data, creates an ofbiz group, adds vagrant user to ofbiz group, changes ownership of the ofbiz folder to the ofbiz group, builds and starts ofbiz.


Requires:
Oracle Virtualbox
Vagrant


To install:

mkdir vagrant-ofbiz
cd vagrant-ofbiz
clone --recursive https://github.com/agcilantro/ofbiz.git

vagrant-up


To stop the ofbiz instance:
vagrant ssh
cd ofbiz

./ant stop

to do: add a postgresql database installation
	make ofbiz a service that starts automatically upon server startup
