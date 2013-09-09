Vagrant.configure("2") do |config|
  config.vm.define "Greenplum setup"
  config.vm.box = "CentOS-6.3-x86_64-minimal"
  
  config.vm.provider :virtualbox do |v, override|
    override.vm.box_url = "https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box"
    v.customize ["modifyvm", :id, "--memory", "256"]
  end

  config.vm.define :mdw do |mdw_config|
    mdw_config.vm.network :private_network, ip: "192.168.2.10"
    mdw_config.vm.hostname = "mdw"
    mdw_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "mdw-man"
      puppet.manifest_file  = "mdw-gp.pp"
      puppet.module_path = "modules"
    end
  end

  config.vm.define :smdw do |smdw_config|
    smdw_config.vm.network :private_network, ip: "192.168.2.11"
    smdw_config.vm.hostname = "smdw"
    smdw_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "base-greenplum.pp"
      puppet.module_path = "modules"
    end
  end
  
  config.vm.define :sdw1 do |sdw1_config|
    sdw1_config.vm.network :private_network, ip: "192.168.2.12"
    sdw1_config.vm.hostname = "sdw1"
    sdw1_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "base-greenplum.pp"
      puppet.module_path = "modules"
    end
  end
  
  config.vm.define :sdw2 do |sdw2_config|
    sdw2_config.vm.network :private_network, ip: "192.168.2.13"
    sdw2_config.vm.hostname = "sdw2"
    sdw2_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "base-greenplum.pp"
      puppet.module_path = "modules"
    end
  end

end
