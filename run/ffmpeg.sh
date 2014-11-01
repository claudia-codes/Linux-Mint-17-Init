#!/bin/bash

# ffmpeg
install libx11-dev libxext-dev libxfixes-dev libxfixes-dev
wget http://ffmpeg.mplayerhq.hu/releases/ffmpeg-2.3.tar.bz2
tar -xjvf ffmpeg-2.3.tar.bz2
cd ffmpeg-2.3/
CFLAGS=-fPIC ./configure --prefix=/usr --libdir=/usr/lib64 --enable-gpl --enable-shared --disable-static --enable-pthreads --enable-x11grab
make
sudo make install
cd ..
rm -Rf ./ffmpeg*
