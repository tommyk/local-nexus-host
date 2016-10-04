# LOCAL NEXUS

This project is to help setup a local instance of nexus with data persistence easily.  Nexus will persist data to the virtual machine so its kind of a long lasting sandbox for nexus.

### Requirements
You will need the following software
- virtualbox
- docker v1.12+
- linux / osx

## Setup

### Intial setup

First, you need to clone the repo from github.  After that, you need to run the 'build_nexus_host.sh' file. This will create a virtual machine in virtualbox that is named 'nexus-host'. It uses 'docker-machine' to create the box and sets up docker host on the computer.  

Run the following command to setup the virtual machine. It will prompt you for a password when setting up the 'nexushost' IP to your /etc/hosts file.

``` ./build_nexus_host.sh ```

Once the command says nexus started, you should be able to visit nexus by going to http://nexushost/ .  The default credentials are admin/admin123.  You should change those after installing!

### After virtual machine creation

Once you have created the virtual machine, you should just be able to shut it down and start it up whenever you want.  It will try to start the services on boot*.

* - This isn't completed yet, coming soon!

## Changes

To make make changes to the nginx or nexus configuration you can just edit the files located in the root folder.  For them to be updated you need to run docker-compose comand against the 'nexus-host' virtual machine.  The easiest way to do that is to run the following.

```
docker-machine env nexus-host
eval $(docker-machine env nexus-host)
docker-compose build
docker-compose up
```

Revisiting the site should show your changes at this point.

## Persistent data
todo: explain where it is stored