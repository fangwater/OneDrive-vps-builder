#!/bin/bash
mongod --bind_ip localhost --port 27017 --dbpath /data/db/ --logpath=/var/log/mongod.log --fork
sleep 0.2m
nohup /bin/bash /home/leanote/bin/run.sh >> /var/log/leanote.log 2>&1 &
nohup jupyter notebook >/dev/null 2>&1 &
