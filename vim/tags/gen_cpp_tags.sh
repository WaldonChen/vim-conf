#!/bin/sh

CPP_TAR=cpp_src.tar.bz2
CPP_DIR=cpp_src

if [ ! -f $CPP_TAR ]; then
	echo "$CPP_TAR does not exist in current directory."
	exit 1
fi

echo "$CPP_TAR ready..."
tar xf $CPP_TAR
echo "Generate tags file..."
../ctagsx --language-force=C++ $CPP_DIR
rm -rf $CPP_DIR
mv tags cpp.tags
