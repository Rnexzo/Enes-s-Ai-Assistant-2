#!/system/bin/sh

function chatgpt_request() {
  local prompt="$1"
  curl -s -X POST "https://api.openai.com/v1/chat/completions" \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -d "{\"model\":\"gpt-4o-mini\",\"messages\":[{\"role\":\"user\",\"content\":\"$prompt\"}]}"
}

function run_system_command() {
  local cmd="$1"
  case "$cmd" in
    reboot) reboot ;;
    su) su ;;
    logcat) logcat -d ;;
    flash*) ;;
    *) echo "Bilinmeyen komut: $cmd" ;;
  esac
}
