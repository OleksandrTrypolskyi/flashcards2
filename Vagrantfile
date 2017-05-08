# REQUIRED_PLUGINS        = %w(vagrant-vbguest vagrant-librarian-chef-nochef)
#
# plugins_to_install = REQUIRED_PLUGINS.select { |plugin| not Vagrant.has_plugin? plugin }
# if not plugins_to_install.empty?
#   puts "Installing required plugins: #{plugins_to_install.join(' ')}"
#   if system "vagrant plugin install #{plugins_to_install.join(' ')}"
#     exec "vagrant #{ARGV.join(' ')}"
#   else
#     abort "Installation of one or more plugins has failed. Aborting. Please read the Bike Index README."
#   end
# end

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/centos-7.1'
  # config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '1536']
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # config.vm.provision :shell, path: 'script.sh'

  # Use Chef Solo to provision virtual machine
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
  #
  #   chef.add_recipe "apt"
  #   chef.add_recipe "build-essential"
  #   chef.add_recipe "system::install_packages"
  #   chef.add_recipe "ruby_build"
  #   chef.add_recipe "ruby_rbenv::user"
  #   chef.add_recipe "ruby_rbenv::user_install"
  #   chef.add_recipe "vim"
  #   chef.add_recipe "postgresql::server"
  #   chef.add_recipe "postgresql::client"
  #
  #   chef.json = {
  #     rbenv: {
  #       user_installs: [{
  #         user: 'ubuntu',
  #         rubies: ["2.4.1"],
  #         global: "2.4.1",
  #         gems: {
  #         "2.4.1" => [{ name: "bundler" }]
  #       }
  #       }]
  #     },
  #     system: {
  #       packages: {
  #         install: ["redis-server", "nodejs", "libpq-dev"]
  #       }
  #     },
  #     postgresql: {
  #       :pg_hba => [{
  #         :comment => "# Add vagrant role",
  #         :type => 'local', :db => 'all', :user => 'user1', :addr => nil, :method => 'trust'
  #       }],
  #       :users => [{
  #         "username": "user1",
  #         "password": "password1",
  #         "superuser": true,
  #         "replication": false,
  #         "createdb": true,
  #         "createrole": false,
  #         "inherit": false,
  #         "login": true
  #       }]
  #     }
  #   }
  # end

end
