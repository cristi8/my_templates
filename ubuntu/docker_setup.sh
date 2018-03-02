#!/bin/bash

export LC_ALL=C; echo export LC_ALL=C >> ~/.bashrc
apt-get update && apt-get -y upgrade && apt-get -y install aptitude python-pip python-dev vim screen htop iotop
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
pip install docker-compose

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
