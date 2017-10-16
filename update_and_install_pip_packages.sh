#!/bin/sh

echo "started update_and_install_pip_packages.sh"

yes | sudo pip install --upgrade pip &&
yes | sudo pip3 install --upgrade pip &&
yes | sudo pip3 install anyjson &&
yes | sudo pip3 install aubio &&
yes | sudo pip3 install beautifulsoup4 &&
yes | sudo pip3 install django &&
yes | sudo pip3 install django-angular &&
yes | sudo pip3 install django-celery &&
yes | sudo pip3 install docopt &&
yes | sudo pip3 install flask &&
yes | sudo pip3 install flask-socketio &&
yes | sudo pip3 install gunicorn &&
yes | sudo pip3 install mkdocs &&
yes | sudo pip3 install numpy &&
yes | sudo pip3 install pyaudio &&
yes | sudo pip3 install pyinstaller &&
yes | sudo pip3 install rethinkdb &&
yes | sudo pip3 install tzlocal &&
yes | sudo pip3 install virtualenv &&
yes | sudo pip3 install virtualenvwrapper &&

echo "finished update_and_install_pip_packages.sh"