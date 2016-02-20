# A VM with Java Dev Environment
## Prerequisite
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Ansible](http://http://docs.ansible.com/ansible/intro_installation.html)


## Preparation (OSX/Linux)
######  Download the Vagrant file

    mkdir ~/vagrant
    cd ~/vagrant
    git clone https://github.com/melb-devs/dev_workstation.git
    cd ~/vagrant/dev_worksttation
    

###### Download the Linux 64-bit Installer of Eclipse IDE for Java EE Developers 

    http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/marsr


###### Copy Installer to 

    cp eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz  ~/tmp/

## Vagrant Operation
###### Check Status of the VM

    vagrant status


###### Spin up a VM

    vagrant up


###### SSH connect to the VM

    vagrant ssh dev-desktop


###### Pause the VM

    vagrant suspend dev-desktop


###### Resume the VM

    vagrant resume dev-desktop


###### Shutdown the running VM

    vagrant halt dev-desktop


###### Destroy the VM

    vagrant destroy dev-desktop


## Ansible Post-installation (Desktop, JDK, Maven, Git, SmartGit, Workbench etc.)
###### Install Ansible

    sudo pip install ansible


###### Run Ansible Playbook

    export ANSIBLE_HOST_KEY_CHECKING=False
    ansible-playbook post-install.yml -i inventory


###### Install a Specific Ansible Playbook

    ansible-playbook post-install.yml -i inventory --tags "install-maven"
