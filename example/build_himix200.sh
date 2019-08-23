#!/bin/bash

cmake ../ -DCMAKE_CXX_FLAGS="-mcpu=cortex-a7 -mfloat-abi=softfp -mfpu=neon-vfpv4 -fno-aggressive-loop-optimizations" \
    -DCMAKE_C_FLAGS="-mcpu=cortex-a7 -mfloat-abi=softfp -mfpu=neon-vfpv4 -fno-aggressive-loop-optimizations" \
    -DCMAKE_C_COMPILER=arm-himix200-linux-gcc -DCMAKE_CXX_COMPILER=arm-himix200-linux-g++ -DBUILD_SSL=OFF -DCMAKE_INSTALL_PREFIX=`pwd`/install -DBUILD_TESTS=OFF -DBUILD_STATIC=OFF -DBUILD_SHARED=ON
