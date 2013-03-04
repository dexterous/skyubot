Description
===========

Installs Hubot and specified scripts

Requirements
============

Platform
--------

Currently tested on the following platforms:

* Ubuntu 12.04

Attributes
==========

See `attributes/default.rb` for default values.

* `node['skyubot']['hubot_version']` - version of hubot to be installed (blank for latest)
* `node['skyubot']['hubot_scripts']` - list of hubot-scripts to enable

Usage
=====

Include the default recipe
