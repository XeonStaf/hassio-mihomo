#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE_DEFAULT="/app/mihomo-default.yaml"
CONFIG_FILE="/config/mihomo.yaml"
if [ ! -f "$CONFIG_FILE" ]; then
  echo "No custom config at $CONFIG_FILE, using default: $CONFIG_FILE_DEFAULT"
  CONFIG_FILE="$CONFIG_FILE_DEFAULT"
fi

echo "Starting Mihomo with config: $CONFIG_FILE"
exec mihomo --config "$CONFIG_FILE"
