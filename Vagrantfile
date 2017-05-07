Vagrant.configure("2") do |config|
  config.vm.box = 'bento/centos-7.1'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: 'script.sh'
end
