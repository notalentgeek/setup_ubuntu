#!/bin/bash

echo "started setup_dropbox.sh"

# Stop Dropbox from auto start when system boot.
dropbox autostart n

# Add command into .bashrc file.
echo "# A fix for Dropbox Xubuntu indicator plugin error." >> ~/.profile
echo '/bin/bash -c "sleep 15 && dropbox stop && dbus-launch dropbox start" &' >> ~/.profile

echo "finished setup_dropbox.sh"