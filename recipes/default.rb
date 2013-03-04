apt_repository 'chris-lea_node.js' do
    uri 'http://ppa.launchpad.net/chris-lea/node.js/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key 'C7917B12'
    deb_src true
end

apt_repository 'canonical-partner' do
    uri 'http://archive.canonical.com'
    distribution node['lsb']['codename']
    components ['partner']
    deb_src true
end

%w(xinit skype python-gobject nodejs npm).each do |pkg|
    package pkg
end

%w(coffee-script hubot hubot-skype).each do |pkg|
    execute "npm install --global #{pkg}" do
        only_if "[ -z \"$(npm list --global --parseable #{pkg})\" ]"
    end
end

%w(Skype4Py).each do |pkg|
    python_pip pkg do
        action :install
    end
end
