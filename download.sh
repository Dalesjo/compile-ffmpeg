#!/bin/bash

sudo yum install nano wget curl -y
sudo yum install autoconf automake bzip2 bzip2-devel cmake freetype-devel gcc gcc-c++ git libtool make mercurial pkgconfig zlib-devel -y

mkdir ~/ffmpeg_sources
cd ~/ffmpeg_sources

curl -O -L https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2
curl -O -L https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
git clone --depth 1 https://code.videolan.org/videolan/x264.git
hg clone https://bitbucket.org/multicoreware/x265
git clone --depth 1 https://github.com/mstorsjo/fdk-aac
curl -O -L https://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz
curl -O -L https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz
git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git
curl -O -L https://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2

curl -O https://ftp.osuosl.org/pub/xiph/releases/ogg/libogg-1.3.4.tar.gz
curl -O https://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.6.tar.gz
