VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "dev-desktop" do |desktop|
    desktop.vm.box = "ubuntu/trusty64"
#  config.vm.box = "bento/centos-6.7"
    desktop.ssh.forward_agent = true
    desktop.ssh.forward_x11 = true
    desktop.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = true
      vb.memory = 2048
      vb.cpus = 1
    end
   
  # Install xfce and virtualbox additions
#    desktop.vm.provision "shell", path: "files/install_script.sh"
#  config.vm.provision "shell", inline: "sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
  # Permit anyone to start the GUI
#  config.vm.provision "shell", inline: "sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config"

    desktop.vm.network "forwarded_port", guest: 80, host: 10080
    desktop.vm.network "private_network", ip: "192.168.50.3"
#    desktop.vm.network "forwarded_port", guest: 443, host: 8443
  end
end

