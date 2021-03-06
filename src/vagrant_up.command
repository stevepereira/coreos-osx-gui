#!/bin/bash

#  vagrant_up.command
#  CoreOS GUI for OS X
#
#  Created by Rimantas on 01/04/2014.
#  Copyright (c) 2014 Rimantas Mocevicius. All rights reserved.

cd ~/coreos-osx/coreos-vagrant
vagrant up

# Set the environment variable for the docker daemon
eval $(echo "export DOCKER_HOST=tcp://localhost:4243")
# path to the bin folder where we store our binary files
eval $(echo "export PATH=$PATH:${HOME}/coreos-osx/bin")
# set fleetctl tunnel
eval $(echo "export FLEETCTL_TUNNEL=127.0.0.1:2222")

ssh-add ~/.vagrant.d/insecure_private_key

cd ~/coreos-osx/share

/bin/bash

