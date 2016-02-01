#!/bin/bash
export UserID=rubin
cd /tmp/
cp /vagrant/files/* /tmp/
sudo apt-add-repository -y ppa:ubuntu-mate-dev/ppa
sudo apt-add-repository -y ppa:ubuntu-mate-dev/trusty-mate
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update

# Install Desktop
sudo apt-get -y install --no-install-recommends ubuntu-mate-core ubuntu-mate-desktop
sudo init 5

# Install JDK
echo 'oracle-java8-installer shared/accepted-oracle-license-v1-1 select true' | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

# Install Eclipse
sudo tar -zxvf /tmp/eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz -C /opt/
cp /tmp/eclipse.desktop /usr/share/applications/
sudo desktop-file-install /usr/share/applications/eclipse.desktop
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/

# Install MAVEN
export MAVEN_VERSION=3.3.3
wget https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz
sudo mv /tmp/apache-maven-$MAVEN_VERSION /usr/share/maven 
sudo ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
sudo useradd -s /bin/bash -m -d /home/$UserID $UserID
echo "${UserID}:${UserID}" | sudo chpasswd
echo "${UserID}    ALL=(ALL:ALL) ALL" | sudo tee -a /etc/sudoers > /dev/null

# Install Git
cd /tmp/
export GIT_VERSION=2.6.5
sudo apt-get -y install autoconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev 
wget https://github.com/git/git/archive/v${GIT_VERSION}.zip 
unzip v${GIT_VERSION}.zip 
cd /tmp/git-${GIT_VERSION}
make configure
./configure --prefix=/usr
make all 
sudo make install

# Install SmartGit
export Smartgit_VERSION=7_0_5
wget http://www.syntevo.com/downloads/smartgit/smartgit-generic-${Smartgit_VERSION}.tar.gz
tar zxvf smartgit-generic-${Smartgit_VERSION}.tar.gz
sudo mkdir -p /usr/local/smartgit/${Smartgit_VERSION}
sudo cp -r /tmp/smartgit/* /usr/local/smartgit/${Smartgit_VERSION}/
sudo ln -sfn /usr/local/smartgit/${Smartgit_VERSION}/bin/smartgit.sh /usr/bin/smartgit

# Install Workbench
sudo apt-get -y install mysql-workbench

reboot

