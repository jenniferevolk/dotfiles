#!/bin/bash
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb -O /tmp/slack-desktop-2.2.1-amd64.deb
sudo dpkg -i /tmp/slack-desktop-2.2.1-amd64.deb

rm /tmp/slack-desktop-2.2.1-amd64.deb
