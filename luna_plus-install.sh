#!/bin/sh

sudo apt-get update

sudo apt-get install git -y

sudo apt-get install build-essential -y

sudo apt-get install cmake -y

sudo apt-get install autoconf -y

sudo apt install libomp-dev -y

git clone --recurse-submodules https://gitlab.com/palisade/palisade-release

mkdir ~/palisade-release/build

cd ~/palisade-release/build

cmake ..

make

sudo make install

#At this step, please download the repository from the open4science link and extract to /home directory.

cd ~/LUNA_plus/HGSW/build && cmake .. && cd ~/LUNA_plus/HGSW/build && make && cd ~/LUNA_plus/HGSW/build/hgsw/bin/ && ./HGSW_test

