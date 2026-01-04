#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="/config/mihomo.yaml"
if [ ! -f "$CONFIG_FILE" ]; then
  echo "No custom config found at $CONFIG_FILE, using default config"
  CONFIG_FILE="/app/mihomo-default.yaml"
fi

echo "Starting Mihomo with config: $CONFIG_FILE"
exec /mihomo -f "$CONFIG_FILE"
