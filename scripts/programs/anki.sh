sudo apt-get install -y libjs-jquery-flot libjs-jquery-ui libminizip1 libportaudio2 libqt5positioning5 libqt5webchannel5 libqt5webengine-data libqt5webengine5 libqt5webenginecore5 libqt5webenginewidgets5 libre2-4 python3-decorator python3-markdown python3-pyaudio python3-pyqt5.qtwebchannel python3-pyqt5.qtwebengine python3-send2trash python3-disutils

wget https://apps.ankiweb.net/downloads/current/anki-2.1.15-linux-amd64.tar.bz2
tar xjf Downloads/anki-2.1.15-amd64.tar.bz2
cd anki-2.1.15-linux-amd64
sudo make install
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
echo "gtk-theme-name=$theme" >> ~/.gtkrc-2.0
echo "export GTK2_RC_FILES=$HOME/.gtkrc-2.0" >> ~/.profile

cd ..
rm -fr anki-2.1.15-linux-amd64
