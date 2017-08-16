#!/bin/bash

ufw deny out 51413/tcp
ufw deny out 51413/udp
ufw allow 9091
ufw allow ssh
ufw --force enable

docker-compose up -d