name             "skyubot"
maintainer       "Saager Mhatre"
maintainer_email "support@vayana.in"
license          "All rights reserved"
description      "Installs/Configures Vayana's Hubot instance and scripts"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.0"

recipe 'skyubot' , 'Installs the bot'

supports 'ubuntu'
