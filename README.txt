This is a vagrant box that installs apache, git and Java JDK version 7 automatically by provisioning.
To be used for apache ofbiz and opentaps installation

can add git clone https://github.com/apache/ofbiz.git ofbiz to bootstrap to also download ofbiz from git during provisioning

#############################################
Instructions to install ofbiz to Ubuntu:


Steps to Install Apache OFBiz on Linux System
Written by Rahul
Opensource 14 comments

Apache OFBiz (The Apache Open For Business Project) is an open source ERP/CRM system from the Apache Foundation starting point for reliable, secure and scalable enterprise solutions. It offering complete accounting/ledger, inventory management, CRM, and project management systems. Also OfBiz includes a complete CRM system and ecommerce shopping cart. OfBiz offers a solid framework for plugin development allowing complete customization.

This article will help you to install Apache OfBiz on Linux ( CentOS, RHEL, Fedora, Ubuntu, Scientific Linux and Debain ) systems with initial demo data. This tutorial is tested with CentOS 6.5 only.
Step 1: Install JAVA

Java is the primary requirement for installing Apache OFBix. It required minimum Java 1.6 to installed on your system. Make sure you have Java installed with proper version on your system.

# java -version

java version "1.8.0"
Java(TM) SE Runtime Environment (build 1.8.0-b132)
Java HotSpot(TM) Client VM (build 25.0-b70, mixed mode)

If you do not Java installed, Use below tutorial to install java else ignore it.

CentOS, RHEL, SL and Fedora Users – Instruction’s to Install JAVA 7 or Install JAVA 8
JAVA and Debian Users – Instruction’s to Install JAVA 7 or Install JAVA 8
Step 2: Download Apache OfBiz from SVN

We recommend to use SVN download latest Apache OfBiz files. first make sure you have svn client installed on system after that checkout the latest build from the subversion repository of ofbiz.

# cd /opt/
# yum install subversion
# svn co http://svn.apache.org/repos/asf/ofbiz/trunk apache-ofbiz

Step 3: Installing Apache OfBiz

After checkout complete codebase of Apache Ofbiz, Use following command to install Apache OfBiz on your Linux system.

# cd /opt/apache-ofbiz/
# ./ant

Step 4: Install Dataset, Load Demo and Seed Data

Apache OfBiz provides dataset, demo data and seed data, this data is useful for experiment. This data is un useful for production setup.

# ./ant load-demo
# ./ant load-extseed

Step 5: Start Apache OfBiz Service

After install apache ofbiz, Use following command to start apache ofbiz service on system.

# ./ant start

Step 6: Access Apache ofBiz in Browser

Access Apache ofbiz in browser on port 8443 as below given url and login credentials.

URL:  https://192.168.1.91:8443/myportal/control/main
Admin Username: admin
Admin Password: ofbiz

apache-ofbiz-login

Congratulation’s! You have successfully install apache Ofbiz on your Linux system.

References:
http://ofbiz.apache.org/
https://cwiki.apache.org/OFBADMIN/demo-and-test-setup-guide.html


