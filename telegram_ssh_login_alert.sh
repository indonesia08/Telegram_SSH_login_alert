#!/usr/bin/env bash

#https://github.com/indonesia08

# Data user id dan token bot telegram yang kamu dapatkan dari @BotFather on Telegram
USERID=""
KEY=""

URL="https://api.telegram.org/bot${KEY}/sendMessage"
DATE="$(date "+%d %b %Y %H:%M")"

if [ -n "$SSH_CLIENT" ]; then
        CLIENT_IP=$(echo $SSH_CLIENT | awk '{print $1}')

        SRV_HOSTNAME=$(hostname -f)
        SRV_IP=$(hostname -I | awk '{print $1}')

IPINFO="https://ipinfo.io/${CLIENT_IP}"

TEXT="SSH login
================

*${SRV_HOSTNAME}*
Use ${USER}@*${SRV_IP}*
From *${CLIENT_IP}*
Date: ${DATE}
[${IPINFO}](${IPINFO})"

curl -s -d "chat_id=${USERID}&text=${TEXT}&disable_web_page_preview=true&parse_mode=markdown" $URL > /dev/null
fi