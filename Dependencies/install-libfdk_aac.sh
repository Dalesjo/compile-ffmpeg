#!/bin/bash

cd ~/ffmpeg_sources
cd fdk-aac
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install