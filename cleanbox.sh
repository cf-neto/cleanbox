#!/usr/bin/env bash

# ===== SETTINGS =====
DAYS=160

FOLDERS=(
    "/storage/emulated/0/.Trash"
    "/storage/emulated/0/Temp"
    "/storage/emulated/0/tmp"
    "/storage/emulated/0/Lost.dir"
    "/storage/emulated/0/Android/media/com.whatsapp/WhatsApp/Media"
    "/storage/emulated/0/Download"
)

echo "Deleting files larger than $DAYS days..."
echo "------------------------------------------"

for FOLDER in "${FOLDERS[@]}"; do
  if [ -d "$FOLDER" ]; then
    echo "Deleting: $FOLDER"
    find "$FOLDER" -type f -mtime +$DIAS -print -delete
  else
    echo "Folder not found: $FOLDER"
  fi
done

echo "Done."
