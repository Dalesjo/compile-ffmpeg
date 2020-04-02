#!/bin/bash

cd ~/ffmpeg_sources
tar xzvf libogg-1.3.4.tar.gz
cd libogg-1.3.4
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install
make distclean