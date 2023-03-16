#!/bin/sh

opkg update
opkg install ffmpeg ffserver usbutils kmod-usb2 kmod-video-uvc openssh-sftp-server openssh-keygen
mkdir /root/usbcam