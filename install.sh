#!/usr/bin/env bash
# Install Claude Code global config to ~/.claude/
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$HOME/.claude"

mkdir -p "$TARGET/skills"

cp "$SCRIPT_DIR/.claude/settings.json" "$TARGET/settings.json"
cp "$SCRIPT_DIR/.claude/CLAUDE.md" "$TARGET/CLAUDE.md"
cp "$SCRIPT_DIR/.claude/notify.sh" "$TARGET/notify.sh"
cp -r "$SCRIPT_DIR/.claude/skills/"* "$TARGET/skills/"

chmod +x "$TARGET/notify.sh"

echo "Installed Claude Code config to $TARGET"
