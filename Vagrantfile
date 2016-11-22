domain   = 'example.com'

nodes = [
  { :hostname => 'server',      :ip => '192.168.0.71', :script => 'server.sh', :ram => 3072 },
  { :hostname => 'workstation', :ip => '192.168.0.72', :script => 'workstation.sh' },
  { :hostname => 'client1',     :ip => '192.168.0.73', :script => 'client.sh', :ram => 1024 },
  #{ :hostname => 'client2',     :ip => '192.168.0.74', :script => 'client.sh' },
  #{ :hostname => 'client3',     :ip => '192.168.0.75', :script => 'client.sh' },
  { :hostname => 'compliance',  :ip => '192.168.0.76', :script => 'compliance.sh' },
]

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  nodes.each do |node|
    config.vm.define node[:hostname] do |nodeconfig|
      nodeconfig.vm.box = "boxcutter/centos72"
      nodeconfig.vm.hostname = node[:hostname] + ".chef"
      nodeconfig.vm.network :private_network, ip: node[:ip]

      memory = node[:ram] ? node[:ram] : 2048;
      nodeconfig.vm.provider :virtualbox do |vb|
        vb.name = "chef_" + node[:hostname]
        vb.customize [
          "modifyvm", :id,
          "--memory", memory.to_s,
        ]
      end
      #nodeconfig.vm.provision "shell", inline: '/home/vagrant/sync/' + node[:script]
      nodeconfig.vm.provision "shell", inline: '/vagrant/' + node[:script]
    end
  end

end
