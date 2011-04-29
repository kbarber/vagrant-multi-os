Vagrant::Config.run do |config|
  # Set this to change your development folder mount point
  dev_folder = "~/Development"

  config.vm.define "squeeze" do |vm_config|
    vm_config.vm.box = "debian-squeeze-64"
    vm_config.vm.box_url = "http://puppetlabs.s3.amazonaws.com/pub/squeeze64.box"
    #vm_config.vm.boot_mode = :gui
    vm_config.vm.forward_port("ssh", 22, 2222, :auto => true)
    vm_config.vm.share_folder "dev", "/Development", dev_folder
    vm_config.vm.provision :puppet
  end

  config.vm.define "lenny" do |vm_config|
    vm_config.vm.box = "debian-lenny-64"
    vm_config.vm.box_url = "http://puppetlabs.s3.amazonaws.com/pub/debian_lenny_64.box"
    #vm_config.vm.boot_mode = :gui
    vm_config.vm.forward_port("ssh", 22, 2222, :auto => true)
    vm_config.vm.share_folder "dev", "/Development", dev_folder
    vm_config.vm.provision :puppet
  end

  config.vm.define "centos55" do |vm_config|
    vm_config.vm.box = "centos-55-64"
    vm_config.vm.box_url = "http://puppetlabs.s3.amazonaws.com/pub/centos5_64.box"
    #vm_config.vm.boot_mode = :gui
    vm_config.vm.forward_port("ssh", 22, 2222, :auto => true)
    vm_config.vm.share_folder "dev", "/Development", dev_folder
    vm_config.vm.provision :puppet, :module_path => 'modules'
  end

  config.vm.define "sles11sp1" do |vm_config|
    vm_config.vm.box = "sles11sp1-64"
    vm_config.vm.box_url = "http://puppetlabs.s3.amazonaws.com/pub/sles11sp1_64.box"
    #vm_config.vm.boot_mode = :gui
    vm_config.vm.forward_port("ssh", 22, 2222, :auto => true)
    vm_config.vm.share_folder "dev", "/Development", dev_folder
    vm_config.vm.provision :puppet
  end
end
