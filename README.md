# cnode-logs-packing-scripts
Pack ADA nodes old logs to save disk space


## download

```
cd ~/git
git clone https://github.com/snmoney/cnode-logs-packing-scripts.git
cd cnode-logs-packing-scripts
sudo chmod +x packlogs.sh
cp packlogs.sh $CNODE_HOME/scripts/

```

## edit LOG_PATH and run

if you are using `prereqs.sh` and `cntools.sh` setup node, you don't need to change anything, just run the scipt.
otherwist, edit `$LOG_PATH`.

```
cd $CNODE_HOME/scripts/
./packlogs.sh
```

## add cronjob 

execute daily (everyday 5:30 AM)

```
crontab -e
```

add this line to the bottom of cron and save.

```
30 5 * * * /opt/cardano/cnode/scripts/packlogs.sh > /dev/null 2>&1 &
```
