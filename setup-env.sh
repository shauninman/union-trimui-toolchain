#!/bin/bash

export PATH="/opt/trimui-toolchain/usr/bin:${PATH}:/opt/trimui-toolchain/usr/arm-buildroot-linux-gnueabi/sysroot/usr/bin"
export CROSS_COMPILE=/opt/trimui-toolchain/usr/bin/arm-buildroot-linux-gnueabi-
export PREFIX=/opt/trimui-toolchain/usr/arm-buildroot-linux-gnueabi/sysroot/usr
export UNION_PLATFORM=trimui
