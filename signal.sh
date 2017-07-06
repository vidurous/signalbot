#!/bin/bash

# bash format helper script
DATE=$(date +%s%3N)
DATE2=$(date +%Y-%m-%dT%H:%M.%3NZ)
export VERSION="Version, 0.5.6"
export REPO="gitlab/signal-bot"
echo "$DATE ($DATE2)" > $HOME/$REPO/.signalbot.date
/usr/local/bin/signal-cli -u +#-###-###-#### receive|grep -i Body: -B7 >> $HOME/$REPO/signal-bot/.signalbot.tmp
sed -i 's/“//' $HOME/$REPO/.signalbot.tmp && sed -i 's/”//' $HOME/$REPO/.signalbot.tmp
