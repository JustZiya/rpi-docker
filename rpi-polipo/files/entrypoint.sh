#!/bin/bash

TOR_SERVER_ADDR=${TOR_SERVER_ADDR:="172.17.0.1:1984"}

sed -i -e "s|%TOR_SERVER_ADDR%|${TOR_SERVER_ADDR}|g" /etc/polipo/config
polipo
