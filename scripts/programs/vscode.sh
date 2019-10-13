#!/bin/bash

# Visual Studio Code
# https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg


function install {
  name="${1}"
  code --install-extension ${name} --force
}

install jamesqquick.web-development-essentials-extension-pack
install jaspernorth.vscode-pigments
install emroussel.atomize-atom-one-dark-theme
install ms-python.python
install sidthesloth.html5-boilerplate
install formulahendry.auto-close-tag
install dbaeumer.jshint
install formulahendry.code-runner
install yzhang.markdown-all-in-one
install shd101wyy.markdow
install thekalinga.bootstrap4-vscode
