#!/bin/bash

echo "started install_curl_and_set_repositories_from_curl.sh"

# Install `curl`.
yes | sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install curl &&

# Add NodeJS repository.
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - &&

echo "finished install_curl_and_set_repositories_from_curl.sh"