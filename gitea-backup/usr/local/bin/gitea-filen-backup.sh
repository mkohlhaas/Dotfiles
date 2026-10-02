#!/bin/bash

# --- CONFIGURATION ---
GITEA_USER="gitea"
GITEA_BIN="/usr/bin/gitea"
GITEA_CONF="/etc/gitea/app.ini"
BACKUP_DIR="/var/lib/gitea/backups"
RETENTION_DAYS=30

# The exact destination directory path in your Filen Cloud Drive
FILEN_DESTINATION="/Backups/Gitea/"

# --- SECURE CREDENTIALS LOADING ---
# Source the hidden external environment file securely from the local server home
ENV_FILE="/home/schmidh/.filen.env"
if [ -f "$ENV_FILE" ]; then
  source "$ENV_FILE"
  export FILEN_EMAIL
  export FILEN_PASSWORD
else
  echo "ERROR: Local credential file missing at $ENV_FILE" >&2
  exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILENAME="gitea-dump-$TIMESTAMP-$HOSTNAME.zip"

echo "=== Starting Gitea SQLite Backup ==="

# Generate the safe SQLite database and repositories dump archive
sudo -u $GITEA_USER "$GITEA_BIN" dump -c "$GITEA_CONF" --file "$BACKUP_DIR/$BACKUP_FILENAME"

# Even if the /var/lib/gitea/backups directory is configured as 770 (allowing group access),
# when Gitea creates that specific zip archive, it forces a security restriction (umask 0077)
# on it.
sudo chown :$GITEA_USER "$BACKUP_DIR/$BACKUP_FILENAME"
sudo chmod 640 "$BACKUP_DIR/$BACKUP_FILENAME"

# Upload directly to the cloud root directory (/)
echo "Uploading archive to Filen cloud root..."
filen-cli upload "$BACKUP_DIR/$BACKUP_FILENAME"

# Move the file from root to the specific backup folder
echo "Moving file to destination folder..."
filen-cli mv "/$BACKUP_FILENAME" "$FILEN_DESTINATION/$BACKUP_FILENAME"

# Clean up the server's local storage
echo "Purging local versions older than $RETENTION_DAYS days..."
find "$BACKUP_DIR" -type f -name "gitea-dump-*.zip" -mtime +$RETENTION_DAYS -delete

echo "=== Backup Complete ==="
