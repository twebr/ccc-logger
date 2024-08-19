#!/bin/zsh

# This script puts a log message about a successful backup in the location
# of that backup.
# Note that nothing is written in case of an error.
#
# See documentation at https://support.bombich.com/hc/en-us/articles/21608812482455-Running-shell-scripts-before-and-after-the-backup-task
#
# To test this script, run
# $ ./carbon_copy_cloner_logger.sh "/" "/Volumes/Backup Drive/Backup My MacBook" 0

source="$1"
dest="$2"
exitStatus=$3

if [ "$exitStatus" = "0" ]; then
    # task succeeded
    log_file="${dest}.txt" # Modify if you want to write to a different location
    touch $log_file
    echo "Successfully made a backup on `date`" >> $log_file
else
    # task failed or reported errors
fi
