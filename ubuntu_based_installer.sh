#! /bin/bash

# echo "Creating Directory in PATH"
# sudo mkdir /usr/bin/ytpbgmp

echo "Adding executable file to $HOME/bin"
chmod +x bgmplayer
# cp output bgmplayer
[ ! -d "$HOME/bin" ] && echo "Could not find $HOME/bin folder... Creating it." && mkdir -p $HOME/bin 
[ -d "$HOME/bin" ] && cp bgmplayer $HOME/bin

echo "Installing dependencies. (apt & wget) (will need sudo permissions)"
# cp -r depends bgmplayer_depends
# sudo mv bgmplayer_depends /usr/bin/ || rm -r bgmplayer_depends
sudo add-apt-repository ppa:mc3man/mpv-tests -y && sudo apt update && sudo apt-get remove mpv -y && sudo apt install mpv -y 
youtube-dlc --version || ( sudo wget https://github.com/blackjack4494/yt-dlc/releases/latest/download/youtube-dlc -O /usr/local/bin/youtube-dlc && sudo chmod a+rx /usr/local/bin/youtube-dlc )
# sudo cp depends/* /usr/bin

echo "Install finished! Run the application with this command: bgmplayer"