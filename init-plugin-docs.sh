#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -f "$SCRIPT_DIR/LEARNINGS.template.md" ]]; then
  echo "Template file not found: $SCRIPT_DIR/LEARNINGS.template.md"
  exit 1
fi

cp -f "$SCRIPT_DIR/LEARNINGS.template.md" "$ROOT/LEARNINGS.md"
cp -f "$SCRIPT_DIR/TESTING.template.md" "$ROOT/TESTING.md"
cp -f "$SCRIPT_DIR/DESIGN.template.md" "$ROOT/DESIGN.md"

echo "Initialized plugin docs in: $ROOT"
echo "- LEARNINGS.md"
echo "- TESTING.md"
echo "- DESIGN.md"
