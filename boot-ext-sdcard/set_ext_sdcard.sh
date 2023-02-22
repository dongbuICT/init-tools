#!/bin/bash
# Target Model : Jetson Nano 4G P3448
# Test with Flash writing Jetpack 4.6.3
# Need init-tools dir exist ~/ for good work

cd ~
git clone https://github.com/Seeed-Studio/seeed-linux-dtoverlays.git

cd seeed-linux-dtoverlays
sed -i '17s#JETSON_COMPATIBLE#\"nvidia,p3449-0000-b00+p3448-0002-b00\"\, \"nvidia\,jetson-nano\"\, \"nvidia\,tegra210\"#' overlays/jetsonnano/jetson-sdmmc-overlay.dts
make overlays/jetsonnano/jetson-sdmmc-overlay.dtbo
echo "dongbuict0" | sudo -S cp overlays/jetsonnano/jetson-sdmmc-overlay.dtbo /boot/

cd /boot/
echo "dongbuict0" | sudo -S /opt/nvidia/jetson-io/config-by-hardware.py -l
echo "dongbuict0" | sudo -S /opt/nvidia/jetson-io/config-by-hardware.py -n "reComputer sdmmc"

echo "dongbuict0" | sudo -S cp ~/init-tools/boot-ext-sdcard/extlinux.conf /boot/extlinux/extlinux.conf
