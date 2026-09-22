#!/usr/bin/env bash
# Make every skill in this repo available to all Claude Code sessions.
# Idempotent: re-run after adding a skill, or after moving this clone.
set -euo pipefail
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HOME/.claude/skills"
mkdir -p "$DEST"
n=0
for d in "$SRC"/*/; do
  d="${d%/}"                                 # strip the trailing slash
  [ -f "$d/SKILL.md" ] || continue           # only directories that are skills
  name="$(basename "$d")"
  ln -sfn "$d" "$DEST/$name"
  printf '  %-12s -> %s\n' "$name" "$(readlink "$DEST/$name")"
  n=$((n+1))
done
echo
echo "$n skill(s) installed to $DEST."
echo "Restart Claude Code, then type / to see them listed."
