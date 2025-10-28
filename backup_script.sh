#!/bin/bash
# ===========================================================
#  Automated Backup Script
#  Author: Prashanth Teja
#  Description: Creates compressed backups of given directories
#               and stores them in a backup folder with timestamp.
# ===========================================================

# Variables
SOURCE_DIR="/home/$USER/Documents"
BACKUP_DIR="/home/$USER/Backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create the backup
echo "Creating backup of $SOURCE_DIR..."
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

# Verify if backup succeeded
if [ $? -eq 0 ]; then
    echo "✅ Backup successful!"
    echo "📦 Saved as: $BACKUP_FILE"
else
    echo "❌ Backup failed!"
fi

# Optional: Delete backups older than 7 days
find "$BACKUP_DIR" -type f -mtime +7 -name "*.tar.gz" -exec rm -f {} \;

echo "🧹 Old backups (older than 7 days) cleaned up."
echo "Backup process completed on $(date)"
