#!/bin/bash

ufw default deny incoming
ufw default deny outgoing
ufw allow 9091
ufw allow ssh
ufw allow out 51413/tcp
ufw allow out 51413/udp
ufw --force enable

docker-compose up -d

#for i in *mkv; do ffmpeg -i $i -vcodec copy -acodec copy "${i%.mkv}.mp4" > /tmp/ffmpeg.log && rm $i; done