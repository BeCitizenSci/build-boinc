#!/usr/bin/bash

# build-boinc.sh
# Build headless BOINC from source on Ubuntu Server
# Copyright (C) 2020 Scott C. MacCallum
# scott@scm.guru

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Get BOINC build dependencies

sudo apt-get -y install dh-autoreconf
sudo apt-get -y install git
sudo apt-get -y install libapache2-mod-php5
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get -y install libmysqlclient-dev
sudo apt-get -y install libnotify-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install libwxgtk-webview3.0-gtk3-dev
sudo apt-get -y install libwxgtk3.0-gtk3-dev
sudo apt-get -y install m4
sudo apt-get -y install make
sudo apt-get -y install php5-gd
sudo apt-get -y install php5-mysql
sudo apt-get -y install pkg-config
sudo apt-get -y install python
sudo apt-get -y install python-mysqldb
sudo apt-get -y install libsqlite3-dev

# Get BOINC source code

git clone https://github.com/BOINC/boinc.git

# Build BOINC

cd boinc
./_autosetup
./configure --disable-server --disable-manager
make
sudo make install

exit 0
