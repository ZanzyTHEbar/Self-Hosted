#!/bin/bash
# Install Docker
# https://docs.docker.com/engine/installation/linux/ubuntulinux/
# https://docs.docker.com/engine/installation/linux/ubuntulinux/#/install-using-the-repository

#update the machine
sudo apt-get update && sudo apt-get upgrade -y

#install packages to allow apt to use a repository over HTTPS

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

#add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#verify that you now have the key with the fingerprint
sudo apt-key fingerprint 0EBFCD88

#set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#update the apt package index &&
#install the latest version of Docker CE
sudo apt-get update && sudo apt-get install -y docker-ce

#get Docker Compose run
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose

#add user to docker group
sudo usermod -aG docker $USER

#test docker compose version
docker-compose --version

echo "Docker and Docker Compose installed successfully"

#exit the script
exit 0