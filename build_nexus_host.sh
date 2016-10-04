#!/bin/bash
set -e

#docker-machine create -d virtualbox nexus-host
docker-machine ssh nexus-host "sudo mkdir /nexus-data && sudo chown -R 200 /nexus-data"
docker-machine env nexus-host
eval $(docker-machine env nexus-host)
docker-compose build
docker-compose up