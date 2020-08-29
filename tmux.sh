#!/bin/bash

set -x
set -e

# apt-get
sudo apt-get install libevent-dev
sudo apt-get install bison flex

# tmux
sudo apt-get install -y tmux
#sudo apt-get remove -y tmux

#cd ~/Documents/
#git clone https://github.com/tmux/tmux.git
#cd tmux
#git checkout 3.1
#sh autogen.sh
#./configure && make
#sudo make install

#echo "source "/usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf""> .tmux.conf

cd ~
rm -rf .tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
#echo "set -g mouse on" >> .tmux.conf.local

