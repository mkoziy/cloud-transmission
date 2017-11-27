#!/bin/bash

rm -f /tmp/cloud-transmission-install-done
docker-compose down

ufw allow ssh
ufw allow 9091
ufw deny out 51413/tcp
ufw deny out 51413/udp

docker-compose up -d

ufw --force enable

touch /tmp/cloud-transmission-install-done
