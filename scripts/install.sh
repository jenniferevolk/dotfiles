#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}




cd programs/

# Basics
install tlp
install tlp-rdw
install curl
install htop
install nmap
install tmux
install xclip
install youtube-dl
install meld


#development
install git
install nodejs
install npm
install zeal
install chromium-browser
install xfce4-clipman-plugin
install cheese
install snapd
install cherrytree

install gimp
install jpegoptim
install optipng
install inkscape
install krita
install blender
install makehuman

# Fun stuff
install figlet
install lolcat

#scripts
./vscode.sh
./python.sh
./atom.sh
./mongodb.sh
./postman.sh
./anaconda.sh
./virtualbox.sh

./discord.sh
./telegram.sh

./anki.sh
./neofetch.sh
./spotify.sh


#snaps
sudo snap install --classic heroku
sudo snap install godot-mono




