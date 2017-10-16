#!/bin/bash

echo "started install_npm_packages.sh"

yes | sudo npm install -g bower &&
yes | sudo npm install -g grunt-cli &&
yes | sudo npm install -g mustache &&
yes | sudo npm install -g typescript &&
yes | sudo npm install -g underscore-cli &&

echo "finished install_npm_packages.sh"