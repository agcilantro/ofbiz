# ofbiz
A turnkey demo version of Apache OfBiz using Oracle Virtualbox and Vagrant


see apache ofbiz documentation for information on modules, urls, etc.


=======
the provision file downloads Java JRE and JDK, sets path, clones ofbiz from git repository, loads seed data, builds and starts ofbiz.

Requires:
Oracle Virtualbox
Vagrant

create a folder -mkdir vagrant-ofbiz
change to the folder - cd vagrant-ofbiz

clone from git into this folder
run vagrant-up


To stop the ofbiz instance:
vagrant ssh
cd ofbiz

./ant stop
