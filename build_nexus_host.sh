#!/bin/bash
set -e

docker-machine create -d virtualbox nexus-host

#setup hosts file 
#TODO: let user know what is happening before putting in password
#TODO: get a fixed IP address...
sudo bash -c "echo \"$(docker-machine ip nexus-host)  nexushost\" >> /etc/hosts"

docker-machine env nexus-host
eval $(docker-machine env nexus-host)
docker-compose build
docker-compose up