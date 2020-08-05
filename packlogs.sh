#!/bin/bash

LOG_PATH='/opt/cardano/cnode/logs' #change if it's not your cnode logs path 
TODAY=`date +'%Y%m%d%H%M%S'`

cd $LOG_PATH

FIND_LOGS=`find $LOG_PATH -mtime +1 -type f | grep .json`

#pack
tar -zcvf logbak.${TODAY}.tar.gz $FIND_LOGS

#delete
for LOG_FILE in $FIND_LOGS
do
        rm -f $LOG_FILE
done

echo "old logs packed -${TODAY}"
