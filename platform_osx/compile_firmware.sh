#!/bin/sh
set -e
platformdir="$(cd $(dirname $0); pwd -P)"
export PATH=$PATH:${platformdir}/gcc-arm-none-eabi-4_8-2014q3/bin/:${platformdir}/bin
#echo $PATH
cd ${platformdir}/../firmware
echo "Compiling firmware..."
make
cd flasher
echo "Compiling firmware flasher..."
make
