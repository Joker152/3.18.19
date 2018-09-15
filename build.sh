#!/bin/bash
export KBUILD_BUILD_USER=foxy71
export CROSS_COMPILE=/home/sergey/Android/utility/gcc-linaro-5.5.0/bin/arm-linux-gnueabihf-
export USE_CCACHE=1
export ARCH=arm ARCH_MTK_PLATFORM=mt6580
export TARGET=out
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE x5max_defconfig
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j2 zImage-dtb
