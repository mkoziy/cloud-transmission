#!/bin/bash

ufw allow ssh
ufw allow 9091/TCP
ufw allow 80/TCP
ufw deny out 51413/TCP
ufw deny out 51413/UDP
ufw enable

docker-compose up -d