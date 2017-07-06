#!/bin/bash

# bash format helper script
DATE2=$(date +%Y-%m-%dT%H:%M.%3NZ)
#DATE=$(echo $(($(date +%s%N)/1000000)))
DATE=$(date +%s%3N)
export VERSION="Version, 0.5.6"
echo "$DATE ($DATE2)" > /home/aathomas/gitlab/signal-bot/.signalbot.date
/usr/local/bin/signal-cli -u +19192689438 receive|grep -i Body: -B7 >> /home/aathomas/gitlab/signal-bot/.signalbot.tmp
sed -i 's/“//' /home/aathomas/gitlab/signal-bot/.signalbot.tmp && sed -i 's/”//' /home/aathomas/gitlab/signal-bot/.signalbot.tmp
#exec /usr/bin/expect /home/aathomas/gitlab/signal-bot/lizardbrain.exp
