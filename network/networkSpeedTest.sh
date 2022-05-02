#!/bin/bash 
# First is necessary install telegram cli to use bot:
# https://github.com/caue-santos/telegram-message
# and speedtest-cli:
# https://www.speedtest.net/apps/cli

# Server ID - CCS Telecom - to list servers run: speedtest -L
server_id=34294

download=`speedtest -s $server_id | grep Download | awk {'print $3'}`

if [ $(echo "$download < 500" | bc ) -ne 0 ]; then
    telegramsg "Taxa de download abaixo do contratado: $download"
fi 
