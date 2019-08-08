#!/bin/bash
#
# You need to source this file ( . yocto-env.sh ) to set the right values

#
# this is the directory where you installed the yocto sdk:
#
export SDK=/home/legato/proj/yocto/sdk/
#
# n.b. that this has been tested with Yocto 2.4 (rocko) builds; for newer versions, things might change a little.
#

. ${SDK}/environment-setup-armv7at2hf-neon-angstrom-linux-gnueabi


export LEGATO_SYSROOT=${SDKTARGETSYSROOT}

#
# compiler arguments matching the machine-specific arguments of $TARGET_CC
# Some legato build commands are not able to deal with arguments when looking for the compiler, so we split this into a separate variable.
# Make sure this matches your machine definition.
#
export TARGET_ARGS=" -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=$SDKTARGETSYSROOT"

export RASPI_TOOLCHAIN_DIR=${SDK}/sysroots/x86_64-angstromsdk-linux/usr/bin/arm-angstrom-linux-gnueabi/
export RASPI_TOOLCHAIN_PREFIX=arm-angstrom-linux-gnueabi-

export LEGATO_ROOT=`pwd`
export PATH="${PATH}:${LEGATO_ROOT}/bin"
