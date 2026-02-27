#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
TPL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../templates/wordpress-plugin" && pwd)"

if [[ ! -d "$TPL_DIR" ]]; then
  echo "Template directory not found: $TPL_DIR"
  exit 1
fi

cp -f "$TPL_DIR/LEARNINGS.md" "$ROOT/LEARNINGS.md"
cp -f "$TPL_DIR/TESTING.md" "$ROOT/TESTING.md"

echo "Initialized plugin docs in: $ROOT"
echo "- LEARNINGS.md"
echo "- TESTING.md"
