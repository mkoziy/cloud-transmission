#!/bin/bash

ufw default deny incoming
ufw default deny outgoing
ufw allow 9091
ufw allow ssh
ufw allow in 51413

docker-compose up -d

ufw --force enable
