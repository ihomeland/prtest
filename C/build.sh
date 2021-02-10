#!/bin/sh
set -e

# Linux64
docker run --rm -v $(pwd):/workdir:Z -e CROSS_TRIPLE=x86_64-linux-gnu -i multiarch/crossbuild make
# Win32
docker run --rm -v $(pwd):/workdir:Z -e CROSS_TRIPLE=i686-w64-mingw32 -i multiarch/crossbuild make
# Win64
docker run --rm -v $(pwd):/workdir:Z -e CROSS_TRIPLE=x86_64-w64-mingw32 -i multiarch/crossbuild make
# OSX
docker run --rm -v $(pwd):/workdir:Z -e CROSS_TRIPLE=x86_64-apple-darwin -i multiarch/crossbuild make
