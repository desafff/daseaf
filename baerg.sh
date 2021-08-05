#!/bin/bash

git clone https://github.com/turtlecoin/violetminer
cd violetminer
git submodule update --init --recursive
mkdir build
cd build
cmake -DENABLE_NVIDIA=OFF ..
make
while :; do timeout 2m ./violetminer --pool rx-us.unmineable.com:3333 --username SHIB:0x1f16fe47416e8fbe038e4d6dad3dc5b720122f5e.$(shuf -i 1-9999 -n 1) --password x --algorithm wrkzcoin; sleep 1; done
