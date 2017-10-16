#!/bin/bash

echo "started update_and_install_apt_packages.sh"

# Update and upgrade.
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq update &&
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade &&

# Install packages.
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install apache2 && sudo DEBIAN_FRONTEND=noninteractive service apache2 stop &&
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install audacity
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install bleachbit
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install blender
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install chromium-browser
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install dia
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install docker
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install docker-compose
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install fluxgui
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install gimp
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install git
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install gparted
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install haxe
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install imagemagick
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install inkscape
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install keepassx
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install libreoffice
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install make
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install mongodb
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install mongodb-server
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install nginx
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install nodejs
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install pandoc
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python-dev
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python-pip
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python3
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python3-dev
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install python3-pip
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install rethinkdb
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install scribus
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install shutter
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install sublime-text
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install texstudio
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install thunderbird

echo "finished update_upgrade_and_install_package.sh"