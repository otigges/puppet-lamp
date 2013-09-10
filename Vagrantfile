# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
 
  config.vm.box = "pl-centos-64-x64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"
  config.vm.customize ["modifyvm", :id, "--memory", "1024"]

  config.vm.define "lamp" do |app|
    app.vm.network :hostonly, "192.168.33.43"
    app.vm.host_name = "lamp.local"
    
    app.vm.provision :puppet, :module_path => ["modules", "../puppet-commons/modules"] do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "lamp.pp"
    end
  end
end
