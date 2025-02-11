#!/bin/sh
echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/QUAKE
cd $RA_DIR/

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=


HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $RA_DIR/.retroarch/cores/tyrquake_libretro.so "$*"
