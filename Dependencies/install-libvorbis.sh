cd ~/ffmpeg_sources
tar xzvf libvorbis-1.3.6.tar.gz
cd libvorbis-1.3.6
./configure --prefix="$HOME/ffmpeg_build" --with-ogg="$HOME/ffmpeg_build" --disable-shared
make
make install
make distclean