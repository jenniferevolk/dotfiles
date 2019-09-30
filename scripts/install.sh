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



# Basics
install tlp
install tlp-rdw
install chromium-browser
install curl
install htop
install nmap
install tmux
install xclip
install youtube-dl


#development
install git
install nodejs
install npm
install zeal

#office
install cherrytree

# Image processing
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


#snaps
install snapd
snap install godot-mono

#programs
cd programs/
./vscode.sh
./python.sh
./atom.sh
./spotify.sh

