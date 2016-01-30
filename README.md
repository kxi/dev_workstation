# A VM with Eclipse, Maven, Git Pre-installed.
## Prerequisite
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## How To Use (OSX/Linux)
1. Download the Vagrant file

    mkdir ~/vagrant
    cd ~/vagrant
    git clone https://github.com/melb-devs/dev_workstation.git
    cd ~/vagrant/dev_worksttation

2. Check Status of the VM

    vagrant status

3. Spin up a VM

    vagrant up

4. SSH connect to the VM

    vagrant ssh dev-desktop

5. Pause the VM

    vagrant suspend dev-desktop

6. Resume the VM

    vagrant resume dev-desktop

7. Shutdown the running VM

    vagrant halt dev-desktop

8. Destroy the VM

    vagrant destroy dev-desktop
