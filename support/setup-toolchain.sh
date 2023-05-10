#! /bin/sh

TOOLCHAIN_VERSION=v001
TOOLCHAIN_ARCH=`uname -m`
if [ "$TOOLCHAIN_ARCH" = "aarch64" ]; then
	TOOLCHAIN_TAR="trimui-toolchain-aarch64.tar.xz"
else
	TOOLCHAIN_TAR="trimui-toolchain.tar.xz"
fi

TOOLCHAIN_PATH=/opt
TOOLCHAIN_URL="https://github.com/shauninman/union-trimui-toolchain/releases/download/$TOOLCHAIN_VERSION/$TOOLCHAIN_TAR"

mkdir -p "$TOOLCHAIN_PATH"
if [ -f "./$TOOLCHAIN_TAR" ]; then
	cp "./$TOOLCHAIN_TAR" "$TOOLCHAIN_PATH"
	cd "$TOOLCHAIN_PATH"
	echo "extracting local toolchain ($TOOLCHAIN_ARCH)"
else
	cd "$TOOLCHAIN_PATH"
	wget "$TOOLCHAIN_URL"
	echo "extracting remote toolchain $TOOLCHAIN_VERSION ($TOOLCHAIN_ARCH)"
fi
tar xf "./$TOOLCHAIN_TAR"
rm -rf "./$TOOLCHAIN_TAR"
