#!/bin/bash

ufw deny out 51413/tcp
ufw deny out 51413/udp
ufw --force enable

docker-compose up -d