#!/bin/bash

cd ~/ffmpeg_sources

tar xjvf ffmpeg-snapshot.tar.bz2
cd ffmpeg
PATH="$HOME/bin:$PATH" 
export PATH

PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" 
export PKG_CONFIG_PATH

./configure \
  --prefix="$HOME/ffmpeg_build" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --extra-libs=-lpthread \
  --extra-libs=-lm \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-libfdk_aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-nonfree | tee ffmpeg.configure.log

make | tee ffmpeg.make.log
make install > ffmpeg.install.log
hash -d ffmpeg