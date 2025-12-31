#!/usr/bin/env bash

# ===== SETTINGS =====
DAYS=160

FOLDERS=(
    "/storage/emulated/0/Telegram"
    "/storage/emulated/0/Telegram Video"
    "/storage/emulated/0/Telegram Images"
    "/storage/emulated/0/Telegram Documents"
    "/storage/emulated/0/DCIM/.thumbnails"
    "/storage/emulated/0/Pictures/.thumbnails"
    "/storage/emulated/0/Movies/.thumbnails"

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
