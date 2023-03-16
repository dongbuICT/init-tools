#!/bin/sh

prev_serial=`ps | grep 'ffmpeg -f' | grep -v 'grep' | awk '{print $1}'`

if [[ -z $prev_serial ]]; then
  echo "start ffmpeg web streaming"
  /usr/bin/ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm
else
  exit 0
fi

while true
  do
    mjpeg=`ps | grep 'ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm' | grep -v 'grep' | awk '{print $1}'`

    if [[ -z $mjpeg ]]; then
      echo "restart ffmpeg web streaming"
      /usr/bin/ffmpeg -f v4l2 -s 320x240 -r 30 -i /dev/video0 http://localhost:8888/camera.ffm
    fi
      sleep 2
  done