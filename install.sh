#!/bin/bash
# SuperMap Docs Skill — Unified installer for Claude Code & Codex CLI
# Usage: bash install.sh [--claude] [--codex] [--all]

set -e

SKILL_NAME="supermap-docs"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

install_claude() {
  local target="$HOME/.claude/skills/${SKILL_NAME}"
  echo "→ Installing to Claude Code: ${target}"
  rm -rf "$target"
  cp -r "$SCRIPT_DIR" "$target"
  rm -rf "$target/.git" "$target/install.sh" 2>/dev/null
  echo "  ✓ Claude Code skill installed ($(du -sh "$target" | cut -f1))"
}

install_codex() {
  local target="$HOME/.agents/skills/${SKILL_NAME}"
  echo "→ Installing to Codex CLI: ${target}"
  rm -rf "$target"
  cp -r "$SCRIPT_DIR" "$target"
  rm -rf "$target/.git" "$target/install.sh" 2>/dev/null
  echo "  ✓ Codex CLI skill installed ($(du -sh "$target" | cut -f1))"
}

USE_CLAUDE=0
USE_CODEX=0
USE_ALL=0

for arg in "$@"; do
  case "$arg" in
    --claude) USE_CLAUDE=1 ;;
    --codex)  USE_CODEX=1 ;;
    --all)    USE_ALL=1 ;;
  esac
done

[ $USE_CLAUDE -eq 0 ] && [ $USE_CODEX -eq 0 ] && USE_ALL=1

echo "SuperMap Docs Skill Installer"
echo "============================="

[ "$USE_ALL" = "1" ] || [ "$USE_CLAUDE" = "1" ] && install_claude
[ "$USE_ALL" = "1" ] || [ "$USE_CODEX" = "1" ] && install_codex

echo ""
echo "Done. Restart Claude Code / Codex CLI for the skill to take effect."
