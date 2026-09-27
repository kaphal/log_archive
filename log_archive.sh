#!/bin/bash
today=$(date +"%Y%m%d")
clock=$(date +"%H%M%S")
log_archive=/var/log
sudo tar -czvf /home/hal/log_archive/logs_archive_${today}_${clock}.tar.gz $log_archive