#!/bin/bash

#update the machine
sudo apt-get update && sudo apt-get upgrade -y

#install packages

# install autojump
# install zsh
# install oh-my-zsh
# install powerline fonts
# install powerlevel9k
# install tmux
sudo apt-get install -y autojump git-core curl zsh tmux fonts-powerline && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup zsh
mkdir ~/zsh
# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# copy .zshrc to home directory
cp .zshrc ~/
# copy .p10k.zsh to /home/zsh directory
cp .p10k.zsh ~/zsh
# copy aliasrc to /home/zsh directory
cp aliasrc ~/zsh
# copy .tmux.conf to home directory
cp .tmux.conf ~/

# call the install_docker.sh script
./install_docker.sh

# create .env files for docker-compose services
# create .env file for traefik
touch traefik/.env
# create .env file for portainer
touch portainer/.env
# create .env file for nextcloud
touch nextcloud/.env
# create .env file for plex
touch plex/.env
# create .env for homer
touch homer/.env
# create .env for mykuma
touch mykuma/.env
# create .env for nextcloud
touch nextcloud/.env


# put defaut values in .env files
# put default values in traefik/.env
echo "DOMAIN=example.com" >> traefik/.env
echo "" >> traefik/.env