#!/bin/bash


#https://www.canondrivers.org/canon-pixma-mg7700-driver-download-mac/
wget https://clouds.canonmx920.com/?safelink_redirect=http%3A%2F%2Fgdlp01.c-wss.com%2Fgds%2F5%2F0100006905%2F01%2Fscangearmp2-3.20-1-deb.tar.gz -O scangearmp2-3.20-1-deb.tar.gz

wget https://clouds.canonmx920.com/?safelink_redirect=http%3A%2F%2Fgdlp01.c-wss.com%2Fgds%2F2%2F0100006902%2F01%2Fcnijfilter2-5.20-1-deb.tar.gz -O cnijfilter2-5.20-1-deb.tar.gz

tar -xzvf cnijfilter2-5.20-1-deb.tar.gz
tar -xzvf scangearmp2-3.20-1-deb.tar.gz

sudo dpkg -i cnijfilter2-5.20-1-deb/packages/cnijfilter2_5.20-1_amd64.deb
sudo dpkg -i scangearmp2-3.20-1-deb/packages/scangearmp2_3.20-1_amd64.deb


rm -r cnijfilter2-5.20-1-deb
rm -r scangearmp2-3.20-1-deb
