#!/bin/bash
# Installs utility to allow for cron scheduling

sudo apt install gnome-schedule



# From raspberrypi.org:

# Add a scheduled task
# The layout for a cron entry is made up of six components: minute, hour, day of month, month of year, day of week, and the command to be executed.

# m h  dom mon dow   command
# * * * * *  command to execute
# ┬ ┬ ┬ ┬ ┬
# │ │ │ │ │
# │ │ │ │ │
# │ │ │ │ └───── day of week (0 - 7) (0 to 6 are Sunday to Saturday, or use names; 7 is Sunday, the same as 0)
# │ │ │ └────────── month (1 - 12)
# │ │ └─────────────── day of month (1 - 31)
# │ └──────────────────── hour (0 - 23)
# └───────────────────────── min (0 - 59)
# For example:

# 0 0 * * *  /home/pi/backup.sh