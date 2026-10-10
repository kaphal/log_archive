#!/bin/bash
today=$(date +"%Y%m%d")
clock=$(date +"%H%M%S")
log_archive=/var/log
my_location="$HOME"
log_archive_folder=$my_location/log_archive
mkdir -p  $log_archive_folder
sudo tar -czvf ${log_archive_folder}_${today}_${clock}.tar.gz $log_archive
