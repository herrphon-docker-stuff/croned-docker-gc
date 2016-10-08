#!/bin/sh

echo `date "+%Y-%m-%d %H:%M:%S"` - Staring cron... >> /var/log/cron.log
echo `date "+%Y-%m-%d %H:%M:%S"` - Installing cronjob... >> /var/log/cron.log
cat /cronjob.config >> /var/log/cron.log
echo ... >> /var/log/cron.log

crond   
crontab /cronjob.config

tail -f /var/log/cron.log

