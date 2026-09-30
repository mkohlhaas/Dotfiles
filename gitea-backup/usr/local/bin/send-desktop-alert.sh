#!/bin/bash

# Find the active user's graphical display session details
USER_NAME=$(who | awk '{print $1}' | head -n1)
USER_ID=$(id -u "$USER_NAME")

# Send the notification into the active user's desktop environment space
sudo -u "$USER_NAME" DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$USER_ID/bus" \
  /usr/bin/notify-send -u critical -i "dialog-error" \
  "Gitea Backup Failed" \
  "The automated Gitea database backup to Filen encountered an error. Check journalctl -u gitea-backup.service for details."
