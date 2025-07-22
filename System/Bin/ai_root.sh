#!/system/bin/sh

API_KEY_FILE="/data/adb/modules/enes_ai_root/common/api_key.txt"
if [ -f "$API_KEY_FILE" ]; then
  API_KEY=$(cat $API_KEY_FILE)
else
  API_KEY=""
fi

. /data/adb/modules/enes_ai_root/common/ai_functions.sh

while true; do
  # Komutları dinle, API çağrılarını yönet
  sleep 5
done
