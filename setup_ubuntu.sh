#!/bin/bash

echo "started setup_ubuntu.sh"

BASE_DIRECTORY=$(dirname $0) &&

# Set all scripts to be executable.
chmod +x "${BASE_DIRECTORY}/install_apt_packages_with_interactive_cli.sh" &&
chmod +x "${BASE_DIRECTORY}/install_curl_and_set_repositories_from_curl.sh" &&
chmod +x "${BASE_DIRECTORY}/install_npm_packages.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_apt_repositories.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_dropbox.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_git.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_haxelib.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_keyboard.sh" &&
chmod +x "${BASE_DIRECTORY}/setup_pyaudio.sh" &&
chmod +x "${BASE_DIRECTORY}/update_and_install_apt_packages.sh" &&
chmod +x "${BASE_DIRECTORY}/update_and_install_pip_packages.sh" &&

# Execute all scripts in proper order.
"${BASE_DIRECTORY}/setup_keyboard.sh" &&
"${BASE_DIRECTORY}/setup_apt_repositories.sh" &&
"${BASE_DIRECTORY}/update_and_install_apt_packages.sh" &&
"${BASE_DIRECTORY}/install_curl_and_set_repositories_from_curl.sh" &&
"${BASE_DIRECTORY}/setup_pyaudio.sh" &&
"${BASE_DIRECTORY}/update_and_install_pip_packages.sh" &&
"${BASE_DIRECTORY}/install_npm_packages.sh" &&
"${BASE_DIRECTORY}/setup_git.sh" &&
"${BASE_DIRECTORY}/setup_haxelib.sh" &&
"${BASE_DIRECTORY}/install_apt_packages_with_interactive_cli.sh" &&

echo "finished setup_ubuntu.sh"