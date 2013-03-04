OPSCODE_ORG = ENV['OPSCODE_ORG'] || 'vayana-trial'
OPSCODE_USER = ENV['OPSCODE_USER'] || ENV['USER']

Vagrant::Config.run do |config|
    config.vm.box = 'ubuntu-12.04-alternate-i386'

    config.vm.provision :chef_client do |chef|
        chef.chef_server_url = "https://api.opscode.com/organizations/#{OPSCODE_ORG}"
        chef.validation_key_path = "~/.chef/#{OPSCODE_ORG}-validator.pem"
        chef.validation_client_name = "#{OPSCODE_ORG}-validator"
        chef.encrypted_data_bag_secret_key_path = "~/.chef/secret"

        chef.node_name = "#{OPSCODE_USER}-skyubot-vagrant"
        chef.environment = 'vagrant'

        chef.add_recipe 'apt'
        chef.add_recipe 'python::pip'
        chef.add_recipe 'skyubot'
    end
end
