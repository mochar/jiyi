#!/bin/sh
mydir=`dirname "$0"`
pydir=`dirname "$1"`
pyname=`basename "$1"`
midir="/mnt/SDCARD/App/parasyte/rootfs"

export HOME=$mydir
export PYTHONPATH=$mydir/python/libs/python3.9:$mydir/python/libs/python3.9/site-packages:$mydir/python/libs/python3.9/lib-dynload
export PYTHONHOME=$mydir/python/libs/python3.9:$mydir/python/libs/python3.9/site-packages:$mydir/python/libs/python3.9/lib-dynload
export PATH=$mydir/bin:$midir/usr/local/sbin:$midir/usr/local/bin:$midir/usr/sbin:$midir/usr/bin:$midir/sbin:$midir/bin:$PATH
export LD_LIBRARY_PATH=$mydir/python/libs:$mydir/python/libs/python3.9/:$mydir/python/libs/python3.9/lib-dynload:$midir/lib:$midir/usr/lib:$LD_LIBRARY_PATH

cd $pydir
# python "$pyname"
./python/bin/python3 ./jiyi/run.py
