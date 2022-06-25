#!/bin/bash -Eeu

apt-get update
apt-get install --no-install-recommends --yes git gnat libz-dev
git config --global http.sslVerify false
git clone "https://github.com/ghdl/ghdl.git" ghdl
cd ghdl
./configure --prefix=/usr/local
make
make install
