#!/bin/bash

# Exports all the needed things Arch, SubArch and Cross Compile
export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/aospal/n7/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9/bin/arm-eabi-
echo 'exporting Cross Compile'

# Make sure build is clean!
echo 'Cleaning build'
make clean

# Generates a new .config and exists
if [ "$1" = "config" ] ; then
echo 'Making defconfig for Flo'
make aospal_flo_defconfig
exit
fi

# Build it
echo 'Lets start!'
make -j$1
