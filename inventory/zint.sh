#!/bin/sh
wget https://sourceforge.net/projects/zint/files/zint/2.6.1/zint-2.6.1.src.tar.gz
tar -zxvf zint-2.6.1.src.tar.gz
cmake zint-2.6.1.src
make zint-2.6.1.src/build
sudo make zint-2.6.1.src/build install
sudo cp /usr/local/lib/libzint.* /usr/lib