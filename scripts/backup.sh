#!/bin/bash
set -e
SRC="$1"
DEST="/var/backups/$(date +%F)"
mkdir -p "$DEST"
tar -czf "$DEST/backup-$(basename $SRC)-$(date +%F).tar.gz" -C "$(dirname $SRC)" "$(basename $SRC)"
echo "Backup saved to $DEST"
