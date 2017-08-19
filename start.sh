#!/bin/bash

ufw allow ssh
ufw allow 9091
ufw deny out 51413/tcp
ufw deny out 51413/udp

docker-compose up -d

ufw --force enable
