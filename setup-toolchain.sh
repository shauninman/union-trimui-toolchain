#! /bin/sh

TOOLCHAIN_TAR="trimui-toolchain.tar.xz"
TOOLCHAIN_URL="https://github.com/shauninman/union-trimui-toolchain/releases/download/v001/$TOOLCHAIN_TAR"

cd /opt
wget "$TOOLCHAIN_URL"
tar xf "./$TOOLCHAIN_TAR"
rm -rf "./$TOOLCHAIN_TAR"