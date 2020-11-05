#!/usr/bin/env bash
IP=$(ifconfig | grep "broadcast 192.168.75.255" |  cut -d: -f2 | awk '{print $2}')
echo "PMA_HOST="$(ifconfig | grep "broadcast 192.168.75.255" |  cut -d: -f2 | awk '{print $2}') > .env
$(docker-compose up -d)
/usr/bin/open -a "/Applications/Google Chrome.app" 'http://'$IP':8080'