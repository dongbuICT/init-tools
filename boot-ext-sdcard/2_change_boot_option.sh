#!/bin/bash

echo "dongbuict0" | sudo -S cp ~/init-tools/boot-ext-sdcard/extlinux.conf /boot/extlinux/extlinux.conf

echo "SHUTDOWN in 5 Secs... >>> Move to other carrier board and finish the setting"
sleep 5

echo "dongbuict0" | sudo -S shutdown now