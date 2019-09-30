#!/bin/bash

./symlink.sh
./install.sh
./drivers.sh
./desktop.sh


# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# fun hello
figlet "... and we're back!" |lolcat
