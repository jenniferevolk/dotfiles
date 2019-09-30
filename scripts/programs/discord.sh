#!/bin/bash
wget https://discordapp.com/api/download/canary?platform=linux -O /tmp/discord-canary-0.0.9.deb
sudo dpkg -i /tmp/discord-canary-0.0.9.deb

rm /tmp/discord-canary-0.0.9.deb
