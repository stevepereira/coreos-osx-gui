#!/bin/bash -x

#  coreos-vagrant-install.command
#  CoreOS GUI for OS X
#
#  Created by Rimantas on 01/04/2014.
#  Copyright (c) 2014 Rimantas Mocevicius. All rights reserved.

    # create "coreos-osx" folder at user's home folder where the all files will be stored
    mkdir ~/coreos-osx

    # create "bin" folder
    mkdir ~/coreos-osx/bin

    # create the "share" folder share
    mkdir ~/coreos-osx/share

    # create the "logs" folder share
    mkdir ~/coreos-osx/logs

    # download latest coreos-vagrant
    git clone https://github.com/coreos/coreos-vagrant/ ~/coreos-osx/coreos-vagrant

    cd "$1"

    # copy updated Vagrantfile till the sed insert will be implemented
    cp Vagrantfile ~/coreos-osx/coreos-vagrant/

    # copy user-data file
    cp user-data ~/coreos-osx/coreos-vagrant/user-data

    # Make changes to Vagrant file
    #sed -i "" 's/172.17.8.#{i+100}/172.17.8.99/g' ~/coreos-osx/coreos-vagrant/Vagrantfile

    # initial init
    open -a iTerm.app "$1"/first-init.command "$1"
