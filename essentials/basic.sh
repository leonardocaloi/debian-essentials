#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get install -y git sudo curl vim locales tar gzip wget

# Configurar locale
sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
locale-gen
update-locale LANG=en_US.UTF-8

export LANG=en_US.UTF-8

# Configurar Vim para usar UTF-8
echo "set encoding=utf-8" >> /etc/vim/vimrc && \
echo "set fileencoding=utf-8" >> /etc/vim/vimrc
