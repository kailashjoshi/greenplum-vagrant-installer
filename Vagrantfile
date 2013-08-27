Vagrant.configure("2") do |config|
  config.vm.define "Greenplum setup"
  config.vm.box = "lucid64"
  
  config.vm.provider :virtualbox do |v, override|
    override.vm.box_url = "http://files.vagrantup.com/lucid64.box"
    v.customize ["modifyvm", :id, "--memory", "256"]
  end

  config.vm.define :seg1 do |seg1_config|
    seg1_config.vm.network :private_network, ip: "192.168.2.11"
    seg1_config.vm.hostname = "seg1"
  end
  
  config.vm.define :seg2 do |seg2_config|
    seg2_config.vm.network :private_network, ip: "192.168.2.12"
    seg2_config.vm.hostname = "seg2"
  end
  
  config.vm.define :seg3 do |seg3_config|
    seg3_config.vm.network :private_network, ip: "192.168.2.13"
    seg3_config.vm.hostname = "seg3"
  end
  
   config.vm.define :master do |master_config|
    master_config.vm.network :private_network, ip: "192.168.2.10"
    master_config.vm.hostname = "master"
  end

end
