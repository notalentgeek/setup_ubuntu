#!/bin/bash

echo "started setup_dropbox.sh"

# Add command into .bashrc file.
echo "" >> ~/.profile &&
echo "# Fix for Dropbox Xubuntu indicator plugin error." >> ~/.profile &&
echo "sleep 15 && dropbox stop && env DBUS_SESSION_BUS_ADDRESS="" dropbox start -i" >> ~/.profile &&

# Run this twice because the first time it closes Dropbox service.
/bin/bash -c "sleep 15 && dropbox stop && env DBUS_SESSION_BUS_ADDRESS="" dropbox start -i" &&
/bin/bash -c "sleep 15 && dropbox stop && env DBUS_SESSION_BUS_ADDRESS="" dropbox start -i" &&

echo "finished setup_dropbox.sh"