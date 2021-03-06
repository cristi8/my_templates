#!/bin/bash

export LC_ALL=C
echo export LC_ALL=C >> ~/.bashrc

apt-get update
apt-get -y install aptitude
aptitude -y upgrade

aptitude -y install vim screen supervisor htop iotop python-pip python python-dev
aptitude -y install libffi-dev libssl-dev

systemctl start supervisor
systemctl enable supervisor

cat > ~/.vimrc <<- EOM
syntax enable
set number
set ts=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1
EOM

pip install -U pip virtualenv pymongo python-dateutil
pip install ipython==5.3 httpie requests[security]

aptitude -y install nginx
