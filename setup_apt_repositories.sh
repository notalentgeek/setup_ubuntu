#!/bin/bash

echo "started setup_apt_repositories.sh"

# Add SublimeText3 repository.
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&

# Add RethinkDB repository.
source /etc/lsb-release &&
echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list &&
wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add - &&

# Add Haxe repository.
yes | sudo DEBIAN_FRONTEND=noninteractive apt-add-repository -y ppa:haxe/releases &&

# Add Audacity repository.
yes | sudo DEBIAN_FRONTEND=noninteractive apt-add-repository -y ppa:ubuntuhandbook1/audacity &&

echo "finished setup_apt_repositories.sh"