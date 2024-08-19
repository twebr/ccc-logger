# Logger script for Carbon Copy Cloner

This little shell script logs a message in a text file at a specified location when Carbon Copy Cloner has successfully made a backup.
This script can be useful for keeping a log of recent backup runs in a location close to the backup files.

Example use case:
Say you want to make a backup to `/Volumes/Backup Drive/Backup of my MacBook`. 
This script will create a file called `/Volumes/Backup Drive/Backup of my MacBook.txt` and log the recent successful backup runs to this text file.
This way, one can easily inspect when the last backups were made, directly from the backup volume itself, without needing access to the computer from which the backup task was run.

## How to use

In Carbon Copy Cloner:

1. Select a task
2. Click ‘Advanced Settings’
3. Move to the tab ‘Postflight’
4. Choose the script under 'Run a Shell Script'

## Compatibility

The script has been tested with Carbon Copy Cloner 6. 
Compatibility with older or newer versions is not guaranteed.
The script is tailored to my specific needs, but can serve as inspiration for comparable logging tasks.

## Relevant documentation

- [Carbon Copy Cloner documentation on running shell script](https://support.bombich.com/hc/en-us/articles/21608812482455-Running-shell-scripts-before-and-after-the-backup-task)