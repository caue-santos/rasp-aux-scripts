#!/bin/bash 
# First is necessary install telegram cli to use bot:
# https://github.com/caue-santos/telegram-message
# and speedtest-cli:
# https://www.speedtest.net/apps/cli

download=`speedtest -s 34294 | grep Download | awk {'print $3'}`

if [ $(echo "$download < 500" | bc ) -ne 0 ]; then
    telegramsg "Taxa de download abaixo do contratado: $download"
fi 
