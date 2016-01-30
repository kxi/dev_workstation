# A VM with Eclipse, Maven, Git Pre-installed.
## Prerequisite
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## How To Use (OSX/Linux)
######  Download the Vagrant file

    mkdir ~/vagrant
    cd ~/vagrant
    git clone https://github.com/melb-devs/dev_workstation.git
    cd ~/vagrant/dev_worksttation

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
