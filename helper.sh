#!/bin/bash

# https://www.jeffgeerling.com/blog/2020/cross-compiling-raspberry-pi-os-linux-kernel-on-macos

# Apply default config
cd linux
KERNEL=kernel8
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig

# Add more configs
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig

# Build - 8 threads
make -j8 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image modules dtbs

