#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

output_default="$($SCRIPT_DIR/banner.sh)"

if [[ "$output_default" != *"hack-banner5468-"* ]]; then
  echo "Default banner output missing project name" >&2
  exit 1
fi

output_custom="$($SCRIPT_DIR/banner.sh 'custom-banner')"
if [[ "$output_custom" != *"custom-banner"* ]]; then
  echo "Custom banner output did not include provided text" >&2
  exit 1
fi

echo "banner checks passed"
