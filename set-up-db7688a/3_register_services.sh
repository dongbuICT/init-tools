#!/bin/sh

mv ffmpeg.sh /root/usbcam/ffmpeg.sh
mv ffserver.conf /root/usbcam/ffserver.conf

mv ffmpeg_sh /etc/init.d/ffmpeg_sh
mv ffserver /etc/init.d/ffserver

chmod +x /etc/init.d/ffmpeg_sh /etc/init.d/ffserver
chmod +x /root/usbcam/ffmpeg.sh /root/usbcam/ffserver.conf

/etc/init.d/ffserver enable
/etc/init.d/ffmpeg_sh enable
/etc/init.d/ffserver start
/etc/init.d/ffmpeg_sh start
