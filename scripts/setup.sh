#!/bin/bash


./install.sh
./drivers.sh

./symlink.sh
# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# fun hello
figlet "... and we're back!" |lolcat
