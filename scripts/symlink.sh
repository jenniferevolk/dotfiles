#!/bin/bash

# Up from scripts dir
cd ..

dotfilesDir=$(pwd)

function linkDotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

linkDotfile .bashrc
linkDotfile .profile
linkDotfile .gitconfig


#vscode
dest="${HOME}/.config/Code/User"
mkdir -p ${dest}
ln -s ${dotfilesDir}/vsc_settings.json ${dest}/settings.json

#discord
dest="${HOME}/.config/discord"
mkdir -p ${dest}
ln -s ${dotfilesDir}/discord_settings.json ${dest}/settings.json


