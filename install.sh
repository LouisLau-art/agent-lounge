#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${AGENT_LOUNGE_HOME:-/home/louis/.agents/lounge}"

mkdir -p \
  "$TARGET_DIR/templates" \
  "$TARGET_DIR/threads" \
  "$TARGET_DIR/lessons" \
  "$TARGET_DIR/proposals" \
  "$TARGET_DIR/archive/threads" \
  "$TARGET_DIR/archive/proposals"

install -m 0644 "$ROOT_DIR/templates/README.md" "$TARGET_DIR/README.md"
install -m 0644 "$ROOT_DIR/templates/thread.md" "$TARGET_DIR/templates/thread.md"
install -m 0644 "$ROOT_DIR/templates/lesson.md" "$TARGET_DIR/templates/lesson.md"
install -m 0644 "$ROOT_DIR/templates/proposal.md" "$TARGET_DIR/templates/proposal.md"

if [ ! -f "$TARGET_DIR/ACTIVE.md" ]; then
  install -m 0644 "$ROOT_DIR/templates/ACTIVE.md" "$TARGET_DIR/ACTIVE.md"
fi

touch \
  "$TARGET_DIR/threads/.gitkeep" \
  "$TARGET_DIR/proposals/.gitkeep" \
  "$TARGET_DIR/archive/threads/.gitkeep" \
  "$TARGET_DIR/archive/proposals/.gitkeep"

printf 'Agent Lounge installed at %s\n' "$TARGET_DIR"
